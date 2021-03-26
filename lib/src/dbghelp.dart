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

final _dbghelp = DynamicLibrary.open('dbghelp.dll');

/// Deallocates all resources associated with the process handle.
///
/// ```c
/// BOOL IMAGEAPI SymCleanup(
///   HANDLE hProcess);
/// ```
/// {@category dbghelp}
int SymCleanup(int hProcess) {
  final _SymCleanup = _dbghelp.lookupFunction<Int32 Function(IntPtr hProcess),
      int Function(int hProcess)>('SymCleanup');
  return _SymCleanup(hProcess);
}

/// Enumerates all symbols in a process.
///
/// ```c
/// BOOL IMAGEAPI SymEnumSymbolsW(
///   HANDLE                          hProcess,
///   ULONG64                         BaseOfDll,
///   PCWSTR                          Mask,
///   PSYM_ENUMERATESYMBOLS_CALLBACKW EnumSymbolsCallback,
///   PVOID                           UserContext);
/// ```
/// {@category dbghelp}
int SymEnumSymbols(
    int hProcess,
    int BaseOfDll,
    Pointer<Utf16> Mask,
    Pointer<NativeFunction<SymEnumSymbolsProc>> EnumSymbolsCallback,
    Pointer UserContext) {
  final _SymEnumSymbols = _dbghelp.lookupFunction<
      Int32 Function(
          IntPtr hProcess,
          Uint64 BaseOfDll,
          Pointer<Utf16> Mask,
          Pointer<NativeFunction<SymEnumSymbolsProc>> EnumSymbolsCallback,
          Pointer UserContext),
      int Function(
          int hProcess,
          int BaseOfDll,
          Pointer<Utf16> Mask,
          Pointer<NativeFunction<SymEnumSymbolsProc>> EnumSymbolsCallback,
          Pointer UserContext)>('SymEnumSymbolsW');
  return _SymEnumSymbols(
      hProcess, BaseOfDll, Mask, EnumSymbolsCallback, UserContext);
}

/// Initializes the symbol handler for a process.
///
/// ```c
/// BOOL IMAGEAPI SymInitializeW(
///   HANDLE hProcess,
///   PCWSTR UserSearchPath,
///   BOOL   fInvadeProcess);
/// ```
/// {@category dbghelp}
int SymInitialize(
    int hProcess, Pointer<Utf16> UserSearchPath, int fInvadeProcess) {
  final _SymInitialize = _dbghelp.lookupFunction<
      Int32 Function(
          IntPtr hProcess, Pointer<Utf16> UserSearchPath, Int32 fInvadeProcess),
      int Function(int hProcess, Pointer<Utf16> UserSearchPath,
          int fInvadeProcess)>('SymInitializeW');
  return _SymInitialize(hProcess, UserSearchPath, fInvadeProcess);
}

/// Loads the symbol table for the specified module.
///
/// ```c
/// DWORD64 IMAGEAPI SymLoadModuleExW(
///   HANDLE        hProcess,
///   HANDLE        hFile,
///   PCWSTR        ImageName,
///   PCWSTR        ModuleName,
///   DWORD64       BaseOfDll,
///   DWORD         DllSize,
///   PMODLOAD_DATA Data,
///   DWORD         Flags);
/// ```
/// {@category dbghelp}
int SymLoadModuleEx(
    int hProcess,
    int hFile,
    Pointer<Utf16> ImageName,
    Pointer<Utf16> ModuleName,
    int BaseOfDll,
    int DllSize,
    Pointer<MODLOAD_DATA> Data,
    int Flags) {
  final _SymLoadModuleEx = _dbghelp.lookupFunction<
      Uint64 Function(
          IntPtr hProcess,
          IntPtr hFile,
          Pointer<Utf16> ImageName,
          Pointer<Utf16> ModuleName,
          Uint64 BaseOfDll,
          Uint32 DllSize,
          Pointer<MODLOAD_DATA> Data,
          Uint32 Flags),
      int Function(
          int hProcess,
          int hFile,
          Pointer<Utf16> ImageName,
          Pointer<Utf16> ModuleName,
          int BaseOfDll,
          int DllSize,
          Pointer<MODLOAD_DATA> Data,
          int Flags)>('SymLoadModuleExW');
  return _SymLoadModuleEx(
      hProcess, hFile, ImageName, ModuleName, BaseOfDll, DllSize, Data, Flags);
}
