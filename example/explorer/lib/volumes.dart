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
    final paths = <String>[];

    // Could be arbitrarily long, but 4*MAX_PATH is a reasonable default.
    // More sophisticated solutions can be found online
    final pathNamePtr = calloc<Uint16>(MAX_PATH * 4).cast<Utf16>();
    final charCount = calloc<Uint32>();
    final volumeNamePtr = volumeName.toNativeUtf16();

    try {
      charCount.value = MAX_PATH;
      final success = GetVolumePathNamesForVolumeName(
          volumeNamePtr, pathNamePtr, charCount.value, charCount);

      if (success != FALSE) {
        if (charCount.value > 1) {
          for (final path in pathNamePtr.unpackStringArray(charCount.value)) {
            paths.add(path);
          }
        }
      } else {
        final error = GetLastError();
        throw Exception(
            'GetVolumePathNamesForVolumeName failed with error code $error');
      }
      return paths;
    } finally {
      free(pathNamePtr);
      free(charCount);
    }
  }

  Volumes() {
    var error = 0;
    final volumeNamePtr = calloc<Uint16>(MAX_PATH).cast<Utf16>();

    final hFindVolume = FindFirstVolume(volumeNamePtr, MAX_PATH);
    if (hFindVolume == INVALID_HANDLE_VALUE) {
      error = GetLastError();
      throw Exception('FindFirstVolume failed with error code $error');
    }

    while (true) {
      final volumeName = volumeNamePtr.toDartString();

      //  Skip the \\?\ prefix and remove the trailing backslash.
      final shortVolumeName = volumeName.substring(4, volumeName.length - 1);
      final shortVolumeNamePtr = shortVolumeName.toNativeUtf16();

      final deviceName = calloc<Uint16>(MAX_PATH).cast<Utf16>();
      final charCount =
          QueryDosDevice(shortVolumeNamePtr, deviceName, MAX_PATH);

      if (charCount == 0) {
        error = GetLastError();
        throw Exception('QueryDosDevice failed with error code $error');
      }

      _volumes.add(Volume(
          deviceName.toDartString(), volumeName, GetVolumePaths(volumeName)));

      final success = FindNextVolume(hFindVolume, volumeNamePtr, MAX_PATH);
      if (success == FALSE) {
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
