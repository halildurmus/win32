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
///   LPCWSTR lpFileName,
///   DWORD   dwReserved
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
///   LPCWSTR lpFileName
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
///   LPCWSTR lpFileName,
///   LPDWORD lpStatus
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

/// Copies the specified registry key, along with its values and subkeys,
/// to the specified destination key.
///
/// ```c
/// LSTATUS RegCopyTreeW(
///   HKEY    hKeySrc,
///   LPCWSTR lpSubKey,
///   HKEY    hKeyDest
/// );
/// ```
/// {@category advapi32}
int RegCopyTree(int hKeySrc, Pointer<Utf16> lpSubKey, int hKeyDest) {
  final _RegCopyTree = _advapi32.lookupFunction<
      Int32 Function(IntPtr hKeySrc, Pointer<Utf16> lpSubKey, IntPtr hKeyDest),
      int Function(
          int hKeySrc, Pointer<Utf16> lpSubKey, int hKeyDest)>('RegCopyTreeW');
  return _RegCopyTree(hKeySrc, lpSubKey, hKeyDest);
}

/// Creates the specified registry key. If the key already exists in the
/// registry, the function opens it.
///
/// ```c
/// LSTATUS RegCreateKeyW(
///   HKEY    hKey,
///   LPCWSTR lpSubKey,
///   PHKEY   phkResult);
/// ```
/// {@category advapi32}
int RegCreateKey(int hKey, Pointer<Utf16> lpSubKey, Pointer<IntPtr> phkResult) {
  final _RegCreateKey = _advapi32.lookupFunction<
      Int32 Function(
          IntPtr hKey, Pointer<Utf16> lpSubKey, Pointer<IntPtr> phkResult),
      int Function(int hKey, Pointer<Utf16> lpSubKey,
          Pointer<IntPtr> phkResult)>('RegCreateKeyW');
  return _RegCreateKey(hKey, lpSubKey, phkResult);
}

/// Creates the specified registry key. If the key already exists, the
/// function opens it. Note that key names are not case sensitive.
///
/// ```c
/// LSTATUS RegCreateKeyExW(
///   HKEY hKey,
///   LPCWSTR lpSubKey,
///   DWORD Reserved,
///   LPWSTR lpClass,
///   DWORD dwOptions,
///   REGSAM samDesired,
///   const LPSECURITY_ATTRIBUTES lpSecurityAttributes,
///   PHKEY phkResult,
///   LPDWORD lpdwDisposition
/// );
/// ```
/// {@category advapi32}
int RegCreateKeyEx(
    int hKey,
    Pointer<Utf16> lpSubKey,
    int Reserved,
    Pointer<Utf16> lpClass,
    int dwOptions,
    int samDesired,
    Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
    Pointer<IntPtr> phkResult,
    Pointer<Uint32> lpdwDisposition) {
  final _RegCreateKeyEx = _advapi32.lookupFunction<
      Int32 Function(
          IntPtr hKey,
          Pointer<Utf16> lpSubKey,
          Uint32 Reserved,
          Pointer<Utf16> lpClass,
          Uint32 dwOptions,
          Uint32 samDesired,
          Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
          Pointer<IntPtr> phkResult,
          Pointer<Uint32> lpdwDisposition),
      int Function(
          int hKey,
          Pointer<Utf16> lpSubKey,
          int Reserved,
          Pointer<Utf16> lpClass,
          int dwOptions,
          int samDesired,
          Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
          Pointer<IntPtr> phkResult,
          Pointer<Uint32> lpdwDisposition)>('RegCreateKeyExW');
  return _RegCreateKeyEx(hKey, lpSubKey, Reserved, lpClass, dwOptions,
      samDesired, lpSecurityAttributes, phkResult, lpdwDisposition);
}

/// Establishes a connection to a predefined registry key on another
/// computer.
///
/// ```c
/// LSTATUS RegCreateKeyTransactedW(
///   HKEY     hKey,
///   LPCWSTR  lpSubKey,
///   DWORD    Reserved,
///   LPWSTR   lpClass,
///   DWORD    dwOptions,
///   REGSAM   samDesired,
///   const LPSECURITY_ATTRIBUTES lpSecurityAttributes,
///   PHKEY    phkResult,
///   LPDWORD  lpdwDisposition,
///   HANDLE   hTransaction,
///   PVOID    pExtendedParemeter);
/// ```
/// {@category advapi32}
int RegCreateKeyTransacted(
    int hKey,
    Pointer<Utf16> lpSubKey,
    int Reserved,
    Pointer<Utf16> lpClass,
    int dwOptions,
    int samDesired,
    Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
    Pointer<IntPtr> phkResult,
    Pointer<Uint32> lpdwDisposition,
    int hTransaction,
    Pointer pExtendedParemeter) {
  final _RegCreateKeyTransacted = _advapi32.lookupFunction<
      Int32 Function(
          IntPtr hKey,
          Pointer<Utf16> lpSubKey,
          Uint32 Reserved,
          Pointer<Utf16> lpClass,
          Uint32 dwOptions,
          Uint32 samDesired,
          Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
          Pointer<IntPtr> phkResult,
          Pointer<Uint32> lpdwDisposition,
          IntPtr hTransaction,
          Pointer pExtendedParemeter),
      int Function(
          int hKey,
          Pointer<Utf16> lpSubKey,
          int Reserved,
          Pointer<Utf16> lpClass,
          int dwOptions,
          int samDesired,
          Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
          Pointer<IntPtr> phkResult,
          Pointer<Uint32> lpdwDisposition,
          int hTransaction,
          Pointer pExtendedParemeter)>('RegCreateKeyTransactedW');
  return _RegCreateKeyTransacted(
      hKey,
      lpSubKey,
      Reserved,
      lpClass,
      dwOptions,
      samDesired,
      lpSecurityAttributes,
      phkResult,
      lpdwDisposition,
      hTransaction,
      pExtendedParemeter);
}

