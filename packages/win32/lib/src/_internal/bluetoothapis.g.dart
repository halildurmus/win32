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
@Native<BOOL Function(HBLUETOOTH_DEVICE_FIND)>()
external int BluetoothFindDeviceClose_Wrapper(int hFind);

@internal
@Native<
  HBLUETOOTH_DEVICE_FIND Function(
    Pointer<BLUETOOTH_DEVICE_SEARCH_PARAMS>,
    Pointer<BLUETOOTH_DEVICE_INFO>,
  )
>()
external int BluetoothFindFirstDevice_Wrapper(
  Pointer<BLUETOOTH_DEVICE_SEARCH_PARAMS> pbtsp,
  Pointer<BLUETOOTH_DEVICE_INFO> pbtdi,
);

@internal
@Native<
  HBLUETOOTH_RADIO_FIND Function(
    Pointer<BLUETOOTH_FIND_RADIO_PARAMS>,
    Pointer<HANDLE>,
  )
>()
external int BluetoothFindFirstRadio_Wrapper(
  Pointer<BLUETOOTH_FIND_RADIO_PARAMS> pbtfrp,
  Pointer<HANDLE> phRadio,
);

@internal
@Native<BOOL Function(HBLUETOOTH_DEVICE_FIND, Pointer<BLUETOOTH_DEVICE_INFO>)>()
external int BluetoothFindNextDevice_Wrapper(
  int hFind,
  Pointer<BLUETOOTH_DEVICE_INFO> pbtdi,
);

@internal
@Native<BOOL Function(HBLUETOOTH_RADIO_FIND, Pointer<HANDLE>)>()
external int BluetoothFindNextRadio_Wrapper(int hFind, Pointer<HANDLE> phRadio);

@internal
@Native<BOOL Function(HBLUETOOTH_RADIO_FIND)>()
external int BluetoothFindRadioClose_Wrapper(int hFind);

@internal
@Native<Uint32 Function(HANDLE, Pointer<BLUETOOTH_RADIO_INFO>)>()
external int BluetoothGetRadioInfo_Wrapper(
  int hRadio,
  Pointer<BLUETOOTH_RADIO_INFO> pRadioInfo,
);

@internal
@Native<
  BOOL Function(
    Pointer<Uint8>,
    Uint32,
    Pointer<NativeFunction<PFN_BLUETOOTH_ENUM_ATTRIBUTES_CALLBACK>>,
    Pointer,
  )
>()
external int BluetoothSdpEnumAttributes_Wrapper(
  Pointer<Uint8> pSDPStream,
  int cbStreamSize,
  Pointer<NativeFunction<PFN_BLUETOOTH_ENUM_ATTRIBUTES_CALLBACK>> pfnCallback,
  Pointer pvParam,
);

@internal
@Native<BOOL Function(IntPtr)>()
external int BluetoothUnregisterAuthentication_Wrapper(int hRegHandle);
