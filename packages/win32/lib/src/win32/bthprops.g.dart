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

final _bthprops = DynamicLibrary.open('bthprops.cpl');

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

final _BluetoothAuthenticateDeviceEx = _bthprops
    .lookupFunction<
      Uint32 Function(
        Pointer,
        Pointer,
        Pointer<BLUETOOTH_DEVICE_INFO>,
        Pointer<BLUETOOTH_OOB_DATA_INFO>,
        Int32,
      ),
      int Function(
        Pointer,
        Pointer,
        Pointer<BLUETOOTH_DEVICE_INFO>,
        Pointer<BLUETOOTH_OOB_DATA_INFO>,
        int,
      )
    >('BluetoothAuthenticateDeviceEx');

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
  resolveGetLastError();
  final result_ = _BluetoothDisplayDeviceProperties(
    hwndParent ?? nullptr,
    pbtdi,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _BluetoothDisplayDeviceProperties = _bthprops
    .lookupFunction<
      Int32 Function(Pointer, Pointer<BLUETOOTH_DEVICE_INFO>),
      int Function(Pointer, Pointer<BLUETOOTH_DEVICE_INFO>)
    >('BluetoothDisplayDeviceProperties');

/// Enables Bluetooth device selection.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nf-bluetoothapis-bluetoothselectdevices>.
///
/// {@category bthprops}
Win32Result<bool> BluetoothSelectDevices(
  Pointer<BLUETOOTH_SELECT_DEVICE_PARAMS> pbtsdp,
) {
  resolveGetLastError();
  final result_ = _BluetoothSelectDevices(pbtsdp);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _BluetoothSelectDevices = _bthprops
    .lookupFunction<
      Int32 Function(Pointer<BLUETOOTH_SELECT_DEVICE_PARAMS>),
      int Function(Pointer<BLUETOOTH_SELECT_DEVICE_PARAMS>)
    >('BluetoothSelectDevices');

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

final _BluetoothSelectDevicesFree = _bthprops
    .lookupFunction<
      Int32 Function(Pointer<BLUETOOTH_SELECT_DEVICE_PARAMS>),
      int Function(Pointer<BLUETOOTH_SELECT_DEVICE_PARAMS>)
    >('BluetoothSelectDevicesFree');
