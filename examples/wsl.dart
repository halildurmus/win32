// Prints out information about one of a number of given Windows Subsystem for
// Linux distributions.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

/// Represents a configuration of an installed WSL distribution.
class DistributionConfiguration {
  const DistributionConfiguration(
    this.name,
    this.wslVersion,
    this.userID,
    this.flags,
    this.environmentVariables,
  );

  final String name;
  final int wslVersion;
  final int userID;
  final int flags;
  final List<String> environmentVariables;
}

/// Check whether a distribution exists
bool isDistributionRegistered(String distributionName) {
  final name = w(distributionName);
  return WslIsDistributionRegistered(name.ptr);
}

/// Get information about a specified WSL distribution.
DistributionConfiguration getDistributionConfiguration(
  String distributionName,
) {
  final distributionVersion = loggingCalloc<ULONG>();
  final defaultUID = loggingCalloc<ULONG>();
  final wslDistributionFlags = loggingCalloc<LONG>();
  final defaultEnvironmentVariables = loggingCalloc<Pointer<PSTR>>();
  final defaultEnvironmentVariableCount = loggingCalloc<ULONG>();

  try {
    final name = w(distributionName);
    WslGetDistributionConfiguration(
      name.ptr,
      distributionVersion,
      defaultUID,
      wslDistributionFlags,
      defaultEnvironmentVariables,
      defaultEnvironmentVariableCount,
    );

    final vars = <String>[];
    for (var idx = 0; idx < defaultEnvironmentVariableCount.value; idx++) {
      vars.add(defaultEnvironmentVariables.value[idx].toDartString());
    }

    return DistributionConfiguration(
      distributionName,
      distributionVersion.value,
      defaultUID.value,
      wslDistributionFlags.value,
      vars,
    );
  } finally {
    free(distributionVersion);
    free(defaultUID);
    free(wslDistributionFlags);
    free(defaultEnvironmentVariables);
    free(defaultEnvironmentVariableCount);
  }
}

/// Run a test Linux shell command on a given distribution.
int runCommand(String distributionName, String command) {
  final exitCode = loggingCalloc<DWORD>();
  try {
    final name = w(distributionName);
    final lpCommand = w(command);
    final processHandle = WslLaunch(
      name.ptr,
      lpCommand.ptr,
      false,
      GetStdHandle(STD_INPUT_HANDLE), // redirect as appropriate
      GetStdHandle(STD_OUTPUT_HANDLE), // redirect as appropriate
      GetStdHandle(STD_ERROR_HANDLE), // redirect as appropriate
    );
    WaitForSingleObject(processHandle, INFINITE);
    GetExitCodeProcess(processHandle, exitCode);
    return exitCode.value;
  } finally {
    free(exitCode);
  }
}

void main() {
  final distributions = [
    'Ubuntu',
    'Ubuntu-18.04',
    'Ubuntu-20.04',
    'Debian',
    'kali-linux',
  ].where(isDistributionRegistered).map(getDistributionConfiguration).toList();
  if (distributions.isEmpty) {
    print('No WSL distributions registered.');
    return;
  }

  print('Found ${distributions.length} WSL distributions:\n');
  for (var i = 0; i < distributions.length; i++) {
    final DistributionConfiguration(
      :environmentVariables,
      :flags,
      :name,
      :userID,
      :wslVersion,
    ) = distributions[i];
    print('Distribution: $name');
    print('Version: $wslVersion');
    print('Default user ID: $userID');
    final driveMounting =
        flags & WSL_DISTRIBUTION_FLAGS_ENABLE_DRIVE_MOUNTING ==
        WSL_DISTRIBUTION_FLAGS_ENABLE_DRIVE_MOUNTING;
    print('Windows drives automatically mounted: $driveMounting');
    print('Environment variables: ');
    environmentVariables.forEach(print);

    print('Test command (uname -a) reports:');
    final exitCode = runCommand(name, 'uname -a');
    print('Command returned exit code: $exitCode');

    if (i < distributions.length - 1) print('');
  }
}
