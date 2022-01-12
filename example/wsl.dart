import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

class DistributionConfiguration {
  final String name;
  final int wslVersion;
  final int userID;
  final int flags;
  final List<String> environmentVariables;

  const DistributionConfiguration(this.name, this.wslVersion, this.userID,
      this.flags, this.environmentVariables);
}

/// Check whether a distribution exists
bool isDistributionRegistered(String distributionName) {
  final pDistributionName = distributionName.toNativeUtf16();
  try {
    return WslIsDistributionRegistered(pDistributionName) == TRUE;
  } finally {
    free(pDistributionName);
  }
}

DistributionConfiguration getDistributionConfiguration(
    String distributionName) {
  final pDistributionName = distributionName.toNativeUtf16();
  final distributionVersion = calloc<ULONG>();
  final defaultUID = calloc<ULONG>();
  final wslDistributionFlags = calloc<ULONG>();
  final defaultEnvironmentVariables = calloc<Pointer<PSTR>>();
  final defaultEnvironmentVariableCount = calloc<ULONG>();

  try {
    final hr = WslGetDistributionConfiguration(
        TEXT(distributionName),
        distributionVersion,
        defaultUID,
        wslDistributionFlags,
        defaultEnvironmentVariables,
        defaultEnvironmentVariableCount);

    if (FAILED(hr)) throw WindowsException(hr);

    final vars = <String>[];
    for (var idx = 0; idx < defaultEnvironmentVariableCount.value; idx++) {
      vars.add(defaultEnvironmentVariables.value[idx].toDartString());
    }
    return DistributionConfiguration(
        distributionName,
        distributionVersion.value,
        defaultUID.value,
        wslDistributionFlags.value,
        vars);
  } finally {
    free(pDistributionName);
    free(distributionVersion);
    free(defaultUID);
    free(wslDistributionFlags);
    free(defaultEnvironmentVariables);
    free(defaultEnvironmentVariableCount);
  }
}

int runTestCommand(String distributionName) {
  final pDistributionName = distributionName.toNativeUtf16();
  final testCommand = 'uname -a'.toNativeUtf16(); // Change as appropriate
  final processHandle = calloc<HANDLE>();
  final exitCode = calloc<DWORD>();
  try {
    // You
    final hr = WslLaunch(
        pDistributionName,
        testCommand,
        FALSE,
        GetStdHandle(STD_INPUT_HANDLE), // redirect as appropriate
        GetStdHandle(STD_OUTPUT_HANDLE), // redirect as appropriate
        GetStdHandle(STD_ERROR_HANDLE), // redirect as appropriate
        processHandle);
    if (FAILED(hr)) throw WindowsException(hr);
    WaitForSingleObject(processHandle.value, INFINITE);
    GetExitCodeProcess(processHandle.value, exitCode);
    return exitCode.value;
  } finally {
    free(pDistributionName);
    free(testCommand);
    free(processHandle);
    free(exitCode);
  }
}

void main() {
  for (final distributionName in ['Ubuntu', 'Debian', 'kali-linux']) {
    if (isDistributionRegistered(distributionName)) {
      final config = getDistributionConfiguration(distributionName);
      print('Distribution: $distributionName');
      print('Version: ${config.wslVersion}');
      final driveMounting = config.flags &
              WSL_DISTRIBUTION_FLAGS
                  .WSL_DISTRIBUTION_FLAGS_ENABLE_DRIVE_MOUNTING ==
          WSL_DISTRIBUTION_FLAGS.WSL_DISTRIBUTION_FLAGS_ENABLE_DRIVE_MOUNTING;
      print('Windows drives automatically mounted: $driveMounting');
      print('Environment variables: ');
      config.environmentVariables.forEach(print);

      print('Test command (uname -a) reports:');
      final exitCode = runTestCommand(distributionName);
      print('Command returned exit code: $exitCode');
    }
  }
}
