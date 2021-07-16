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

import 'callbacks.g.dart';
import '../combase.dart';
import '../guid.dart';

/// {@category Struct}
class APP_LOCAL_DEVICE_ID extends Struct {
  @Array(32)
  external Array<Uint8> value;
}

/// {@category Struct}
class FILETIME extends Struct {
  @Uint32()
  external int dwLowDateTime;
  @Uint32()
  external int dwHighDateTime;
}

/// {@category Struct}
class POINT extends Struct {
  @Int32()
  external int x;
  @Int32()
  external int y;
}

/// {@category Struct}
class POINTL extends Struct {
  @Int32()
  external int x;
  @Int32()
  external int y;
}

/// {@category Struct}
class POINTS extends Struct {
  @Int16()
  external int x;
  @Int16()
  external int y;
}

/// {@category Struct}
class RECT extends Struct {
  @Int32()
  external int left;
  @Int32()
  external int top;
  @Int32()
  external int right;
  @Int32()
  external int bottom;
}

/// {@category Struct}
class RECTL extends Struct {
  @Int32()
  external int left;
  @Int32()
  external int top;
  @Int32()
  external int right;
  @Int32()
  external int bottom;
}

/// {@category Struct}
class SIZE extends Struct {
  @Int32()
  external int cx;
  @Int32()
  external int cy;
}

/// {@category Struct}
class SYSTEMTIME extends Struct {
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
}
