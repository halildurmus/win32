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

@Native<Uint32 Function(SERVICE_STATUS_HANDLE, Int32, Uint32, Pointer<HKEY>)>(
  symbol: 'GetServiceRegistryStateKey',
)
external int _GetServiceRegistryStateKey(
  int serviceStatusHandle,
  int stateType,
  int accessMask,
  Pointer<HKEY> serviceStateKey,
);
