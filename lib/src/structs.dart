// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API. If you add a
// new struct, make sure you also add a line to struct_sizes.cpp and
// struct_sizes.dart to ensure that the C size matches the Dart representation.

// -----------------------------------------------------------------------------
// Linter exceptions
// -----------------------------------------------------------------------------
// ignore_for_file: camel_case_types
// ignore_for_file: camel_case_extensions
//
// Why? The linter defaults to throw a warning for types not named as camel
// case. We deliberately break this convention to match the Win32 underlying
// types.
//
//
// ignore_for_file: unused_field
//
// Why? The linter complains about unused fields (e.g. a class that contains
// underscore-prefixed members that are not used in the library. In this class,
// we use this feature to ensure that sizeOf<STRUCT_NAME> returns a size at
// least as large as the underlying native struct. See, for example,
// VARIANT.
//
//
// ignore_for_file: unnecessary_getters_setters
//
// Why? In structs like VARIANT, we're using getters and setters to project the
// same underlying data property to various union types. The trivial overhead is
// outweighed by readability.
// -----------------------------------------------------------------------------

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';

import 'callbacks.dart';
import 'com/IDispatch.dart';
import 'com/IUnknown.dart';
import 'combase.dart';
import 'constants.dart';
import 'oleaut32.dart';
import 'structs.g.dart';

/// The PRINTER_NOTIFY_INFO_DATA structure identifies a job or printer
/// information field and provides the current data for that field.
///
/// {@category Struct}
class PRINTER_NOTIFY_INFO_DATA extends Struct {
  // TODO: Union
  @Uint16()
  external int Type;
  @Uint16()
  external int Field;
  @Uint32()
  external int Reserved;
  @Uint32()
  external int Id;
  // TODO: Check packing
  @Uint32()
  external int _pack;
  @Uint32()
  external int cbBuf;
  @Uint32()
  external int _pack2;
  external Pointer pBuf;
}

/// The DEVMODE data structure contains information about the
/// initialization and environment of a printer or a display device.
///
/// {@category Struct}
class DEVMODE extends Struct {
  // TODO: Union
  @Array(32)
  external Array<Uint16> dmDeviceName;
  @Uint16()
  external int dmSpecVersion;
  @Uint16()
  external int dmDriverVersion;
  @Uint16()
  external int dmSize;
  @Uint16()
  external int dmDriverExtra;
  @Uint32()
  external int dmFields;
  @Uint16()
  external int dmOrientation;
  @Uint16()
  external int dmPaperSize;
  @Uint16()
  external int dmPaperLength;
  @Uint16()
  external int dmPaperWidth;
  @Uint16()
  external int dmScale;
  @Uint16()
  external int dmCopies;
  @Uint16()
  external int dmDefaultSource;
  @Uint16()
  external int dmPrintQuality;
  @Int16()
  external int dmColor;
  @Int16()
  external int dmDuplex;
  @Int16()
  external int dmYResolution;
  @Int16()
  external int dmTTOption;
  @Int16()
  external int dmCollate;
  @Array(32)
  external Array<Uint16> dmFormName;
  @Uint16()
  external int dmLogPixels;
  @Uint32()
  external int dmBitsPerPel;
  @Uint32()
  external int dmPelsWidth;
  @Uint32()
  external int dmPelsHeight;
  @Uint32()
  external int dmDisplayFlags;
  @Uint32()
  external int dmDisplayFrequency;
  @Uint32()
  external int dmICMMethod;
  @Uint32()
  external int dmICMIntent;
  @Uint32()
  external int dmMediaType;
  @Uint32()
  external int dmDitherType;
  @Uint32()
  external int dmReserved1;
  @Uint32()
  external int dmReserved2;
  @Uint32()
  external int dmPanningWidth;
  @Uint32()
  external int dmPanningHeight;
}

/// The IN_ADDR structure represents an IPv4 Internet address.
///
/// {@category Struct}
class IN_ADDR extends Struct {
  // TODO: Union

  @Array(4)
  external Array<Uint8> s_b;
}