/// Deletes a subkey and its values. Note that key names are not case
/// sensitive.
///
/// ```c
/// LSTATUS RegDeleteKeyW(
///   HKEY    hKey,
///   LPCWSTR lpSubKey);
/// ```
/// {@category advapi32}
int RegDeleteKey(int hKey, Pointer<Utf16> lpSubKey) {
  final _RegDeleteKey = _advapi32.lookupFunction<
      Int32 Function(IntPtr hKey, Pointer<Utf16> lpSubKey),
      int Function(int hKey, Pointer<Utf16> lpSubKey)>('RegDeleteKeyW');
  return _RegDeleteKey(hKey, lpSubKey);
}

/// Deletes a subkey and its values from the specified platform-specific
/// view of the registry. Note that key names are not case sensitive.
///
/// ```c
/// LSTATUS RegDeleteKeyExW(
///   HKEY    hKey,
///   LPCWSTR lpSubKey,
///   REGSAM  samDesired,
///   DWORD   Reserved);
/// ```
/// {@category advapi32}
int RegDeleteKeyEx(
    int hKey, Pointer<Utf16> lpSubKey, int samDesired, int Reserved) {
  final _RegDeleteKeyEx = _advapi32.lookupFunction<
      Int32 Function(IntPtr hKey, Pointer<Utf16> lpSubKey, Uint32 samDesired,
          Uint32 Reserved),
      int Function(int hKey, Pointer<Utf16> lpSubKey, int samDesired,
          int Reserved)>('RegDeleteKeyExW');
  return _RegDeleteKeyEx(hKey, lpSubKey, samDesired, Reserved);
}

/// Deletes a subkey and its values from the specified platform-specific
/// view of the registry as a transacted operation. Note that key names are
/// not case sensitive.
///
/// ```c
/// LSTATUS RegDeleteKeyTransactedW(
///   HKEY    hKey,
///   LPCWSTR lpSubKey,
///   REGSAM  samDesired,
///   DWORD   Reserved,
///   HANDLE  hTransaction,
///   PVOID   pExtendedParameter);
/// ```
/// {@category advapi32}
int RegDeleteKeyTransacted(int hKey, Pointer<Utf16> lpSubKey, int samDesired,
    int Reserved, int hTransaction, Pointer pExtendedParameter) {
  final _RegDeleteKeyTransacted = _advapi32.lookupFunction<
      Int32 Function(IntPtr hKey, Pointer<Utf16> lpSubKey, Uint32 samDesired,
          Uint32 Reserved, IntPtr hTransaction, Pointer pExtendedParameter),
      int Function(
          int hKey,
          Pointer<Utf16> lpSubKey,
          int samDesired,
          int Reserved,
          int hTransaction,
          Pointer pExtendedParameter)>('RegDeleteKeyTransactedW');
  return _RegDeleteKeyTransacted(
      hKey, lpSubKey, samDesired, Reserved, hTransaction, pExtendedParameter);
}

/// Removes the specified value from the specified registry key and subkey.
///
/// ```c
/// LSTATUS RegDeleteKeyValueW(
///   HKEY    hKey,
///   LPCWSTR lpSubKey,
///   LPCWSTR lpValueName);
/// ```
/// {@category advapi32}
int RegDeleteKeyValue(
    int hKey, Pointer<Utf16> lpSubKey, Pointer<Utf16> lpValueName) {
  final _RegDeleteKeyValue = _advapi32.lookupFunction<
      Int32 Function(
          IntPtr hKey, Pointer<Utf16> lpSubKey, Pointer<Utf16> lpValueName),
      int Function(int hKey, Pointer<Utf16> lpSubKey,
          Pointer<Utf16> lpValueName)>('RegDeleteKeyValueW');
  return _RegDeleteKeyValue(hKey, lpSubKey, lpValueName);
}

/// Deletes the subkeys and values of the specified key recursively.
///
/// ```c
/// LSTATUS RegDeleteTreeW(
///   HKEY    hKey,
///   LPCWSTR lpSubKey);
/// ```
/// {@category advapi32}
int RegDeleteTree(int hKey, Pointer<Utf16> lpSubKey) {
  final _RegDeleteTree = _advapi32.lookupFunction<
      Int32 Function(IntPtr hKey, Pointer<Utf16> lpSubKey),
      int Function(int hKey, Pointer<Utf16> lpSubKey)>('RegDeleteTreeW');
  return _RegDeleteTree(hKey, lpSubKey);
}

