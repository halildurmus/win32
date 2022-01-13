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
import '../../networking/remotedifferentialcompression/structs.g.dart';

/// {@category Struct}
class FindSimilarFileIndexResults extends Struct {
  @Uint32()
  external int m_FileIndex;

  @Uint32()
  external int m_MatchCount;
}

/// {@category Struct}
class RdcBufferPointer extends Struct {
  @Uint32()
  external int m_Size;

  @Uint32()
  external int m_Used;

  external Pointer<Uint8> m_Data;
}

/// {@category Struct}
class RdcNeed extends Struct {
  @Int32()
  external int m_BlockType;

  @Uint64()
  external int m_FileOffset;

  @Uint64()
  external int m_BlockLength;
}

/// {@category Struct}
class RdcNeedPointer extends Struct {
  @Uint32()
  external int m_Size;

  @Uint32()
  external int m_Used;

  external Pointer<RdcNeed> m_Data;
}

/// {@category Struct}
class RdcSignature extends Struct {
  @Array(16)
  external Array<Uint8> m_Signature;

  @Uint16()
  external int m_BlockLength;
}

/// {@category Struct}
class RdcSignaturePointer extends Struct {
  @Uint32()
  external int m_Size;

  @Uint32()
  external int m_Used;

  external Pointer<RdcSignature> m_Data;
}

/// {@category Struct}
class SimilarityData extends Struct {
  @Array(16)
  external Array<Uint8> m_Data;
}

/// {@category Struct}
class SimilarityDumpData extends Struct {
  @Uint32()
  external int m_FileIndex;

  external SimilarityData m_Data;
}

/// {@category Struct}
class SimilarityFileId extends Struct {
  @Array(32)
  external Array<Uint8> m_FileId;
}

/// {@category Struct}
class SimilarityMappedViewInfo extends Struct {
  external Pointer<Uint8> m_Data;

  @Uint32()
  external int m_Length;
}
