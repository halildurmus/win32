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
import '../../storage/projectedfilesystem/structs.g.dart';
import '../../foundation/structs.g.dart';

typedef PRJ_CANCEL_COMMAND_CB = Void Function(
  Pointer<PRJ_CALLBACK_DATA> callbackData,
);
typedef PRJ_END_DIRECTORY_ENUMERATION_CB = Int32 Function(
  Pointer<PRJ_CALLBACK_DATA> callbackData,
  Pointer<GUID> enumerationId,
);
typedef PRJ_GET_DIRECTORY_ENUMERATION_CB = Int32 Function(
  Pointer<PRJ_CALLBACK_DATA> callbackData,
  Pointer<GUID> enumerationId,
  Pointer<Utf16> searchExpression,
  IntPtr dirEntryBufferHandle,
);
typedef PRJ_GET_FILE_DATA_CB = Int32 Function(
  Pointer<PRJ_CALLBACK_DATA> callbackData,
  Uint64 byteOffset,
  Uint32 length,
);
typedef PRJ_GET_PLACEHOLDER_INFO_CB = Int32 Function(
  Pointer<PRJ_CALLBACK_DATA> callbackData,
);
typedef PRJ_NOTIFICATION_CB = Int32 Function(
  Pointer<PRJ_CALLBACK_DATA> callbackData,
  Uint8 isDirectory,
  Int32 notification,
  Pointer<Utf16> destinationFileName,
  Pointer<PRJ_NOTIFICATION_PARAMETERS> operationParameters,
);
typedef PRJ_QUERY_FILE_NAME_CB = Int32 Function(
  Pointer<PRJ_CALLBACK_DATA> callbackData,
);
typedef PRJ_START_DIRECTORY_ENUMERATION_CB = Int32 Function(
  Pointer<PRJ_CALLBACK_DATA> callbackData,
  Pointer<GUID> enumerationId,
);
