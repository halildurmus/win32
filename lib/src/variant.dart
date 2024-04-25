// Copyright (c) 2020, Dart | Windows.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of COM variant structs used in the Win32 API.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'com/idispatch.dart';
import 'com/iunknown.dart';
import 'combase.dart';
import 'constants.dart';
import 'guid.dart';
import 'structs.g.dart';
import 'types.dart';
import 'win32/oleaut32.g.dart';

// struct tagVARIANT
//    {
//        VARTYPE vt;
//        WORD wReserved1;
//        WORD wReserved2;
//        WORD wReserved3;
//        union
//            {
//            LONGLONG llVal;
//            LONG lVal;
//            BYTE bVal;
//            SHORT iVal;
//            ...
//    } ;

sealed class _VARIANT_Anonymous_3 extends Struct {
  external Pointer pvRecord;
  external VTablePointer pRecInfo;
}

sealed class _VARIANT_Anonymous_2 extends Union {
  @Int64()
  external int llVal;
  @Int32()
  external int lVal;
  @Uint8()
  external int bVal;
  @Int16()
  external int iVal;
  @Float()
  external double fltVal;
  @Double()
  external double dblVal;
  @Int16()
  external int boolVal;
  @Int16()
  // ignore: unused_field
  external int __OBSOLETE__VARIANT_BOOL;
  @Int32()
  external int scode;
  @Int64()
  external int cyVal;
  @Double()
  external double date;
  external Pointer<Utf16> bstrVal;
  external VTablePointer punkVal;
  external VTablePointer pdispVal;
  external Pointer/*<SAFEARRAY>*/ parray;
  external Pointer<Uint8> pbVal;
  external Pointer<Int16> piVal;
  external Pointer<Int32> plVal;
  external Pointer<Int64> pllVal;
  external Pointer<Float> pfltVal;
  external Pointer<Double> pdblVal;
  external Pointer<Int16> pboolVal;
  // ignore: unused_field
  external Pointer<Int16> __OBSOLETE__VARIANT_PBOOL;
  external Pointer<Int32> pscode;
  external Pointer/*<CY>*/ pcyVal;
  external Pointer<Double> pdate;
  external Pointer<Pointer<Utf16>> pbstrVal;
  external Pointer<Pointer<COMObject>> ppunkVal;
  external Pointer<Pointer<COMObject>> ppdispVal;
  external Pointer<Pointer/*<SAFEARRAY>*/ > pparray;
  external Pointer<VARIANT> pvarVal;
  external Pointer byref;
  @Int8()
  external int cVal;
  @Uint16()
  external int uiVal;
  @Uint32()
  external int ulVal;
  @Uint64()
  external int ullVal;
  @Int32()
  external int intVal;
  @Uint32()
  external int uintVal;
  external Pointer<DECIMAL> pdecVal;
  external Pointer<Int8> pcVal;
  external Pointer<Uint16> puiVal;
  external Pointer<Uint32> pulVal;
  external Pointer<Uint64> pullVal;
  external Pointer<Int32> pintVal;
  external Pointer<Uint32> puintVal;
  external _VARIANT_Anonymous_3 __VARIANT_NAME_4;
}

sealed class _VARIANT_Anonymous_1 extends Struct {
  @Uint16()
  external int vt;
  @Uint16()
  external int wReserved1;
  @Uint16()
  external int wReserved2;
  @Uint16()
  external int wReserved3;
  external _VARIANT_Anonymous_2 __VARIANT_NAME_3;
}

sealed class _VARIANT_Anonymous_0 extends Union {
  external _VARIANT_Anonymous_1 __VARIANT_NAME_2;
  external DECIMAL decVal;
}

