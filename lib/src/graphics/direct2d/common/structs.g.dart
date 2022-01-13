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
import '../../../combase.dart';
import '../../../guid.dart';
import '../../../graphics/direct2d/common/structs.g.dart';
import '../../../graphics/dxgi/common/structs.g.dart';

/// {@category Struct}
class D2D1_BEZIER_SEGMENT extends Struct {
  external D2D_POINT_2F point1;

  external D2D_POINT_2F point2;

  external D2D_POINT_2F point3;
}

/// {@category Struct}
class D2D1_COLOR_F extends Struct {
  @Float()
  external double r;

  @Float()
  external double g;

  @Float()
  external double b;

  @Float()
  external double a;
}

/// {@category Struct}
class D2D1_PIXEL_FORMAT extends Struct {
  @Uint32()
  external int format;

  @Uint32()
  external int alphaMode;
}

/// {@category Struct}
class D2D_COLOR_F extends Struct {
  @Float()
  external double r;

  @Float()
  external double g;

  @Float()
  external double b;

  @Float()
  external double a;
}

/// {@category Struct}
class D2D_MATRIX_3X2_F extends Struct {
  external _D2D_MATRIX_3X2_F__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _D2D_MATRIX_3X2_F__Anonymous_e__Union extends Union {
  external _D2D_MATRIX_3X2_F__Anonymous_e__Union__Anonymous1_e__Struct
      Anonymous1;

  external _D2D_MATRIX_3X2_F__Anonymous_e__Union__Anonymous2_e__Struct
      Anonymous2;

  @Array(6)
  external Array<Float> m;
}

/// {@category Struct}
class _D2D_MATRIX_3X2_F__Anonymous_e__Union__Anonymous1_e__Struct
    extends Struct {
  @Float()
  external double m11;

  @Float()
  external double m12;

  @Float()
  external double m21;

  @Float()
  external double m22;

  @Float()
  external double dx;

  @Float()
  external double dy;
}

extension D2D_MATRIX_3X2_F__Anonymous_e__Union_Extension on D2D_MATRIX_3X2_F {
  double get m11 => this.Anonymous.Anonymous1.m11;
  set m11(double value) => this.Anonymous.Anonymous1.m11 = value;

  double get m12 => this.Anonymous.Anonymous1.m12;
  set m12(double value) => this.Anonymous.Anonymous1.m12 = value;

  double get m21 => this.Anonymous.Anonymous1.m21;
  set m21(double value) => this.Anonymous.Anonymous1.m21 = value;

  double get m22 => this.Anonymous.Anonymous1.m22;
  set m22(double value) => this.Anonymous.Anonymous1.m22 = value;

  double get dx => this.Anonymous.Anonymous1.dx;
  set dx(double value) => this.Anonymous.Anonymous1.dx = value;

  double get dy => this.Anonymous.Anonymous1.dy;
  set dy(double value) => this.Anonymous.Anonymous1.dy = value;
}

/// {@category Struct}
class _D2D_MATRIX_3X2_F__Anonymous_e__Union__Anonymous2_e__Struct
    extends Struct {
  @Float()
  external double x11;

  @Float()
  external double x12;

  @Float()
  external double x21;

  @Float()
  external double x22;

  @Float()
  external double x31;

  @Float()
  external double x32;
}

extension D2D_MATRIX_3X2_F__Anonymous_e__Union_Extension_1 on D2D_MATRIX_3X2_F {
  double get x11 => this.Anonymous.Anonymous2.x11;
  set x11(double value) => this.Anonymous.Anonymous2.x11 = value;

  double get x12 => this.Anonymous.Anonymous2.x12;
  set x12(double value) => this.Anonymous.Anonymous2.x12 = value;

  double get x21 => this.Anonymous.Anonymous2.x21;
  set x21(double value) => this.Anonymous.Anonymous2.x21 = value;

  double get x22 => this.Anonymous.Anonymous2.x22;
  set x22(double value) => this.Anonymous.Anonymous2.x22 = value;

  double get x31 => this.Anonymous.Anonymous2.x31;
  set x31(double value) => this.Anonymous.Anonymous2.x31 = value;

  double get x32 => this.Anonymous.Anonymous2.x32;
  set x32(double value) => this.Anonymous.Anonymous2.x32 = value;
}

extension D2D_MATRIX_3X2_F_Extension on D2D_MATRIX_3X2_F {
  _D2D_MATRIX_3X2_F__Anonymous_e__Union__Anonymous1_e__Struct get Anonymous1 =>
      this.Anonymous.Anonymous1;
  set Anonymous1(
          _D2D_MATRIX_3X2_F__Anonymous_e__Union__Anonymous1_e__Struct value) =>
      this.Anonymous.Anonymous1 = value;