/// Contains information about a heap element. The HeapWalk function uses a
/// PROCESS_HEAP_ENTRY structure to enumerate the elements of a heap.
///
/// {@category Struct}
class PROCESS_HEAP_ENTRY extends Struct {
  // TODO: Union

  external Pointer lpData;
  @Uint32()
  external int cbData;
  @Uint8()
  external int cbOverhead;
  @Uint8()
  external int iRegionIndex;
  @Uint16()
  external int wFlags;
  @Uint32()
  external int dwCommittedSize;
  @Uint32()
  external int dwUnCommittedSize;
  external Pointer lpFirstBlock;
  external Pointer lpLastBlock;
}

// typedef struct _SYSTEM_INFO {
//   union {
//     DWORD dwOemId;
//     struct {
//       WORD wProcessorArchitecture;
//       WORD wReserved;
//     } DUMMYSTRUCTNAME;
//   } DUMMYUNIONNAME;
//   DWORD     dwPageSize;
//   LPVOID    lpMinimumApplicationAddress;
//   LPVOID    lpMaximumApplicationAddress;
//   DWORD_PTR dwActiveProcessorMask;
//   DWORD     dwNumberOfProcessors;
//   DWORD     dwProcessorType;
//   DWORD     dwAllocationGranularity;
//   WORD      wProcessorLevel;
//   WORD      wProcessorRevision;
// } SYSTEM_INFO, *LPSYSTEM_INFO;

class _SYSTEM_INFO_Anonymous_1 extends Struct {
  @Uint16()
  external int wProcessorArchitecture;
  @Uint16()
  external int wReserved;
}

class _SYSTEM_INFO_Anonymous_0 extends Union {
  @Uint32()
  external int dwOemId;

  external _SYSTEM_INFO_Anonymous_1 _DUMMYSTRUCTNAME;
}

/// Contains information about the current computer system. This includes the
/// architecture and type of the processor, the number of processors in the
/// system, the page size, and other such information.
///
/// {@category Struct}
class SYSTEM_INFO extends Struct {
  external _SYSTEM_INFO_Anonymous_0 _DUMMYUNIONNAME;

  int get dwOemId => _DUMMYUNIONNAME.dwOemId;
  set dwOemId(int value) => _DUMMYUNIONNAME.dwOemId = value;

  int get wProcessorArchitecture =>
      _DUMMYUNIONNAME._DUMMYSTRUCTNAME.wProcessorArchitecture;
  int get wReserved => _DUMMYUNIONNAME._DUMMYSTRUCTNAME.wReserved;
  set wProcessorArchitecture(int value) =>
      _DUMMYUNIONNAME._DUMMYSTRUCTNAME.wProcessorArchitecture = value;
  set wReserved(int value) =>
      _DUMMYUNIONNAME._DUMMYSTRUCTNAME.wReserved = value;

  @Uint32()
  external int dwPageSize;

  external Pointer lpMinimumApplicationAddress;
  external Pointer lpMaximumApplicationAddress;

  @IntPtr()
  external int dwActiveProcessorMask;

  @Uint32()
  external int dwNumberOfProcessors;

  @Uint32()
  external int dwProcessorType;

  @Uint32()
  external int dwAllocationGranularity;

  @Uint16()
  external int wProcessorLevel;

  @Uint16()
  external int wProcessorRevision;
}

// typedef struct _STARTUPINFOEXW {
//   STARTUPINFOW                 StartupInfo;
//   LPPROC_THREAD_ATTRIBUTE_LIST lpAttributeList;
// } STARTUPINFOEXW, *LPSTARTUPINFOEXW;

/// Specifies the window station, desktop, standard handles, and attributes for
/// a new process. It is used with the CreateProcess and CreateProcessAsUser
/// functions.
///
/// {@category Struct}
class STARTUPINFOEX extends Struct {
  external STARTUPINFO StartupInfo;
  external Pointer lpAttributeList;
}

