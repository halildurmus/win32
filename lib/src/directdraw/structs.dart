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

class _DDFXROP extends Struct {
}

class DDARGB extends Struct {
  @Uint8() external int blue;
  @Uint8() external int green;
  @Uint8() external int red;
  @Uint8() external int alpha;
}

class DDRGBA extends Struct {
  @Uint8() external int red;
  @Uint8() external int green;
  @Uint8() external int blue;
  @Uint8() external int alpha;
}

class DDBLTFX extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwDDFX;
  @Uint32() external int dwROP;
  @Uint32() external int dwDDROP;
  @Uint32() external int dwRotationAngle;
  @Uint32() external int dwZBufferOpCode;
  @Uint32() external int dwZBufferLow;
  @Uint32() external int dwZBufferHigh;
  @Uint32() external int dwZBufferBaseDest;
  @Uint32() external int dwZDestConstBitDepth;
  @Uint32() external int Anonymous1;
  @Uint32() external int dwZSrcConstBitDepth;
  @Uint32() external int Anonymous2;
  @Uint32() external int dwAlphaEdgeBlendBitDepth;
  @Uint32() external int dwAlphaEdgeBlend;
  @Uint32() external int dwReserved;
  @Uint32() external int dwAlphaDestConstBitDepth;
  @Uint32() external int Anonymous3;
  @Uint32() external int dwAlphaSrcConstBitDepth;
  @Uint32() external int Anonymous4;
  @Uint32() external int Anonymous5;
  external DDCOLORKEY ddckDestColorkey;
  external DDCOLORKEY ddckSrcColorkey;
}

class DDSCAPS extends Struct {
  @Uint32() external int dwCaps;
}

class DDOSCAPS extends Struct {
  @Uint32() external int dwCaps;
}

class DDSCAPSEX extends Struct {
  @Uint32() external int dwCaps2;
  @Uint32() external int dwCaps3;
  @Uint32() external int Anonymous;
}

class DDSCAPS2 extends Struct {
  @Uint32() external int dwCaps;
  @Uint32() external int dwCaps2;
  @Uint32() external int dwCaps3;
  @Uint32() external int Anonymous;
}

class DDCAPS_DX1 extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwCaps;
  @Uint32() external int dwCaps2;
  @Uint32() external int dwCKeyCaps;
  @Uint32() external int dwFXCaps;
  @Uint32() external int dwFXAlphaCaps;
  @Uint32() external int dwPalCaps;
  @Uint32() external int dwSVCaps;
  @Uint32() external int dwAlphaBltConstBitDepths;
  @Uint32() external int dwAlphaBltPixelBitDepths;
  @Uint32() external int dwAlphaBltSurfaceBitDepths;
  @Uint32() external int dwAlphaOverlayConstBitDepths;
  @Uint32() external int dwAlphaOverlayPixelBitDepths;
  @Uint32() external int dwAlphaOverlaySurfaceBitDepths;
  @Uint32() external int dwZBufferBitDepths;
  @Uint32() external int dwVidMemTotal;
  @Uint32() external int dwVidMemFree;
  @Uint32() external int dwMaxVisibleOverlays;
  @Uint32() external int dwCurrVisibleOverlays;
  @Uint32() external int dwNumFourCCCodes;
  @Uint32() external int dwAlignBoundarySrc;
  @Uint32() external int dwAlignSizeSrc;
  @Uint32() external int dwAlignBoundaryDest;
  @Uint32() external int dwAlignSizeDest;
  @Uint32() external int dwAlignStrideAlign;
  @Array(8)
  external Array<Uint32> dwRops;
  external DDSCAPS ddsCaps;
  @Uint32() external int dwMinOverlayStretch;
  @Uint32() external int dwMaxOverlayStretch;
  @Uint32() external int dwMinLiveVideoStretch;
  @Uint32() external int dwMaxLiveVideoStretch;
  @Uint32() external int dwMinHwCodecStretch;
  @Uint32() external int dwMaxHwCodecStretch;
  @Uint32() external int dwReserved1;
  @Uint32() external int dwReserved2;
  @Uint32() external int dwReserved3;
}

