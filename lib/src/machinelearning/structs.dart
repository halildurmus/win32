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

class WINML_TENSOR_BINDING_DESC extends Struct {
  @Uint32()
  external int DataType;
  @Uint32()
  external int NumDimensions;
  external Pointer<Int64> pShape;
  @Uint32()
  external int DataSize;
  external Pointer pData;
}

class WINML_SEQUENCE_BINDING_DESC extends Struct {
  @Uint32()
  external int ElementCount;
  @Uint32()
  external int ElementType;
  @Uint32()
  external int Anonymous;
}

class WINML_MAP_BINDING_DESC extends Struct {
  @Uint32()
  external int ElementCount;
  @Uint32()
  external int KeyType;
  @Uint32()
  external int Anonymous1;
  @Uint32()
  external int Fields;
  @Uint32()
  external int Anonymous2;
}

class WINML_IMAGE_BINDING_DESC extends Struct {
  @Uint32()
  external int ElementType;
  @Uint32()
  external int NumDimensions;
  external Pointer<Int64> pShape;
  @Uint32()
  external int DataSize;
  external Pointer pData;
}

class WINML_RESOURCE_BINDING_DESC extends Struct {
  @Uint32()
  external int ElementType;
  @Uint32()
  external int NumDimensions;
  external Pointer<Int64> pShape;
  external ID3D12Resource pResource;
}

class WINML_BINDING_DESC extends Struct {
  external Pointer<Utf16> Name;
  @Uint32()
  external int BindType;
  @Uint32()
  external int Anonymous;
}

class WINML_TENSOR_VARIABLE_DESC extends Struct {
  @Uint32()
  external int ElementType;
  @Uint32()
  external int NumDimensions;
  external Pointer<Int64> pShape;
}

class WINML_SEQUENCE_VARIABLE_DESC extends Struct {
  @Uint32()
  external int ElementType;
}

class WINML_MAP_VARIABLE_DESC extends Struct {
  @Uint32()
  external int KeyType;
  @Uint32()
  external int Fields;
}

class WINML_IMAGE_VARIABLE_DESC extends Struct {
  @Uint32()
  external int ElementType;
  @Uint32()
  external int NumDimensions;
  external Pointer<Int64> pShape;
}

class WINML_VARIABLE_DESC extends Struct {
  external Pointer<Utf16> Name;
  external Pointer<Utf16> Description;
  @Uint32()
  external int FeatureType;
  @Int32()
  external int Required;
  @Uint32()
  external int Anonymous;
}

class WINML_MODEL_DESC extends Struct {
  external Pointer<Utf16> Author;
  external Pointer<Utf16> Name;
  external Pointer<Utf16> Domain;
  external Pointer<Utf16> Description;
  @IntPtr()
  external int Version;
}

class MLOperatorEdgeDescription extends Struct {
  @Uint32()
  external int edgeType;
  @Uint32()
  external int Anonymous;
}

class MLOperatorSchemaEdgeDescription extends Struct {
  @Uint32()
  external int options;
  @Uint32()
  external int typeFormat;
  @Uint32()
  external int Anonymous;
}

class MLOperatorEdgeTypeConstraint extends Struct {
  external Pointer<Utf8> typeLabel;
  external Pointer<MLOperatorEdgeDescription> allowedTypes;
  @Uint32()
  external int allowedTypeCount;
}

class MLOperatorAttribute extends Struct {
  external Pointer<Utf8> name;
  @Uint32()
  external int type;
  external bool required;
}

class MLOperatorAttributeNameValue extends Struct {
  external Pointer<Utf8> name;
  @Uint32()
  external int type;
  @Uint32()
  external int valueCount;
  @Uint32()
  external int Anonymous;
}

class MLOperatorSchemaDescription extends Struct {
  external Pointer<Utf8> name;
  @Int32()
  external int operatorSetVersionAtLastChange;
  external Pointer<MLOperatorSchemaEdgeDescription> inputs;
  @Uint32()
  external int inputCount;
  external Pointer<MLOperatorSchemaEdgeDescription> outputs;
  @Uint32()
  external int outputCount;
  external Pointer<MLOperatorEdgeTypeConstraint> typeConstraints;
  @Uint32()
  external int typeConstraintCount;
  external Pointer<MLOperatorAttribute> attributes;
  @Uint32()
  external int attributeCount;
  external Pointer<MLOperatorAttributeNameValue> defaultAttributes;
  @Uint32()
  external int defaultAttributeCount;
}

class MLOperatorSetId extends Struct {
  external Pointer<Utf8> domain;
  @Int32()
  external int version;
}

class MLOperatorKernelDescription extends Struct {
  external Pointer<Utf8> domain;
  external Pointer<Utf8> name;
  @Int32()
  external int minimumOperatorSetVersion;
  @Uint32()
  external int executionType;
  external Pointer<MLOperatorEdgeTypeConstraint> typeConstraints;
  @Uint32()
  external int typeConstraintCount;
  external Pointer<MLOperatorAttributeNameValue> defaultAttributes;
  @Uint32()
  external int defaultAttributeCount;
  @Uint32()
  external int options;
  @Uint32()
  external int executionOptions;
}
