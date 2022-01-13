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
import '../../graphics/gdi/structs.g.dart';
import '../../graphics/opengl/structs.g.dart';

/// {@category Struct}
class EMRPIXELFORMAT extends Struct {
  external EMR emr;

  external PIXELFORMATDESCRIPTOR pfd;
}

/// {@category Struct}
class GLUnurbs extends Opaque {}

/// {@category Struct}
class GLUquadric extends Opaque {}

/// {@category Struct}
class GLUtesselator extends Opaque {}

/// {@category Struct}
class GLYPHMETRICSFLOAT extends Struct {
  @Float()
  external double gmfBlackBoxX;

  @Float()
  external double gmfBlackBoxY;

  external POINTFLOAT gmfptGlyphOrigin;

  @Float()
  external double gmfCellIncX;

  @Float()
  external double gmfCellIncY;
}

/// {@category Struct}
class LAYERPLANEDESCRIPTOR extends Struct {
  @Uint16()
  external int nSize;

  @Uint16()
  external int nVersion;

  @Uint32()
  external int dwFlags;

  @Uint8()
  external int iPixelType;

  @Uint8()
  external int cColorBits;

  @Uint8()
  external int cRedBits;

  @Uint8()
  external int cRedShift;

  @Uint8()
  external int cGreenBits;

  @Uint8()
  external int cGreenShift;

  @Uint8()
  external int cBlueBits;

  @Uint8()
  external int cBlueShift;

  @Uint8()
  external int cAlphaBits;

  @Uint8()
  external int cAlphaShift;

  @Uint8()
  external int cAccumBits;

  @Uint8()
  external int cAccumRedBits;

  @Uint8()
  external int cAccumGreenBits;

  @Uint8()
  external int cAccumBlueBits;

  @Uint8()
  external int cAccumAlphaBits;

  @Uint8()
  external int cDepthBits;

  @Uint8()
  external int cStencilBits;

  @Uint8()
  external int cAuxBuffers;

  @Uint8()
  external int iLayerPlane;

  @Uint8()
  external int bReserved;

  @Uint32()
  external int crTransparent;
}

/// {@category Struct}
class PIXELFORMATDESCRIPTOR extends Struct {
  @Uint16()
  external int nSize;

  @Uint16()
  external int nVersion;

  @Uint32()
  external int dwFlags;

  @Uint8()
  external int iPixelType;

  @Uint8()
  external int cColorBits;

  @Uint8()
  external int cRedBits;

  @Uint8()
  external int cRedShift;

  @Uint8()
  external int cGreenBits;

  @Uint8()
  external int cGreenShift;

  @Uint8()
  external int cBlueBits;

  @Uint8()
  external int cBlueShift;

  @Uint8()
  external int cAlphaBits;

  @Uint8()
  external int cAlphaShift;

  @Uint8()
  external int cAccumBits;

  @Uint8()
  external int cAccumRedBits;

  @Uint8()
  external int cAccumGreenBits;

  @Uint8()
  external int cAccumBlueBits;

  @Uint8()
  external int cAccumAlphaBits;

  @Uint8()
  external int cDepthBits;

  @Uint8()
  external int cStencilBits;

  @Uint8()
  external int cAuxBuffers;

  @Uint8()
  external int iLayerType;

  @Uint8()
  external int bReserved;

  @Uint32()
  external int dwLayerMask;

  @Uint32()
  external int dwVisibleMask;

  @Uint32()
  external int dwDamageMask;
}

/// {@category Struct}
class POINTFLOAT extends Struct {
  @Float()
  external double x;

  @Float()
  external double y;
}
