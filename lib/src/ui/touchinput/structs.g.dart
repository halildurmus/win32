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
import '../../ui/touchinput/structs.g.dart';
import '../../foundation/structs.g.dart';

/// {@category Struct}
class GESTURECONFIG extends Struct {
  @Uint32()
  external int dwID;
  @Uint32()
  external int dwWant;
  @Uint32()
  external int dwBlock;
}

/// {@category Struct}
class GESTUREINFO extends Struct {
  @Uint32()
  external int cbSize;
  @Uint32()
  external int dwFlags;
  @Uint32()
  external int dwID;
  @IntPtr()
  external int hwndTarget;
  external POINTS ptsLocation;
  @Uint32()
  external int dwInstanceID;
  @Uint32()
  external int dwSequenceID;
  @Uint64()
  external int ullArguments;
  @Uint32()
  external int cbExtraArgs;
}

/// {@category Struct}
class GESTURENOTIFYSTRUCT extends Struct {
  @Uint32()
  external int cbSize;
  @Uint32()
  external int dwFlags;
  @IntPtr()
  external int hwndTarget;
  external POINTS ptsLocation;
  @Uint32()
  external int dwInstanceID;
}

/// {@category Struct}
class TOUCHINPUT extends Struct {
  @Int32()
  external int x;
  @Int32()
  external int y;
  @IntPtr()
  external int hSource;
  @Uint32()
  external int dwID;
  @Uint32()
  external int dwFlags;
  @Uint32()
  external int dwMask;
  @Uint32()
  external int dwTime;
  @IntPtr()
  external int dwExtraInfo;
  @Uint32()
  external int cxContact;
  @Uint32()
  external int cyContact;
}
