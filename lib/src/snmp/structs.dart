// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

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
// ENUMLOGFONTEX.
//
//
// ignore_for_file: unnecessary_getters_setters
//
// Why? In structs like VARIANT, we're using getters and setters to project the
// same underlying data property to various union types. The trivial overhead is
// outweighed by readability.
//
//
// ignore_for_file: unused_import
//
// Why? We speculatively include some imports that we might generate a
// requirement for.
// -----------------------------------------------------------------------------

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';

class AsnOctetString extends Struct {
  external Pointer<Uint8> stream;
  @Uint32()
  external int length;
  @Int32()
  external int dynamic;
}

class AsnObjectIdentifier extends Struct {
  @Uint32()
  external int idLength;
  external Pointer<Uint32> ids;
}

class AsnAny extends Struct {
  @Uint8()
  external int asnType;
  @Uint32()
  external int asnValue;
}

class SnmpVarBind extends Struct {
  external AsnObjectIdentifier name;
  external AsnAny value;
}

class SnmpVarBindList extends Struct {
  external Pointer<SnmpVarBind> list;
  @Uint32()
  external int len;
}

class smiOCTETS extends Struct {
  @Uint32()
  external int len;
  external Pointer<Uint8> ptr;
}

class smiOID extends Struct {
  @Uint32()
  external int len;
  external Pointer<Uint32> ptr;
}

class smiCNTR64 extends Struct {
  @Uint32()
  external int hipart;
  @Uint32()
  external int lopart;
}

class smiVALUE extends Struct {
  @Uint32()
  external int syntax;
  @Uint32()
  external int value;
}

class smiVENDORINFO extends Struct {
  @Array(64)
  external Array<Int8> vendorName;
  @Array(64)
  external Array<Int8> vendorContact;
  @Array(32)
  external Array<Int8> vendorVersionId;
  @Array(32)
  external Array<Int8> vendorVersionDate;
  @Uint32()
  external int vendorEnterprise;
}
