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
///   PVOID                           UserContext
/// );
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

/// Retrieves symbol information for the specified address.
///
/// ```c
/// BOOL IMAGEAPI SymFromAddrW(
///   HANDLE        hProcess,
///   DWORD64       Address,
///   PDWORD64      Displacement,
///   PSYMBOL_INFOW Symbol
/// );
/// ```
/// {@category dbghelp}
int SymFromAddr(int hProcess, int Address, Pointer<Uint64> Displacement,
    Pointer<SYMBOL_INFO> Symbol) {
  final _SymFromAddr = _dbghelp.lookupFunction<
      Int32 Function(IntPtr hProcess, Uint64 Address,
          Pointer<Uint64> Displacement, Pointer<SYMBOL_INFO> Symbol),
      int Function(int hProcess, int Address, Pointer<Uint64> Displacement,
          Pointer<SYMBOL_INFO> Symbol)>('SymFromAddrW');
  return _SymFromAddr(hProcess, Address, Displacement, Symbol);
}

/// Retrieves symbol information for the specified managed code token.
///
/// ```c
/// BOOL IMAGEAPI SymFromTokenW(
///   HANDLE        hProcess,
///   DWORD64       Base,
///   DWORD         Token,
///   PSYMBOL_INFOW Symbol
/// );
/// ```
/// {@category dbghelp}
int SymFromToken(
    int hProcess, int Base, int Token, Pointer<SYMBOL_INFO> Symbol) {
  final _SymFromToken = _dbghelp.lookupFunction<
      Int32 Function(IntPtr hProcess, Uint64 Base, Uint32 Token,
          Pointer<SYMBOL_INFO> Symbol),
      int Function(int hProcess, int Base, int Token,
          Pointer<SYMBOL_INFO> Symbol)>('SymFromTokenW');
  return _SymFromToken(hProcess, Base, Token, Symbol);
}

/// Gets whether the specified extended symbol option on or off.
///
/// ```c
/// BOOL IMAGEAPI SymGetExtendedOption(
///   IMAGEHLP_EXTENDED_OPTIONS option
/// );
/// ```
/// {@category dbghelp}
int SymGetExtendedOption(int option) {
  final _SymGetExtendedOption = _dbghelp.lookupFunction<
      Int32 Function(Uint32 option),
      int Function(int option)>('SymGetExtendedOption');
  return _SymGetExtendedOption(option);
}

/// Initializes the symbol handler for a process.
///
/// ```c
/// BOOL IMAGEAPI SymInitializeW(
///   HANDLE hProcess,
///   PCWSTR UserSearchPath,
///   BOOL   fInvadeProcess
/// );
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

/// Turns the specified extended symbol option on or off.
///
/// ```c
/// BOOL IMAGEAPI SymSetExtendedOption(
///   IMAGEHLP_EXTENDED_OPTIONS option,
///   BOOL                      value
/// );
/// ```
/// {@category dbghelp}
int SymSetExtendedOption(int option, int value) {
  final _SymSetExtendedOption = _dbghelp.lookupFunction<
      Int32 Function(Uint32 option, Int32 value),
      int Function(int option, int value)>('SymSetExtendedOption');
  return _SymSetExtendedOption(option, value);
}

/// Sets the options mask.
///
/// ```c
/// DWORD IMAGEAPI SymSetOptions(
///   DWORD SymOptions
/// );
/// ```
/// {@category dbghelp}
int SymSetOptions(int SymOptions) {
  final _SymSetOptions = _dbghelp.lookupFunction<
      Uint32 Function(Uint32 SymOptions),
      int Function(int SymOptions)>('SymSetOptions');
  return _SymSetOptions(SymOptions);
}

/// Sets the window that the caller will use to display a user interface.
///
/// ```c
/// BOOL IMAGEAPI SymSetParentWindow(
///   HWND hwnd
/// );
/// ```
/// {@category dbghelp}
int SymSetParentWindow(int hwnd) {
  final _SymSetParentWindow = _dbghelp.lookupFunction<
      Int32 Function(IntPtr hwnd),
      int Function(int hwnd)>('SymSetParentWindow');
  return _SymSetParentWindow(hwnd);
}

