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
import '../../foundation/structs.g.dart';
import '../../system/mapi/structs.g.dart';

/// {@category Struct}
class MapiFileDesc extends Struct {
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

/// {@category Struct}
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

/// {@category Struct}
class MapiMessage extends Struct {
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

/// {@category Struct}
class MapiRecipDesc extends Struct {
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
