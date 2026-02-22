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

@Native<
  Uint32 Function(Pointer, Int32, Pointer<Utf16>, Uint32, Pointer<Uint32>)
>(symbol: 'GetSharedServiceDirectory')
external int _GetSharedServiceDirectory(
  Pointer serviceHandle,
  int directoryType,
  Pointer<Utf16> pathBuffer,
  int pathBufferLength,
  Pointer<Uint32> requiredBufferLength,
);

@Native<Uint32 Function(Pointer, Int32, Uint32, Pointer<Pointer>)>(
  symbol: 'GetSharedServiceRegistryStateKey',
)
external int _GetSharedServiceRegistryStateKey(
  Pointer serviceHandle,
  int stateType,
  int accessMask,
  Pointer<Pointer> serviceStateKey,
);
