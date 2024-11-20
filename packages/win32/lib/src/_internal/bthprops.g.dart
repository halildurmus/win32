// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Wrappers for Win32 API functions that wrap the native APIs and preserve the
// result of GetLastError(), making it easier to debug issues and handle errors
// reliably.
//
// ignore_for_file: non_constant_identifier_names, unused_import

@DefaultAsset('package:win32/win32.dart')
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';

import '../callbacks.g.dart';
import '../functions.dart';
import '../guid.dart';
import '../pcstr.dart';
import '../pcwstr.dart';
import '../structs.g.dart';
import '../types.dart';
import 'win32.dart' show NativeWin32Result;

@internal
@Native<NativeWin32Result Function(Pointer, Pointer<BLUETOOTH_DEVICE_INFO>)>()
external NativeWin32Result BluetoothDisplayDeviceProperties_Wrapper(
  Pointer hwndParent,
  Pointer<BLUETOOTH_DEVICE_INFO> pbtdi,
);

@internal
@Native<NativeWin32Result Function(Pointer<BLUETOOTH_SELECT_DEVICE_PARAMS>)>()
external NativeWin32Result BluetoothSelectDevices_Wrapper(
  Pointer<BLUETOOTH_SELECT_DEVICE_PARAMS> pbtsdp,
);
