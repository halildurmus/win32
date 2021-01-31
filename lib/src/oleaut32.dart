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

/// Converts the MS-DOS representation of time to the date and time
/// representation stored in a variant.
///
/// ```c
/// INT DosDateTimeToVariantTime(
///   USHORT wDosDate,
///   USHORT wDosTime,
///   DOUBLE *pvtime
/// );
/// ```
/// {@category oleaut32}
int DosDateTimeToVariantTime(
    int wDosDate, int wDosTime, Pointer<Double> pvtime) {
  final _DosDateTimeToVariantTime = _oleaut32.lookupFunction<
      Int32 Function(Uint16 wDosDate, Uint16 wDosTime, Pointer<Double> pvtime),
      int Function(int wDosDate, int wDosTime,
          Pointer<Double> pvtime)>('DosDateTimeToVariantTime');
  return _DosDateTimeToVariantTime(wDosDate, wDosTime, pvtime);
}

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

/// Converts a variant from one type to another.
///
/// ```c
/// HRESULT VariantChangeType(
///   VARIANTARG       *pvargDest,
///   const VARIANTARG *pvarSrc,
///   USHORT           wFlags,
///   VARTYPE          vt
/// );
/// ```
/// {@category oleaut32}
int VariantChangeType(Pointer pvargDest, Pointer pvarSrc, int wFlags, int vt) {
  final _VariantChangeType = _oleaut32.lookupFunction<
      Int32 Function(
          Pointer pvargDest, Pointer pvarSrc, Uint16 wFlags, Uint32 vt),
      int Function(Pointer pvargDest, Pointer pvarSrc, int wFlags,
          int vt)>('VariantChangeType');
  return _VariantChangeType(pvargDest, pvarSrc, wFlags, vt);
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

/// Frees the destination variant and makes a copy of the source variant.
///
/// ```c
/// HRESULT VariantCopy(
///   VARIANTARG       *pvargDest,
///   const VARIANTARG *pvargSrc
/// );
/// ```
/// {@category oleaut32}
int VariantCopy(Pointer pvargDest, Pointer pvargSrc) {
  final _VariantCopy = _oleaut32.lookupFunction<
      Int32 Function(Pointer pvargDest, Pointer pvargSrc),
      int Function(Pointer pvargDest, Pointer pvargSrc)>('VariantCopy');
  return _VariantCopy(pvargDest, pvargSrc);
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

/// Converts the variant representation of a date and time to MS-DOS date
/// and time values.
///
/// ```c
/// INT VariantTimeToDosDateTime(
///   DOUBLE vtime,
///   USHORT *pwDosDate,
///   USHORT *pwDosTime
/// );
/// ```
/// {@category oleaut32}
int VariantTimeToDosDateTime(
    double vtime, Pointer<Uint16> pwDosDate, Pointer<Uint16> pwDosTime) {
  final _VariantTimeToDosDateTime = _oleaut32.lookupFunction<
      Int32 Function(
          Double vtime, Pointer<Uint16> pwDosDate, Pointer<Uint16> pwDosTime),
      int Function(double vtime, Pointer<Uint16> pwDosDate,
          Pointer<Uint16> pwDosTime)>('VariantTimeToDosDateTime');
  return _VariantTimeToDosDateTime(vtime, pwDosDate, pwDosTime);
}

/// Converts the variant representation of time to system time values.
///
/// ```c
/// INT VariantTimeToSystemTime(
///   DOUBLE       vtime,
///   LPSYSTEMTIME lpSystemTime
/// );
/// ```
/// {@category oleaut32}
int VariantTimeToSystemTime(double vtime, Pointer<SYSTEMTIME> lpSystemTime) {
  final _VariantTimeToSystemTime = _oleaut32.lookupFunction<
      Int32 Function(Double vtime, Pointer<SYSTEMTIME> lpSystemTime),
      int Function(double vtime,
          Pointer<SYSTEMTIME> lpSystemTime)>('VariantTimeToSystemTime');
  return _VariantTimeToSystemTime(vtime, lpSystemTime);
}
