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

import 'com/IDispatch.dart';
import 'com/IUnknown.dart';
import 'combase.dart';

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

/// The VARIANT type is used in Win32 to represent a dynamic type. It is
/// represented as a struct containing a union of the types that could be
/// stored.
///
/// VARIANTs must be initialized with [VariantInit] before their use.

/// {@category Struct}

class VARIANT extends Struct {
  // The size of a union type equals the largest member it can contain, which in
  // the case of VARIANT is a struct of two pointers (BRECORD).

  @Uint16()
  external int vt;
  @Uint16()
  external int wReserved1;
  @Uint16()
  external int wReserved2;
  @Uint16()
  external int wReserved3;
  @Uint64()
  external int _data;
  @IntPtr()
  external int _data2;

  // LONGLONG -> __int64 -> Int64
  int get llVal => _data;
  set llVal(int val) => _data = val;

  // LONG -> long -> Int32
  int get lVal => ((_data & 0xFFFFFFFF00000000) >> 32).toSigned(32);
  set lVal(int val) => _data = (val.toUnsigned(32) << 32);

  // BYTE => unsigned char => Uint8
  int get bVal => ((_data & 0xFF00000000000000) >> 56).toUnsigned(8);
  set bVal(int val) => _data = val << 56;

  // SHORT => short => Int16
  int get iVal => ((_data & 0xFFFF000000000000) >> 48).toSigned(16);
  set iVal(int val) => _data = (val.toUnsigned(16) << 48);

  // BSTR => OLECHAR* => Pointer<Utf16>
  Pointer<Utf16> get bstrVal => Pointer<Utf16>.fromAddress(_data);
  set bstrVal(Pointer<Utf16> val) => _data = val.address;

  // FLOAT => float => double
  double get fltVal =>
      (ByteData(4)..setUint32(0, (_data & 0xFFFFFFFF00000000) >> 32))
          .getFloat32(0);
  set fltVal(double val) =>
      (ByteData(4)..setFloat32(0, val)).getUint32(0) << 32;

  // DOUBLE => double => double
  double get dblVal => (ByteData(8)..setUint64(0, _data)).getFloat64(0);
  set dblVal(double val) => (ByteData(8)..setFloat64(0, val)).getUint64(0);

  // IUnknown
  IUnknown get punkVal => IUnknown(Pointer<COMObject>.fromAddress(_data));
  set punkVal(IUnknown val) => _data = val.ptr.address;

  // IDispatch
  IDispatch get pdispVal => IDispatch(Pointer<COMObject>.fromAddress(_data));
  set pdispVal(IDispatch val) => _data = val.ptr.address;

  // BYTE*
  Pointer<Uint8> get pbVal => Pointer<Uint8>.fromAddress(_data);
  set pbVal(Pointer<Uint8> val) => _data = val.address;

  // SHORT*
  Pointer<Int16> get piVal => Pointer<Int16>.fromAddress(_data);
  set piVal(Pointer<Int16> val) => _data = val.address;

  // LONG*
  Pointer<Int32> get plVal => Pointer<Int32>.fromAddress(_data);
  set plVal(Pointer<Int32> val) => _data = val.address;

  // LONGLONG*
  Pointer<Int64> get pllVal => Pointer<Int64>.fromAddress(_data);
  set pllVal(Pointer<Int64> val) => _data = val.address;

  // FLOAT*
  Pointer<Float> get pfltVal => Pointer<Float>.fromAddress(_data);
  set pfltVal(Pointer<Float> val) => _data = val.address;

  // DOUBLE*
  Pointer<Double> get pdblVal => Pointer<Double>.fromAddress(_data);
  set pdblVal(Pointer<Double> val) => _data = val.address;

  Pointer get byref => Pointer.fromAddress(_data);
  set byref(Pointer val) => _data = val.address;

  // CHAR -> char -> Int8
  int get cVal => (_data & 0xFF00000000000000) >> 56.toSigned(8);
  set cVal(int val) => _data = (val.toUnsigned(8) << 56);

  // USHORT -> unsigned short -> Uint16
  int get uiVal => ((_data & 0xFFFF000000000000) >> 48).toUnsigned(16);
  set uiVal(int val) => _data = val << 48;

  // ULONG -> unsigned long -> Uint32
  int get ulVal => ((_data & 0xFFFFFFFF00000000) >> 32).toUnsigned(32);
  set ulVal(int val) => _data = val << 32;

  // ULONGLONG -> unsigned long long -> Uint64
  int get ullVal => _data;
  set ullVal(int val) => _data;

  // INT -> int -> Int32
  int get intVal => ((_data & 0xFFFFFFFF00000000) >> 32).toSigned(32);
  set intVal(int val) => _data = (val.toUnsigned(32) << 32);

  // UINT -> unsigned int -> Uint32
  int get uintVal => ((_data & 0xFFFFFFFF00000000) >> 32).toUnsigned(32);
  set uintVal(int val) => _data = val << 32;
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