class DDCAPS_DX3 extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwCaps;
  @Uint32() external int dwCaps2;
  @Uint32() external int dwCKeyCaps;
  @Uint32() external int dwFXCaps;
  @Uint32() external int dwFXAlphaCaps;
  @Uint32() external int dwPalCaps;
  @Uint32() external int dwSVCaps;
  @Uint32() external int dwAlphaBltConstBitDepths;
  @Uint32() external int dwAlphaBltPixelBitDepths;
  @Uint32() external int dwAlphaBltSurfaceBitDepths;
  @Uint32() external int dwAlphaOverlayConstBitDepths;
  @Uint32() external int dwAlphaOverlayPixelBitDepths;
  @Uint32() external int dwAlphaOverlaySurfaceBitDepths;
  @Uint32() external int dwZBufferBitDepths;
  @Uint32() external int dwVidMemTotal;
  @Uint32() external int dwVidMemFree;
  @Uint32() external int dwMaxVisibleOverlays;
  @Uint32() external int dwCurrVisibleOverlays;
  @Uint32() external int dwNumFourCCCodes;
  @Uint32() external int dwAlignBoundarySrc;
  @Uint32() external int dwAlignSizeSrc;
  @Uint32() external int dwAlignBoundaryDest;
  @Uint32() external int dwAlignSizeDest;
  @Uint32() external int dwAlignStrideAlign;
  @Array(8)
  external Array<Uint32> dwRops;
  external DDSCAPS ddsCaps;
  @Uint32() external int dwMinOverlayStretch;
  @Uint32() external int dwMaxOverlayStretch;
  @Uint32() external int dwMinLiveVideoStretch;
  @Uint32() external int dwMaxLiveVideoStretch;
  @Uint32() external int dwMinHwCodecStretch;
  @Uint32() external int dwMaxHwCodecStretch;
  @Uint32() external int dwReserved1;
  @Uint32() external int dwReserved2;
  @Uint32() external int dwReserved3;
  @Uint32() external int dwSVBCaps;
  @Uint32() external int dwSVBCKeyCaps;
  @Uint32() external int dwSVBFXCaps;
  @Array(8)
  external Array<Uint32> dwSVBRops;
  @Uint32() external int dwVSBCaps;
  @Uint32() external int dwVSBCKeyCaps;
  @Uint32() external int dwVSBFXCaps;
  @Array(8)
  external Array<Uint32> dwVSBRops;
  @Uint32() external int dwSSBCaps;
  @Uint32() external int dwSSBCKeyCaps;
  @Uint32() external int dwSSBFXCaps;
  @Array(8)
  external Array<Uint32> dwSSBRops;
  @Uint32() external int dwReserved4;
  @Uint32() external int dwReserved5;
  @Uint32() external int dwReserved6;
}

