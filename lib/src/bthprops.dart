// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'callbacks.dart';
import 'com/combase.dart';
import 'structs.dart';

final _bthprops = DynamicLibrary.open('bthprops.cpl');

/// The BluetoothAuthenticateDeviceEx function sends an authentication
/// request to a remote Bluetooth device. Additionally, this function
/// allows for out-of-band data to be passed into the function call for the
/// device being authenticated.
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
    int authenticationRequirement) {
  final _BluetoothAuthenticateDeviceEx = _bthprops.lookupFunction<
      Uint32 Function(
          IntPtr hwndParentIn,
          IntPtr hRadioIn,
          Pointer<BLUETOOTH_DEVICE_INFO> pbtdiInout,
          Pointer<BLUETOOTH_OOB_DATA_INFO> pbtOobData,
          Int32 authenticationRequirement),
      int Function(
          int hwndParentIn,
          int hRadioIn,
          Pointer<BLUETOOTH_DEVICE_INFO> pbtdiInout,
          Pointer<BLUETOOTH_OOB_DATA_INFO> pbtOobData,
          int authenticationRequirement)>('BluetoothAuthenticateDeviceEx');
  return _BluetoothAuthenticateDeviceEx(hwndParentIn, hRadioIn, pbtdiInout,
      pbtOobData, authenticationRequirement);
}

/// The BluetoothFindDeviceClose function closes an enumeration handle
/// associated with a device query.
///
/// ```c
/// BOOL BluetoothFindDeviceClose(
///   HBLUETOOTH_DEVICE_FIND hFind
/// );
/// ```
/// {@category bthprops}
int BluetoothFindDeviceClose(int hFind) {
  final _BluetoothFindDeviceClose = _bthprops.lookupFunction<
      Int32 Function(IntPtr hFind),
      int Function(int hFind)>('BluetoothFindDeviceClose');
  return _BluetoothFindDeviceClose(hFind);
}

/// The BluetoothFindFirstDevice function begins the enumeration Bluetooth
/// devices.
///
/// ```c
/// HBLUETOOTH_DEVICE_FIND BluetoothFindFirstDevice(
///   const BLUETOOTH_DEVICE_SEARCH_PARAMS *pbtsp,
///   BLUETOOTH_DEVICE_INFO                *pbtdi
/// );
/// ```
/// {@category bthprops}
int BluetoothFindFirstDevice(Pointer<BLUETOOTH_DEVICE_SEARCH_PARAMS> pbtsp,
    Pointer<BLUETOOTH_DEVICE_INFO> pbtdi) {
  final _BluetoothFindFirstDevice = _bthprops.lookupFunction<
      IntPtr Function(Pointer<BLUETOOTH_DEVICE_SEARCH_PARAMS> pbtsp,
          Pointer<BLUETOOTH_DEVICE_INFO> pbtdi),
      int Function(Pointer<BLUETOOTH_DEVICE_SEARCH_PARAMS> pbtsp,
          Pointer<BLUETOOTH_DEVICE_INFO> pbtdi)>('BluetoothFindFirstDevice');
  return _BluetoothFindFirstDevice(pbtsp, pbtdi);
}

/// The BluetoothFindFirstRadio function begins the enumeration of local
/// Bluetooth radios.
///
/// ```c
/// HBLUETOOTH_RADIO_FIND BluetoothFindFirstRadio(
///   const BLUETOOTH_FIND_RADIO_PARAMS *pbtfrp,
///   HANDLE                            *phRadio
/// );
/// ```
/// {@category bthprops}
int BluetoothFindFirstRadio(
    Pointer<BLUETOOTH_FIND_RADIO_PARAMS> pbtfrp, Pointer<IntPtr> phRadio) {
  final _BluetoothFindFirstRadio = _bthprops.lookupFunction<
      IntPtr Function(
          Pointer<BLUETOOTH_FIND_RADIO_PARAMS> pbtfrp, Pointer<IntPtr> phRadio),
      int Function(Pointer<BLUETOOTH_FIND_RADIO_PARAMS> pbtfrp,
          Pointer<IntPtr> phRadio)>('BluetoothFindFirstRadio');
  return _BluetoothFindFirstRadio(pbtfrp, phRadio);
}

