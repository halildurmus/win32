// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// -----------------------------------------------------------------------------
// Linter exceptions
// -----------------------------------------------------------------------------
// ignore_for_file: camel_case_types ignore_for_file: camel_case_extensions
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

class LUID extends Struct {
  @Uint32() external int LowPart;
  @Int32() external int HighPart;
}

class QUAD extends Struct {
  @Uint32() external int Anonymous;
}

class CSTRING extends Struct {
  @Uint16() external int Length;
  @Uint16() external int MaximumLength;
  external Pointer<Int8> Buffer;
}

class LIST_ENTRY extends Struct {
  external Pointer<LIST_ENTRY> Flink;
  external Pointer<LIST_ENTRY> Blink;
}

class SINGLE_LIST_ENTRY extends Struct {
  external Pointer<SINGLE_LIST_ENTRY> Next;
}

class RTL_BALANCED_NODE extends Struct {
  @Uint32() external int Anonymous1;
  @Uint32() external int Anonymous2;
}

class LIST_ENTRY32 extends Struct {
  @Uint32() external int Flink;
  @Uint32() external int Blink;
}

class LIST_ENTRY64 extends Struct {
  @Uint64() external int Flink;
  @Uint64() external int Blink;
}

class SINGLE_LIST_ENTRY32 extends Struct {
  @Uint32() external int Next;
}

class WNF_STATE_NAME extends Struct {
  external __uint__ Data;
}

class STRING32 extends Struct {
  @Uint16() external int Length;
  @Uint16() external int MaximumLength;
  @Uint32() external int Buffer;
}

class STRING64 extends Struct {
  @Uint16() external int Length;
  @Uint16() external int MaximumLength;
  @Uint64() external int Buffer;
}

class OBJECT_ATTRIBUTES64 extends Struct {
  @Uint32() external int Length;
  @Uint64() external int RootDirectory;
  @Uint64() external int ObjectName;
  @Uint32() external int Attributes;
  @Uint64() external int SecurityDescriptor;
  @Uint64() external int SecurityQualityOfService;
}

class OBJECT_ATTRIBUTES32 extends Struct {
  @Uint32() external int Length;
  @Uint32() external int RootDirectory;
  @Uint32() external int ObjectName;
  @Uint32() external int Attributes;
  @Uint32() external int SecurityDescriptor;
  @Uint32() external int SecurityQualityOfService;
}

class OBJECTID extends Struct {
  external GUID Lineage;
  @Uint32() external int Uniquifier;
}

