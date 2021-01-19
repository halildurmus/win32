// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'callbacks.dart';
import 'com/combase.dart';
import 'structs.dart';

final _oleaut32 = DynamicLibrary.open('oleaut32.dll');

/// Retrieves a pointer to a running object that has been registered with
/// OLE.
///
/// ```c
/// HRESULT GetActiveObject(
///   REFCLSID rclsid,
///   void     *pvReserved,
///   IUnknown **ppunk
/// );
/// ```
/// {@category oleaut32}
int GetActiveObject(
    Pointer<GUID> rclsid, Pointer pvReserved, Pointer<Pointer> ppunk) {
  final _GetActiveObject = _oleaut32.lookupFunction<
      Int32 Function(
          Pointer<GUID> rclsid, Pointer pvReserved, Pointer<Pointer> ppunk),
      int Function(Pointer<GUID> rclsid, Pointer pvReserved,
          Pointer<Pointer> ppunk)>('GetActiveObject');
  return _GetActiveObject(rclsid, pvReserved, ppunk);
}

/// Allocates a new string and copies the passed string into it.
///
/// ```c
/// BSTR SysAllocString(
///   const OLECHAR *psz
/// );
/// ```
/// {@category oleaut32}
Pointer SysAllocString(Pointer<Utf16> psz) {
  final _SysAllocString = _oleaut32.lookupFunction<
      Pointer Function(Pointer<Utf16> psz),
      Pointer Function(Pointer<Utf16> psz)>('SysAllocString');
  return _SysAllocString(psz);
}

/// Deallocates a string allocated previously by SysAllocString,
/// SysAllocStringByteLen, SysReAllocString, SysAllocStringLen, or
/// SysReAllocStringLen.
///
/// ```c
/// void SysFreeString(
///   BSTR bstrString
/// );
/// ```
/// {@category oleaut32}
void SysFreeString(Pointer bstrString) {
  final _SysFreeString = _oleaut32.lookupFunction<
      Void Function(Pointer bstrString),
      void Function(Pointer bstrString)>('SysFreeString');
  return _SysFreeString(bstrString);
}

/// Returns the length (in bytes) of a BSTR.
///
/// ```c
/// UINT SysStringByteLen(
///   BSTR bstr
/// );
/// ```
/// {@category oleaut32}
int SysStringByteLen(Pointer bstr) {
  final _SysStringByteLen = _oleaut32.lookupFunction<
      Uint32 Function(Pointer bstr),
      int Function(Pointer bstr)>('SysStringByteLen');
  return _SysStringByteLen(bstr);
}

/// Returns the length of a BSTR.
///
/// ```c
/// UINT SysStringLen(
///   BSTR pbstr
/// );
/// ```
/// {@category oleaut32}
int SysStringLen(Pointer pbstr) {
  final _SysStringLen = _oleaut32.lookupFunction<Uint32 Function(Pointer pbstr),
      int Function(Pointer pbstr)>('SysStringLen');
  return _SysStringLen(pbstr);
}

/// Clears a variant.
///
/// ```c
/// HRESULT VariantClear(
///   VARIANTARG *pvarg
/// );
/// ```
/// {@category oleaut32}
int VariantClear(Pointer pvarg) {
  final _VariantClear = _oleaut32.lookupFunction<Int32 Function(Pointer pvarg),
      int Function(Pointer pvarg)>('VariantClear');
  return _VariantClear(pvarg);
}

/// Initializes a variant.
///
/// ```c
/// void VariantInit(
///   VARIANTARG *pvarg
/// );
/// ```
/// {@category oleaut32}
void VariantInit(Pointer pvarg) {
  final _VariantInit = _oleaut32.lookupFunction<Void Function(Pointer pvarg),
      void Function(Pointer pvarg)>('VariantInit');
  return _VariantInit(pvarg);
}
