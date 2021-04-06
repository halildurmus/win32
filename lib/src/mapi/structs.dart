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

class MapiFileDesc extends Struct {
  @Uint32()
  external int ulReserved;
  @Uint32()
  external int flFlags;
  @Uint32()
  external int nPosition;
  external Pointer<Utf8> lpszPathName;
  external Pointer<Utf8> lpszFileName;
  external Pointer lpFileType;
}

class MapiFileDescW extends Struct {
  @Uint32()
  external int ulReserved;
  @Uint32()
  external int flFlags;
  @Uint32()
  external int nPosition;
  external Pointer<Utf16> lpszPathName;
  external Pointer<Utf16> lpszFileName;
  external Pointer lpFileType;
}

class MapiFileTagExt extends Struct {
  @Uint32()
  external int ulReserved;
  @Uint32()
  external int cbTag;
  external Pointer<Uint8> lpTag;
  @Uint32()
  external int cbEncoding;
  external Pointer<Uint8> lpEncoding;
}

class MapiRecipDesc extends Struct {
  @Uint32()
  external int ulReserved;
  @Uint32()
  external int ulRecipClass;
  external Pointer<Utf8> lpszName;
  external Pointer<Utf8> lpszAddress;
  @Uint32()
  external int ulEIDSize;
  external Pointer lpEntryID;
}

class MapiRecipDescW extends Struct {
  @Uint32()
  external int ulReserved;
  @Uint32()
  external int ulRecipClass;
  external Pointer<Utf16> lpszName;
  external Pointer<Utf16> lpszAddress;
  @Uint32()
  external int ulEIDSize;
  external Pointer lpEntryID;
}

class MapiMessage extends Struct {
  @Uint32()
  external int ulReserved;
  external Pointer<Utf8> lpszSubject;
  external Pointer<Utf8> lpszNoteText;
  external Pointer<Utf8> lpszMessageType;
  external Pointer<Utf8> lpszDateReceived;
  external Pointer<Utf8> lpszConversationID;
  @Uint32()
  external int flFlags;
  external Pointer<MapiRecipDesc> lpOriginator;
  @Uint32()
  external int nRecipCount;
  external Pointer<MapiRecipDesc> lpRecips;
  @Uint32()
  external int nFileCount;
  external Pointer<MapiFileDesc> lpFiles;
}

class MapiMessageW extends Struct {
  @Uint32()
  external int ulReserved;
  external Pointer<Utf16> lpszSubject;
  external Pointer<Utf16> lpszNoteText;
  external Pointer<Utf16> lpszMessageType;
  external Pointer<Utf16> lpszDateReceived;
  external Pointer<Utf16> lpszConversationID;
  @Uint32()
  external int flFlags;
  external Pointer<MapiRecipDesc> lpOriginator;
  @Uint32()
  external int nRecipCount;
  external Pointer<MapiRecipDesc> lpRecips;
  @Uint32()
  external int nFileCount;
  external Pointer<MapiFileDesc> lpFiles;
}
