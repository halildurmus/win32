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
import '../combase.dart';
import '../guid.dart';
import '../foundation/structs.g.dart';

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
class FLOAT128 extends Struct {
  @Int64()
  external int LowPart;

  @Int64()
  external int HighPart;
}

/// {@category Struct}
class HLSURF__ extends Struct {
  @Int32()
  external int unused;
}

/// {@category Struct}
class HSPRITE__ extends Struct {
  @Int32()
  external int unused;
}

/// {@category Struct}
class HSTR__ extends Struct {
  @Int32()
  external int unused;
}

/// {@category Struct}
class HUMPD__ extends Struct {
  @Int32()
  external int unused;
}

/// {@category Struct}
class LARGE_INTEGER extends Union {
  external _LARGE_INTEGER__Anonymous_e__Struct Anonymous;

  external _LARGE_INTEGER__u_e__Struct u;

  @Int64()
  external int QuadPart;
}

/// {@category Struct}
class _LARGE_INTEGER__Anonymous_e__Struct extends Struct {
  @Uint32()
  external int LowPart;

  @Int32()
  external int HighPart;
}

extension LARGE_INTEGER_Extension on LARGE_INTEGER {
  int get LowPart => this.Anonymous.LowPart;
  set LowPart(int value) => this.Anonymous.LowPart = value;

  int get HighPart => this.Anonymous.HighPart;
  set HighPart(int value) => this.Anonymous.HighPart = value;
}

/// {@category Struct}
class _LARGE_INTEGER__u_e__Struct extends Struct {
  @Uint32()
  external int LowPart;

  @Int32()
  external int HighPart;
}

extension LARGE_INTEGER_Extension_1 on LARGE_INTEGER {
  int get LowPart => this.u.LowPart;
  set LowPart(int value) => this.u.LowPart = value;

  int get HighPart => this.u.HighPart;
  set HighPart(int value) => this.u.HighPart = value;
}

/// {@category Struct}
class LUID extends Struct {
  @Uint32()
  external int LowPart;

  @Int32()
  external int HighPart;
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

/// {@category Struct}
class ULARGE_INTEGER extends Union {
  external _ULARGE_INTEGER__Anonymous_e__Struct Anonymous;

  external _ULARGE_INTEGER__u_e__Struct u;

  @Uint64()
  external int QuadPart;
}

/// {@category Struct}
class _ULARGE_INTEGER__Anonymous_e__Struct extends Struct {
  @Uint32()
  external int LowPart;

  @Uint32()
  external int HighPart;
}

extension ULARGE_INTEGER_Extension on ULARGE_INTEGER {
  int get LowPart => this.Anonymous.LowPart;
  set LowPart(int value) => this.Anonymous.LowPart = value;

  int get HighPart => this.Anonymous.HighPart;
  set HighPart(int value) => this.Anonymous.HighPart = value;
}

/// {@category Struct}
class _ULARGE_INTEGER__u_e__Struct extends Struct {
  @Uint32()
  external int LowPart;

  @Uint32()
  external int HighPart;
}

extension ULARGE_INTEGER_Extension_1 on ULARGE_INTEGER {
  int get LowPart => this.u.LowPart;
  set LowPart(int value) => this.u.LowPart = value;

  int get HighPart => this.u.HighPart;
  set HighPart(int value) => this.u.HighPart = value;
}

/// {@category Struct}
class UNICODE_STRING extends Struct {
  @Uint16()
  external int Length;

  @Uint16()
  external int MaximumLength;

  external Pointer<Utf16> Buffer;
}