  _D2D_MATRIX_3X2_F__Anonymous_e__Union__Anonymous2_e__Struct get Anonymous2 =>
      this.Anonymous.Anonymous2;
  set Anonymous2(
          _D2D_MATRIX_3X2_F__Anonymous_e__Union__Anonymous2_e__Struct value) =>
      this.Anonymous.Anonymous2 = value;

  Array<Float> get m => this.Anonymous.m;
  set m(Array<Float> value) => this.Anonymous.m = value;
}

/// {@category Struct}
class D2D_MATRIX_4X3_F extends Struct {
  external _D2D_MATRIX_4X3_F__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _D2D_MATRIX_4X3_F__Anonymous_e__Union extends Union {
  external _D2D_MATRIX_4X3_F__Anonymous_e__Union__Anonymous_e__Struct Anonymous;

  @Array(12)
  external Array<Float> m;
}

/// {@category Struct}
class _D2D_MATRIX_4X3_F__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Float()
  external double x11;

  @Float()
  external double x12;

  @Float()
  external double x13;

  @Float()
  external double x21;

  @Float()
  external double x22;

  @Float()
  external double x23;

  @Float()
  external double x31;

  @Float()
  external double x32;

  @Float()
  external double x33;

  @Float()
  external double x41;

  @Float()
  external double x42;

  @Float()
  external double x43;
}

extension D2D_MATRIX_4X3_F__Anonymous_e__Union_Extension on D2D_MATRIX_4X3_F {
  double get x11 => this.Anonymous.Anonymous.x11;
  set x11(double value) => this.Anonymous.Anonymous.x11 = value;

  double get x12 => this.Anonymous.Anonymous.x12;
  set x12(double value) => this.Anonymous.Anonymous.x12 = value;

  double get x13 => this.Anonymous.Anonymous.x13;
  set x13(double value) => this.Anonymous.Anonymous.x13 = value;

  double get x21 => this.Anonymous.Anonymous.x21;
  set x21(double value) => this.Anonymous.Anonymous.x21 = value;

  double get x22 => this.Anonymous.Anonymous.x22;
  set x22(double value) => this.Anonymous.Anonymous.x22 = value;

  double get x23 => this.Anonymous.Anonymous.x23;
  set x23(double value) => this.Anonymous.Anonymous.x23 = value;

  double get x31 => this.Anonymous.Anonymous.x31;
  set x31(double value) => this.Anonymous.Anonymous.x31 = value;

  double get x32 => this.Anonymous.Anonymous.x32;
  set x32(double value) => this.Anonymous.Anonymous.x32 = value;

  double get x33 => this.Anonymous.Anonymous.x33;
  set x33(double value) => this.Anonymous.Anonymous.x33 = value;

  double get x41 => this.Anonymous.Anonymous.x41;
  set x41(double value) => this.Anonymous.Anonymous.x41 = value;

  double get x42 => this.Anonymous.Anonymous.x42;
  set x42(double value) => this.Anonymous.Anonymous.x42 = value;

  double get x43 => this.Anonymous.Anonymous.x43;
  set x43(double value) => this.Anonymous.Anonymous.x43 = value;
}

extension D2D_MATRIX_4X3_F_Extension on D2D_MATRIX_4X3_F {
  _D2D_MATRIX_4X3_F__Anonymous_e__Union__Anonymous_e__Struct get Anonymous =>
      this.Anonymous.Anonymous;
  set Anonymous(
          _D2D_MATRIX_4X3_F__Anonymous_e__Union__Anonymous_e__Struct value) =>
      this.Anonymous.Anonymous = value;

  Array<Float> get m => this.Anonymous.m;
  set m(Array<Float> value) => this.Anonymous.m = value;
}

/// {@category Struct}
class D2D_MATRIX_4X4_F extends Struct {
  external _D2D_MATRIX_4X4_F__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _D2D_MATRIX_4X4_F__Anonymous_e__Union extends Union {
  external _D2D_MATRIX_4X4_F__Anonymous_e__Union__Anonymous_e__Struct Anonymous;

  @Array(16)
  external Array<Float> m;
}

/// {@category Struct}
class _D2D_MATRIX_4X4_F__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Float()
  external double x11;

  @Float()
  external double x12;

  @Float()
  external double x13;

  @Float()
  external double x14;

  @Float()
  external double x21;

  @Float()
  external double x22;

  @Float()
  external double x23;

  @Float()
  external double x24;

  @Float()
  external double x31;

