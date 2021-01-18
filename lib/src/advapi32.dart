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

/// Decrypts an encrypted file or directory.
///
/// ```c
/// BOOL DecryptFileW(
///         LPCWSTR lpFileName,
///         DWORD   dwReserved
/// );
/// ```
/// {@category advapi32}
int DecryptFile(Pointer<Utf16> lpFileName, int dwReserved) {
  final _DecryptFile = _advapi32.lookupFunction<
      Int32 Function(Pointer<Utf16> lpFileName, Uint32 dwReserved),
      int Function(Pointer<Utf16> lpFileName, int dwReserved)>('DecryptFileW');
  return _DecryptFile(lpFileName, dwReserved);
}

/// Encrypts a file or directory. All data streams in a file are encrypted.
/// All new files created in an encrypted directory are encrypted.
///
/// ```c
/// BOOL EncryptFileW(
///         LPCWSTR lpFileName
/// );
/// ```
/// {@category advapi32}
int EncryptFile(Pointer<Utf16> lpFileName) {
  final _EncryptFile = _advapi32.lookupFunction<
      Int32 Function(Pointer<Utf16> lpFileName),
      int Function(Pointer<Utf16> lpFileName)>('EncryptFileW');
  return _EncryptFile(lpFileName);
}

/// Retrieves the encryption status of the specified file.
///
/// ```c
/// BOOL FileEncryptionStatusW(
///         LPCWSTR lpFileName,
///         LPDWORD lpStatus
/// );
/// ```
/// {@category advapi32}
int FileEncryptionStatus(Pointer<Utf16> lpFileName, Pointer<Uint32> lpStatus) {
  final _FileEncryptionStatus = _advapi32.lookupFunction<
      Int32 Function(Pointer<Utf16> lpFileName, Pointer<Uint32> lpStatus),
      int Function(Pointer<Utf16> lpFileName,
          Pointer<Uint32> lpStatus)>('FileEncryptionStatusW');
  return _FileEncryptionStatus(lpFileName, lpStatus);
}

/// Initiates a shutdown and restart of the specified computer, and
/// restarts any applications that have been registered for restart.
///
/// ```c
/// DWORD InitiateShutdownW(
///   LPWSTR lpMachineName,
///   LPWSTR lpMessage,
///   DWORD  dwGracePeriod,
///   DWORD  dwShutdownFlags,
///   DWORD  dwReason
/// );
/// ```
/// {@category advapi32}
int InitiateShutdown(Pointer<Utf16> lpMachineName, Pointer<Utf16> lpMessage,
    int dwGracePeriod, int dwShutdownFlags, int dwReason) {
  final _InitiateShutdown = _advapi32.lookupFunction<
      Uint32 Function(Pointer<Utf16> lpMachineName, Pointer<Utf16> lpMessage,
          Uint32 dwGracePeriod, Uint32 dwShutdownFlags, Uint32 dwReason),
      int Function(
          Pointer<Utf16> lpMachineName,
          Pointer<Utf16> lpMessage,
          int dwGracePeriod,
          int dwShutdownFlags,
          int dwReason)>('InitiateShutdownW');
  return _InitiateShutdown(
      lpMachineName, lpMessage, dwGracePeriod, dwShutdownFlags, dwReason);
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

/// Establishes a connection to a predefined registry key on another
/// computer.
///
/// ```c
/// LSTATUS RegConnectRegistryW(
///   LPCWSTR lpMachineName,
///   HKEY    hKey,
///   PHKEY   phkResult
/// );
/// ```
/// {@category advapi32}
int RegConnectRegistry(
    Pointer<Utf16> lpMachineName, int hKey, Pointer<IntPtr> phkResult) {
  final _RegConnectRegistry = _advapi32.lookupFunction<
      Int32 Function(
          Pointer<Utf16> lpMachineName, IntPtr hKey, Pointer<IntPtr> phkResult),
      int Function(Pointer<Utf16> lpMachineName, int hKey,
          Pointer<IntPtr> phkResult)>('RegConnectRegistryW');
  return _RegConnectRegistry(lpMachineName, hKey, phkResult);
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
          Uint32 samDesired, Pointer<IntPtr> phkResult),
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
///
/// ```c
/// LSTATUS RegSetValueExW(
///   HKEY       hKey,
///   LPCWSTR    lpValueName,
///   DWORD      Reserved,
///   DWORD      dwType,
///   const BYTE *lpData,
///   DWORD      cbData
/// );
/// ```
/// {@category advapi32}
int RegSetValueEx(int hKey, Pointer<Utf16> lpValueName, int Reserved,
    int dwType, Pointer<Uint8> lpData, int cbData) {
  final _RegSetValueEx = _advapi32.lookupFunction<
      Int32 Function(IntPtr hKey, Pointer<Utf16> lpValueName, Uint32 Reserved,
          Uint32 dwType, Pointer<Uint8> lpData, Uint32 cbData),
      int Function(int hKey, Pointer<Utf16> lpValueName, int Reserved,
          int dwType, Pointer<Uint8> lpData, int cbData)>('RegSetValueExW');
  return _RegSetValueEx(hKey, lpValueName, Reserved, dwType, lpData, cbData);
}
