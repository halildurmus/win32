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

typedef CounterPathCallBack = Int32 Function(
  IntPtr param0,
);
typedef PERFLIBREQUEST = Uint32 Function(
  Uint32 RequestCode,
  Pointer Buffer,
  Uint32 BufferSize,
);
typedef PERF_MEM_ALLOC = Pointer Function(
  IntPtr AllocSize,
  Pointer pContext,
);
typedef PERF_MEM_FREE = Void Function(
  Pointer pBuffer,
  Pointer pContext,
);
typedef PLA_CABEXTRACT_CALLBACK = Void Function(
  Pointer<Utf16> FileName,
  Pointer Context,
);
typedef PM_CLOSE_PROC = Uint32 Function();
typedef PM_COLLECT_PROC = Uint32 Function(
  Pointer<Utf16> pValueName,
  Pointer<Pointer> ppData,
  Pointer<Uint32> pcbTotalBytes,
  Pointer<Uint32> pNumObjectTypes,
);
typedef PM_OPEN_PROC = Uint32 Function(
  Pointer<Utf16> pContext,
);
