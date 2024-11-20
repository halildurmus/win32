// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Maps FFI prototypes onto the corresponding Win32 API function calls.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';

import '../_internal/setupapi.g.dart';
import '../_internal/win32.dart';
import '../bstr.dart';
import '../com/interface.g.dart';
import '../com/iunknown.g.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../enums.g.dart';
import '../exception.dart';
import '../extensions/pointer.dart';
import '../guid.dart';
import '../hresult.dart';
import '../hstring.dart';
import '../macros.dart';
import '../ntstatus.dart';
import '../pcstr.dart';
import '../pcwstr.dart';
import '../pstr.dart';
import '../pwstr.dart';
import '../rpc_status.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import '../win32_error.dart';
import '../win32_result.dart';

/// Deletes a device information set and frees all associated memory.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/setupapi/nf-setupapi-setupdidestroydeviceinfolist>.
///
/// {@category setupapi}
Win32Result<bool> SetupDiDestroyDeviceInfoList(HDEVINFO deviceInfoSet) {
  final result_ = SetupDiDestroyDeviceInfoList_Wrapper(deviceInfoSet);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Returns a SP_DEVINFO_DATA structure that specifies a device information
/// element in a device information set.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/setupapi/nf-setupapi-setupdienumdeviceinfo>.
///
/// {@category setupapi}
Win32Result<bool> SetupDiEnumDeviceInfo(
  HDEVINFO deviceInfoSet,
  int memberIndex,
  Pointer<SP_DEVINFO_DATA> deviceInfoData,
) {
  final result_ = SetupDiEnumDeviceInfo_Wrapper(
    deviceInfoSet,
    memberIndex,
    deviceInfoData,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Enumerates the device interfaces that are contained in a device information
/// set.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/setupapi/nf-setupapi-setupdienumdeviceinterfaces>.
///
/// {@category setupapi}
Win32Result<bool> SetupDiEnumDeviceInterfaces(
  HDEVINFO deviceInfoSet,
  Pointer<SP_DEVINFO_DATA>? deviceInfoData,
  Pointer<GUID> interfaceClassGuid,
  int memberIndex,
  Pointer<SP_DEVICE_INTERFACE_DATA> deviceInterfaceData,
) {
  final result_ = SetupDiEnumDeviceInterfaces_Wrapper(
    deviceInfoSet,
    deviceInfoData ?? nullptr,
    interfaceClassGuid,
    memberIndex,
    deviceInterfaceData,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Returns a handle to a device information set that contains requested device
/// information elements for a local computer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/setupapi/nf-setupapi-setupdigetclassdevsw>.
///
/// {@category setupapi}
Win32Result<HDEVINFO> SetupDiGetClassDevs(
  Pointer<GUID>? classGuid,
  PCWSTR? enumerator,
  HWND? hwndParent,
  SETUP_DI_GET_CLASS_DEVS_FLAGS flags,
) {
  final result_ = SetupDiGetClassDevsW_Wrapper(
    classGuid ?? nullptr,
    enumerator ?? nullptr,
    hwndParent ?? nullptr,
    flags,
  );
  return Win32Result(value: HDEVINFO(result_.value.i64), error: result_.error);
}

/// Retrieves the device instance ID that is associated with a device
/// information element.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/setupapi/nf-setupapi-setupdigetdeviceinstanceidw>.
///
/// {@category setupapi}
Win32Result<bool> SetupDiGetDeviceInstanceId(
  HDEVINFO deviceInfoSet,
  Pointer<SP_DEVINFO_DATA> deviceInfoData,
  PWSTR? deviceInstanceId,
  int deviceInstanceIdSize,
  Pointer<Uint32>? requiredSize,
) {
  final result_ = SetupDiGetDeviceInstanceIdW_Wrapper(
    deviceInfoSet,
    deviceInfoData,
    deviceInstanceId ?? nullptr,
    deviceInstanceIdSize,
    requiredSize ?? nullptr,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Returns details about a device interface.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/setupapi/nf-setupapi-setupdigetdeviceinterfacedetailw>.
///
/// {@category setupapi}
Win32Result<bool> SetupDiGetDeviceInterfaceDetail(
  HDEVINFO deviceInfoSet,
  Pointer<SP_DEVICE_INTERFACE_DATA> deviceInterfaceData,
  Pointer<SP_DEVICE_INTERFACE_DETAIL_DATA>? deviceInterfaceDetailData,
  int deviceInterfaceDetailDataSize,
  Pointer<Uint32>? requiredSize,
  Pointer<SP_DEVINFO_DATA>? deviceInfoData,
) {
  final result_ = SetupDiGetDeviceInterfaceDetailW_Wrapper(
    deviceInfoSet,
    deviceInterfaceData,
    deviceInterfaceDetailData ?? nullptr,
    deviceInterfaceDetailDataSize,
    requiredSize ?? nullptr,
    deviceInfoData ?? nullptr,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves a specified Plug and Play device property.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/setupapi/nf-setupapi-setupdigetdeviceregistrypropertyw>.
///
/// {@category setupapi}
Win32Result<bool> SetupDiGetDeviceRegistryProperty(
  HDEVINFO deviceInfoSet,
  Pointer<SP_DEVINFO_DATA> deviceInfoData,
  SETUP_DI_REGISTRY_PROPERTY property,
  Pointer<Uint32>? propertyRegDataType,
  Pointer<Uint8>? propertyBuffer,
  int propertyBufferSize,
  Pointer<Uint32>? requiredSize,
) {
  final result_ = SetupDiGetDeviceRegistryPropertyW_Wrapper(
    deviceInfoSet,
    deviceInfoData,
    property,
    propertyRegDataType ?? nullptr,
    propertyBuffer ?? nullptr,
    propertyBufferSize,
    requiredSize ?? nullptr,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Opens a registry key for device-specific configuration information.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/setupapi/nf-setupapi-setupdiopendevregkey>.
///
/// {@category setupapi}
Win32Result<HKEY> SetupDiOpenDevRegKey(
  HDEVINFO deviceInfoSet,
  Pointer<SP_DEVINFO_DATA> deviceInfoData,
  int scope,
  int hwProfile,
  int keyType,
  int samDesired,
) {
  final result_ = SetupDiOpenDevRegKey_Wrapper(
    deviceInfoSet,
    deviceInfoData,
    scope,
    hwProfile,
    keyType,
    samDesired,
  );
  return Win32Result(value: HKEY(result_.value.ptr), error: result_.error);
}
