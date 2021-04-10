// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'callbacks.dart';
import 'combase.dart';
import 'structs.dart';
import 'structs.g.dart';

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
          Uint32 authenticationRequirement),
      int Function(
          int hwndParentIn,
          int hRadioIn,
          Pointer<BLUETOOTH_DEVICE_INFO> pbtdiInout,
          Pointer<BLUETOOTH_OOB_DATA_INFO> pbtOobData,
          int authenticationRequirement)>('BluetoothAuthenticateDeviceEx');
  return _BluetoothAuthenticateDeviceEx(hwndParentIn, hRadioIn, pbtdiInout,
      pbtOobData, authenticationRequirement);
}

/// The BluetoothDisplayDeviceProperties function opens the Control Panel
/// device information property sheet.
///
/// ```c
/// BOOL BluetoothDisplayDeviceProperties(
///   HWND                  hwndParent,
///   BLUETOOTH_DEVICE_INFO *pbtdi
/// );
/// ```
/// {@category bthprops}
int BluetoothDisplayDeviceProperties(
    int hwndParent, Pointer<BLUETOOTH_DEVICE_INFO> pbtdi) {
  final _BluetoothDisplayDeviceProperties = _bthprops.lookupFunction<
      Int32 Function(IntPtr hwndParent, Pointer<BLUETOOTH_DEVICE_INFO> pbtdi),
      int Function(
          int hwndParent,
          Pointer<BLUETOOTH_DEVICE_INFO>
              pbtdi)>('BluetoothDisplayDeviceProperties');
  return _BluetoothDisplayDeviceProperties(hwndParent, pbtdi);
}

/// The BluetoothEnableDiscovery function changes the discovery state of a
/// local Bluetooth radio or radios.
///
/// ```c
/// BOOL BluetoothEnableDiscovery(
///   HANDLE hRadio,
///   BOOL   fEnabled
/// );
/// ```
/// {@category bthprops}
int BluetoothEnableDiscovery(int hRadio, int fEnabled) {
  final _BluetoothEnableDiscovery = _bthprops.lookupFunction<
      Int32 Function(IntPtr hRadio, Int32 fEnabled),
      int Function(int hRadio, int fEnabled)>('BluetoothEnableDiscovery');
  return _BluetoothEnableDiscovery(hRadio, fEnabled);
}

/// The BluetoothEnableIncomingConnections function modifies whether a
/// local Bluetooth radio accepts incoming connections.
///
/// ```c
/// BOOL BluetoothEnableIncomingConnections(
///   HANDLE hRadio,
///   BOOL   fEnabled
/// );
/// ```
/// {@category bthprops}
int BluetoothEnableIncomingConnections(int hRadio, int fEnabled) {
  final _BluetoothEnableIncomingConnections = _bthprops.lookupFunction<
      Int32 Function(IntPtr hRadio, Int32 fEnabled),
      int Function(
          int hRadio, int fEnabled)>('BluetoothEnableIncomingConnections');
  return _BluetoothEnableIncomingConnections(hRadio, fEnabled);
}

