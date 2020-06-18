// devices.dart

// Finds physical volumes on the system

import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

final volumeHandles = <int, String>{};

void DisplayVolumePaths(String volumeName) {
  var error = 0;

  // Could be arbitrarily long, but 4*MAX_PATH is a reasonable default.
  // More sophisticated solutions can be found online
  final pathNamePtr = allocate<Uint16>(count: MAX_PATH * 4).cast<Utf16>();
  final charCount = allocate<Uint32>();
  charCount.value = MAX_PATH;
  error = GetVolumePathNamesForVolumeName(
      Utf16.toUtf16(volumeName), pathNamePtr, charCount.value, charCount);

  if (error != 0) {
    if (charCount.value > 1) {
      for (var path in pathNamePtr.unpackStringArray(charCount.value)) {
        print(path);
      }
    } else {
      print('[none]');
    }
  } else {
    error = GetLastError();
    print('GetVolumePathNamesForVolumeName failed with error code $error');
  }

  free(pathNamePtr);
  free(charCount);
}

void main() {
  var error = 0;
  var volumeNamePtr = allocate<Uint16>(count: MAX_PATH).cast<Utf16>();

  var hFindVolume = FindFirstVolume(volumeNamePtr, MAX_PATH);
  if (hFindVolume == INVALID_HANDLE_VALUE) {
    error = GetLastError();
    print('FindFirstVolume failed with error code $error');
    return;
  }

  while (true) {
    var volumeName = volumeNamePtr.unpackString(MAX_PATH);

    //  Skip the \\?\ prefix and remove the trailing backslash.
    final shortVolumeName = volumeName.substring(4, volumeName.length - 1);
    final shortVolumeNamePtr = TEXT(shortVolumeName);

    var deviceName = allocate<Uint16>(count: MAX_PATH).cast<Utf16>();
    var charCount = QueryDosDevice(shortVolumeNamePtr, deviceName, MAX_PATH);

    if (charCount == 0) {
      error = GetLastError();
      print('QueryDosDevice failed with error code $error');
      break;
    }

    print('\nFound a device:\n${deviceName.unpackString(MAX_PATH)}');
    print('Volume name: $volumeName');
    print('Paths:');
    DisplayVolumePaths(volumeName);

    final success = FindNextVolume(hFindVolume, volumeNamePtr, MAX_PATH);
    if (success == 0) {
      error = GetLastError();
      if (error != ERROR_NO_MORE_FILES && error != ERROR_SUCCESS) {
        print('FindNextVolume failed with error code $error');
        break;
      } else {
        error = ERROR_SUCCESS;
        break;
      }
    }
    free(shortVolumeNamePtr);
  }
  free(volumeNamePtr);
  FindVolumeClose(hFindVolume);
}