/// Sets the local scope to the symbol that matches the specified address.
///
/// ```c
/// BOOL IMAGEAPI SymSetScopeFromAddr(
///   HANDLE  hProcess,
///   ULONG64 Address
/// );
/// ```
/// {@category dbghelp}
int SymSetScopeFromAddr(int hProcess, int Address) {
  final _SymSetScopeFromAddr = _dbghelp.lookupFunction<
      Int32 Function(IntPtr hProcess, Uint64 Address),
      int Function(int hProcess, int Address)>('SymSetScopeFromAddr');
  return _SymSetScopeFromAddr(hProcess, Address);
}

/// Sets the local scope to the symbol that matches the specified index.
///
/// ```c
/// BOOL IMAGEAPI SymSetScopeFromIndex(
///   HANDLE  hProcess,
///   ULONG64 BaseOfDll,
///   DWORD   Index
/// );
/// ```
/// {@category dbghelp}
int SymSetScopeFromIndex(int hProcess, int BaseOfDll, int Index) {
  final _SymSetScopeFromIndex = _dbghelp.lookupFunction<
      Int32 Function(IntPtr hProcess, Uint64 BaseOfDll, Uint32 Index),
      int Function(
          int hProcess, int BaseOfDll, int Index)>('SymSetScopeFromIndex');
  return _SymSetScopeFromIndex(hProcess, BaseOfDll, Index);
}

/// Sets the local scope to the symbol that matches the specified address
/// and inline context.
///
/// ```c
/// BOOL IMAGEAPI SymSetScopeFromInlineContext(
///   HANDLE  hProcess,
///   ULONG64 Address,
///   ULONG   InlineContext
/// );
/// ```
/// {@category dbghelp}
int SymSetScopeFromInlineContext(int hProcess, int Address, int InlineContext) {
  final _SymSetScopeFromInlineContext = _dbghelp.lookupFunction<
      Int32 Function(IntPtr hProcess, Uint64 Address, Uint32 InlineContext),
      int Function(int hProcess, int Address,
          int InlineContext)>('SymSetScopeFromInlineContext');
  return _SymSetScopeFromInlineContext(hProcess, Address, InlineContext);
}

/// Sets the search path for the specified process.
///
/// ```c
/// BOOL IMAGEAPI SymSetSearchPathW(
///   HANDLE hProcess,
///   PCWSTR SearchPath
/// );
/// ```
/// {@category dbghelp}
int SymSetSearchPath(int hProcess, Pointer<Utf16> SearchPathA) {
  final _SymSetSearchPath = _dbghelp.lookupFunction<
      Int32 Function(IntPtr hProcess, Pointer<Utf16> SearchPathA),
      int Function(
          int hProcess, Pointer<Utf16> SearchPathA)>('SymSetSearchPathW');
  return _SymSetSearchPath(hProcess, SearchPathA);
}

/// Unloads the symbol table.
///
/// ```c
/// BOOL IMAGEAPI SymUnloadModule64(
///   HANDLE  hProcess,
///   DWORD64 BaseOfDll
/// );
/// ```
/// {@category dbghelp}
int SymUnloadModule64(int hProcess, int BaseOfDll) {
  final _SymUnloadModule64 = _dbghelp.lookupFunction<
      Int32 Function(IntPtr hProcess, Uint64 BaseOfDll),
      int Function(int hProcess, int BaseOfDll)>('SymUnloadModule64');
  return _SymUnloadModule64(hProcess, BaseOfDll);
}

/// Undecorates the specified decorated C++ symbol name.
///
/// ```c
/// DWORD IMAGEAPI UnDecorateSymbolNameW(
///   PCWSTR name,
///   PWSTR  outputString,
///   DWORD  maxStringLength,
///   DWORD  flags
/// );
/// ```
/// {@category dbghelp}
int UnDecorateSymbolName(Pointer<Utf16> name, Pointer<Utf16> outputString,
    int maxStringLength, int flags) {
  final _UnDecorateSymbolName = _dbghelp.lookupFunction<
      Uint32 Function(Pointer<Utf16> name, Pointer<Utf16> outputString,
          Uint32 maxStringLength, Uint32 flags),
      int Function(Pointer<Utf16> name, Pointer<Utf16> outputString,
          int maxStringLength, int flags)>('UnDecorateSymbolNameW');
  return _UnDecorateSymbolName(name, outputString, maxStringLength, flags);
}
