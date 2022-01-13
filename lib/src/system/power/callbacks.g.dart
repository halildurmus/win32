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
import '../../system/power/structs.g.dart';
import '../../foundation/structs.g.dart';

typedef EFFECTIVE_POWER_MODE_CALLBACK = Void Function(
  Int32 Mode,
  Pointer Context,
);
typedef PDEVICE_NOTIFY_CALLBACK_ROUTINE = Uint32 Function(
  Pointer Context,
  Uint32 Type,
  Pointer Setting,
);
typedef PWRSCHEMESENUMPROC = Uint8 Function(
  Uint32 Index,
  Uint32 NameSize,
  Pointer<Utf16> Name,
  Uint32 DescriptionSize,
  Pointer<Utf16> Description,
  Pointer<POWER_POLICY> Policy,
  IntPtr Context,
);
typedef PWRSCHEMESENUMPROC_V1 = Uint8 Function(
  Uint32 Index,
  Uint32 NameSize,
  Pointer<Int8> Name,
  Uint32 DescriptionSize,
  Pointer<Int8> Description,
  Pointer<POWER_POLICY> Policy,
  IntPtr Context,
);
