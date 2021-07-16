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
import '../../guid.dart';
import '../../combase.dart';
import '../../graphics/gdi/structs.g.dart';
import '../../foundation/structs.g.dart';

typedef CFP_ALLOCPROC = Pointer Function(IntPtr param0);
typedef CFP_FREEPROC = Void Function(Pointer param0);
typedef CFP_REALLOCPROC = Pointer Function(Pointer param0, IntPtr param1);
typedef DRAWSTATEPROC = Int32 Function(
    IntPtr hdc, IntPtr lData, IntPtr wData, Int32 cx, Int32 cy);
typedef ENHMFENUMPROC = Int32 Function(IntPtr hdc, Pointer<HANDLETABLE> lpht,
    Pointer<ENHMETARECORD> lpmr, Int32 nHandles, IntPtr data);
typedef FONTENUMPROCW = Int32 Function(Pointer<LOGFONT> param0,
    Pointer<TEXTMETRIC> param1, Uint32 param2, IntPtr param3);
typedef GOBJENUMPROC = Int32 Function(Pointer param0, IntPtr param1);
typedef GRAYSTRINGPROC = Int32 Function(
    IntPtr param0, IntPtr param1, Int32 param2);
typedef LINEDDAPROC = Void Function(Int32 param0, Int32 param1, IntPtr param2);
typedef MFENUMPROC = Int32 Function(IntPtr hdc, Pointer<HANDLETABLE> lpht,
    Pointer<METARECORD> lpMR, Int32 nObj, IntPtr param4);
typedef MONITORENUMPROC = Int32 Function(
    IntPtr param0, IntPtr param1, Pointer<RECT> param2, IntPtr param3);
typedef READEMBEDPROC = Uint32 Function(
    Pointer param0, Pointer param1, Uint32 param2);
typedef WRITEEMBEDPROC = Uint32 Function(
    Pointer param0, Pointer param1, Uint32 param2);