/// Removes a named value from the specified registry key. Note that value
/// names are not case sensitive.
///
/// ```c
/// LSTATUS RegDeleteValueW(
///   HKEY    hKey,
///   LPCWSTR lpValueName);
/// ```
/// {@category advapi32}
int RegDeleteValue(int hKey, Pointer<Utf16> lpValueName) {
  final _RegDeleteValue = _advapi32.lookupFunction<
      Int32 Function(IntPtr hKey, Pointer<Utf16> lpValueName),
      int Function(int hKey, Pointer<Utf16> lpValueName)>('RegDeleteValueW');
  return _RegDeleteValue(hKey, lpValueName);
}

/// Disables handle caching of the predefined registry handle for
/// HKEY_CURRENT_USER for the current process. This function does not work
/// on a remote computer.
///
/// ```c
/// LSTATUS RegDisablePredefinedCache();
/// ```
/// {@category advapi32}
int RegDisablePredefinedCache() {
  final _RegDisablePredefinedCache =
      _advapi32.lookupFunction<Int32 Function(), int Function()>(
          'RegDisablePredefinedCache');
  return _RegDisablePredefinedCache();
}

/// Disables handle caching for all predefined registry handles for the
/// current process.
///
/// ```c
/// LSTATUS RegDisablePredefinedCacheEx();
/// ```
/// {@category advapi32}
int RegDisablePredefinedCacheEx() {
  final _RegDisablePredefinedCacheEx =
      _advapi32.lookupFunction<Int32 Function(), int Function()>(
          'RegDisablePredefinedCacheEx');
  return _RegDisablePredefinedCacheEx();
}

/// Disables registry reflection for the specified key. Disabling
/// reflection for a key does not affect reflection of any subkeys.
///
/// ```c
/// LONG RegDisableReflectionKey(
///   HKEY hBase);
/// ```
/// {@category advapi32}
int RegDisableReflectionKey(int hBase) {
  final _RegDisableReflectionKey = _advapi32.lookupFunction<
      Int32 Function(IntPtr hBase),
      int Function(int hBase)>('RegDisableReflectionKey');
  return _RegDisableReflectionKey(hBase);
}

/// Restores registry reflection for the specified disabled key. Restoring
/// reflection for a key does not affect reflection of any subkeys.
///
/// ```c
/// LONG RegEnableReflectionKey(
///   HKEY hBase);
/// ```
/// {@category advapi32}
int RegEnableReflectionKey(int hBase) {
  final _RegEnableReflectionKey = _advapi32.lookupFunction<
      Int32 Function(IntPtr hBase),
      int Function(int hBase)>('RegEnableReflectionKey');
  return _RegEnableReflectionKey(hBase);
}

/// Enumerates the subkeys of the specified open registry key. The function
/// retrieves the name of one subkey each time it is called.
///
/// ```c
/// LSTATUS RegEnumKeyW(
///   HKEY   hKey,
///   DWORD  dwIndex,
///   LPWSTR lpName,
///   DWORD  cchName);
/// ```
/// {@category advapi32}
int RegEnumKey(int hKey, int dwIndex, Pointer<Utf16> lpName, int cchName) {
  final _RegEnumKey = _advapi32.lookupFunction<
      Int32 Function(
          IntPtr hKey, Uint32 dwIndex, Pointer<Utf16> lpName, Uint32 cchName),
      int Function(int hKey, int dwIndex, Pointer<Utf16> lpName,
          int cchName)>('RegEnumKeyW');
  return _RegEnumKey(hKey, dwIndex, lpName, cchName);
}

/// Enumerates the subkeys of the specified open registry key. The function
/// retrieves information about one subkey each time it is called.
///
/// ```c
/// LSTATUS RegEnumKeyExW(
///   HKEY      hKey,
///   DWORD     dwIndex,
///   LPWSTR    lpName,
///   LPDWORD   lpcchName,
///   LPDWORD   lpReserved,
///   LPWSTR    lpClass,
///   LPDWORD   lpcchClass,
///   PFILETIME lpftLastWriteTime);
/// ```
/// {@category advapi32}
int RegEnumKeyEx(
    int hKey,
    int dwIndex,
    Pointer<Utf16> lpName,
    Pointer<Uint32> lpcchName,
    Pointer<Uint32> lpReserved,
    Pointer<Utf16> lpClass,
    Pointer<Uint32> lpcchClass,
    Pointer<FILETIME> lpftLastWriteTime) {
  final _RegEnumKeyEx = _advapi32.lookupFunction<
      Int32 Function(
          IntPtr hKey,
          Uint32 dwIndex,
          Pointer<Utf16> lpName,
          Pointer<Uint32> lpcchName,
          Pointer<Uint32> lpReserved,
          Pointer<Utf16> lpClass,
          Pointer<Uint32> lpcchClass,
          Pointer<FILETIME> lpftLastWriteTime),
      int Function(
          int hKey,
          int dwIndex,
          Pointer<Utf16> lpName,
          Pointer<Uint32> lpcchName,
          Pointer<Uint32> lpReserved,
          Pointer<Utf16> lpClass,
          Pointer<Uint32> lpcchClass,
          Pointer<FILETIME> lpftLastWriteTime)>('RegEnumKeyExW');
  return _RegEnumKeyEx(hKey, dwIndex, lpName, lpcchName, lpReserved, lpClass,
      lpcchClass, lpftLastWriteTime);
}

