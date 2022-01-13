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
import '../../../graphics/dxgi/common/structs.g.dart';
import '../../../foundation/structs.g.dart';

/// {@category Struct}
class DXGI_GAMMA_CONTROL extends Struct {
  external DXGI_RGB Scale;

  external DXGI_RGB Offset;

  @Array(1025)
  external Array<DXGI_RGB> GammaCurve;
}

/// {@category Struct}
class DXGI_GAMMA_CONTROL_CAPABILITIES extends Struct {
  @Int32()
  external int ScaleAndOffsetSupported;

  @Float()
  external double MaxConvertedValue;

  @Float()
  external double MinConvertedValue;

  @Uint32()
  external int NumGammaControlPoints;

  @Array(1025)
  external Array<Float> ControlPointPositions;
}

/// {@category Struct}
class DXGI_JPEG_AC_HUFFMAN_TABLE extends Struct {
  @Array(16)
  external Array<Uint8> CodeCounts;

  @Array(162)
  external Array<Uint8> CodeValues;
}

/// {@category Struct}
class DXGI_JPEG_DC_HUFFMAN_TABLE extends Struct {
  @Array(12)
  external Array<Uint8> CodeCounts;

  @Array(12)
  external Array<Uint8> CodeValues;
}

/// {@category Struct}
class DXGI_JPEG_QUANTIZATION_TABLE extends Struct {
  @Array(64)
  external Array<Uint8> Elements;
}

/// {@category Struct}
class DXGI_MODE_DESC extends Struct {
  @Uint32()
  external int Width;

  @Uint32()
  external int Height;

  external DXGI_RATIONAL RefreshRate;

  @Uint32()
  external int Format;

  @Int32()
  external int ScanlineOrdering;

  @Int32()
  external int Scaling;
}

/// {@category Struct}
class DXGI_RATIONAL extends Struct {
  @Uint32()
  external int Numerator;

  @Uint32()
  external int Denominator;
}

/// {@category Struct}
class DXGI_RGB extends Struct {
  @Float()
  external double Red;

  @Float()
  external double Green;

  @Float()
  external double Blue;
}

/// {@category Struct}
class DXGI_SAMPLE_DESC extends Struct {
  @Uint32()
  external int Count;

  @Uint32()
  external int Quality;
}
