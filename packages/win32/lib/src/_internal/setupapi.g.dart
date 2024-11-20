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
@Native<NativeWin32Result Function(IntPtr)>()
external NativeWin32Result SetupDiDestroyDeviceInfoList_Wrapper(
  int deviceInfoSet,
);

@internal
@Native<NativeWin32Result Function(IntPtr, Uint32, Pointer<SP_DEVINFO_DATA>)>()
external NativeWin32Result SetupDiEnumDeviceInfo_Wrapper(
  int deviceInfoSet,
  int memberIndex,
  Pointer<SP_DEVINFO_DATA> deviceInfoData,
);

@internal
@Native<
  NativeWin32Result Function(
    IntPtr,
    Pointer<SP_DEVINFO_DATA>,
    Pointer<GUID>,
    Uint32,
    Pointer<SP_DEVICE_INTERFACE_DATA>,
  )
>()
external NativeWin32Result SetupDiEnumDeviceInterfaces_Wrapper(
  int deviceInfoSet,
  Pointer<SP_DEVINFO_DATA> deviceInfoData,
  Pointer<GUID> interfaceClassGuid,
  int memberIndex,
  Pointer<SP_DEVICE_INTERFACE_DATA> deviceInterfaceData,
);

@internal
@Native<
  NativeWin32Result Function(Pointer<GUID>, Pointer<Utf16>, Pointer, Uint32)
>()
external NativeWin32Result SetupDiGetClassDevsW_Wrapper(
  Pointer<GUID> classGuid,
  Pointer<Utf16> enumerator,
  Pointer hwndParent,
  int flags,
);

@internal
@Native<
  NativeWin32Result Function(
    IntPtr,
    Pointer<SP_DEVINFO_DATA>,
    Pointer<Utf16>,
    Uint32,
    Pointer<Uint32>,
  )
>()
external NativeWin32Result SetupDiGetDeviceInstanceIdW_Wrapper(
  int deviceInfoSet,
  Pointer<SP_DEVINFO_DATA> deviceInfoData,
  Pointer<Utf16> deviceInstanceId,
  int deviceInstanceIdSize,
  Pointer<Uint32> requiredSize,
);

@internal
@Native<
  NativeWin32Result Function(
    IntPtr,
    Pointer<SP_DEVICE_INTERFACE_DATA>,
    Pointer<SP_DEVICE_INTERFACE_DETAIL_DATA>,
    Uint32,
    Pointer<Uint32>,
    Pointer<SP_DEVINFO_DATA>,
  )
>()
external NativeWin32Result SetupDiGetDeviceInterfaceDetailW_Wrapper(
  int deviceInfoSet,
  Pointer<SP_DEVICE_INTERFACE_DATA> deviceInterfaceData,
  Pointer<SP_DEVICE_INTERFACE_DETAIL_DATA> deviceInterfaceDetailData,
  int deviceInterfaceDetailDataSize,
  Pointer<Uint32> requiredSize,
  Pointer<SP_DEVINFO_DATA> deviceInfoData,
);

@internal
@Native<
  NativeWin32Result Function(
    IntPtr,
    Pointer<SP_DEVINFO_DATA>,
    Uint32,
    Pointer<Uint32>,
    Pointer<Uint8>,
    Uint32,
    Pointer<Uint32>,
  )
>()
external NativeWin32Result SetupDiGetDeviceRegistryPropertyW_Wrapper(
  int deviceInfoSet,
  Pointer<SP_DEVINFO_DATA> deviceInfoData,
  int property,
  Pointer<Uint32> propertyRegDataType,
  Pointer<Uint8> propertyBuffer,
  int propertyBufferSize,
  Pointer<Uint32> requiredSize,
);

@internal
@Native<
  NativeWin32Result Function(
    IntPtr,
    Pointer<SP_DEVINFO_DATA>,
    Uint32,
    Uint32,
    Uint32,
    Uint32,
  )
>()
external NativeWin32Result SetupDiOpenDevRegKey_Wrapper(
  int deviceInfoSet,
  Pointer<SP_DEVINFO_DATA> deviceInfoData,
  int scope,
  int hwProfile,
  int keyType,
  int samDesired,
);
