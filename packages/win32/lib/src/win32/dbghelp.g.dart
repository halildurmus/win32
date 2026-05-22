// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Maps FFI prototypes onto the corresponding Win32 API function calls.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: specify_nonobvious_property_types, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';

import '../bstr.dart';
import '../callbacks.g.dart';
import '../com/interface.g.dart';
import '../com/iunknown.g.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../enums.g.dart';
import '../exception.dart';
import '../extensions/pointer.dart';
import '../functions.dart';
import '../hresult.dart';
import '../hstring.dart';
import '../macros.dart';
import '../ntstatus.dart';
import '../pcstr.dart';
import '../pcwstr.dart';
import '../pstr.dart';
import '../pwstr.dart';
import '../rpc_status.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import '../win32_error.dart';
import '../win32_result.dart';

final _dbghelp = DynamicLibrary.open('dbghelp.dll');

/// Deallocates all resources associated with the process handle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dbghelp/nf-dbghelp-symcleanup>.
///
/// {@category dbghelp}
Win32Result<bool> SymCleanup(HANDLE hProcess) {
  resolveGetLastError();
  final result_ = _SymCleanup(hProcess);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SymCleanup = _dbghelp
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'SymCleanup',
    );

/// Enumerates all symbols in a process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dbghelp/nf-dbghelp-symenumsymbolsw>.
///
/// {@category dbghelp}
Win32Result<bool> SymEnumSymbols(
  HANDLE hProcess,
  int baseOfDll,
  PCWSTR? mask,
  Pointer<NativeFunction<PSYM_ENUMERATESYMBOLS_CALLBACK>> enumSymbolsCallback,
  Pointer? userContext,
) {
  resolveGetLastError();
  final result_ = _SymEnumSymbols(
    hProcess,
    baseOfDll,
    mask ?? nullptr,
    enumSymbolsCallback,
    userContext ?? nullptr,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SymEnumSymbols = _dbghelp
    .lookupFunction<
      Int32 Function(
        Pointer,
        Uint64,
        Pointer<Utf16>,
        Pointer<NativeFunction<PSYM_ENUMERATESYMBOLS_CALLBACK>>,
        Pointer,
      ),
      int Function(
        Pointer,
        int,
        Pointer<Utf16>,
        Pointer<NativeFunction<PSYM_ENUMERATESYMBOLS_CALLBACK>>,
        Pointer,
      )
    >('SymEnumSymbolsW');

/// Retrieves symbol information for the specified address.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dbghelp/nf-dbghelp-symfromaddrw>.
///
/// {@category dbghelp}
Win32Result<bool> SymFromAddr(
  HANDLE hProcess,
  int address,
  Pointer<Uint64>? displacement,
  Pointer<SYMBOL_INFO> symbol,
) {
  resolveGetLastError();
  final result_ = _SymFromAddr(
    hProcess,
    address,
    displacement ?? nullptr,
    symbol,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SymFromAddr = _dbghelp
    .lookupFunction<
      Int32 Function(Pointer, Uint64, Pointer<Uint64>, Pointer<SYMBOL_INFO>),
      int Function(Pointer, int, Pointer<Uint64>, Pointer<SYMBOL_INFO>)
    >('SymFromAddrW');

/// Retrieves symbol information for the specified managed code token.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dbghelp/nf-dbghelp-symfromtokenw>.
///
/// {@category dbghelp}
Win32Result<bool> SymFromToken(
  HANDLE hProcess,
  int base,
  int token,
  Pointer<SYMBOL_INFO> symbol,
) {
  resolveGetLastError();
  final result_ = _SymFromToken(hProcess, base, token, symbol);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SymFromToken = _dbghelp
    .lookupFunction<
      Int32 Function(Pointer, Uint64, Uint32, Pointer<SYMBOL_INFO>),
      int Function(Pointer, int, int, Pointer<SYMBOL_INFO>)
    >('SymFromTokenW');

/// Gets whether the specified extended symbol option on or off.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dbghelp/nf-dbghelp-symgetextendedoption>.
///
/// {@category dbghelp}
@pragma('vm:prefer-inline')
bool SymGetExtendedOption(IMAGEHLP_EXTENDED_OPTIONS option) =>
    _SymGetExtendedOption(option) != FALSE;

final _SymGetExtendedOption = _dbghelp
    .lookupFunction<Int32 Function(Int32), int Function(int)>(
      'SymGetExtendedOption',
    );

/// Initializes the symbol handler for a process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dbghelp/nf-dbghelp-syminitializew>.
///
/// {@category dbghelp}
Win32Result<bool> SymInitialize(
  HANDLE hProcess,
  PCWSTR? userSearchPath,
  bool fInvadeProcess,
) {
  resolveGetLastError();
  final result_ = _SymInitialize(
    hProcess,
    userSearchPath ?? nullptr,
    fInvadeProcess ? TRUE : FALSE,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SymInitialize = _dbghelp
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Utf16>, Int32),
      int Function(Pointer, Pointer<Utf16>, int)
    >('SymInitializeW');

/// Loads the symbol table for the specified module.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dbghelp/nf-dbghelp-symloadmoduleexw>.
///
/// {@category dbghelp}
Win32Result<int> SymLoadModuleEx(
  HANDLE hProcess,
  HANDLE? hFile,
  PCWSTR? imageName,
  PCWSTR? moduleName,
  int baseOfDll,
  int dllSize,
  Pointer<MODLOAD_DATA>? data,
  SYM_LOAD_FLAGS? flags,
) {
  resolveGetLastError();
  final result_ = _SymLoadModuleEx(
    hProcess,
    hFile ?? nullptr,
    imageName ?? nullptr,
    moduleName ?? nullptr,
    baseOfDll,
    dllSize,
    data ?? nullptr,
    flags ?? NULL,
  );
  return .new(value: result_, error: GetLastError());
}

final _SymLoadModuleEx = _dbghelp
    .lookupFunction<
      Uint64 Function(
        Pointer,
        Pointer,
        Pointer<Utf16>,
        Pointer<Utf16>,
        Uint64,
        Uint32,
        Pointer<MODLOAD_DATA>,
        Uint32,
      ),
      int Function(
        Pointer,
        Pointer,
        Pointer<Utf16>,
        Pointer<Utf16>,
        int,
        int,
        Pointer<MODLOAD_DATA>,
        int,
      )
    >('SymLoadModuleExW');

/// Turns the specified extended symbol option on or off.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dbghelp/nf-dbghelp-symsetextendedoption>.
///
/// {@category dbghelp}
@pragma('vm:prefer-inline')
bool SymSetExtendedOption(IMAGEHLP_EXTENDED_OPTIONS option, bool value) =>
    _SymSetExtendedOption(option, value ? TRUE : FALSE) != FALSE;

final _SymSetExtendedOption = _dbghelp
    .lookupFunction<Int32 Function(Int32, Int32), int Function(int, int)>(
      'SymSetExtendedOption',
    );

/// Sets the options mask.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dbghelp/nf-dbghelp-symsetoptions>.
///
/// {@category dbghelp}
@pragma('vm:prefer-inline')
int SymSetOptions(int symOptions) => _SymSetOptions(symOptions);

final _SymSetOptions = _dbghelp
    .lookupFunction<Uint32 Function(Uint32), int Function(int)>(
      'SymSetOptions',
    );

/// Sets the window that the caller will use to display a user interface.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dbghelp/nf-dbghelp-symsetparentwindow>.
///
/// {@category dbghelp}
Win32Result<bool> SymSetParentWindow(HWND hwnd) {
  resolveGetLastError();
  final result_ = _SymSetParentWindow(hwnd);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SymSetParentWindow = _dbghelp
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'SymSetParentWindow',
    );

/// Sets the local scope to the symbol that matches the specified address.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dbghelp/nf-dbghelp-symsetscopefromaddr>.
///
/// {@category dbghelp}
Win32Result<bool> SymSetScopeFromAddr(HANDLE hProcess, int address) {
  resolveGetLastError();
  final result_ = _SymSetScopeFromAddr(hProcess, address);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SymSetScopeFromAddr = _dbghelp
    .lookupFunction<
      Int32 Function(Pointer, Uint64),
      int Function(Pointer, int)
    >('SymSetScopeFromAddr');

/// Sets the local scope to the symbol that matches the specified index.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dbghelp/nf-dbghelp-symsetscopefromindex>.
///
/// {@category dbghelp}
Win32Result<bool> SymSetScopeFromIndex(
  HANDLE hProcess,
  int baseOfDll,
  int index,
) {
  resolveGetLastError();
  final result_ = _SymSetScopeFromIndex(hProcess, baseOfDll, index);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SymSetScopeFromIndex = _dbghelp
    .lookupFunction<
      Int32 Function(Pointer, Uint64, Uint32),
      int Function(Pointer, int, int)
    >('SymSetScopeFromIndex');

/// Sets the local scope to the symbol that matches the specified address and
/// inline context.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dbghelp/nf-dbghelp-symsetscopefrominlinecontext>.
///
/// {@category dbghelp}
Win32Result<bool> SymSetScopeFromInlineContext(
  HANDLE hProcess,
  int address,
  int inlineContext,
) {
  resolveGetLastError();
  final result_ = _SymSetScopeFromInlineContext(
    hProcess,
    address,
    inlineContext,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SymSetScopeFromInlineContext = _dbghelp
    .lookupFunction<
      Int32 Function(Pointer, Uint64, Uint32),
      int Function(Pointer, int, int)
    >('SymSetScopeFromInlineContext');

/// Sets the search path for the specified process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dbghelp/nf-dbghelp-symsetsearchpathw>.
///
/// {@category dbghelp}
Win32Result<bool> SymSetSearchPath(HANDLE hProcess, PCWSTR? searchPathA) {
  resolveGetLastError();
  final result_ = _SymSetSearchPath(hProcess, searchPathA ?? nullptr);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SymSetSearchPath = _dbghelp
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Utf16>),
      int Function(Pointer, Pointer<Utf16>)
    >('SymSetSearchPathW');

/// Unloads the symbol table.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dbghelp/nf-dbghelp-symunloadmodule>.
///
/// {@category dbghelp}
Win32Result<bool> SymUnloadModule(HANDLE hProcess, int baseOfDll) {
  resolveGetLastError();
  final result_ = _SymUnloadModule(hProcess, baseOfDll);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SymUnloadModule = _dbghelp
    .lookupFunction<
      Int32 Function(Pointer, Uint32),
      int Function(Pointer, int)
    >('SymUnloadModule');

/// Unloads the symbol table.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dbghelp/nf-dbghelp-symunloadmodule64>.
///
/// {@category dbghelp}
Win32Result<bool> SymUnloadModule64(HANDLE hProcess, int baseOfDll) {
  resolveGetLastError();
  final result_ = _SymUnloadModule64(hProcess, baseOfDll);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SymUnloadModule64 = _dbghelp
    .lookupFunction<
      Int32 Function(Pointer, Uint64),
      int Function(Pointer, int)
    >('SymUnloadModule64');

/// Undecorates the specified decorated C++ symbol name.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dbghelp/nf-dbghelp-undecoratesymbolnamew>.
///
/// {@category dbghelp}
Win32Result<int> UnDecorateSymbolName(
  PCWSTR name,
  PWSTR outputString,
  int maxStringLength,
  int flags,
) {
  resolveGetLastError();
  final result_ = _UnDecorateSymbolName(
    name,
    outputString,
    maxStringLength,
    flags,
  );
  return .new(value: result_, error: GetLastError());
}

final _UnDecorateSymbolName = _dbghelp
    .lookupFunction<
      Uint32 Function(Pointer<Utf16>, Pointer<Utf16>, Uint32, Uint32),
      int Function(Pointer<Utf16>, Pointer<Utf16>, int, int)
    >('UnDecorateSymbolNameW');
