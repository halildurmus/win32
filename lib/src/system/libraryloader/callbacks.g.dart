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

typedef ENUMRESLANGPROCW = Int32 Function(
  IntPtr hModule,
  Pointer<Utf16> lpType,
  Pointer<Utf16> lpName,
  Uint16 wLanguage,
  IntPtr lParam,
);
typedef ENUMRESNAMEPROCW = Int32 Function(
  IntPtr hModule,
  Pointer<Utf16> lpType,
  Pointer<Utf16> lpName,
  IntPtr lParam,
);
typedef ENUMRESTYPEPROCW = Int32 Function(
  IntPtr hModule,
  Pointer<Utf16> lpType,
  IntPtr lParam,
);
typedef PGET_MODULE_HANDLE_EXW = Int32 Function(
  Uint32 dwFlags,
  Pointer<Utf16> lpModuleName,
  Pointer<IntPtr> phModule,
);
