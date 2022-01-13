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
import '../../media/multimedia/structs.g.dart';
import '../../media/audio/structs.g.dart';
import '../../specialTypes.dart';
import '../../ui/controls/callbacks.g.dart';

typedef AVISAVECALLBACK = Int32 Function(
  Int32 param0,
);
typedef CAPCONTROLCALLBACK = IntPtr Function(
  IntPtr hWnd,
  Int32 nState,
);
typedef CAPERRORCALLBACKW = IntPtr Function(
  IntPtr hWnd,
  Int32 nID,
  Pointer<Utf16> lpsz,
);
typedef CAPSTATUSCALLBACKW = IntPtr Function(
  IntPtr hWnd,
  Int32 nID,
  Pointer<Utf16> lpsz,
);
typedef CAPVIDEOCALLBACK = IntPtr Function(
  IntPtr hWnd,
  Pointer<VIDEOHDR> lpVHdr,
);
typedef CAPWAVECALLBACK = IntPtr Function(
  IntPtr hWnd,
  Pointer<WAVEHDR> lpWHdr,
);
typedef CAPYIELDCALLBACK = IntPtr Function(
  IntPtr hWnd,
);
typedef DRIVERMSGPROC = Uint32 Function(
  Uint32 param0,
  Uint32 param1,
  IntPtr param2,
  IntPtr param3,
  IntPtr param4,
);
typedef DRIVERPROC = IntPtr Function(
  IntPtr param0,
  IntPtr param1,
  Uint32 param2,
  IntPtr param3,
  IntPtr param4,
);
typedef LPFNEXTDEVIO = Int32 Function(
  IntPtr lParam,
  Uint32 dwFlags,
  Uint32 dwIoControlCode,
  Pointer lpInBuffer,
  Uint32 nInBufferSize,
  Pointer lpOutBuffer,
  Uint32 nOutBufferSize,
  Pointer<Uint32> lpBytesReturned,
  Pointer<OVERLAPPED> lpOverlapped,
);
typedef LPMMIOPROC = IntPtr Function(
  Pointer<Utf8> lpmmioinfo,
  Uint32 uMsg,
  IntPtr lParam1,
  IntPtr lParam2,
);
typedef LPTASKCALLBACK = Void Function(
  IntPtr dwInst,
);
typedef VFWWDMExtensionProc = Uint32 Function(
  Pointer pfnDeviceIoControl,
  Pointer<NativeFunction<LPFNSVADDPROPSHEETPAGE>> pfnAddPropertyPage,
  IntPtr lParam,
);
typedef YIELDPROC = Uint32 Function(
  Uint32 mciId,
  Uint32 dwYieldData,
);
