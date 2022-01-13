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
import '../../networkmanagement/webdav/structs.g.dart';
import '../../networkmanagement/webdav/callbacks.g.dart';

typedef PFNDAVAUTHCALLBACK = Uint32 Function(
  Pointer<Utf16> lpwzServerName,
  Pointer<Utf16> lpwzRemoteName,
  Uint32 dwAuthScheme,
  Uint32 dwFlags,
  Pointer<DAV_CALLBACK_CRED> pCallbackCred,
  Pointer<Int32> NextStep,
  Pointer<Pointer<NativeFunction<PFNDAVAUTHCALLBACK_FREECRED>>> pFreeCred,
);
typedef PFNDAVAUTHCALLBACK_FREECRED = Uint32 Function(
  Pointer pbuffer,
);
