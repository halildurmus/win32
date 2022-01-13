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
import '../../storage/datadeduplication/structs.g.dart';
import '../../foundation/structs.g.dart';

/// {@category Struct}
class DDP_FILE_EXTENT extends Struct {
  @Int64()
  external int Length;

  @Int64()
  external int Offset;
}

/// {@category Struct}
class DEDUP_CHUNK_INFO_HASH32 extends Struct {
  @Uint32()
  external int ChunkFlags;

  @Uint64()
  external int ChunkOffsetInStream;

  @Uint64()
  external int ChunkSize;

  @Array(32)
  external Array<Uint8> HashVal;
}

/// {@category Struct}
class DEDUP_CONTAINER_EXTENT extends Struct {
  @Uint32()
  external int ContainerIndex;

  @Int64()
  external int StartOffset;

  @Int64()
  external int Length;
}

/// {@category Struct}
class DedupChunk extends Struct {
  external DedupHash Hash;

  @Int32()
  external int Flags;

  @Uint32()
  external int LogicalSize;

  @Uint32()
  external int DataSize;
}

/// {@category Struct}
class DedupHash extends Struct {
  @Array(32)
  external Array<Uint8> Hash;
}

/// {@category Struct}
class DedupStream extends Struct {
  external Pointer<Utf16> Path;

  @Uint64()
  external int Offset;

  @Uint64()
  external int Length;

  @Uint32()
  external int ChunkCount;
}

/// {@category Struct}
class DedupStreamEntry extends Struct {
  external DedupHash Hash;

  @Uint32()
  external int LogicalSize;

  @Uint64()
  external int Offset;
}