  @Float()
  external double x32;

  @Float()
  external double x33;

  @Float()
  external double x34;

  @Float()
  external double x41;

  @Float()
  external double x42;

  @Float()
  external double x43;

  @Float()
  external double x44;
}

extension D2D_MATRIX_4X4_F__Anonymous_e__Union_Extension on D2D_MATRIX_4X4_F {
  double get x11 => this.Anonymous.Anonymous.x11;
  set x11(double value) => this.Anonymous.Anonymous.x11 = value;

  double get x12 => this.Anonymous.Anonymous.x12;
  set x12(double value) => this.Anonymous.Anonymous.x12 = value;

  double get x13 => this.Anonymous.Anonymous.x13;
  set x13(double value) => this.Anonymous.Anonymous.x13 = value;

  double get x14 => this.Anonymous.Anonymous.x14;
  set x14(double value) => this.Anonymous.Anonymous.x14 = value;

  double get x21 => this.Anonymous.Anonymous.x21;
  set x21(double value) => this.Anonymous.Anonymous.x21 = value;

  double get x22 => this.Anonymous.Anonymous.x22;
  set x22(double value) => this.Anonymous.Anonymous.x22 = value;

  double get x23 => this.Anonymous.Anonymous.x23;
  set x23(double value) => this.Anonymous.Anonymous.x23 = value;

  double get x24 => this.Anonymous.Anonymous.x24;
  set x24(double value) => this.Anonymous.Anonymous.x24 = value;

  double get x31 => this.Anonymous.Anonymous.x31;
  set x31(double value) => this.Anonymous.Anonymous.x31 = value;

  double get x32 => this.Anonymous.Anonymous.x32;
  set x32(double value) => this.Anonymous.Anonymous.x32 = value;

  double get x33 => this.Anonymous.Anonymous.x33;
  set x33(double value) => this.Anonymous.Anonymous.x33 = value;

  double get x34 => this.Anonymous.Anonymous.x34;
  set x34(double value) => this.Anonymous.Anonymous.x34 = value;

  double get x41 => this.Anonymous.Anonymous.x41;
  set x41(double value) => this.Anonymous.Anonymous.x41 = value;

  double get x42 => this.Anonymous.Anonymous.x42;
  set x42(double value) => this.Anonymous.Anonymous.x42 = value;

  double get x43 => this.Anonymous.Anonymous.x43;
  set x43(double value) => this.Anonymous.Anonymous.x43 = value;

  double get x44 => this.Anonymous.Anonymous.x44;
  set x44(double value) => this.Anonymous.Anonymous.x44 = value;
}

extension D2D_MATRIX_4X4_F_Extension on D2D_MATRIX_4X4_F {
  _D2D_MATRIX_4X4_F__Anonymous_e__Union__Anonymous_e__Struct get Anonymous =>
      this.Anonymous.Anonymous;
  set Anonymous(
          _D2D_MATRIX_4X4_F__Anonymous_e__Union__Anonymous_e__Struct value) =>
      this.Anonymous.Anonymous = value;

  Array<Float> get m => this.Anonymous.m;
  set m(Array<Float> value) => this.Anonymous.m = value;
}

/// {@category Struct}
class D2D_MATRIX_5X4_F extends Struct {
  external _D2D_MATRIX_5X4_F__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _D2D_MATRIX_5X4_F__Anonymous_e__Union extends Union {
  external _D2D_MATRIX_5X4_F__Anonymous_e__Union__Anonymous_e__Struct Anonymous;

  @Array(20)
  external Array<Float> m;
}

/// {@category Struct}
class _D2D_MATRIX_5X4_F__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Float()
  external double x11;

  @Float()
  external double x12;

  @Float()
  external double x13;

  @Float()
  external double x14;

  @Float()
  external double x21;

  @Float()
  external double x22;

  @Float()
  external double x23;

  @Float()
  external double x24;

  @Float()
  external double x31;

  @Float()
  external double x32;

  @Float()
  external double x33;

  @Float()
  external double x34;

  @Float()
  external double x41;

  @Float()
  external double x42;

  @Float()
  external double x43;

  @Float()
  external double x44;

  @Float()
  external double x51;

  @Float()
  external double x52;

  @Float()
  external double x53;

  @Float()
  external double x54;
}

extension D2D_MATRIX_5X4_F__Anonymous_e__Union_Extension on D2D_MATRIX_5X4_F {
  double get x11 => this.Anonymous.Anonymous.x11;
  set x11(double value) => this.Anonymous.Anonymous.x11 = value;

  double get x12 => this.Anonymous.Anonymous.x12;
  set x12(double value) => this.Anonymous.Anonymous.x12 = value;