/// The VARIANT type is used in Win32 to represent a dynamic type. It is
/// represented as a struct containing a union of the types that could be
/// stored.
///
/// VARIANTs must be initialized with [VariantInit] before their use.
///
/// {@category struct}
base class VARIANT extends Struct {
  external _VARIANT_Anonymous_0 __VARIANT_NAME_1;

  int get vt => __VARIANT_NAME_1.__VARIANT_NAME_2.vt;
  set vt(int value) => __VARIANT_NAME_1.__VARIANT_NAME_2.vt = value;

  int get wReserved1 => __VARIANT_NAME_1.__VARIANT_NAME_2.wReserved1;
  set wReserved1(int value) =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.wReserved1 = value;

  int get wReserved2 => __VARIANT_NAME_1.__VARIANT_NAME_2.wReserved2;
  set wReserved2(int value) =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.wReserved2 = value;

  int get wReserved3 => __VARIANT_NAME_1.__VARIANT_NAME_2.wReserved3;
  set wReserved3(int value) =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.wReserved3 = value;

  // LONGLONG -> __int64 -> Int64
  int get llVal => __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.llVal;
  set llVal(int value) =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.llVal = value;

  // LONG -> long -> Int32
  int get lVal => __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.lVal;
  set lVal(int value) =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.lVal = value;

  // BYTE -> unsigned char -> Uint8
  int get bVal => __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.bVal;
  set bVal(int value) =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.bVal = value;

  // SHORT -> short -> Int16
  int get iVal => __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.iVal;
  set iVal(int value) =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.iVal = value;

  // FLOAT -> float -> double
  double get fltVal =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.fltVal;
  set fltVal(double value) =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.fltVal = value;

  // DOUBLE -> double -> double
  double get dblVal =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.dblVal;
  set dblVal(double value) =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.dblVal = value;

  // VARIANT_BOOL -> Int16
  bool get boolVal =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.boolVal ==
      VARIANT_TRUE;
  set boolVal(bool value) =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.boolVal =
          value ? VARIANT_TRUE : VARIANT_FALSE;

  // SCODE -> LONG -> long -> Int32
  int get scode => __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.scode;
  set lscodeVal(int value) =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.scode = value;

  // CY -> Int64
  int get cyVal => __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.cyVal;
  set cyVal(int value) =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.cyVal = value;

  // DATE -> double -> double
  double get date => __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.date;
  set date(double value) =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.date = value;

  // BSTR -> OLECHAR* -> Pointer<Utf16>
  Pointer<Utf16> get bstrVal =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.bstrVal;
  set bstrVal(Pointer<Utf16> value) =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.bstrVal = value;

  // IUnknown
  IUnknown get punkVal => IUnknown(calloc<COMObject>()
    ..ref.lpVtbl = __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.punkVal);
  set punkVal(IUnknown value) =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.punkVal =
          value.ptr.ref.lpVtbl;

  // IDispatch
  IDispatch get pdispVal => IDispatch(calloc<COMObject>()
    ..ref.lpVtbl = __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.pdispVal);
  set pdispVal(IDispatch value) =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.pdispVal =
          value.ptr.ref.lpVtbl;

  Pointer get parray =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.parray;
  set parray(Pointer value) =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.parray = value;

  // BYTE*
  Pointer<Uint8> get pbVal =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.pbVal;
  set pbVal(Pointer<Uint8> value) =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.pbVal = value;

  // SHORT*
  Pointer<Int16> get piVal =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.piVal;
  set piVal(Pointer<Int16> value) =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.piVal = value;

  // LONG*
  Pointer<Int32> get plVal =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.plVal;
  set plVal(Pointer<Int32> value) =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.plVal = value;

  // LONGLONG*
  Pointer<Int64> get pllVal =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.pllVal;
  set pllVal(Pointer<Int64> value) =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.pllVal = value;

  // FLOAT*
  Pointer<Float> get pfltVal =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.pfltVal;
  set pfltVal(Pointer<Float> value) =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.pfltVal = value;

  // DOUBLE*
  Pointer<Double> get pdblVal =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.pdblVal;
  set pdblVal(Pointer<Double> value) =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.pdblVal = value;

  Pointer<Int16> get pboolVal =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.pboolVal;
  set pboolVal(Pointer<Int16> value) =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.pboolVal = value;

  Pointer<Int32> get pscode =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.pscode;
  set pscode(Pointer<Int32> value) =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.pscode = value;

  Pointer get pcyVal =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.pcyVal;
  set pcyVal(Pointer value) =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.pcyVal = value;

  Pointer<Double> get pdate =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.pdate;
  set pdate(Pointer<Double> value) =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.pdate = value;

  Pointer<Pointer<Utf16>> get pbstrVal =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.pbstrVal;
  set pbstrVal(Pointer<Pointer<Utf16>> value) =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.pbstrVal = value;

  Pointer<Pointer<COMObject>> get ppunkVal =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.ppunkVal;
  set ppunkVal(Pointer<Pointer<COMObject>> value) =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.ppunkVal = value;

  Pointer<Pointer<COMObject>> get ppdispVal =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.ppdispVal;
  set ppdispVal(Pointer<Pointer<COMObject>> value) =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.ppdispVal = value;

  Pointer<Pointer> get pparray =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.pparray;
  set pparray(Pointer<Pointer> value) =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.pparray = value;

  Pointer<VARIANT> get pvarVal =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.pvarVal;
  set pvarVal(Pointer<VARIANT> value) =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.pvarVal = value;

  Pointer get byref => __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.byref;
  set byref(Pointer value) =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.byref = value;

  // CHAR -> char -> Int8
  int get cVal => __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.cVal;
  set cVal(int value) =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.cVal = value;

  // USHORT -> unsigned short -> Uint16
  int get uiVal => __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.uiVal;
  set uiVal(int value) =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.uiVal = value;

  // ULONG -> unsigned long -> Uint32
  int get ulVal => __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.ulVal;
  set ulVal(int value) =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.ulVal = value;

  // ULONGLONG -> unsigned long long -> Uint64
  BigInt get ullVal {
    final src = __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.ullVal;
    final hi = ((src & 0xFFFFFFFF00000000) >> 32)
        .toUnsigned(32)
        .toRadixString(16)
        .padLeft(8, '0');
    final lo = (src & 0x00000000FFFFFFFF).toRadixString(16).padLeft(8, '0');
    return BigInt.parse('$hi$lo', radix: 16);
  }

  set ullVal(BigInt value) {
    final hi = ((value & BigInt.from(0xFFFFFFFF00000000)) >> 32).toInt();
    final lo = (value & BigInt.from(0x00000000FFFFFFFF)).toInt();
    __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.ullVal = (hi << 32) + lo;
  }

  // INT -> int -> Int32
  int get intVal => __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.intVal;
  set intVal(int value) =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.intVal = value;

  // UINT -> unsigned int -> Uint32
  int get uintVal => __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.uintVal;
  set uintVal(int value) =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.uintVal = value;

  Pointer<DECIMAL> get pdecVal =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.pdecVal;
  set pdecVal(Pointer<DECIMAL> value) =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.pdecVal = value;

  Pointer<Int8> get pcVal =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.pcVal;
  set pcVal(Pointer<Int8> value) =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.pcVal = value;

  Pointer<Uint16> get puiVal =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.puiVal;
  set puiVal(Pointer<Uint16> value) =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.puiVal = value;

  Pointer<Uint32> get pulVal =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.pulVal;
  set pulVal(Pointer<Uint32> value) =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.pulVal = value;

  Pointer<Uint64> get pullVal =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.pullVal;
  set pullVal(Pointer<Uint64> value) =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.pullVal = value;

  Pointer<Int32> get pintVal =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.pintVal;
  set pintVal(Pointer<Int32> value) =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.pintVal = value;

  Pointer<Uint32> get puintVal =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.puintVal;
  set puintVal(Pointer<Uint32> value) =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.puintVal = value;

  Pointer get pvRecord => __VARIANT_NAME_1
      .__VARIANT_NAME_2.__VARIANT_NAME_3.__VARIANT_NAME_4.pvRecord;
  set pvRecord(Pointer value) => __VARIANT_NAME_1
      .__VARIANT_NAME_2.__VARIANT_NAME_3.__VARIANT_NAME_4.pvRecord = value;

  Pointer<COMObject> get pRecInfo => calloc<COMObject>()
    ..ref.lpVtbl = __VARIANT_NAME_1
        .__VARIANT_NAME_2.__VARIANT_NAME_3.__VARIANT_NAME_4.pRecInfo;
  set pRecInfo(Pointer<COMObject> value) => __VARIANT_NAME_1.__VARIANT_NAME_2
      .__VARIANT_NAME_3.__VARIANT_NAME_4.pRecInfo = value.ref.lpVtbl;
}