// typedef struct tagDEC {
//   USHORT wReserved;
//   union {
//     struct {
//       BYTE scale;
//       BYTE sign;
//     } DUMMYSTRUCTNAME;
//     USHORT signscale;
//   } DUMMYUNIONNAME;
//   ULONG  Hi32;
//   union {
//     struct {
//       ULONG Lo32;
//       ULONG Mid32;
//     } DUMMYSTRUCTNAME2;
//     ULONGLONG Lo64;
//   } DUMMYUNIONNAME2;
// } DECIMAL;

/// Represents a decimal data type that provides a sign and scale for a number
/// (as in coordinates.)
///
/// Decimal variables are stored as 96-bit (12-byte) unsigned integers scaled by
/// a variable power of 10. The power of 10 scaling factor specifies the number
/// of digits to the right of the decimal point, and ranges from 0 to 28.
///
/// {@category Struct}
class _DECIMAL_Anonymous_0 extends Union {
  external _DECIMAL_Anonymous_2 _DUMMYSTRUCTNAME;
  @Uint16()
  external int signscale;
}

class _DECIMAL_Anonymous_1 extends Union {
  external _DECIMAL_Anonymous_3 _DUMMYSTRUCTNAME2;
  @Uint64()
  external int Lo64;
}

class _DECIMAL_Anonymous_2 extends Struct {
  @Uint8()
  external int scale;
  @Uint8()
  external int sign;
}

class _DECIMAL_Anonymous_3 extends Struct {
  @Uint32()
  external int Lo32;
  @Uint32()
  external int Mid32;
}

class DECIMAL extends Struct {
  @Uint16()
  external int wReserved;

  external _DECIMAL_Anonymous_0 _DUMMYUNIONNAME;

  @Uint32()
  external int Hi32;

  external _DECIMAL_Anonymous_1 _DUMMYUNIONNAME2;

  int get scale => _DUMMYUNIONNAME._DUMMYSTRUCTNAME.scale;
  set scale(int value) => _DUMMYUNIONNAME._DUMMYSTRUCTNAME.scale = value;

  int get sign => _DUMMYUNIONNAME._DUMMYSTRUCTNAME.sign;
  set sign(int value) => _DUMMYUNIONNAME._DUMMYSTRUCTNAME.sign = value;

  int get signscale => _DUMMYUNIONNAME.signscale;
  set signscale(int value) => _DUMMYUNIONNAME.signscale = value;

  int get Lo32 => _DUMMYUNIONNAME2._DUMMYSTRUCTNAME2.Lo32;
  set Lo32(int value) => _DUMMYUNIONNAME2._DUMMYSTRUCTNAME2.Lo32 = value;

  int get Mid32 => _DUMMYUNIONNAME2._DUMMYSTRUCTNAME2.Mid32;
  set Mid32(int value) => _DUMMYUNIONNAME2._DUMMYSTRUCTNAME2.Mid32 = value;

  int get Lo64 => _DUMMYUNIONNAME2.Lo64;
  set Lo64(int value) => _DUMMYUNIONNAME2.Lo64 = value;
}

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

class _VARIANT_Anonymous_3 extends Struct {
  external Pointer pvRecord;
  external Pointer<COMObject> pRecInfo;
}

class _VARIANT_Anonymous_2 extends Union {
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
  external int __OBSOLETE__VARIANT_BOOL;
  @Int32()
  external int scode;
  @Int64()
  external int cyVal;
  @Double()
  external double date;
  external Pointer<Utf16> bstrVal;
  external Pointer<COMObject> punkVal;
  external Pointer<COMObject> pdispVal;
  external Pointer/*<SAFEARRAY>*/ parray;
  external Pointer<Uint8> pbVal;
  external Pointer<Int16> piVal;
  external Pointer<Int32> plVal;
  external Pointer<Int64> pllVal;
  external Pointer<Float> pfltVal;
  external Pointer<Double> pdblVal;
  external Pointer<Int16> pboolVal;
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

class _VARIANT_Anonymous_1 extends Struct {
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

class _VARIANT_Anonymous_0 extends Union {
  external _VARIANT_Anonymous_1 __VARIANT_NAME_2;
  external DECIMAL decVal;
}

/// The VARIANT type is used in Win32 to represent a dynamic type. It is
/// represented as a struct containing a union of the types that could be
/// stored.
///
/// VARIANTs must be initialized with [VariantInit] before their use.
///
/// {@category Struct}
class VARIANT extends Struct {
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
  IUnknown get punkVal =>
      IUnknown(__VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.punkVal);
  set punkVal(IUnknown value) =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.punkVal = value.ptr;

