// Example enumerating physical volumes and their device paths on the system.

import 'dart:ffi';

import 'package:win32/win32.dart';

/// Displays all mount paths for the given volume name.
///
/// [volumeName] - The volume GUID path (e.g., `\\\?\Volume{...}\`)
void displayVolumePaths(String volumeName) {
  // Could be arbitrarily long, but 4*MAX_PATH is a reasonable default.
  // More sophisticated solutions can be found online.
  final pathNamePtr = Pwstr.allocate(MAX_PATH * 4);
  final charCount = loggingCalloc<DWORD>();
  final lpszVolumeName = w(volumeName);

  try {
    charCount.value = MAX_PATH;
    GetVolumePathNamesForVolumeName(
      lpszVolumeName.ptr,
      pathNamePtr.ptr,
      charCount.value,
      charCount,
    );

    if (charCount.value > 1) {
      for (final path in pathNamePtr.toDartStringList(charCount.value)) {
        print(path);
      }
    } else {
      print('[No mount paths]');
    }
  } finally {
    free(charCount);
  }
}

void main() {
  final volumeNamePtr = Pwstr.allocate(MAX_PATH);
  var hFindVolume = INVALID_HANDLE_VALUE;

  try {
    final Win32Result(value: hVolume, :error) = FindFirstVolume(
      volumeNamePtr.ptr,
      MAX_PATH,
    );
    hFindVolume = hVolume;
    if (hFindVolume == INVALID_HANDLE_VALUE) {
      print('FindFirstVolume failed: ${error.toHRESULT()}');
      return;
    }

    while (true) {
      final volumeName = volumeNamePtr.toDartString();

      // Skip the \\?\ prefix and remove the trailing backslash.
      final shortVolumeName = volumeName.substring(4, volumeName.length - 1);

      final lpszShortVolumeName = w(shortVolumeName);
      final deviceName = Pwstr.allocate(MAX_PATH);
      final Win32Result(value: charCount, :error) = QueryDosDevice(
        lpszShortVolumeName.ptr,
        deviceName.ptr,
        MAX_PATH,
      );
      if (charCount == 0) {
        print('QueryDosDevice failed: ${error.toHRESULT()}');
        break;
      }

      print('Found a device:\n${deviceName.toDartString()}');
      print('Volume name: $volumeName');
      print('Paths:');
      displayVolumePaths(volumeName);
      print('');

      final result = FindNextVolume(hFindVolume, volumeNamePtr.ptr, MAX_PATH);
      if (!result.value) {
        if (result.error != ERROR_NO_MORE_FILES &&
            result.error != ERROR_SUCCESS) {
          print('FindNextVolume failed: ${result.error.toHRESULT()}');
        }
        break;
      }
    }
  } catch (e) {
    print('Error enumerating volumes: $e');
  } finally {
    if (hFindVolume != INVALID_HANDLE_VALUE) {
      FindVolumeClose(hFindVolume);
    }
  }
}
