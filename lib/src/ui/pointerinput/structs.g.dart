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
import '../../combase.dart';
import '../../guid.dart';
import '../../ui/windowsandmessaging/structs.g.dart';
import '../../ui/pointerinput/structs.g.dart';
import '../../foundation/structs.g.dart';

/// {@category Struct}
class INPUT_TRANSFORM extends Struct {
  @Uint32()
  external int Anonymous;
}

/// {@category Struct}
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