/// The BluetoothEnumerateInstalledServices function enumerates the
/// services GUIDs (Globally Unique Identifiers) enabled on a Bluetooth
/// device.
///
/// ```c
/// DWORD BluetoothEnumerateInstalledServices(
///   HANDLE                      hRadio,
///   const BLUETOOTH_DEVICE_INFO *pbtdi,
///   DWORD                       *pcServiceInout,
///   GUID                        *pGuidServices
/// );
/// ```
/// {@category bthprops}
int BluetoothEnumerateInstalledServices(
    int hRadio,
    Pointer<BLUETOOTH_DEVICE_INFO> pbtdi,
    Pointer<Uint32> pcServiceInout,
    Pointer<GUID> pGuidServices) {
  final _BluetoothEnumerateInstalledServices = _bthprops.lookupFunction<
      Uint32 Function(IntPtr hRadio, Pointer<BLUETOOTH_DEVICE_INFO> pbtdi,
          Pointer<Uint32> pcServiceInout, Pointer<GUID> pGuidServices),
      int Function(
          int hRadio,
          Pointer<BLUETOOTH_DEVICE_INFO> pbtdi,
          Pointer<Uint32> pcServiceInout,
          Pointer<GUID> pGuidServices)>('BluetoothEnumerateInstalledServices');
  return _BluetoothEnumerateInstalledServices(
      hRadio, pbtdi, pcServiceInout, pGuidServices);
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

/// The BluetoothGetRadioInfo function obtains information about a
/// Bluetooth radio.
///
/// ```c
/// DWORD BluetoothGetRadioInfo(
///   HANDLE                hRadio,
///   PBLUETOOTH_RADIO_INFO pRadioInfo
/// );
/// ```
/// {@category bthprops}
int BluetoothGetRadioInfo(
    int hRadio, Pointer<BLUETOOTH_RADIO_INFO> pRadioInfo) {
  final _BluetoothGetRadioInfo = _bthprops.lookupFunction<
      Uint32 Function(IntPtr hRadio, Pointer<BLUETOOTH_RADIO_INFO> pRadioInfo),
      int Function(int hRadio,
          Pointer<BLUETOOTH_RADIO_INFO> pRadioInfo)>('BluetoothGetRadioInfo');
  return _BluetoothGetRadioInfo(hRadio, pRadioInfo);
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

/// The BluetoothIsVersionAvailable function indicates if the installed
/// Bluetooth binary set supports the requested version.
///
/// ```c
/// BOOL BluetoothIsVersionAvailable(
///   UCHAR MajorVersion,
///   UCHAR MinorVersion
/// );
/// ```
/// {@category bthprops}
int BluetoothIsVersionAvailable(int MajorVersion, int MinorVersion) {
  final _BluetoothIsVersionAvailable = _bthprops.lookupFunction<
      Int32 Function(Uint8 MajorVersion, Uint8 MinorVersion),
      int Function(
          int MajorVersion, int MinorVersion)>('BluetoothIsVersionAvailable');
  return _BluetoothIsVersionAvailable(MajorVersion, MinorVersion);
}

/// The BluetoothRegisterForAuthenticationEx function registers an
/// application for a pin request, numeric comparison and callback
/// function.
///
/// ```c
/// DWORD BluetoothRegisterForAuthenticationEx(
///   const BLUETOOTH_DEVICE_INFO            *pbtdiIn,
///   HBLUETOOTH_AUTHENTICATION_REGISTRATION *phRegHandleOut,
///   PFN_AUTHENTICATION_CALLBACK_EX         pfnCallbackIn,
///   PVOID                                  pvParam
/// );
/// ```
/// {@category bthprops}
int BluetoothRegisterForAuthenticationEx(
    Pointer<BLUETOOTH_DEVICE_INFO> pbtdiIn,
    Pointer<IntPtr> phRegHandleOut,
    Pointer<NativeFunction<PfnAuthenticationCallbackEx>> pfnCallbackIn,
    Pointer pvParam) {
  final _BluetoothRegisterForAuthenticationEx = _bthprops.lookupFunction<
      Uint32 Function(
          Pointer<BLUETOOTH_DEVICE_INFO> pbtdiIn,
          Pointer<IntPtr> phRegHandleOut,
          Pointer<NativeFunction<PfnAuthenticationCallbackEx>> pfnCallbackIn,
          Pointer pvParam),
      int Function(
          Pointer<BLUETOOTH_DEVICE_INFO> pbtdiIn,
          Pointer<IntPtr> phRegHandleOut,
          Pointer<NativeFunction<PfnAuthenticationCallbackEx>> pfnCallbackIn,
          Pointer pvParam)>('BluetoothRegisterForAuthenticationEx');
  return _BluetoothRegisterForAuthenticationEx(
      pbtdiIn, phRegHandleOut, pfnCallbackIn, pvParam);
}

/// The BluetoothRemoveDevice function removes authentication between a
/// Bluetooth device and the computer and clears cached service information
/// for the device.
///
/// ```c
/// DWORD BluetoothRemoveDevice(
///   const BLUETOOTH_ADDRESS *pAddress
/// );
/// ```
/// {@category bthprops}
int BluetoothRemoveDevice(Pointer<BLUETOOTH_ADDRESS> pAddress) {
  final _BluetoothRemoveDevice = _bthprops.lookupFunction<
      Uint32 Function(Pointer<BLUETOOTH_ADDRESS> pAddress),
      int Function(
          Pointer<BLUETOOTH_ADDRESS> pAddress)>('BluetoothRemoveDevice');
  return _BluetoothRemoveDevice(pAddress);
}

/// The BluetoothSetServiceState function enables or disables services for
/// a Bluetooth device.
///
/// ```c
/// DWORD BluetoothSetServiceState(
///   HANDLE                      hRadio,
///   const BLUETOOTH_DEVICE_INFO *pbtdi,
///   const GUID                  *pGuidService,
///   DWORD                       dwServiceFlags
/// );
/// ```
/// {@category bthprops}
int BluetoothSetServiceState(int hRadio, Pointer<BLUETOOTH_DEVICE_INFO> pbtdi,
    Pointer<GUID> pGuidService, int dwServiceFlags) {
  final _BluetoothSetServiceState = _bthprops.lookupFunction<
      Uint32 Function(IntPtr hRadio, Pointer<BLUETOOTH_DEVICE_INFO> pbtdi,
          Pointer<GUID> pGuidService, Uint32 dwServiceFlags),
      int Function(
          int hRadio,
          Pointer<BLUETOOTH_DEVICE_INFO> pbtdi,
          Pointer<GUID> pGuidService,
          int dwServiceFlags)>('BluetoothSetServiceState');
  return _BluetoothSetServiceState(hRadio, pbtdi, pGuidService, dwServiceFlags);
}

/// The BluetoothUnregisterAuthentication function removes registration for
/// a callback routine that was previously registered with a call to the
/// BluetoothRegisterForAuthentication function.
///
/// ```c
/// BOOL BluetoothUnregisterAuthentication(
///   HBLUETOOTH_AUTHENTICATION_REGISTRATION hRegHandle
/// );
/// ```
/// {@category bthprops}
int BluetoothUnregisterAuthentication(int hRegHandle) {
  final _BluetoothUnregisterAuthentication = _bthprops.lookupFunction<
      Int32 Function(IntPtr hRegHandle),
      int Function(int hRegHandle)>('BluetoothUnregisterAuthentication');
  return _BluetoothUnregisterAuthentication(hRegHandle);
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
