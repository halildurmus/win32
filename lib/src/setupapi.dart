// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, non_constant_identifier_names
// ignore_for_file: constant_identifier_names, camel_case_types

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'callbacks.dart';
import 'combase.dart';
import 'guid.dart';
import 'structs.dart';
import 'structs.g.dart';

final _setupapi = DynamicLibrary.open('setupapi.dll');

/// The SetupDiDestroyDeviceInfoList function deletes a device information
/// set and frees all associated memory.
///
/// ```c
/// WINSETUPAPI BOOL SetupDiDestroyDeviceInfoList(
///   HDEVINFO DeviceInfoSet
/// );
/// ```
/// {@category setupapi}
int SetupDiDestroyDeviceInfoList(Pointer DeviceInfoSet) =>
    _SetupDiDestroyDeviceInfoList(DeviceInfoSet);

final _SetupDiDestroyDeviceInfoList = _setupapi.lookupFunction<
    Int32 Function(Pointer DeviceInfoSet),
    int Function(Pointer DeviceInfoSet)>('SetupDiDestroyDeviceInfoList');

/// The SetupDiEnumDeviceInfo function returns a SP_DEVINFO_DATA structure
/// that specifies a device information element in a device information
/// set.
///
/// ```c
/// WINSETUPAPI BOOL SetupDiEnumDeviceInfo(
///   HDEVINFO         DeviceInfoSet,
///   DWORD            MemberIndex,
///   PSP_DEVINFO_DATA DeviceInfoData
/// );
/// ```
/// {@category setupapi}
int SetupDiEnumDeviceInfo(Pointer DeviceInfoSet, int MemberIndex,
        Pointer<SP_DEVINFO_DATA> DeviceInfoData) =>
    _SetupDiEnumDeviceInfo(DeviceInfoSet, MemberIndex, DeviceInfoData);

final _SetupDiEnumDeviceInfo = _setupapi.lookupFunction<
    Int32 Function(Pointer DeviceInfoSet, Uint32 MemberIndex,
        Pointer<SP_DEVINFO_DATA> DeviceInfoData),
    int Function(Pointer DeviceInfoSet, int MemberIndex,
        Pointer<SP_DEVINFO_DATA> DeviceInfoData)>('SetupDiEnumDeviceInfo');

/// The SetupDiGetClassDevs function returns a handle to a device
/// information set that contains requested device information elements for
/// a local computer.
///
/// ```c
/// WINSETUPAPI HDEVINFO SetupDiGetClassDevsW(
///   const GUID *ClassGuid,
///   PCWSTR     Enumerator,
///   HWND       hwndParent,
///   DWORD      Flags
/// );
/// ```
/// {@category setupapi}
Pointer SetupDiGetClassDevs(Pointer<GUID> ClassGuid, Pointer<Utf16> Enumerator,
        int hwndParent, int Flags) =>
    _SetupDiGetClassDevs(ClassGuid, Enumerator, hwndParent, Flags);

final _SetupDiGetClassDevs = _setupapi.lookupFunction<
    Pointer Function(Pointer<GUID> ClassGuid, Pointer<Utf16> Enumerator,
        IntPtr hwndParent, Uint32 Flags),
    Pointer Function(Pointer<GUID> ClassGuid, Pointer<Utf16> Enumerator,
        int hwndParent, int Flags)>('SetupDiGetClassDevsW');

/// The SetupDiOpenDevRegKey function opens a registry key for
/// device-specific configuration information.
///
/// ```c
/// WINSETUPAPI HKEY SetupDiOpenDevRegKey(
///   HDEVINFO         DeviceInfoSet,
///   PSP_DEVINFO_DATA DeviceInfoData,
///   DWORD            Scope,
///   DWORD            HwProfile,
///   DWORD            KeyType,
///   REGSAM           samDesired
/// );
/// ```
/// {@category setupapi}
int SetupDiOpenDevRegKey(
        Pointer DeviceInfoSet,
        Pointer<SP_DEVINFO_DATA> DeviceInfoData,
        int Scope,
        int HwProfile,
        int KeyType,
        int samDesired) =>
    _SetupDiOpenDevRegKey(
        DeviceInfoSet, DeviceInfoData, Scope, HwProfile, KeyType, samDesired);

final _SetupDiOpenDevRegKey = _setupapi.lookupFunction<
    IntPtr Function(
        Pointer DeviceInfoSet,
        Pointer<SP_DEVINFO_DATA> DeviceInfoData,
        Uint32 Scope,
        Uint32 HwProfile,
        Uint32 KeyType,
        Uint32 samDesired),
    int Function(
        Pointer DeviceInfoSet,
        Pointer<SP_DEVINFO_DATA> DeviceInfoData,
        int Scope,
        int HwProfile,
        int KeyType,
        int samDesired)>('SetupDiOpenDevRegKey');
