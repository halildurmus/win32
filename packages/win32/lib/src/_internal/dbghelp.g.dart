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

import 'package:ffi/ffi.dart';
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
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result SymCleanup_Wrapper(Pointer hProcess);

@internal
@Native<
  NativeWin32Result Function(
    Pointer,
    Uint64,
    Pointer<Utf16>,
    Pointer<NativeFunction<PSYM_ENUMERATESYMBOLS_CALLBACK>>,
    Pointer,
  )
>()
external NativeWin32Result SymEnumSymbolsW_Wrapper(
  Pointer hProcess,
  int baseOfDll,
  Pointer<Utf16> mask,
  Pointer<NativeFunction<PSYM_ENUMERATESYMBOLS_CALLBACK>> enumSymbolsCallback,
  Pointer userContext,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer,
    Uint64,
    Pointer<Uint64>,
    Pointer<SYMBOL_INFO>,
  )
>()
external NativeWin32Result SymFromAddrW_Wrapper(
  Pointer hProcess,
  int address,
  Pointer<Uint64> displacement,
  Pointer<SYMBOL_INFO> symbol,
);

@internal
@Native<
  NativeWin32Result Function(Pointer, Uint64, Uint32, Pointer<SYMBOL_INFO>)
>()
external NativeWin32Result SymFromTokenW_Wrapper(
  Pointer hProcess,
  int base,
  int token,
  Pointer<SYMBOL_INFO> symbol,
);

@internal
@Native<NativeWin32Result Function(Pointer, Pointer<Utf16>, Int32)>()
external NativeWin32Result SymInitializeW_Wrapper(
  Pointer hProcess,
  Pointer<Utf16> userSearchPath,
  int fInvadeProcess,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer,
    Pointer,
    Pointer<Utf16>,
    Pointer<Utf16>,
    Uint64,
    Uint32,
    Pointer<MODLOAD_DATA>,
    Uint32,
  )
>()
external NativeWin32Result SymLoadModuleExW_Wrapper(
  Pointer hProcess,
  Pointer hFile,
  Pointer<Utf16> imageName,
  Pointer<Utf16> moduleName,
  int baseOfDll,
  int dllSize,
  Pointer<MODLOAD_DATA> data,
  int flags,
);

@internal
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result SymSetParentWindow_Wrapper(Pointer hwnd);

@internal
@Native<NativeWin32Result Function(Pointer, Uint64)>()
external NativeWin32Result SymSetScopeFromAddr_Wrapper(
  Pointer hProcess,
  int address,
);

@internal
@Native<NativeWin32Result Function(Pointer, Uint64, Uint32)>()
external NativeWin32Result SymSetScopeFromIndex_Wrapper(
  Pointer hProcess,
  int baseOfDll,
  int index,
);

@internal
@Native<NativeWin32Result Function(Pointer, Uint64, Uint32)>()
external NativeWin32Result SymSetScopeFromInlineContext_Wrapper(
  Pointer hProcess,
  int address,
  int inlineContext,
);

@internal
@Native<NativeWin32Result Function(Pointer, Pointer<Utf16>)>()
external NativeWin32Result SymSetSearchPathW_Wrapper(
  Pointer hProcess,
  Pointer<Utf16> searchPathA,
);

@internal
@Native<NativeWin32Result Function(Pointer, Uint32)>()
external NativeWin32Result SymUnloadModule_Wrapper(
  Pointer hProcess,
  int baseOfDll,
);

@internal
@Native<NativeWin32Result Function(Pointer, Uint64)>()
external NativeWin32Result SymUnloadModule64_Wrapper(
  Pointer hProcess,
  int baseOfDll,
);

@internal
@Native<
  NativeWin32Result Function(Pointer<Utf16>, Pointer<Utf16>, Uint32, Uint32)
>()
external NativeWin32Result UnDecorateSymbolNameW_Wrapper(
  Pointer<Utf16> name,
  Pointer<Utf16> outputString,
  int maxStringLength,
  int flags,
);
