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
class MILMatrixF extends Struct {
  @Double()
  external double x11;

  @Double()
  external double x12;

  @Double()
  external double x13;

  @Double()
  external double x14;

  @Double()
  external double x21;

  @Double()
  external double x22;

  @Double()
  external double x23;

  @Double()
  external double x24;

  @Double()
  external double x31;

  @Double()
  external double x32;

  @Double()
  external double x33;

  @Double()
  external double x34;

  @Double()
  external double x41;

  @Double()
  external double x42;

  @Double()
  external double x43;

  @Double()
  external double x44;
}

/// {@category Struct}
class MilPoint2D extends Struct {
  @Double()
  external double X;

  @Double()
  external double Y;
}

/// {@category Struct}
class MilRectD extends Struct {
  @Double()
  external double left;

  @Double()
  external double top;

  @Double()
  external double right;

  @Double()
  external double bottom;
}
