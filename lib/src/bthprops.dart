// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

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
final BluetoothAuthenticateDeviceEx = _bthprops.lookupFunction<
    Uint32 Function(
        IntPtr hwndParentIn,
        IntPtr hRadioIn,
        Pointer<BLUETOOTH_DEVICE_INFO> pbtdiInout,
        IntPtr pbtOobData,
        Int32 authenticationRequirement),
    int Function(
        int hwndParentIn,
        int hRadioIn,
        Pointer<BLUETOOTH_DEVICE_INFO> pbtdiInout,
        int pbtOobData,
        int authenticationRequirement)>('BluetoothAuthenticateDeviceEx');

/// The BluetoothFindDeviceClose function closes an enumeration handle
/// associated with a device query.
///
/// ```c
/// BOOL BluetoothFindDeviceClose(
///   HBLUETOOTH_DEVICE_FIND hFind
/// );
/// ```
/// {@category bthprops}
final BluetoothFindDeviceClose = _bthprops.lookupFunction<
    Int32 Function(IntPtr hFind),
    int Function(int hFind)>('BluetoothFindDeviceClose');

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
final BluetoothFindFirstDevice = _bthprops.lookupFunction<
    Int32 Function(Pointer<BLUETOOTH_DEVICE_SEARCH_PARAMS> pbtsp,
        Pointer<BLUETOOTH_DEVICE_INFO> pbtdi),
    int Function(Pointer<BLUETOOTH_DEVICE_SEARCH_PARAMS> pbtsp,
        Pointer<BLUETOOTH_DEVICE_INFO> pbtdi)>('BluetoothFindFirstDevice');

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
final BluetoothFindFirstRadio = _bthprops.lookupFunction<
    IntPtr Function(
        Pointer<BLUETOOTH_FIND_RADIO_PARAMS> pbtfrp, Pointer<IntPtr> phRadio),
    int Function(Pointer<BLUETOOTH_FIND_RADIO_PARAMS> pbtfrp,
        Pointer<IntPtr> phRadio)>('BluetoothFindFirstRadio');

/// The BluetoothFindNextDevice function finds the next Bluetooth device.
///
/// ```c
/// BOOL BluetoothFindNextDevice(
///   HBLUETOOTH_DEVICE_FIND hFind,
///   BLUETOOTH_DEVICE_INFO  *pbtdi
/// );
/// ```
/// {@category bthprops}
final BluetoothFindNextDevice = _bthprops.lookupFunction<
    Int32 Function(IntPtr hFind, Pointer<BLUETOOTH_DEVICE_INFO> pbtdi),
    int Function(int hFind,
        Pointer<BLUETOOTH_DEVICE_INFO> pbtdi)>('BluetoothFindNextDevice');

/// The BluetoothFindNextRadio function finds the next Bluetooth radio.
///
/// ```c
/// BOOL BluetoothFindNextRadio(
///   HBLUETOOTH_RADIO_FIND hFind,
///   HANDLE                *phRadio
/// );
/// ```
/// {@category bthprops}
final BluetoothFindNextRadio = _bthprops.lookupFunction<
    Int32 Function(IntPtr hFind, Pointer<IntPtr> phRadio),
    int Function(int hFind, Pointer<IntPtr> phRadio)>('BluetoothFindNextRadio');

/// The BluetoothFindRadioClose function closes the enumeration handle
/// associated with finding Bluetooth radios.
///
/// ```c
/// BOOL BluetoothFindRadioClose(
///   HBLUETOOTH_RADIO_FIND hFind
/// );
/// ```
/// {@category bthprops}
final BluetoothFindRadioClose = _bthprops.lookupFunction<
    Int32 Function(IntPtr hFind),
    int Function(int hFind)>('BluetoothFindRadioClose');

/// The BluetoothIsConnectable function determines whether a Bluetooth
/// radio or radios is connectable.
///
/// ```c
/// BOOL BluetoothIsConnectable(
///   HANDLE hRadio
/// );
/// ```
/// {@category bthprops}
final BluetoothIsConnectable = _bthprops.lookupFunction<
    Int32 Function(IntPtr hRadio),
    int Function(int hRadio)>('BluetoothIsConnectable');

/// The BluetoothIsDiscoverable function determines whether a Bluetooth
/// radio or radios is discoverable.
///
/// ```c
/// BOOL BluetoothIsDiscoverable(
///   HANDLE hRadio
/// );
/// ```
/// {@category bthprops}
final BluetoothIsDiscoverable = _bthprops.lookupFunction<
    Int32 Function(IntPtr hRadio),
    int Function(int hRadio)>('BluetoothIsDiscoverable');

/// The BluetoothUpdateDeviceRecord function updates the local computer
/// cache about a Bluetooth device.
///
/// ```c
/// DWORD BluetoothUpdateDeviceRecord(
///   const BLUETOOTH_DEVICE_INFO *pbtdi
/// );
/// ```
/// {@category bthprops}
final BluetoothUpdateDeviceRecord = _bthprops.lookupFunction<
    Uint32 Function(Pointer<BLUETOOTH_DEVICE_INFO> pbtdi),
    int Function(
        Pointer<BLUETOOTH_DEVICE_INFO> pbtdi)>('BluetoothUpdateDeviceRecord');
