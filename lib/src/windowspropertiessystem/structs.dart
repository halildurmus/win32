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

class InMemoryPropertyStore extends Struct {}

class InMemoryPropertyStoreMarshalByValue extends Struct {}

class PropertySystem extends Struct {}

class SERIALIZEDPROPSTORAGE extends Struct {}

class PROPERTYKEY extends Struct {
  external GUID fmtid;
  @Uint32()
  external int pid;
}

class PROPPRG extends Struct {
  @Uint16()
  external int flPrg;
  @Uint16()
  external int flPrgInit;
  @Array(30)
  external Array<Int8> achTitle;
  @Array(128)
  external Array<Int8> achCmdLine;
  @Array(64)
  external Array<Int8> achWorkDir;
  @Uint16()
  external int wHotKey;
  @Array(80)
  external Array<Int8> achIconFile;
  @Uint16()
  external int wIconIndex;
  @Uint32()
  external int dwEnhModeFlags;
  @Uint32()
  external int dwRealModeFlags;
  @Array(80)
  external Array<Int8> achOtherFile;
  @Array(129)
  external Array<Int8> achPIFFile;
}
