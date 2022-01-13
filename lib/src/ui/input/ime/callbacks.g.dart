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
import '../../../globalization/structs.g.dart';
import '../../../foundation/structs.g.dart';
import '../../../ui/input/ime/structs.g.dart';

typedef IMCENUMPROC = Int32 Function(
  IntPtr param0,
  IntPtr param1,
);
typedef PFNLOG = Int32 Function(
  Pointer<IMEDP> param0,
  Int32 param1,
);
typedef REGISTERWORDENUMPROCW = Int32 Function(
  Pointer<Utf16> lpszReading,
  Uint32 param1,
  Pointer<Utf16> lpszString,
  Pointer param3,
);
typedef fpCreateIFECommonInstanceType = Int32 Function(
  Pointer<Pointer> ppvObj,
);
typedef fpCreateIFEDictionaryInstanceType = Int32 Function(
  Pointer<Pointer> ppvObj,
);
typedef fpCreateIFELanguageInstanceType = Int32 Function(
  Pointer<GUID> clsid,
  Pointer<Pointer> ppvObj,
);
