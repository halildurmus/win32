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

final _psapi = DynamicLibrary.open('psapi.dll');

/// Retrieves the process identifier for each process object in the system.
///
/// ```c
/// BOOL EnumProcesses(
///   DWORD   *lpidProcess,
///   DWORD   cb,
///   LPDWORD lpcbNeeded
/// );
/// ```
/// {@category psapi}
final EnumProcesses = _psapi.lookupFunction<
    Int32 Function(
        Pointer<Uint32> lpidProcess, Uint32 cb, Pointer<Uint32> lpcbNeeded),
    int Function(Pointer<Uint32> lpidProcess, int cb,
        Pointer<Uint32> lpcbNeeded)>('EnumProcesses');

/// Retrieves a handle for each module in the specified process.
///
/// ```c
/// BOOL EnumProcessModules(
///   HANDLE  hProcess,
///   HMODULE *lphModule,
///   DWORD   cb,
///   LPDWORD lpcbNeeded
/// );
/// ```
/// {@category psapi}
final EnumProcessModules = _psapi.lookupFunction<
    Int32 Function(IntPtr hProcess, Pointer<IntPtr> lphModule, Uint32 cb,
        Pointer<Uint32> lpcbNeeded),
    int Function(int hProcess, Pointer<IntPtr> lphModule, int cb,
        Pointer<Uint32> lpcbNeeded)>('EnumProcessModules');

/// Retrieves a handle for each module in the specified process that meets
/// the specified filter criteria.
///
/// ```c
/// BOOL EnumProcessModulesEx(
///   HANDLE  hProcess,
///   HMODULE *lphModule,
///   DWORD   cb,
///   LPDWORD lpcbNeeded,
///   DWORD   dwFilterFlag
/// );
/// ```
/// {@category psapi}
final EnumProcessModulesEx = _psapi.lookupFunction<
    Int32 Function(IntPtr hProcess, Pointer<IntPtr> lphModule, Uint32 cb,
        Pointer<Uint32> lpcbNeeded, Uint32 dwFilterFlag),
    int Function(int hProcess, Pointer<IntPtr> lphModule, int cb,
        Pointer<Uint32> lpcbNeeded, int dwFilterFlag)>('EnumProcessModulesEx');

/// Retrieves the base name of the specified module.
///
/// ```c
/// DWORD GetModuleBaseNameW(
///   HANDLE  hProcess,
///   HMODULE hModule,
///   LPWSTR  lpBaseName,
///   DWORD   nSize
/// );
/// ```
/// {@category psapi}
final GetModuleBaseName = _psapi.lookupFunction<
    Uint32 Function(IntPtr hProcess, IntPtr hModule, Pointer<Utf16> lpBaseName,
        Uint32 nSize),
    int Function(int hProcess, int hModule, Pointer<Utf16> lpBaseName,
        int nSize)>('GetModuleBaseNameW');

/// Retrieves the fully qualified path for the file containing the
/// specified module.
///
/// ```c
/// DWORD GetModuleFileNameExW(
///   HANDLE  hProcess,
///   HMODULE hModule,
///   LPWSTR  lpFilename,
///   DWORD   nSize
/// );
/// ```
/// {@category psapi}
final GetModuleFileNameEx = _psapi.lookupFunction<
    Uint32 Function(IntPtr hProcess, IntPtr hModule, Pointer<Utf16> lpFilename,
        Uint32 nSize),
    int Function(int hProcess, int hModule, Pointer<Utf16> lpFilename,
        int nSize)>('GetModuleFileNameExW');