  // IDispatch
  IDispatch get pdispVal =>
      IDispatch(__VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.pdispVal);
  set pdispVal(IDispatch value) =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.pdispVal = value.ptr;

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
    final hi = (((src & 0xFFFFFFFF00000000) >> 32).toUnsigned(32))
        .toRadixString(16)
        .padLeft(8, '0');
    final lo = ((src & 0x00000000FFFFFFFF).toRadixString(16).padLeft(8, '0'));
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

  Pointer<COMObject> get pRecInfo => __VARIANT_NAME_1
      .__VARIANT_NAME_2.__VARIANT_NAME_3.__VARIANT_NAME_4.pRecInfo;
  set pRecInfo(Pointer<COMObject> value) => __VARIANT_NAME_1
      .__VARIANT_NAME_2.__VARIANT_NAME_3.__VARIANT_NAME_4.pRecInfo = value;
}

// typedef struct tagTYPEDESC {
//   union {
//     struct tagTYPEDESC *lptdesc;
//     struct tagARRAYDESC *lpadesc;
//     HREFTYPE hreftype;
//   } DUMMYUNIONNAME;
//   VARTYPE vt;
// } TYPEDESC;

/// Describes the type of a variable, the return type of a function, or the type
/// of a function parameter.
///
/// {@category Struct}
class TYPEDESC extends Struct {
  external Pointer lptdesc;

  @Uint16()
  external int vt;

  Pointer get lpadesc => lptdesc;
  int get hreftype => lptdesc.cast<Uint32>().value;
}

// typedef struct tagELEMDESC {
//   TYPEDESC tdesc;
//   union {
//     IDLDESC   idldesc;
//     PARAMDESC paramdesc;
//   } DUMMYUNIONNAME;
// } ELEMDESC, *LPELEMDESC;

/// Contains the type description and process-transfer information for a
/// variable, a function, or a function parameter.
///
/// {@category Struct}
class ELEMDESC extends Struct {
  external TYPEDESC tdesc;
  external IDLDESC idldesc;
  // Waiting on union types
  //   PARAMDESC get paramdesc => idldesc.cast<PARAMDESC>().value;
}

// typedef struct tagVARDESC {
//   MEMBERID memid;
//   LPOLESTR lpstrSchema;
//   union {
//     ULONG   oInst;
//     VARIANT *lpvarValue;
//   } DUMMYUNIONNAME;
//   ELEMDESC elemdescVar;
//   WORD     wVarFlags;
//   VARKIND  varkind;
// } VARDESC, *LPVARDESC;

/// Describes a variable, constant, or data member.
///
/// {@category Struct}
class VARDESC extends Struct {
  @Uint32()
  external int memid;
  external Pointer<Utf16> lpstrSchema;
  external Pointer<VARIANT> lpvarValue;
  int get oInst => lpvarValue.cast<Uint32>().value;
  external ELEMDESC elemdescVar;
  @Uint16()
  external int wVarFlags;
  @Uint32()
  external int varkind;
}

// typedef struct _STRRET {
//   UINT  uType;
//   union {
//     LPWSTR pOleStr;
//     UINT   uOffset;
//     char   cStr[260];
//   } DUMMYUNIONNAME;
// } STRRET;

class _STRRET_Anonymous_0 extends Union {
  external Pointer<Utf16> pOleStr;
  @Uint32()
  external int uOffset;
  @Array(260)
  external Array<Uint8> cStr;
}

/// Contains strings returned from the IShellFolder interface methods.
///
/// {@category Struct}
class STRRET extends Struct {
  @Uint32()
  external int uType;

  external _STRRET_Anonymous_0 _DUMMYUNIONNAME;

  Pointer<Utf16> get pOleStr => _DUMMYUNIONNAME.pOleStr;
  set pOleStr(Pointer<Utf16> value) => _DUMMYUNIONNAME.pOleStr = value;

