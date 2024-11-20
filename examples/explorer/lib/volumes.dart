import 'dart:ffi';

import 'package:flutter/foundation.dart';
import 'package:win32/win32.dart';

class Volume {
  const Volume(this.deviceName, this.volumeName, this.paths);

  final String deviceName;
  final String volumeName;
  final List<String> paths;
}

class Volumes {
  Volumes() {
    var error = 0;
    final volumeNamePtr = Pwstr.allocate(MAX_PATH);

    final hFindVolume = FindFirstVolume(volumeNamePtr.ptr, MAX_PATH);
    if (hFindVolume == INVALID_HANDLE_VALUE) {
      error = GetLastError();
      throw StateError('FindFirstVolume failed with error code $error');
    }

    while (true) {
      final volumeName = volumeNamePtr.toDartString();

      // Skip the \\?\ prefix and remove the trailing backslash.
      final shortVolumeName = volumeName.substring(4, volumeName.length - 1);

      final deviceName = Pwstr.allocate(MAX_PATH);
      final lpDeviceName = w(shortVolumeName);
      final charCount = QueryDosDevice(
        lpDeviceName.ptr,
        deviceName.ptr,
        MAX_PATH,
      );

      if (charCount == 0) {
        error = GetLastError();
        throw StateError('QueryDosDevice failed with error code $error');
      }

      _volumes.add(
        Volume(
          deviceName.toDartString(),
          volumeName,
          getVolumePaths(volumeName),
        ),
      );

      if (!FindNextVolume(hFindVolume, volumeNamePtr.ptr, MAX_PATH)) {
        error = GetLastError();
        if (error != ERROR_NO_MORE_FILES && error != ERROR_SUCCESS) {
          if (kDebugMode) {
            print('FindNextVolume failed with error code $error');
          }
          break;
        } else {
          break;
        }
      }
    }

    volumeNamePtr.free();
    FindVolumeClose(hFindVolume);
  }

  final _volumes = <Volume>[];

  List<Volume> getVolumes() => _volumes;

  List<String> getVolumePaths(String volumeName) {
    final paths = <String>[];

    // Could be arbitrarily long, but 4*MAX_PATH is a reasonable default.
    // More sophisticated solutions can be found online
    final pathNamePtr = Pwstr.allocate(MAX_PATH * 4);
    final charCount = loggingCalloc<DWORD>();

    try {
      charCount.value = MAX_PATH;

      final lpszVolumeName = w(volumeName);
      if (GetVolumePathNamesForVolumeName(
        lpszVolumeName.ptr,
        pathNamePtr.ptr,
        charCount.value,
        charCount,
      )) {
        if (charCount.value > 1) {
          for (final path in pathNamePtr.toDartStringList(charCount.value)) {
            paths.add(path);
          }
        }
      } else {
        final error = GetLastError();
        throw StateError(
          'GetVolumePathNamesForVolumeName failed with error code $error',
        );
      }
      return paths;
    } finally {
      pathNamePtr.free();
      free(charCount);
    }
  }
}
