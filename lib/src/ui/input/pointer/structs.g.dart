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
import '../../../ui/windowsandmessaging/structs.g.dart';
import '../../../ui/input/pointer/structs.g.dart';
import '../../../foundation/structs.g.dart';

/// {@category Struct}
class INPUT_INJECTION_VALUE extends Struct {
  @Uint16()
  external int page;

  @Uint16()
  external int usage;

  @Int32()
  external int value;

  @Uint16()
  external int index;
}

/// {@category Struct}
class INPUT_TRANSFORM extends Struct {
  external _INPUT_TRANSFORM__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _INPUT_TRANSFORM__Anonymous_e__Union extends Union {
  external _INPUT_TRANSFORM__Anonymous_e__Union__Anonymous_e__Struct Anonymous;

  @Array(16)
  external Array<Float> m;
}

/// {@category Struct}
class _INPUT_TRANSFORM__Anonymous_e__Union__Anonymous_e__Struct extends Struct {
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

extension INPUT_TRANSFORM__Anonymous_e__Union_Extension on INPUT_TRANSFORM {
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

extension INPUT_TRANSFORM_Extension on INPUT_TRANSFORM {
  _INPUT_TRANSFORM__Anonymous_e__Union__Anonymous_e__Struct get Anonymous =>
      this.Anonymous.Anonymous;
  set Anonymous(
          _INPUT_TRANSFORM__Anonymous_e__Union__Anonymous_e__Struct value) =>
      this.Anonymous.Anonymous = value;

  Array<Float> get m => this.Anonymous.m;
  set m(Array<Float> value) => this.Anonymous.m = value;
}

/// {@category Struct}
class POINTER_INFO extends Struct {
  @Int32()
  external int pointerType;

  @Uint32()
  external int pointerId;

  @Uint32()
  external int frameId;

  @Uint32()
  external int pointerFlags;

  @IntPtr()
  external int sourceDevice;

  @IntPtr()
  external int hwndTarget;

  external POINT ptPixelLocation;

  external POINT ptHimetricLocation;

  external POINT ptPixelLocationRaw;

  external POINT ptHimetricLocationRaw;

  @Uint32()
  external int dwTime;

  @Uint32()
  external int historyCount;

  @Int32()
  external int InputData;

  @Uint32()
  external int dwKeyStates;

  @Uint64()
  external int PerformanceCount;

  @Int32()
  external int ButtonChangeType;
}

/// {@category Struct}
class POINTER_PEN_INFO extends Struct {
  external POINTER_INFO pointerInfo;

  @Uint32()
  external int penFlags;

  @Uint32()
  external int penMask;

  @Uint32()
  external int pressure;

  @Uint32()
  external int rotation;

  @Int32()
  external int tiltX;

  @Int32()
  external int tiltY;
}

/// {@category Struct}
class POINTER_TOUCH_INFO extends Struct {
  external POINTER_INFO pointerInfo;

  @Uint32()
  external int touchFlags;

  @Uint32()
  external int touchMask;

  external RECT rcContact;

  external RECT rcContactRaw;

  @Uint32()
  external int orientation;

  @Uint32()
  external int pressure;
}
