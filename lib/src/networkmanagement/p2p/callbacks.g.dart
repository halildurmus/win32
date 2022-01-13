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
import '../../networking/winsock/structs.g.dart';
import '../../networkmanagement/p2p/structs.g.dart';

typedef DRT_BOOTSTRAP_RESOLVE_CALLBACK = Void Function(
  Int32 hr,
  Pointer pvContext,
  Pointer<SOCKET_ADDRESS_LIST> pAddresses,
  Int32 fFatalError,
);
typedef PFNPEER_FREE_SECURITY_DATA = Int32 Function(
  Pointer hGraph,
  Pointer pvContext,
  Pointer<PEER_DATA> pSecurityData,
);
typedef PFNPEER_ON_PASSWORD_AUTH_FAILED = Int32 Function(
  Pointer hGraph,
  Pointer pvContext,
);
typedef PFNPEER_SECURE_RECORD = Int32 Function(
  Pointer hGraph,
  Pointer pvContext,
  Pointer<PEER_RECORD> pRecord,
  Int32 changeType,
  Pointer<Pointer<PEER_DATA>> ppSecurityData,
);
typedef PFNPEER_VALIDATE_RECORD = Int32 Function(
  Pointer hGraph,
  Pointer pvContext,
  Pointer<PEER_RECORD> pRecord,
  Int32 changeType,
);
