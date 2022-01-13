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
import '../../foundation/structs.g.dart';
import '../../media/streaming/structs.g.dart';

/// {@category Struct}
class CapturedMetadataExposureCompensation extends Struct {
  @Uint64()
  external int Flags;

  @Int32()
  external int Value;
}

/// {@category Struct}
class CapturedMetadataISOGains extends Struct {
  @Float()
  external double AnalogGain;

  @Float()
  external double DigitalGain;
}

/// {@category Struct}
class CapturedMetadataWhiteBalanceGains extends Struct {
  @Float()
  external double R;

  @Float()
  external double G;

  @Float()
  external double B;
}

/// {@category Struct}
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

/// {@category Struct}
class FaceCharacterizationBlobHeader extends Struct {
  @Uint32()
  external int Size;

  @Uint32()
  external int Count;
}

/// {@category Struct}
class FaceRectInfo extends Struct {
  external RECT Region;

  @Int32()
  external int confidenceLevel;
}

/// {@category Struct}
class FaceRectInfoBlobHeader extends Struct {
  @Uint32()
  external int Size;

  @Uint32()
  external int Count;
}

/// {@category Struct}
class HistogramBlobHeader extends Struct {
  @Uint32()
  external int Size;

  @Uint32()
  external int Histograms;
}

/// {@category Struct}
class HistogramDataHeader extends Struct {
  @Uint32()
  external int Size;

  @Uint32()
  external int ChannelMask;

  @Uint32()
  external int Linear;
}

/// {@category Struct}
class HistogramGrid extends Struct {
  @Uint32()
  external int Width;

  @Uint32()
  external int Height;

  external RECT Region;
}

/// {@category Struct}
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

/// {@category Struct}
class MetadataTimeStamps extends Struct {
  @Uint32()
  external int Flags;

  @Int64()
  external int Device;

  @Int64()
  external int Presentation;
}