class DDCAPS_DX5 extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwCaps;
  @Uint32() external int dwCaps2;
  @Uint32() external int dwCKeyCaps;
  @Uint32() external int dwFXCaps;
  @Uint32() external int dwFXAlphaCaps;
  @Uint32() external int dwPalCaps;
  @Uint32() external int dwSVCaps;
  @Uint32() external int dwAlphaBltConstBitDepths;
  @Uint32() external int dwAlphaBltPixelBitDepths;
  @Uint32() external int dwAlphaBltSurfaceBitDepths;
  @Uint32() external int dwAlphaOverlayConstBitDepths;
  @Uint32() external int dwAlphaOverlayPixelBitDepths;
  @Uint32() external int dwAlphaOverlaySurfaceBitDepths;
  @Uint32() external int dwZBufferBitDepths;
  @Uint32() external int dwVidMemTotal;
  @Uint32() external int dwVidMemFree;
  @Uint32() external int dwMaxVisibleOverlays;
  @Uint32() external int dwCurrVisibleOverlays;
  @Uint32() external int dwNumFourCCCodes;
  @Uint32() external int dwAlignBoundarySrc;
  @Uint32() external int dwAlignSizeSrc;
  @Uint32() external int dwAlignBoundaryDest;
  @Uint32() external int dwAlignSizeDest;
  @Uint32() external int dwAlignStrideAlign;
  @Array(8)
  external Array<Uint32> dwRops;
  external DDSCAPS ddsCaps;
  @Uint32() external int dwMinOverlayStretch;
  @Uint32() external int dwMaxOverlayStretch;
  @Uint32() external int dwMinLiveVideoStretch;
  @Uint32() external int dwMaxLiveVideoStretch;
  @Uint32() external int dwMinHwCodecStretch;
  @Uint32() external int dwMaxHwCodecStretch;
  @Uint32() external int dwReserved1;
  @Uint32() external int dwReserved2;
  @Uint32() external int dwReserved3;
  @Uint32() external int dwSVBCaps;
  @Uint32() external int dwSVBCKeyCaps;
  @Uint32() external int dwSVBFXCaps;
  @Array(8)
  external Array<Uint32> dwSVBRops;
  @Uint32() external int dwVSBCaps;
  @Uint32() external int dwVSBCKeyCaps;
  @Uint32() external int dwVSBFXCaps;
  @Array(8)
  external Array<Uint32> dwVSBRops;
  @Uint32() external int dwSSBCaps;
  @Uint32() external int dwSSBCKeyCaps;
  @Uint32() external int dwSSBFXCaps;
  @Array(8)
  external Array<Uint32> dwSSBRops;
  @Uint32() external int dwMaxVideoPorts;
  @Uint32() external int dwCurrVideoPorts;
  @Uint32() external int dwSVBCaps2;
  @Uint32() external int dwNLVBCaps;
  @Uint32() external int dwNLVBCaps2;
  @Uint32() external int dwNLVBCKeyCaps;
  @Uint32() external int dwNLVBFXCaps;
  @Array(8)
  external Array<Uint32> dwNLVBRops;
}

class DDCAPS_DX6 extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwCaps;
  @Uint32() external int dwCaps2;
  @Uint32() external int dwCKeyCaps;
  @Uint32() external int dwFXCaps;
  @Uint32() external int dwFXAlphaCaps;
  @Uint32() external int dwPalCaps;
  @Uint32() external int dwSVCaps;
  @Uint32() external int dwAlphaBltConstBitDepths;
  @Uint32() external int dwAlphaBltPixelBitDepths;
  @Uint32() external int dwAlphaBltSurfaceBitDepths;
  @Uint32() external int dwAlphaOverlayConstBitDepths;
  @Uint32() external int dwAlphaOverlayPixelBitDepths;
  @Uint32() external int dwAlphaOverlaySurfaceBitDepths;
  @Uint32() external int dwZBufferBitDepths;
  @Uint32() external int dwVidMemTotal;
  @Uint32() external int dwVidMemFree;
  @Uint32() external int dwMaxVisibleOverlays;
  @Uint32() external int dwCurrVisibleOverlays;
  @Uint32() external int dwNumFourCCCodes;
  @Uint32() external int dwAlignBoundarySrc;
  @Uint32() external int dwAlignSizeSrc;
  @Uint32() external int dwAlignBoundaryDest;
  @Uint32() external int dwAlignSizeDest;
  @Uint32() external int dwAlignStrideAlign;
  @Array(8)
  external Array<Uint32> dwRops;
  external DDSCAPS ddsOldCaps;
  @Uint32() external int dwMinOverlayStretch;
  @Uint32() external int dwMaxOverlayStretch;
  @Uint32() external int dwMinLiveVideoStretch;
  @Uint32() external int dwMaxLiveVideoStretch;
  @Uint32() external int dwMinHwCodecStretch;
  @Uint32() external int dwMaxHwCodecStretch;
  @Uint32() external int dwReserved1;
  @Uint32() external int dwReserved2;
  @Uint32() external int dwReserved3;
  @Uint32() external int dwSVBCaps;
  @Uint32() external int dwSVBCKeyCaps;
  @Uint32() external int dwSVBFXCaps;
  @Array(8)
  external Array<Uint32> dwSVBRops;
  @Uint32() external int dwVSBCaps;
  @Uint32() external int dwVSBCKeyCaps;
  @Uint32() external int dwVSBFXCaps;
  @Array(8)
  external Array<Uint32> dwVSBRops;
  @Uint32() external int dwSSBCaps;
  @Uint32() external int dwSSBCKeyCaps;
  @Uint32() external int dwSSBFXCaps;
  @Array(8)
  external Array<Uint32> dwSSBRops;
  @Uint32() external int dwMaxVideoPorts;
  @Uint32() external int dwCurrVideoPorts;
  @Uint32() external int dwSVBCaps2;
  @Uint32() external int dwNLVBCaps;
  @Uint32() external int dwNLVBCaps2;
  @Uint32() external int dwNLVBCKeyCaps;
  @Uint32() external int dwNLVBFXCaps;
  @Array(8)
  external Array<Uint32> dwNLVBRops;
  external DDSCAPS2 ddsCaps;
}

