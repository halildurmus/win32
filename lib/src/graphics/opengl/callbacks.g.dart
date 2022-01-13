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

typedef GLUnurbsErrorProc = Void Function(
  Uint32 param0,
);
typedef GLUquadricErrorProc = Void Function(
  Uint32 param0,
);
typedef GLUtessBeginDataProc = Void Function(
  Uint32 param0,
  Pointer param1,
);
typedef GLUtessBeginProc = Void Function(
  Uint32 param0,
);
typedef GLUtessCombineDataProc = Void Function(
  Pointer<Double> param0,
  Pointer<Pointer> param1,
  Pointer<Float> param2,
  Pointer<Pointer> param3,
  Pointer param4,
);
typedef GLUtessCombineProc = Void Function(
  Pointer<Double> param0,
  Pointer<Pointer> param1,
  Pointer<Float> param2,
  Pointer<Pointer> param3,
);
typedef GLUtessEdgeFlagDataProc = Void Function(
  Uint8 param0,
  Pointer param1,
);
typedef GLUtessEdgeFlagProc = Void Function(
  Uint8 param0,
);
typedef GLUtessEndDataProc = Void Function(
  Pointer param0,
);
typedef GLUtessEndProc = Void Function();
typedef GLUtessErrorDataProc = Void Function(
  Uint32 param0,
  Pointer param1,
);
typedef GLUtessErrorProc = Void Function(
  Uint32 param0,
);
typedef GLUtessVertexDataProc = Void Function(
  Pointer param0,
  Pointer param1,
);
typedef GLUtessVertexProc = Void Function(
  Pointer param0,
);
typedef PFNGLADDSWAPHINTRECTWINPROC = Void Function(
  Int32 x,
  Int32 y,
  Int32 width,
  Int32 height,
);
typedef PFNGLARRAYELEMENTARRAYEXTPROC = Void Function(
  Uint32 mode,
  Int32 count,
  Pointer pi,
);
typedef PFNGLARRAYELEMENTEXTPROC = Void Function(
  Int32 i,
);
typedef PFNGLCOLORPOINTEREXTPROC = Void Function(
  Int32 size,
  Uint32 type,
  Int32 stride,
  Int32 count,
  Pointer pointer,
);
typedef PFNGLCOLORSUBTABLEEXTPROC = Void Function(
  Uint32 target,
  Int32 start,
  Int32 count,
  Uint32 format,
  Uint32 type,
  Pointer data,
);
typedef PFNGLCOLORTABLEEXTPROC = Void Function(
  Uint32 target,
  Uint32 internalFormat,
  Int32 width,
  Uint32 format,
  Uint32 type,
  Pointer data,
);
typedef PFNGLDRAWARRAYSEXTPROC = Void Function(
  Uint32 mode,
  Int32 first,
  Int32 count,
);
typedef PFNGLDRAWRANGEELEMENTSWINPROC = Void Function(
  Uint32 mode,
  Uint32 start,
  Uint32 end,
  Int32 count,
  Uint32 type,
  Pointer indices,
);
typedef PFNGLEDGEFLAGPOINTEREXTPROC = Void Function(
  Int32 stride,
  Int32 count,
  Pointer<Uint8> pointer,
);
typedef PFNGLGETCOLORTABLEEXTPROC = Void Function(
  Uint32 target,
  Uint32 format,
  Uint32 type,
  Pointer data,
);
typedef PFNGLGETCOLORTABLEPARAMETERFVEXTPROC = Void Function(
  Uint32 target,
  Uint32 pname,
  Pointer<Float> params,
);
typedef PFNGLGETCOLORTABLEPARAMETERIVEXTPROC = Void Function(
  Uint32 target,
  Uint32 pname,
  Pointer<Int32> params,
);
typedef PFNGLGETPOINTERVEXTPROC = Void Function(
  Uint32 pname,
  Pointer<Pointer> params,
);
typedef PFNGLINDEXPOINTEREXTPROC = Void Function(
  Uint32 type,
  Int32 stride,
  Int32 count,
  Pointer pointer,
);
typedef PFNGLNORMALPOINTEREXTPROC = Void Function(
  Uint32 type,
  Int32 stride,
  Int32 count,
  Pointer pointer,
);
typedef PFNGLTEXCOORDPOINTEREXTPROC = Void Function(
  Int32 size,
  Uint32 type,
  Int32 stride,
  Int32 count,
  Pointer pointer,
);
typedef PFNGLVERTEXPOINTEREXTPROC = Void Function(
  Int32 size,
  Uint32 type,
  Int32 stride,
  Int32 count,
  Pointer pointer,
);