  int get uOffset => _DUMMYUNIONNAME.uOffset;
  set uOffset(int value) => _DUMMYUNIONNAME.uOffset = value;

  Array<Uint8> get cStr => _DUMMYUNIONNAME.cStr;
  set cStr(Array<Uint8> value) => _DUMMYUNIONNAME.cStr = value;
}

// typedef struct _SHELLEXECUTEINFOW {
//   DWORD     cbSize;
//   ULONG     fMask;
//   HWND      hwnd;
//   LPCWSTR   lpVerb;
//   LPCWSTR   lpFile;
//   LPCWSTR   lpParameters;
//   LPCWSTR   lpDirectory;
//   int       nShow;
//   HINSTANCE hInstApp;
//   void      *lpIDList;
//   LPCWSTR   lpClass;
//   HKEY      hkeyClass;
//   DWORD     dwHotKey;
//   union {
//     HANDLE hIcon;
//     HANDLE hMonitor;
//   } DUMMYUNIONNAME;
//   HANDLE    hProcess;
// } SHELLEXECUTEINFOW, *LPSHELLEXECUTEINFOW;

/// Contains information used by ShellExecuteEx.
///
/// {@category Struct}
class SHELLEXECUTEINFO extends Struct {
  @Uint32()
  external int cbSize;
  @Uint32()
  external int fMask;
  @IntPtr()
  external int hwnd;

  external Pointer<Utf16> lpVerb;
  external Pointer<Utf16> lpFile;
  external Pointer<Utf16> lpParameters;
  external Pointer<Utf16> lpDirectory;

  @Int32()
  external int nShow;
  @IntPtr()
  external int hInstApp;
  external Pointer lpIDList;
  external Pointer<Utf16> lpClass;
  @IntPtr()
  external int hkeyClass;
  @Uint32()
  external int dwHotKey;
  @IntPtr()
  external int hIcon;

  int get hMonitor => hIcon;
  set hMonitor(int val) => hIcon = val;

  @IntPtr()
  external int hProcess;
}

/// Represents package settings used to create a package.
///
/// {@category Struct}
class APPX_PACKAGE_SETTINGS extends Struct {
  @Int32()
  external int forceZip32;
  external Pointer hashMethod;
}

// typedef struct _CHAR_INFO {
//   union {
//     WCHAR UnicodeChar;
//     CHAR  AsciiChar;
//   } Char;
//   WORD  Attributes;
// } CHAR_INFO, *PCHAR_INFO;

/// Specifies a Unicode or ANSI character and its attributes. This structure is
/// used by console functions to read from and write to a console screen buffer.
///
/// {@category Struct}
class CHAR_INFO extends Struct {
  @Int16()
  external int UnicodeChar;

  @Int16()
  external int Attributes;
}

// typedef struct _TASKDIALOGCONFIG {
//   UINT                           cbSize;
//   HWND                           hwndParent;
//   HINSTANCE                      hInstance;
//   TASKDIALOG_FLAGS               dwFlags;
//   TASKDIALOG_COMMON_BUTTON_FLAGS dwCommonButtons;
//   PCWSTR                         pszWindowTitle;
//   union {
//     HICON  hMainIcon;
//     PCWSTR pszMainIcon;
//   } DUMMYUNIONNAME;
//   PCWSTR                         pszMainInstruction;

//   PCWSTR                         pszContent;
//   UINT                           cButtons;
//   const TASKDIALOG_BUTTON        *pButtons;
//   int                            nDefaultButton;
//   UINT                           cRadioButtons;
//   const TASKDIALOG_BUTTON        *pRadioButtons;
//   int                            nDefaultRadioButton;
//   PCWSTR                         pszVerificationText;
//   PCWSTR                         pszExpandedInformation;
//   PCWSTR                         pszExpandedControlText;
//   PCWSTR                         pszCollapsedControlText;
//   union {
//     HICON  hFooterIcon;
//     PCWSTR pszFooterIcon;
//   } DUMMYUNIONNAME2;
//   PCWSTR                         pszFooter;
//   PFTASKDIALOGCALLBACK           pfCallback;
//   LONG_PTR                       lpCallbackData;
//   UINT                           cxWidth;
// } TASKDIALOGCONFIG;

/// The TASKDIALOGCONFIG structure contains information used to display a task
/// dialog. The TaskDialogIndirect function uses this structure.
///
/// {@category Struct}
@Packed(4)
class TASKDIALOGCONFIG extends Struct {
  @Uint32()
  external int cbSize;
  @IntPtr()
  external int hwndParent;
  @IntPtr()
  external int hInstance;
  @Uint32()
  external int dwFlags;
  @Uint32()
  external int dwCommonButtons;
  external Pointer<Utf16> pszWindowTitle;
  @IntPtr()
  external int hMainIcon;

