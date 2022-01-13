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
import '../../system/com/IUnknown.dart';
import '../../devices/humaninterfacedevice/IDirectInputEffect.dart';
import '../../devices/humaninterfacedevice/structs.g.dart';
import '../../devices/humaninterfacedevice/IDirectInputDevice8.dart';
import '../../foundation/structs.g.dart';

typedef LPDICONFIGUREDEVICESCALLBACK = Int32 Function(
  Pointer<COMObject> param0,
  Pointer param1,
);
typedef LPDIENUMCREATEDEFFECTOBJECTSCALLBACK = Int32 Function(
  Pointer<COMObject> param0,
  Pointer param1,
);
typedef LPDIENUMDEVICEOBJECTSCALLBACKW = Int32 Function(
  Pointer<DIDEVICEOBJECTINSTANCE> param0,
  Pointer param1,
);
typedef LPDIENUMDEVICESBYSEMANTICSCBW = Int32 Function(
  Pointer<DIDEVICEINSTANCE> param0,
  Pointer<COMObject> param1,
  Uint32 param2,
  Uint32 param3,
  Pointer param4,
);
typedef LPDIENUMDEVICESCALLBACKW = Int32 Function(
  Pointer<DIDEVICEINSTANCE> param0,
  Pointer param1,
);
typedef LPDIENUMEFFECTSCALLBACKW = Int32 Function(
  Pointer<DIEFFECTINFO> param0,
  Pointer param1,
);
typedef LPDIENUMEFFECTSINFILECALLBACK = Int32 Function(
  Pointer<DIFILEEFFECT> param0,
  Pointer param1,
);
typedef LPDIJOYTYPECALLBACK = Int32 Function(
  Pointer<Utf16> param0,
  Pointer param1,
);
typedef LPFNSHOWJOYCPL = Void Function(
  IntPtr hWnd,
);
typedef PFN_HidP_GetVersionInternal = Int32 Function(
  Pointer<Uint32> Version,
);
typedef PHIDP_INSERT_SCANCODES = Uint8 Function(
  Pointer Context,
  Pointer<Utf8> NewScanCodes,
  Uint32 Length,
);