/// Used in the ReadMultiple and WriteMultiple methods of IPropertyStorage to
/// define the type tag and the value of a property in a property set.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/propidlbase/ns-propidlbase-propvariant>.
///
/// {@category struct}
base class PROPVARIANT extends Struct {
  external PROPVARIANT_0 Anonymous;
}

sealed class PROPVARIANT_0 extends Union {
  external PROPVARIANT_0_0 Anonymous;

  external DECIMAL decVal;
}

extension PROPVARIANT_0_Extension on PROPVARIANT {
  PROPVARIANT_0_0 get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(PROPVARIANT_0_0 value) => this.Anonymous.Anonymous = value;

  DECIMAL get decVal => this.Anonymous.decVal;
  set decVal(DECIMAL value) => this.Anonymous.decVal = value;
}

sealed class PROPVARIANT_0_0 extends Struct {
  @Uint16()
  external int vt;

  @Uint16()
  external int wReserved1;

  @Uint16()
  external int wReserved2;

  @Uint16()
  external int wReserved3;

  external PROPVARIANT_0_0_0 Anonymous;
}

extension PROPVARIANT_0_0_Extension on PROPVARIANT {
  int get vt => this.Anonymous.Anonymous.vt;
  set vt(int value) => this.Anonymous.Anonymous.vt = value;