/// The BluetoothFindNextDevice function finds the next Bluetooth device.
///
/// ```c
/// BOOL BluetoothFindNextDevice(
///   HBLUETOOTH_DEVICE_FIND hFind,
///   BLUETOOTH_DEVICE_INFO  *pbtdi
/// );
/// ```
/// {@category bthprops}
int BluetoothFindNextDevice(int hFind, Pointer<BLUETOOTH_DEVICE_INFO> pbtdi) {
  final _BluetoothFindNextDevice = _bthprops.lookupFunction<
      Int32 Function(IntPtr hFind, Pointer<BLUETOOTH_DEVICE_INFO> pbtdi),
      int Function(int hFind,
          Pointer<BLUETOOTH_DEVICE_INFO> pbtdi)>('BluetoothFindNextDevice');
  return _BluetoothFindNextDevice(hFind, pbtdi);
}

/// The BluetoothFindNextRadio function finds the next Bluetooth radio.
///
/// ```c
/// BOOL BluetoothFindNextRadio(
///   HBLUETOOTH_RADIO_FIND hFind,
///   HANDLE                *phRadio
/// );
/// ```
/// {@category bthprops}
int BluetoothFindNextRadio(int hFind, Pointer<IntPtr> phRadio) {
  final _BluetoothFindNextRadio = _bthprops.lookupFunction<
      Int32 Function(IntPtr hFind, Pointer<IntPtr> phRadio),
      int Function(
          int hFind, Pointer<IntPtr> phRadio)>('BluetoothFindNextRadio');
  return _BluetoothFindNextRadio(hFind, phRadio);
}

/// The BluetoothFindRadioClose function closes the enumeration handle
/// associated with finding Bluetooth radios.
///
/// ```c
/// BOOL BluetoothFindRadioClose(
///   HBLUETOOTH_RADIO_FIND hFind
/// );
/// ```
/// {@category bthprops}
int BluetoothFindRadioClose(int hFind) {
  final _BluetoothFindRadioClose = _bthprops.lookupFunction<
      Int32 Function(IntPtr hFind),
      int Function(int hFind)>('BluetoothFindRadioClose');
  return _BluetoothFindRadioClose(hFind);
}

/// The BluetoothIsConnectable function determines whether a Bluetooth
/// radio or radios is connectable.
///
/// ```c
/// BOOL BluetoothIsConnectable(
///   HANDLE hRadio
/// );
/// ```
/// {@category bthprops}
int BluetoothIsConnectable(int hRadio) {
  final _BluetoothIsConnectable = _bthprops.lookupFunction<
      Int32 Function(IntPtr hRadio),
      int Function(int hRadio)>('BluetoothIsConnectable');
  return _BluetoothIsConnectable(hRadio);
}

/// The BluetoothIsDiscoverable function determines whether a Bluetooth
/// radio or radios is discoverable.
///
/// ```c
/// BOOL BluetoothIsDiscoverable(
///   HANDLE hRadio
/// );
/// ```
/// {@category bthprops}
int BluetoothIsDiscoverable(int hRadio) {
  final _BluetoothIsDiscoverable = _bthprops.lookupFunction<
      Int32 Function(IntPtr hRadio),
      int Function(int hRadio)>('BluetoothIsDiscoverable');
  return _BluetoothIsDiscoverable(hRadio);
}

/// The BluetoothUpdateDeviceRecord function updates the local computer
/// cache about a Bluetooth device.
///
/// ```c
/// DWORD BluetoothUpdateDeviceRecord(
///   const BLUETOOTH_DEVICE_INFO *pbtdi
/// );
/// ```
/// {@category bthprops}
int BluetoothUpdateDeviceRecord(Pointer<BLUETOOTH_DEVICE_INFO> pbtdi) {
  final _BluetoothUpdateDeviceRecord = _bthprops.lookupFunction<
      Uint32 Function(Pointer<BLUETOOTH_DEVICE_INFO> pbtdi),
      int Function(
          Pointer<BLUETOOTH_DEVICE_INFO> pbtdi)>('BluetoothUpdateDeviceRecord');
  return _BluetoothUpdateDeviceRecord(pbtdi);
}
