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

class WICRect extends Struct {
  @Int32() external int X;
  @Int32() external int Y;
  @Int32() external int Width;
  @Int32() external int Height;
}

class WICBitmapPattern extends Struct {
  @Uint64() external int Position;
  @Uint32() external int Length;
  external Pointer<Uint8> Pattern;
  external Pointer<Uint8> Mask;
  @Int32() external int EndOfStream;
}

class WICImageParameters extends Struct {
  external D2D1_PIXEL_FORMAT PixelFormat;
  @Float() external double DpiX;
  @Float() external double DpiY;
  @Float() external double Top;
  @Float() external double Left;
  @Uint32() external int PixelWidth;
  @Uint32() external int PixelHeight;
}

class WICBitmapPlaneDescription extends Struct {
  external GUID Format;
  @Uint32() external int Width;
  @Uint32() external int Height;
}

class WICBitmapPlane extends Struct {
  external GUID Format;
  external Pointer<Uint8> pbBuffer;
  @Uint32() external int cbStride;
  @Uint32() external int cbBufferSize;
}

class WICJpegFrameHeader extends Struct {
  @Uint32() external int Width;
  @Uint32() external int Height;
  @Uint32() external int TransferMatrix;
  @Uint32() external int ScanType;
  @Uint32() external int cComponents;
  @Uint32() external int ComponentIdentifiers;
  @Uint32() external int SampleFactors;
  @Uint32() external int QuantizationTableIndices;
}

class WICJpegScanHeader extends Struct {
  @Uint32() external int cComponents;
  @Uint32() external int RestartInterval;
  @Uint32() external int ComponentSelectors;
  @Uint32() external int HuffmanTableIndices;
  @Uint8() external int StartSpectralSelection;
  @Uint8() external int EndSpectralSelection;
  @Uint8() external int SuccessiveApproximationHigh;
  @Uint8() external int SuccessiveApproximationLow;
}

class WICRawCapabilitiesInfo extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int CodecMajorVersion;
  @Uint32() external int CodecMinorVersion;
  @Uint32() external int ExposureCompensationSupport;
  @Uint32() external int ContrastSupport;
  @Uint32() external int RGBWhitePointSupport;
  @Uint32() external int NamedWhitePointSupport;
  @Uint32() external int NamedWhitePointSupportMask;
  @Uint32() external int KelvinWhitePointSupport;
  @Uint32() external int GammaSupport;
  @Uint32() external int TintSupport;
  @Uint32() external int SaturationSupport;
  @Uint32() external int SharpnessSupport;
  @Uint32() external int NoiseReductionSupport;
  @Uint32() external int DestinationColorProfileSupport;
  @Uint32() external int ToneCurveSupport;
  @Uint32() external int RotationSupport;
  @Uint32() external int RenderModeSupport;
}

class WICRawToneCurvePoint extends Struct {
  @Double() external double Input;
  @Double() external double Output;
}

class WICRawToneCurve extends Struct {
  @Uint32() external int cPoints;
  @Array(1)
  external Array<WICRawToneCurvePoint> aPoints;
}

class WICDdsParameters extends Struct {
  @Uint32() external int Width;
  @Uint32() external int Height;
  @Uint32() external int Depth;
  @Uint32() external int MipLevels;
  @Uint32() external int ArraySize;
  @Uint32() external int DxgiFormat;
  @Uint32() external int Dimension;
  @Uint32() external int AlphaMode;
}

class WICDdsFormatInfo extends Struct {
  @Uint32() external int DxgiFormat;
  @Uint32() external int BytesPerBlock;
  @Uint32() external int BlockWidth;
  @Uint32() external int BlockHeight;
}

class WICMetadataPattern extends Struct {
  @Uint64() external int Position;
  @Uint32() external int Length;
  external Pointer<Uint8> Pattern;
  external Pointer<Uint8> Mask;
  @Uint64() external int DataOffset;
}

class WICMetadataHeader extends Struct {
  @Uint64() external int Position;
  @Uint32() external int Length;
  external Pointer<Uint8> Header;
  @Uint64() external int DataOffset;
}

