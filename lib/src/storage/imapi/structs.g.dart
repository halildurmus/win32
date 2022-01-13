// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import '../../combase.dart';
import '../../guid.dart';

/// {@category Struct}
class IMMP_MPV_STORE_DRIVER_HANDLE extends Struct {
  external GUID guidSignature;
}

/// {@category Struct}
class SPropAttrArray extends Struct {
  @Uint32()
  external int cValues;

  @Array(1)
  external Array<Uint32> aPropAttr;
}

/// {@category Struct}
class MSGSESS extends Opaque {}

/// {@category Struct}
class tagIMMPID_GUIDLIST_ITEM extends Struct {
  external Pointer<GUID> pguid;

  @Uint32()
  external int dwStart;

  @Uint32()
  external int dwLast;
}
