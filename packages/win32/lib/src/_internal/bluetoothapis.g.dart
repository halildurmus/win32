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
@Native<NativeWin32Result Function(HBLUETOOTH_DEVICE_FIND)>()
external NativeWin32Result BluetoothFindDeviceClose_Wrapper(int hFind);

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
    Pointer<HANDLE>,
  )
>()
external NativeWin32Result BluetoothFindFirstRadio_Wrapper(
  Pointer<BLUETOOTH_FIND_RADIO_PARAMS> pbtfrp,
  Pointer<HANDLE> phRadio,
);

@internal
@Native<
  NativeWin32Result Function(
    HBLUETOOTH_DEVICE_FIND,
    Pointer<BLUETOOTH_DEVICE_INFO>,
  )
>()
external NativeWin32Result BluetoothFindNextDevice_Wrapper(
  int hFind,
  Pointer<BLUETOOTH_DEVICE_INFO> pbtdi,
);

@internal
@Native<NativeWin32Result Function(HBLUETOOTH_RADIO_FIND, Pointer<HANDLE>)>()
external NativeWin32Result BluetoothFindNextRadio_Wrapper(
  int hFind,
  Pointer<HANDLE> phRadio,
);

@internal
@Native<NativeWin32Result Function(HBLUETOOTH_RADIO_FIND)>()
external NativeWin32Result BluetoothFindRadioClose_Wrapper(int hFind);

@internal
@Native<NativeWin32Result Function(HANDLE, Pointer<BLUETOOTH_RADIO_INFO>)>()
external NativeWin32Result BluetoothGetRadioInfo_Wrapper(
  int hRadio,
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
