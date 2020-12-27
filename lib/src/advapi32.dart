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

/// The CredDelete function deletes a credential from the user's credential
/// set. The credential set used is the one associated with the logon
/// session of the current token. The token must not have the user's SID
/// disabled.
///
/// ```c
/// BOOL CredDeleteW(
///   LPCWSTR TargetName,
///   DWORD   Type,
///   DWORD   Flags
/// );
/// ```
/// {@category advapi32}
int CredDelete(Pointer<Utf16> TargetName, int Type, int Flags) {
  final _CredDelete = _advapi32.lookupFunction<
      Int32 Function(Pointer<Utf16> TargetName, Uint32 Type, Uint32 Flags),
      int Function(
          Pointer<Utf16> TargetName, int Type, int Flags)>('CredDeleteW');
  return _CredDelete(TargetName, Type, Flags);
}

/// The CredFree function frees a buffer returned by any of the credentials
/// management functions.
///
/// ```c
/// void CredFree(
///   PVOID Buffer
/// );
/// ```
/// {@category advapi32}
void CredFree(Pointer Buffer) {
  final _CredFree = _advapi32.lookupFunction<Void Function(Pointer Buffer),
      void Function(Pointer Buffer)>('CredFree');
  return _CredFree(Buffer);
}

/// The CredRead function reads a credential from the user's credential
/// set. The credential set used is the one associated with the logon
/// session of the current token. The token must not have the user's SID
/// disabled.
///
/// ```c
/// BOOL CredReadW(
///   LPCWSTR      TargetName,
///   DWORD        Type,
///   DWORD        Flags,
///   PCREDENTIALW *Credential
/// );
/// ```
/// {@category advapi32}
int CredRead(Pointer<Utf16> TargetName, int Type, int Flags,
    Pointer<Pointer<CREDENTIAL>> Credential) {
  final _CredRead = _advapi32.lookupFunction<
      Int32 Function(Pointer<Utf16> TargetName, Uint32 Type, Uint32 Flags,
          Pointer<Pointer<CREDENTIAL>> Credential),
      int Function(Pointer<Utf16> TargetName, int Type, int Flags,
          Pointer<Pointer<CREDENTIAL>> Credential)>('CredReadW');
  return _CredRead(TargetName, Type, Flags, Credential);
}

/// The CredWrite function creates a new credential or modifies an existing
/// credential in the user's credential set. The new credential is
/// associated with the logon session of the current token. The token must
/// not have the user's security identifier (SID) disabled.
///
/// ```c
/// BOOL CredWriteW(
///   PCREDENTIALW Credential,
///   DWORD        Flags
/// );
/// ```
/// {@category advapi32}
int CredWrite(Pointer<CREDENTIAL> Credential, int Flags) {
  final _CredWrite = _advapi32.lookupFunction<
      Int32 Function(Pointer<CREDENTIAL> Credential, Uint32 Flags),
      int Function(Pointer<CREDENTIAL> Credential, int Flags)>('CredWriteW');
  return _CredWrite(Credential, Flags);
}

/// Closes a handle to the specified registry key.
///
/// ```c
/// LSTATUS RegCloseKey(
///   HKEY hKey
/// );
/// ```
/// {@category advapi32}
int RegCloseKey(int hKey) {
  final _RegCloseKey = _advapi32.lookupFunction<Int32 Function(IntPtr hKey),
      int Function(int hKey)>('RegCloseKey');
  return _RegCloseKey(hKey);
}

/// Opens the specified registry key. Note that key names are not case
/// sensitive.
///
/// ```c
/// LSTATUS RegOpenKeyExW(
///   HKEY    hKey,
///   LPCWSTR lpSubKey,
///   DWORD   ulOptions,
///   REGSAM  samDesired,
///   PHKEY   phkResult
/// );
/// ```
/// {@category advapi32}
int RegOpenKeyEx(int hKey, Pointer<Utf16> lpSubKey, int ulOptions,
    int samDesired, Pointer<IntPtr> phkResult) {
  final _RegOpenKeyEx = _advapi32.lookupFunction<
      Int32 Function(IntPtr hKey, Pointer<Utf16> lpSubKey, Uint32 ulOptions,
          Int32 samDesired, Pointer<IntPtr> phkResult),
      int Function(int hKey, Pointer<Utf16> lpSubKey, int ulOptions,
          int samDesired, Pointer<IntPtr> phkResult)>('RegOpenKeyExW');
  return _RegOpenKeyEx(hKey, lpSubKey, ulOptions, samDesired, phkResult);
}

/// Retrieves the type and data for the specified value name associated
/// with an open registry key. To ensure that any string values (REG_SZ,
/// REG_MULTI_SZ, and REG_EXPAND_SZ) returned are null-terminated, use the
/// RegGetValue function.
///
/// ```c
/// LSTATUS RegQueryValueExW(
///   HKEY    hKey,
///   LPCWSTR lpValueName,
///   LPDWORD lpReserved,
///   LPDWORD lpType,
///   LPBYTE  lpData,
///   LPDWORD lpcbData
/// );
/// ```
/// {@category advapi32}
int RegQueryValueEx(
    int hKey,
    Pointer<Utf16> lpValueName,
    Pointer<Uint32> lpReserved,
    Pointer<Uint32> lpType,
    Pointer<Uint8> lpData,
    Pointer<Uint32> lpcbData) {
  final _RegQueryValueEx = _advapi32.lookupFunction<
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
  return _RegQueryValueEx(
      hKey, lpValueName, lpReserved, lpType, lpData, lpcbData);
}

/// Sets the data and type of a specified value under a registry key.
/// To ensure that any string values (REG_SZ,
/// REG_MULTI_SZ, and REG_EXPAND_SZ) returned are null-terminated, use the
/// RegGetValue function.
///
/// ```c
/// LSTATUS RegSetValueEx(
///   HKEY    hKey,
///   LPCWSTR lpValueName,
///   LPDWORD lpReserved,
///   LPDWORD lpType,
///   LPBYTE  lpData,
///   LPDWORD lpcbData
/// );
/// ```
/// {@category advapi32}
int RegSetValueEx(
    int hKey,
    Pointer<Utf16> lpValueName,
    Pointer<Uint32> lpReserved,
    Pointer<Uint32> lpType,
    Pointer<Uint8> lpData,
    Pointer<Uint32> lpcbData) {
  final RegSetValueEx = _advapi32.lookupFunction<
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
          Pointer<Uint32> lpcbData)>('RegSetValueEx');
  return RegSetValueEx(hKey, lpValueName, lpReserved, lpType, lpData, lpcbData);
}
