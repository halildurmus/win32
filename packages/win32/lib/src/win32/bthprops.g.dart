// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Maps FFI prototypes onto the corresponding Win32 API function calls.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';

import '../_internal/bthprops.g.dart';
import '../_internal/win32.dart';
import '../bstr.dart';
import '../com/interface.g.dart';
import '../com/iunknown.g.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../enums.g.dart';
import '../exception.dart';
import '../extensions/pointer.dart';
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

/// Sends an authentication request to a remote Bluetooth device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nf-bluetoothapis-bluetoothauthenticatedeviceex>.
///
/// {@category bthprops}
@pragma('vm:prefer-inline')
int BluetoothAuthenticateDeviceEx(
  HWND? hwndParentIn,
  HANDLE? hRadioIn,
  Pointer<BLUETOOTH_DEVICE_INFO> pbtdiInout,
  Pointer<BLUETOOTH_OOB_DATA_INFO>? pbtOobData,
  AUTHENTICATION_REQUIREMENTS authenticationRequirement,
) => _BluetoothAuthenticateDeviceEx(
  hwndParentIn ?? nullptr,
  hRadioIn ?? nullptr,
  pbtdiInout,
  pbtOobData ?? nullptr,
  authenticationRequirement,
);

@Native<
  Uint32 Function(
    Pointer,
    Pointer,
    Pointer<BLUETOOTH_DEVICE_INFO>,
    Pointer<BLUETOOTH_OOB_DATA_INFO>,
    Int32,
  )
>(symbol: 'BluetoothAuthenticateDeviceEx')
external int _BluetoothAuthenticateDeviceEx(
  Pointer hwndParentIn,
  Pointer hRadioIn,
  Pointer<BLUETOOTH_DEVICE_INFO> pbtdiInout,
  Pointer<BLUETOOTH_OOB_DATA_INFO> pbtOobData,
  int authenticationRequirement,
);

/// Starts Control Panel device information property sheet.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nf-bluetoothapis-bluetoothdisplaydeviceproperties>.
///
/// {@category bthprops}
Win32Result<bool> BluetoothDisplayDeviceProperties(
  HWND? hwndParent,
  Pointer<BLUETOOTH_DEVICE_INFO> pbtdi,
) {
  final result_ = BluetoothDisplayDeviceProperties_Wrapper(
    hwndParent ?? nullptr,
    pbtdi,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Enables Bluetooth device selection.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nf-bluetoothapis-bluetoothselectdevices>.
///
/// {@category bthprops}
Win32Result<bool> BluetoothSelectDevices(
  Pointer<BLUETOOTH_SELECT_DEVICE_PARAMS> pbtsdp,
) {
  final result_ = BluetoothSelectDevices_Wrapper(pbtsdp);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Frees resources associated with a previous call to BluetoothSelectDevices.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nf-bluetoothapis-bluetoothselectdevicesfree>.
///
/// {@category bthprops}
@pragma('vm:prefer-inline')
bool BluetoothSelectDevicesFree(
  Pointer<BLUETOOTH_SELECT_DEVICE_PARAMS> pbtsdp,
) => _BluetoothSelectDevicesFree(pbtsdp) != FALSE;

@Native<Int32 Function(Pointer<BLUETOOTH_SELECT_DEVICE_PARAMS>)>(
  symbol: 'BluetoothSelectDevicesFree',
)
external int _BluetoothSelectDevicesFree(
  Pointer<BLUETOOTH_SELECT_DEVICE_PARAMS> pbtsdp,
);
