// Maps FFI prototypes onto the corresponding Win32 API function calls.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../_internal/setupapi.g.dart';
import '../allocator.dart';
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
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';

/// Deletes a device information set and frees all associated memory.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/setupapi/nf-setupapi-setupdidestroydeviceinfolist>.
///
/// {@category setupapi}
@pragma('vm:prefer-inline')
bool SetupDiDestroyDeviceInfoList(int deviceInfoSet) =>
    SetupDiDestroyDeviceInfoList_Wrapper(deviceInfoSet) != FALSE;

/// Returns a SP_DEVINFO_DATA structure that specifies a device information
/// element in a device information set.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/setupapi/nf-setupapi-setupdienumdeviceinfo>.
///
/// {@category setupapi}
@pragma('vm:prefer-inline')
bool SetupDiEnumDeviceInfo(
  int deviceInfoSet,
  int memberIndex,
  Pointer<SP_DEVINFO_DATA> deviceInfoData,
) =>
    SetupDiEnumDeviceInfo_Wrapper(deviceInfoSet, memberIndex, deviceInfoData) !=
    FALSE;

/// Enumerates the device interfaces that are contained in a device information
/// set.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/setupapi/nf-setupapi-setupdienumdeviceinterfaces>.
///
/// {@category setupapi}
@pragma('vm:prefer-inline')
bool SetupDiEnumDeviceInterfaces(
  int deviceInfoSet,
  Pointer<SP_DEVINFO_DATA>? deviceInfoData,
  Pointer<GUID> interfaceClassGuid,
  int memberIndex,
  Pointer<SP_DEVICE_INTERFACE_DATA> deviceInterfaceData,
) =>
    SetupDiEnumDeviceInterfaces_Wrapper(
      deviceInfoSet,
      deviceInfoData ?? nullptr,
      interfaceClassGuid,
      memberIndex,
      deviceInterfaceData,
    ) !=
    FALSE;

/// Returns a handle to a device information set that contains requested device
/// information elements for a local computer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/setupapi/nf-setupapi-setupdigetclassdevsw>.
///
/// {@category setupapi}
@pragma('vm:prefer-inline')
int SetupDiGetClassDevs(
  Pointer<GUID>? classGuid,
  PCWSTR? enumerator,
  int? hwndParent,
  SETUP_DI_GET_CLASS_DEVS_FLAGS flags,
) => SetupDiGetClassDevsW_Wrapper(
  classGuid ?? nullptr,
  enumerator ?? nullptr,
  hwndParent ?? NULL,
  flags,
);

/// Retrieves the device instance ID that is associated with a device
/// information element.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/setupapi/nf-setupapi-setupdigetdeviceinstanceidw>.
///
/// {@category setupapi}
@pragma('vm:prefer-inline')
bool SetupDiGetDeviceInstanceId(
  int deviceInfoSet,
  Pointer<SP_DEVINFO_DATA> deviceInfoData,
  PWSTR? deviceInstanceId,
  int deviceInstanceIdSize,
  Pointer<Uint32>? requiredSize,
) =>
    SetupDiGetDeviceInstanceIdW_Wrapper(
      deviceInfoSet,
      deviceInfoData,
      deviceInstanceId ?? nullptr,
      deviceInstanceIdSize,
      requiredSize ?? nullptr,
    ) !=
    FALSE;

/// Returns details about a device interface.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/setupapi/nf-setupapi-setupdigetdeviceinterfacedetailw>.
///
/// {@category setupapi}
@pragma('vm:prefer-inline')
bool SetupDiGetDeviceInterfaceDetail(
  int deviceInfoSet,
  Pointer<SP_DEVICE_INTERFACE_DATA> deviceInterfaceData,
  Pointer<SP_DEVICE_INTERFACE_DETAIL_DATA>? deviceInterfaceDetailData,
  int deviceInterfaceDetailDataSize,
  Pointer<Uint32>? requiredSize,
  Pointer<SP_DEVINFO_DATA>? deviceInfoData,
) =>
    SetupDiGetDeviceInterfaceDetailW_Wrapper(
      deviceInfoSet,
      deviceInterfaceData,
      deviceInterfaceDetailData ?? nullptr,
      deviceInterfaceDetailDataSize,
      requiredSize ?? nullptr,
      deviceInfoData ?? nullptr,
    ) !=
    FALSE;

/// Retrieves a specified Plug and Play device property.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/setupapi/nf-setupapi-setupdigetdeviceregistrypropertyw>.
///
/// {@category setupapi}
@pragma('vm:prefer-inline')
bool SetupDiGetDeviceRegistryProperty(
  int deviceInfoSet,
  Pointer<SP_DEVINFO_DATA> deviceInfoData,
  SETUP_DI_REGISTRY_PROPERTY property,
  Pointer<Uint32>? propertyRegDataType,
  Pointer<Uint8>? propertyBuffer,
  int propertyBufferSize,
  Pointer<Uint32>? requiredSize,
) =>
    SetupDiGetDeviceRegistryPropertyW_Wrapper(
      deviceInfoSet,
      deviceInfoData,
      property,
      propertyRegDataType ?? nullptr,
      propertyBuffer ?? nullptr,
      propertyBufferSize,
      requiredSize ?? nullptr,
    ) !=
    FALSE;

/// Opens a registry key for device-specific configuration information.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/setupapi/nf-setupapi-setupdiopendevregkey>.
///
/// {@category setupapi}
@pragma('vm:prefer-inline')
int SetupDiOpenDevRegKey(
  int deviceInfoSet,
  Pointer<SP_DEVINFO_DATA> deviceInfoData,
  int scope,
  int hwProfile,
  int keyType,
  int samDesired,
) => SetupDiOpenDevRegKey_Wrapper(
  deviceInfoSet,
  deviceInfoData,
  scope,
  hwProfile,
  keyType,
  samDesired,
);
