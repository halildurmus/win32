// Wrappers for Win32 API functions.
//
// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// ignore_for_file: non_constant_identifier_names, unused_import

@DefaultAsset('package:win32/win32.dart')
library;

import 'dart:ffi';

import 'package:meta/meta.dart';

import '../callbacks.g.dart';
import '../functions.dart';
import '../guid.dart';
import '../pcstr.dart';
import '../pcwstr.dart';
import '../structs.g.dart';
import '../types.dart';

@internal
@Native<BOOL Function(HWND, Pointer<BLUETOOTH_DEVICE_INFO>)>()
external int BluetoothDisplayDeviceProperties_Wrapper(
  int hwndParent,
  Pointer<BLUETOOTH_DEVICE_INFO> pbtdi,
);

@internal
@Native<BOOL Function(Pointer<BLUETOOTH_SELECT_DEVICE_PARAMS>)>()
external int BluetoothSelectDevices_Wrapper(
  Pointer<BLUETOOTH_SELECT_DEVICE_PARAMS> pbtsdp,
);
