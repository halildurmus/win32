// Demonstrates collecting high-level Windows system information
// using a small, composable API surface.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

/// High-level snapshot of system information.
final class WindowsSystemInfo {
  WindowsSystemInfo({
    required this.buildNumber,
    required this.installedMemoryMB,
    required this.cpuCount,
    required this.userName,
    required this.computerName,
    required this.powerStatus,
    required this.batteryStatus,
  });

  final int buildNumber;
  final int installedMemoryMB;
  final int cpuCount;
  final String userName;
  final String computerName;
  final PowerInfo powerStatus;
  final BatteryInfo? batteryStatus;
}

/// Simplified power status derived from [GetSystemPowerStatus].
final class PowerInfo {
  const PowerInfo({
    required this.onACPower,
    required this.batteryPercent,
    required this.batterySaverEnabled,
  });

  final bool onACPower;
  final int? batteryPercent;
  final bool batterySaverEnabled;
}

/// Detailed battery information from [CallNtPowerInformation].
final class BatteryInfo {
  const BatteryInfo({
    required this.charging,
    required this.remainingCapacity,
    required this.maxCapacity,
    required this.estimatedTimeSeconds,
  });

  final bool charging;
  final int remainingCapacity;
  final int maxCapacity;
  final int estimatedTimeSeconds;
}

/// Collects a complete system snapshot.
WindowsSystemInfo querySystemInfo() => WindowsSystemInfo(
  buildNumber: _getWindowsBuildNumber(),
  installedMemoryMB: _getInstalledMemoryMB(),
  cpuCount: GetActiveProcessorCount(ALL_PROCESSOR_GROUPS).value,
  userName: _getUserName(),
  computerName: _getComputerName(),
  powerStatus: _getPowerInfo(),
  batteryStatus: _getBatteryInfo(),
);

int _getInstalledMemoryMB() => using((arena) {
  final pTotalMemoryInKiloBytes = arena<ULONGLONG>();
  final Win32Result(:value, :error) = GetPhysicallyInstalledSystemMemory(
    pTotalMemoryInKiloBytes,
  );
  if (!value) throw WindowsException(error.toHRESULT());
  return pTotalMemoryInKiloBytes.value ~/ 1024;
});

int _getWindowsBuildNumber() => using((arena) {
  final key = arena<Pointer>();
  final subKey = arena.pcwstr(r'SOFTWARE\Microsoft\Windows NT\CurrentVersion');

  final openResult = RegOpenKeyEx(HKEY_LOCAL_MACHINE, subKey, 0, KEY_READ, key);
  if (openResult != ERROR_SUCCESS) {
    throw WindowsException(openResult.toHRESULT());
  }
  final hkey = HKEY(key.value);

  final buffer = arena<BYTE>(256);
  final size = arena<DWORD>()..value = 256;
  final type = arena<DWORD>();
  final queryResult = RegQueryValueEx(
    hkey,
    arena.pcwstr('CurrentBuildNumber'),
    type,
    buffer,
    size,
  );
  hkey.close();

  if (queryResult != ERROR_SUCCESS || type.value != REG_SZ) {
    throw StateError('Unable to read Windows build number.');
  }

  return int.parse(buffer.cast<Utf16>().toDartString());
});

String _getUserName() => using((arena) {
  final length = arena<DWORD>()..value = 256;
  final buffer = arena.pwstrBuffer(256);
  final Win32Result(:value, :error) = GetUserName(buffer, length);
  if (!value) throw WindowsException(error.toHRESULT());
  return buffer.toDartString();
});

String _getComputerName() => using((arena) {
  final size = arena<DWORD>();
  GetComputerNameEx(ComputerNameDnsFullyQualified, null, size);
  final buffer = arena.pwstrBuffer(size.value);
  final Win32Result(:value, :error) = GetComputerNameEx(
    ComputerNameDnsFullyQualified,
    buffer,
    size,
  );
  if (!value) throw WindowsException(error.toHRESULT());
  return buffer.toDartString();
});

PowerInfo _getPowerInfo() => using((arena) {
  final status = arena<SYSTEM_POWER_STATUS>();
  final Win32Result(:value, :error) = GetSystemPowerStatus(status);
  if (!value) throw WindowsException(error.toHRESULT());
  final batteryPercent = status.ref.BatteryLifePercent == 255
      ? null
      : status.ref.BatteryLifePercent;
  return PowerInfo(
    onACPower: status.ref.ACLineStatus == 1,
    batteryPercent: batteryPercent,
    batterySaverEnabled: status.ref.SystemStatusFlag == 1,
  );
});

BatteryInfo? _getBatteryInfo() => using((arena) {
  final state = arena<SYSTEM_BATTERY_STATE>();
  final result = CallNtPowerInformation(
    SystemBatteryState,
    null,
    0,
    state,
    sizeOf<SYSTEM_BATTERY_STATE>(),
  );

  if (result != STATUS_SUCCESS || !state.ref.BatteryPresent) {
    return null;
  }

  return BatteryInfo(
    charging: state.ref.Charging,
    remainingCapacity: state.ref.RemainingCapacity,
    maxCapacity: state.ref.MaxCapacity,
    estimatedTimeSeconds: state.ref.EstimatedTime,
  );
});

void main() {
  final info = querySystemInfo();
  print('Windows system overview\n');
  print('User:     ${info.userName}');
  print('Computer: ${info.computerName}');
  print('Build:    ${info.buildNumber}');
  print('CPU(s):   ${info.cpuCount}');
  print('Memory:   ${info.installedMemoryMB} MB\n');
  final power = info.powerStatus;
  print('Power status:');
  print(power.onACPower ? '• Connected to AC power' : '• Running on battery');
  if (power.batteryPercent != null) {
    print('• Battery: ${power.batteryPercent}%');
  }
  if (power.batterySaverEnabled) {
    print('• Battery saver enabled');
  }
  final battery = info.batteryStatus;
  if (battery != null) {
    print('\nBattery details:');
    print(battery.charging ? '• Charging' : '• Not charging');
    print(
      '• Capacity: ${battery.remainingCapacity} / '
      '${battery.maxCapacity}',
    );
    print(
      '• Estimated time remaining: '
      '${battery.estimatedTimeSeconds} seconds',
    );
  }
}
