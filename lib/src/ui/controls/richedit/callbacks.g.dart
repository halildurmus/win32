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
import '../../../combase.dart';
import '../../../guid.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/com/IUnknown.dart';
import '../../../ui/controls/richedit/ITextHost.dart';

typedef AutoCorrectProc = Int32 Function(
  Uint16 langid,
  Pointer<Utf16> pszBefore,
  Pointer<Utf16> pszAfter,
  Int32 cchAfter,
  Pointer<Int32> pcchReplaced,
);
typedef EDITSTREAMCALLBACK = Uint32 Function(
  IntPtr dwCookie,
  Pointer<Uint8> pbBuff,
  Int32 cb,
  Pointer<Int32> pcb,
);
typedef EDITWORDBREAKPROCEX = Int32 Function(
  Pointer<Utf8> pchText,
  Int32 cchText,
  Uint8 bCharSet,
  Int32 action,
);
typedef PCreateTextServices = Int32 Function(
  Pointer<COMObject> punkOuter,
  Pointer<COMObject> pITextHost,
  Pointer<Pointer<COMObject>> ppUnk,
);
typedef PShutdownTextServices = Int32 Function(
  Pointer<COMObject> pTextServices,
);
