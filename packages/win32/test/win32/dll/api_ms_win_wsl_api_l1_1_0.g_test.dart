// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Tests that Win32 API prototypes can be successfully loaded (i.e. that
// lookupFunction works for all the APIs generated).
//
// ignore_for_file: non_constant_identifier_names, unnecessary_ignore
// ignore_for_file: specify_nonobvious_property_types, unused_import

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

final _api_ms_win_wsl_api_l1_1_0 = DynamicLibrary.open(
  'api-ms-win-wsl-api-l1-1-0.dll',
);

final _WslConfigureDistribution = _api_ms_win_wsl_api_l1_1_0
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Uint32, Int32),
      int Function(Pointer<Utf16>, int, int)
    >('WslConfigureDistribution');

final _WslGetDistributionConfiguration = _api_ms_win_wsl_api_l1_1_0
    .lookupFunction<
      Int32 Function(
        Pointer<Utf16>,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<Int32>,
        Pointer<Pointer<Pointer<Utf8>>>,
        Pointer<Uint32>,
      ),
      int Function(
        Pointer<Utf16>,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<Int32>,
        Pointer<Pointer<Pointer<Utf8>>>,
        Pointer<Uint32>,
      )
    >('WslGetDistributionConfiguration');

final _WslIsDistributionRegistered = _api_ms_win_wsl_api_l1_1_0
    .lookupFunction<
      Int32 Function(Pointer<Utf16>),
      int Function(Pointer<Utf16>)
    >('WslIsDistributionRegistered');

final _WslLaunch = _api_ms_win_wsl_api_l1_1_0
    .lookupFunction<
      Int32 Function(
        Pointer<Utf16>,
        Pointer<Utf16>,
        Int32,
        Pointer,
        Pointer,
        Pointer,
        Pointer<Pointer>,
      ),
      int Function(
        Pointer<Utf16>,
        Pointer<Utf16>,
        int,
        Pointer,
        Pointer,
        Pointer,
        Pointer<Pointer>,
      )
    >('WslLaunch');

final _WslLaunchInteractive = _api_ms_win_wsl_api_l1_1_0
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Pointer<Utf16>, Int32, Pointer<Uint32>),
      int Function(Pointer<Utf16>, Pointer<Utf16>, int, Pointer<Uint32>)
    >('WslLaunchInteractive');

final _WslRegisterDistribution = _api_ms_win_wsl_api_l1_1_0
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Pointer<Utf16>),
      int Function(Pointer<Utf16>, Pointer<Utf16>)
    >('WslRegisterDistribution');

final _WslUnregisterDistribution = _api_ms_win_wsl_api_l1_1_0
    .lookupFunction<
      Int32 Function(Pointer<Utf16>),
      int Function(Pointer<Utf16>)
    >('WslUnregisterDistribution');
