// volumes.dart

// Finds physical volumes on the system

import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

final volumeHandles = <int, String>{};

class Volume {
  String deviceName;
  String volumeName;
  List<String> paths;

  Volume(this.deviceName, this.volumeName, this.paths);
}

class Volumes {
  final _volumes = <Volume>[];

  List<Volume> getVolumes() => _volumes;

  List<String> GetVolumePaths(String volumeName) {
    var paths = <String>[];
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
          paths.add(path);
        }
      }
    } else {
      error = GetLastError();
      throw Exception(
          'GetVolumePathNamesForVolumeName failed with error code $error');
    }

    free(pathNamePtr);
    free(charCount);

    return paths;
  }

  Volumes() {
    var error = 0;
    var volumeNamePtr = allocate<Uint16>(count: MAX_PATH).cast<Utf16>();

    var hFindVolume = FindFirstVolume(volumeNamePtr, MAX_PATH);
    if (hFindVolume == INVALID_HANDLE_VALUE) {
      error = GetLastError();
      throw Exception('FindFirstVolume failed with error code $error');
    }

    while (true) {
      var volumeName = volumeNamePtr.unpackString(MAX_PATH);

      //  Skip the \\?\ prefix and remove the trailing backslash.
      final shortVolumeName = volumeName.substring(4, volumeName.length - 1);
      final shortVolumeNamePtr = Utf16.toUtf16(shortVolumeName);

      var deviceName = allocate<Uint16>(count: MAX_PATH).cast<Utf16>();
      var charCount = QueryDosDevice(shortVolumeNamePtr, deviceName, MAX_PATH);

      if (charCount == 0) {
        error = GetLastError();
        throw Exception('QueryDosDevice failed with error code $error');
      }

      _volumes.add(Volume(deviceName.unpackString(MAX_PATH), volumeName,
          GetVolumePaths(volumeName)));

      final success = FindNextVolume(hFindVolume, volumeNamePtr, MAX_PATH);
      if (success == 0) {
        error = GetLastError();
        if (error != ERROR_NO_MORE_FILES && error != ERROR_SUCCESS) {
          print('FindNextVolume failed with error code $error');
          break;
        } else {
          break;
        }
      }
      free(shortVolumeNamePtr);
    }
    free(volumeNamePtr);
    FindVolumeClose(hFindVolume);
  }
}
