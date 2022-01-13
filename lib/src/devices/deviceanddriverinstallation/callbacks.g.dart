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
import '../../devices/deviceanddriverinstallation/structs.g.dart';

typedef PCM_NOTIFY_CALLBACK = Uint32 Function(
  IntPtr hNotify,
  Pointer Context,
  Int32 Action,
  Pointer<CM_NOTIFY_EVENT_DATA> EventData,
  Uint32 EventDataSize,
);
typedef PDETECT_PROGRESS_NOTIFY = Int32 Function(
  Pointer ProgressNotifyParam,
  Uint32 DetectComplete,
);
typedef PSP_DETSIG_CMPPROC = Uint32 Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> NewDeviceData,
  Pointer<SP_DEVINFO_DATA> ExistingDeviceData,
  Pointer CompareContext,
);
typedef PSP_FILE_CALLBACK_A = Uint32 Function(
  Pointer Context,
  Uint32 Notification,
  IntPtr Param1,
  IntPtr Param2,
);
typedef PSP_FILE_CALLBACK_W = Uint32 Function(
  Pointer Context,
  Uint32 Notification,
  IntPtr Param1,
  IntPtr Param2,
);
