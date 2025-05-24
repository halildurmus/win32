// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, non_constant_identifier_names
// ignore_for_file: constant_identifier_names, camel_case_types
// ignore_for_file: specify_nonobvious_property_types

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../callbacks.dart';
import '../combase.dart';
import '../guid.dart';
import '../structs.g.dart';
import '../variant.dart';

final _api_ms_win_core_path_l1_1_0 = DynamicLibrary.open(
  'api-ms-win-core-path-l1-1-0.dll',
);

/// Converts a path string into a canonical form.
///
/// ```c
/// HRESULT PathAllocCanonicalize(
///   PCWSTR pszPathInm,
///   ULONG dwFlags,
///   PWSTR *ppszPathOut
/// );
/// ```
/// {@category api_ms_win_core_path_l1_1_0}
int PathAllocCanonicalize(
  Pointer<Utf16> pszPathIn,
  int dwFlags,
  Pointer<Pointer<Utf16>> ppszPathOut,
) => _PathAllocCanonicalize(pszPathIn, dwFlags, ppszPathOut);

final _PathAllocCanonicalize = _api_ms_win_core_path_l1_1_0
    .lookupFunction<
      Int32 Function(
        Pointer<Utf16> pszPathIn,
        Uint32 dwFlags,
        Pointer<Pointer<Utf16>> ppszPathOut,
      ),
      int Function(
        Pointer<Utf16> pszPathIn,
        int dwFlags,
        Pointer<Pointer<Utf16>> ppszPathOut,
      )
    >('PathAllocCanonicalize');

/// Concatenates two path fragments into a single path.
///
/// ```c
/// HRESULT PathAllocCombine(
///   PCWSTR pszPathIn,
///   PCWSTR pszMore,
///   ULONG dwFlags,
///   PWSTR *ppszPathOut
/// );
/// ```
/// {@category api_ms_win_core_path_l1_1_0}
int PathAllocCombine(
  Pointer<Utf16> pszPathIn,
  Pointer<Utf16> pszMore,
  int dwFlags,
  Pointer<Pointer<Utf16>> ppszPathOut,
) => _PathAllocCombine(pszPathIn, pszMore, dwFlags, ppszPathOut);

final _PathAllocCombine = _api_ms_win_core_path_l1_1_0
    .lookupFunction<
      Int32 Function(
        Pointer<Utf16> pszPathIn,
        Pointer<Utf16> pszMore,
        Uint32 dwFlags,
        Pointer<Pointer<Utf16>> ppszPathOut,
      ),
      int Function(
        Pointer<Utf16> pszPathIn,
        Pointer<Utf16> pszMore,
        int dwFlags,
        Pointer<Pointer<Utf16>> ppszPathOut,
      )
    >('PathAllocCombine');
