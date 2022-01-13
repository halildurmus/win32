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
import '../../media/audio/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../media/multimedia/structs.g.dart';
import '../../media/audio/IAudioStateMonitor.dart';

typedef ACMDRIVERENUMCB = Int32 Function(
  IntPtr hadid,
  IntPtr dwInstance,
  Uint32 fdwSupport,
);
typedef ACMFILTERCHOOSEHOOKPROCW = Uint32 Function(
  IntPtr hwnd,
  Uint32 uMsg,
  IntPtr wParam,
  IntPtr lParam,
);
typedef ACMFILTERENUMCBW = Int32 Function(
  IntPtr hadid,
  Pointer<ACMFILTERDETAILS> pafd,
  IntPtr dwInstance,
  Uint32 fdwSupport,
);
typedef ACMFILTERTAGENUMCBW = Int32 Function(
  IntPtr hadid,
  Pointer<ACMFILTERTAGDETAILS> paftd,
  IntPtr dwInstance,
  Uint32 fdwSupport,
);
typedef ACMFORMATCHOOSEHOOKPROCW = Uint32 Function(
  IntPtr hwnd,
  Uint32 uMsg,
  IntPtr wParam,
  IntPtr lParam,
);
typedef ACMFORMATENUMCBW = Int32 Function(
  IntPtr hadid,
  Pointer<tACMFORMATDETAILS> pafd,
  IntPtr dwInstance,
  Uint32 fdwSupport,
);
typedef ACMFORMATTAGENUMCBW = Int32 Function(
  IntPtr hadid,
  Pointer<ACMFORMATTAGDETAILS> paftd,
  IntPtr dwInstance,
  Uint32 fdwSupport,
);
typedef LPACMDRIVERPROC = IntPtr Function(
  IntPtr param0,
  IntPtr param1,
  Uint32 param2,
  IntPtr param3,
  IntPtr param4,
);
typedef LPMIDICALLBACK = Void Function(
  IntPtr hdrvr,
  Uint32 uMsg,
  IntPtr dwUser,
  IntPtr dw1,
  IntPtr dw2,
);
typedef LPWAVECALLBACK = Void Function(
  IntPtr hdrvr,
  Uint32 uMsg,
  IntPtr dwUser,
  IntPtr dw1,
  IntPtr dw2,
);
typedef PAudioStateMonitorCallback = Void Function(
  Pointer<COMObject> audioStateMonitor,
  Pointer context,
);