  external Pointer<Utf16> pszMainInstruction;
  external Pointer<Utf16> pszContent;

  @Uint32()
  external int cButtons;

  external Pointer<TASKDIALOG_BUTTON> pButtons;

  @Int32()
  external int nDefaultButton;
  @Uint32()
  external int cRadioButtons;

  external Pointer<TASKDIALOG_BUTTON> pRadioButtons;

  @Int32()
  external int nDefaultRadioButton;

  external Pointer<Utf16> pszVerificationText;
  external Pointer<Utf16> pszExpandedInformation;
  external Pointer<Utf16> pszExpandedControlText;
  external Pointer<Utf16> pszCollapsedControlText;

  @IntPtr()
  external int hFooterIcon;

  external Pointer<Utf16> pszFooter;
  external Pointer<NativeFunction<TaskDialogCallbackProc>> pfCallback;

  @IntPtr()
  external int lpCallbackData;
  @Uint32()
  external int cxWidth;
}

// typedef struct _BLUETOOTH_AUTHENTICATION_CALLBACK_PARAMS {
//   BLUETOOTH_DEVICE_INFO                 deviceInfo;
//   BLUETOOTH_AUTHENTICATION_METHOD       authenticationMethod;
//   BLUETOOTH_IO_CAPABILITY               ioCapability;
//   BLUETOOTH_AUTHENTICATION_REQUIREMENTS authenticationRequirements;
//   union {
//     ULONG Numeric_Value;
//     ULONG Passkey;
//   };
// } BLUETOOTH_AUTHENTICATION_CALLBACK_PARAMS, *PBLUETOOTH_AUTHENTICATION_CALLBACK_PARAMS;

/// The BLUETOOTH_AUTHENTICATION_CALLBACK_PARAMS structure contains specific
/// configuration information about the Bluetooth device responding to an
/// authentication request.
///
/// /// {@category Struct}
class BLUETOOTH_AUTHENTICATION_CALLBACK_PARAMS extends Struct {
  external BLUETOOTH_DEVICE_INFO deviceInfo;
  @Uint32()
  external int authenticationMethod;
  @Uint32()
  external int ioCapability;
  @Uint32()
  external int authenticationRequirements;
  @Uint32()
  external int Numeric_Value;

  int get Passkey => Numeric_Value;
  set Passkey(int value) => Numeric_Value = value;
}

// typedef struct _BLUETOOTH_PIN_INFO {
//   UCHAR pin[BTH_MAX_PIN_SIZE];
//   UCHAR pinLength;
// } BLUETOOTH_PIN_INFO, *PBLUETOOTH_PIN_INFO;

/// The BLUETOOTH_PIN_INFO structure contains information used for
/// authentication via PIN.
///
/// {@category Struct}
class BLUETOOTH_PIN_INFO extends Struct {
  @Array(16)
  external Array<Uint8> _pin;
  @Int8()
  external int pinLength;

  Uint8List get pin {
    final pin = <int>[];
    for (var i = 0; i < 16; i++) {
      pin.add(_pin[i]);
    }
    return Uint8List.fromList(pin);
  }

