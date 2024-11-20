// Tests that Win32 API prototypes can be successfully loaded (i.e. that
// lookupFunction works for all the APIs generated).
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// ignore_for_file: non_constant_identifier_names, unused_import,
// ignore_for_file: unused_local_variable

@TestOn('windows')
library;

import 'dart:ffi';

import 'package:checks/checks.dart';
import 'package:ffi/ffi.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';

import '../../helpers.dart';

void main() {
  group('api-ms-win-wsl-api-l1-1-0.dll', () {
    test(
      'WslConfigureDistribution can be instantiated',
      skip: 19041 > windowsBuildNumber,
      () {
        check(_WslConfigureDistribution).isA<Function>();
      },
    );
    test(
      'WslGetDistributionConfiguration can be instantiated',
      skip: 19041 > windowsBuildNumber,
      () {
        check(_WslGetDistributionConfiguration).isA<Function>();
      },
    );
    test(
      'WslIsDistributionRegistered can be instantiated',
      skip: 19041 > windowsBuildNumber,
      () {
        check(_WslIsDistributionRegistered).isA<Function>();
      },
    );
    test('WslLaunch can be instantiated', skip: 19041 > windowsBuildNumber, () {
      check(_WslLaunch).isA<Function>();
    });
    test(
      'WslLaunchInteractive can be instantiated',
      skip: 19041 > windowsBuildNumber,
      () {
        check(_WslLaunchInteractive).isA<Function>();
      },
    );
    test(
      'WslRegisterDistribution can be instantiated',
      skip: 19041 > windowsBuildNumber,
      () {
        check(_WslRegisterDistribution).isA<Function>();
      },
    );
    test(
      'WslUnregisterDistribution can be instantiated',
      skip: 19041 > windowsBuildNumber,
      () {
        check(_WslUnregisterDistribution).isA<Function>();
      },
    );
  });
}

@Native<Int32 Function(PCWSTR, Uint32, Int32)>(
  symbol: 'WslConfigureDistribution',
)
external int _WslConfigureDistribution(
  PCWSTR distributionName,
  int defaultUID,
  int wslDistributionFlags,
);

@Native<
  Int32 Function(
    PCWSTR,
    Pointer<Uint32>,
    Pointer<Uint32>,
    Pointer<Int32>,
    Pointer<Pointer<PSTR>>,
    Pointer<Uint32>,
  )
>(symbol: 'WslGetDistributionConfiguration')
external int _WslGetDistributionConfiguration(
  PCWSTR distributionName,
  Pointer<Uint32> distributionVersion,
  Pointer<Uint32> defaultUID,
  Pointer<Int32> wslDistributionFlags,
  Pointer<Pointer<PSTR>> defaultEnvironmentVariables,
  Pointer<Uint32> defaultEnvironmentVariableCount,
);

@Native<BOOL Function(PCWSTR)>(symbol: 'WslIsDistributionRegistered')
external int _WslIsDistributionRegistered(PCWSTR distributionName);

@Native<
  Int32 Function(PCWSTR, PCWSTR, BOOL, HANDLE, HANDLE, HANDLE, Pointer<HANDLE>)
>(symbol: 'WslLaunch')
external int _WslLaunch(
  PCWSTR distributionName,
  PCWSTR command,
  int useCurrentWorkingDirectory,
  int stdIn,
  int stdOut,
  int stdErr,
  Pointer<HANDLE> process,
);

@Native<Int32 Function(PCWSTR, PCWSTR, BOOL, Pointer<Uint32>)>(
  symbol: 'WslLaunchInteractive',
)
external int _WslLaunchInteractive(
  PCWSTR distributionName,
  PCWSTR command,
  int useCurrentWorkingDirectory,
  Pointer<Uint32> exitCode,
);

@Native<Int32 Function(PCWSTR, PCWSTR)>(symbol: 'WslRegisterDistribution')
external int _WslRegisterDistribution(
  PCWSTR distributionName,
  PCWSTR tarGzFilename,
);

@Native<Int32 Function(PCWSTR)>(symbol: 'WslUnregisterDistribution')
external int _WslUnregisterDistribution(PCWSTR distributionName);
