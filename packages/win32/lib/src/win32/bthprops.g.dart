// Maps FFI prototypes onto the corresponding Win32 API function calls.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../_internal/bthprops.g.dart';
import '../allocator.dart';
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
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';

/// Sends an authentication request to a remote Bluetooth device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nf-bluetoothapis-bluetoothauthenticatedeviceex>.
///
/// {@category bthprops}
@pragma('vm:prefer-inline')
int BluetoothAuthenticateDeviceEx(
  int? hwndParentIn,
  int? hRadioIn,
  Pointer<BLUETOOTH_DEVICE_INFO> pbtdiInout,
  Pointer<BLUETOOTH_OOB_DATA_INFO>? pbtOobData,
  AUTHENTICATION_REQUIREMENTS authenticationRequirement,
) => _BluetoothAuthenticateDeviceEx(
  hwndParentIn ?? NULL,
  hRadioIn ?? NULL,
  pbtdiInout,
  pbtOobData ?? nullptr,
  authenticationRequirement,
);

@Native<
  Uint32 Function(
    HWND,
    HANDLE,
    Pointer<BLUETOOTH_DEVICE_INFO>,
    Pointer<BLUETOOTH_OOB_DATA_INFO>,
    Int32,
  )
>(symbol: 'BluetoothAuthenticateDeviceEx')
external int _BluetoothAuthenticateDeviceEx(
  int hwndParentIn,
  int hRadioIn,
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
@pragma('vm:prefer-inline')
bool BluetoothDisplayDeviceProperties(
  int? hwndParent,
  Pointer<BLUETOOTH_DEVICE_INFO> pbtdi,
) =>
    BluetoothDisplayDeviceProperties_Wrapper(hwndParent ?? NULL, pbtdi) !=
    FALSE;

/// Enables Bluetooth device selection.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nf-bluetoothapis-bluetoothselectdevices>.
///
/// {@category bthprops}
@pragma('vm:prefer-inline')
bool BluetoothSelectDevices(Pointer<BLUETOOTH_SELECT_DEVICE_PARAMS> pbtsdp) =>
    BluetoothSelectDevices_Wrapper(pbtsdp) != FALSE;

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

@Native<BOOL Function(Pointer<BLUETOOTH_SELECT_DEVICE_PARAMS>)>(
  symbol: 'BluetoothSelectDevicesFree',
)
external int _BluetoothSelectDevicesFree(
  Pointer<BLUETOOTH_SELECT_DEVICE_PARAMS> pbtsdp,
);
