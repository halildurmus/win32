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
import '../../system/applicationinstallationandservicing/structs.g.dart';

typedef INSTALLUI_HANDLERW = Int32 Function(
  Pointer pvContext,
  Uint32 iMessageType,
  Pointer<Utf16> szMessage,
);
typedef LPDISPLAYVAL = Int32 Function(
  Pointer pContext,
  Int32 uiType,
  Pointer<Utf16> szwVal,
  Pointer<Utf16> szwDescription,
  Pointer<Utf16> szwLocation,
);
typedef LPEVALCOMCALLBACK = Int32 Function(
  Int32 iStatus,
  Pointer<Utf16> szData,
  Pointer pContext,
);
typedef PINSTALLUI_HANDLER_RECORD = Int32 Function(
  Pointer pvContext,
  Uint32 iMessageType,
  Uint32 hRecord,
);
typedef PPATCH_PROGRESS_CALLBACK = Int32 Function(
  Pointer CallbackContext,
  Uint32 CurrentPosition,
  Uint32 MaximumPosition,
);
typedef PPATCH_SYMLOAD_CALLBACK = Int32 Function(
  Uint32 WhichFile,
  Pointer<Utf8> SymbolFileName,
  Uint32 SymType,
  Uint32 SymbolFileCheckSum,
  Uint32 SymbolFileTimeDate,
  Uint32 ImageFileCheckSum,
  Uint32 ImageFileTimeDate,
  Pointer CallbackContext,
);
