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
import '../../storage/structuredstorage/structs.g.dart';
import '../../storage/jet/structs.g.dart';

typedef JET_CALLBACK = Int32 Function(
  IntPtr sesid,
  Uint32 dbid,
  IntPtr tableid,
  Uint32 cbtyp,
  Pointer pvArg1,
  Pointer pvArg2,
  Pointer pvContext,
  IntPtr ulUnused,
);
typedef JET_PFNDURABLECOMMITCALLBACK = Int32 Function(
  IntPtr instance,
  Pointer<JET_COMMIT_ID> pCommitIdSeen,
  Uint32 grbit,
);
typedef JET_PFNREALLOC = Pointer Function(
  Pointer pvContext,
  Pointer pv,
  Uint32 cb,
);
typedef JET_PFNSTATUS = Int32 Function(
  IntPtr sesid,
  Uint32 snp,
  Uint32 snt,
  Pointer pv,
);