  set pin(Uint8List value) {
    final paddedList = List<int>.from(value);
    while (paddedList.length < 16) {
      paddedList.add(0);
    }

    for (var i = 0; i < 16; i++) {
      _pin[i] = paddedList[i];
    }
  }
}

// typedef struct _OVERLAPPED {
//   ULONG_PTR Internal;
//   ULONG_PTR InternalHigh;
//   union {
//     struct {
//       DWORD Offset;
//       DWORD OffsetHigh;
//     } DUMMYSTRUCTNAME;
//     PVOID Pointer;
//   } DUMMYUNIONNAME;
//   HANDLE    hEvent;
// } OVERLAPPED, *LPOVERLAPPED;

class _OVERLAPPED_Anonymous_1 extends Struct {
  @Uint32()
  external int Offset;
  @Uint32()
  external int OffsetHigh;
}

class _OVERLAPPED_Anonymous_0 extends Union {
  external _OVERLAPPED_Anonymous_1 _DUMMYSTRUCTNAME;
  external Pointer pointer;
}

/// Contains information used in asynchronous (or overlapped) input and output
/// (I/O).
///
/// {@category Struct}
class OVERLAPPED extends Struct {
  @IntPtr()
  external int Internal;

  @IntPtr()
  external int InternalHigh;

  external _OVERLAPPED_Anonymous_0 _DUMMYUNIONNAME;

  int get Offset => _DUMMYUNIONNAME._DUMMYSTRUCTNAME.Offset;
  int get OffsetHigh => _DUMMYUNIONNAME._DUMMYSTRUCTNAME.OffsetHigh;

  set Offset(int value) => _DUMMYUNIONNAME._DUMMYSTRUCTNAME.Offset = value;
  set OffsetHigh(int value) =>
      _DUMMYUNIONNAME._DUMMYSTRUCTNAME.OffsetHigh = value;

  Pointer get pointer => _DUMMYUNIONNAME.pointer;
  set pointer(Pointer value) => _DUMMYUNIONNAME.pointer = value;

  @IntPtr()
  external int hEvent;
}

// typedef struct _WLAN_RAW_DATA_LIST {
//     DWORD dwTotalSize;
//     DWORD dwNumberOfItems;
//     struct {
//         // the beginning of the data blob
//         // the offset is w.r.t. the beginning of the entry
//         DWORD dwDataOffset;
//         // size of the data blob
//         DWORD dwDataSize;
//     } DataList[1];
// } WLAN_RAW_DATA_LIST, *PWLAN_RAW_DATA_LIST;

class _DataList extends Struct {
  @Uint32()
  external int dwDataOffset;
  @Uint32()
  external int dwDataSize;
}

/// The WLAN_RAW_DATA_LIST structure contains raw data in the form of an
/// array of data blobs that are used by some Native Wifi functions.
///
/// {@category Struct}
class WLAN_RAW_DATA_LIST extends Struct {
  @Uint32()
  external int dwTotalSize;
  @Uint32()
  external int dwNumberOfItems;
  @Array(1)
  external Array<_DataList> DataList;
}

// typedef struct mmtime_tag {
//   UINT  wType;
//   union {
//     DWORD  ms;
//     DWORD  sample;
//     DWORD  cb;
//     DWORD  ticks;
//     struct {
//       BYTE hour;
//       BYTE min;
//       BYTE sec;
//       BYTE frame;
//       BYTE fps;
//       BYTE dummy;
//       BYTE pad[2];
//     } smpte;
//     struct {
//       DWORD songptrpos;
//     } midi;
//   } u;
// } MMTIME, *PMMTIME, *LPMMTIME;

class _smpte {
  final int hour;
  final int min;
  final int sec;
  final int frame;
  final int fps;
  final int dummy;

  const _smpte(this.hour, this.min, this.sec, this.frame, this.fps, this.dummy);
}

class _midi {
  final int songptrpos;

  const _midi(this.songptrpos);
}

/// The MMTIME structure contains timing information for different types of
/// multimedia data.
///
/// {@category Struct}
class MMTIME extends Struct {
  @Uint32()
  external int wType;

  @Uint32()
  external int ms;

  @Uint16()
  external int _valueExtra;

  @Uint16()
  external int _pad;

  int get sample => ms;
  int get cb => ms;
  int get ticks => ms;

