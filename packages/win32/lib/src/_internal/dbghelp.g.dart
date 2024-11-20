// Wrappers for Win32 API functions.
//
// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// ignore_for_file: non_constant_identifier_names, unused_import

@DefaultAsset('package:win32/win32.dart')
library;

import 'dart:ffi';

import 'package:meta/meta.dart';

import '../callbacks.g.dart';
import '../functions.dart';
import '../guid.dart';
import '../pcstr.dart';
import '../pcwstr.dart';
import '../structs.g.dart';
import '../types.dart';

@internal
@Native<BOOL Function(HANDLE)>()
external int SymCleanup_Wrapper(int hProcess);

@internal
@Native<
  BOOL Function(
    HANDLE,
    Uint64,
    PCWSTR,
    Pointer<NativeFunction<PSYM_ENUMERATESYMBOLS_CALLBACK>>,
    Pointer,
  )
>()
external int SymEnumSymbolsW_Wrapper(
  int hProcess,
  int baseOfDll,
  PCWSTR mask,
  Pointer<NativeFunction<PSYM_ENUMERATESYMBOLS_CALLBACK>> enumSymbolsCallback,
  Pointer userContext,
);

@internal
@Native<BOOL Function(HANDLE, Uint64, Pointer<Uint64>, Pointer<SYMBOL_INFO>)>()
external int SymFromAddrW_Wrapper(
  int hProcess,
  int address,
  Pointer<Uint64> displacement,
  Pointer<SYMBOL_INFO> symbol,
);

@internal
@Native<BOOL Function(HANDLE, Uint64, Uint32, Pointer<SYMBOL_INFO>)>()
external int SymFromTokenW_Wrapper(
  int hProcess,
  int base,
  int token,
  Pointer<SYMBOL_INFO> symbol,
);

@internal
@Native<BOOL Function(HANDLE, PCWSTR, BOOL)>()
external int SymInitializeW_Wrapper(
  int hProcess,
  PCWSTR userSearchPath,
  int fInvadeProcess,
);

@internal
@Native<
  Uint64 Function(
    HANDLE,
    HANDLE,
    PCWSTR,
    PCWSTR,
    Uint64,
    Uint32,
    Pointer<MODLOAD_DATA>,
    Uint32,
  )
>()
external int SymLoadModuleExW_Wrapper(
  int hProcess,
  int hFile,
  PCWSTR imageName,
  PCWSTR moduleName,
  int baseOfDll,
  int dllSize,
  Pointer<MODLOAD_DATA> data,
  int flags,
);

@internal
@Native<BOOL Function(HWND)>()
external int SymSetParentWindow_Wrapper(int hwnd);

@internal
@Native<BOOL Function(HANDLE, Uint64)>()
external int SymSetScopeFromAddr_Wrapper(int hProcess, int address);

@internal
@Native<BOOL Function(HANDLE, Uint64, Uint32)>()
external int SymSetScopeFromIndex_Wrapper(
  int hProcess,
  int baseOfDll,
  int index,
);

@internal
@Native<BOOL Function(HANDLE, Uint64, Uint32)>()
external int SymSetScopeFromInlineContext_Wrapper(
  int hProcess,
  int address,
  int inlineContext,
);

@internal
@Native<BOOL Function(HANDLE, PCWSTR)>()
external int SymSetSearchPathW_Wrapper(int hProcess, PCWSTR searchPathA);

@internal
@Native<BOOL Function(HANDLE, Uint32)>()
external int SymUnloadModule_Wrapper(int hProcess, int baseOfDll);

@internal
@Native<BOOL Function(HANDLE, Uint64)>()
external int SymUnloadModule64_Wrapper(int hProcess, int baseOfDll);

@internal
@Native<Uint32 Function(PCWSTR, PWSTR, Uint32, Uint32)>()
external int UnDecorateSymbolNameW_Wrapper(
  PCWSTR name,
  PWSTR outputString,
  int maxStringLength,
  int flags,
);
