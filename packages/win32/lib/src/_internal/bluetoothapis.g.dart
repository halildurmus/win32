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
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result BluetoothFindDeviceClose_Wrapper(Pointer hFind);

@internal
@Native<
  NativeWin32Result Function(
    Pointer<BLUETOOTH_DEVICE_SEARCH_PARAMS>,
    Pointer<BLUETOOTH_DEVICE_INFO>,
  )
>()
external NativeWin32Result BluetoothFindFirstDevice_Wrapper(
  Pointer<BLUETOOTH_DEVICE_SEARCH_PARAMS> pbtsp,
  Pointer<BLUETOOTH_DEVICE_INFO> pbtdi,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer<BLUETOOTH_FIND_RADIO_PARAMS>,
    Pointer<Pointer>,
  )
>()
external NativeWin32Result BluetoothFindFirstRadio_Wrapper(
  Pointer<BLUETOOTH_FIND_RADIO_PARAMS> pbtfrp,
  Pointer<Pointer> phRadio,
);

@internal
@Native<NativeWin32Result Function(Pointer, Pointer<BLUETOOTH_DEVICE_INFO>)>()
external NativeWin32Result BluetoothFindNextDevice_Wrapper(
  Pointer hFind,
  Pointer<BLUETOOTH_DEVICE_INFO> pbtdi,
);

@internal
@Native<NativeWin32Result Function(Pointer, Pointer<Pointer>)>()
external NativeWin32Result BluetoothFindNextRadio_Wrapper(
  Pointer hFind,
  Pointer<Pointer> phRadio,
);

@internal
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result BluetoothFindRadioClose_Wrapper(Pointer hFind);

@internal
@Native<NativeWin32Result Function(Pointer, Pointer<BLUETOOTH_RADIO_INFO>)>()
external NativeWin32Result BluetoothGetRadioInfo_Wrapper(
  Pointer hRadio,
  Pointer<BLUETOOTH_RADIO_INFO> pRadioInfo,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer<Uint8>,
    Uint32,
    Pointer<NativeFunction<PFN_BLUETOOTH_ENUM_ATTRIBUTES_CALLBACK>>,
    Pointer,
  )
>()
external NativeWin32Result BluetoothSdpEnumAttributes_Wrapper(
  Pointer<Uint8> pSDPStream,
  int cbStreamSize,
  Pointer<NativeFunction<PFN_BLUETOOTH_ENUM_ATTRIBUTES_CALLBACK>> pfnCallback,
  Pointer pvParam,
);

@internal
@Native<NativeWin32Result Function(IntPtr)>()
external NativeWin32Result BluetoothUnregisterAuthentication_Wrapper(
  int hRegHandle,
);
