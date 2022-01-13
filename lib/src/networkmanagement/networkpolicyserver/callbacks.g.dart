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
import '../../networkmanagement/networkpolicyserver/structs.g.dart';

typedef PRADIUS_EXTENSION_FREE_ATTRIBUTES = Void Function(
  Pointer<RADIUS_ATTRIBUTE> pAttrs,
);
typedef PRADIUS_EXTENSION_INIT = Uint32 Function();
typedef PRADIUS_EXTENSION_PROCESS = Uint32 Function(
  Pointer<RADIUS_ATTRIBUTE> pAttrs,
  Pointer<Int32> pfAction,
);
typedef PRADIUS_EXTENSION_PROCESS_2 = Uint32 Function(
  Pointer<RADIUS_EXTENSION_CONTROL_BLOCK> pECB,
);
typedef PRADIUS_EXTENSION_PROCESS_EX = Uint32 Function(
  Pointer<RADIUS_ATTRIBUTE> pInAttrs,
  Pointer<Pointer<RADIUS_ATTRIBUTE>> pOutAttrs,
  Pointer<Int32> pfAction,
);
typedef PRADIUS_EXTENSION_TERM = Void Function();
