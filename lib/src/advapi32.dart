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

final _advapi32 = DynamicLibrary.open('advapi32.dll');

// BOOL CredDeleteW(
//   LPCWSTR TargetName,
//   DWORD   Type,
//   DWORD   Flags
// );

/// {@category advapi32}
final CredDelete = _advapi32.lookupFunction<
    Int32 Function(Pointer<Utf16> TargetName, Uint32 Type, Uint32 Flags),
    int Function(
        Pointer<Utf16> TargetName, int Type, int Flags)>('CredDeleteW');

// void CredFree(
//   PVOID Buffer
// );

/// {@category advapi32}
final CredFree = _advapi32.lookupFunction<Void Function(Pointer Buffer),
    void Function(Pointer Buffer)>('CredFree');

// BOOL CredReadW(
//   LPCWSTR      TargetName,
//   DWORD        Type,
//   DWORD        Flags,
//   PCREDENTIALW *Credential
// );

/// {@category advapi32}
final CredRead = _advapi32.lookupFunction<
    Int32 Function(Pointer<Utf16> TargetName, Uint32 Type, Uint32 Flags,
        Pointer<Pointer<CREDENTIAL>> Credential),
    int Function(Pointer<Utf16> TargetName, int Type, int Flags,
        Pointer<Pointer<CREDENTIAL>> Credential)>('CredReadW');

// BOOL CredWriteW(
//   PCREDENTIALW Credential,
//   DWORD        Flags
// );

/// {@category advapi32}
final CredWrite = _advapi32.lookupFunction<
    Int32 Function(Pointer<CREDENTIAL> Credential, Uint32 Flags),
    int Function(Pointer<CREDENTIAL> Credential, int Flags)>('CredWriteW');

// LSTATUS RegCloseKey(
//   HKEY hKey
// );

/// {@category advapi32}
final RegCloseKey = _advapi32.lookupFunction<Int32 Function(IntPtr hKey),
    int Function(int hKey)>('RegCloseKey');

// LSTATUS RegOpenKeyExW(
//   HKEY    hKey,
//   LPCWSTR lpSubKey,
//   DWORD   ulOptions,
//   REGSAM  samDesired,
//   PHKEY   phkResult
// );

/// {@category advapi32}
final RegOpenKeyEx = _advapi32.lookupFunction<
    Int32 Function(IntPtr hKey, Pointer<Utf16> lpSubKey, Uint32 ulOptions,
        Int32 samDesired, Pointer<IntPtr> phkResult),
    int Function(int hKey, Pointer<Utf16> lpSubKey, int ulOptions,
        int samDesired, Pointer<IntPtr> phkResult)>('RegOpenKeyExW');

// LSTATUS RegQueryValueExW(
//   HKEY    hKey,
//   LPCWSTR lpValueName,
//   LPDWORD lpReserved,
//   LPDWORD lpType,
//   LPBYTE  lpData,
//   LPDWORD lpcbData
// );

/// {@category advapi32}
final RegQueryValueEx = _advapi32.lookupFunction<
    Int32 Function(
        IntPtr hKey,
        Pointer<Utf16> lpValueName,
        Pointer<Uint32> lpReserved,
        Pointer<Uint32> lpType,
        Pointer<Uint8> lpData,
        Pointer<Uint32> lpcbData),
    int Function(
        int hKey,
        Pointer<Utf16> lpValueName,
        Pointer<Uint32> lpReserved,
        Pointer<Uint32> lpType,
        Pointer<Uint8> lpData,
        Pointer<Uint32> lpcbData)>('RegQueryValueExW');
