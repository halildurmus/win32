// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Maps FFI prototypes onto the corresponding Win32 API function calls.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: specify_nonobvious_property_types, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';

import '../bstr.dart';
import '../com/interface.g.dart';
import '../com/iunknown.g.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../enums.g.dart';
import '../exception.dart';
import '../extensions/pointer.dart';
import '../functions.dart';
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

final _setupapi = DynamicLibrary.open('setupapi.dll');

/// Deletes a device information set and frees all associated memory.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/setupapi/nf-setupapi-setupdidestroydeviceinfolist>.
///
/// {@category setupapi}
Win32Result<bool> SetupDiDestroyDeviceInfoList(HDEVINFO deviceInfoSet) {
  resolveGetLastError();
  final result_ = _SetupDiDestroyDeviceInfoList(deviceInfoSet);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SetupDiDestroyDeviceInfoList = _setupapi
    .lookupFunction<Int32 Function(IntPtr), int Function(int)>(
      'SetupDiDestroyDeviceInfoList',
    );

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
  resolveGetLastError();
  final result_ = _SetupDiEnumDeviceInfo(
    deviceInfoSet,
    memberIndex,
    deviceInfoData,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SetupDiEnumDeviceInfo = _setupapi
    .lookupFunction<
      Int32 Function(IntPtr, Uint32, Pointer<SP_DEVINFO_DATA>),
      int Function(int, int, Pointer<SP_DEVINFO_DATA>)
    >('SetupDiEnumDeviceInfo');

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
  resolveGetLastError();
  final result_ = _SetupDiEnumDeviceInterfaces(
    deviceInfoSet,
    deviceInfoData ?? nullptr,
    interfaceClassGuid,
    memberIndex,
    deviceInterfaceData,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SetupDiEnumDeviceInterfaces = _setupapi
    .lookupFunction<
      Int32 Function(
        IntPtr,
        Pointer<SP_DEVINFO_DATA>,
        Pointer<GUID>,
        Uint32,
        Pointer<SP_DEVICE_INTERFACE_DATA>,
      ),
      int Function(
        int,
        Pointer<SP_DEVINFO_DATA>,
        Pointer<GUID>,
        int,
        Pointer<SP_DEVICE_INTERFACE_DATA>,
      )
    >('SetupDiEnumDeviceInterfaces');

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
  resolveGetLastError();
  final result_ = _SetupDiGetClassDevs(
    classGuid ?? nullptr,
    enumerator ?? nullptr,
    hwndParent ?? nullptr,
    flags,
  );
  return .new(value: .new(result_), error: GetLastError());
}

final _SetupDiGetClassDevs = _setupapi
    .lookupFunction<
      IntPtr Function(Pointer<GUID>, Pointer<Utf16>, Pointer, Uint32),
      int Function(Pointer<GUID>, Pointer<Utf16>, Pointer, int)
    >('SetupDiGetClassDevsW');

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
  resolveGetLastError();
  final result_ = _SetupDiGetDeviceInstanceId(
    deviceInfoSet,
    deviceInfoData,
    deviceInstanceId ?? nullptr,
    deviceInstanceIdSize,
    requiredSize ?? nullptr,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SetupDiGetDeviceInstanceId = _setupapi
    .lookupFunction<
      Int32 Function(
        IntPtr,
        Pointer<SP_DEVINFO_DATA>,
        Pointer<Utf16>,
        Uint32,
        Pointer<Uint32>,
      ),
      int Function(
        int,
        Pointer<SP_DEVINFO_DATA>,
        Pointer<Utf16>,
        int,
        Pointer<Uint32>,
      )
    >('SetupDiGetDeviceInstanceIdW');

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
  resolveGetLastError();
  final result_ = _SetupDiGetDeviceInterfaceDetail(
    deviceInfoSet,
    deviceInterfaceData,
    deviceInterfaceDetailData ?? nullptr,
    deviceInterfaceDetailDataSize,
    requiredSize ?? nullptr,
    deviceInfoData ?? nullptr,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SetupDiGetDeviceInterfaceDetail = _setupapi
    .lookupFunction<
      Int32 Function(
        IntPtr,
        Pointer<SP_DEVICE_INTERFACE_DATA>,
        Pointer<SP_DEVICE_INTERFACE_DETAIL_DATA>,
        Uint32,
        Pointer<Uint32>,
        Pointer<SP_DEVINFO_DATA>,
      ),
      int Function(
        int,
        Pointer<SP_DEVICE_INTERFACE_DATA>,
        Pointer<SP_DEVICE_INTERFACE_DETAIL_DATA>,
        int,
        Pointer<Uint32>,
        Pointer<SP_DEVINFO_DATA>,
      )
    >('SetupDiGetDeviceInterfaceDetailW');

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
  resolveGetLastError();
  final result_ = _SetupDiGetDeviceRegistryProperty(
    deviceInfoSet,
    deviceInfoData,
    property,
    propertyRegDataType ?? nullptr,
    propertyBuffer ?? nullptr,
    propertyBufferSize,
    requiredSize ?? nullptr,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SetupDiGetDeviceRegistryProperty = _setupapi
    .lookupFunction<
      Int32 Function(
        IntPtr,
        Pointer<SP_DEVINFO_DATA>,
        Uint32,
        Pointer<Uint32>,
        Pointer<Uint8>,
        Uint32,
        Pointer<Uint32>,
      ),
      int Function(
        int,
        Pointer<SP_DEVINFO_DATA>,
        int,
        Pointer<Uint32>,
        Pointer<Uint8>,
        int,
        Pointer<Uint32>,
      )
    >('SetupDiGetDeviceRegistryPropertyW');

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
  resolveGetLastError();
  final result_ = _SetupDiOpenDevRegKey(
    deviceInfoSet,
    deviceInfoData,
    scope,
    hwProfile,
    keyType,
    samDesired,
  );
  return .new(value: .new(result_), error: GetLastError());
}

final _SetupDiOpenDevRegKey = _setupapi
    .lookupFunction<
      Pointer Function(
        IntPtr,
        Pointer<SP_DEVINFO_DATA>,
        Uint32,
        Uint32,
        Uint32,
        Uint32,
      ),
      Pointer Function(int, Pointer<SP_DEVINFO_DATA>, int, int, int, int)
    >('SetupDiOpenDevRegKey');