  _smpte get smpte => _smpte((ms & 0xFF000000) << 24, (ms & 0xFF0000) << 16,
      (ms & 0xFF00) << 8, ms & 0xFF, (_valueExtra & 0xFF00) << 8, _valueExtra);
  _midi get midi => _midi(ms);

  set sample(int value) => ms = value;
  set cb(int value) => ms = value;
  set ticks(int value) => ms = value;
  set midi(_midi value) => ms = value.songptrpos;
}

/// The PROPSPEC structure is used by many of the methods of
/// IPropertyStorage to specify a property either by its property
/// identifier (ID) or the associated string name.
///
/// {@category Struct}
class PROPSPEC extends Struct {
  @Uint32()
  external int ulKind;

  external Pointer<Uint16> lpwstr;
}

/// The PROPVARIANT structure is used in the ReadMultiple and WriteMultiple
/// methods of IPropertyStorage to define the type tag and the value of a
/// property in a property set.
///
/// {@category Struct}
class PROPVARIANT extends Struct {
  @Uint16()
  external int vt;
  @Uint16()
  external int wReserved1;
  @Uint16()
  external int wReserved2;
  @Uint16()
  external int wReserved3;
  @IntPtr()
  external int val1;
  @IntPtr()
  external int val2;
}

// typedef struct tagRAWINPUT {
//   RAWINPUTHEADER header;
//   union {
//     RAWMOUSE    mouse;
//     RAWKEYBOARD keyboard;
//     RAWHID      hid;
//   } data;
// } RAWINPUT, *PRAWINPUT, *LPRAWINPUT;
class _RAWINPUT_Anonymous_0 extends Union {
  external RAWMOUSE mouse;
  external RAWKEYBOARD keyboard;
  external RAWHID hid;
}

/// Contains the raw input from a device.
///
/// {@category Struct}
class RAWINPUT extends Struct {
  external RAWINPUTHEADER header;
  external _RAWINPUT_Anonymous_0 data;

  RAWMOUSE get mouse => data.mouse;
  set mouse(RAWMOUSE value) => data.mouse = value;

  RAWKEYBOARD get keyboard => data.keyboard;
  set keyboard(RAWKEYBOARD value) => data.keyboard = value;

  RAWHID get hid => data.hid;
  set hid(RAWHID value) => data.hid = value;
}

// typedef struct tagRAWMOUSE {
//   USHORT usFlags;
//   union {
//     ULONG ulButtons;
//     struct {
//       USHORT usButtonFlags;
//       USHORT usButtonData;
//     } DUMMYSTRUCTNAME;
//   } DUMMYUNIONNAME;
//   ULONG  ulRawButtons;
//   LONG   lLastX;
//   LONG   lLastY;
//   ULONG  ulExtraInformation;
// } RAWMOUSE, *PRAWMOUSE, *LPRAWMOUSE;
class _RAWMOUSE_Anonymous_0 extends Struct {
  @Uint16()
  external int usButtonFlags;
  @Uint16()
  external int usButtonData;
}

class _RAWMOUSE_Anonymous_1 extends Union {
  @Uint32()
  external int ulButtons;
  external _RAWMOUSE_Anonymous_0 _DUMMYSTRUCTNAME;
}

/// Contains information about the state of the mouse.
///
/// {@category Struct}
class RAWMOUSE extends Struct {
  @Uint16()
  external int usFlags;
  external _RAWMOUSE_Anonymous_1 _DUMMYUNIONNAME;
  @Uint32()
  external int ulRawButtons;
  @Int32()
  external int lLastX;
  @Int32()
  external int lLastY;
  @Uint32()
  external int ulExtraInformation;

  int get usButtonFlags => _DUMMYUNIONNAME._DUMMYSTRUCTNAME.usButtonFlags;
  set usButtonFlags(int value) =>
      _DUMMYUNIONNAME._DUMMYSTRUCTNAME.usButtonFlags = value;
  int get usButtonData => _DUMMYUNIONNAME._DUMMYSTRUCTNAME.usButtonData;
  set usButtonData(int value) =>
      _DUMMYUNIONNAME._DUMMYSTRUCTNAME.usButtonData = value;
}
