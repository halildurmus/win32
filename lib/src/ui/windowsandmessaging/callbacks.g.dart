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
import '../../ui/shell/structs.g.dart';

typedef DLGPROC = IntPtr Function(
  IntPtr param0,
  Uint32 param1,
  IntPtr param2,
  IntPtr param3,
);
typedef HOOKPROC = IntPtr Function(
  Int32 code,
  IntPtr wParam,
  IntPtr lParam,
);
typedef MSGBOXCALLBACK = Void Function(
  Pointer<HELPINFO> lpHelpInfo,
);
typedef NAMEENUMPROCW = Int32 Function(
  Pointer<Utf16> param0,
  IntPtr param1,
);
typedef PREGISTERCLASSNAMEW = Uint8 Function(
  Pointer<Utf16> param0,
);
typedef PROPENUMPROCEXW = Int32 Function(
  IntPtr param0,
  Pointer<Utf16> param1,
  IntPtr param2,
  IntPtr param3,
);
typedef PROPENUMPROCW = Int32 Function(
  IntPtr param0,
  Pointer<Utf16> param1,
  IntPtr param2,
);
typedef SENDASYNCPROC = Void Function(
  IntPtr param0,
  Uint32 param1,
  IntPtr param2,
  IntPtr param3,
);
typedef TIMERPROC = Void Function(
  IntPtr param0,
  Uint32 param1,
  IntPtr param2,
  Uint32 param3,
);
typedef WNDENUMPROC = Int32 Function(
  IntPtr param0,
  IntPtr param1,
);
typedef WNDPROC = IntPtr Function(
  IntPtr param0,
  Uint32 param1,
  IntPtr param2,
  IntPtr param3,
);
