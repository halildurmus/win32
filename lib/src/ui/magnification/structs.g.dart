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
class MAGCOLOREFFECT extends Struct {
  @Array(25)
  external Array<Float> transform;
}

/// {@category Struct}
class MAGIMAGEHEADER extends Struct {
  @Uint32()
  external int width;

  @Uint32()
  external int height;

  external GUID format;

  @Uint32()
  external int stride;

  @Uint32()
  external int offset;

  @IntPtr()
  external int cbSize;
}

/// {@category Struct}
class MAGTRANSFORM extends Struct {
  @Array(9)
  external Array<Float> v;
}