class DDCAPS_DX7 extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwCaps;
  @Uint32() external int dwCaps2;
  @Uint32() external int dwCKeyCaps;
  @Uint32() external int dwFXCaps;
  @Uint32() external int dwFXAlphaCaps;
  @Uint32() external int dwPalCaps;
  @Uint32() external int dwSVCaps;
  @Uint32() external int dwAlphaBltConstBitDepths;
  @Uint32() external int dwAlphaBltPixelBitDepths;
  @Uint32() external int dwAlphaBltSurfaceBitDepths;
  @Uint32() external int dwAlphaOverlayConstBitDepths;
  @Uint32() external int dwAlphaOverlayPixelBitDepths;
  @Uint32() external int dwAlphaOverlaySurfaceBitDepths;
  @Uint32() external int dwZBufferBitDepths;
  @Uint32() external int dwVidMemTotal;
  @Uint32() external int dwVidMemFree;
  @Uint32() external int dwMaxVisibleOverlays;
  @Uint32() external int dwCurrVisibleOverlays;
  @Uint32() external int dwNumFourCCCodes;
  @Uint32() external int dwAlignBoundarySrc;
  @Uint32() external int dwAlignSizeSrc;
  @Uint32() external int dwAlignBoundaryDest;
  @Uint32() external int dwAlignSizeDest;
  @Uint32() external int dwAlignStrideAlign;
  @Array(8)
  external Array<Uint32> dwRops;
  external DDSCAPS ddsOldCaps;
  @Uint32() external int dwMinOverlayStretch;
  @Uint32() external int dwMaxOverlayStretch;
  @Uint32() external int dwMinLiveVideoStretch;
  @Uint32() external int dwMaxLiveVideoStretch;
  @Uint32() external int dwMinHwCodecStretch;
  @Uint32() external int dwMaxHwCodecStretch;
  @Uint32() external int dwReserved1;
  @Uint32() external int dwReserved2;
  @Uint32() external int dwReserved3;
  @Uint32() external int dwSVBCaps;
  @Uint32() external int dwSVBCKeyCaps;
  @Uint32() external int dwSVBFXCaps;
  @Array(8)
  external Array<Uint32> dwSVBRops;
  @Uint32() external int dwVSBCaps;
  @Uint32() external int dwVSBCKeyCaps;
  @Uint32() external int dwVSBFXCaps;
  @Array(8)
  external Array<Uint32> dwVSBRops;
  @Uint32() external int dwSSBCaps;
  @Uint32() external int dwSSBCKeyCaps;
  @Uint32() external int dwSSBFXCaps;
  @Array(8)
  external Array<Uint32> dwSSBRops;
  @Uint32() external int dwMaxVideoPorts;
  @Uint32() external int dwCurrVideoPorts;
  @Uint32() external int dwSVBCaps2;
  @Uint32() external int dwNLVBCaps;
  @Uint32() external int dwNLVBCaps2;
  @Uint32() external int dwNLVBCKeyCaps;
  @Uint32() external int dwNLVBFXCaps;
  @Array(8)
  external Array<Uint32> dwNLVBRops;
  external DDSCAPS2 ddsCaps;
}

class DDPIXELFORMAT extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwFlags;
  @Uint32() external int dwFourCC;
  @Uint32() external int Anonymous1;
  @Uint32() external int Anonymous2;
  @Uint32() external int Anonymous3;
  @Uint32() external int Anonymous4;
  @Uint32() external int Anonymous5;
}

