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

typedef PINSPECT_HSTRING_CALLBACK = Int32 Function(
  Pointer context,
  IntPtr readAddress,
  Uint32 length,
  Pointer<Uint8> buffer,
);
typedef PINSPECT_HSTRING_CALLBACK2 = Int32 Function(
  Pointer context,
  Uint64 readAddress,
  Uint32 length,
  Pointer<Uint8> buffer,
);
typedef PINSPECT_MEMORY_CALLBACK = Int32 Function(
  Pointer context,
  IntPtr readAddress,
  Uint32 length,
  Pointer<Uint8> buffer,
);
