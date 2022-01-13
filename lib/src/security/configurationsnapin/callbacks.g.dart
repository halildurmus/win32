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
import '../../security/configurationsnapin/structs.g.dart';
import '../../foundation/structs.g.dart';

typedef PFSCE_FREE_INFO = Uint32 Function(
  Pointer pvServiceInfo,
);
typedef PFSCE_LOG_INFO = Uint32 Function(
  Uint32 ErrLevel,
  Uint32 Win32rc,
  Pointer<Int8> pErrFmt,
);
typedef PFSCE_QUERY_INFO = Uint32 Function(
  Pointer sceHandle,
  Int32 sceType,
  Pointer<Int8> lpPrefix,
  Int32 bExact,
  Pointer<Pointer> ppvInfo,
  Pointer<Uint32> psceEnumHandle,
);
typedef PFSCE_SET_INFO = Uint32 Function(
  Pointer sceHandle,
  Int32 sceType,
  Pointer<Int8> lpPrefix,
  Int32 bExact,
  Pointer pvInfo,
);
typedef PF_ConfigAnalyzeService = Uint32 Function(
  Pointer<SCESVC_CALLBACK_INFO> pSceCbInfo,
);
typedef PF_UpdateService = Uint32 Function(
  Pointer<SCESVC_CALLBACK_INFO> pSceCbInfo,
  Pointer<SCESVC_CONFIGURATION_INFO> ServiceInfo,
);
