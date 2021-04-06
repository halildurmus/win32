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

class FaceRectInfoBlobHeader extends Struct {
  @Uint32()
  external int Size;
  @Uint32()
  external int Count;
}

class FaceRectInfo extends Struct {
  external RECT Region;
  @Int32()
  external int confidenceLevel;
}

class FaceCharacterizationBlobHeader extends Struct {
  @Uint32()
  external int Size;
  @Uint32()
  external int Count;
}

class FaceCharacterization extends Struct {
  @Uint32()
  external int BlinkScoreLeft;
  @Uint32()
  external int BlinkScoreRight;
  @Uint32()
  external int FacialExpression;
  @Uint32()
  external int FacialExpressionScore;
}

class CapturedMetadataExposureCompensation extends Struct {
  @Uint64()
  external int Flags;
  @Int32()
  external int Value;
}

class CapturedMetadataISOGains extends Struct {
  @Float()
  external double AnalogGain;
  @Float()
  external double DigitalGain;
}

class CapturedMetadataWhiteBalanceGains extends Struct {
  @Float()
  external double R;
  @Float()
  external double G;
  @Float()
  external double B;
}

class MetadataTimeStamps extends Struct {
  @Uint32()
  external int Flags;
  @Int64()
  external int Device;
  @Int64()
  external int Presentation;
}

class HistogramGrid extends Struct {
  @Uint32()
  external int Width;
  @Uint32()
  external int Height;
  external RECT Region;
}

class HistogramBlobHeader extends Struct {
  @Uint32()
  external int Size;
  @Uint32()
  external int Histograms;
}

class HistogramHeader extends Struct {
  @Uint32()
  external int Size;
  @Uint32()
  external int Bins;
  @Uint32()
  external int FourCC;
  @Uint32()
  external int ChannelMasks;
  external HistogramGrid Grid;
}

class HistogramDataHeader extends Struct {
  @Uint32()
  external int Size;
  @Uint32()
  external int ChannelMask;
  @Uint32()
  external int Linear;
}
