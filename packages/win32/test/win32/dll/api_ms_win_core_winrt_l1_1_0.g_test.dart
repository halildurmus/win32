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

final _api_ms_win_core_winrt_l1_1_0 = DynamicLibrary.open(
  'api-ms-win-core-winrt-l1-1-0.dll',
);

final _RoActivateInstance = _api_ms_win_core_winrt_l1_1_0
    .lookupFunction<
      Int32 Function(Pointer, Pointer<VTablePointer>),
      int Function(Pointer, Pointer<VTablePointer>)
    >('RoActivateInstance');

final _RoGetActivationFactory = _api_ms_win_core_winrt_l1_1_0
    .lookupFunction<
      Int32 Function(Pointer, Pointer<GUID>, Pointer<Pointer>),
      int Function(Pointer, Pointer<GUID>, Pointer<Pointer>)
    >('RoGetActivationFactory');

final _RoGetApartmentIdentifier = _api_ms_win_core_winrt_l1_1_0
    .lookupFunction<
      Int32 Function(Pointer<Uint64>),
      int Function(Pointer<Uint64>)
    >('RoGetApartmentIdentifier');

final _RoInitialize = _api_ms_win_core_winrt_l1_1_0
    .lookupFunction<Int32 Function(Int32), int Function(int)>('RoInitialize');

final _RoUninitialize = _api_ms_win_core_winrt_l1_1_0
    .lookupFunction<Void Function(), void Function()>('RoUninitialize');
