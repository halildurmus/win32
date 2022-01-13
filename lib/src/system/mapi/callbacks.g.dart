// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// Native callback functions that can get called by the Win32 API

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'structs.g.dart';
import '../../combase.dart';
import '../../guid.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';
import '../../system/mapi/structs.g.dart';

typedef LPMAPIADDRESS = Uint32 Function(
  IntPtr lhSession,
  IntPtr ulUIParam,
  Pointer<Utf8> lpszCaption,
  Uint32 nEditFields,
  Pointer<Utf8> lpszLabels,
  Uint32 nRecips,
  Pointer<MapiRecipDesc> lpRecips,
  Uint32 flFlags,
  Uint32 ulReserved,
  Pointer<Uint32> lpnNewRecips,
  Pointer<Pointer<MapiRecipDesc>> lppNewRecips,
);
typedef LPMAPIDELETEMAIL = Uint32 Function(
  IntPtr lhSession,
  IntPtr ulUIParam,
  Pointer<Utf8> lpszMessageID,
  Uint32 flFlags,
  Uint32 ulReserved,
);
typedef LPMAPIDETAILS = Uint32 Function(
  IntPtr lhSession,
  IntPtr ulUIParam,
  Pointer<MapiRecipDesc> lpRecip,
  Uint32 flFlags,
  Uint32 ulReserved,
);
typedef LPMAPIFINDNEXT = Uint32 Function(
  IntPtr lhSession,
  IntPtr ulUIParam,
  Pointer<Utf8> lpszMessageType,
  Pointer<Utf8> lpszSeedMessageID,
  Uint32 flFlags,
  Uint32 ulReserved,
  Pointer<Utf8> lpszMessageID,
);
typedef LPMAPIFREEBUFFER = Uint32 Function(
  Pointer pv,
);
typedef LPMAPILOGOFF = Uint32 Function(
  IntPtr lhSession,
  IntPtr ulUIParam,
  Uint32 flFlags,
  Uint32 ulReserved,
);
typedef LPMAPILOGON = Uint32 Function(
  IntPtr ulUIParam,
  Pointer<Utf8> lpszProfileName,
  Pointer<Utf8> lpszPassword,
  Uint32 flFlags,
  Uint32 ulReserved,
  Pointer<IntPtr> lplhSession,
);
typedef LPMAPIREADMAIL = Uint32 Function(
  IntPtr lhSession,
  IntPtr ulUIParam,
  Pointer<Utf8> lpszMessageID,
  Uint32 flFlags,
  Uint32 ulReserved,
  Pointer<Pointer<MapiMessage>> lppMessage,
);
typedef LPMAPIRESOLVENAME = Uint32 Function(
  IntPtr lhSession,
  IntPtr ulUIParam,
  Pointer<Utf8> lpszName,
  Uint32 flFlags,
  Uint32 ulReserved,
  Pointer<Pointer<MapiRecipDesc>> lppRecip,
);
typedef LPMAPISAVEMAIL = Uint32 Function(
  IntPtr lhSession,
  IntPtr ulUIParam,
  Pointer<MapiMessage> lpMessage,
  Uint32 flFlags,
  Uint32 ulReserved,
  Pointer<Utf8> lpszMessageID,
);
typedef LPMAPISENDDOCUMENTS = Uint32 Function(
  IntPtr ulUIParam,
  Pointer<Utf8> lpszDelimChar,
  Pointer<Utf8> lpszFilePaths,
  Pointer<Utf8> lpszFileNames,
  Uint32 ulReserved,
);
typedef LPMAPISENDMAIL = Uint32 Function(
  IntPtr lhSession,
  IntPtr ulUIParam,
  Pointer<MapiMessage> lpMessage,
  Uint32 flFlags,
  Uint32 ulReserved,
);
typedef LPMAPISENDMAILW = Uint32 Function(
  IntPtr lhSession,
  IntPtr ulUIParam,
  Pointer<MapiMessage> lpMessage,
  Uint32 flFlags,
  Uint32 ulReserved,
);
