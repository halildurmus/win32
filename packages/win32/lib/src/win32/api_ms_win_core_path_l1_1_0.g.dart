// Maps FFI prototypes onto the corresponding Win32 API function calls.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../allocator.dart';
import '../bstr.dart';
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

/// Converts a path string into a canonical form.
///
/// This function differs from PathCchCanonicalize and PathCchCanonicalizeEx in
/// that it returns the result on the heap.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/pathcch/nf-pathcch-pathalloccanonicalize>.
///
/// {@category api_ms_win_core_path_l1_1_0}
PWSTR PathAllocCanonicalize(PCWSTR pszPathIn, PATHCCH_OPTIONS dwFlags) {
  final ppszPathOut = loggingCalloc<PWSTR>();
  final hr$ = HRESULT(_PathAllocCanonicalize(pszPathIn, dwFlags, ppszPathOut));
  if (hr$.isError) {
    free(ppszPathOut);
    throw WindowsException(hr$);
  }
  final result$ = ppszPathOut.value;
  free(ppszPathOut);
  return result$;
}

@Native<Int32 Function(PCWSTR, Uint32, Pointer<PWSTR>)>(
  symbol: 'PathAllocCanonicalize',
)
external int _PathAllocCanonicalize(
  PCWSTR pszPathIn,
  int dwFlags,
  Pointer<PWSTR> ppszPathOut,
);

/// Concatenates two path fragments into a single path.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/pathcch/nf-pathcch-pathalloccombine>.
///
/// {@category api_ms_win_core_path_l1_1_0}
PWSTR PathAllocCombine(
  PCWSTR? pszPathIn,
  PCWSTR? pszMore,
  PATHCCH_OPTIONS dwFlags,
) {
  final ppszPathOut = loggingCalloc<PWSTR>();
  final hr$ = HRESULT(
    _PathAllocCombine(
      pszPathIn ?? nullptr,
      pszMore ?? nullptr,
      dwFlags,
      ppszPathOut,
    ),
  );
  if (hr$.isError) {
    free(ppszPathOut);
    throw WindowsException(hr$);
  }
  final result$ = ppszPathOut.value;
  free(ppszPathOut);
  return result$;
}

@Native<Int32 Function(PCWSTR, PCWSTR, Uint32, Pointer<PWSTR>)>(
  symbol: 'PathAllocCombine',
)
external int _PathAllocCombine(
  PCWSTR pszPathIn,
  PCWSTR pszMore,
  int dwFlags,
  Pointer<PWSTR> ppszPathOut,
);