/// Enumerates the values for the specified open registry key. The function
/// copies one indexed value name and data block for the key each time it
/// is called.
///
/// ```c
/// LSTATUS RegEnumValueW(
///   HKEY    hKey,
///   DWORD   dwIndex,
///   LPWSTR  lpValueName,
///   LPDWORD lpcchValueName,
///   LPDWORD lpReserved,
///   LPDWORD lpType,
///   LPBYTE  lpData,
///   LPDWORD lpcbData);
/// ```
/// {@category advapi32}
int RegEnumValue(
    int hKey,
    int dwIndex,
    Pointer<Utf16> lpValueName,
    Pointer<Uint32> lpcchValueName,
    Pointer<Uint32> lpReserved,
    Pointer<Uint32> lpType,
    Pointer<Uint8> lpData,
    Pointer<Uint32> lpcbData) {
  final _RegEnumValue = _advapi32.lookupFunction<
      Int32 Function(
          IntPtr hKey,
          Uint32 dwIndex,
          Pointer<Utf16> lpValueName,
          Pointer<Uint32> lpcchValueName,
          Pointer<Uint32> lpReserved,
          Pointer<Uint32> lpType,
          Pointer<Uint8> lpData,
          Pointer<Uint32> lpcbData),
      int Function(
          int hKey,
          int dwIndex,
          Pointer<Utf16> lpValueName,
          Pointer<Uint32> lpcchValueName,
          Pointer<Uint32> lpReserved,
          Pointer<Uint32> lpType,
          Pointer<Uint8> lpData,
          Pointer<Uint32> lpcbData)>('RegEnumValueW');
  return _RegEnumValue(hKey, dwIndex, lpValueName, lpcchValueName, lpReserved,
      lpType, lpData, lpcbData);
}

/// Writes all the attributes of the specified open registry key into the
/// registry.
///
/// ```c
/// LSTATUS RegFlushKey(
///   HKEY hKey);
/// ```
/// {@category advapi32}
int RegFlushKey(int hKey) {
  final _RegFlushKey = _advapi32.lookupFunction<Int32 Function(IntPtr hKey),
      int Function(int hKey)>('RegFlushKey');
  return _RegFlushKey(hKey);
}

/// Retrieves the type and data for the specified registry value.
///
/// ```c
/// LSTATUS RegGetValueW(
///   HKEY    hkey,
///   LPCWSTR lpSubKey,
///   LPCWSTR lpValue,
///   DWORD   dwFlags,
///   LPDWORD pdwType,
///   PVOID   pvData,
///   LPDWORD pcbData);
/// ```
/// {@category advapi32}
int RegGetValue(
    int hkey,
    Pointer<Utf16> lpSubKey,
    Pointer<Utf16> lpValue,
    int dwFlags,
    Pointer<Uint32> pdwType,
    Pointer pvData,
    Pointer<Uint32> pcbData) {
  final _RegGetValue = _advapi32.lookupFunction<
      Int32 Function(
          IntPtr hkey,
          Pointer<Utf16> lpSubKey,
          Pointer<Utf16> lpValue,
          Uint32 dwFlags,
          Pointer<Uint32> pdwType,
          Pointer pvData,
          Pointer<Uint32> pcbData),
      int Function(
          int hkey,
          Pointer<Utf16> lpSubKey,
          Pointer<Utf16> lpValue,
          int dwFlags,
          Pointer<Uint32> pdwType,
          Pointer pvData,
          Pointer<Uint32> pcbData)>('RegGetValueW');
  return _RegGetValue(
      hkey, lpSubKey, lpValue, dwFlags, pdwType, pvData, pcbData);
}

/// Loads the specified registry hive as an application hive.
///
/// ```c
/// LSTATUS RegLoadAppKeyW(
///   LPCWSTR lpFile,
///   PHKEY   phkResult,
///   REGSAM  samDesired,
///   DWORD   dwOptions,
///   DWORD   Reserved);
/// ```
/// {@category advapi32}
int RegLoadAppKey(Pointer<Utf16> lpFile, Pointer<IntPtr> phkResult,
    int samDesired, int dwOptions, int Reserved) {
  final _RegLoadAppKey = _advapi32.lookupFunction<
      Int32 Function(Pointer<Utf16> lpFile, Pointer<IntPtr> phkResult,
          Uint32 samDesired, Uint32 dwOptions, Uint32 Reserved),
      int Function(Pointer<Utf16> lpFile, Pointer<IntPtr> phkResult,
          int samDesired, int dwOptions, int Reserved)>('RegLoadAppKeyW');
  return _RegLoadAppKey(lpFile, phkResult, samDesired, dwOptions, Reserved);
}

