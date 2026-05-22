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
  group('api-ms-win-service-core-l1-1-5.dll', () {
    test(
      'GetSharedServiceDirectory can be instantiated',
      skip: 22000 > windowsBuildNumber,
      () {
        check(_GetSharedServiceDirectory).isA<Function>();
      },
    );
    test(
      'GetSharedServiceRegistryStateKey can be instantiated',
      skip: 22000 > windowsBuildNumber,
      () {
        check(_GetSharedServiceRegistryStateKey).isA<Function>();
      },
    );
  });
}

final _api_ms_win_service_core_l1_1_5 = DynamicLibrary.open(
  'api-ms-win-service-core-l1-1-5.dll',
);

final _GetSharedServiceDirectory = _api_ms_win_service_core_l1_1_5
    .lookupFunction<
      Uint32 Function(Pointer, Int32, Pointer<Utf16>, Uint32, Pointer<Uint32>),
      int Function(Pointer, int, Pointer<Utf16>, int, Pointer<Uint32>)
    >('GetSharedServiceDirectory');

final _GetSharedServiceRegistryStateKey = _api_ms_win_service_core_l1_1_5
    .lookupFunction<
      Uint32 Function(Pointer, Int32, Uint32, Pointer<Pointer>),
      int Function(Pointer, int, int, Pointer<Pointer>)
    >('GetSharedServiceRegistryStateKey');
