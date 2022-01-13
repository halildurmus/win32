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

typedef HANDLER_FUNCTION = Void Function(
  Uint32 dwControl,
);
typedef HANDLER_FUNCTION_EX = Uint32 Function(
  Uint32 dwControl,
  Uint32 dwEventType,
  Pointer lpEventData,
  Pointer lpContext,
);
typedef LPHANDLER_FUNCTION = Void Function(
  Uint32 dwControl,
);
typedef LPHANDLER_FUNCTION_EX = Uint32 Function(
  Uint32 dwControl,
  Uint32 dwEventType,
  Pointer lpEventData,
  Pointer lpContext,
);
typedef LPSERVICE_MAIN_FUNCTIONW = Void Function(
  Uint32 dwNumServicesArgs,
  Pointer<Pointer<Utf16>> lpServiceArgVectors,
);
typedef PFN_SC_NOTIFY_CALLBACK = Void Function(
  Pointer pParameter,
);
typedef PSC_NOTIFICATION_CALLBACK = Void Function(
  Uint32 dwNotify,
  Pointer pCallbackContext,
);
typedef SERVICE_MAIN_FUNCTIONW = Void Function(
  Uint32 dwNumServicesArgs,
  Pointer<Pointer<Utf16>> lpServiceArgVectors,
);
