// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import '../../combase.dart';
import '../../guid.dart';
import '../../foundation/structs.g.dart';

/// {@category Struct}
class EC_VARIANT extends Struct {
  external _EC_VARIANT__Anonymous_e__Union Anonymous;

  @Uint32()
  external int Count;

  @Uint32()
  external int Type;
}

/// {@category Struct}
class _EC_VARIANT__Anonymous_e__Union extends Union {
  @Int32()
  external int BooleanVal;

  @Uint32()
  external int UInt32Val;

  @Uint64()
  external int DateTimeVal;

  external Pointer<Utf16> StringVal;

  external Pointer<Uint8> BinaryVal;

  external Pointer<Int32> BooleanArr;

  external Pointer<Int32> Int32Arr;

  external Pointer<Pointer<Utf16>> StringArr;

  @IntPtr()
  external int PropertyHandleVal;
}

extension EC_VARIANT_Extension on EC_VARIANT {
  int get BooleanVal => this.Anonymous.BooleanVal;
  set BooleanVal(int value) => this.Anonymous.BooleanVal = value;

  int get UInt32Val => this.Anonymous.UInt32Val;
  set UInt32Val(int value) => this.Anonymous.UInt32Val = value;

  int get DateTimeVal => this.Anonymous.DateTimeVal;
  set DateTimeVal(int value) => this.Anonymous.DateTimeVal = value;

  Pointer<Utf16> get StringVal => this.Anonymous.StringVal;
  set StringVal(Pointer<Utf16> value) => this.Anonymous.StringVal = value;

  Pointer<Uint8> get BinaryVal => this.Anonymous.BinaryVal;
  set BinaryVal(Pointer<Uint8> value) => this.Anonymous.BinaryVal = value;

  Pointer<Int32> get BooleanArr => this.Anonymous.BooleanArr;
  set BooleanArr(Pointer<Int32> value) => this.Anonymous.BooleanArr = value;

  Pointer<Int32> get Int32Arr => this.Anonymous.Int32Arr;
  set Int32Arr(Pointer<Int32> value) => this.Anonymous.Int32Arr = value;

  Pointer<Pointer<Utf16>> get StringArr => this.Anonymous.StringArr;
  set StringArr(Pointer<Pointer<Utf16>> value) =>
      this.Anonymous.StringArr = value;

  int get PropertyHandleVal => this.Anonymous.PropertyHandleVal;
  set PropertyHandleVal(int value) => this.Anonymous.PropertyHandleVal = value;
}
