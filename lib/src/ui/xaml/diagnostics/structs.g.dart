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
import '../../../combase.dart';
import '../../../guid.dart';
import '../../../graphics/dxgi/common/structs.g.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/com/structs.g.dart';
import '../../../ui/xaml/diagnostics/structs.g.dart';

/// {@category Struct}
class BitmapDescription extends Struct {
  @Uint32()
  external int Width;

  @Uint32()
  external int Height;

  @Uint32()
  external int Format;

  @Uint32()
  external int AlphaMode;
}

/// {@category Struct}
class CollectionElementValue extends Struct {
  @Uint32()
  external int Index;

  external Pointer<Utf16> ValueType;

  external Pointer<Utf16> Value;

  @Int64()
  external int MetadataBits;
}

/// {@category Struct}
class EnumType extends Struct {
  external Pointer<Utf16> Name;

  external Pointer<SAFEARRAY> ValueInts;

  external Pointer<SAFEARRAY> ValueStrings;
}

/// {@category Struct}
class ParentChildRelation extends Struct {
  @Uint64()
  external int Parent;

  @Uint64()
  external int Child;

  @Uint32()
  external int ChildIndex;
}

/// {@category Struct}
class PropertyChainSource extends Struct {
  @Uint64()
  external int $Handle;

  external Pointer<Utf16> TargetType;

  external Pointer<Utf16> Name;

  @Int32()
  external int Source;

  external SourceInfo SrcInfo;
}

/// {@category Struct}
class PropertyChainValue extends Struct {
  @Uint32()
  external int Index;

  external Pointer<Utf16> Type;

  external Pointer<Utf16> DeclaringType;

  external Pointer<Utf16> ValueType;

  external Pointer<Utf16> ItemType;

  external Pointer<Utf16> Value;

  @Int32()
  external int Overridden;

  @Int64()
  external int MetadataBits;

  external Pointer<Utf16> PropertyName;

  @Uint32()
  external int PropertyChainIndex;
}

/// {@category Struct}
class SourceInfo extends Struct {
  external Pointer<Utf16> FileName;

  @Uint32()
  external int LineNumber;

  @Uint32()
  external int ColumnNumber;

  @Uint32()
  external int CharPosition;

  external Pointer<Utf16> Hash;
}

/// {@category Struct}
class VisualElement extends Struct {
  @Uint64()
  external int $Handle;

  external SourceInfo SrcInfo;

  external Pointer<Utf16> Type;

  external Pointer<Utf16> Name;

  @Uint32()
  external int NumChildren;
}
