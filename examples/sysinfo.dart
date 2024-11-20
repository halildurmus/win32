// Get general Windows system information.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

/// Return a value representing the physically installed memory in the computer.
/// This may not be the same as available memory.
int getSystemMemoryInMegabytes() {
  final memory = loggingCalloc<ULONGLONG>();
  try {
    if (GetPhysicallyInstalledSystemMemory(memory)) {
      return memory.value ~/ 1024;
    }

    throw WindowsException(GetLastError().toHRESULT());
  } finally {
    free(memory);
  }
}

/// Get the computer's fully-qualified DNS name, where available.
String getComputerName() {
  final nameLength = loggingCalloc<DWORD>();
  String name;

  GetComputerNameEx(ComputerNameDnsFullyQualified, null, nameLength);

  final namePtr = Pwstr.allocate(nameLength.value);

  try {
    if (GetComputerNameEx(
      ComputerNameDnsFullyQualified,
      namePtr.ptr,
      nameLength,
    )) {
      name = namePtr.toDartString();
    } else {
      throw WindowsException(GetLastError().toHRESULT());
    }
  } finally {
    free(nameLength);
  }
  return name;
}

/// Retrieve a value from the registry.
Object getRegistryValue(int key, String subKey, String valueName) {
  late Object dataValue;

  final openKeyPtr = loggingCalloc<HANDLE>();
  final dataType = loggingCalloc<DWORD>();

  // 256 bytes is more than enough, and Windows will throw ERROR_MORE_DATA if
  // not, so there won't be an overrun.
  final data = loggingCalloc<BYTE>(256);
  final dataSize = loggingCalloc<DWORD>()..value = 256;

  try {
    final lpSubKey = w(subKey);
    var result = RegOpenKeyEx(key, lpSubKey.ptr, 0, KEY_READ, openKeyPtr);
    if (result == ERROR_SUCCESS) {
      final lpValueName = w(valueName);
      result = RegQueryValueEx(
        openKeyPtr.value,
        lpValueName.ptr,
        dataType,
        data,
        dataSize,
      );
      RegCloseKey(openKeyPtr.value);

      if (result == ERROR_SUCCESS) {
        if (dataType.value == REG_DWORD) {
          dataValue = data.value;
        } else if (dataType.value == REG_SZ) {
          dataValue = data.cast<Utf16>().toDartString();
        } else {
          // other data types are available, but this is a sample
        }
      } else {
        throw WindowsException(result.toHRESULT());
      }
    } else {
      throw WindowsException(result.toHRESULT());
    }
  } finally {
    free(openKeyPtr);
    free(dataType);
    free(data);
    free(dataSize);
  }

  return dataValue;
}

bool testFlag(int value, int attribute) => value & attribute == attribute;

/// Print system power status information.
///
/// Uses the GetSystemPowerStatus API call to get information about the battery.
/// More information on the reported values can be found in the Windows API
/// documentation, here:
/// https://learn.microsoft.com/windows/win32/api/winbase/ns-winbase-system_power_status
void printPowerInfo() {
  final powerStatus = loggingCalloc<SYSTEM_POWER_STATUS>();

  try {
    if (GetSystemPowerStatus(powerStatus)) {
      print('Power status from GetSystemPowerStatus():');

      if (powerStatus.ref.ACLineStatus == 0) {
        print(' - Disconnected from AC power.');
      } else if (powerStatus.ref.ACLineStatus == 1) {
        print(' - Connected to AC power.');
      } else {
        print(' - AC power status unknown.');
      }

      if (testFlag(powerStatus.ref.BatteryFlag, 128)) {
        print(' - No battery installed.');
      } else {
        if (powerStatus.ref.BatteryLifePercent == 255) {
          print(' - Battery status unknown.');
        } else {
          print(
            ' - ${powerStatus.ref.BatteryLifePercent}% '
            'percent battery remaining.',
          );
        }

        if (powerStatus.ref.BatteryLifeTime != 0xFFFFFFFF) {
          print(
            ' - ${powerStatus.ref.BatteryLifeTime / 60} minutes of power '
            'estimated to remain.',
          );
        }
        // New in Windows 10, but should report 0 on older systems
        if (powerStatus.ref.SystemStatusFlag == 1) {
          print(' - Battery saver is on. Save energy where possible.');
        }
      }
    } else {
      throw WindowsException(GetLastError().toHRESULT());
    }
  } finally {
    free(powerStatus);
  }
}

