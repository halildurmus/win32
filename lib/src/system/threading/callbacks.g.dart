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
import '../../system/threading/structs.g.dart';
import '../../system/systemservices/structs.g.dart';
import '../../foundation/structs.g.dart';

typedef LPFIBER_START_ROUTINE = Void Function(
  Pointer lpFiberParameter,
);
typedef LPTHREAD_START_ROUTINE = Uint32 Function(
  Pointer lpThreadParameter,
);
typedef PFLS_CALLBACK_FUNCTION = Void Function(
  Pointer lpFlsData,
);
typedef PINIT_ONCE_FN = Int32 Function(
  Pointer<RTL_RUN_ONCE> InitOnce,
  Pointer Parameter,
  Pointer<Pointer> Context,
);
typedef PPS_POST_PROCESS_INIT_ROUTINE = Void Function();
typedef PRTL_UMS_SCHEDULER_ENTRY_POINT = Void Function(
  Int32 Reason,
  IntPtr ActivationPayload,
  Pointer SchedulerParam,
);
typedef PTIMERAPCROUTINE = Void Function(
  Pointer lpArgToCompletionRoutine,
  Uint32 dwTimerLowValue,
  Uint32 dwTimerHighValue,
);
typedef PTP_CLEANUP_GROUP_CANCEL_CALLBACK = Void Function(
  Pointer ObjectContext,
  Pointer CleanupContext,
);
typedef PTP_SIMPLE_CALLBACK = Void Function(
  Pointer<TP_CALLBACK_INSTANCE> Instance,
  Pointer Context,
);
typedef PTP_TIMER_CALLBACK = Void Function(
  Pointer<TP_CALLBACK_INSTANCE> Instance,
  Pointer Context,
  Pointer<TP_TIMER> Timer,
);
typedef PTP_WAIT_CALLBACK = Void Function(
  Pointer<TP_CALLBACK_INSTANCE> Instance,
  Pointer Context,
  Pointer<TP_WAIT> Wait,
  Uint32 WaitResult,
);
typedef PTP_WIN32_IO_CALLBACK = Void Function(
  Pointer<TP_CALLBACK_INSTANCE> Instance,
  Pointer Context,
  Pointer Overlapped,
  Uint32 IoResult,
  IntPtr NumberOfBytesTransferred,
  Pointer<TP_IO> Io,
);
typedef PTP_WORK_CALLBACK = Void Function(
  Pointer<TP_CALLBACK_INSTANCE> Instance,
  Pointer Context,
  Pointer<TP_WORK> Work,
);
typedef WAITORTIMERCALLBACK = Void Function(
  Pointer param0,
  Uint8 param1,
);
