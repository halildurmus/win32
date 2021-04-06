// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// -----------------------------------------------------------------------------
// Linter exceptions
// -----------------------------------------------------------------------------
// ignore_for_file: camel_case_types
// ignore_for_file: camel_case_extensions
//
// Why? The linter defaults to throw a warning for types not named as camel
// case. We deliberately break this convention to match the Win32 underlying
// types.
//
//
// ignore_for_file: unused_field
//
// Why? The linter complains about unused fields (e.g. a class that contains
// underscore-prefixed members that are not used in the library. In this class,
// we use this feature to ensure that sizeOf<STRUCT_NAME> returns a size at
// least as large as the underlying native struct. See, for example,
// ENUMLOGFONTEX.
//
//
// ignore_for_file: unnecessary_getters_setters
//
// Why? In structs like VARIANT, we're using getters and setters to project the
// same underlying data property to various union types. The trivial overhead is
// outweighed by readability.
//
//
// ignore_for_file: unused_import
//
// Why? We speculatively include some imports that we might generate a
// requirement for.
// -----------------------------------------------------------------------------

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';

class POINTER_INFO extends Struct {
  @Uint32()
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
  @Uint32()
  external int ButtonChangeType;
}

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

class INPUT_TRANSFORM extends Struct {
  @Uint32()
  external int Anonymous;
}