/// Creates a subkey under HKEY_USERS or HKEY_LOCAL_MACHINE and loads the
/// data from the specified registry hive into that subkey.
///
/// ```c
/// LSTATUS RegLoadKeyW(
///   HKEY    hKey,
///   LPCWSTR lpSubKey,
///   LPCWSTR lpFile);
/// ```
/// {@category advapi32}
int RegLoadKey(int hKey, Pointer<Utf16> lpSubKey, Pointer<Utf16> lpFile) {
  final _RegLoadKey = _advapi32.lookupFunction<
      Int32 Function(
          IntPtr hKey, Pointer<Utf16> lpSubKey, Pointer<Utf16> lpFile),
      int Function(int hKey, Pointer<Utf16> lpSubKey,
          Pointer<Utf16> lpFile)>('RegLoadKeyW');
  return _RegLoadKey(hKey, lpSubKey, lpFile);
}

/// Loads the specified string from the specified key and subkey.
///
/// ```c
/// LSTATUS RegLoadMUIStringW(
///   HKEY    hKey,
///   LPCWSTR pszValue,
///   LPWSTR  pszOutBuf,
///   DWORD   cbOutBuf,
///   LPDWORD pcbData,
///   DWORD   Flags,
///   LPCWSTR pszDirectory);
/// ```
/// {@category advapi32}
int RegLoadMUIString(
    int hKey,
    Pointer<Utf16> pszValue,
    Pointer<Utf16> pszOutBuf,
    int cbOutBuf,
    Pointer<Uint32> pcbData,
    int Flags,
    Pointer<Utf16> pszDirectory) {
  final _RegLoadMUIString = _advapi32.lookupFunction<
      Int32 Function(
          IntPtr hKey,
          Pointer<Utf16> pszValue,
          Pointer<Utf16> pszOutBuf,
          Uint32 cbOutBuf,
          Pointer<Uint32> pcbData,
          Uint32 Flags,
          Pointer<Utf16> pszDirectory),
      int Function(
          int hKey,
          Pointer<Utf16> pszValue,
          Pointer<Utf16> pszOutBuf,
          int cbOutBuf,
          Pointer<Uint32> pcbData,
          int Flags,
          Pointer<Utf16> pszDirectory)>('RegLoadMUIStringW');
  return _RegLoadMUIString(
      hKey, pszValue, pszOutBuf, cbOutBuf, pcbData, Flags, pszDirectory);
}

/// Notifies the caller about changes to the attributes or contents of a
/// specified registry key.
///
/// ```c
/// LSTATUS RegNotifyChangeKeyValue(
///   HKEY   hKey,
///   BOOL   bWatchSubtree,
///   DWORD  dwNotifyFilter,
///   HANDLE hEvent,
///   BOOL   fAsynchronous);
/// ```
/// {@category advapi32}
int RegNotifyChangeKeyValue(int hKey, int bWatchSubtree, int dwNotifyFilter,
    int hEvent, int fAsynchronous) {
  final _RegNotifyChangeKeyValue = _advapi32.lookupFunction<
      Int32 Function(IntPtr hKey, Int32 bWatchSubtree, Uint32 dwNotifyFilter,
          IntPtr hEvent, Int32 fAsynchronous),
      int Function(int hKey, int bWatchSubtree, int dwNotifyFilter, int hEvent,
          int fAsynchronous)>('RegNotifyChangeKeyValue');
  return _RegNotifyChangeKeyValue(
      hKey, bWatchSubtree, dwNotifyFilter, hEvent, fAsynchronous);
}

/// Retrieves a handle to the HKEY_CURRENT_USER key for the user the
/// current thread is impersonating.
///
/// ```c
/// LSTATUS RegOpenCurrentUser(
///   REGSAM samDesired,
///   PHKEY  phkResult);
/// ```
/// {@category advapi32}
int RegOpenCurrentUser(int samDesired, Pointer<IntPtr> phkResult) {
  final _RegOpenCurrentUser = _advapi32.lookupFunction<
      Int32 Function(Uint32 samDesired, Pointer<IntPtr> phkResult),
      int Function(
          int samDesired, Pointer<IntPtr> phkResult)>('RegOpenCurrentUser');
  return _RegOpenCurrentUser(samDesired, phkResult);
}

