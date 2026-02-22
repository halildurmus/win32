import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

/// Represents a mounted Windows volume.
final class Volume {
  const Volume({
    required this.volumeName,
    required this.deviceName,
    required this.mountPoints,
  });

  /// Volume GUID path (e.g., `\\?\Volume{...}\`)
  final String volumeName;

  /// NT device name (e.g., `\Device\HarddiskVolume3`)
  final String deviceName;

  /// Drive letters and mount points (e.g., `C:\`, `D:\Mount\`)
  final List<String> mountPoints;
}

/// Enumerates Windows volumes using the Win32 volume management APIs.
List<Volume> enumerateVolumes() => using((arena) {
  final volumes = <Volume>[];

  final pVolumeName = arena.pwstrBuffer(MAX_PATH);
  final Win32Result(value: handle, :error) = FindFirstVolume(
    pVolumeName,
    MAX_PATH,
  );
  if (handle == INVALID_HANDLE_VALUE) throw WindowsException(error.toHRESULT());

  try {
    while (true) {
      final volumeName = pVolumeName.toDartString();
      volumes.add(
        Volume(
          volumeName: volumeName,
          deviceName: _queryDeviceName(arena, volumeName),
          mountPoints: _queryMountPoints(arena, volumeName),
        ),
      );

      final next = FindNextVolume(handle, pVolumeName, MAX_PATH);
      if (!next.value) {
        if (next.error == ERROR_NO_MORE_FILES) break;
        throw WindowsException(next.error.toHRESULT());
      }
    }
  } finally {
    FindVolumeClose(handle);
  }

  return volumes;
});

String _queryDeviceName(Arena arena, String volumeName) {
  // Strip \\?\ prefix and trailing backslash.
  final dosName = volumeName.substring(4, volumeName.length - 1);
  final deviceNameBuffer = arena.pwstrBuffer(MAX_PATH);
  final Win32Result(value: count, :error) = QueryDosDevice(
    arena.pcwstr(dosName),
    deviceNameBuffer,
    MAX_PATH,
  );
  if (count == 0) throw WindowsException(error.toHRESULT());
  return deviceNameBuffer.toDartString();
}

List<String> _queryMountPoints(Arena arena, String volumeName) {
  // First call to determine required buffer size.
  final requiredLength = arena<DWORD>();
  var result = GetVolumePathNamesForVolumeName(
    arena.pcwstr(volumeName),
    null,
    0,
    requiredLength,
  );
  if (!result.value && result.error != ERROR_MORE_DATA) {
    throw WindowsException(result.error.toHRESULT());
  }
  if (requiredLength.value == 0) return const [];

  final buffer = arena.pwstrBuffer(requiredLength.value);
  result = GetVolumePathNamesForVolumeName(
    arena.pcwstr(volumeName),
    buffer,
    requiredLength.value,
    requiredLength,
  );
  if (!result.value) throw WindowsException(result.error.toHRESULT());

  return buffer.toDartStringList(requiredLength.value);
}