  PROPVARIANT_0_0_0 get Anonymous => this.Anonymous.Anonymous.Anonymous;
  set Anonymous(PROPVARIANT_0_0_0 value) =>
      this.Anonymous.Anonymous.Anonymous = value;
}

sealed class PROPVARIANT_0_0_0 extends Union {
  @Int8()
  external int cVal;

  @Uint8()
  external int bVal;

  @Int16()
  external int iVal;

  @Uint16()
  external int uiVal;

  @Int32()
  external int lVal;

  @Uint32()
  external int ulVal;

  @Int32()
  external int intVal;

  @Uint32()
  external int uintVal;

  @Int64()
  external int hVal;

  @Uint64()
  external int uhVal;

  @Float()
  external double fltVal;

  @Double()
  external double dblVal;

  @Int16()
  external int boolVal;

  @Int16()
  // ignore: unused_field
  external int __OBSOLETE__VARIANT_BOOL;

  @Int32()
  external int scode;

  external CY cyVal;

  @Double()
  external double date;

  external FILETIME filetime;

  external Pointer<GUID> puuid;

  external Pointer<CLIPDATA> pclipdata;

  external Pointer<Utf16> bstrVal;

  external BSTRBLOB bstrblobVal;

  external BLOB blob;

  external Pointer<Utf8> pszVal;

  external Pointer<Utf16> pwszVal;

  external VTablePointer punkVal;

  external VTablePointer pdispVal;

  external VTablePointer pStream;

  external VTablePointer pStorage;

  external Pointer<VERSIONEDSTREAM> pVersionedStream;

  external Pointer<SAFEARRAY> parray;

  external CAC cac;

  external CAUB caub;

  external CAI cai;

  external CAUI caui;

  external CAL cal;

  external CAUL caul;

  external CAH cah;

  external CAUH cauh;

  external CAFLT caflt;

  external CADBL cadbl;

  external CABOOL cabool;

  external CASCODE cascode;

  external CACY cacy;

  external CADATE cadate;

  external CAFILETIME cafiletime;

  external CACLSID cauuid;

  external CACLIPDATA caclipdata;

  external CABSTR cabstr;

  external CABSTRBLOB cabstrblob;

  external CALPSTR calpstr;

  external CALPWSTR calpwstr;

  external CAPROPVARIANT capropvar;

  external Pointer<Utf8> pcVal;

  external Pointer<Uint8> pbVal;

  external Pointer<Int16> piVal;

  external Pointer<Uint16> puiVal;

  external Pointer<Int32> plVal;

  external Pointer<Uint32> pulVal;

