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
import '../../ui/colorsystem/structs.g.dart';

typedef ICMENUMPROCW = Int32 Function(
  Pointer<Utf16> param0,
  IntPtr param1,
);
typedef LPBMCALLBACKFN = Int32 Function(
  Uint32 param0,
  Uint32 param1,
  IntPtr param2,
);
typedef PCMSCALLBACKW = Int32 Function(
  Pointer<COLORMATCHSETUP> param0,
  IntPtr param1,
);
