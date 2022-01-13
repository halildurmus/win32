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
import '../../devices/bluetooth/structs.g.dart';

typedef PFN_AUTHENTICATION_CALLBACK = Int32 Function(
  Pointer pvParam,
  Pointer<BLUETOOTH_DEVICE_INFO> pDevice,
);
typedef PFN_AUTHENTICATION_CALLBACK_EX = Int32 Function(
  Pointer pvParam,
  Pointer<BLUETOOTH_AUTHENTICATION_CALLBACK_PARAMS> pAuthCallbackParams,
);
typedef PFN_BLUETOOTH_ENUM_ATTRIBUTES_CALLBACK = Int32 Function(
  Uint32 uAttribId,
  Pointer<Uint8> pValueStream,
  Uint32 cbStreamSize,
  Pointer pvParam,
);
typedef PFN_DEVICE_CALLBACK = Int32 Function(
  Pointer pvParam,
  Pointer<BLUETOOTH_DEVICE_INFO> pDevice,
);
