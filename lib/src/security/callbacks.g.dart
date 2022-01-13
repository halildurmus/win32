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
import '../combase.dart';
import '../guid.dart';

typedef PLSA_AP_CALL_PACKAGE_UNTRUSTED = Int32 Function(
  Pointer<Pointer> ClientRequest,
  Pointer ProtocolSubmitBuffer,
  Pointer ClientBufferBase,
  Uint32 SubmitBufferLength,
  Pointer<Pointer> ProtocolReturnBuffer,
  Pointer<Uint32> ReturnBufferLength,
  Pointer<Int32> ProtocolStatus,
);
typedef SEC_THREAD_START = Uint32 Function(
  Pointer lpThreadParameter,
);
