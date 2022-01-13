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

const D2D1_DEFAULT_FLATTENING_TOLERANCE = 0x3e800000;
const CLSID_D2D12DAffineTransform = 0x0;
const CLSID_D2D13DPerspectiveTransform = 0x0;
const CLSID_D2D13DTransform = 0x0;
const CLSID_D2D1ArithmeticComposite = 0x0;
const CLSID_D2D1Atlas = 0x0;
const CLSID_D2D1BitmapSource = 0x0;
const CLSID_D2D1Blend = 0x0;
const CLSID_D2D1Border = 0x0;
const CLSID_D2D1Brightness = 0x0;
const CLSID_D2D1ColorManagement = 0x0;
const CLSID_D2D1ColorMatrix = 0x0;
const CLSID_D2D1Composite = 0x0;
const CLSID_D2D1ConvolveMatrix = 0x0;
const CLSID_D2D1Crop = 0x0;
const CLSID_D2D1DirectionalBlur = 0x0;
const CLSID_D2D1DiscreteTransfer = 0x0;
const CLSID_D2D1DisplacementMap = 0x0;
const CLSID_D2D1DistantDiffuse = 0x0;
const CLSID_D2D1DistantSpecular = 0x0;
const CLSID_D2D1DpiCompensation = 0x0;
const CLSID_D2D1Flood = 0x0;
const CLSID_D2D1GammaTransfer = 0x0;
const CLSID_D2D1GaussianBlur = 0x0;
const CLSID_D2D1Scale = 0x0;
const CLSID_D2D1Histogram = 0x0;
const CLSID_D2D1HueRotation = 0x0;
const CLSID_D2D1LinearTransfer = 0x0;
const CLSID_D2D1LuminanceToAlpha = 0x0;
const CLSID_D2D1Morphology = 0x0;
const CLSID_D2D1OpacityMetadata = 0x0;
const CLSID_D2D1PointDiffuse = 0x0;
const CLSID_D2D1PointSpecular = 0x0;
const CLSID_D2D1Premultiply = 0x0;
const CLSID_D2D1Saturation = 0x0;
const CLSID_D2D1Shadow = 0x0;
const CLSID_D2D1SpotDiffuse = 0x0;
const CLSID_D2D1SpotSpecular = 0x0;
const CLSID_D2D1TableTransfer = 0x0;
const CLSID_D2D1Tile = 0x0;
const CLSID_D2D1Turbulence = 0x0;
const CLSID_D2D1UnPremultiply = 0x0;
const CLSID_D2D1YCbCr = 0x0;
const CLSID_D2D1Contrast = 0x0;
const CLSID_D2D1RgbToHue = 0x0;
const CLSID_D2D1HueToRgb = 0x0;
const CLSID_D2D1ChromaKey = 0x0;
const CLSID_D2D1Emboss = 0x0;
const CLSID_D2D1Exposure = 0x0;
const CLSID_D2D1Grayscale = 0x0;
const CLSID_D2D1Invert = 0x0;
const CLSID_D2D1Posterize = 0x0;
const CLSID_D2D1Sepia = 0x0;
const CLSID_D2D1Sharpen = 0x0;
const CLSID_D2D1Straighten = 0x0;
const CLSID_D2D1TemperatureTint = 0x0;
const CLSID_D2D1Vignette = 0x0;
const CLSID_D2D1EdgeDetection = 0x0;
const CLSID_D2D1HighlightsShadows = 0x0;
const CLSID_D2D1LookupTable3D = 0x0;
const CLSID_D2D1Opacity = 0x0;
const CLSID_D2D1AlphaMask = 0x0;
const CLSID_D2D1CrossFade = 0x0;
const CLSID_D2D1Tint = 0x0;
const D2D1_SCENE_REFERRED_SDR_WHITE_LEVEL = 0x42a00000;
const CLSID_D2D1WhiteLevelAdjustment = 0x0;
const CLSID_D2D1HdrToneMap = 0x0;
const D2D1_APPEND_ALIGNED_ELEMENT = 0xffffffff;
const FACILITY_D2D = 0x899;
