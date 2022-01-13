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
import '../../foundation/structs.g.dart';
import '../../system/registry/structs.g.dart';
import '../../system/registry/callbacks.g.dart';

/// {@category Struct}
class DSKTLSYSTEMTIME extends Struct {
  @Uint16()
  external int wYear;

  @Uint16()
  external int wMonth;

  @Uint16()
  external int wDayOfWeek;

  @Uint16()
  external int wDay;

  @Uint16()
  external int wHour;

  @Uint16()
  external int wMinute;

  @Uint16()
  external int wSecond;

  @Uint16()
  external int wMilliseconds;

  @Uint16()
  external int wResult;
}

/// {@category Struct}
class VALENT extends Struct {
  external Pointer<Utf16> ve_valuename;

  @Uint32()
  external int ve_valuelen;

  @IntPtr()
  external int ve_valueptr;

  @Uint32()
  external int ve_type;
}

/// {@category Struct}
class provider_info extends Struct {
  external Pointer<NativeFunction<PQUERYHANDLER>> pi_R0_1val;

  external Pointer<NativeFunction<PQUERYHANDLER>> pi_R0_allvals;

  external Pointer<NativeFunction<PQUERYHANDLER>> pi_R3_1val;

  external Pointer<NativeFunction<PQUERYHANDLER>> pi_R3_allvals;

  @Uint32()
  external int pi_flags;

  external Pointer pi_key_context;
}

/// {@category Struct}
class pvalue extends Struct {
  external Pointer<Utf16> pv_valuename;

  @Int32()
  external int pv_valuelen;

  external Pointer pv_value_context;

  @Uint32()
  external int pv_type;
}

/// {@category Struct}
class val_context extends Struct {
  @Int32()
  external int valuelen;

  external Pointer value_context;

  external Pointer val_buff_ptr;
}
