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

class WiaVideo extends Struct {}

class WIA_DITHER_PATTERN_DATA extends Struct {
  @Int32()
  external int lSize;
  external Pointer<Utf16> bstrPatternName;
  @Int32()
  external int lPatternWidth;
  @Int32()
  external int lPatternLength;
  @Int32()
  external int cbPattern;
  external Pointer<Uint8> pbPattern;
}

class WIA_PROPID_TO_NAME extends Struct {
  @Uint32()
  external int propid;
  external Pointer<Utf16> pszName;
}

class WIA_FORMAT_INFO extends Struct {
  external GUID guidFormatID;
  @Int32()
  external int lTymed;
}

class WIA_DATA_CALLBACK_HEADER extends Struct {
  @Int32()
  external int lSize;
  external GUID guidFormatID;
  @Int32()
  external int lBufferSize;
  @Int32()
  external int lPageCount;
}

class WIA_DATA_TRANSFER_INFO extends Struct {
  @Uint32()
  external int ulSize;
  @Uint32()
  external int ulSection;
  @Uint32()
  external int ulBufferSize;
  @Int32()
  external int bDoubleBuffer;
  @Uint32()
  external int ulReserved1;
  @Uint32()
  external int ulReserved2;
  @Uint32()
  external int ulReserved3;
}

class WIA_EXTENDED_TRANSFER_INFO extends Struct {
  @Uint32()
  external int ulSize;
  @Uint32()
  external int ulMinBufferSize;
  @Uint32()
  external int ulOptimalBufferSize;
  @Uint32()
  external int ulMaxBufferSize;
  @Uint32()
  external int ulNumBuffers;
}

class WIA_DEV_CAP extends Struct {
  external GUID guid;
  @Uint32()
  external int ulFlags;
  external Pointer<Utf16> bstrName;
  external Pointer<Utf16> bstrDescription;
  external Pointer<Utf16> bstrIcon;
  external Pointer<Utf16> bstrCommandline;
}
