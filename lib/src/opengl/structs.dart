// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// -----------------------------------------------------------------------------
// Linter exceptions
// -----------------------------------------------------------------------------
// ignore_for_file: camel_case_types ignore_for_file: camel_case_extensions
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

class HGLRC extends Struct {
  @IntPtr() external int Value;
}

class PIXELFORMATDESCRIPTOR extends Struct {
  @Uint16() external int nSize;
  @Uint16() external int nVersion;
  @Uint32() external int dwFlags;
  @Uint8() external int iPixelType;
  @Uint8() external int cColorBits;
  @Uint8() external int cRedBits;
  @Uint8() external int cRedShift;
  @Uint8() external int cGreenBits;
  @Uint8() external int cGreenShift;
  @Uint8() external int cBlueBits;
  @Uint8() external int cBlueShift;
  @Uint8() external int cAlphaBits;
  @Uint8() external int cAlphaShift;
  @Uint8() external int cAccumBits;
  @Uint8() external int cAccumRedBits;
  @Uint8() external int cAccumGreenBits;
  @Uint8() external int cAccumBlueBits;
  @Uint8() external int cAccumAlphaBits;
  @Uint8() external int cDepthBits;
  @Uint8() external int cStencilBits;
  @Uint8() external int cAuxBuffers;
  @Uint8() external int iLayerType;
  @Uint8() external int bReserved;
  @Uint32() external int dwLayerMask;
  @Uint32() external int dwVisibleMask;
  @Uint32() external int dwDamageMask;
}

class POINTFLOAT extends Struct {
  @Float() external double x;
  @Float() external double y;
}

class GLYPHMETRICSFLOAT extends Struct {
  @Float() external double gmfBlackBoxX;
  @Float() external double gmfBlackBoxY;
  external POINTFLOAT gmfptGlyphOrigin;
  @Float() external double gmfCellIncX;
  @Float() external double gmfCellIncY;
}

class LAYERPLANEDESCRIPTOR extends Struct {
  @Uint16() external int nSize;
  @Uint16() external int nVersion;
  @Uint32() external int dwFlags;
  @Uint8() external int iPixelType;
  @Uint8() external int cColorBits;
  @Uint8() external int cRedBits;
  @Uint8() external int cRedShift;
  @Uint8() external int cGreenBits;
  @Uint8() external int cGreenShift;
  @Uint8() external int cBlueBits;
  @Uint8() external int cBlueShift;
  @Uint8() external int cAlphaBits;
  @Uint8() external int cAlphaShift;
  @Uint8() external int cAccumBits;
  @Uint8() external int cAccumRedBits;
  @Uint8() external int cAccumGreenBits;
  @Uint8() external int cAccumBlueBits;
  @Uint8() external int cAccumAlphaBits;
  @Uint8() external int cDepthBits;
  @Uint8() external int cStencilBits;
  @Uint8() external int cAuxBuffers;
  @Uint8() external int iLayerPlane;
  @Uint8() external int bReserved;
  @Uint32() external int crTransparent;
}