  double get x13 => this.Anonymous.Anonymous.x13;
  set x13(double value) => this.Anonymous.Anonymous.x13 = value;

  double get x14 => this.Anonymous.Anonymous.x14;
  set x14(double value) => this.Anonymous.Anonymous.x14 = value;

  double get x21 => this.Anonymous.Anonymous.x21;
  set x21(double value) => this.Anonymous.Anonymous.x21 = value;

  double get x22 => this.Anonymous.Anonymous.x22;
  set x22(double value) => this.Anonymous.Anonymous.x22 = value;

  double get x23 => this.Anonymous.Anonymous.x23;
  set x23(double value) => this.Anonymous.Anonymous.x23 = value;

  double get x24 => this.Anonymous.Anonymous.x24;
  set x24(double value) => this.Anonymous.Anonymous.x24 = value;

  double get x31 => this.Anonymous.Anonymous.x31;
  set x31(double value) => this.Anonymous.Anonymous.x31 = value;

  double get x32 => this.Anonymous.Anonymous.x32;
  set x32(double value) => this.Anonymous.Anonymous.x32 = value;

  double get x33 => this.Anonymous.Anonymous.x33;
  set x33(double value) => this.Anonymous.Anonymous.x33 = value;

  double get x34 => this.Anonymous.Anonymous.x34;
  set x34(double value) => this.Anonymous.Anonymous.x34 = value;

  double get x41 => this.Anonymous.Anonymous.x41;
  set x41(double value) => this.Anonymous.Anonymous.x41 = value;

  double get x42 => this.Anonymous.Anonymous.x42;
  set x42(double value) => this.Anonymous.Anonymous.x42 = value;

  double get x43 => this.Anonymous.Anonymous.x43;
  set x43(double value) => this.Anonymous.Anonymous.x43 = value;

  double get x44 => this.Anonymous.Anonymous.x44;
  set x44(double value) => this.Anonymous.Anonymous.x44 = value;

  double get x51 => this.Anonymous.Anonymous.x51;
  set x51(double value) => this.Anonymous.Anonymous.x51 = value;

  double get x52 => this.Anonymous.Anonymous.x52;
  set x52(double value) => this.Anonymous.Anonymous.x52 = value;

  double get x53 => this.Anonymous.Anonymous.x53;
  set x53(double value) => this.Anonymous.Anonymous.x53 = value;

  double get x54 => this.Anonymous.Anonymous.x54;
  set x54(double value) => this.Anonymous.Anonymous.x54 = value;
}

extension D2D_MATRIX_5X4_F_Extension on D2D_MATRIX_5X4_F {
  _D2D_MATRIX_5X4_F__Anonymous_e__Union__Anonymous_e__Struct get Anonymous =>
      this.Anonymous.Anonymous;
  set Anonymous(
          _D2D_MATRIX_5X4_F__Anonymous_e__Union__Anonymous_e__Struct value) =>
      this.Anonymous.Anonymous = value;

  Array<Float> get m => this.Anonymous.m;
  set m(Array<Float> value) => this.Anonymous.m = value;
}

/// {@category Struct}
class D2D_POINT_2F extends Struct {
  @Float()
  external double x;

  @Float()
  external double y;
}

/// {@category Struct}
class D2D_POINT_2U extends Struct {
  @Uint32()
  external int x;

  @Uint32()
  external int y;
}

/// {@category Struct}
class D2D_RECT_F extends Struct {
  @Float()
  external double left;

  @Float()
  external double top;

  @Float()
  external double right;

  @Float()
  external double bottom;
}

/// {@category Struct}
class D2D_RECT_U extends Struct {
  @Uint32()
  external int left;

  @Uint32()
  external int top;

  @Uint32()
  external int right;

  @Uint32()
  external int bottom;
}

/// {@category Struct}
class D2D_SIZE_F extends Struct {
  @Float()
  external double width;

  @Float()
  external double height;
}

/// {@category Struct}
class D2D_SIZE_U extends Struct {
  @Uint32()
  external int width;

  @Uint32()
  external int height;
}

/// {@category Struct}
class D2D_VECTOR_2F extends Struct {
  @Float()
  external double x;

  @Float()
  external double y;
}

/// {@category Struct}
class D2D_VECTOR_3F extends Struct {
  @Float()
  external double x;

  @Float()
  external double y;

  @Float()
  external double z;
}

/// {@category Struct}
class D2D_VECTOR_4F extends Struct {
  @Float()
  external double x;

  @Float()
  external double y;

  @Float()
  external double z;

  @Float()
  external double w;
}
