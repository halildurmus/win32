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

class SourceInfo extends Struct {
  external Pointer<Utf16> FileName;
  @Uint32() external int LineNumber;
  @Uint32() external int ColumnNumber;
  @Uint32() external int CharPosition;
  external Pointer<Utf16> Hash;
}

class ParentChildRelation extends Struct {
  @Uint64() external int Parent;
  @Uint64() external int Child;
  @Uint32() external int ChildIndex;
}

class VisualElement extends Struct {
  @Uint64() external int Handle;
  external SourceInfo SrcInfo;
  external Pointer<Utf16> Type;
  external Pointer<Utf16> Name;
  @Uint32() external int NumChildren;
}

class PropertyChainSource extends Struct {
  @Uint64() external int Handle;
  external Pointer<Utf16> TargetType;
  external Pointer<Utf16> Name;
  @Uint32() external int Source;
  external SourceInfo SrcInfo;
}

class PropertyChainValue extends Struct {
  @Uint32() external int Index;
  external Pointer<Utf16> Type;
  external Pointer<Utf16> DeclaringType;
  external Pointer<Utf16> ValueType;
  external Pointer<Utf16> ItemType;
  external Pointer<Utf16> Value;
  @Int32() external int Overridden;
  @Int64() external int MetadataBits;
  external Pointer<Utf16> PropertyName;
  @Uint32() external int PropertyChainIndex;
}

class EnumType extends Struct {
  external Pointer<Utf16> Name;
  external Pointer<SAFEARRAY> ValueInts;
  external Pointer<SAFEARRAY> ValueStrings;
}

class CollectionElementValue extends Struct {
  @Uint32() external int Index;
  external Pointer<Utf16> ValueType;
  external Pointer<Utf16> Value;
  @Int64() external int MetadataBits;
}

class BitmapDescription extends Struct {
  @Uint32() external int Width;
  @Uint32() external int Height;
  @Uint32() external int Format;
  @Uint32() external int AlphaMode;
}

