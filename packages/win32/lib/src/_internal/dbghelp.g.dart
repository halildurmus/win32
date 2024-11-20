// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Wrappers for Win32 API functions that wrap the native APIs and preserve the
// result of GetLastError(), making it easier to debug issues and handle errors
// reliably.
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
import 'win32.dart' show NativeWin32Result;

@internal
@Native<NativeWin32Result Function(HANDLE)>()
external NativeWin32Result SymCleanup_Wrapper(int hProcess);

@internal
@Native<
  NativeWin32Result Function(
    HANDLE,
    Uint64,
    PCWSTR,
    Pointer<NativeFunction<PSYM_ENUMERATESYMBOLS_CALLBACK>>,
    Pointer,
  )
>()
external NativeWin32Result SymEnumSymbolsW_Wrapper(
  int hProcess,
  int baseOfDll,
  PCWSTR mask,
  Pointer<NativeFunction<PSYM_ENUMERATESYMBOLS_CALLBACK>> enumSymbolsCallback,
  Pointer userContext,
);

@internal
@Native<
  NativeWin32Result Function(
    HANDLE,
    Uint64,
    Pointer<Uint64>,
    Pointer<SYMBOL_INFO>,
  )
>()
external NativeWin32Result SymFromAddrW_Wrapper(
  int hProcess,
  int address,
  Pointer<Uint64> displacement,
  Pointer<SYMBOL_INFO> symbol,
);

@internal
@Native<
  NativeWin32Result Function(HANDLE, Uint64, Uint32, Pointer<SYMBOL_INFO>)
>()
external NativeWin32Result SymFromTokenW_Wrapper(
  int hProcess,
  int base,
  int token,
  Pointer<SYMBOL_INFO> symbol,
);

@internal
@Native<NativeWin32Result Function(HANDLE, PCWSTR, BOOL)>()
external NativeWin32Result SymInitializeW_Wrapper(
  int hProcess,
  PCWSTR userSearchPath,
  int fInvadeProcess,
);

@internal
@Native<
  NativeWin32Result Function(
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
external NativeWin32Result SymLoadModuleExW_Wrapper(
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
@Native<NativeWin32Result Function(HWND)>()
external NativeWin32Result SymSetParentWindow_Wrapper(int hwnd);

@internal
@Native<NativeWin32Result Function(HANDLE, Uint64)>()
external NativeWin32Result SymSetScopeFromAddr_Wrapper(
  int hProcess,
  int address,
);

@internal
@Native<NativeWin32Result Function(HANDLE, Uint64, Uint32)>()
external NativeWin32Result SymSetScopeFromIndex_Wrapper(
  int hProcess,
  int baseOfDll,
  int index,
);

@internal
@Native<NativeWin32Result Function(HANDLE, Uint64, Uint32)>()
external NativeWin32Result SymSetScopeFromInlineContext_Wrapper(
  int hProcess,
  int address,
  int inlineContext,
);

@internal
@Native<NativeWin32Result Function(HANDLE, PCWSTR)>()
external NativeWin32Result SymSetSearchPathW_Wrapper(
  int hProcess,
  PCWSTR searchPathA,
);

@internal
@Native<NativeWin32Result Function(HANDLE, Uint32)>()
external NativeWin32Result SymUnloadModule_Wrapper(int hProcess, int baseOfDll);

@internal
@Native<NativeWin32Result Function(HANDLE, Uint64)>()
external NativeWin32Result SymUnloadModule64_Wrapper(
  int hProcess,
  int baseOfDll,
);

@internal
@Native<NativeWin32Result Function(PCWSTR, PWSTR, Uint32, Uint32)>()
external NativeWin32Result UnDecorateSymbolNameW_Wrapper(
  PCWSTR name,
  PWSTR outputString,
  int maxStringLength,
  int flags,
);
