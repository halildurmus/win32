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
import '../../system/distributedtransactioncoordinator/structs.g.dart';

typedef DTC_GET_TRANSACTION_MANAGER = Int32 Function(
  Pointer<Utf8> pszHost,
  Pointer<Utf8> pszTmName,
  Pointer<GUID> rid,
  Uint32 dwReserved1,
  Uint16 wcbReserved2,
  Pointer pvReserved2,
  Pointer<Pointer> ppvObject,
);
typedef DTC_GET_TRANSACTION_MANAGER_EX_W = Int32 Function(
  Pointer<Utf16> i_pwszHost,
  Pointer<Utf16> i_pwszTmName,
  Pointer<GUID> i_riid,
  Uint32 i_grfOptions,
  Pointer i_pvConfigParams,
  Pointer<Pointer> o_ppvObject,
);
typedef DTC_INSTALL_CLIENT = Int32 Function(
  Pointer<Int8> i_pszRemoteTmHostName,
  Uint32 i_dwProtocol,
  Uint32 i_dwOverwrite,
);
typedef XA_CLOSE_EPT = Int32 Function(
  Pointer<Utf8> param0,
  Int32 param1,
  Int32 param2,
);
typedef XA_COMMIT_EPT = Int32 Function(
  Pointer<xid_t> param0,
  Int32 param1,
  Int32 param2,
);
typedef XA_COMPLETE_EPT = Int32 Function(
  Pointer<Int32> param0,
  Pointer<Int32> param1,
  Int32 param2,
  Int32 param3,
);
typedef XA_END_EPT = Int32 Function(
  Pointer<xid_t> param0,
  Int32 param1,
  Int32 param2,
);
typedef XA_FORGET_EPT = Int32 Function(
  Pointer<xid_t> param0,
  Int32 param1,
  Int32 param2,
);
typedef XA_OPEN_EPT = Int32 Function(
  Pointer<Utf8> param0,
  Int32 param1,
  Int32 param2,
);
typedef XA_PREPARE_EPT = Int32 Function(
  Pointer<xid_t> param0,
  Int32 param1,
  Int32 param2,
);
typedef XA_RECOVER_EPT = Int32 Function(
  Pointer<xid_t> param0,
  Int32 param1,
  Int32 param2,
  Int32 param3,
);
typedef XA_ROLLBACK_EPT = Int32 Function(
  Pointer<xid_t> param0,
  Int32 param1,
  Int32 param2,
);
typedef XA_START_EPT = Int32 Function(
  Pointer<xid_t> param0,
  Int32 param1,
  Int32 param2,
);
