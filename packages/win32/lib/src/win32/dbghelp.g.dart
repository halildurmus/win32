// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Maps FFI prototypes onto the corresponding Win32 API function calls.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';

import '../_internal/dbghelp.g.dart';
import '../_internal/win32.dart';
import '../bstr.dart';
import '../callbacks.g.dart';
import '../com/interface.g.dart';
import '../com/iunknown.g.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../enums.g.dart';
import '../exception.dart';
import '../extensions/pointer.dart';
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

/// Deallocates all resources associated with the process handle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dbghelp/nf-dbghelp-symcleanup>.
///
/// {@category dbghelp}
Win32Result<bool> SymCleanup(HANDLE hProcess) {
  final result_ = SymCleanup_Wrapper(hProcess);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

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
  final result_ = SymEnumSymbolsW_Wrapper(
    hProcess,
    baseOfDll,
    mask ?? nullptr,
    enumSymbolsCallback,
    userContext ?? nullptr,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

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
  final result_ = SymFromAddrW_Wrapper(
    hProcess,
    address,
    displacement ?? nullptr,
    symbol,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

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
  final result_ = SymFromTokenW_Wrapper(hProcess, base, token, symbol);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Gets whether the specified extended symbol option on or off.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dbghelp/nf-dbghelp-symgetextendedoption>.
///
/// {@category dbghelp}
@pragma('vm:prefer-inline')
bool SymGetExtendedOption(IMAGEHLP_EXTENDED_OPTIONS option) =>
    _SymGetExtendedOption(option) != FALSE;

@Native<Int32 Function(Int32)>(symbol: 'SymGetExtendedOption')
external int _SymGetExtendedOption(int option);

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
  final result_ = SymInitializeW_Wrapper(
    hProcess,
    userSearchPath ?? nullptr,
    fInvadeProcess ? TRUE : FALSE,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

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
  final result_ = SymLoadModuleExW_Wrapper(
    hProcess,
    hFile ?? nullptr,
    imageName ?? nullptr,
    moduleName ?? nullptr,
    baseOfDll,
    dllSize,
    data ?? nullptr,
    flags ?? NULL,
  );
  return Win32Result(value: result_.value.u64, error: result_.error);
}

/// Turns the specified extended symbol option on or off.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dbghelp/nf-dbghelp-symsetextendedoption>.
///
/// {@category dbghelp}
@pragma('vm:prefer-inline')
bool SymSetExtendedOption(IMAGEHLP_EXTENDED_OPTIONS option, bool value) =>
    _SymSetExtendedOption(option, value ? TRUE : FALSE) != FALSE;

@Native<Int32 Function(Int32, Int32)>(symbol: 'SymSetExtendedOption')
external int _SymSetExtendedOption(int option, int value);

/// Sets the options mask.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dbghelp/nf-dbghelp-symsetoptions>.
///
/// {@category dbghelp}
@pragma('vm:prefer-inline')
int SymSetOptions(int symOptions) => _SymSetOptions(symOptions);

@Native<Uint32 Function(Uint32)>(symbol: 'SymSetOptions')
external int _SymSetOptions(int symOptions);

/// Sets the window that the caller will use to display a user interface.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dbghelp/nf-dbghelp-symsetparentwindow>.
///
/// {@category dbghelp}
Win32Result<bool> SymSetParentWindow(HWND hwnd) {
  final result_ = SymSetParentWindow_Wrapper(hwnd);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Sets the local scope to the symbol that matches the specified address.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dbghelp/nf-dbghelp-symsetscopefromaddr>.
///
/// {@category dbghelp}
Win32Result<bool> SymSetScopeFromAddr(HANDLE hProcess, int address) {
  final result_ = SymSetScopeFromAddr_Wrapper(hProcess, address);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

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
  final result_ = SymSetScopeFromIndex_Wrapper(hProcess, baseOfDll, index);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

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
  final result_ = SymSetScopeFromInlineContext_Wrapper(
    hProcess,
    address,
    inlineContext,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Sets the search path for the specified process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dbghelp/nf-dbghelp-symsetsearchpathw>.
///
/// {@category dbghelp}
Win32Result<bool> SymSetSearchPath(HANDLE hProcess, PCWSTR? searchPathA) {
  final result_ = SymSetSearchPathW_Wrapper(hProcess, searchPathA ?? nullptr);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Unloads the symbol table.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dbghelp/nf-dbghelp-symunloadmodule>.
///
/// {@category dbghelp}
Win32Result<bool> SymUnloadModule(HANDLE hProcess, int baseOfDll) {
  final result_ = SymUnloadModule_Wrapper(hProcess, baseOfDll);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Unloads the symbol table.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dbghelp/nf-dbghelp-symunloadmodule64>.
///
/// {@category dbghelp}
Win32Result<bool> SymUnloadModule64(HANDLE hProcess, int baseOfDll) {
  final result_ = SymUnloadModule64_Wrapper(hProcess, baseOfDll);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

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
  final result_ = UnDecorateSymbolNameW_Wrapper(
    name,
    outputString,
    maxStringLength,
    flags,
  );
  return Win32Result(value: result_.value.u32, error: result_.error);
}
