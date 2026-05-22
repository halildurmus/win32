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
  group('api-ms-win-service-core-l1-1-3.dll', () {
    test(
      'GetServiceRegistryStateKey can be instantiated',
      skip: 19041 > windowsBuildNumber,
      () {
        check(_GetServiceRegistryStateKey).isA<Function>();
      },
    );
  });
}

final _api_ms_win_service_core_l1_1_3 = DynamicLibrary.open(
  'api-ms-win-service-core-l1-1-3.dll',
);

final _GetServiceRegistryStateKey = _api_ms_win_service_core_l1_1_3
    .lookupFunction<
      Uint32 Function(Pointer, Int32, Uint32, Pointer<Pointer>),
      int Function(Pointer, int, int, Pointer<Pointer>)
    >('GetServiceRegistryStateKey');
