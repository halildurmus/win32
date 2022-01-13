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
import '../../system/sqllite/structs.g.dart';

typedef fts5_extension_function = Void Function(
  Pointer<Fts5ExtensionApi> pApi,
  Pointer<Fts5Context> pFts,
  Pointer<sqlite3_context> pCtx,
  Int32 nVal,
  Pointer<Pointer<sqlite3_value>> apVal,
);
typedef sqlite3_callback = Int32 Function(
  Pointer param0,
  Int32 param1,
  Pointer<Pointer<Int8>> param2,
  Pointer<Pointer<Int8>> param3,
);
typedef sqlite3_destructor_type = Void Function(
  Pointer param0,
);
typedef sqlite3_loadext_entry = Int32 Function(
  Pointer<sqlite3> db,
  Pointer<Pointer<Int8>> pzErrMsg,
  Pointer<sqlite3_api_routines> pThunk,
);
typedef sqlite3_syscall_ptr = Void Function();
