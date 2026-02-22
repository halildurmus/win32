// Example enumerating physical volumes and their device paths on the system.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

/// Displays all mount paths for the given volume name.
///
/// [volumeName] - The volume GUID path (e.g., `\\\?\Volume{...}\`)
void displayVolumePaths(String volumeName) {
  using((arena) {
    // Could be arbitrarily long, but 4 * MAX_PATH is a reasonable default.
    // More sophisticated solutions can be found online.
    final pathNamePtr = arena.pwstrBuffer(MAX_PATH * 4);
    final charCount = arena<DWORD>();
    final lpszVolumeName = arena.pcwstr(volumeName);

    charCount.value = MAX_PATH;
    GetVolumePathNamesForVolumeName(
      lpszVolumeName,
      pathNamePtr,
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
  });
}

void main() {
  final volumeNamePtr = wsalloc(MAX_PATH);
  var hFindVolume = INVALID_HANDLE_VALUE;

  try {
    final Win32Result(value: hVolume, :error) = FindFirstVolume(
      volumeNamePtr,
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

      final lpszShortVolumeName = shortVolumeName.toPcwstr();
      final deviceName = wsalloc(MAX_PATH);
      final Win32Result(value: charCount, :error) = QueryDosDevice(
        lpszShortVolumeName,
        deviceName,
        MAX_PATH,
      );
      free(lpszShortVolumeName);
      if (charCount == 0) {
        free(deviceName);
        print('QueryDosDevice failed: ${error.toHRESULT()}');
        break;
      }

      print('Found a device:\n${deviceName.toDartString()}');
      free(deviceName);
      print('Volume name: $volumeName');
      print('Paths:');
      displayVolumePaths(volumeName);
      print('');

      final result = FindNextVolume(hFindVolume, volumeNamePtr, MAX_PATH);
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
    free(volumeNamePtr);
  }
}
