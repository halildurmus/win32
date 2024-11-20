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
import 'package:win32/src/_internal/bthprops.g.dart';
import 'package:win32/win32.dart';

import '../../helpers.dart';

void main() {
  group('bthprops.cpl', () {
    test('BluetoothAuthenticateDeviceEx can be instantiated', () {
      check(_BluetoothAuthenticateDeviceEx).isA<Function>();
    });
    test('BluetoothDisplayDeviceProperties can be instantiated', () {
      check(BluetoothDisplayDeviceProperties_Wrapper).isA<Function>();
    });
    test('BluetoothSelectDevices can be instantiated', () {
      check(BluetoothSelectDevices_Wrapper).isA<Function>();
    });
    test('BluetoothSelectDevicesFree can be instantiated', () {
      check(_BluetoothSelectDevicesFree).isA<Function>();
    });
  });
}

@Native<
  Uint32 Function(
    HWND,
    HANDLE,
    Pointer<BLUETOOTH_DEVICE_INFO>,
    Pointer<BLUETOOTH_OOB_DATA_INFO>,
    Int32,
  )
>(symbol: 'BluetoothAuthenticateDeviceEx')
external int _BluetoothAuthenticateDeviceEx(
  int hwndParentIn,
  int hRadioIn,
  Pointer<BLUETOOTH_DEVICE_INFO> pbtdiInout,
  Pointer<BLUETOOTH_OOB_DATA_INFO> pbtOobData,
  int authenticationRequirement,
);

@Native<BOOL Function(Pointer<BLUETOOTH_SELECT_DEVICE_PARAMS>)>(
  symbol: 'BluetoothSelectDevicesFree',
)
external int _BluetoothSelectDevicesFree(
  Pointer<BLUETOOTH_SELECT_DEVICE_PARAMS> pbtsdp,
);
