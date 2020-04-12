// devices.dart

// Finds physical volumes on the system

import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

final volumeHandles = <int, String>{};

String fromUtf16(Pointer pointer, int length) {
  final buf = StringBuffer();
  final ptr = Pointer<Uint16>.fromAddress(pointer.address);

  for (var v = 0; v < length; v++) {
    final charCode = ptr.elementAt(v).value;
    if (charCode != 0) {
      buf.write(String.fromCharCode(charCode));
    } else {
      return buf.toString();
    }
  }
  return buf.toString();
}

// Assumes an array of null-terminated strings, with the final
// element terminated with a second null.
List<String> fromUtf16Array(Pointer pointer, int maxLength) {
  final results = <String>[];
  final buf = StringBuffer();
  final ptr = Pointer<Uint16>.fromAddress(pointer.address);

  for (var v = 0; v < maxLength; v++) {
    final charCode = ptr.elementAt(v).value;
    if (charCode != 0) {
      buf.write(String.fromCharCode(charCode));
    } else {
      results.add(buf.toString());
      if (ptr.elementAt(v + 1).value == 0) {
        return results;
      } else {
        buf.clear();
      }
    }
  }
  // If array don't terminate before maxLength is are reached,
  // just return the complete results thus far
  return results;
}

void DisplayVolumePaths(String volumeName) {
  var error = 0;

  // Could be arbitrarily long, but 4*MAX_PATH is a reasonable default.
  // More sophisticated solutions can be found online
  final pathNamePtr = allocate<Uint16>(count: MAX_PATH * 4).cast<Utf16>();
  final charCount = allocate<Int32>();
  charCount.value = MAX_PATH;
  error = GetVolumePathNamesForVolumeName(
      Utf16.toUtf16(volumeName), pathNamePtr, charCount.value, charCount);

  if (error != 0) {
    if (charCount.value > 1) {
      for (var path in fromUtf16Array(pathNamePtr, charCount.value)) {
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
    var volumeName = fromUtf16(volumeNamePtr, MAX_PATH);

    //  Skip the \\?\ prefix and remove the trailing backslash.
    final shortVolumeName = volumeName.substring(4, volumeName.length - 1);
    final shortVolumeNamePtr = Utf16.toUtf16(shortVolumeName);

    var deviceName = allocate<Uint16>(count: MAX_PATH).cast<Utf16>();
    var charCount = QueryDosDevice(shortVolumeNamePtr, deviceName, MAX_PATH);

    if (charCount == 0) {
      error = GetLastError();
      print('QueryDosDevice failed with error code $error');
      break;
    }

    print('\nFound a device:\n${fromUtf16(deviceName, MAX_PATH)}');
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
