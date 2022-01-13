// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';

const DWM_BB_ENABLE = 0x1;
const DWM_BB_BLURREGION = 0x2;
const DWM_BB_TRANSITIONONMAXIMIZED = 0x4;
const DWMWA_COLOR_DEFAULT = 0xffffffff;
const DWMWA_COLOR_NONE = 0xfffffffe;
const DWM_CLOAKED_APP = 0x1;
const DWM_CLOAKED_SHELL = 0x2;
const DWM_CLOAKED_INHERITED = 0x4;
const DWM_TNP_RECTDESTINATION = 0x1;
const DWM_TNP_RECTSOURCE = 0x2;
const DWM_TNP_OPACITY = 0x4;
const DWM_TNP_VISIBLE = 0x8;
const DWM_TNP_SOURCECLIENTAREAONLY = 0x10;
const DWM_FRAME_DURATION_DEFAULT = 0xffffffff;
const DWM_EC_DISABLECOMPOSITION = 0x0;
const DWM_EC_ENABLECOMPOSITION = 0x1;
const DWM_SIT_DISPLAYFRAME = 0x1;
const c_DwmMaxQueuedBuffers = 0x8;
const c_DwmMaxMonitors = 0x10;
const c_DwmMaxAdapters = 0x10;
