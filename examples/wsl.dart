// Demonstrates querying and interacting with Windows Subsystem for Linux (WSL)
// distributions using the WSL Win32 API.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

/// Represents the configuration of an installed WSL distribution.
final class WslDistribution {
  const WslDistribution({
    required this.name,
    required this.version,
    required this.defaultUserId,
    required this.flags,
    required this.environmentVariables,
  });

  final String name;
  final int version;
  final int defaultUserId;
  final int flags;
  final List<String> environmentVariables;

  bool get driveMountingEnabled =>
      flags & WSL_DISTRIBUTION_FLAGS_ENABLE_DRIVE_MOUNTING != 0;
}

/// Returns `true` if a WSL distribution with the given [name] is registered.
bool isDistributionRegistered(String name) =>
    using((arena) => WslIsDistributionRegistered(arena.pcwstr(name)));

/// Retrieves configuration information for a registered WSL distribution.
WslDistribution queryDistribution(String name) => using((arena) {
  final version = arena<ULONG>();
  final defaultUid = arena<ULONG>();
  final flags = arena<LONG>();
  final envVars = arena<Pointer<Pointer<Utf8>>>();
  final envVarCount = arena<ULONG>();
  WslGetDistributionConfiguration(
    arena.pcwstr(name),
    version,
    defaultUid,
    flags,
    envVars,
    envVarCount,
  );

  final variables = <String>[];
  for (var i = 0; i < envVarCount.value; i++) {
    final pstr = envVars.value[i];
    variables.add(pstr.toDartString());
    free(pstr);
  }

  return WslDistribution(
    name: name,
    version: version.value,
    defaultUserId: defaultUid.value,
    flags: flags.value,
    environmentVariables: variables,
  );
});

/// Executes a command inside the specified WSL distribution and waits
/// for completion.
///
/// Standard input, output, and error are inherited from the current process.
int runInDistribution(String name, String command) => using((arena) {
  final exitCode = arena<DWORD>();
  final processHandle = WslLaunch(
    arena.pcwstr(name),
    arena.pcwstr(command),
    false,
    GetStdHandle(STD_INPUT_HANDLE).value,
    GetStdHandle(STD_OUTPUT_HANDLE).value,
    GetStdHandle(STD_ERROR_HANDLE).value,
  );
  WaitForSingleObject(processHandle, INFINITE);
  GetExitCodeProcess(processHandle, exitCode);
  processHandle.close();
  return exitCode.value;
});

void main() {
  // Common distribution names to probe.
  const candidates = [
    'Ubuntu',
    'Ubuntu-18.04',
    'Ubuntu-20.04',
    'Ubuntu-22.04',
    'Debian',
    'kali-linux',
  ];

  final distributions = <WslDistribution>[
    for (final name in candidates)
      if (isDistributionRegistered(name)) queryDistribution(name),
  ];

  if (distributions.isEmpty) {
    print('No WSL distributions are registered on this system.');
    return;
  }

  print('Detected ${distributions.length} WSL distribution(s):\n');

  for (final distro in distributions) {
    print('Distribution: ${distro.name}');
    print('WSL version: ${distro.version}');
    print('Default user ID: ${distro.defaultUserId}');
    print('Drive mounting enabled: ${distro.driveMountingEnabled}');

    if (distro.environmentVariables.isNotEmpty) {
      print('Default environment variables:');
      for (final v in distro.environmentVariables) {
        print('  $v');
      }
    } else {
      print('Default environment variables: <none>');
    }

    print('\nTest command: uname -a');
    final exitCode = runInDistribution(distro.name, 'uname -a');
    print('Exit code: $exitCode');
  }
}
