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

class RdcLibrary extends Struct {
}

class RdcGeneratorParameters extends Struct {
}

class RdcGeneratorFilterMaxParameters extends Struct {
}

class RdcGenerator extends Struct {
}

class RdcFileReader extends Struct {
}

class RdcSignatureReader extends Struct {
}

class RdcComparator extends Struct {
}

class SimilarityReportProgress extends Struct {
}

class SimilarityTableDumpState extends Struct {
}

class SimilarityTraitsTable extends Struct {
}

class SimilarityFileIdTable extends Struct {
}

class Similarity extends Struct {
}

class RdcSimilarityGenerator extends Struct {
}

class FindSimilarResults extends Struct {
}

class SimilarityTraitsMapping extends Struct {
}

class SimilarityTraitsMappedView extends Struct {
}

class RdcNeed extends Struct {
  @Uint32() external int m_BlockType;
  @Uint64() external int m_FileOffset;
  @Uint64() external int m_BlockLength;
}

class RdcBufferPointer extends Struct {
  @Uint32() external int m_Size;
  @Uint32() external int m_Used;
  external Pointer<Uint8> m_Data;
}

class RdcNeedPointer extends Struct {
  @Uint32() external int m_Size;
  @Uint32() external int m_Used;
  external Pointer<RdcNeed> m_Data;
}

class RdcSignature extends Struct {
  @Array(16)
  external Array<Uint8> m_Signature;
  @Uint16() external int m_BlockLength;
}

class RdcSignaturePointer extends Struct {
  @Uint32() external int m_Size;
  @Uint32() external int m_Used;
  external Pointer<RdcSignature> m_Data;
}

class SimilarityMappedViewInfo extends Struct {
  external Pointer<Uint8> m_Data;
  @Uint32() external int m_Length;
}

class SimilarityData extends Struct {
  @Array(16)
  external Array<Uint8> m_Data;
}

class FindSimilarFileIndexResults extends Struct {
  @Uint32() external int m_FileIndex;
  @Uint32() external int m_MatchCount;
}

class SimilarityDumpData extends Struct {
  @Uint32() external int m_FileIndex;
  external SimilarityData m_Data;
}

class SimilarityFileId extends Struct {
  @Array(32)
  external Array<Uint8> m_FileId;
}

