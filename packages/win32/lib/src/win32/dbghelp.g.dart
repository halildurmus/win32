// Maps FFI prototypes onto the corresponding Win32 API function calls.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../_internal/dbghelp.g.dart';
import '../allocator.dart';
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
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';

/// Deallocates all resources associated with the process handle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dbghelp/nf-dbghelp-symcleanup>.
///
/// {@category dbghelp}
@pragma('vm:prefer-inline')
bool SymCleanup(int hProcess) => SymCleanup_Wrapper(hProcess) != FALSE;

/// Enumerates all symbols in a process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dbghelp/nf-dbghelp-symenumsymbolsw>.
///
/// {@category dbghelp}
@pragma('vm:prefer-inline')
bool SymEnumSymbols(
  int hProcess,
  int baseOfDll,
  PCWSTR? mask,
  Pointer<NativeFunction<PSYM_ENUMERATESYMBOLS_CALLBACK>> enumSymbolsCallback,
  Pointer? userContext,
) =>
    SymEnumSymbolsW_Wrapper(
      hProcess,
      baseOfDll,
      mask ?? nullptr,
      enumSymbolsCallback,
      userContext ?? nullptr,
    ) !=
    FALSE;

/// Retrieves symbol information for the specified address.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dbghelp/nf-dbghelp-symfromaddrw>.
///
/// {@category dbghelp}
@pragma('vm:prefer-inline')
bool SymFromAddr(
  int hProcess,
  int address,
  Pointer<Uint64>? displacement,
  Pointer<SYMBOL_INFO> symbol,
) =>
    SymFromAddrW_Wrapper(hProcess, address, displacement ?? nullptr, symbol) !=
    FALSE;

/// Retrieves symbol information for the specified managed code token.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dbghelp/nf-dbghelp-symfromtokenw>.
///
/// {@category dbghelp}
@pragma('vm:prefer-inline')
bool SymFromToken(
  int hProcess,
  int base,
  int token,
  Pointer<SYMBOL_INFO> symbol,
) => SymFromTokenW_Wrapper(hProcess, base, token, symbol) != FALSE;

/// Gets whether the specified extended symbol option on or off.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dbghelp/nf-dbghelp-symgetextendedoption>.
///
/// {@category dbghelp}
@pragma('vm:prefer-inline')
bool SymGetExtendedOption(IMAGEHLP_EXTENDED_OPTIONS option) =>
    _SymGetExtendedOption(option) != FALSE;

@Native<BOOL Function(Int32)>(symbol: 'SymGetExtendedOption')
external int _SymGetExtendedOption(int option);

/// Initializes the symbol handler for a process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dbghelp/nf-dbghelp-syminitializew>.
///
/// {@category dbghelp}
@pragma('vm:prefer-inline')
bool SymInitialize(int hProcess, PCWSTR? userSearchPath, bool fInvadeProcess) =>
    SymInitializeW_Wrapper(
      hProcess,
      userSearchPath ?? nullptr,
      fInvadeProcess ? TRUE : FALSE,
    ) !=
    FALSE;

/// Loads the symbol table for the specified module.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dbghelp/nf-dbghelp-symloadmoduleexw>.
///
/// {@category dbghelp}
@pragma('vm:prefer-inline')
int SymLoadModuleEx(
  int hProcess,
  int? hFile,
  PCWSTR? imageName,
  PCWSTR? moduleName,
  int baseOfDll,
  int dllSize,
  Pointer<MODLOAD_DATA>? data,
  SYM_LOAD_FLAGS? flags,
) => SymLoadModuleExW_Wrapper(
  hProcess,
  hFile ?? NULL,
  imageName ?? nullptr,
  moduleName ?? nullptr,
  baseOfDll,
  dllSize,
  data ?? nullptr,
  flags ?? NULL,
);

/// Turns the specified extended symbol option on or off.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dbghelp/nf-dbghelp-symsetextendedoption>.
///
/// {@category dbghelp}
@pragma('vm:prefer-inline')
bool SymSetExtendedOption(IMAGEHLP_EXTENDED_OPTIONS option, bool value) =>
    _SymSetExtendedOption(option, value ? TRUE : FALSE) != FALSE;

@Native<BOOL Function(Int32, BOOL)>(symbol: 'SymSetExtendedOption')
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
@pragma('vm:prefer-inline')
bool SymSetParentWindow(int hwnd) => SymSetParentWindow_Wrapper(hwnd) != FALSE;

/// Sets the local scope to the symbol that matches the specified address.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dbghelp/nf-dbghelp-symsetscopefromaddr>.
///
/// {@category dbghelp}
@pragma('vm:prefer-inline')
bool SymSetScopeFromAddr(int hProcess, int address) =>
    SymSetScopeFromAddr_Wrapper(hProcess, address) != FALSE;

/// Sets the local scope to the symbol that matches the specified index.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dbghelp/nf-dbghelp-symsetscopefromindex>.
///
/// {@category dbghelp}
@pragma('vm:prefer-inline')
bool SymSetScopeFromIndex(int hProcess, int baseOfDll, int index) =>
    SymSetScopeFromIndex_Wrapper(hProcess, baseOfDll, index) != FALSE;

/// Sets the local scope to the symbol that matches the specified address and
/// inline context.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dbghelp/nf-dbghelp-symsetscopefrominlinecontext>.
///
/// {@category dbghelp}
@pragma('vm:prefer-inline')
bool SymSetScopeFromInlineContext(
  int hProcess,
  int address,
  int inlineContext,
) =>
    SymSetScopeFromInlineContext_Wrapper(hProcess, address, inlineContext) !=
    FALSE;

/// Sets the search path for the specified process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dbghelp/nf-dbghelp-symsetsearchpathw>.
///
/// {@category dbghelp}
@pragma('vm:prefer-inline')
bool SymSetSearchPath(int hProcess, PCWSTR? searchPathA) =>
    SymSetSearchPathW_Wrapper(hProcess, searchPathA ?? nullptr) != FALSE;

/// Unloads the symbol table.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dbghelp/nf-dbghelp-symunloadmodule>.
///
/// {@category dbghelp}
@pragma('vm:prefer-inline')
bool SymUnloadModule(int hProcess, int baseOfDll) =>
    SymUnloadModule_Wrapper(hProcess, baseOfDll) != FALSE;

/// Unloads the symbol table.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dbghelp/nf-dbghelp-symunloadmodule64>.
///
/// {@category dbghelp}
@pragma('vm:prefer-inline')
bool SymUnloadModule64(int hProcess, int baseOfDll) =>
    SymUnloadModule64_Wrapper(hProcess, baseOfDll) != FALSE;

/// Undecorates the specified decorated C++ symbol name.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dbghelp/nf-dbghelp-undecoratesymbolnamew>.
///
/// {@category dbghelp}
@pragma('vm:prefer-inline')
int UnDecorateSymbolName(
  PCWSTR name,
  PWSTR outputString,
  int maxStringLength,
  int flags,
) => UnDecorateSymbolNameW_Wrapper(name, outputString, maxStringLength, flags);
