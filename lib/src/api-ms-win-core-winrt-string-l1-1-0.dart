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

final _api_ms_win_core_winrt_string_l1_1_0 =
    DynamicLibrary.open('api-ms-win-core-winrt-string-l1-1-0.dll');

/// Creates a new HSTRING based on the specified source string.
///
/// ```c
/// HRESULT WindowsCreateString(
///   PCNZWCH sourceString,
///   UINT32  length,
///   HSTRING *string
/// );
/// ```
/// {@category winrt}
int WindowsCreateString(
    Pointer<Utf16> sourceString, int length, Pointer<IntPtr> string) {
  final _WindowsCreateString =
      _api_ms_win_core_winrt_string_l1_1_0.lookupFunction<
          Int32 Function(Pointer<Utf16> sourceString, Uint32 length,
              Pointer<IntPtr> string),
          int Function(Pointer<Utf16> sourceString, int length,
              Pointer<IntPtr> string)>('WindowsCreateString');
  return _WindowsCreateString(sourceString, length, string);
}

/// Decrements the reference count of a string buffer.
///
/// ```c
/// HRESULT WindowsDeleteString(
///   HSTRING string
/// );
/// ```
/// {@category winrt}
int WindowsDeleteString(int string) {
  final _WindowsDeleteString = _api_ms_win_core_winrt_string_l1_1_0
      .lookupFunction<Int32 Function(IntPtr string), int Function(int string)>(
          'WindowsDeleteString');
  return _WindowsDeleteString(string);
}

/// Retrieves the backing buffer for the specified string.
///
/// ```c
/// PCWSTR WindowsGetStringRawBuffer(
///   HSTRING string,
///   UINT32  *length
/// );
/// ```
/// {@category winrt}
Pointer<Utf16> WindowsGetStringRawBuffer(int string, Pointer<Uint32> length) {
  final _WindowsGetStringRawBuffer =
      _api_ms_win_core_winrt_string_l1_1_0.lookupFunction<
          Pointer<Utf16> Function(IntPtr string, Pointer<Uint32> length),
          Pointer<Utf16> Function(
              int string, Pointer<Uint32> length)>('WindowsGetStringRawBuffer');
  return _WindowsGetStringRawBuffer(string, length);
}
