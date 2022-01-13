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
import '../../system/diagnostics/debug/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../system/systemservices/structs.g.dart';

typedef APC_CALLBACK_FUNCTION = Void Function(
  Uint32 param0,
  Pointer param1,
  Pointer param2,
);
typedef PEXCEPTION_FILTER = Int32 Function(
  Pointer<EXCEPTION_POINTERS> ExceptionPointers,
  Pointer EstablisherFrame,
);
typedef PIMAGE_TLS_CALLBACK = Void Function(
  Pointer DllHandle,
  Uint32 Reason,
  Pointer Reserved,
);
typedef POUT_OF_PROCESS_FUNCTION_TABLE_CALLBACK = Uint32 Function(
  IntPtr Process,
  Pointer TableAddress,
  Pointer<Uint32> Entries,
  Pointer<Pointer<IMAGE_RUNTIME_FUNCTION_ENTRY>> Functions,
);
typedef PTERMINATION_HANDLER = Void Function(
  Uint8 abnormal_termination,
  Pointer EstablisherFrame,
);
typedef PUMS_SCHEDULER_ENTRY_POINT = Void Function(
  Int32 Reason,
  IntPtr ActivationPayload,
  Pointer SchedulerParam,
);
typedef WORKERCALLBACKFUNC = Void Function(
  Pointer param0,
);
