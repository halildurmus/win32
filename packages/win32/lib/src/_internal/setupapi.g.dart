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
@Native<BOOL Function(HDEVINFO)>()
external int SetupDiDestroyDeviceInfoList_Wrapper(int deviceInfoSet);

@internal
@Native<BOOL Function(HDEVINFO, Uint32, Pointer<SP_DEVINFO_DATA>)>()
external int SetupDiEnumDeviceInfo_Wrapper(
  int deviceInfoSet,
  int memberIndex,
  Pointer<SP_DEVINFO_DATA> deviceInfoData,
);

@internal
@Native<
  BOOL Function(
    HDEVINFO,
    Pointer<SP_DEVINFO_DATA>,
    Pointer<GUID>,
    Uint32,
    Pointer<SP_DEVICE_INTERFACE_DATA>,
  )
>()
external int SetupDiEnumDeviceInterfaces_Wrapper(
  int deviceInfoSet,
  Pointer<SP_DEVINFO_DATA> deviceInfoData,
  Pointer<GUID> interfaceClassGuid,
  int memberIndex,
  Pointer<SP_DEVICE_INTERFACE_DATA> deviceInterfaceData,
);

@internal
@Native<HDEVINFO Function(Pointer<GUID>, PCWSTR, HWND, Uint32)>()
external int SetupDiGetClassDevsW_Wrapper(
  Pointer<GUID> classGuid,
  PCWSTR enumerator,
  int hwndParent,
  int flags,
);

@internal
@Native<
  BOOL Function(
    HDEVINFO,
    Pointer<SP_DEVINFO_DATA>,
    PWSTR,
    Uint32,
    Pointer<Uint32>,
  )
>()
external int SetupDiGetDeviceInstanceIdW_Wrapper(
  int deviceInfoSet,
  Pointer<SP_DEVINFO_DATA> deviceInfoData,
  PWSTR deviceInstanceId,
  int deviceInstanceIdSize,
  Pointer<Uint32> requiredSize,
);

@internal
@Native<
  BOOL Function(
    HDEVINFO,
    Pointer<SP_DEVICE_INTERFACE_DATA>,
    Pointer<SP_DEVICE_INTERFACE_DETAIL_DATA>,
    Uint32,
    Pointer<Uint32>,
    Pointer<SP_DEVINFO_DATA>,
  )
>()
external int SetupDiGetDeviceInterfaceDetailW_Wrapper(
  int deviceInfoSet,
  Pointer<SP_DEVICE_INTERFACE_DATA> deviceInterfaceData,
  Pointer<SP_DEVICE_INTERFACE_DETAIL_DATA> deviceInterfaceDetailData,
  int deviceInterfaceDetailDataSize,
  Pointer<Uint32> requiredSize,
  Pointer<SP_DEVINFO_DATA> deviceInfoData,
);

@internal
@Native<
  BOOL Function(
    HDEVINFO,
    Pointer<SP_DEVINFO_DATA>,
    Uint32,
    Pointer<Uint32>,
    Pointer<Uint8>,
    Uint32,
    Pointer<Uint32>,
  )
>()
external int SetupDiGetDeviceRegistryPropertyW_Wrapper(
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
  HKEY Function(
    HDEVINFO,
    Pointer<SP_DEVINFO_DATA>,
    Uint32,
    Uint32,
    Uint32,
    Uint32,
  )
>()
external int SetupDiOpenDevRegKey_Wrapper(
  int deviceInfoSet,
  Pointer<SP_DEVINFO_DATA> deviceInfoData,
  int scope,
  int hwProfile,
  int keyType,
  int samDesired,
);
