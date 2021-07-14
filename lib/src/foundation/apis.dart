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
// import 'enums.dart';
// import 'structs.dart';

final _oleaut32 = DynamicLibrary.open('OLEAUT32.dll');

int SysAddRefString(Pointer<Utf16> bstrString) => _SysAddRefString(bstrString);

late final _SysAddRefString = _oleaut32.lookupFunction<
    Int32 Function(Pointer<Utf16> bstrString),
    int Function(Pointer<Utf16> bstrString)>('SysAddRefString');

Pointer<Utf16> SysAllocString(Pointer<Utf16> psz) => _SysAllocString(psz);

late final _SysAllocString = _oleaut32.lookupFunction<
    Pointer<Utf16> Function(Pointer<Utf16> psz),
    Pointer<Utf16> Function(Pointer<Utf16> psz)>('SysAllocString');

Pointer<Utf16> SysAllocStringByteLen(Pointer<Utf8> psz, int len) =>
    _SysAllocStringByteLen(psz, len);

late final _SysAllocStringByteLen = _oleaut32.lookupFunction<
    Pointer<Utf16> Function(Pointer<Utf8> psz, Uint32 len),
    Pointer<Utf16> Function(
        Pointer<Utf8> psz, int len)>('SysAllocStringByteLen');

Pointer<Utf16> SysAllocStringLen(Pointer<Utf16> strIn, int ui) =>
    _SysAllocStringLen(strIn, ui);

late final _SysAllocStringLen = _oleaut32.lookupFunction<
    Pointer<Utf16> Function(Pointer<Utf16> strIn, Uint32 ui),
    Pointer<Utf16> Function(Pointer<Utf16> strIn, int ui)>('SysAllocStringLen');

void SysFreeString(Pointer<Utf16> bstrString) => _SysFreeString(bstrString);

late final _SysFreeString = _oleaut32.lookupFunction<
    Void Function(Pointer<Utf16> bstrString),
    void Function(Pointer<Utf16> bstrString)>('SysFreeString');

int SysReAllocString(Pointer<Pointer<Utf16>> pbstr, Pointer<Utf16> psz) =>
    _SysReAllocString(pbstr, psz);

late final _SysReAllocString = _oleaut32.lookupFunction<
    Int32 Function(Pointer<Pointer<Utf16>> pbstr, Pointer<Utf16> psz),
    int Function(
        Pointer<Pointer<Utf16>> pbstr, Pointer<Utf16> psz)>('SysReAllocString');

int SysReAllocStringLen(
        Pointer<Pointer<Utf16>> pbstr, Pointer<Utf16> psz, int len) =>
    _SysReAllocStringLen(pbstr, psz, len);

late final _SysReAllocStringLen = _oleaut32.lookupFunction<
    Int32 Function(
        Pointer<Pointer<Utf16>> pbstr, Pointer<Utf16> psz, Uint32 len),
    int Function(Pointer<Pointer<Utf16>> pbstr, Pointer<Utf16> psz,
        int len)>('SysReAllocStringLen');

void SysReleaseString(Pointer<Utf16> bstrString) =>
    _SysReleaseString(bstrString);

late final _SysReleaseString = _oleaut32.lookupFunction<
    Void Function(Pointer<Utf16> bstrString),
    void Function(Pointer<Utf16> bstrString)>('SysReleaseString');

int SysStringByteLen(Pointer<Utf16> bstr) => _SysStringByteLen(bstr);

late final _SysStringByteLen = _oleaut32.lookupFunction<
    Uint32 Function(Pointer<Utf16> bstr),
    int Function(Pointer<Utf16> bstr)>('SysStringByteLen');

int SysStringLen(Pointer<Utf16> pbstr) => _SysStringLen(pbstr);

late final _SysStringLen = _oleaut32.lookupFunction<
    Uint32 Function(Pointer<Utf16> pbstr),
    int Function(Pointer<Utf16> pbstr)>('SysStringLen');