  external Pointer<Int32> pintVal;

  external Pointer<Uint32> puintVal;

  external Pointer<Float> pfltVal;

  external Pointer<Double> pdblVal;

  external Pointer<VARIANT_BOOL> pboolVal;

  external Pointer<DECIMAL> pdecVal;

  external Pointer<Int32> pscode;

  external Pointer<CY> pcyVal;

  external Pointer<Double> pdate;

  external Pointer<Pointer<Utf16>> pbstrVal;

  external Pointer<Pointer<COMObject>> ppunkVal;

  external Pointer<Pointer<COMObject>> ppdispVal;

  external Pointer<Pointer<SAFEARRAY>> pparray;

  external Pointer<PROPVARIANT> pvarVal;
}

extension PROPVARIANT_0_0_0_Extension on PROPVARIANT {
  int get cVal => this.Anonymous.Anonymous.Anonymous.cVal;
  set cVal(int value) => this.Anonymous.Anonymous.Anonymous.cVal = value;

  int get bVal => this.Anonymous.Anonymous.Anonymous.bVal;
  set bVal(int value) => this.Anonymous.Anonymous.Anonymous.bVal = value;

  int get iVal => this.Anonymous.Anonymous.Anonymous.iVal;
  set iVal(int value) => this.Anonymous.Anonymous.Anonymous.iVal = value;

  int get uiVal => this.Anonymous.Anonymous.Anonymous.uiVal;
  set uiVal(int value) => this.Anonymous.Anonymous.Anonymous.uiVal = value;

  int get lVal => this.Anonymous.Anonymous.Anonymous.lVal;
  set lVal(int value) => this.Anonymous.Anonymous.Anonymous.lVal = value;

  int get ulVal => this.Anonymous.Anonymous.Anonymous.ulVal;
  set ulVal(int value) => this.Anonymous.Anonymous.Anonymous.ulVal = value;

  int get intVal => this.Anonymous.Anonymous.Anonymous.intVal;
  set intVal(int value) => this.Anonymous.Anonymous.Anonymous.intVal = value;

  int get uintVal => this.Anonymous.Anonymous.Anonymous.uintVal;
  set uintVal(int value) => this.Anonymous.Anonymous.Anonymous.uintVal = value;

  int get hVal => this.Anonymous.Anonymous.Anonymous.hVal;
  set hVal(int value) => this.Anonymous.Anonymous.Anonymous.hVal = value;

  int get uhVal => this.Anonymous.Anonymous.Anonymous.uhVal;
  set uhVal(int value) => this.Anonymous.Anonymous.Anonymous.uhVal = value;

  double get fltVal => this.Anonymous.Anonymous.Anonymous.fltVal;
  set fltVal(double value) => this.Anonymous.Anonymous.Anonymous.fltVal = value;

  double get dblVal => this.Anonymous.Anonymous.Anonymous.dblVal;
  set dblVal(double value) => this.Anonymous.Anonymous.Anonymous.dblVal = value;

  int get boolVal => this.Anonymous.Anonymous.Anonymous.boolVal;
  set boolVal(int value) => this.Anonymous.Anonymous.Anonymous.boolVal = value;

  int get scode => this.Anonymous.Anonymous.Anonymous.scode;
  set scode(int value) => this.Anonymous.Anonymous.Anonymous.scode = value;

  CY get cyVal => this.Anonymous.Anonymous.Anonymous.cyVal;
  set cyVal(CY value) => this.Anonymous.Anonymous.Anonymous.cyVal = value;

  double get date => this.Anonymous.Anonymous.Anonymous.date;
  set date(double value) => this.Anonymous.Anonymous.Anonymous.date = value;

  FILETIME get filetime => this.Anonymous.Anonymous.Anonymous.filetime;
  set filetime(FILETIME value) =>
      this.Anonymous.Anonymous.Anonymous.filetime = value;

  Pointer<GUID> get puuid => this.Anonymous.Anonymous.Anonymous.puuid;
  set puuid(Pointer<GUID> value) =>
      this.Anonymous.Anonymous.Anonymous.puuid = value;