class DDOVERLAYFX extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwAlphaEdgeBlendBitDepth;
  @Uint32() external int dwAlphaEdgeBlend;
  @Uint32() external int dwReserved;
  @Uint32() external int dwAlphaDestConstBitDepth;
  @Uint32() external int Anonymous1;
  @Uint32() external int dwAlphaSrcConstBitDepth;
  @Uint32() external int Anonymous2;
  external DDCOLORKEY dckDestColorkey;
  external DDCOLORKEY dckSrcColorkey;
  @Uint32() external int dwDDFX;
  @Uint32() external int dwFlags;
}

class DDBLTBATCH extends Struct {
  external Pointer<RECT> lprDest;
  external Pointer lpDDSSrc;
  external Pointer<RECT> lprSrc;
  @Uint32() external int dwFlags;
  external Pointer<DDBLTFX> lpDDBltFx;
}

class DDGAMMARAMP extends Struct {
  @Array(129)
  external Array<Uint16> red;
  @Array(129)
  external Array<Uint16> green;
  @Array(129)
  external Array<Uint16> blue;
}

class DDDEVICEIDENTIFIER extends Struct {
  @Array(130)
  external Array<Int8> szDriver;
  @Array(130)
  external Array<Int8> szDescription;
  @Int64() external int liDriverVersion;
  @Uint32() external int dwVendorId;
  @Uint32() external int dwDeviceId;
  @Uint32() external int dwSubSysId;
  @Uint32() external int dwRevision;
  external GUID guidDeviceIdentifier;
}

class DDDEVICEIDENTIFIER2 extends Struct {
  @Array(130)
  external Array<Int8> szDriver;
  @Array(130)
  external Array<Int8> szDescription;
  @Int64() external int liDriverVersion;
  @Uint32() external int dwVendorId;
  @Uint32() external int dwDeviceId;
  @Uint32() external int dwSubSysId;
  @Uint32() external int dwRevision;
  external GUID guidDeviceIdentifier;
  @Uint32() external int dwWHQLLevel;
}

class DDSURFACEDESC extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwFlags;
  @Uint32() external int dwHeight;
  @Uint32() external int dwWidth;
  @Uint32() external int Anonymous1;
  @Uint32() external int dwBackBufferCount;
  @Uint32() external int Anonymous2;
  @Uint32() external int dwAlphaBitDepth;
  @Uint32() external int dwReserved;
  external Pointer lpSurface;
  external DDCOLORKEY ddckCKDestOverlay;
  external DDCOLORKEY ddckCKDestBlt;
  external DDCOLORKEY ddckCKSrcOverlay;
  external DDCOLORKEY ddckCKSrcBlt;
  external DDPIXELFORMAT ddpfPixelFormat;
  external DDSCAPS ddsCaps;
}

class DDSURFACEDESC2 extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwFlags;
  @Uint32() external int dwHeight;
  @Uint32() external int dwWidth;
  @Uint32() external int Anonymous1;
  @Uint32() external int Anonymous2;
  @Uint32() external int Anonymous3;
  @Uint32() external int dwAlphaBitDepth;
  @Uint32() external int dwReserved;
  external Pointer lpSurface;
  @Uint32() external int Anonymous4;
  external DDCOLORKEY ddckCKDestBlt;
  external DDCOLORKEY ddckCKSrcOverlay;
  external DDCOLORKEY ddckCKSrcBlt;
  @Uint32() external int Anonymous5;
  external DDSCAPS2 ddsCaps;
  @Uint32() external int dwTextureStage;
}

class DDOPTSURFACEDESC extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwFlags;
  external DDSCAPS2 ddSCaps;
  external DDOSCAPS ddOSCaps;
  external GUID guid;
  @Uint32() external int dwCompressionRatio;
}

class DDCOLORCONTROL extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwFlags;
  @Int32() external int lBrightness;
  @Int32() external int lContrast;
  @Int32() external int lHue;
  @Int32() external int lSaturation;
  @Int32() external int lSharpness;
  @Int32() external int lGamma;
  @Int32() external int lColorEnable;
  @Uint32() external int dwReserved1;
}