/// Opens the specified registry key.
///
/// ```c
/// LSTATUS RegOpenKeyW(
///   HKEY    hKey,
///   LPCWSTR lpSubKey,
///   PHKEY   phkResult);
/// ```
/// {@category advapi32}
int RegOpenKey(int hKey, Pointer<Utf16> lpSubKey, Pointer<IntPtr> phkResult) {
  final _RegOpenKey = _advapi32.lookupFunction<
      Int32 Function(
          IntPtr hKey, Pointer<Utf16> lpSubKey, Pointer<IntPtr> phkResult),
      int Function(int hKey, Pointer<Utf16> lpSubKey,
          Pointer<IntPtr> phkResult)>('RegOpenKeyW');
  return _RegOpenKey(hKey, lpSubKey, phkResult);
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

/// Opens the specified registry key and associates it with a transaction.
/// Note that key names are not case sensitive.
///
/// ```c
/// LSTATUS RegOpenKeyTransactedW(
///   HKEY    hKey,
///   LPCWSTR lpSubKey,
///   DWORD   ulOptions,
///   REGSAM  samDesired,
///   PHKEY   phkResult,
///   HANDLE  hTransaction,
///   PVOID   pExtendedParemeter);
/// ```
/// {@category advapi32}
int RegOpenKeyTransacted(
    int hKey,
    Pointer<Utf16> lpSubKey,
    int ulOptions,
    int samDesired,
    Pointer<IntPtr> phkResult,
    int hTransaction,
    Pointer pExtendedParemeter) {
  final _RegOpenKeyTransacted = _advapi32.lookupFunction<
      Int32 Function(
          IntPtr hKey,
          Pointer<Utf16> lpSubKey,
          Uint32 ulOptions,
          Uint32 samDesired,
          Pointer<IntPtr> phkResult,
          IntPtr hTransaction,
          Pointer pExtendedParemeter),
      int Function(
          int hKey,
          Pointer<Utf16> lpSubKey,
          int ulOptions,
          int samDesired,
          Pointer<IntPtr> phkResult,
          int hTransaction,
          Pointer pExtendedParemeter)>('RegOpenKeyTransactedW');
  return _RegOpenKeyTransacted(hKey, lpSubKey, ulOptions, samDesired, phkResult,
      hTransaction, pExtendedParemeter);
}

/// Retrieves a handle to the HKEY_CLASSES_ROOT key for a specified user.
/// The user is identified by an access token.
///
/// ```c
/// LSTATUS RegOpenUserClassesRoot(
///   HANDLE hToken,
///   DWORD  dwOptions,
///   REGSAM samDesired,
///   PHKEY  phkResult);
/// ```
/// {@category advapi32}
int RegOpenUserClassesRoot(
    int hToken, int dwOptions, int samDesired, Pointer<IntPtr> phkResult) {
  final _RegOpenUserClassesRoot = _advapi32.lookupFunction<
      Int32 Function(IntPtr hToken, Uint32 dwOptions, Uint32 samDesired,
          Pointer<IntPtr> phkResult),
      int Function(int hToken, int dwOptions, int samDesired,
          Pointer<IntPtr> phkResult)>('RegOpenUserClassesRoot');
  return _RegOpenUserClassesRoot(hToken, dwOptions, samDesired, phkResult);
}

/// Maps a predefined registry key to the specified registry key.
///
/// ```c
/// LSTATUS RegOverridePredefKey(
///   HKEY hKey,
///   HKEY hNewHKey);
/// ```
/// {@category advapi32}
int RegOverridePredefKey(int hKey, int hNewHKey) {
  final _RegOverridePredefKey = _advapi32.lookupFunction<
      Int32 Function(IntPtr hKey, IntPtr hNewHKey),
      int Function(int hKey, int hNewHKey)>('RegOverridePredefKey');
  return _RegOverridePredefKey(hKey, hNewHKey);
}

/// Retrieves information about the specified registry key.
///
/// ```c
/// LSTATUS RegQueryInfoKeyW(
///   HKEY      hKey,
///   LPWSTR    lpClass,
///   LPDWORD   lpcchClass,
///   LPDWORD   lpReserved,
///   LPDWORD   lpcSubKeys,
///   LPDWORD   lpcbMaxSubKeyLen,
///   LPDWORD   lpcbMaxClassLen,
///   LPDWORD   lpcValues,
///   LPDWORD   lpcbMaxValueNameLen,
///   LPDWORD   lpcbMaxValueLen,
///   LPDWORD   lpcbSecurityDescriptor,
///   PFILETIME lpftLastWriteTime);
/// ```
/// {@category advapi32}
int RegQueryInfoKey(
    int hKey,
    Pointer<Utf16> lpClass,
    Pointer<Uint32> lpcchClass,
    Pointer<Uint32> lpReserved,
    Pointer<Uint32> lpcSubKeys,
    Pointer<Uint32> lpcbMaxSubKeyLen,
    Pointer<Uint32> lpcbMaxClassLen,
    Pointer<Uint32> lpcValues,
    Pointer<Uint32> lpcbMaxValueNameLen,
    Pointer<Uint32> lpcbMaxValueLen,
    Pointer<Uint32> lpcbSecurityDescriptor,
    Pointer<FILETIME> lpftLastWriteTime) {
  final _RegQueryInfoKey = _advapi32.lookupFunction<
      Int32 Function(
          IntPtr hKey,
          Pointer<Utf16> lpClass,
          Pointer<Uint32> lpcchClass,
          Pointer<Uint32> lpReserved,
          Pointer<Uint32> lpcSubKeys,
          Pointer<Uint32> lpcbMaxSubKeyLen,
          Pointer<Uint32> lpcbMaxClassLen,
          Pointer<Uint32> lpcValues,
          Pointer<Uint32> lpcbMaxValueNameLen,
          Pointer<Uint32> lpcbMaxValueLen,
          Pointer<Uint32> lpcbSecurityDescriptor,
          Pointer<FILETIME> lpftLastWriteTime),
      int Function(
          int hKey,
          Pointer<Utf16> lpClass,
          Pointer<Uint32> lpcchClass,
          Pointer<Uint32> lpReserved,
          Pointer<Uint32> lpcSubKeys,
          Pointer<Uint32> lpcbMaxSubKeyLen,
          Pointer<Uint32> lpcbMaxClassLen,
          Pointer<Uint32> lpcValues,
          Pointer<Uint32> lpcbMaxValueNameLen,
          Pointer<Uint32> lpcbMaxValueLen,
          Pointer<Uint32> lpcbSecurityDescriptor,
          Pointer<FILETIME> lpftLastWriteTime)>('RegQueryInfoKeyW');
  return _RegQueryInfoKey(
      hKey,
      lpClass,
      lpcchClass,
      lpReserved,
      lpcSubKeys,
      lpcbMaxSubKeyLen,
      lpcbMaxClassLen,
      lpcValues,
      lpcbMaxValueNameLen,
      lpcbMaxValueLen,
      lpcbSecurityDescriptor,
      lpftLastWriteTime);
}

/// Retrieves the type and data for a list of value names associated with
/// an open registry key.
///
/// ```c
/// LSTATUS RegQueryMultipleValuesW(
///   HKEY     hKey,
///   PVALENTW val_list,
///   DWORD    num_vals,
///   LPWSTR   lpValueBuf,
///   LPDWORD  ldwTotsize);
/// ```
/// {@category advapi32}
int RegQueryMultipleValues(int hKey, Pointer<VALENT> val_list, int num_vals,
    Pointer<Utf16> lpValueBuf, Pointer<Uint32> ldwTotsize) {
  final _RegQueryMultipleValues = _advapi32.lookupFunction<
      Int32 Function(IntPtr hKey, Pointer<VALENT> val_list, Uint32 num_vals,
          Pointer<Utf16> lpValueBuf, Pointer<Uint32> ldwTotsize),
      int Function(
          int hKey,
          Pointer<VALENT> val_list,
          int num_vals,
          Pointer<Utf16> lpValueBuf,
          Pointer<Uint32> ldwTotsize)>('RegQueryMultipleValuesW');
  return _RegQueryMultipleValues(
      hKey, val_list, num_vals, lpValueBuf, ldwTotsize);
}

/// Determines whether reflection has been disabled or enabled for the
/// specified key.
///
/// ```c
/// LONG RegQueryReflectionKey(
///   HKEY hBase,
///   BOOL *bIsReflectionDisabled);
/// ```
/// {@category advapi32}
int RegQueryReflectionKey(int hBase, Pointer<Int32> bIsReflectionDisabled) {
  final _RegQueryReflectionKey = _advapi32.lookupFunction<
      Int32 Function(IntPtr hBase, Pointer<Int32> bIsReflectionDisabled),
      int Function(int hBase,
          Pointer<Int32> bIsReflectionDisabled)>('RegQueryReflectionKey');
  return _RegQueryReflectionKey(hBase, bIsReflectionDisabled);
}

/// Retrieves the data associated with the default or unnamed value of a
/// specified registry key. The data must be a null-terminated string.
///
/// ```c
/// LSTATUS RegQueryValueW(
///   HKEY    hKey,
///   LPCWSTR lpSubKey,
///   LPWSTR  lpData,
///   PLONG   lpcbData);
/// ```
/// {@category advapi32}
int RegQueryValue(int hKey, Pointer<Utf16> lpSubKey, Pointer<Utf16> lpData,
    Pointer<Int32> lpcbData) {
  final _RegQueryValue = _advapi32.lookupFunction<
      Int32 Function(IntPtr hKey, Pointer<Utf16> lpSubKey,
          Pointer<Utf16> lpData, Pointer<Int32> lpcbData),
      int Function(int hKey, Pointer<Utf16> lpSubKey, Pointer<Utf16> lpData,
          Pointer<Int32> lpcbData)>('RegQueryValueW');
  return _RegQueryValue(hKey, lpSubKey, lpData, lpcbData);
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

/// Replaces the file backing a registry key and all its subkeys with
/// another file, so that when the system is next started, the key and
/// subkeys will have the values stored in the new file.
///
/// ```c
/// LSTATUS RegReplaceKeyW(
///   HKEY    hKey,
///   LPCWSTR lpSubKey,
///   LPCWSTR lpNewFile,
///   LPCWSTR lpOldFile);
/// ```
/// {@category advapi32}
int RegReplaceKey(int hKey, Pointer<Utf16> lpSubKey, Pointer<Utf16> lpNewFile,
    Pointer<Utf16> lpOldFile) {
  final _RegReplaceKey = _advapi32.lookupFunction<
      Int32 Function(IntPtr hKey, Pointer<Utf16> lpSubKey,
          Pointer<Utf16> lpNewFile, Pointer<Utf16> lpOldFile),
      int Function(int hKey, Pointer<Utf16> lpSubKey, Pointer<Utf16> lpNewFile,
          Pointer<Utf16> lpOldFile)>('RegReplaceKeyW');
  return _RegReplaceKey(hKey, lpSubKey, lpNewFile, lpOldFile);
}

/// Reads the registry information in a specified file and copies it over
/// the specified key. This registry information may be in the form of a
/// key and multiple levels of subkeys.
///
/// ```c
/// LSTATUS RegRestoreKeyW(
///   HKEY    hKey,
///   LPCWSTR lpFile,
///   DWORD   dwFlags);
/// ```
/// {@category advapi32}
int RegRestoreKey(int hKey, Pointer<Utf16> lpFile, int dwFlags) {
  final _RegRestoreKey = _advapi32.lookupFunction<
      Int32 Function(IntPtr hKey, Pointer<Utf16> lpFile, Uint32 dwFlags),
      int Function(
          int hKey, Pointer<Utf16> lpFile, int dwFlags)>('RegRestoreKeyW');
  return _RegRestoreKey(hKey, lpFile, dwFlags);
}

/// Saves the specified key and all of its subkeys and values to a new
/// file, in the standard format.
///
/// ```c
/// LSTATUS RegSaveKeyW(
///   HKEY                        hKey,
///   LPCWSTR                     lpFile,
///   const LPSECURITY_ATTRIBUTES lpSecurityAttributes);
/// ```
/// {@category advapi32}
int RegSaveKey(int hKey, Pointer<Utf16> lpFile,
    Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes) {
  final _RegSaveKey = _advapi32.lookupFunction<
      Int32 Function(IntPtr hKey, Pointer<Utf16> lpFile,
          Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes),
      int Function(int hKey, Pointer<Utf16> lpFile,
          Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes)>('RegSaveKeyW');
  return _RegSaveKey(hKey, lpFile, lpSecurityAttributes);
}

/// Saves the specified key and all of its subkeys and values to a registry
/// file, in the specified format.
///
/// ```c
/// LSTATUS RegSaveKeyExW(
///   HKEY                        hKey,
///   LPCWSTR                     lpFile,
///   const LPSECURITY_ATTRIBUTES lpSecurityAttributes,
///   DWORD                       Flags);
/// ```
/// {@category advapi32}
int RegSaveKeyEx(int hKey, Pointer<Utf16> lpFile,
    Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes, int Flags) {
  final _RegSaveKeyEx = _advapi32.lookupFunction<
      Int32 Function(IntPtr hKey, Pointer<Utf16> lpFile,
          Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes, Uint32 Flags),
      int Function(
          int hKey,
          Pointer<Utf16> lpFile,
          Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
          int Flags)>('RegSaveKeyExW');
  return _RegSaveKeyEx(hKey, lpFile, lpSecurityAttributes, Flags);
}

/// Sets the data for the specified value in the specified registry key and
/// subkey.
///
/// ```c
/// LSTATUS RegSetKeyValueW(
///   HKEY    hKey,
///   LPCWSTR lpSubKey,
///   LPCWSTR lpValueName,
///   DWORD   dwType,
///   LPCVOID lpData,
///   DWORD   cbData);
/// ```
/// {@category advapi32}
int RegSetKeyValue(int hKey, Pointer<Utf16> lpSubKey,
    Pointer<Utf16> lpValueName, int dwType, Pointer lpData, int cbData) {
  final _RegSetKeyValue = _advapi32.lookupFunction<
      Int32 Function(
          IntPtr hKey,
          Pointer<Utf16> lpSubKey,
          Pointer<Utf16> lpValueName,
          Uint32 dwType,
          Pointer lpData,
          Uint32 cbData),
      int Function(
          int hKey,
          Pointer<Utf16> lpSubKey,
          Pointer<Utf16> lpValueName,
          int dwType,
          Pointer lpData,
          int cbData)>('RegSetKeyValueW');
  return _RegSetKeyValue(hKey, lpSubKey, lpValueName, dwType, lpData, cbData);
}

/// Sets the data for the default or unnamed value of a specified registry
/// key. The data must be a text string.
///
/// ```c
/// LSTATUS RegSetValueW(
///   HKEY    hKey,
///   LPCWSTR lpSubKey,
///   DWORD   dwType,
///   LPCWSTR lpData,
///   DWORD   cbData);
/// ```
/// {@category advapi32}
int RegSetValue(int hKey, Pointer<Utf16> lpSubKey, int dwType,
    Pointer<Utf16> lpData, int cbData) {
  final _RegSetValue = _advapi32.lookupFunction<
      Int32 Function(IntPtr hKey, Pointer<Utf16> lpSubKey, Uint32 dwType,
          Pointer<Utf16> lpData, Uint32 cbData),
      int Function(int hKey, Pointer<Utf16> lpSubKey, int dwType,
          Pointer<Utf16> lpData, int cbData)>('RegSetValueW');
  return _RegSetValue(hKey, lpSubKey, dwType, lpData, cbData);
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

/// Unloads the specified registry key and its subkeys from the registry.
///
/// ```c
/// LSTATUS RegUnLoadKeyW(
///   HKEY    hKey,
///   LPCWSTR lpSubKey);
/// ```
/// {@category advapi32}
int RegUnLoadKey(int hKey, Pointer<Utf16> lpSubKey) {
  final _RegUnLoadKey = _advapi32.lookupFunction<
      Int32 Function(IntPtr hKey, Pointer<Utf16> lpSubKey),
      int Function(int hKey, Pointer<Utf16> lpSubKey)>('RegUnLoadKeyW');
  return _RegUnLoadKey(hKey, lpSubKey);
}