  Pointer<CLIPDATA> get pclipdata =>
      this.Anonymous.Anonymous.Anonymous.pclipdata;
  set pclipdata(Pointer<CLIPDATA> value) =>
      this.Anonymous.Anonymous.Anonymous.pclipdata = value;

  Pointer<Utf16> get bstrVal => this.Anonymous.Anonymous.Anonymous.bstrVal;
  set bstrVal(Pointer<Utf16> value) =>
      this.Anonymous.Anonymous.Anonymous.bstrVal = value;

  BSTRBLOB get bstrblobVal => this.Anonymous.Anonymous.Anonymous.bstrblobVal;
  set bstrblobVal(BSTRBLOB value) =>
      this.Anonymous.Anonymous.Anonymous.bstrblobVal = value;

  BLOB get blob => this.Anonymous.Anonymous.Anonymous.blob;
  set blob(BLOB value) => this.Anonymous.Anonymous.Anonymous.blob = value;

  Pointer<Utf8> get pszVal => this.Anonymous.Anonymous.Anonymous.pszVal;
  set pszVal(Pointer<Utf8> value) =>
      this.Anonymous.Anonymous.Anonymous.pszVal = value;

  Pointer<Utf16> get pwszVal => this.Anonymous.Anonymous.Anonymous.pwszVal;
  set pwszVal(Pointer<Utf16> value) =>
      this.Anonymous.Anonymous.Anonymous.pwszVal = value;

  VTablePointer get punkVal => this.Anonymous.Anonymous.Anonymous.punkVal;
  set punkVal(VTablePointer value) =>
      this.Anonymous.Anonymous.Anonymous.punkVal = value;

  VTablePointer get pdispVal => this.Anonymous.Anonymous.Anonymous.pdispVal;
  set pdispVal(VTablePointer value) =>
      this.Anonymous.Anonymous.Anonymous.pdispVal = value;

  VTablePointer get pStream => this.Anonymous.Anonymous.Anonymous.pStream;
  set pStream(VTablePointer value) =>
      this.Anonymous.Anonymous.Anonymous.pStream = value;

  VTablePointer get pStorage => this.Anonymous.Anonymous.Anonymous.pStorage;
  set pStorage(VTablePointer value) =>
      this.Anonymous.Anonymous.Anonymous.pStorage = value;

  Pointer<VERSIONEDSTREAM> get pVersionedStream =>
      this.Anonymous.Anonymous.Anonymous.pVersionedStream;
  set pVersionedStream(Pointer<VERSIONEDSTREAM> value) =>
      this.Anonymous.Anonymous.Anonymous.pVersionedStream = value;

  Pointer<SAFEARRAY> get parray => this.Anonymous.Anonymous.Anonymous.parray;
  set parray(Pointer<SAFEARRAY> value) =>
      this.Anonymous.Anonymous.Anonymous.parray = value;

  CAC get cac => this.Anonymous.Anonymous.Anonymous.cac;
  set cac(CAC value) => this.Anonymous.Anonymous.Anonymous.cac = value;

  CAUB get caub => this.Anonymous.Anonymous.Anonymous.caub;
  set caub(CAUB value) => this.Anonymous.Anonymous.Anonymous.caub = value;

  CAI get cai => this.Anonymous.Anonymous.Anonymous.cai;
  set cai(CAI value) => this.Anonymous.Anonymous.Anonymous.cai = value;

  CAUI get caui => this.Anonymous.Anonymous.Anonymous.caui;
  set caui(CAUI value) => this.Anonymous.Anonymous.Anonymous.caui = value;

  CAL get cal => this.Anonymous.Anonymous.Anonymous.cal;
  set cal(CAL value) => this.Anonymous.Anonymous.Anonymous.cal = value;

  CAUL get caul => this.Anonymous.Anonymous.Anonymous.caul;
  set caul(CAUL value) => this.Anonymous.Anonymous.Anonymous.caul = value;

  CAH get cah => this.Anonymous.Anonymous.Anonymous.cah;
  set cah(CAH value) => this.Anonymous.Anonymous.Anonymous.cah = value;

