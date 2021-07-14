// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../callbacks.dart';
import '../combase.dart';

final _oleaut32 = DynamicLibrary.open('OLEAUT32.dll');

int SysAddRefString(Pointer<Utf16> bstrString) {
  final _SysAddRefString = _oleaut32.lookupFunction<
      Int32 Function(Pointer<Utf16> bstrString),
      int Function(Pointer<Utf16> bstrString)>('SysAddRefString');
  return _SysAddRefString(bstrString);
}

Pointer<Utf16> SysAllocString(Pointer<Utf16> psz) {
  final _SysAllocString = _oleaut32.lookupFunction<
      Pointer<Utf16> Function(Pointer<Utf16> psz),
      Pointer<Utf16> Function(Pointer<Utf16> psz)>('SysAllocString');
  return _SysAllocString(psz);
}

Pointer<Utf16> SysAllocStringByteLen(Pointer<Utf8> psz, int len) {
  final _SysAllocStringByteLen = _oleaut32.lookupFunction<
      Pointer<Utf16> Function(Pointer<Utf8> psz, Uint32 len),
      Pointer<Utf16> Function(
          Pointer<Utf8> psz, int len)>('SysAllocStringByteLen');
  return _SysAllocStringByteLen(psz, len);
}

Pointer<Utf16> SysAllocStringLen(Pointer<Utf16> strIn, int ui) {
  final _SysAllocStringLen = _oleaut32.lookupFunction<
      Pointer<Utf16> Function(Pointer<Utf16> strIn, Uint32 ui),
      Pointer<Utf16> Function(
          Pointer<Utf16> strIn, int ui)>('SysAllocStringLen');
  return _SysAllocStringLen(strIn, ui);
}

void SysFreeString(Pointer<Utf16> bstrString) {
  final _SysFreeString = _oleaut32.lookupFunction<
      Void Function(Pointer<Utf16> bstrString),
      void Function(Pointer<Utf16> bstrString)>('SysFreeString');
  return _SysFreeString(bstrString);
}

int SysReAllocString(Pointer<Pointer<Utf16>> pbstr, Pointer<Utf16> psz) {
  final _SysReAllocString = _oleaut32.lookupFunction<
      Int32 Function(Pointer<Pointer<Utf16>> pbstr, Pointer<Utf16> psz),
      int Function(Pointer<Pointer<Utf16>> pbstr,
          Pointer<Utf16> psz)>('SysReAllocString');
  return _SysReAllocString(pbstr, psz);
}

int SysReAllocStringLen(
    Pointer<Pointer<Utf16>> pbstr, Pointer<Utf16> psz, int len) {
  final _SysReAllocStringLen = _oleaut32.lookupFunction<
      Int32 Function(
          Pointer<Pointer<Utf16>> pbstr, Pointer<Utf16> psz, Uint32 len),
      int Function(Pointer<Pointer<Utf16>> pbstr, Pointer<Utf16> psz,
          int len)>('SysReAllocStringLen');
  return _SysReAllocStringLen(pbstr, psz, len);
}

void SysReleaseString(Pointer<Utf16> bstrString) {
  final _SysReleaseString = _oleaut32.lookupFunction<
      Void Function(Pointer<Utf16> bstrString),
      void Function(Pointer<Utf16> bstrString)>('SysReleaseString');
  return _SysReleaseString(bstrString);
}

int SysStringByteLen(Pointer<Utf16> bstr) {
  final _SysStringByteLen = _oleaut32.lookupFunction<
      Uint32 Function(Pointer<Utf16> bstr),
      int Function(Pointer<Utf16> bstr)>('SysStringByteLen');
  return _SysStringByteLen(bstr);
}

int SysStringLen(Pointer<Utf16> pbstr) {
  final _SysStringLen = _oleaut32.lookupFunction<
      Uint32 Function(Pointer<Utf16> pbstr),
      int Function(Pointer<Utf16> pbstr)>('SysStringLen');
  return _SysStringLen(pbstr);
}
