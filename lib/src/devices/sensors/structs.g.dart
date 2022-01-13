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
import '../../devices/sensors/structs.g.dart';
import '../../ui/shell/propertiessystem/structs.g.dart';
import '../../specialTypes.dart';

/// {@category Struct}
class MATRIX3X3 extends Struct {
  external _MATRIX3X3__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _MATRIX3X3__Anonymous_e__Union extends Union {
  external _MATRIX3X3__Anonymous_e__Union__Anonymous1_e__Struct Anonymous1;

  external _MATRIX3X3__Anonymous_e__Union__Anonymous2_e__Struct Anonymous2;

  @Array(9)
  external Array<Float> M;
}

/// {@category Struct}
class _MATRIX3X3__Anonymous_e__Union__Anonymous1_e__Struct extends Struct {
  @Float()
  external double A11;

  @Float()
  external double A12;

  @Float()
  external double A13;

  @Float()
  external double A21;

  @Float()
  external double A22;

  @Float()
  external double A23;

  @Float()
  external double A31;

  @Float()
  external double A32;

  @Float()
  external double A33;
}

extension MATRIX3X3__Anonymous_e__Union_Extension on MATRIX3X3 {
  double get A11 => this.Anonymous.Anonymous1.A11;
  set A11(double value) => this.Anonymous.Anonymous1.A11 = value;

  double get A12 => this.Anonymous.Anonymous1.A12;
  set A12(double value) => this.Anonymous.Anonymous1.A12 = value;

  double get A13 => this.Anonymous.Anonymous1.A13;
  set A13(double value) => this.Anonymous.Anonymous1.A13 = value;

  double get A21 => this.Anonymous.Anonymous1.A21;
  set A21(double value) => this.Anonymous.Anonymous1.A21 = value;

  double get A22 => this.Anonymous.Anonymous1.A22;
  set A22(double value) => this.Anonymous.Anonymous1.A22 = value;

  double get A23 => this.Anonymous.Anonymous1.A23;
  set A23(double value) => this.Anonymous.Anonymous1.A23 = value;

  double get A31 => this.Anonymous.Anonymous1.A31;
  set A31(double value) => this.Anonymous.Anonymous1.A31 = value;

  double get A32 => this.Anonymous.Anonymous1.A32;
  set A32(double value) => this.Anonymous.Anonymous1.A32 = value;

  double get A33 => this.Anonymous.Anonymous1.A33;
  set A33(double value) => this.Anonymous.Anonymous1.A33 = value;
}

/// {@category Struct}
class _MATRIX3X3__Anonymous_e__Union__Anonymous2_e__Struct extends Struct {
  external VEC3D V1;

  external VEC3D V2;

  external VEC3D V3;
}

extension MATRIX3X3__Anonymous_e__Union_Extension_1 on MATRIX3X3 {
  VEC3D get V1 => this.Anonymous.Anonymous2.V1;
  set V1(VEC3D value) => this.Anonymous.Anonymous2.V1 = value;

  VEC3D get V2 => this.Anonymous.Anonymous2.V2;
  set V2(VEC3D value) => this.Anonymous.Anonymous2.V2 = value;

  VEC3D get V3 => this.Anonymous.Anonymous2.V3;
  set V3(VEC3D value) => this.Anonymous.Anonymous2.V3 = value;
}

extension MATRIX3X3_Extension on MATRIX3X3 {
  _MATRIX3X3__Anonymous_e__Union__Anonymous1_e__Struct get Anonymous1 =>
      this.Anonymous.Anonymous1;
  set Anonymous1(_MATRIX3X3__Anonymous_e__Union__Anonymous1_e__Struct value) =>
      this.Anonymous.Anonymous1 = value;

  _MATRIX3X3__Anonymous_e__Union__Anonymous2_e__Struct get Anonymous2 =>
      this.Anonymous.Anonymous2;
  set Anonymous2(_MATRIX3X3__Anonymous_e__Union__Anonymous2_e__Struct value) =>
      this.Anonymous.Anonymous2 = value;

  Array<Float> get M => this.Anonymous.M;
  set M(Array<Float> value) => this.Anonymous.M = value;
}

/// {@category Struct}
class QUATERNION extends Struct {
  @Float()
  external double X;

  @Float()
  external double Y;

  @Float()
  external double Z;

  @Float()
  external double W;
}

/// {@category Struct}
class SENSOR_COLLECTION_LIST extends Struct {
  @Uint32()
  external int AllocatedSizeInBytes;

  @Uint32()
  external int Count;

  @Array(1)
  external Array<SENSOR_VALUE_PAIR> $List;
}

/// {@category Struct}
class SENSOR_PROPERTY_LIST extends Struct {
  @Uint32()
  external int AllocatedSizeInBytes;

  @Uint32()
  external int Count;

  @Array(1)
  external Array<PROPERTYKEY> $List;
}

/// {@category Struct}
class SENSOR_VALUE_PAIR extends Struct {
  external PROPERTYKEY Key;

  external PROPVARIANT Value;
}

/// {@category Struct}
class VEC3D extends Struct {
  @Float()
  external double X;

  @Float()
  external double Y;

  @Float()
  external double Z;
}