  CAUH get cauh => this.Anonymous.Anonymous.Anonymous.cauh;
  set cauh(CAUH value) => this.Anonymous.Anonymous.Anonymous.cauh = value;

  CAFLT get caflt => this.Anonymous.Anonymous.Anonymous.caflt;
  set caflt(CAFLT value) => this.Anonymous.Anonymous.Anonymous.caflt = value;

  CADBL get cadbl => this.Anonymous.Anonymous.Anonymous.cadbl;
  set cadbl(CADBL value) => this.Anonymous.Anonymous.Anonymous.cadbl = value;

  CABOOL get cabool => this.Anonymous.Anonymous.Anonymous.cabool;
  set cabool(CABOOL value) => this.Anonymous.Anonymous.Anonymous.cabool = value;

  CASCODE get cascode => this.Anonymous.Anonymous.Anonymous.cascode;
  set cascode(CASCODE value) =>
      this.Anonymous.Anonymous.Anonymous.cascode = value;

  CACY get cacy => this.Anonymous.Anonymous.Anonymous.cacy;
  set cacy(CACY value) => this.Anonymous.Anonymous.Anonymous.cacy = value;

  CADATE get cadate => this.Anonymous.Anonymous.Anonymous.cadate;
  set cadate(CADATE value) => this.Anonymous.Anonymous.Anonymous.cadate = value;

  CAFILETIME get cafiletime => this.Anonymous.Anonymous.Anonymous.cafiletime;
  set cafiletime(CAFILETIME value) =>
      this.Anonymous.Anonymous.Anonymous.cafiletime = value;

  CACLSID get cauuid => this.Anonymous.Anonymous.Anonymous.cauuid;
  set cauuid(CACLSID value) =>
      this.Anonymous.Anonymous.Anonymous.cauuid = value;

  CACLIPDATA get caclipdata => this.Anonymous.Anonymous.Anonymous.caclipdata;
  set caclipdata(CACLIPDATA value) =>
      this.Anonymous.Anonymous.Anonymous.caclipdata = value;

  CABSTR get cabstr => this.Anonymous.Anonymous.Anonymous.cabstr;
  set cabstr(CABSTR value) => this.Anonymous.Anonymous.Anonymous.cabstr = value;

  CABSTRBLOB get cabstrblob => this.Anonymous.Anonymous.Anonymous.cabstrblob;
  set cabstrblob(CABSTRBLOB value) =>
      this.Anonymous.Anonymous.Anonymous.cabstrblob = value;

  CALPSTR get calpstr => this.Anonymous.Anonymous.Anonymous.calpstr;
  set calpstr(CALPSTR value) =>
      this.Anonymous.Anonymous.Anonymous.calpstr = value;

  CALPWSTR get calpwstr => this.Anonymous.Anonymous.Anonymous.calpwstr;
  set calpwstr(CALPWSTR value) =>
      this.Anonymous.Anonymous.Anonymous.calpwstr = value;

  CAPROPVARIANT get capropvar => this.Anonymous.Anonymous.Anonymous.capropvar;
  set capropvar(CAPROPVARIANT value) =>
      this.Anonymous.Anonymous.Anonymous.capropvar = value;

  Pointer<Utf8> get pcVal => this.Anonymous.Anonymous.Anonymous.pcVal;
  set pcVal(Pointer<Utf8> value) =>
      this.Anonymous.Anonymous.Anonymous.pcVal = value;

  Pointer<Uint8> get pbVal => this.Anonymous.Anonymous.Anonymous.pbVal;
  set pbVal(Pointer<Uint8> value) =>
      this.Anonymous.Anonymous.Anonymous.pbVal = value;

  Pointer<Int16> get piVal => this.Anonymous.Anonymous.Anonymous.piVal;
  set piVal(Pointer<Int16> value) =>
      this.Anonymous.Anonymous.Anonymous.piVal = value;

  Pointer<Uint16> get puiVal => this.Anonymous.Anonymous.Anonymous.puiVal;
  set puiVal(Pointer<Uint16> value) =>
      this.Anonymous.Anonymous.Anonymous.puiVal = value;

