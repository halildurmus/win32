// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Tests that Win32 API prototypes can be successfully loaded (i.e. that
// lookupFunction works for all the APIs generated).
//
// ignore_for_file: non_constant_identifier_names, unnecessary_ignore
// ignore_for_file: unused_import

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

@Native<Int32 Function(Pointer<Utf16>, Uint32, Int32)>(
  symbol: 'WslConfigureDistribution',
)
external int _WslConfigureDistribution(
  Pointer<Utf16> distributionName,
  int defaultUID,
  int wslDistributionFlags,
);

@Native<
  Int32 Function(
    Pointer<Utf16>,
    Pointer<Uint32>,
    Pointer<Uint32>,
    Pointer<Int32>,
    Pointer<Pointer<Pointer<Utf8>>>,
    Pointer<Uint32>,
  )
>(symbol: 'WslGetDistributionConfiguration')
external int _WslGetDistributionConfiguration(
  Pointer<Utf16> distributionName,
  Pointer<Uint32> distributionVersion,
  Pointer<Uint32> defaultUID,
  Pointer<Int32> wslDistributionFlags,
  Pointer<Pointer<Pointer<Utf8>>> defaultEnvironmentVariables,
  Pointer<Uint32> defaultEnvironmentVariableCount,
);

@Native<Int32 Function(Pointer<Utf16>)>(symbol: 'WslIsDistributionRegistered')
external int _WslIsDistributionRegistered(Pointer<Utf16> distributionName);

@Native<
  Int32 Function(
    Pointer<Utf16>,
    Pointer<Utf16>,
    Int32,
    Pointer,
    Pointer,
    Pointer,
    Pointer<Pointer>,
  )
>(symbol: 'WslLaunch')
external int _WslLaunch(
  Pointer<Utf16> distributionName,
  Pointer<Utf16> command,
  int useCurrentWorkingDirectory,
  Pointer stdIn,
  Pointer stdOut,
  Pointer stdErr,
  Pointer<Pointer> process,
);

@Native<Int32 Function(Pointer<Utf16>, Pointer<Utf16>, Int32, Pointer<Uint32>)>(
  symbol: 'WslLaunchInteractive',
)
external int _WslLaunchInteractive(
  Pointer<Utf16> distributionName,
  Pointer<Utf16> command,
  int useCurrentWorkingDirectory,
  Pointer<Uint32> exitCode,
);

@Native<Int32 Function(Pointer<Utf16>, Pointer<Utf16>)>(
  symbol: 'WslRegisterDistribution',
)
external int _WslRegisterDistribution(
  Pointer<Utf16> distributionName,
  Pointer<Utf16> tarGzFilename,
);

@Native<Int32 Function(Pointer<Utf16>)>(symbol: 'WslUnregisterDistribution')
external int _WslUnregisterDistribution(Pointer<Utf16> distributionName);
