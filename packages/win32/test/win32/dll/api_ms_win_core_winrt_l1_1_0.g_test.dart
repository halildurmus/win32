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
  group('api-ms-win-core-winrt-l1-1-0.dll', () {
    test('RoActivateInstance can be instantiated', () {
      check(_RoActivateInstance).isA<Function>();
    });
    test('RoGetActivationFactory can be instantiated', () {
      check(_RoGetActivationFactory).isA<Function>();
    });
    test('RoGetApartmentIdentifier can be instantiated', () {
      check(_RoGetApartmentIdentifier).isA<Function>();
    });
    test('RoInitialize can be instantiated', () {
      check(_RoInitialize).isA<Function>();
    });
    test('RoUninitialize can be instantiated', () {
      check(_RoUninitialize).isA<Function>();
    });
  });
}

@Native<Int32 Function(HSTRING, Pointer<VTablePointer>)>(
  symbol: 'RoActivateInstance',
)
external int _RoActivateInstance(
  int activatableClassId,
  Pointer<VTablePointer> instance,
);

@Native<Int32 Function(HSTRING, Pointer<GUID>, Pointer<Pointer>)>(
  symbol: 'RoGetActivationFactory',
)
external int _RoGetActivationFactory(
  int activatableClassId,
  Pointer<GUID> iid,
  Pointer<Pointer> factory,
);

@Native<Int32 Function(Pointer<Uint64>)>(symbol: 'RoGetApartmentIdentifier')
external int _RoGetApartmentIdentifier(Pointer<Uint64> apartmentIdentifier);

@Native<Int32 Function(Int32)>(symbol: 'RoInitialize')
external int _RoInitialize(int initType);

@Native<Void Function()>(symbol: 'RoUninitialize')
external void _RoUninitialize();
