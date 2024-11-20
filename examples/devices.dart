// Finds physical volumes on the system.

import 'dart:ffi';

import 'package:win32/win32.dart';

void displayVolumePaths(String volumeName) {
  // Could be arbitrarily long, but 4*MAX_PATH is a reasonable default.
  // More sophisticated solutions can be found online
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
      print('[none]');
    }
  } finally {
    free(charCount);
  }
}

void main() {
  var error = 0;
  final volumeNamePtr = Pwstr.allocate(MAX_PATH);

  final hFindVolume = FindFirstVolume(volumeNamePtr.ptr, MAX_PATH);
  if (hFindVolume == INVALID_HANDLE_VALUE) {
    error = GetLastError();
    print('FindFirstVolume failed with error code $error');
    return;
  }

  while (true) {
    final volumeName = volumeNamePtr.toDartString();

    //  Skip the \\?\ prefix and remove the trailing backslash.
    final shortVolumeName = volumeName.substring(4, volumeName.length - 1);

    final lpszShortVolumeName = w(shortVolumeName);
    final deviceName = Pwstr.allocate(MAX_PATH);
    final charCount = QueryDosDevice(
      lpszShortVolumeName.ptr,
      deviceName.ptr,
      MAX_PATH,
    );

    if (charCount == 0) {
      error = GetLastError();
      print('QueryDosDevice failed with error code $error');
      break;
    }

    print('Found a device:\n${deviceName.toDartString()}');
    print('Volume name: $volumeName');
    print('Paths:');
    displayVolumePaths(volumeName);
    print('');

    if (!FindNextVolume(hFindVolume, volumeNamePtr.ptr, MAX_PATH)) {
      error = GetLastError();
      if (error != ERROR_NO_MORE_FILES && error != ERROR_SUCCESS) {
        print('FindNextVolume failed with error code $error');
        break;
      } else {
        error = ERROR_SUCCESS;
        break;
      }
    }
  }

  volumeNamePtr.free();
  FindVolumeClose(hFindVolume);
}
