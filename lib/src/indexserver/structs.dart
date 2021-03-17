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

class IPhraseSink extends Struct {
}

class CI_STATE extends Struct {
  @Uint32() external int cbStruct;
  @Uint32() external int cWordList;
  @Uint32() external int cPersistentIndex;
  @Uint32() external int cQueries;
  @Uint32() external int cDocuments;
  @Uint32() external int cFreshTest;
  @Uint32() external int dwMergeProgress;
  @Uint32() external int eState;
  @Uint32() external int cFilteredDocuments;
  @Uint32() external int cTotalDocuments;
  @Uint32() external int cPendingScans;
  @Uint32() external int dwIndexSize;
  @Uint32() external int cUniqueKeys;
  @Uint32() external int cSecQDocuments;
  @Uint32() external int dwPropCacheSize;
}

class FULLPROPSPEC extends Struct {
  external GUID guidPropSet;
  external PROPSPEC psProperty;
}

class FILTERREGION extends Struct {
  @Uint32() external int idChunk;
  @Uint32() external int cwcStart;
  @Uint32() external int cwcExtent;
}

class STAT_CHUNK extends Struct {
  @Uint32() external int idChunk;
  @Uint32() external int breakType;
  @Uint32() external int flags;
  @Uint32() external int locale;
  external FULLPROPSPEC attribute;
  @Uint32() external int idChunkSource;
  @Uint32() external int cwcStartSource;
  @Uint32() external int cwcLenSource;
}