  Pointer<Int32> get plVal => this.Anonymous.Anonymous.Anonymous.plVal;
  set plVal(Pointer<Int32> value) =>
      this.Anonymous.Anonymous.Anonymous.plVal = value;

  Pointer<Uint32> get pulVal => this.Anonymous.Anonymous.Anonymous.pulVal;
  set pulVal(Pointer<Uint32> value) =>
      this.Anonymous.Anonymous.Anonymous.pulVal = value;

  Pointer<Int32> get pintVal => this.Anonymous.Anonymous.Anonymous.pintVal;
  set pintVal(Pointer<Int32> value) =>
      this.Anonymous.Anonymous.Anonymous.pintVal = value;

  Pointer<Uint32> get puintVal => this.Anonymous.Anonymous.Anonymous.puintVal;
  set puintVal(Pointer<Uint32> value) =>
      this.Anonymous.Anonymous.Anonymous.puintVal = value;

  Pointer<Float> get pfltVal => this.Anonymous.Anonymous.Anonymous.pfltVal;
  set pfltVal(Pointer<Float> value) =>
      this.Anonymous.Anonymous.Anonymous.pfltVal = value;

  Pointer<Double> get pdblVal => this.Anonymous.Anonymous.Anonymous.pdblVal;
  set pdblVal(Pointer<Double> value) =>
      this.Anonymous.Anonymous.Anonymous.pdblVal = value;

  Pointer<VARIANT_BOOL> get pboolVal =>
      this.Anonymous.Anonymous.Anonymous.pboolVal;
  set pboolVal(Pointer<VARIANT_BOOL> value) =>
      this.Anonymous.Anonymous.Anonymous.pboolVal = value;

  Pointer<DECIMAL> get pdecVal => this.Anonymous.Anonymous.Anonymous.pdecVal;
  set pdecVal(Pointer<DECIMAL> value) =>
      this.Anonymous.Anonymous.Anonymous.pdecVal = value;

  Pointer<Int32> get pscode => this.Anonymous.Anonymous.Anonymous.pscode;
  set pscode(Pointer<Int32> value) =>
      this.Anonymous.Anonymous.Anonymous.pscode = value;

  Pointer<CY> get pcyVal => this.Anonymous.Anonymous.Anonymous.pcyVal;
  set pcyVal(Pointer<CY> value) =>
      this.Anonymous.Anonymous.Anonymous.pcyVal = value;

  Pointer<Double> get pdate => this.Anonymous.Anonymous.Anonymous.pdate;
  set pdate(Pointer<Double> value) =>
      this.Anonymous.Anonymous.Anonymous.pdate = value;

  Pointer<Pointer<Utf16>> get pbstrVal =>
      this.Anonymous.Anonymous.Anonymous.pbstrVal;
  set pbstrVal(Pointer<Pointer<Utf16>> value) =>
      this.Anonymous.Anonymous.Anonymous.pbstrVal = value;

  Pointer<Pointer<COMObject>> get ppunkVal =>
      this.Anonymous.Anonymous.Anonymous.ppunkVal;
  set ppunkVal(Pointer<Pointer<COMObject>> value) =>
      this.Anonymous.Anonymous.Anonymous.ppunkVal = value;

  Pointer<Pointer<COMObject>> get ppdispVal =>
      this.Anonymous.Anonymous.Anonymous.ppdispVal;
  set ppdispVal(Pointer<Pointer<COMObject>> value) =>
      this.Anonymous.Anonymous.Anonymous.ppdispVal = value;

  Pointer<Pointer<SAFEARRAY>> get pparray =>
      this.Anonymous.Anonymous.Anonymous.pparray;
  set pparray(Pointer<Pointer<SAFEARRAY>> value) =>
      this.Anonymous.Anonymous.Anonymous.pparray = value;

  Pointer<PROPVARIANT> get pvarVal =>
      this.Anonymous.Anonymous.Anonymous.pvarVal;
  set pvarVal(Pointer<PROPVARIANT> value) =>
      this.Anonymous.Anonymous.Anonymous.pvarVal = value;
}

/// {@category struct}
base class VERSIONEDSTREAM extends Struct {
  external GUID guidVersion;

  external VTablePointer pStream;
}
