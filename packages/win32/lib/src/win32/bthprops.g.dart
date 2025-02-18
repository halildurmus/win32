// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, non_constant_identifier_names
// ignore_for_file: constant_identifier_names, camel_case_types

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../callbacks.dart';
import '../combase.dart';
import '../guid.dart';
import '../structs.g.dart';
import '../variant.dart';

final _bthprops = DynamicLibrary.open('bthprops.cpl');

/// The BluetoothAuthenticateDeviceEx function sends an authentication
/// request to a remote Bluetooth device. Additionally, this function allows
/// for out-of-band data to be passed into the function call for the device
/// being authenticated.
///
/// ```c
/// DWORD BluetoothAuthenticateDeviceEx(
///   HWND                        hwndParentIn,
///   HANDLE                      hRadioIn,
///   BLUETOOTH_DEVICE_INFO       *pbtdiInout,
///   PBLUETOOTH_OOB_DATA_INFO    pbtOobData,
///   AUTHENTICATION_REQUIREMENTS authenticationRequirement
/// );
/// ```
/// {@category bthprops}
int BluetoothAuthenticateDeviceEx(
  int hwndParentIn,
  int hRadioIn,
  Pointer<BLUETOOTH_DEVICE_INFO> pbtdiInout,
  Pointer<BLUETOOTH_OOB_DATA_INFO> pbtOobData,
  int authenticationRequirement,
) => _BluetoothAuthenticateDeviceEx(
  hwndParentIn,
  hRadioIn,
  pbtdiInout,
  pbtOobData,
  authenticationRequirement,
);

final _BluetoothAuthenticateDeviceEx = _bthprops.lookupFunction<
  Uint32 Function(
    IntPtr hwndParentIn,
    IntPtr hRadioIn,
    Pointer<BLUETOOTH_DEVICE_INFO> pbtdiInout,
    Pointer<BLUETOOTH_OOB_DATA_INFO> pbtOobData,
    Int32 authenticationRequirement,
  ),
  int Function(
    int hwndParentIn,
    int hRadioIn,
    Pointer<BLUETOOTH_DEVICE_INFO> pbtdiInout,
    Pointer<BLUETOOTH_OOB_DATA_INFO> pbtOobData,
    int authenticationRequirement,
  )
>('BluetoothAuthenticateDeviceEx');

/// The BluetoothDisplayDeviceProperties function opens the Control Panel
/// device information property sheet.
///
/// ```c
/// BOOL BluetoothDisplayDeviceProperties(
///   HWND                  hwndParent,
///   BLUETOOTH_DEVICE_INFO *pbtdi
/// );
/// ```
/// {@category bluetooth}
int BluetoothDisplayDeviceProperties(
  int hwndParent,
  Pointer<BLUETOOTH_DEVICE_INFO> pbtdi,
) => _BluetoothDisplayDeviceProperties(hwndParent, pbtdi);

final _BluetoothDisplayDeviceProperties = _bthprops.lookupFunction<
  Int32 Function(IntPtr hwndParent, Pointer<BLUETOOTH_DEVICE_INFO> pbtdi),
  int Function(int hwndParent, Pointer<BLUETOOTH_DEVICE_INFO> pbtdi)
>('BluetoothDisplayDeviceProperties');

/// The BluetoothSelectDevices function enables Bluetooth device selection.
///
/// ```c
/// BOOL BluetoothSelectDevices(
///   BLUETOOTH_SELECT_DEVICE_PARAMS *pbtsdp
/// );
/// ```
/// {@category bluetooth}
int BluetoothSelectDevices(Pointer<BLUETOOTH_SELECT_DEVICE_PARAMS> pbtsdp) =>
    _BluetoothSelectDevices(pbtsdp);

final _BluetoothSelectDevices = _bthprops.lookupFunction<
  Int32 Function(Pointer<BLUETOOTH_SELECT_DEVICE_PARAMS> pbtsdp),
  int Function(Pointer<BLUETOOTH_SELECT_DEVICE_PARAMS> pbtsdp)
>('BluetoothSelectDevices');

/// The BluetoothSelectDevicesFree function frees resources associated with
/// a previous call to BluetoothSelectDevices.
///
/// ```c
/// BOOL BluetoothSelectDevicesFree(
///   BLUETOOTH_SELECT_DEVICE_PARAMS *pbtsdp
/// );
/// ```
/// {@category bluetooth}
int BluetoothSelectDevicesFree(
  Pointer<BLUETOOTH_SELECT_DEVICE_PARAMS> pbtsdp,
) => _BluetoothSelectDevicesFree(pbtsdp);

final _BluetoothSelectDevicesFree = _bthprops.lookupFunction<
  Int32 Function(Pointer<BLUETOOTH_SELECT_DEVICE_PARAMS> pbtsdp),
  int Function(Pointer<BLUETOOTH_SELECT_DEVICE_PARAMS> pbtsdp)
>('BluetoothSelectDevicesFree');
