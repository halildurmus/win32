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

const ED_BASE = 0x1000;
const DEV_PORT_SIM = 0x1;
const DEV_PORT_COM1 = 0x2;
const DEV_PORT_COM2 = 0x3;
const DEV_PORT_COM3 = 0x4;
const DEV_PORT_COM4 = 0x5;
const DEV_PORT_DIAQ = 0x6;
const DEV_PORT_ARTI = 0x7;
const DEV_PORT_1394 = 0x8;
const DEV_PORT_USB = 0x9;
const DEV_PORT_MIN = 0x1;
const DEV_PORT_MAX = 0x9;
const ED_TOP = 0x1;
const ED_MIDDLE = 0x2;
const ED_BOTTOM = 0x4;
const ED_LEFT = 0x100;
const ED_CENTER = 0x200;
const ED_RIGHT = 0x400;
const ED_AUDIO_ALL = 0x10000000;
const ED_AUDIO_1 = 0x1;
const ED_AUDIO_2 = 0x2;
const ED_AUDIO_3 = 0x4;
const ED_AUDIO_4 = 0x8;
const ED_AUDIO_5 = 0x10;
const ED_AUDIO_6 = 0x20;
const ED_AUDIO_7 = 0x40;
const ED_AUDIO_8 = 0x80;
const ED_AUDIO_9 = 0x100;
const ED_AUDIO_10 = 0x200;
const ED_AUDIO_11 = 0x400;
const ED_AUDIO_12 = 0x800;
const ED_AUDIO_13 = 0x1000;
const ED_AUDIO_14 = 0x2000;
const ED_AUDIO_15 = 0x4000;
const ED_AUDIO_16 = 0x8000;
const ED_AUDIO_17 = 0x10000;
const ED_AUDIO_18 = 0x20000;
const ED_AUDIO_19 = 0x40000;
const ED_AUDIO_20 = 0x80000;
const ED_AUDIO_21 = 0x100000;
const ED_AUDIO_22 = 0x200000;
const ED_AUDIO_23 = 0x400000;
const ED_AUDIO_24 = 0x800000;
const ED_VIDEO = 0x2000000;
const CLSID_DeviceIoControl = 0x0;