/// Print battery status information.
///
/// This uses a different, slightly lower-level API to [printPowerInfo] to
/// report more detailed system battery status from the power management
/// library.
void printBatteryStatusInfo() {
  final batteryStatus = loggingCalloc<SYSTEM_BATTERY_STATE>();

  try {
    final result = CallNtPowerInformation(
      SystemBatteryState,
      null,
      0,
      batteryStatus,
      sizeOf<SYSTEM_BATTERY_STATE>(),
    );

    if (result == STATUS_SUCCESS) {
      print('Power status from CallNtPowerInformation():');

      print(
        batteryStatus.ref.AcOnLine
            ? ' - System is currently operating on external power.'
            : ' - System is not currently operating on external power.',
      );

      print(
        batteryStatus.ref.BatteryPresent
            ? ' - At least one battery is present in the system.'
            : ' - No batteries detected in the system.',
      );

      if (batteryStatus.ref.BatteryPresent) {
        print(
          batteryStatus.ref.Charging
              ? ' - Battery is charging.'
              : ' - Battery is not charging.',
        );

        print(
          batteryStatus.ref.Discharging
              ? ' - Battery is discharging.'
              : ' - Battery is not discharging.',
        );

        print(
          ' - Theoretical max capacity of the battery is '
          '${batteryStatus.ref.MaxCapacity}.',
        );

        print(
          ' - Estimated remaining capacity of the battery is '
          '${batteryStatus.ref.RemainingCapacity}.',
        );

        print(
          ' - Charge/discharge rate of the battery is '
          '${batteryStatus.ref.EstimatedTime.abs()} mW.',
        );

        print(
          ' - Estimated time remaining on the battery is '
          '${batteryStatus.ref.EstimatedTime} seconds.',
        );

        print(
          ' - Manufacturer suggested low battery alert is at '
          '${batteryStatus.ref.DefaultAlert1} mWh.',
        );
        print(
          ' - Manufacturer suggested warning battery alert is at '
          '${batteryStatus.ref.DefaultAlert2} mWh.',
        );
      }
    }
  } finally {
    free(batteryStatus);
  }
}

String getUserName() {
  const usernameLength = 256;
  final pcbBuffer = loggingCalloc<DWORD>()..value = usernameLength + 1;
  final lpBuffer = Pwstr.allocate(usernameLength + 1);

  try {
    if (GetUserName(lpBuffer.ptr, pcbBuffer)) {
      return lpBuffer.toDartString();
    }

    throw WindowsException(GetLastError().toHRESULT());
  } finally {
    free(pcbBuffer);
  }
}

void main() {
  print('This version of Windows supports the APIs in:');
  if (IsWindowsXPOrGreater()) print(' - Windows XP');
  if (IsWindowsVistaOrGreater()) print(' - Windows Vista');
  if (IsWindows7OrGreater()) print(' - Windows 7');
  if (IsWindows8OrGreater()) print(' - Windows 8');
  if (IsWindows10OrGreater()) print(' - Windows 10');

  // For more recent versions of Windows, Microsoft strongly recommends that
  // developers avoid version testing because of app compat issues caused by
  // buggy version testing. Indeed, the API goes to some lengths to make it hard
  // to test versions. Yet version detection is the only reliable solution for
  // certain API calls, so the recommendation is noted but not followed.
  final buildNumber = int.parse(
    getRegistryValue(
          HKEY_LOCAL_MACHINE,
          r'SOFTWARE\Microsoft\Windows NT\CurrentVersion\',
          'CurrentBuildNumber',
        )
        as String,
  );
  if (buildNumber >= 22000) print(' - Windows 11');

  print('\nWindows build number is: $buildNumber');

  print(
    '\nRAM physically installed on this computer: '
    '${getSystemMemoryInMegabytes()}MB',
  );

  print(
    '\nActive processors on the system: '
    '${GetActiveProcessorCount(ALL_PROCESSOR_GROUPS)}\n',
  );

  print('User name is: ${getUserName()}');
  print('Computer name is: ${getComputerName()}\n');

  printPowerInfo();

  print('');

  printBatteryStatusInfo();
}
