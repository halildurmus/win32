import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

class DistributionConfiguration {
  final String name;
  final int version;
  final int userID;
  final int flags;
  final List<String> environmentVariables;

  const DistributionConfiguration(this.name, this.version, this.userID,
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
  final defaultEnvironmentVariables = calloc<Pointer<Pointer<Utf8>>>();
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
  final testCommand = 'uname -a'.toNativeUtf16();
  final processHandle = calloc<HANDLE>();
  final exitCode = calloc<DWORD>();
  try {
    final hr = WslLaunch(
        pDistributionName,
        testCommand,
        FALSE,
        GetStdHandle(STD_INPUT_HANDLE),
        GetStdHandle(STD_OUTPUT_HANDLE),
        GetStdHandle(STD_ERROR_HANDLE),
        processHandle);
    if (FAILED(hr)) throw WindowsException(hr);
    WaitForSingleObject(processHandle.value, 10000000);
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
      print('Version: ${config.version}');
      print('Environment variables: ');
      config.environmentVariables.forEach(print);

      final exitCode = runTestCommand(distributionName);
      print('Command returned exit code: $exitCode');
    }
  }
}
