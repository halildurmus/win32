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
import '../../graphics/dxgi/common/structs.g.dart';
import '../../graphics/imaging/structs.g.dart';
import '../../graphics/direct2d/common/structs.g.dart';

/// {@category Struct}
class WICBitmapPattern extends Struct {
  @Uint64()
  external int Position;

  @Uint32()
  external int Length;

  external Pointer<Uint8> Pattern;

  external Pointer<Uint8> Mask;

  @Int32()
  external int EndOfStream;
}

/// {@category Struct}
class WICBitmapPlane extends Struct {
  external GUID Format;

  external Pointer<Uint8> pbBuffer;

  @Uint32()
  external int cbStride;

  @Uint32()
  external int cbBufferSize;
}

/// {@category Struct}
class WICBitmapPlaneDescription extends Struct {
  external GUID Format;

  @Uint32()
  external int Width;

  @Uint32()
  external int Height;
}

/// {@category Struct}
class WICDdsFormatInfo extends Struct {
  @Uint32()
  external int DxgiFormat;

  @Uint32()
  external int BytesPerBlock;

  @Uint32()
  external int BlockWidth;

  @Uint32()
  external int BlockHeight;
}

/// {@category Struct}
class WICDdsParameters extends Struct {
  @Uint32()
  external int Width;

  @Uint32()
  external int Height;

  @Uint32()
  external int Depth;

  @Uint32()
  external int MipLevels;

  @Uint32()
  external int ArraySize;

  @Uint32()
  external int DxgiFormat;

  @Int32()
  external int Dimension;

  @Int32()
  external int AlphaMode;
}

/// {@category Struct}
class WICImageParameters extends Struct {
  external D2D1_PIXEL_FORMAT PixelFormat;

  @Float()
  external double DpiX;

  @Float()
  external double DpiY;

  @Float()
  external double Top;

  @Float()
  external double Left;

  @Uint32()
  external int PixelWidth;

  @Uint32()
  external int PixelHeight;
}

/// {@category Struct}
class WICJpegFrameHeader extends Struct {
  @Uint32()
  external int Width;

  @Uint32()
  external int Height;

  @Uint32()
  external int TransferMatrix;

  @Uint32()
  external int ScanType;

  @Uint32()
  external int cComponents;

  @Uint32()
  external int ComponentIdentifiers;

  @Uint32()
  external int SampleFactors;

  @Uint32()
  external int QuantizationTableIndices;
}

/// {@category Struct}
class WICJpegScanHeader extends Struct {
  @Uint32()
  external int cComponents;

  @Uint32()
  external int RestartInterval;

  @Uint32()
  external int ComponentSelectors;

  @Uint32()
  external int HuffmanTableIndices;

  @Uint8()
  external int StartSpectralSelection;

  @Uint8()
  external int EndSpectralSelection;

  @Uint8()
  external int SuccessiveApproximationHigh;

  @Uint8()
  external int SuccessiveApproximationLow;
}

/// {@category Struct}
class WICMetadataHeader extends Struct {
  @Uint64()
  external int Position;

  @Uint32()
  external int Length;

  external Pointer<Uint8> Header;

  @Uint64()
  external int DataOffset;
}

/// {@category Struct}
class WICMetadataPattern extends Struct {
  @Uint64()
  external int Position;

  @Uint32()
  external int Length;

  external Pointer<Uint8> Pattern;

  external Pointer<Uint8> Mask;

  @Uint64()
  external int DataOffset;
}

/// {@category Struct}
class WICRawCapabilitiesInfo extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int CodecMajorVersion;

  @Uint32()
  external int CodecMinorVersion;

  @Int32()
  external int ExposureCompensationSupport;

  @Int32()
  external int ContrastSupport;

  @Int32()
  external int RGBWhitePointSupport;

  @Int32()
  external int NamedWhitePointSupport;

  @Uint32()
  external int NamedWhitePointSupportMask;

  @Int32()
  external int KelvinWhitePointSupport;

  @Int32()
  external int GammaSupport;

  @Int32()
  external int TintSupport;

  @Int32()
  external int SaturationSupport;

  @Int32()
  external int SharpnessSupport;

  @Int32()
  external int NoiseReductionSupport;

  @Int32()
  external int DestinationColorProfileSupport;

  @Int32()
  external int ToneCurveSupport;

  @Int32()
  external int RotationSupport;

  @Int32()
  external int RenderModeSupport;
}

/// {@category Struct}
class WICRawToneCurve extends Struct {
  @Uint32()
  external int cPoints;

  @Array(1)
  external Array<WICRawToneCurvePoint> aPoints;
}

/// {@category Struct}
class WICRawToneCurvePoint extends Struct {
  @Double()
  external double Input;

  @Double()
  external double Output;
}

/// {@category Struct}
class WICRect extends Struct {
  @Int32()
  external int X;

  @Int32()
  external int Y;

  @Int32()
  external int Width;

  @Int32()
  external int Height;
}
