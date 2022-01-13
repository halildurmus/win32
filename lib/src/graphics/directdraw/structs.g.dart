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
import '../../graphics/directdraw/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/directdraw/IDirectDrawSurface.dart';
import '../../graphics/directdraw/callbacks.g.dart';
import '../../graphics/gdi/structs.g.dart';
import '../../specialTypes.dart';
import '../../system/com/IUnknown.dart';

/// {@category Struct}
class ACCESSRECTLIST extends Struct {
  external Pointer<ACCESSRECTLIST> lpLink;

  external RECT rDest;

  external Pointer<DDRAWI_DIRECTDRAW_LCL> lpOwner;

  external Pointer lpSurfaceData;

  @Uint32()
  external int dwFlags;

  external Pointer<HEAPALIASINFO> lpHeapAliasInfo;
}

/// {@category Struct}
class ATTACHLIST extends Struct {
  @Uint32()
  external int dwFlags;

  external Pointer<ATTACHLIST> lpLink;

  external Pointer<DDRAWI_DDRAWSURFACE_LCL> lpAttached;

  external Pointer<DDRAWI_DDRAWSURFACE_INT> lpIAttached;
}

/// {@category Struct}
class DBLNODE extends Struct {
  external Pointer<DBLNODE> next;

  external Pointer<DBLNODE> prev;

  external Pointer<DDRAWI_DDRAWSURFACE_LCL> object;

  external Pointer<DDRAWI_DDRAWSURFACE_INT> object_int;
}

/// {@category Struct}
class DD32BITDRIVERDATA extends Struct {
  @Array(260)
  external Array<Uint8> szName;

  @Array(64)
  external Array<Uint8> szEntryPoint;

  @Uint32()
  external int dwContext;
}

/// {@category Struct}
class DDARGB extends Struct {
  @Uint8()
  external int blue;

  @Uint8()
  external int green;

  @Uint8()
  external int red;

  @Uint8()
  external int alpha;
}

/// {@category Struct}
class DDBLTBATCH extends Struct {
  external Pointer<RECT> lprDest;

  external Pointer<COMObject> lpDDSSrc;

  external Pointer<RECT> lprSrc;

  @Uint32()
  external int dwFlags;

  external Pointer<DDBLTFX> lpDDBltFx;
}

/// {@category Struct}
class DDBLTFX extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwDDFX;

  @Uint32()
  external int dwROP;

  @Uint32()
  external int dwDDROP;

  @Uint32()
  external int dwRotationAngle;

  @Uint32()
  external int dwZBufferOpCode;

  @Uint32()
  external int dwZBufferLow;

  @Uint32()
  external int dwZBufferHigh;

  @Uint32()
  external int dwZBufferBaseDest;

  @Uint32()
  external int dwZDestConstBitDepth;

  external _DDBLTFX__Anonymous1_e__Union Anonymous1;

  @Uint32()
  external int dwZSrcConstBitDepth;

  external _DDBLTFX__Anonymous2_e__Union Anonymous2;

  @Uint32()
  external int dwAlphaEdgeBlendBitDepth;

  @Uint32()
  external int dwAlphaEdgeBlend;

  @Uint32()
  external int dwReserved;

  @Uint32()
  external int dwAlphaDestConstBitDepth;

  external _DDBLTFX__Anonymous3_e__Union Anonymous3;

  @Uint32()
  external int dwAlphaSrcConstBitDepth;

  external _DDBLTFX__Anonymous4_e__Union Anonymous4;

  external _DDBLTFX__Anonymous5_e__Union Anonymous5;

  external DDCOLORKEY ddckDestColorkey;

  external DDCOLORKEY ddckSrcColorkey;
}

/// {@category Struct}
class _DDBLTFX__Anonymous1_e__Union extends Union {
  @Uint32()
  external int dwZDestConst;

  external Pointer<COMObject> lpDDSZBufferDest;
}

extension DDBLTFX_Extension on DDBLTFX {
  int get dwZDestConst => this.Anonymous1.dwZDestConst;
  set dwZDestConst(int value) => this.Anonymous1.dwZDestConst = value;

  Pointer<COMObject> get lpDDSZBufferDest => this.Anonymous1.lpDDSZBufferDest;
  set lpDDSZBufferDest(Pointer<COMObject> value) =>
      this.Anonymous1.lpDDSZBufferDest = value;
}

/// {@category Struct}
class _DDBLTFX__Anonymous2_e__Union extends Union {
  @Uint32()
  external int dwZSrcConst;

  external Pointer<COMObject> lpDDSZBufferSrc;
}

extension DDBLTFX_Extension_1 on DDBLTFX {
  int get dwZSrcConst => this.Anonymous2.dwZSrcConst;
  set dwZSrcConst(int value) => this.Anonymous2.dwZSrcConst = value;

  Pointer<COMObject> get lpDDSZBufferSrc => this.Anonymous2.lpDDSZBufferSrc;
  set lpDDSZBufferSrc(Pointer<COMObject> value) =>
      this.Anonymous2.lpDDSZBufferSrc = value;
}

/// {@category Struct}
class _DDBLTFX__Anonymous3_e__Union extends Union {
  @Uint32()
  external int dwAlphaDestConst;

  external Pointer<COMObject> lpDDSAlphaDest;
}

extension DDBLTFX_Extension_2 on DDBLTFX {
  int get dwAlphaDestConst => this.Anonymous3.dwAlphaDestConst;
  set dwAlphaDestConst(int value) => this.Anonymous3.dwAlphaDestConst = value;

  Pointer<COMObject> get lpDDSAlphaDest => this.Anonymous3.lpDDSAlphaDest;
  set lpDDSAlphaDest(Pointer<COMObject> value) =>
      this.Anonymous3.lpDDSAlphaDest = value;
}

/// {@category Struct}
class _DDBLTFX__Anonymous4_e__Union extends Union {
  @Uint32()
  external int dwAlphaSrcConst;

  external Pointer<COMObject> lpDDSAlphaSrc;
}

extension DDBLTFX_Extension_3 on DDBLTFX {
  int get dwAlphaSrcConst => this.Anonymous4.dwAlphaSrcConst;
  set dwAlphaSrcConst(int value) => this.Anonymous4.dwAlphaSrcConst = value;

  Pointer<COMObject> get lpDDSAlphaSrc => this.Anonymous4.lpDDSAlphaSrc;
  set lpDDSAlphaSrc(Pointer<COMObject> value) =>
      this.Anonymous4.lpDDSAlphaSrc = value;
}

/// {@category Struct}
class _DDBLTFX__Anonymous5_e__Union extends Union {
  @Uint32()
  external int dwFillColor;

  @Uint32()
  external int dwFillDepth;

  @Uint32()
  external int dwFillPixel;

  external Pointer<COMObject> lpDDSPattern;
}

extension DDBLTFX_Extension_4 on DDBLTFX {
  int get dwFillColor => this.Anonymous5.dwFillColor;
  set dwFillColor(int value) => this.Anonymous5.dwFillColor = value;

  int get dwFillDepth => this.Anonymous5.dwFillDepth;
  set dwFillDepth(int value) => this.Anonymous5.dwFillDepth = value;

  int get dwFillPixel => this.Anonymous5.dwFillPixel;
  set dwFillPixel(int value) => this.Anonymous5.dwFillPixel = value;

  Pointer<COMObject> get lpDDSPattern => this.Anonymous5.lpDDSPattern;
  set lpDDSPattern(Pointer<COMObject> value) =>
      this.Anonymous5.lpDDSPattern = value;
}

/// {@category Struct}
class DDBOBNEXTFIELDINFO extends Struct {
  external Pointer<DDSURFACEDATA> lpSurface;
}

/// {@category Struct}
class DDCAPS_DX1 extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwCaps;

  @Uint32()
  external int dwCaps2;

  @Uint32()
  external int dwCKeyCaps;

  @Uint32()
  external int dwFXCaps;

  @Uint32()
  external int dwFXAlphaCaps;

  @Uint32()
  external int dwPalCaps;

  @Uint32()
  external int dwSVCaps;

  @Uint32()
  external int dwAlphaBltConstBitDepths;

  @Uint32()
  external int dwAlphaBltPixelBitDepths;

  @Uint32()
  external int dwAlphaBltSurfaceBitDepths;

  @Uint32()
  external int dwAlphaOverlayConstBitDepths;

  @Uint32()
  external int dwAlphaOverlayPixelBitDepths;

  @Uint32()
  external int dwAlphaOverlaySurfaceBitDepths;

  @Uint32()
  external int dwZBufferBitDepths;

  @Uint32()
  external int dwVidMemTotal;

  @Uint32()
  external int dwVidMemFree;

  @Uint32()
  external int dwMaxVisibleOverlays;

  @Uint32()
  external int dwCurrVisibleOverlays;

  @Uint32()
  external int dwNumFourCCCodes;

  @Uint32()
  external int dwAlignBoundarySrc;

  @Uint32()
  external int dwAlignSizeSrc;

  @Uint32()
  external int dwAlignBoundaryDest;

  @Uint32()
  external int dwAlignSizeDest;

  @Uint32()
  external int dwAlignStrideAlign;

  @Array(8)
  external Array<Uint32> dwRops;

  external DDSCAPS ddsCaps;

  @Uint32()
  external int dwMinOverlayStretch;

  @Uint32()
  external int dwMaxOverlayStretch;

  @Uint32()
  external int dwMinLiveVideoStretch;

  @Uint32()
  external int dwMaxLiveVideoStretch;

  @Uint32()
  external int dwMinHwCodecStretch;

  @Uint32()
  external int dwMaxHwCodecStretch;

  @Uint32()
  external int dwReserved1;

  @Uint32()
  external int dwReserved2;

  @Uint32()
  external int dwReserved3;
}

/// {@category Struct}
class DDCAPS_DX3 extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwCaps;

  @Uint32()
  external int dwCaps2;

  @Uint32()
  external int dwCKeyCaps;

  @Uint32()
  external int dwFXCaps;

  @Uint32()
  external int dwFXAlphaCaps;

  @Uint32()
  external int dwPalCaps;

  @Uint32()
  external int dwSVCaps;

  @Uint32()
  external int dwAlphaBltConstBitDepths;

  @Uint32()
  external int dwAlphaBltPixelBitDepths;

  @Uint32()
  external int dwAlphaBltSurfaceBitDepths;

  @Uint32()
  external int dwAlphaOverlayConstBitDepths;

  @Uint32()
  external int dwAlphaOverlayPixelBitDepths;

  @Uint32()
  external int dwAlphaOverlaySurfaceBitDepths;

  @Uint32()
  external int dwZBufferBitDepths;

  @Uint32()
  external int dwVidMemTotal;

  @Uint32()
  external int dwVidMemFree;

  @Uint32()
  external int dwMaxVisibleOverlays;

  @Uint32()
  external int dwCurrVisibleOverlays;

  @Uint32()
  external int dwNumFourCCCodes;

  @Uint32()
  external int dwAlignBoundarySrc;

  @Uint32()
  external int dwAlignSizeSrc;

  @Uint32()
  external int dwAlignBoundaryDest;

  @Uint32()
  external int dwAlignSizeDest;

  @Uint32()
  external int dwAlignStrideAlign;

  @Array(8)
  external Array<Uint32> dwRops;

  external DDSCAPS ddsCaps;

  @Uint32()
  external int dwMinOverlayStretch;

  @Uint32()
  external int dwMaxOverlayStretch;

  @Uint32()
  external int dwMinLiveVideoStretch;

  @Uint32()
  external int dwMaxLiveVideoStretch;

  @Uint32()
  external int dwMinHwCodecStretch;

  @Uint32()
  external int dwMaxHwCodecStretch;

  @Uint32()
  external int dwReserved1;

  @Uint32()
  external int dwReserved2;

  @Uint32()
  external int dwReserved3;

  @Uint32()
  external int dwSVBCaps;

  @Uint32()
  external int dwSVBCKeyCaps;

  @Uint32()
  external int dwSVBFXCaps;

  @Array(8)
  external Array<Uint32> dwSVBRops;

  @Uint32()
  external int dwVSBCaps;

  @Uint32()
  external int dwVSBCKeyCaps;

  @Uint32()
  external int dwVSBFXCaps;

  @Array(8)
  external Array<Uint32> dwVSBRops;

  @Uint32()
  external int dwSSBCaps;

  @Uint32()
  external int dwSSBCKeyCaps;

  @Uint32()
  external int dwSSBFXCaps;

  @Array(8)
  external Array<Uint32> dwSSBRops;

  @Uint32()
  external int dwReserved4;

  @Uint32()
  external int dwReserved5;

  @Uint32()
  external int dwReserved6;
}

/// {@category Struct}
class DDCAPS_DX5 extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwCaps;

  @Uint32()
  external int dwCaps2;

  @Uint32()
  external int dwCKeyCaps;

  @Uint32()
  external int dwFXCaps;

  @Uint32()
  external int dwFXAlphaCaps;

  @Uint32()
  external int dwPalCaps;

  @Uint32()
  external int dwSVCaps;

  @Uint32()
  external int dwAlphaBltConstBitDepths;

  @Uint32()
  external int dwAlphaBltPixelBitDepths;

  @Uint32()
  external int dwAlphaBltSurfaceBitDepths;

  @Uint32()
  external int dwAlphaOverlayConstBitDepths;

  @Uint32()
  external int dwAlphaOverlayPixelBitDepths;

  @Uint32()
  external int dwAlphaOverlaySurfaceBitDepths;

  @Uint32()
  external int dwZBufferBitDepths;

  @Uint32()
  external int dwVidMemTotal;

  @Uint32()
  external int dwVidMemFree;

  @Uint32()
  external int dwMaxVisibleOverlays;

  @Uint32()
  external int dwCurrVisibleOverlays;

  @Uint32()
  external int dwNumFourCCCodes;

  @Uint32()
  external int dwAlignBoundarySrc;

  @Uint32()
  external int dwAlignSizeSrc;

  @Uint32()
  external int dwAlignBoundaryDest;

  @Uint32()
  external int dwAlignSizeDest;

  @Uint32()
  external int dwAlignStrideAlign;

  @Array(8)
  external Array<Uint32> dwRops;

  external DDSCAPS ddsCaps;

  @Uint32()
  external int dwMinOverlayStretch;

  @Uint32()
  external int dwMaxOverlayStretch;

  @Uint32()
  external int dwMinLiveVideoStretch;

  @Uint32()
  external int dwMaxLiveVideoStretch;

  @Uint32()
  external int dwMinHwCodecStretch;

  @Uint32()
  external int dwMaxHwCodecStretch;

  @Uint32()
  external int dwReserved1;

  @Uint32()
  external int dwReserved2;

  @Uint32()
  external int dwReserved3;

  @Uint32()
  external int dwSVBCaps;

  @Uint32()
  external int dwSVBCKeyCaps;

  @Uint32()
  external int dwSVBFXCaps;

  @Array(8)
  external Array<Uint32> dwSVBRops;

  @Uint32()
  external int dwVSBCaps;

  @Uint32()
  external int dwVSBCKeyCaps;

  @Uint32()
  external int dwVSBFXCaps;

  @Array(8)
  external Array<Uint32> dwVSBRops;

  @Uint32()
  external int dwSSBCaps;

  @Uint32()
  external int dwSSBCKeyCaps;

  @Uint32()
  external int dwSSBFXCaps;

  @Array(8)
  external Array<Uint32> dwSSBRops;

  @Uint32()
  external int dwMaxVideoPorts;

  @Uint32()
  external int dwCurrVideoPorts;

  @Uint32()
  external int dwSVBCaps2;

  @Uint32()
  external int dwNLVBCaps;

  @Uint32()
  external int dwNLVBCaps2;

  @Uint32()
  external int dwNLVBCKeyCaps;

  @Uint32()
  external int dwNLVBFXCaps;

  @Array(8)
  external Array<Uint32> dwNLVBRops;
}

/// {@category Struct}
class DDCAPS_DX6 extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwCaps;

  @Uint32()
  external int dwCaps2;

  @Uint32()
  external int dwCKeyCaps;

  @Uint32()
  external int dwFXCaps;

  @Uint32()
  external int dwFXAlphaCaps;

  @Uint32()
  external int dwPalCaps;

  @Uint32()
  external int dwSVCaps;

  @Uint32()
  external int dwAlphaBltConstBitDepths;

  @Uint32()
  external int dwAlphaBltPixelBitDepths;

  @Uint32()
  external int dwAlphaBltSurfaceBitDepths;

  @Uint32()
  external int dwAlphaOverlayConstBitDepths;

  @Uint32()
  external int dwAlphaOverlayPixelBitDepths;

  @Uint32()
  external int dwAlphaOverlaySurfaceBitDepths;

  @Uint32()
  external int dwZBufferBitDepths;

  @Uint32()
  external int dwVidMemTotal;

  @Uint32()
  external int dwVidMemFree;

  @Uint32()
  external int dwMaxVisibleOverlays;

  @Uint32()
  external int dwCurrVisibleOverlays;

  @Uint32()
  external int dwNumFourCCCodes;

  @Uint32()
  external int dwAlignBoundarySrc;

  @Uint32()
  external int dwAlignSizeSrc;

  @Uint32()
  external int dwAlignBoundaryDest;

  @Uint32()
  external int dwAlignSizeDest;

  @Uint32()
  external int dwAlignStrideAlign;

  @Array(8)
  external Array<Uint32> dwRops;

  external DDSCAPS ddsOldCaps;

  @Uint32()
  external int dwMinOverlayStretch;

  @Uint32()
  external int dwMaxOverlayStretch;

  @Uint32()
  external int dwMinLiveVideoStretch;

  @Uint32()
  external int dwMaxLiveVideoStretch;

  @Uint32()
  external int dwMinHwCodecStretch;

  @Uint32()
  external int dwMaxHwCodecStretch;

  @Uint32()
  external int dwReserved1;

  @Uint32()
  external int dwReserved2;

  @Uint32()
  external int dwReserved3;

  @Uint32()
  external int dwSVBCaps;

  @Uint32()
  external int dwSVBCKeyCaps;

  @Uint32()
  external int dwSVBFXCaps;

  @Array(8)
  external Array<Uint32> dwSVBRops;

  @Uint32()
  external int dwVSBCaps;

  @Uint32()
  external int dwVSBCKeyCaps;

  @Uint32()
  external int dwVSBFXCaps;

  @Array(8)
  external Array<Uint32> dwVSBRops;

  @Uint32()
  external int dwSSBCaps;

  @Uint32()
  external int dwSSBCKeyCaps;

  @Uint32()
  external int dwSSBFXCaps;

  @Array(8)
  external Array<Uint32> dwSSBRops;

  @Uint32()
  external int dwMaxVideoPorts;

  @Uint32()
  external int dwCurrVideoPorts;

  @Uint32()
  external int dwSVBCaps2;

  @Uint32()
  external int dwNLVBCaps;

  @Uint32()
  external int dwNLVBCaps2;

  @Uint32()
  external int dwNLVBCKeyCaps;

  @Uint32()
  external int dwNLVBFXCaps;

  @Array(8)
  external Array<Uint32> dwNLVBRops;

  external DDSCAPS2 ddsCaps;
}

/// {@category Struct}
class DDCAPS_DX7 extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwCaps;

  @Uint32()
  external int dwCaps2;

  @Uint32()
  external int dwCKeyCaps;

  @Uint32()
  external int dwFXCaps;

  @Uint32()
  external int dwFXAlphaCaps;

  @Uint32()
  external int dwPalCaps;

  @Uint32()
  external int dwSVCaps;

  @Uint32()
  external int dwAlphaBltConstBitDepths;

  @Uint32()
  external int dwAlphaBltPixelBitDepths;

  @Uint32()
  external int dwAlphaBltSurfaceBitDepths;

  @Uint32()
  external int dwAlphaOverlayConstBitDepths;

  @Uint32()
  external int dwAlphaOverlayPixelBitDepths;

  @Uint32()
  external int dwAlphaOverlaySurfaceBitDepths;

  @Uint32()
  external int dwZBufferBitDepths;

  @Uint32()
  external int dwVidMemTotal;

  @Uint32()
  external int dwVidMemFree;

  @Uint32()
  external int dwMaxVisibleOverlays;

  @Uint32()
  external int dwCurrVisibleOverlays;

  @Uint32()
  external int dwNumFourCCCodes;

  @Uint32()
  external int dwAlignBoundarySrc;

  @Uint32()
  external int dwAlignSizeSrc;

  @Uint32()
  external int dwAlignBoundaryDest;

  @Uint32()
  external int dwAlignSizeDest;

  @Uint32()
  external int dwAlignStrideAlign;

  @Array(8)
  external Array<Uint32> dwRops;

  external DDSCAPS ddsOldCaps;

  @Uint32()
  external int dwMinOverlayStretch;

  @Uint32()
  external int dwMaxOverlayStretch;

  @Uint32()
  external int dwMinLiveVideoStretch;

  @Uint32()
  external int dwMaxLiveVideoStretch;

  @Uint32()
  external int dwMinHwCodecStretch;

  @Uint32()
  external int dwMaxHwCodecStretch;

  @Uint32()
  external int dwReserved1;

  @Uint32()
  external int dwReserved2;

  @Uint32()
  external int dwReserved3;

  @Uint32()
  external int dwSVBCaps;

  @Uint32()
  external int dwSVBCKeyCaps;

  @Uint32()
  external int dwSVBFXCaps;

  @Array(8)
  external Array<Uint32> dwSVBRops;

  @Uint32()
  external int dwVSBCaps;

  @Uint32()
  external int dwVSBCKeyCaps;

  @Uint32()
  external int dwVSBFXCaps;

  @Array(8)
  external Array<Uint32> dwVSBRops;

  @Uint32()
  external int dwSSBCaps;

  @Uint32()
  external int dwSSBCKeyCaps;

  @Uint32()
  external int dwSSBFXCaps;

  @Array(8)
  external Array<Uint32> dwSSBRops;

  @Uint32()
  external int dwMaxVideoPorts;

  @Uint32()
  external int dwCurrVideoPorts;

  @Uint32()
  external int dwSVBCaps2;

  @Uint32()
  external int dwNLVBCaps;

  @Uint32()
  external int dwNLVBCaps2;

  @Uint32()
  external int dwNLVBCKeyCaps;

  @Uint32()
  external int dwNLVBFXCaps;

  @Array(8)
  external Array<Uint32> dwNLVBRops;

  external DDSCAPS2 ddsCaps;
}

/// {@category Struct}
class DDCOLORCONTROL extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwFlags;

  @Int32()
  external int lBrightness;

  @Int32()
  external int lContrast;

  @Int32()
  external int lHue;

  @Int32()
  external int lSaturation;

  @Int32()
  external int lSharpness;

  @Int32()
  external int lGamma;

  @Int32()
  external int lColorEnable;

  @Uint32()
  external int dwReserved1;
}

/// {@category Struct}
class DDCOLORKEY extends Struct {
  @Uint32()
  external int dwColorSpaceLowValue;

  @Uint32()
  external int dwColorSpaceHighValue;
}

/// {@category Struct}
class DDCOMPBUFFERINFO extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwNumCompBuffers;

  @Uint32()
  external int dwWidthToCreate;

  @Uint32()
  external int dwHeightToCreate;

  @Uint32()
  external int dwBytesToAllocate;

  external DDSCAPS2 ddCompCaps;

  external DDPIXELFORMAT ddPixelFormat;
}

/// {@category Struct}
class DDCORECAPS extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwCaps;

  @Uint32()
  external int dwCaps2;

  @Uint32()
  external int dwCKeyCaps;

  @Uint32()
  external int dwFXCaps;

  @Uint32()
  external int dwFXAlphaCaps;

  @Uint32()
  external int dwPalCaps;

  @Uint32()
  external int dwSVCaps;

  @Uint32()
  external int dwAlphaBltConstBitDepths;

  @Uint32()
  external int dwAlphaBltPixelBitDepths;

  @Uint32()
  external int dwAlphaBltSurfaceBitDepths;

  @Uint32()
  external int dwAlphaOverlayConstBitDepths;

  @Uint32()
  external int dwAlphaOverlayPixelBitDepths;

  @Uint32()
  external int dwAlphaOverlaySurfaceBitDepths;

  @Uint32()
  external int dwZBufferBitDepths;

  @Uint32()
  external int dwVidMemTotal;

  @Uint32()
  external int dwVidMemFree;

  @Uint32()
  external int dwMaxVisibleOverlays;

  @Uint32()
  external int dwCurrVisibleOverlays;

  @Uint32()
  external int dwNumFourCCCodes;

  @Uint32()
  external int dwAlignBoundarySrc;

  @Uint32()
  external int dwAlignSizeSrc;

  @Uint32()
  external int dwAlignBoundaryDest;

  @Uint32()
  external int dwAlignSizeDest;

  @Uint32()
  external int dwAlignStrideAlign;

  @Array(8)
  external Array<Uint32> dwRops;

  external DDSCAPS ddsCaps;

  @Uint32()
  external int dwMinOverlayStretch;

  @Uint32()
  external int dwMaxOverlayStretch;

  @Uint32()
  external int dwMinLiveVideoStretch;

  @Uint32()
  external int dwMaxLiveVideoStretch;

  @Uint32()
  external int dwMinHwCodecStretch;

  @Uint32()
  external int dwMaxHwCodecStretch;

  @Uint32()
  external int dwReserved1;

  @Uint32()
  external int dwReserved2;

  @Uint32()
  external int dwReserved3;

  @Uint32()
  external int dwSVBCaps;

  @Uint32()
  external int dwSVBCKeyCaps;

  @Uint32()
  external int dwSVBFXCaps;

  @Array(8)
  external Array<Uint32> dwSVBRops;

  @Uint32()
  external int dwVSBCaps;

  @Uint32()
  external int dwVSBCKeyCaps;

  @Uint32()
  external int dwVSBFXCaps;

  @Array(8)
  external Array<Uint32> dwVSBRops;

  @Uint32()
  external int dwSSBCaps;

  @Uint32()
  external int dwSSBCKeyCaps;

  @Uint32()
  external int dwSSBFXCaps;

  @Array(8)
  external Array<Uint32> dwSSBRops;

  @Uint32()
  external int dwMaxVideoPorts;

  @Uint32()
  external int dwCurrVideoPorts;

  @Uint32()
  external int dwSVBCaps2;
}

/// {@category Struct}
class DDDEVICEIDENTIFIER extends Struct {
  @Array(512)
  external Array<Uint8> szDriver;

  @Array(512)
  external Array<Uint8> szDescription;

  @Int64()
  external int liDriverVersion;

  @Uint32()
  external int dwVendorId;

  @Uint32()
  external int dwDeviceId;

  @Uint32()
  external int dwSubSysId;

  @Uint32()
  external int dwRevision;

  external GUID guidDeviceIdentifier;
}

/// {@category Struct}
class DDDEVICEIDENTIFIER2 extends Struct {
  @Array(512)
  external Array<Uint8> szDriver;

  @Array(512)
  external Array<Uint8> szDescription;

  @Int64()
  external int liDriverVersion;

  @Uint32()
  external int dwVendorId;

  @Uint32()
  external int dwDeviceId;

  @Uint32()
  external int dwSubSysId;

  @Uint32()
  external int dwRevision;

  external GUID guidDeviceIdentifier;

  @Uint32()
  external int dwWHQLLevel;
}

/// {@category Struct}
class DDENABLEIRQINFO extends Struct {
  @Uint32()
  external int dwIRQSources;

  @Uint32()
  external int dwLine;

  external Pointer<NativeFunction<PDX_IRQCALLBACK>> IRQCallback;

  external Pointer<DX_IRQDATA> lpIRQData;
}

/// {@category Struct}
class DDFLIPOVERLAYINFO extends Struct {
  external Pointer<DDSURFACEDATA> lpCurrentSurface;

  external Pointer<DDSURFACEDATA> lpTargetSurface;

  @Uint32()
  external int dwFlags;
}

/// {@category Struct}
class DDFLIPVIDEOPORTINFO extends Struct {
  external Pointer<DDVIDEOPORTDATA> lpVideoPortData;

  external Pointer<DDSURFACEDATA> lpCurrentSurface;

  external Pointer<DDSURFACEDATA> lpTargetSurface;

  @Uint32()
  external int dwFlipVPFlags;
}

/// {@category Struct}
class DDGAMMARAMP extends Struct {
  @Array(256)
  external Array<Uint16> red;

  @Array(256)
  external Array<Uint16> green;

  @Array(256)
  external Array<Uint16> blue;
}

/// {@category Struct}
class DDGETCURRENTAUTOFLIPININFO extends Struct {
  external Pointer<DDVIDEOPORTDATA> lpVideoPortData;
}

/// {@category Struct}
class DDGETCURRENTAUTOFLIPOUTINFO extends Struct {
  @Uint32()
  external int dwSurfaceIndex;

  @Uint32()
  external int dwVBISurfaceIndex;
}

/// {@category Struct}
class DDGETIRQINFO extends Struct {
  @Uint32()
  external int dwFlags;
}

/// {@category Struct}
class DDGETPOLARITYININFO extends Struct {
  external Pointer<DDVIDEOPORTDATA> lpVideoPortData;
}

/// {@category Struct}
class DDGETPOLARITYOUTINFO extends Struct {
  @Uint32()
  external int bPolarity;
}

/// {@category Struct}
class DDGETPREVIOUSAUTOFLIPININFO extends Struct {
  external Pointer<DDVIDEOPORTDATA> lpVideoPortData;
}

/// {@category Struct}
class DDGETPREVIOUSAUTOFLIPOUTINFO extends Struct {
  @Uint32()
  external int dwSurfaceIndex;

  @Uint32()
  external int dwVBISurfaceIndex;
}

/// {@category Struct}
class DDGETTRANSFERSTATUSOUTINFO extends Struct {
  @IntPtr()
  external int dwTransferID;
}

/// {@category Struct}
class DDHALDDRAWFNS extends Struct {
  @Uint32()
  external int dwSize;

  external Pointer<NativeFunction<LPDDHAL_SETINFO>> lpSetInfo;

  external Pointer<NativeFunction<LPDDHAL_VIDMEMALLOC>> lpVidMemAlloc;

  external Pointer<NativeFunction<LPDDHAL_VIDMEMFREE>> lpVidMemFree;
}

/// {@category Struct}
class DDHALINFO extends Struct {
  @Uint32()
  external int dwSize;

  external Pointer<DDHAL_DDCALLBACKS> lpDDCallbacks;

  external Pointer<DDHAL_DDSURFACECALLBACKS> lpDDSurfaceCallbacks;

  external Pointer<DDHAL_DDPALETTECALLBACKS> lpDDPaletteCallbacks;

  external VIDMEMINFO vmiData;

  external DDCORECAPS ddCaps;

  @Uint32()
  external int dwMonitorFrequency;

  external Pointer<NativeFunction<LPDDHAL_GETDRIVERINFO>> GetDriverInfo;

  @Uint32()
  external int dwModeIndex;

  external Pointer<Uint32> lpdwFourCC;

  @Uint32()
  external int dwNumModes;

  external Pointer<DDHALMODEINFO> lpModeInfo;

  @Uint32()
  external int dwFlags;

  external Pointer lpPDevice;

  @Uint32()
  external int hInstance;

  @IntPtr()
  external int lpD3DGlobalDriverData;

  @IntPtr()
  external int lpD3DHALCallbacks;

  external Pointer<DDHAL_DDEXEBUFCALLBACKS> lpDDExeBufCallbacks;
}

/// {@category Struct}
class DDHALMODEINFO extends Struct {
  @Uint32()
  external int dwWidth;

  @Uint32()
  external int dwHeight;

  @Int32()
  external int lPitch;

  @Uint32()
  external int dwBPP;

  @Uint16()
  external int wFlags;

  @Uint16()
  external int wRefreshRate;

  @Uint32()
  external int dwRBitMask;

  @Uint32()
  external int dwGBitMask;

  @Uint32()
  external int dwBBitMask;

  @Uint32()
  external int dwAlphaBitMask;
}

/// {@category Struct}
class DDHAL_ADDATTACHEDSURFACEDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_GBL> lpDD;

  external Pointer<DDRAWI_DDRAWSURFACE_LCL> lpDDSurface;

  external Pointer<DDRAWI_DDRAWSURFACE_LCL> lpSurfAttached;

  @Int32()
  external int ddRVal;

  external Pointer<NativeFunction<LPDDHALSURFCB_ADDATTACHEDSURFACE>>
      AddAttachedSurface;
}

/// {@category Struct}
class DDHAL_BEGINMOCOMPFRAMEDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_LCL> lpDD;

  external Pointer<DDRAWI_DDMOTIONCOMP_LCL> lpMoComp;

  external Pointer<DDRAWI_DDRAWSURFACE_LCL> lpDestSurface;

  @Uint32()
  external int dwInputDataSize;

  external Pointer lpInputData;

  @Uint32()
  external int dwOutputDataSize;

  external Pointer lpOutputData;

  @Int32()
  external int ddRVal;

  external Pointer<NativeFunction<LPDDHALMOCOMPCB_BEGINFRAME>> BeginMoCompFrame;
}

/// {@category Struct}
class DDHAL_BLTDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_GBL> lpDD;

  external Pointer<DDRAWI_DDRAWSURFACE_LCL> lpDDDestSurface;

  external RECTL rDest;

  external Pointer<DDRAWI_DDRAWSURFACE_LCL> lpDDSrcSurface;

  external RECTL rSrc;

  @Uint32()
  external int dwFlags;

  @Uint32()
  external int dwROPFlags;

  external DDBLTFX bltFX;

  @Int32()
  external int ddRVal;

  external Pointer<NativeFunction<LPDDHALSURFCB_BLT>> Blt;

  @Int32()
  external int IsClipped;

  external RECTL rOrigDest;

  external RECTL rOrigSrc;

  @Uint32()
  external int dwRectCnt;

  external Pointer<RECT> prDestRects;
}

/// {@category Struct}
class DDHAL_CALLBACKS extends Struct {
  external DDHAL_DDCALLBACKS cbDDCallbacks;

  external DDHAL_DDSURFACECALLBACKS cbDDSurfaceCallbacks;

  external DDHAL_DDPALETTECALLBACKS cbDDPaletteCallbacks;

  external DDHAL_DDCALLBACKS HALDD;

  external DDHAL_DDSURFACECALLBACKS HALDDSurface;

  external DDHAL_DDPALETTECALLBACKS HALDDPalette;

  external DDHAL_DDCALLBACKS HELDD;

  external DDHAL_DDSURFACECALLBACKS HELDDSurface;

  external DDHAL_DDPALETTECALLBACKS HELDDPalette;

  external DDHAL_DDEXEBUFCALLBACKS cbDDExeBufCallbacks;

  external DDHAL_DDEXEBUFCALLBACKS HALDDExeBuf;

  external DDHAL_DDEXEBUFCALLBACKS HELDDExeBuf;

  external DDHAL_DDVIDEOPORTCALLBACKS cbDDVideoPortCallbacks;

  external DDHAL_DDVIDEOPORTCALLBACKS HALDDVideoPort;

  external DDHAL_DDCOLORCONTROLCALLBACKS cbDDColorControlCallbacks;

  external DDHAL_DDCOLORCONTROLCALLBACKS HALDDColorControl;

  external DDHAL_DDMISCELLANEOUSCALLBACKS cbDDMiscellaneousCallbacks;

  external DDHAL_DDMISCELLANEOUSCALLBACKS HALDDMiscellaneous;

  external DDHAL_DDKERNELCALLBACKS cbDDKernelCallbacks;

  external DDHAL_DDKERNELCALLBACKS HALDDKernel;

  external DDHAL_DDMOTIONCOMPCALLBACKS cbDDMotionCompCallbacks;

  external DDHAL_DDMOTIONCOMPCALLBACKS HALDDMotionComp;
}

/// {@category Struct}
class DDHAL_CANCREATESURFACEDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_GBL> lpDD;

  external Pointer<DDSURFACEDESC> lpDDSurfaceDesc;

  @Uint32()
  external int bIsDifferentPixelFormat;

  @Int32()
  external int ddRVal;

  external Pointer<NativeFunction<LPDDHAL_CANCREATESURFACE>> CanCreateSurface;
}

/// {@category Struct}
class DDHAL_CANCREATEVPORTDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_LCL> lpDD;

  external Pointer<DDVIDEOPORTDESC> lpDDVideoPortDesc;

  @Int32()
  external int ddRVal;

  external Pointer<NativeFunction<LPDDHALVPORTCB_CANCREATEVIDEOPORT>>
      CanCreateVideoPort;
}

/// {@category Struct}
class DDHAL_COLORCONTROLDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_GBL> lpDD;

  external Pointer<DDRAWI_DDRAWSURFACE_LCL> lpDDSurface;

  external Pointer<DDCOLORCONTROL> lpColorData;

  @Uint32()
  external int dwFlags;

  @Int32()
  external int ddRVal;

  external Pointer<NativeFunction<LPDDHALCOLORCB_COLORCONTROL>> ColorControl;
}

/// {@category Struct}
class DDHAL_CREATEMOCOMPDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_LCL> lpDD;

  external Pointer<DDRAWI_DDMOTIONCOMP_LCL> lpMoComp;

  external Pointer<GUID> lpGuid;

  @Uint32()
  external int dwUncompWidth;

  @Uint32()
  external int dwUncompHeight;

  external DDPIXELFORMAT ddUncompPixelFormat;

  external Pointer lpData;

  @Uint32()
  external int dwDataSize;

  @Int32()
  external int ddRVal;

  external Pointer<NativeFunction<LPDDHALMOCOMPCB_CREATE>> CreateMoComp;
}

/// {@category Struct}
class DDHAL_CREATEPALETTEDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_GBL> lpDD;

  external Pointer<DDRAWI_DDRAWPALETTE_GBL> lpDDPalette;

  external Pointer<PALETTEENTRY> lpColorTable;

  @Int32()
  external int ddRVal;

  external Pointer<NativeFunction<LPDDHAL_CREATEPALETTE>> CreatePalette;

  @Int32()
  external int is_excl;
}

/// {@category Struct}
class DDHAL_CREATESURFACEDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_GBL> lpDD;

  external Pointer<DDSURFACEDESC> lpDDSurfaceDesc;

  external Pointer<Pointer<DDRAWI_DDRAWSURFACE_LCL>> lplpSList;

  @Uint32()
  external int dwSCnt;

  @Int32()
  external int ddRVal;

  external Pointer<NativeFunction<LPDDHAL_CREATESURFACE>> CreateSurface;
}

/// {@category Struct}
class DDHAL_CREATESURFACEEXDATA extends Struct {
  @Uint32()
  external int dwFlags;

  external Pointer<DDRAWI_DIRECTDRAW_LCL> lpDDLcl;

  external Pointer<DDRAWI_DDRAWSURFACE_LCL> lpDDSLcl;

  @Int32()
  external int ddRVal;
}

/// {@category Struct}
class DDHAL_CREATEVPORTDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_LCL> lpDD;

  external Pointer<DDVIDEOPORTDESC> lpDDVideoPortDesc;

  external Pointer<DDRAWI_DDVIDEOPORT_LCL> lpVideoPort;

  @Int32()
  external int ddRVal;

  external Pointer<NativeFunction<LPDDHALVPORTCB_CREATEVIDEOPORT>>
      CreateVideoPort;
}

/// {@category Struct}
class DDHAL_DDCALLBACKS extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwFlags;

  external Pointer<NativeFunction<LPDDHAL_DESTROYDRIVER>> DestroyDriver;

  external Pointer<NativeFunction<LPDDHAL_CREATESURFACE>> CreateSurface;

  external Pointer<NativeFunction<LPDDHAL_SETCOLORKEY>> SetColorKey;

  external Pointer<NativeFunction<LPDDHAL_SETMODE>> SetMode;

  external Pointer<NativeFunction<LPDDHAL_WAITFORVERTICALBLANK>>
      WaitForVerticalBlank;

  external Pointer<NativeFunction<LPDDHAL_CANCREATESURFACE>> CanCreateSurface;

  external Pointer<NativeFunction<LPDDHAL_CREATEPALETTE>> CreatePalette;

  external Pointer<NativeFunction<LPDDHAL_GETSCANLINE>> GetScanLine;

  external Pointer<NativeFunction<LPDDHAL_SETEXCLUSIVEMODE>> SetExclusiveMode;

  external Pointer<NativeFunction<LPDDHAL_FLIPTOGDISURFACE>> FlipToGDISurface;
}

/// {@category Struct}
class DDHAL_DDCOLORCONTROLCALLBACKS extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwFlags;

  external Pointer<NativeFunction<LPDDHALCOLORCB_COLORCONTROL>> ColorControl;
}

/// {@category Struct}
class DDHAL_DDEXEBUFCALLBACKS extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwFlags;

  external Pointer<NativeFunction<LPDDHALEXEBUFCB_CANCREATEEXEBUF>>
      CanCreateExecuteBuffer;

  external Pointer<NativeFunction<LPDDHALEXEBUFCB_CREATEEXEBUF>>
      CreateExecuteBuffer;

  external Pointer<NativeFunction<LPDDHALEXEBUFCB_DESTROYEXEBUF>>
      DestroyExecuteBuffer;

  external Pointer<NativeFunction<LPDDHALEXEBUFCB_LOCKEXEBUF>>
      LockExecuteBuffer;

  external Pointer<NativeFunction<LPDDHALEXEBUFCB_UNLOCKEXEBUF>>
      UnlockExecuteBuffer;
}

/// {@category Struct}
class DDHAL_DDKERNELCALLBACKS extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwFlags;

  external Pointer<NativeFunction<LPDDHALKERNELCB_SYNCSURFACE>> SyncSurfaceData;

  external Pointer<NativeFunction<LPDDHALKERNELCB_SYNCVIDEOPORT>>
      SyncVideoPortData;
}

/// {@category Struct}
class DDHAL_DDMISCELLANEOUS2CALLBACKS extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwFlags;

  external Pointer Reserved;

  external Pointer<NativeFunction<LPDDHAL_CREATESURFACEEX>> CreateSurfaceEx;

  external Pointer<NativeFunction<LPDDHAL_GETDRIVERSTATE>> GetDriverState;

  external Pointer<NativeFunction<LPDDHAL_DESTROYDDLOCAL>> DestroyDDLocal;
}

/// {@category Struct}
class DDHAL_DDMISCELLANEOUSCALLBACKS extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwFlags;

  external Pointer<NativeFunction<LPDDHAL_GETAVAILDRIVERMEMORY>>
      GetAvailDriverMemory;

  external Pointer<NativeFunction<LPDDHAL_UPDATENONLOCALHEAP>>
      UpdateNonLocalHeap;

  external Pointer<NativeFunction<LPDDHAL_GETHEAPALIGNMENT>> GetHeapAlignment;

  external Pointer<NativeFunction<LPDDHALSURFCB_GETBLTSTATUS>>
      GetSysmemBltStatus;
}

/// {@category Struct}
class DDHAL_DDMOTIONCOMPCALLBACKS extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwFlags;

  external Pointer<NativeFunction<LPDDHALMOCOMPCB_GETGUIDS>> GetMoCompGuids;

  external Pointer<NativeFunction<LPDDHALMOCOMPCB_GETFORMATS>> GetMoCompFormats;

  external Pointer<NativeFunction<LPDDHALMOCOMPCB_CREATE>> CreateMoComp;

  external Pointer<NativeFunction<LPDDHALMOCOMPCB_GETCOMPBUFFINFO>>
      GetMoCompBuffInfo;

  external Pointer<NativeFunction<LPDDHALMOCOMPCB_GETINTERNALINFO>>
      GetInternalMoCompInfo;

  external Pointer<NativeFunction<LPDDHALMOCOMPCB_BEGINFRAME>> BeginMoCompFrame;

  external Pointer<NativeFunction<LPDDHALMOCOMPCB_ENDFRAME>> EndMoCompFrame;

  external Pointer<NativeFunction<LPDDHALMOCOMPCB_RENDER>> RenderMoComp;

  external Pointer<NativeFunction<LPDDHALMOCOMPCB_QUERYSTATUS>>
      QueryMoCompStatus;

  external Pointer<NativeFunction<LPDDHALMOCOMPCB_DESTROY>> DestroyMoComp;
}

/// {@category Struct}
class DDHAL_DDPALETTECALLBACKS extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwFlags;

  external Pointer<NativeFunction<LPDDHALPALCB_DESTROYPALETTE>> DestroyPalette;

  external Pointer<NativeFunction<LPDDHALPALCB_SETENTRIES>> SetEntries;
}

/// {@category Struct}
class DDHAL_DDSURFACECALLBACKS extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwFlags;

  external Pointer<NativeFunction<LPDDHALSURFCB_DESTROYSURFACE>> DestroySurface;

  external Pointer<NativeFunction<LPDDHALSURFCB_FLIP>> Flip;

  external Pointer<NativeFunction<LPDDHALSURFCB_SETCLIPLIST>> SetClipList;

  external Pointer<NativeFunction<LPDDHALSURFCB_LOCK>> Lock;

  external Pointer<NativeFunction<LPDDHALSURFCB_UNLOCK>> Unlock;

  external Pointer<NativeFunction<LPDDHALSURFCB_BLT>> Blt;

  external Pointer<NativeFunction<LPDDHALSURFCB_SETCOLORKEY>> SetColorKey;

  external Pointer<NativeFunction<LPDDHALSURFCB_ADDATTACHEDSURFACE>>
      AddAttachedSurface;

  external Pointer<NativeFunction<LPDDHALSURFCB_GETBLTSTATUS>> GetBltStatus;

  external Pointer<NativeFunction<LPDDHALSURFCB_GETFLIPSTATUS>> GetFlipStatus;

  external Pointer<NativeFunction<LPDDHALSURFCB_UPDATEOVERLAY>> UpdateOverlay;

  external Pointer<NativeFunction<LPDDHALSURFCB_SETOVERLAYPOSITION>>
      SetOverlayPosition;

  external Pointer reserved4;

  external Pointer<NativeFunction<LPDDHALSURFCB_SETPALETTE>> SetPalette;
}

/// {@category Struct}
class DDHAL_DDVIDEOPORTCALLBACKS extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwFlags;

  external Pointer<NativeFunction<LPDDHALVPORTCB_CANCREATEVIDEOPORT>>
      CanCreateVideoPort;

  external Pointer<NativeFunction<LPDDHALVPORTCB_CREATEVIDEOPORT>>
      CreateVideoPort;

  external Pointer<NativeFunction<LPDDHALVPORTCB_FLIP>> FlipVideoPort;

  external Pointer<NativeFunction<LPDDHALVPORTCB_GETBANDWIDTH>>
      GetVideoPortBandwidth;

  external Pointer<NativeFunction<LPDDHALVPORTCB_GETINPUTFORMATS>>
      GetVideoPortInputFormats;

  external Pointer<NativeFunction<LPDDHALVPORTCB_GETOUTPUTFORMATS>>
      GetVideoPortOutputFormats;

  external Pointer lpReserved1;

  external Pointer<NativeFunction<LPDDHALVPORTCB_GETFIELD>> GetVideoPortField;

  external Pointer<NativeFunction<LPDDHALVPORTCB_GETLINE>> GetVideoPortLine;

  external Pointer<NativeFunction<LPDDHALVPORTCB_GETVPORTCONNECT>>
      GetVideoPortConnectInfo;

  external Pointer<NativeFunction<LPDDHALVPORTCB_DESTROYVPORT>>
      DestroyVideoPort;

  external Pointer<NativeFunction<LPDDHALVPORTCB_GETFLIPSTATUS>>
      GetVideoPortFlipStatus;

  external Pointer<NativeFunction<LPDDHALVPORTCB_UPDATE>> UpdateVideoPort;

  external Pointer<NativeFunction<LPDDHALVPORTCB_WAITFORSYNC>>
      WaitForVideoPortSync;

  external Pointer<NativeFunction<LPDDHALVPORTCB_GETSIGNALSTATUS>>
      GetVideoSignalStatus;

  external Pointer<NativeFunction<LPDDHALVPORTCB_COLORCONTROL>> ColorControl;
}

/// {@category Struct}
class DDHAL_DESTROYDDLOCALDATA extends Struct {
  @Uint32()
  external int dwFlags;

  external Pointer<DDRAWI_DIRECTDRAW_LCL> pDDLcl;

  @Int32()
  external int ddRVal;
}

/// {@category Struct}
class DDHAL_DESTROYDRIVERDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_GBL> lpDD;

  @Int32()
  external int ddRVal;

  external Pointer<NativeFunction<LPDDHAL_DESTROYDRIVER>> DestroyDriver;
}

/// {@category Struct}
class DDHAL_DESTROYMOCOMPDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_LCL> lpDD;

  external Pointer<DDRAWI_DDMOTIONCOMP_LCL> lpMoComp;

  @Int32()
  external int ddRVal;

  external Pointer<NativeFunction<LPDDHALMOCOMPCB_DESTROY>> DestroyMoComp;
}

/// {@category Struct}
class DDHAL_DESTROYPALETTEDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_GBL> lpDD;

  external Pointer<DDRAWI_DDRAWPALETTE_GBL> lpDDPalette;

  @Int32()
  external int ddRVal;

  external Pointer<NativeFunction<LPDDHALPALCB_DESTROYPALETTE>> DestroyPalette;
}

/// {@category Struct}
class DDHAL_DESTROYSURFACEDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_GBL> lpDD;

  external Pointer<DDRAWI_DDRAWSURFACE_LCL> lpDDSurface;

  @Int32()
  external int ddRVal;

  external Pointer<NativeFunction<LPDDHALSURFCB_DESTROYSURFACE>> DestroySurface;
}

/// {@category Struct}
class DDHAL_DESTROYVPORTDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_LCL> lpDD;

  external Pointer<DDRAWI_DDVIDEOPORT_LCL> lpVideoPort;

  @Int32()
  external int ddRVal;

  external Pointer<NativeFunction<LPDDHALVPORTCB_DESTROYVPORT>>
      DestroyVideoPort;
}

/// {@category Struct}
class DDHAL_DRVSETCOLORKEYDATA extends Struct {
  external Pointer<DDRAWI_DDRAWSURFACE_LCL> lpDDSurface;

  @Uint32()
  external int dwFlags;

  external DDCOLORKEY ckNew;

  @Int32()
  external int ddRVal;

  external Pointer<NativeFunction<LPDDHAL_SETCOLORKEY>> SetColorKey;
}

/// {@category Struct}
class DDHAL_ENDMOCOMPFRAMEDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_LCL> lpDD;

  external Pointer<DDRAWI_DDMOTIONCOMP_LCL> lpMoComp;

  external Pointer lpInputData;

  @Uint32()
  external int dwInputDataSize;

  @Int32()
  external int ddRVal;

  external Pointer<NativeFunction<LPDDHALMOCOMPCB_ENDFRAME>> EndMoCompFrame;
}

/// {@category Struct}
class DDHAL_FLIPDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_GBL> lpDD;

  external Pointer<DDRAWI_DDRAWSURFACE_LCL> lpSurfCurr;

  external Pointer<DDRAWI_DDRAWSURFACE_LCL> lpSurfTarg;

  @Uint32()
  external int dwFlags;

  @Int32()
  external int ddRVal;

  external Pointer<NativeFunction<LPDDHALSURFCB_FLIP>> Flip;

  external Pointer<DDRAWI_DDRAWSURFACE_LCL> lpSurfCurrLeft;

  external Pointer<DDRAWI_DDRAWSURFACE_LCL> lpSurfTargLeft;
}

/// {@category Struct}
class DDHAL_FLIPTOGDISURFACEDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_GBL> lpDD;

  @Uint32()
  external int dwToGDI;

  @Uint32()
  external int dwReserved;

  @Int32()
  external int ddRVal;

  external Pointer<NativeFunction<LPDDHAL_FLIPTOGDISURFACE>> FlipToGDISurface;
}

/// {@category Struct}
class DDHAL_FLIPVPORTDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_LCL> lpDD;

  external Pointer<DDRAWI_DDVIDEOPORT_LCL> lpVideoPort;

  external Pointer<DDRAWI_DDRAWSURFACE_LCL> lpSurfCurr;

  external Pointer<DDRAWI_DDRAWSURFACE_LCL> lpSurfTarg;

  @Int32()
  external int ddRVal;

  external Pointer<NativeFunction<LPDDHALVPORTCB_FLIP>> FlipVideoPort;
}

/// {@category Struct}
class DDHAL_GETAVAILDRIVERMEMORYDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_GBL> lpDD;

  external DDSCAPS DDSCaps;

  @Uint32()
  external int dwTotal;

  @Uint32()
  external int dwFree;

  @Int32()
  external int ddRVal;

  external Pointer<NativeFunction<LPDDHAL_GETAVAILDRIVERMEMORY>>
      GetAvailDriverMemory;

  external DDSCAPSEX ddsCapsEx;
}

/// {@category Struct}
class DDHAL_GETBLTSTATUSDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_GBL> lpDD;

  external Pointer<DDRAWI_DDRAWSURFACE_LCL> lpDDSurface;

  @Uint32()
  external int dwFlags;

  @Int32()
  external int ddRVal;

  external Pointer<NativeFunction<LPDDHALSURFCB_GETBLTSTATUS>> GetBltStatus;
}

/// {@category Struct}
class DDHAL_GETDRIVERINFODATA extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwFlags;

  external GUID guidInfo;

  @Uint32()
  external int dwExpectedSize;

  external Pointer lpvData;

  @Uint32()
  external int dwActualSize;

  @Int32()
  external int ddRVal;

  @IntPtr()
  external int dwContext;
}

/// {@category Struct}
class DDHAL_GETDRIVERSTATEDATA extends Struct {
  @Uint32()
  external int dwFlags;

  external _DDHAL_GETDRIVERSTATEDATA__Anonymous_e__Union Anonymous;

  external Pointer<Uint32> lpdwStates;

  @Uint32()
  external int dwLength;

  @Int32()
  external int ddRVal;
}

/// {@category Struct}
class _DDHAL_GETDRIVERSTATEDATA__Anonymous_e__Union extends Union {
  @IntPtr()
  external int dwhContext;
}

extension DDHAL_GETDRIVERSTATEDATA_Extension on DDHAL_GETDRIVERSTATEDATA {
  int get dwhContext => this.Anonymous.dwhContext;
  set dwhContext(int value) => this.Anonymous.dwhContext = value;
}

/// {@category Struct}
class DDHAL_GETFLIPSTATUSDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_GBL> lpDD;

  external Pointer<DDRAWI_DDRAWSURFACE_LCL> lpDDSurface;

  @Uint32()
  external int dwFlags;

  @Int32()
  external int ddRVal;

  external Pointer<NativeFunction<LPDDHALSURFCB_GETFLIPSTATUS>> GetFlipStatus;
}

/// {@category Struct}
class DDHAL_GETHEAPALIGNMENTDATA extends Struct {
  @IntPtr()
  external int dwInstance;

  @Uint32()
  external int dwHeap;

  @Int32()
  external int ddRVal;

  external Pointer<NativeFunction<LPDDHAL_GETHEAPALIGNMENT>> GetHeapAlignment;

  external HEAPALIGNMENT Alignment;
}

/// {@category Struct}
class DDHAL_GETINTERNALMOCOMPDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_LCL> lpDD;

  external Pointer<GUID> lpGuid;

  @Uint32()
  external int dwWidth;

  @Uint32()
  external int dwHeight;

  external DDPIXELFORMAT ddPixelFormat;

  @Uint32()
  external int dwScratchMemAlloc;

  @Int32()
  external int ddRVal;

  external Pointer<NativeFunction<LPDDHALMOCOMPCB_GETINTERNALINFO>>
      GetInternalMoCompInfo;
}

/// {@category Struct}
class DDHAL_GETMOCOMPCOMPBUFFDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_LCL> lpDD;

  external Pointer<GUID> lpGuid;

  @Uint32()
  external int dwWidth;

  @Uint32()
  external int dwHeight;

  external DDPIXELFORMAT ddPixelFormat;

  @Uint32()
  external int dwNumTypesCompBuffs;

  external Pointer<DDMCCOMPBUFFERINFO> lpCompBuffInfo;

  @Int32()
  external int ddRVal;

  external Pointer<NativeFunction<LPDDHALMOCOMPCB_GETCOMPBUFFINFO>>
      GetMoCompBuffInfo;
}

/// {@category Struct}
class DDHAL_GETMOCOMPFORMATSDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_LCL> lpDD;

  external Pointer<GUID> lpGuid;

  @Uint32()
  external int dwNumFormats;

  external Pointer<DDPIXELFORMAT> lpFormats;

  @Int32()
  external int ddRVal;

  external Pointer<NativeFunction<LPDDHALMOCOMPCB_GETFORMATS>> GetMoCompFormats;
}

/// {@category Struct}
class DDHAL_GETMOCOMPGUIDSDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_LCL> lpDD;

  @Uint32()
  external int dwNumGuids;

  external Pointer<GUID> lpGuids;

  @Int32()
  external int ddRVal;

  external Pointer<NativeFunction<LPDDHALMOCOMPCB_GETGUIDS>> GetMoCompGuids;
}

/// {@category Struct}
class DDHAL_GETSCANLINEDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_GBL> lpDD;

  @Uint32()
  external int dwScanLine;

  @Int32()
  external int ddRVal;

  external Pointer<NativeFunction<LPDDHAL_GETSCANLINE>> GetScanLine;
}

/// {@category Struct}
class DDHAL_GETVPORTBANDWIDTHDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_LCL> lpDD;

  external Pointer<DDRAWI_DDVIDEOPORT_LCL> lpVideoPort;

  external Pointer<DDPIXELFORMAT> lpddpfFormat;

  @Uint32()
  external int dwWidth;

  @Uint32()
  external int dwHeight;

  @Uint32()
  external int dwFlags;

  external Pointer<DDVIDEOPORTBANDWIDTH> lpBandwidth;

  @Int32()
  external int ddRVal;

  external Pointer<NativeFunction<LPDDHALVPORTCB_GETBANDWIDTH>>
      GetVideoPortBandwidth;
}

/// {@category Struct}
class DDHAL_GETVPORTCONNECTDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_LCL> lpDD;

  @Uint32()
  external int dwPortId;

  external Pointer<DDVIDEOPORTCONNECT> lpConnect;

  @Uint32()
  external int dwNumEntries;

  @Int32()
  external int ddRVal;

  external Pointer<NativeFunction<LPDDHALVPORTCB_GETVPORTCONNECT>>
      GetVideoPortConnectInfo;
}

/// {@category Struct}
class DDHAL_GETVPORTFIELDDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_LCL> lpDD;

  external Pointer<DDRAWI_DDVIDEOPORT_LCL> lpVideoPort;

  @Int32()
  external int bField;

  @Int32()
  external int ddRVal;

  external Pointer<NativeFunction<LPDDHALVPORTCB_GETFIELD>> GetVideoPortField;
}

/// {@category Struct}
class DDHAL_GETVPORTFLIPSTATUSDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_LCL> lpDD;

  @IntPtr()
  external int fpSurface;

  @Int32()
  external int ddRVal;

  external Pointer<NativeFunction<LPDDHALVPORTCB_GETFLIPSTATUS>>
      GetVideoPortFlipStatus;
}

/// {@category Struct}
class DDHAL_GETVPORTINPUTFORMATDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_LCL> lpDD;

  external Pointer<DDRAWI_DDVIDEOPORT_LCL> lpVideoPort;

  @Uint32()
  external int dwFlags;

  external Pointer<DDPIXELFORMAT> lpddpfFormat;

  @Uint32()
  external int dwNumFormats;

  @Int32()
  external int ddRVal;

  external Pointer<NativeFunction<LPDDHALVPORTCB_GETINPUTFORMATS>>
      GetVideoPortInputFormats;
}

/// {@category Struct}
class DDHAL_GETVPORTLINEDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_LCL> lpDD;

  external Pointer<DDRAWI_DDVIDEOPORT_LCL> lpVideoPort;

  @Uint32()
  external int dwLine;

  @Int32()
  external int ddRVal;

  external Pointer<NativeFunction<LPDDHALVPORTCB_GETLINE>> GetVideoPortLine;
}

/// {@category Struct}
class DDHAL_GETVPORTOUTPUTFORMATDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_LCL> lpDD;

  external Pointer<DDRAWI_DDVIDEOPORT_LCL> lpVideoPort;

  @Uint32()
  external int dwFlags;

  external Pointer<DDPIXELFORMAT> lpddpfInputFormat;

  external Pointer<DDPIXELFORMAT> lpddpfOutputFormats;

  @Uint32()
  external int dwNumFormats;

  @Int32()
  external int ddRVal;

  external Pointer<NativeFunction<LPDDHALVPORTCB_GETOUTPUTFORMATS>>
      GetVideoPortOutputFormats;
}

/// {@category Struct}
class DDHAL_GETVPORTSIGNALDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_LCL> lpDD;

  external Pointer<DDRAWI_DDVIDEOPORT_LCL> lpVideoPort;

  @Uint32()
  external int dwStatus;

  @Int32()
  external int ddRVal;

  external Pointer<NativeFunction<LPDDHALVPORTCB_GETSIGNALSTATUS>>
      GetVideoSignalStatus;
}

/// {@category Struct}
class DDHAL_LOCKDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_GBL> lpDD;

  external Pointer<DDRAWI_DDRAWSURFACE_LCL> lpDDSurface;

  @Uint32()
  external int bHasRect;

  external RECTL rArea;

  external Pointer lpSurfData;

  @Int32()
  external int ddRVal;

  external Pointer<NativeFunction<LPDDHALSURFCB_LOCK>> Lock;

  @Uint32()
  external int dwFlags;
}

/// {@category Struct}
class DDHAL_QUERYMOCOMPSTATUSDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_LCL> lpDD;

  external Pointer<DDRAWI_DDMOTIONCOMP_LCL> lpMoComp;

  external Pointer<DDRAWI_DDRAWSURFACE_LCL> lpSurface;

  @Uint32()
  external int dwFlags;

  @Int32()
  external int ddRVal;

  external Pointer<NativeFunction<LPDDHALMOCOMPCB_QUERYSTATUS>>
      QueryMoCompStatus;
}

/// {@category Struct}
class DDHAL_RENDERMOCOMPDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_LCL> lpDD;

  external Pointer<DDRAWI_DDMOTIONCOMP_LCL> lpMoComp;

  @Uint32()
  external int dwNumBuffers;

  external Pointer<DDMCBUFFERINFO> lpBufferInfo;

  @Uint32()
  external int dwFunction;

  external Pointer lpInputData;

  @Uint32()
  external int dwInputDataSize;

  external Pointer lpOutputData;

  @Uint32()
  external int dwOutputDataSize;

  @Int32()
  external int ddRVal;

  external Pointer<NativeFunction<LPDDHALMOCOMPCB_RENDER>> RenderMoComp;
}

/// {@category Struct}
class DDHAL_SETCLIPLISTDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_GBL> lpDD;

  external Pointer<DDRAWI_DDRAWSURFACE_LCL> lpDDSurface;

  @Int32()
  external int ddRVal;

  external Pointer<NativeFunction<LPDDHALSURFCB_SETCLIPLIST>> SetClipList;
}

/// {@category Struct}
class DDHAL_SETCOLORKEYDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_GBL> lpDD;

  external Pointer<DDRAWI_DDRAWSURFACE_LCL> lpDDSurface;

  @Uint32()
  external int dwFlags;

  external DDCOLORKEY ckNew;

  @Int32()
  external int ddRVal;

  external Pointer<NativeFunction<LPDDHALSURFCB_SETCOLORKEY>> SetColorKey;
}

/// {@category Struct}
class DDHAL_SETENTRIESDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_GBL> lpDD;

  external Pointer<DDRAWI_DDRAWPALETTE_GBL> lpDDPalette;

  @Uint32()
  external int dwBase;

  @Uint32()
  external int dwNumEntries;

  external Pointer<PALETTEENTRY> lpEntries;

  @Int32()
  external int ddRVal;

  external Pointer<NativeFunction<LPDDHALPALCB_SETENTRIES>> SetEntries;
}

/// {@category Struct}
class DDHAL_SETEXCLUSIVEMODEDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_GBL> lpDD;

  @Uint32()
  external int dwEnterExcl;

  @Uint32()
  external int dwReserved;

  @Int32()
  external int ddRVal;

  external Pointer<NativeFunction<LPDDHAL_SETEXCLUSIVEMODE>> SetExclusiveMode;
}

/// {@category Struct}
class DDHAL_SETMODEDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_GBL> lpDD;

  @Uint32()
  external int dwModeIndex;

  @Int32()
  external int ddRVal;

  external Pointer<NativeFunction<LPDDHAL_SETMODE>> SetMode;

  @Int32()
  external int inexcl;

  @Int32()
  external int useRefreshRate;
}

/// {@category Struct}
class DDHAL_SETOVERLAYPOSITIONDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_GBL> lpDD;

  external Pointer<DDRAWI_DDRAWSURFACE_LCL> lpDDSrcSurface;

  external Pointer<DDRAWI_DDRAWSURFACE_LCL> lpDDDestSurface;

  @Int32()
  external int lXPos;

  @Int32()
  external int lYPos;

  @Int32()
  external int ddRVal;

  external Pointer<NativeFunction<LPDDHALSURFCB_SETOVERLAYPOSITION>>
      SetOverlayPosition;
}

/// {@category Struct}
class DDHAL_SETPALETTEDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_GBL> lpDD;

  external Pointer<DDRAWI_DDRAWSURFACE_LCL> lpDDSurface;

  external Pointer<DDRAWI_DDRAWPALETTE_GBL> lpDDPalette;

  @Int32()
  external int ddRVal;

  external Pointer<NativeFunction<LPDDHALSURFCB_SETPALETTE>> SetPalette;

  @Int32()
  external int Attach;
}

/// {@category Struct}
class DDHAL_SYNCSURFACEDATA extends Struct {
  @Uint32()
  external int dwSize;

  external Pointer<DDRAWI_DIRECTDRAW_LCL> lpDD;

  external Pointer<DDRAWI_DDRAWSURFACE_LCL> lpDDSurface;

  @Uint32()
  external int dwSurfaceOffset;

  @IntPtr()
  external int fpLockPtr;

  @Int32()
  external int lPitch;

  @Uint32()
  external int dwOverlayOffset;

  @Uint32()
  external int dwOverlaySrcWidth;

  @Uint32()
  external int dwOverlaySrcHeight;

  @Uint32()
  external int dwOverlayDestWidth;

  @Uint32()
  external int dwOverlayDestHeight;

  @IntPtr()
  external int dwDriverReserved1;

  @IntPtr()
  external int dwDriverReserved2;

  @IntPtr()
  external int dwDriverReserved3;

  @Int32()
  external int ddRVal;
}

/// {@category Struct}
class DDHAL_SYNCVIDEOPORTDATA extends Struct {
  @Uint32()
  external int dwSize;

  external Pointer<DDRAWI_DIRECTDRAW_LCL> lpDD;

  external Pointer<DDRAWI_DDVIDEOPORT_LCL> lpVideoPort;

  @Uint32()
  external int dwOriginOffset;

  @Uint32()
  external int dwHeight;

  @Uint32()
  external int dwVBIHeight;

  @IntPtr()
  external int dwDriverReserved1;

  @IntPtr()
  external int dwDriverReserved2;

  @IntPtr()
  external int dwDriverReserved3;

  @Int32()
  external int ddRVal;
}

/// {@category Struct}
class DDHAL_UNLOCKDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_GBL> lpDD;

  external Pointer<DDRAWI_DDRAWSURFACE_LCL> lpDDSurface;

  @Int32()
  external int ddRVal;

  external Pointer<NativeFunction<LPDDHALSURFCB_UNLOCK>> Unlock;
}

/// {@category Struct}
class DDHAL_UPDATENONLOCALHEAPDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_GBL> lpDD;

  @Uint32()
  external int dwHeap;

  @IntPtr()
  external int fpGARTLin;

  @IntPtr()
  external int fpGARTDev;

  @IntPtr()
  external int ulPolicyMaxBytes;

  @Int32()
  external int ddRVal;

  external Pointer<NativeFunction<LPDDHAL_UPDATENONLOCALHEAP>>
      UpdateNonLocalHeap;
}

/// {@category Struct}
class DDHAL_UPDATEOVERLAYDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_GBL> lpDD;

  external Pointer<DDRAWI_DDRAWSURFACE_LCL> lpDDDestSurface;

  external RECTL rDest;

  external Pointer<DDRAWI_DDRAWSURFACE_LCL> lpDDSrcSurface;

  external RECTL rSrc;

  @Uint32()
  external int dwFlags;

  external DDOVERLAYFX overlayFX;

  @Int32()
  external int ddRVal;

  external Pointer<NativeFunction<LPDDHALSURFCB_UPDATEOVERLAY>> UpdateOverlay;
}

/// {@category Struct}
class DDHAL_UPDATEVPORTDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_LCL> lpDD;

  external Pointer<DDRAWI_DDVIDEOPORT_LCL> lpVideoPort;

  external Pointer<Pointer<DDRAWI_DDRAWSURFACE_INT>> lplpDDSurface;

  external Pointer<Pointer<DDRAWI_DDRAWSURFACE_INT>> lplpDDVBISurface;

  external Pointer<DDVIDEOPORTINFO> lpVideoInfo;

  @Uint32()
  external int dwFlags;

  @Uint32()
  external int dwNumAutoflip;

  @Uint32()
  external int dwNumVBIAutoflip;

  @Int32()
  external int ddRVal;

  external Pointer<NativeFunction<LPDDHALVPORTCB_UPDATE>> UpdateVideoPort;
}

/// {@category Struct}
class DDHAL_VPORTCOLORDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_LCL> lpDD;

  external Pointer<DDRAWI_DDVIDEOPORT_LCL> lpVideoPort;

  @Uint32()
  external int dwFlags;

  external Pointer<DDCOLORCONTROL> lpColorData;

  @Int32()
  external int ddRVal;

  external Pointer<NativeFunction<LPDDHALVPORTCB_COLORCONTROL>> ColorControl;
}

/// {@category Struct}
class DDHAL_WAITFORVERTICALBLANKDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_GBL> lpDD;

  @Uint32()
  external int dwFlags;

  @Uint32()
  external int bIsInVB;

  @IntPtr()
  external int hEvent;

  @Int32()
  external int ddRVal;

  external Pointer<NativeFunction<LPDDHAL_WAITFORVERTICALBLANK>>
      WaitForVerticalBlank;
}

/// {@category Struct}
class DDHAL_WAITFORVPORTSYNCDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_LCL> lpDD;

  external Pointer<DDRAWI_DDVIDEOPORT_LCL> lpVideoPort;

  @Uint32()
  external int dwFlags;

  @Uint32()
  external int dwLine;

  @Uint32()
  external int dwTimeOut;

  @Int32()
  external int ddRVal;

  external Pointer<NativeFunction<LPDDHALVPORTCB_WAITFORSYNC>>
      WaitForVideoPortSync;
}

/// {@category Struct}
class DDKERNELCAPS extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwCaps;

  @Uint32()
  external int dwIRQCaps;
}

/// {@category Struct}
class DDLOCKININFO extends Struct {
  external Pointer<DDSURFACEDATA> lpSurfaceData;
}

/// {@category Struct}
class DDLOCKOUTINFO extends Struct {
  @IntPtr()
  external int dwSurfacePtr;
}

/// {@category Struct}
class DDMCBUFFERINFO extends Struct {
  @Uint32()
  external int dwSize;

  external Pointer<DDRAWI_DDRAWSURFACE_LCL> lpCompSurface;

  @Uint32()
  external int dwDataOffset;

  @Uint32()
  external int dwDataSize;

  external Pointer lpPrivate;
}

/// {@category Struct}
class DDMCCOMPBUFFERINFO extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwNumCompBuffers;

  @Uint32()
  external int dwWidthToCreate;

  @Uint32()
  external int dwHeightToCreate;

  @Uint32()
  external int dwBytesToAllocate;

  external DDSCAPS2 ddCompCaps;

  external DDPIXELFORMAT ddPixelFormat;
}

/// {@category Struct}
class DDMOCOMPBUFFERINFO extends Struct {
  @Uint32()
  external int dwSize;

  external Pointer<DD_SURFACE_LOCAL> lpCompSurface;

  @Uint32()
  external int dwDataOffset;

  @Uint32()
  external int dwDataSize;

  external Pointer lpPrivate;
}

/// {@category Struct}
class DDMONITORINFO extends Struct {
  @Uint16()
  external int Manufacturer;

  @Uint16()
  external int Product;

  @Uint32()
  external int SerialNumber;

  external GUID DeviceIdentifier;

  @Int32()
  external int Mode640x480;

  @Int32()
  external int Mode800x600;

  @Int32()
  external int Mode1024x768;

  @Int32()
  external int Mode1280x1024;

  @Int32()
  external int Mode1600x1200;

  @Int32()
  external int ModeReserved1;

  @Int32()
  external int ModeReserved2;

  @Int32()
  external int ModeReserved3;
}

/// {@category Struct}
class DDMORESURFACECAPS extends Struct {
  @Uint32()
  external int dwSize;

  external DDSCAPSEX ddsCapsMore;

  @Array(1)
  external Array<_DDMORESURFACECAPS_ExtendedHeapRestrictions>
      ddsExtendedHeapRestrictions;
}

/// {@category Struct}
class _DDMORESURFACECAPS_ExtendedHeapRestrictions extends Struct {
  external DDSCAPSEX ddsCapsEx;

  external DDSCAPSEX ddsCapsExAlt;
}

/// {@category Struct}
class DDNONLOCALVIDMEMCAPS extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwNLVBCaps;

  @Uint32()
  external int dwNLVBCaps2;

  @Uint32()
  external int dwNLVBCKeyCaps;

  @Uint32()
  external int dwNLVBFXCaps;

  @Array(8)
  external Array<Uint32> dwNLVBRops;
}

/// {@category Struct}
class DDNTCORECAPS extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwCaps;

  @Uint32()
  external int dwCaps2;

  @Uint32()
  external int dwCKeyCaps;

  @Uint32()
  external int dwFXCaps;

  @Uint32()
  external int dwFXAlphaCaps;

  @Uint32()
  external int dwPalCaps;

  @Uint32()
  external int dwSVCaps;

  @Uint32()
  external int dwAlphaBltConstBitDepths;

  @Uint32()
  external int dwAlphaBltPixelBitDepths;

  @Uint32()
  external int dwAlphaBltSurfaceBitDepths;

  @Uint32()
  external int dwAlphaOverlayConstBitDepths;

  @Uint32()
  external int dwAlphaOverlayPixelBitDepths;

  @Uint32()
  external int dwAlphaOverlaySurfaceBitDepths;

  @Uint32()
  external int dwZBufferBitDepths;

  @Uint32()
  external int dwVidMemTotal;

  @Uint32()
  external int dwVidMemFree;

  @Uint32()
  external int dwMaxVisibleOverlays;

  @Uint32()
  external int dwCurrVisibleOverlays;

  @Uint32()
  external int dwNumFourCCCodes;

  @Uint32()
  external int dwAlignBoundarySrc;

  @Uint32()
  external int dwAlignSizeSrc;

  @Uint32()
  external int dwAlignBoundaryDest;

  @Uint32()
  external int dwAlignSizeDest;

  @Uint32()
  external int dwAlignStrideAlign;

  @Array(8)
  external Array<Uint32> dwRops;

  external DDSCAPS ddsCaps;

  @Uint32()
  external int dwMinOverlayStretch;

  @Uint32()
  external int dwMaxOverlayStretch;

  @Uint32()
  external int dwMinLiveVideoStretch;

  @Uint32()
  external int dwMaxLiveVideoStretch;

  @Uint32()
  external int dwMinHwCodecStretch;

  @Uint32()
  external int dwMaxHwCodecStretch;

  @Uint32()
  external int dwReserved1;

  @Uint32()
  external int dwReserved2;

  @Uint32()
  external int dwReserved3;

  @Uint32()
  external int dwSVBCaps;

  @Uint32()
  external int dwSVBCKeyCaps;

  @Uint32()
  external int dwSVBFXCaps;

  @Array(8)
  external Array<Uint32> dwSVBRops;

  @Uint32()
  external int dwVSBCaps;

  @Uint32()
  external int dwVSBCKeyCaps;

  @Uint32()
  external int dwVSBFXCaps;

  @Array(8)
  external Array<Uint32> dwVSBRops;

  @Uint32()
  external int dwSSBCaps;

  @Uint32()
  external int dwSSBCKeyCaps;

  @Uint32()
  external int dwSSBFXCaps;

  @Array(8)
  external Array<Uint32> dwSSBRops;

  @Uint32()
  external int dwMaxVideoPorts;

  @Uint32()
  external int dwCurrVideoPorts;

  @Uint32()
  external int dwSVBCaps2;
}

/// {@category Struct}
class DDOPTSURFACEDESC extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwFlags;

  external DDSCAPS2 ddSCaps;

  external DDOSCAPS ddOSCaps;

  external GUID guid;

  @Uint32()
  external int dwCompressionRatio;
}

/// {@category Struct}
class DDOSCAPS extends Struct {
  @Uint32()
  external int dwCaps;
}

/// {@category Struct}
class DDOVERLAYFX extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwAlphaEdgeBlendBitDepth;

  @Uint32()
  external int dwAlphaEdgeBlend;

  @Uint32()
  external int dwReserved;

  @Uint32()
  external int dwAlphaDestConstBitDepth;

  external _DDOVERLAYFX__Anonymous1_e__Union Anonymous1;

  @Uint32()
  external int dwAlphaSrcConstBitDepth;

  external _DDOVERLAYFX__Anonymous2_e__Union Anonymous2;

  external DDCOLORKEY dckDestColorkey;

  external DDCOLORKEY dckSrcColorkey;

  @Uint32()
  external int dwDDFX;

  @Uint32()
  external int dwFlags;
}

/// {@category Struct}
class _DDOVERLAYFX__Anonymous1_e__Union extends Union {
  @Uint32()
  external int dwAlphaDestConst;

  external Pointer<COMObject> lpDDSAlphaDest;
}

extension DDOVERLAYFX_Extension on DDOVERLAYFX {
  int get dwAlphaDestConst => this.Anonymous1.dwAlphaDestConst;
  set dwAlphaDestConst(int value) => this.Anonymous1.dwAlphaDestConst = value;

  Pointer<COMObject> get lpDDSAlphaDest => this.Anonymous1.lpDDSAlphaDest;
  set lpDDSAlphaDest(Pointer<COMObject> value) =>
      this.Anonymous1.lpDDSAlphaDest = value;
}

/// {@category Struct}
class _DDOVERLAYFX__Anonymous2_e__Union extends Union {
  @Uint32()
  external int dwAlphaSrcConst;

  external Pointer<COMObject> lpDDSAlphaSrc;
}

extension DDOVERLAYFX_Extension_1 on DDOVERLAYFX {
  int get dwAlphaSrcConst => this.Anonymous2.dwAlphaSrcConst;
  set dwAlphaSrcConst(int value) => this.Anonymous2.dwAlphaSrcConst = value;

  Pointer<COMObject> get lpDDSAlphaSrc => this.Anonymous2.lpDDSAlphaSrc;
  set lpDDSAlphaSrc(Pointer<COMObject> value) =>
      this.Anonymous2.lpDDSAlphaSrc = value;
}

/// {@category Struct}
class DDPIXELFORMAT extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwFlags;

  @Uint32()
  external int dwFourCC;

  external _DDPIXELFORMAT__Anonymous1_e__Union Anonymous1;

  external _DDPIXELFORMAT__Anonymous2_e__Union Anonymous2;

  external _DDPIXELFORMAT__Anonymous3_e__Union Anonymous3;

  external _DDPIXELFORMAT__Anonymous4_e__Union Anonymous4;

  external _DDPIXELFORMAT__Anonymous5_e__Union Anonymous5;
}

/// {@category Struct}
class _DDPIXELFORMAT__Anonymous1_e__Union extends Union {
  @Uint32()
  external int dwRGBBitCount;

  @Uint32()
  external int dwYUVBitCount;

  @Uint32()
  external int dwZBufferBitDepth;

  @Uint32()
  external int dwAlphaBitDepth;

  @Uint32()
  external int dwLuminanceBitCount;

  @Uint32()
  external int dwBumpBitCount;

  @Uint32()
  external int dwPrivateFormatBitCount;
}

extension DDPIXELFORMAT_Extension on DDPIXELFORMAT {
  int get dwRGBBitCount => this.Anonymous1.dwRGBBitCount;
  set dwRGBBitCount(int value) => this.Anonymous1.dwRGBBitCount = value;

  int get dwYUVBitCount => this.Anonymous1.dwYUVBitCount;
  set dwYUVBitCount(int value) => this.Anonymous1.dwYUVBitCount = value;

  int get dwZBufferBitDepth => this.Anonymous1.dwZBufferBitDepth;
  set dwZBufferBitDepth(int value) => this.Anonymous1.dwZBufferBitDepth = value;

  int get dwAlphaBitDepth => this.Anonymous1.dwAlphaBitDepth;
  set dwAlphaBitDepth(int value) => this.Anonymous1.dwAlphaBitDepth = value;

  int get dwLuminanceBitCount => this.Anonymous1.dwLuminanceBitCount;
  set dwLuminanceBitCount(int value) =>
      this.Anonymous1.dwLuminanceBitCount = value;

  int get dwBumpBitCount => this.Anonymous1.dwBumpBitCount;
  set dwBumpBitCount(int value) => this.Anonymous1.dwBumpBitCount = value;

  int get dwPrivateFormatBitCount => this.Anonymous1.dwPrivateFormatBitCount;
  set dwPrivateFormatBitCount(int value) =>
      this.Anonymous1.dwPrivateFormatBitCount = value;
}

/// {@category Struct}
class _DDPIXELFORMAT__Anonymous2_e__Union extends Union {
  @Uint32()
  external int dwRBitMask;

  @Uint32()
  external int dwYBitMask;

  @Uint32()
  external int dwStencilBitDepth;

  @Uint32()
  external int dwLuminanceBitMask;

  @Uint32()
  external int dwBumpDuBitMask;

  @Uint32()
  external int dwOperations;
}

extension DDPIXELFORMAT_Extension_1 on DDPIXELFORMAT {
  int get dwRBitMask => this.Anonymous2.dwRBitMask;
  set dwRBitMask(int value) => this.Anonymous2.dwRBitMask = value;

  int get dwYBitMask => this.Anonymous2.dwYBitMask;
  set dwYBitMask(int value) => this.Anonymous2.dwYBitMask = value;

  int get dwStencilBitDepth => this.Anonymous2.dwStencilBitDepth;
  set dwStencilBitDepth(int value) => this.Anonymous2.dwStencilBitDepth = value;

  int get dwLuminanceBitMask => this.Anonymous2.dwLuminanceBitMask;
  set dwLuminanceBitMask(int value) =>
      this.Anonymous2.dwLuminanceBitMask = value;

  int get dwBumpDuBitMask => this.Anonymous2.dwBumpDuBitMask;
  set dwBumpDuBitMask(int value) => this.Anonymous2.dwBumpDuBitMask = value;

  int get dwOperations => this.Anonymous2.dwOperations;
  set dwOperations(int value) => this.Anonymous2.dwOperations = value;
}

/// {@category Struct}
class _DDPIXELFORMAT__Anonymous3_e__Union extends Union {
  @Uint32()
  external int dwGBitMask;

  @Uint32()
  external int dwUBitMask;

  @Uint32()
  external int dwZBitMask;

  @Uint32()
  external int dwBumpDvBitMask;

  external _DDPIXELFORMAT__Anonymous3_e__Union__MultiSampleCaps_e__Struct
      MultiSampleCaps;
}

/// {@category Struct}
class _DDPIXELFORMAT__Anonymous3_e__Union__MultiSampleCaps_e__Struct
    extends Struct {
  @Uint16()
  external int wFlipMSTypes;

  @Uint16()
  external int wBltMSTypes;
}

extension DDPIXELFORMAT__Anonymous3_e__Union_Extension on DDPIXELFORMAT {
  int get wFlipMSTypes => this.Anonymous3.MultiSampleCaps.wFlipMSTypes;
  set wFlipMSTypes(int value) =>
      this.Anonymous3.MultiSampleCaps.wFlipMSTypes = value;

  int get wBltMSTypes => this.Anonymous3.MultiSampleCaps.wBltMSTypes;
  set wBltMSTypes(int value) =>
      this.Anonymous3.MultiSampleCaps.wBltMSTypes = value;
}

extension DDPIXELFORMAT_Extension_2 on DDPIXELFORMAT {
  int get dwGBitMask => this.Anonymous3.dwGBitMask;
  set dwGBitMask(int value) => this.Anonymous3.dwGBitMask = value;

  int get dwUBitMask => this.Anonymous3.dwUBitMask;
  set dwUBitMask(int value) => this.Anonymous3.dwUBitMask = value;

  int get dwZBitMask => this.Anonymous3.dwZBitMask;
  set dwZBitMask(int value) => this.Anonymous3.dwZBitMask = value;

  int get dwBumpDvBitMask => this.Anonymous3.dwBumpDvBitMask;
  set dwBumpDvBitMask(int value) => this.Anonymous3.dwBumpDvBitMask = value;

  _DDPIXELFORMAT__Anonymous3_e__Union__MultiSampleCaps_e__Struct
      get MultiSampleCaps => this.Anonymous3.MultiSampleCaps;
  set MultiSampleCaps(
          _DDPIXELFORMAT__Anonymous3_e__Union__MultiSampleCaps_e__Struct
              value) =>
      this.Anonymous3.MultiSampleCaps = value;
}

/// {@category Struct}
class _DDPIXELFORMAT__Anonymous4_e__Union extends Union {
  @Uint32()
  external int dwBBitMask;

  @Uint32()
  external int dwVBitMask;

  @Uint32()
  external int dwStencilBitMask;

  @Uint32()
  external int dwBumpLuminanceBitMask;
}

extension DDPIXELFORMAT_Extension_3 on DDPIXELFORMAT {
  int get dwBBitMask => this.Anonymous4.dwBBitMask;
  set dwBBitMask(int value) => this.Anonymous4.dwBBitMask = value;

  int get dwVBitMask => this.Anonymous4.dwVBitMask;
  set dwVBitMask(int value) => this.Anonymous4.dwVBitMask = value;

  int get dwStencilBitMask => this.Anonymous4.dwStencilBitMask;
  set dwStencilBitMask(int value) => this.Anonymous4.dwStencilBitMask = value;

  int get dwBumpLuminanceBitMask => this.Anonymous4.dwBumpLuminanceBitMask;
  set dwBumpLuminanceBitMask(int value) =>
      this.Anonymous4.dwBumpLuminanceBitMask = value;
}

/// {@category Struct}
class _DDPIXELFORMAT__Anonymous5_e__Union extends Union {
  @Uint32()
  external int dwRGBAlphaBitMask;

  @Uint32()
  external int dwYUVAlphaBitMask;

  @Uint32()
  external int dwLuminanceAlphaBitMask;

  @Uint32()
  external int dwRGBZBitMask;

  @Uint32()
  external int dwYUVZBitMask;
}

extension DDPIXELFORMAT_Extension_4 on DDPIXELFORMAT {
  int get dwRGBAlphaBitMask => this.Anonymous5.dwRGBAlphaBitMask;
  set dwRGBAlphaBitMask(int value) => this.Anonymous5.dwRGBAlphaBitMask = value;

  int get dwYUVAlphaBitMask => this.Anonymous5.dwYUVAlphaBitMask;
  set dwYUVAlphaBitMask(int value) => this.Anonymous5.dwYUVAlphaBitMask = value;

  int get dwLuminanceAlphaBitMask => this.Anonymous5.dwLuminanceAlphaBitMask;
  set dwLuminanceAlphaBitMask(int value) =>
      this.Anonymous5.dwLuminanceAlphaBitMask = value;

  int get dwRGBZBitMask => this.Anonymous5.dwRGBZBitMask;
  set dwRGBZBitMask(int value) => this.Anonymous5.dwRGBZBitMask = value;

  int get dwYUVZBitMask => this.Anonymous5.dwYUVZBitMask;
  set dwYUVZBitMask(int value) => this.Anonymous5.dwYUVZBitMask = value;
}

/// {@category Struct}
class DDRAWI_DDMOTIONCOMP_INT extends Struct {
  external Pointer lpVtbl;

  external Pointer<DDRAWI_DDMOTIONCOMP_LCL> lpLcl;

  external Pointer<DDRAWI_DDMOTIONCOMP_INT> lpLink;

  @Uint32()
  external int dwIntRefCnt;
}

/// {@category Struct}
class DDRAWI_DDMOTIONCOMP_LCL extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_LCL> lpDD;

  external GUID guid;

  @Uint32()
  external int dwUncompWidth;

  @Uint32()
  external int dwUncompHeight;

  external DDPIXELFORMAT ddUncompPixelFormat;

  @Uint32()
  external int dwInternalFlags;

  @Uint32()
  external int dwRefCnt;

  @Uint32()
  external int dwProcessId;

  @IntPtr()
  external int hMoComp;

  @Uint32()
  external int dwDriverReserved1;

  @Uint32()
  external int dwDriverReserved2;

  @Uint32()
  external int dwDriverReserved3;

  external Pointer lpDriverReserved1;

  external Pointer lpDriverReserved2;

  external Pointer lpDriverReserved3;
}

/// {@category Struct}
class DDRAWI_DDRAWCLIPPER_GBL extends Struct {
  @Uint32()
  external int dwRefCnt;

  @Uint32()
  external int dwFlags;

  external Pointer<DDRAWI_DIRECTDRAW_GBL> lpDD;

  @Uint32()
  external int dwProcessId;

  @IntPtr()
  external int dwReserved1;

  @IntPtr()
  external int hWnd;

  external Pointer<RGNDATA> lpStaticClipList;
}

/// {@category Struct}
class DDRAWI_DDRAWCLIPPER_INT extends Struct {
  external Pointer lpVtbl;

  external Pointer<DDRAWI_DDRAWCLIPPER_LCL> lpLcl;

  external Pointer<DDRAWI_DDRAWCLIPPER_INT> lpLink;

  @Uint32()
  external int dwIntRefCnt;
}

/// {@category Struct}
class DDRAWI_DDRAWCLIPPER_LCL extends Struct {
  @Uint32()
  external int lpClipMore;

  external Pointer<DDRAWI_DDRAWCLIPPER_GBL> lpGbl;

  external Pointer<DDRAWI_DIRECTDRAW_LCL> lpDD_lcl;

  @Uint32()
  external int dwLocalRefCnt;

  external Pointer<COMObject> pUnkOuter;

  external Pointer<DDRAWI_DIRECTDRAW_INT> lpDD_int;

  @IntPtr()
  external int dwReserved1;

  external Pointer<COMObject> pAddrefedThisOwner;
}

/// {@category Struct}
class DDRAWI_DDRAWPALETTE_GBL extends Struct {
  @Uint32()
  external int dwRefCnt;

  @Uint32()
  external int dwFlags;

  external Pointer<DDRAWI_DIRECTDRAW_LCL> lpDD_lcl;

  @Uint32()
  external int dwProcessId;

  external Pointer<PALETTEENTRY> lpColorTable;

  external _DDRAWI_DDRAWPALETTE_GBL__Anonymous_e__Union Anonymous;

  @Uint32()
  external int dwDriverReserved;

  @Uint32()
  external int dwContentsStamp;

  @Uint32()
  external int dwSaveStamp;

  @Uint32()
  external int dwHandle;
}

/// {@category Struct}
class _DDRAWI_DDRAWPALETTE_GBL__Anonymous_e__Union extends Union {
  @IntPtr()
  external int dwReserved1;

  @IntPtr()
  external int hHELGDIPalette;
}

extension DDRAWI_DDRAWPALETTE_GBL_Extension on DDRAWI_DDRAWPALETTE_GBL {
  int get dwReserved1 => this.Anonymous.dwReserved1;
  set dwReserved1(int value) => this.Anonymous.dwReserved1 = value;

  int get hHELGDIPalette => this.Anonymous.hHELGDIPalette;
  set hHELGDIPalette(int value) => this.Anonymous.hHELGDIPalette = value;
}

/// {@category Struct}
class DDRAWI_DDRAWPALETTE_INT extends Struct {
  external Pointer lpVtbl;

  external Pointer<DDRAWI_DDRAWPALETTE_LCL> lpLcl;

  external Pointer<DDRAWI_DDRAWPALETTE_INT> lpLink;

  @Uint32()
  external int dwIntRefCnt;
}

/// {@category Struct}
class DDRAWI_DDRAWPALETTE_LCL extends Struct {
  @Uint32()
  external int lpPalMore;

  external Pointer<DDRAWI_DDRAWPALETTE_GBL> lpGbl;

  @IntPtr()
  external int dwUnused0;

  @Uint32()
  external int dwLocalRefCnt;

  external Pointer<COMObject> pUnkOuter;

  external Pointer<DDRAWI_DIRECTDRAW_LCL> lpDD_lcl;

  @IntPtr()
  external int dwReserved1;

  @IntPtr()
  external int dwDDRAWReserved1;

  @IntPtr()
  external int dwDDRAWReserved2;

  @IntPtr()
  external int dwDDRAWReserved3;
}

/// {@category Struct}
class DDRAWI_DDRAWSURFACE_GBL extends Struct {
  @Uint32()
  external int dwRefCnt;

  @Uint32()
  external int dwGlobalFlags;

  external _DDRAWI_DDRAWSURFACE_GBL__Anonymous1_e__Union Anonymous1;

  external _DDRAWI_DDRAWSURFACE_GBL__Anonymous2_e__Union Anonymous2;

  external _DDRAWI_DDRAWSURFACE_GBL__Anonymous3_e__Union Anonymous3;

  @IntPtr()
  external int fpVidMem;

  external _DDRAWI_DDRAWSURFACE_GBL__Anonymous4_e__Union Anonymous4;

  @Uint16()
  external int wHeight;

  @Uint16()
  external int wWidth;

  @Uint32()
  external int dwUsageCount;

  @IntPtr()
  external int dwReserved1;

  external DDPIXELFORMAT ddpfSurface;
}

/// {@category Struct}
class _DDRAWI_DDRAWSURFACE_GBL__Anonymous1_e__Union extends Union {
  external Pointer<ACCESSRECTLIST> lpRectList;

  @Uint32()
  external int dwBlockSizeY;

  @Int32()
  external int lSlicePitch;
}

extension DDRAWI_DDRAWSURFACE_GBL_Extension on DDRAWI_DDRAWSURFACE_GBL {
  Pointer<ACCESSRECTLIST> get lpRectList => this.Anonymous1.lpRectList;
  set lpRectList(Pointer<ACCESSRECTLIST> value) =>
      this.Anonymous1.lpRectList = value;

  int get dwBlockSizeY => this.Anonymous1.dwBlockSizeY;
  set dwBlockSizeY(int value) => this.Anonymous1.dwBlockSizeY = value;

  int get lSlicePitch => this.Anonymous1.lSlicePitch;
  set lSlicePitch(int value) => this.Anonymous1.lSlicePitch = value;
}

/// {@category Struct}
class _DDRAWI_DDRAWSURFACE_GBL__Anonymous2_e__Union extends Union {
  external Pointer<VMEMHEAP> lpVidMemHeap;

  @Uint32()
  external int dwBlockSizeX;
}

extension DDRAWI_DDRAWSURFACE_GBL_Extension_1 on DDRAWI_DDRAWSURFACE_GBL {
  Pointer<VMEMHEAP> get lpVidMemHeap => this.Anonymous2.lpVidMemHeap;
  set lpVidMemHeap(Pointer<VMEMHEAP> value) =>
      this.Anonymous2.lpVidMemHeap = value;

  int get dwBlockSizeX => this.Anonymous2.dwBlockSizeX;
  set dwBlockSizeX(int value) => this.Anonymous2.dwBlockSizeX = value;
}

/// {@category Struct}
class _DDRAWI_DDRAWSURFACE_GBL__Anonymous3_e__Union extends Union {
  external Pointer<DDRAWI_DIRECTDRAW_GBL> lpDD;

  external Pointer lpDDHandle;
}

extension DDRAWI_DDRAWSURFACE_GBL_Extension_2 on DDRAWI_DDRAWSURFACE_GBL {
  Pointer<DDRAWI_DIRECTDRAW_GBL> get lpDD => this.Anonymous3.lpDD;
  set lpDD(Pointer<DDRAWI_DIRECTDRAW_GBL> value) =>
      this.Anonymous3.lpDD = value;

  Pointer get lpDDHandle => this.Anonymous3.lpDDHandle;
  set lpDDHandle(Pointer value) => this.Anonymous3.lpDDHandle = value;
}

/// {@category Struct}
class _DDRAWI_DDRAWSURFACE_GBL__Anonymous4_e__Union extends Union {
  @Int32()
  external int lPitch;

  @Uint32()
  external int dwLinearSize;
}

extension DDRAWI_DDRAWSURFACE_GBL_Extension_3 on DDRAWI_DDRAWSURFACE_GBL {
  int get lPitch => this.Anonymous4.lPitch;
  set lPitch(int value) => this.Anonymous4.lPitch = value;

  int get dwLinearSize => this.Anonymous4.dwLinearSize;
  set dwLinearSize(int value) => this.Anonymous4.dwLinearSize = value;
}

/// {@category Struct}
class DDRAWI_DDRAWSURFACE_GBL_MORE extends Struct {
  @Uint32()
  external int dwSize;

  external _DDRAWI_DDRAWSURFACE_GBL_MORE__Anonymous_e__Union Anonymous;

  external Pointer<Uint32> pPageTable;

  @Uint32()
  external int cPages;

  @IntPtr()
  external int dwSavedDCContext;

  @IntPtr()
  external int fpAliasedVidMem;

  @IntPtr()
  external int dwDriverReserved;

  @IntPtr()
  external int dwHELReserved;

  @Uint32()
  external int cPageUnlocks;

  @IntPtr()
  external int hKernelSurface;

  @Uint32()
  external int dwKernelRefCnt;

  external Pointer<DDCOLORCONTROL> lpColorInfo;

  @IntPtr()
  external int fpNTAlias;

  @Uint32()
  external int dwContentsStamp;

  external Pointer lpvUnswappedDriverReserved;

  external Pointer lpDDRAWReserved2;

  @Uint32()
  external int dwDDRAWReserved1;

  @Uint32()
  external int dwDDRAWReserved2;

  @IntPtr()
  external int fpAliasOfVidMem;
}

/// {@category Struct}
class _DDRAWI_DDRAWSURFACE_GBL_MORE__Anonymous_e__Union extends Union {
  @Uint32()
  external int dwPhysicalPageTable;

  @IntPtr()
  external int fpPhysicalVidMem;
}

extension DDRAWI_DDRAWSURFACE_GBL_MORE_Extension
    on DDRAWI_DDRAWSURFACE_GBL_MORE {
  int get dwPhysicalPageTable => this.Anonymous.dwPhysicalPageTable;
  set dwPhysicalPageTable(int value) =>
      this.Anonymous.dwPhysicalPageTable = value;

  int get fpPhysicalVidMem => this.Anonymous.fpPhysicalVidMem;
  set fpPhysicalVidMem(int value) => this.Anonymous.fpPhysicalVidMem = value;
}

/// {@category Struct}
class DDRAWI_DDRAWSURFACE_INT extends Struct {
  external Pointer lpVtbl;

  external Pointer<DDRAWI_DDRAWSURFACE_LCL> lpLcl;

  external Pointer<DDRAWI_DDRAWSURFACE_INT> lpLink;

  @Uint32()
  external int dwIntRefCnt;
}

/// {@category Struct}
class DDRAWI_DDRAWSURFACE_LCL extends Struct {
  external Pointer<DDRAWI_DDRAWSURFACE_MORE> lpSurfMore;

  external Pointer<DDRAWI_DDRAWSURFACE_GBL> lpGbl;

  @IntPtr()
  external int hDDSurface;

  external Pointer<ATTACHLIST> lpAttachList;

  external Pointer<ATTACHLIST> lpAttachListFrom;

  @Uint32()
  external int dwLocalRefCnt;

  @Uint32()
  external int dwProcessId;

  @Uint32()
  external int dwFlags;

  external DDSCAPS ddsCaps;

  external _DDRAWI_DDRAWSURFACE_LCL__Anonymous1_e__Union Anonymous1;

  external _DDRAWI_DDRAWSURFACE_LCL__Anonymous2_e__Union Anonymous2;

  @Uint32()
  external int dwModeCreatedIn;

  @Uint32()
  external int dwBackBufferCount;

  external DDCOLORKEY ddckCKDestBlt;

  external DDCOLORKEY ddckCKSrcBlt;

  @IntPtr()
  external int hDC;

  @IntPtr()
  external int dwReserved1;

  external DDCOLORKEY ddckCKSrcOverlay;

  external DDCOLORKEY ddckCKDestOverlay;

  external Pointer<DDRAWI_DDRAWSURFACE_INT> lpSurfaceOverlaying;

  external DBLNODE dbnOverlayNode;

  external RECT rcOverlaySrc;

  external RECT rcOverlayDest;

  @Uint32()
  external int dwClrXparent;

  @Uint32()
  external int dwAlpha;

  @Int32()
  external int lOverlayX;

  @Int32()
  external int lOverlayY;
}

/// {@category Struct}
class _DDRAWI_DDRAWSURFACE_LCL__Anonymous1_e__Union extends Union {
  external Pointer<DDRAWI_DDRAWPALETTE_INT> lpDDPalette;

  external Pointer<DDRAWI_DDRAWPALETTE_INT> lp16DDPalette;
}

extension DDRAWI_DDRAWSURFACE_LCL_Extension on DDRAWI_DDRAWSURFACE_LCL {
  Pointer<DDRAWI_DDRAWPALETTE_INT> get lpDDPalette =>
      this.Anonymous1.lpDDPalette;
  set lpDDPalette(Pointer<DDRAWI_DDRAWPALETTE_INT> value) =>
      this.Anonymous1.lpDDPalette = value;

  Pointer<DDRAWI_DDRAWPALETTE_INT> get lp16DDPalette =>
      this.Anonymous1.lp16DDPalette;
  set lp16DDPalette(Pointer<DDRAWI_DDRAWPALETTE_INT> value) =>
      this.Anonymous1.lp16DDPalette = value;
}

/// {@category Struct}
class _DDRAWI_DDRAWSURFACE_LCL__Anonymous2_e__Union extends Union {
  external Pointer<DDRAWI_DDRAWCLIPPER_LCL> lpDDClipper;

  external Pointer<DDRAWI_DDRAWCLIPPER_INT> lp16DDClipper;
}

extension DDRAWI_DDRAWSURFACE_LCL_Extension_1 on DDRAWI_DDRAWSURFACE_LCL {
  Pointer<DDRAWI_DDRAWCLIPPER_LCL> get lpDDClipper =>
      this.Anonymous2.lpDDClipper;
  set lpDDClipper(Pointer<DDRAWI_DDRAWCLIPPER_LCL> value) =>
      this.Anonymous2.lpDDClipper = value;

  Pointer<DDRAWI_DDRAWCLIPPER_INT> get lp16DDClipper =>
      this.Anonymous2.lp16DDClipper;
  set lp16DDClipper(Pointer<DDRAWI_DDRAWCLIPPER_INT> value) =>
      this.Anonymous2.lp16DDClipper = value;
}

/// {@category Struct}
class DDRAWI_DDRAWSURFACE_MORE extends Struct {
  @Uint32()
  external int dwSize;

  external Pointer<IUNKNOWN_LIST> lpIUnknowns;

  external Pointer<DDRAWI_DIRECTDRAW_LCL> lpDD_lcl;

  @Uint32()
  external int dwPageLockCount;

  @Uint32()
  external int dwBytesAllocated;

  external Pointer<DDRAWI_DIRECTDRAW_INT> lpDD_int;

  @Uint32()
  external int dwMipMapCount;

  external Pointer<DDRAWI_DDRAWCLIPPER_INT> lpDDIClipper;

  external Pointer<HEAPALIASINFO> lpHeapAliasInfo;

  @Uint32()
  external int dwOverlayFlags;

  external Pointer rgjunc;

  external Pointer<DDRAWI_DDVIDEOPORT_LCL> lpVideoPort;

  external Pointer<DDOVERLAYFX> lpddOverlayFX;

  external DDSCAPSEX ddsCapsEx;

  @Uint32()
  external int dwTextureStage;

  external Pointer lpDDRAWReserved;

  external Pointer lpDDRAWReserved2;

  external Pointer lpDDrawReserved3;

  @Uint32()
  external int dwDDrawReserved4;

  external Pointer lpDDrawReserved5;

  external Pointer<Uint32> lpGammaRamp;

  external Pointer<Uint32> lpOriginalGammaRamp;

  external Pointer lpDDrawReserved6;

  @Uint32()
  external int dwSurfaceHandle;

  @Array(2)
  external Array<Uint32> qwDDrawReserved8;

  external Pointer lpDDrawReserved9;

  @Uint32()
  external int cSurfaces;

  external Pointer<DDSURFACEDESC2> pCreatedDDSurfaceDesc2;

  external Pointer<Pointer<DDRAWI_DDRAWSURFACE_LCL>> slist;

  @Uint32()
  external int dwFVF;

  external Pointer lpVB;
}

/// {@category Struct}
class DDRAWI_DDVIDEOPORT_INT extends Struct {
  external Pointer lpVtbl;

  external Pointer<DDRAWI_DDVIDEOPORT_LCL> lpLcl;

  external Pointer<DDRAWI_DDVIDEOPORT_INT> lpLink;

  @Uint32()
  external int dwIntRefCnt;

  @Uint32()
  external int dwFlags;
}

/// {@category Struct}
class DDRAWI_DDVIDEOPORT_LCL extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_LCL> lpDD;

  external DDVIDEOPORTDESC ddvpDesc;

  external DDVIDEOPORTINFO ddvpInfo;

  external Pointer<DDRAWI_DDRAWSURFACE_INT> lpSurface;

  external Pointer<DDRAWI_DDRAWSURFACE_INT> lpVBISurface;

  external Pointer<Pointer<DDRAWI_DDRAWSURFACE_INT>> lpFlipInts;

  @Uint32()
  external int dwNumAutoflip;

  @Uint32()
  external int dwProcessID;

  @Uint32()
  external int dwStateFlags;

  @Uint32()
  external int dwFlags;

  @Uint32()
  external int dwRefCnt;

  @IntPtr()
  external int fpLastFlip;

  @IntPtr()
  external int dwReserved1;

  @IntPtr()
  external int dwReserved2;

  @IntPtr()
  external int hDDVideoPort;

  @Uint32()
  external int dwNumVBIAutoflip;

  external Pointer<DDVIDEOPORTDESC> lpVBIDesc;

  external Pointer<DDVIDEOPORTDESC> lpVideoDesc;

  external Pointer<DDVIDEOPORTINFO> lpVBIInfo;

  external Pointer<DDVIDEOPORTINFO> lpVideoInfo;

  @Uint32()
  external int dwVBIProcessID;

  external Pointer<DDRAWI_DDVIDEOPORT_INT> lpVPNotify;
}

/// {@category Struct}
class DDRAWI_DIRECTDRAW_GBL extends Struct {
  @Uint32()
  external int dwRefCnt;

  @Uint32()
  external int dwFlags;

  @IntPtr()
  external int fpPrimaryOrig;

  external DDCORECAPS ddCaps;

  @Uint32()
  external int dwInternal1;

  @Array(9)
  external Array<Uint32> dwUnused1;

  external Pointer<DDHAL_CALLBACKS> lpDDCBtmp;

  external Pointer<DDRAWI_DDRAWSURFACE_INT> dsList;

  external Pointer<DDRAWI_DDRAWPALETTE_INT> palList;

  external Pointer<DDRAWI_DDRAWCLIPPER_INT> clipperList;

  external Pointer<DDRAWI_DIRECTDRAW_GBL> lp16DD;

  @Uint32()
  external int dwMaxOverlays;

  @Uint32()
  external int dwCurrOverlays;

  @Uint32()
  external int dwMonitorFrequency;

  external DDCORECAPS ddHELCaps;

  @Array(50)
  external Array<Uint32> dwUnused2;

  external DDCOLORKEY ddckCKDestOverlay;

  external DDCOLORKEY ddckCKSrcOverlay;

  external VIDMEMINFO vmiData;

  external Pointer lpDriverHandle;

  external Pointer<DDRAWI_DIRECTDRAW_LCL> lpExclusiveOwner;

  @Uint32()
  external int dwModeIndex;

  @Uint32()
  external int dwModeIndexOrig;

  @Uint32()
  external int dwNumFourCC;

  external Pointer<Uint32> lpdwFourCC;

  @Uint32()
  external int dwNumModes;

  external Pointer<DDHALMODEINFO> lpModeInfo;

  external PROCESS_LIST plProcessList;

  @Uint32()
  external int dwSurfaceLockCount;

  @Uint32()
  external int dwAliasedLockCnt;

  @IntPtr()
  external int dwReserved3;

  @IntPtr()
  external int hDD;

  @Array(12)
  external Array<Uint8> cObsolete;

  @Uint32()
  external int dwReserved1;

  @Uint32()
  external int dwReserved2;

  external DBLNODE dbnOverlayRoot;

  external Pointer<Uint16> lpwPDeviceFlags;

  @Uint32()
  external int dwPDevice;

  @Uint32()
  external int dwWin16LockCnt;

  @Uint32()
  external int dwUnused3;

  @Uint32()
  external int hInstance;

  @Uint32()
  external int dwEvent16;

  @Uint32()
  external int dwSaveNumModes;

  @IntPtr()
  external int lpD3DGlobalDriverData;

  @IntPtr()
  external int lpD3DHALCallbacks;

  external DDCORECAPS ddBothCaps;

  external Pointer<DDVIDEOPORTCAPS> lpDDVideoPortCaps;

  external Pointer<DDRAWI_DDVIDEOPORT_INT> dvpList;

  @IntPtr()
  external int lpD3DHALCallbacks2;

  external RECT rectDevice;

  @Uint32()
  external int cMonitors;

  external Pointer gpbmiSrc;

  external Pointer gpbmiDest;

  external Pointer<HEAPALIASINFO> phaiHeapAliases;

  @IntPtr()
  external int hKernelHandle;

  @IntPtr()
  external int pfnNotifyProc;

  external Pointer<DDKERNELCAPS> lpDDKernelCaps;

  external Pointer<DDNONLOCALVIDMEMCAPS> lpddNLVCaps;

  external Pointer<DDNONLOCALVIDMEMCAPS> lpddNLVHELCaps;

  external Pointer<DDNONLOCALVIDMEMCAPS> lpddNLVBothCaps;

  @IntPtr()
  external int lpD3DExtendedCaps;

  @Uint32()
  external int dwDOSBoxEvent;

  external RECT rectDesktop;

  @Array(32)
  external Array<Uint8> cDriverName;

  @IntPtr()
  external int lpD3DHALCallbacks3;

  @Uint32()
  external int dwNumZPixelFormats;

  external Pointer<DDPIXELFORMAT> lpZPixelFormats;

  external Pointer<DDRAWI_DDMOTIONCOMP_INT> mcList;

  @Uint32()
  external int hDDVxd;

  external DDSCAPSEX ddsCapsMore;
}

/// {@category Struct}
class DDRAWI_DIRECTDRAW_INT extends Struct {
  external Pointer lpVtbl;

  external Pointer<DDRAWI_DIRECTDRAW_LCL> lpLcl;

  external Pointer<DDRAWI_DIRECTDRAW_INT> lpLink;

  @Uint32()
  external int dwIntRefCnt;
}

/// {@category Struct}
class DDRAWI_DIRECTDRAW_LCL extends Struct {
  @Uint32()
  external int lpDDMore;

  external Pointer<DDRAWI_DIRECTDRAW_GBL> lpGbl;

  @Uint32()
  external int dwUnused0;

  @Uint32()
  external int dwLocalFlags;

  @Uint32()
  external int dwLocalRefCnt;

  @Uint32()
  external int dwProcessId;

  external Pointer<COMObject> pUnkOuter;

  @Uint32()
  external int dwObsolete1;

  @IntPtr()
  external int hWnd;

  @IntPtr()
  external int hDC;

  @Uint32()
  external int dwErrorMode;

  external Pointer<DDRAWI_DDRAWSURFACE_INT> lpPrimary;

  external Pointer<DDRAWI_DDRAWSURFACE_INT> lpCB;

  @Uint32()
  external int dwPreferredMode;

  @IntPtr()
  external int hD3DInstance;

  external Pointer<COMObject> pD3DIUnknown;

  external Pointer<DDHAL_CALLBACKS> lpDDCB;

  @IntPtr()
  external int hDDVxd;

  @Uint32()
  external int dwAppHackFlags;

  @IntPtr()
  external int hFocusWnd;

  @Uint32()
  external int dwHotTracking;

  @Uint32()
  external int dwIMEState;

  @IntPtr()
  external int hWndPopup;

  @IntPtr()
  external int hDD;

  @IntPtr()
  external int hGammaCalibrator;

  external Pointer<NativeFunction<LPDDGAMMACALIBRATORPROC>> lpGammaCalibrator;
}

/// {@category Struct}
class DDRGBA extends Struct {
  @Uint8()
  external int red;

  @Uint8()
  external int green;

  @Uint8()
  external int blue;

  @Uint8()
  external int alpha;
}

/// {@category Struct}
class DDSCAPS extends Struct {
  @Uint32()
  external int dwCaps;
}

/// {@category Struct}
class DDSCAPS2 extends Struct {
  @Uint32()
  external int dwCaps;

  @Uint32()
  external int dwCaps2;

  @Uint32()
  external int dwCaps3;

  external _DDSCAPS2__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _DDSCAPS2__Anonymous_e__Union extends Union {
  @Uint32()
  external int dwCaps4;

  @Uint32()
  external int dwVolumeDepth;
}

extension DDSCAPS2_Extension on DDSCAPS2 {
  int get dwCaps4 => this.Anonymous.dwCaps4;
  set dwCaps4(int value) => this.Anonymous.dwCaps4 = value;

  int get dwVolumeDepth => this.Anonymous.dwVolumeDepth;
  set dwVolumeDepth(int value) => this.Anonymous.dwVolumeDepth = value;
}

/// {@category Struct}
class DDSCAPSEX extends Struct {
  @Uint32()
  external int dwCaps2;

  @Uint32()
  external int dwCaps3;

  external _DDSCAPSEX__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _DDSCAPSEX__Anonymous_e__Union extends Union {
  @Uint32()
  external int dwCaps4;

  @Uint32()
  external int dwVolumeDepth;
}

extension DDSCAPSEX_Extension on DDSCAPSEX {
  int get dwCaps4 => this.Anonymous.dwCaps4;
  set dwCaps4(int value) => this.Anonymous.dwCaps4 = value;

  int get dwVolumeDepth => this.Anonymous.dwVolumeDepth;
  set dwVolumeDepth(int value) => this.Anonymous.dwVolumeDepth = value;
}

/// {@category Struct}
class DDSETSTATEININFO extends Struct {
  external Pointer<DDSURFACEDATA> lpSurfaceData;

  external Pointer<DDVIDEOPORTDATA> lpVideoPortData;
}

/// {@category Struct}
class DDSETSTATEOUTINFO extends Struct {
  @Int32()
  external int bSoftwareAutoflip;

  @Uint32()
  external int dwSurfaceIndex;

  @Uint32()
  external int dwVBISurfaceIndex;
}

/// {@category Struct}
class DDSKIPNEXTFIELDINFO extends Struct {
  external Pointer<DDVIDEOPORTDATA> lpVideoPortData;

  @Uint32()
  external int dwSkipFlags;
}

/// {@category Struct}
class DDSTEREOMODE extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwHeight;

  @Uint32()
  external int dwWidth;

  @Uint32()
  external int dwBpp;

  @Uint32()
  external int dwRefreshRate;

  @Int32()
  external int bSupported;
}

/// {@category Struct}
class DDSURFACEDATA extends Struct {
  @Uint32()
  external int ddsCaps;

  @Uint32()
  external int dwSurfaceOffset;

  @IntPtr()
  external int fpLockPtr;

  @Uint32()
  external int dwWidth;

  @Uint32()
  external int dwHeight;

  @Int32()
  external int lPitch;

  @Uint32()
  external int dwOverlayFlags;

  @Uint32()
  external int dwOverlayOffset;

  @Uint32()
  external int dwOverlaySrcWidth;

  @Uint32()
  external int dwOverlaySrcHeight;

  @Uint32()
  external int dwOverlayDestWidth;

  @Uint32()
  external int dwOverlayDestHeight;

  @Uint32()
  external int dwVideoPortId;

  @Uint32()
  external int dwFormatFlags;

  @Uint32()
  external int dwFormatFourCC;

  @Uint32()
  external int dwFormatBitCount;

  @Uint32()
  external int dwRBitMask;

  @Uint32()
  external int dwGBitMask;

  @Uint32()
  external int dwBBitMask;

  @Uint32()
  external int dwDriverReserved1;

  @Uint32()
  external int dwDriverReserved2;

  @Uint32()
  external int dwDriverReserved3;

  @Uint32()
  external int dwDriverReserved4;
}

/// {@category Struct}
class DDSURFACEDESC extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwFlags;

  @Uint32()
  external int dwHeight;

  @Uint32()
  external int dwWidth;

  external _DDSURFACEDESC__Anonymous1_e__Union Anonymous1;

  @Uint32()
  external int dwBackBufferCount;

  external _DDSURFACEDESC__Anonymous2_e__Union Anonymous2;

  @Uint32()
  external int dwAlphaBitDepth;

  @Uint32()
  external int dwReserved;

  external Pointer lpSurface;

  external DDCOLORKEY ddckCKDestOverlay;

  external DDCOLORKEY ddckCKDestBlt;

  external DDCOLORKEY ddckCKSrcOverlay;

  external DDCOLORKEY ddckCKSrcBlt;

  external DDPIXELFORMAT ddpfPixelFormat;

  external DDSCAPS ddsCaps;
}

/// {@category Struct}
class _DDSURFACEDESC__Anonymous1_e__Union extends Union {
  @Int32()
  external int lPitch;

  @Uint32()
  external int dwLinearSize;
}

extension DDSURFACEDESC_Extension on DDSURFACEDESC {
  int get lPitch => this.Anonymous1.lPitch;
  set lPitch(int value) => this.Anonymous1.lPitch = value;

  int get dwLinearSize => this.Anonymous1.dwLinearSize;
  set dwLinearSize(int value) => this.Anonymous1.dwLinearSize = value;
}

/// {@category Struct}
class _DDSURFACEDESC__Anonymous2_e__Union extends Union {
  @Uint32()
  external int dwMipMapCount;

  @Uint32()
  external int dwZBufferBitDepth;

  @Uint32()
  external int dwRefreshRate;
}

extension DDSURFACEDESC_Extension_1 on DDSURFACEDESC {
  int get dwMipMapCount => this.Anonymous2.dwMipMapCount;
  set dwMipMapCount(int value) => this.Anonymous2.dwMipMapCount = value;

  int get dwZBufferBitDepth => this.Anonymous2.dwZBufferBitDepth;
  set dwZBufferBitDepth(int value) => this.Anonymous2.dwZBufferBitDepth = value;

  int get dwRefreshRate => this.Anonymous2.dwRefreshRate;
  set dwRefreshRate(int value) => this.Anonymous2.dwRefreshRate = value;
}

/// {@category Struct}
class DDSURFACEDESC2 extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwFlags;

  @Uint32()
  external int dwHeight;

  @Uint32()
  external int dwWidth;

  external _DDSURFACEDESC2__Anonymous1_e__Union Anonymous1;

  external _DDSURFACEDESC2__Anonymous2_e__Union Anonymous2;

  external _DDSURFACEDESC2__Anonymous3_e__Union Anonymous3;

  @Uint32()
  external int dwAlphaBitDepth;

  @Uint32()
  external int dwReserved;

  external Pointer lpSurface;

  external _DDSURFACEDESC2__Anonymous4_e__Union Anonymous4;

  external DDCOLORKEY ddckCKDestBlt;

  external DDCOLORKEY ddckCKSrcOverlay;

  external DDCOLORKEY ddckCKSrcBlt;

  external _DDSURFACEDESC2__Anonymous5_e__Union Anonymous5;

  external DDSCAPS2 ddsCaps;

  @Uint32()
  external int dwTextureStage;
}

/// {@category Struct}
class _DDSURFACEDESC2__Anonymous1_e__Union extends Union {
  @Int32()
  external int lPitch;

  @Uint32()
  external int dwLinearSize;
}

extension DDSURFACEDESC2_Extension on DDSURFACEDESC2 {
  int get lPitch => this.Anonymous1.lPitch;
  set lPitch(int value) => this.Anonymous1.lPitch = value;

  int get dwLinearSize => this.Anonymous1.dwLinearSize;
  set dwLinearSize(int value) => this.Anonymous1.dwLinearSize = value;
}

/// {@category Struct}
class _DDSURFACEDESC2__Anonymous2_e__Union extends Union {
  @Uint32()
  external int dwBackBufferCount;

  @Uint32()
  external int dwDepth;
}

extension DDSURFACEDESC2_Extension_1 on DDSURFACEDESC2 {
  int get dwBackBufferCount => this.Anonymous2.dwBackBufferCount;
  set dwBackBufferCount(int value) => this.Anonymous2.dwBackBufferCount = value;

  int get dwDepth => this.Anonymous2.dwDepth;
  set dwDepth(int value) => this.Anonymous2.dwDepth = value;
}

/// {@category Struct}
class _DDSURFACEDESC2__Anonymous3_e__Union extends Union {
  @Uint32()
  external int dwMipMapCount;

  @Uint32()
  external int dwRefreshRate;

  @Uint32()
  external int dwSrcVBHandle;
}

extension DDSURFACEDESC2_Extension_2 on DDSURFACEDESC2 {
  int get dwMipMapCount => this.Anonymous3.dwMipMapCount;
  set dwMipMapCount(int value) => this.Anonymous3.dwMipMapCount = value;

  int get dwRefreshRate => this.Anonymous3.dwRefreshRate;
  set dwRefreshRate(int value) => this.Anonymous3.dwRefreshRate = value;

  int get dwSrcVBHandle => this.Anonymous3.dwSrcVBHandle;
  set dwSrcVBHandle(int value) => this.Anonymous3.dwSrcVBHandle = value;
}

/// {@category Struct}
class _DDSURFACEDESC2__Anonymous4_e__Union extends Union {
  external DDCOLORKEY ddckCKDestOverlay;

  @Uint32()
  external int dwEmptyFaceColor;
}

extension DDSURFACEDESC2_Extension_3 on DDSURFACEDESC2 {
  DDCOLORKEY get ddckCKDestOverlay => this.Anonymous4.ddckCKDestOverlay;
  set ddckCKDestOverlay(DDCOLORKEY value) =>
      this.Anonymous4.ddckCKDestOverlay = value;

  int get dwEmptyFaceColor => this.Anonymous4.dwEmptyFaceColor;
  set dwEmptyFaceColor(int value) => this.Anonymous4.dwEmptyFaceColor = value;
}

/// {@category Struct}
class _DDSURFACEDESC2__Anonymous5_e__Union extends Union {
  external DDPIXELFORMAT ddpfPixelFormat;

  @Uint32()
  external int dwFVF;
}

extension DDSURFACEDESC2_Extension_4 on DDSURFACEDESC2 {
  DDPIXELFORMAT get ddpfPixelFormat => this.Anonymous5.ddpfPixelFormat;
  set ddpfPixelFormat(DDPIXELFORMAT value) =>
      this.Anonymous5.ddpfPixelFormat = value;

  int get dwFVF => this.Anonymous5.dwFVF;
  set dwFVF(int value) => this.Anonymous5.dwFVF = value;
}

/// {@category Struct}
class DDTRANSFERININFO extends Struct {
  external Pointer<DDSURFACEDATA> lpSurfaceData;

  @Uint32()
  external int dwStartLine;

  @Uint32()
  external int dwEndLine;

  @IntPtr()
  external int dwTransferID;

  @Uint32()
  external int dwTransferFlags;

  external Pointer<MDL> lpDestMDL;
}

/// {@category Struct}
class DDTRANSFEROUTINFO extends Struct {
  @Uint32()
  external int dwBufferPolarity;
}

/// {@category Struct}
class DDVERSIONDATA extends Struct {
  @Uint32()
  external int dwHALVersion;

  @IntPtr()
  external int dwReserved1;

  @IntPtr()
  external int dwReserved2;
}

/// {@category Struct}
class DDVIDEOPORTBANDWIDTH extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwCaps;

  @Uint32()
  external int dwOverlay;

  @Uint32()
  external int dwColorkey;

  @Uint32()
  external int dwYInterpolate;

  @Uint32()
  external int dwYInterpAndColorkey;

  @IntPtr()
  external int dwReserved1;

  @IntPtr()
  external int dwReserved2;
}

/// {@category Struct}
class DDVIDEOPORTCAPS extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwFlags;

  @Uint32()
  external int dwMaxWidth;

  @Uint32()
  external int dwMaxVBIWidth;

  @Uint32()
  external int dwMaxHeight;

  @Uint32()
  external int dwVideoPortID;

  @Uint32()
  external int dwCaps;

  @Uint32()
  external int dwFX;

  @Uint32()
  external int dwNumAutoFlipSurfaces;

  @Uint32()
  external int dwAlignVideoPortBoundary;

  @Uint32()
  external int dwAlignVideoPortPrescaleWidth;

  @Uint32()
  external int dwAlignVideoPortCropBoundary;

  @Uint32()
  external int dwAlignVideoPortCropWidth;

  @Uint32()
  external int dwPreshrinkXStep;

  @Uint32()
  external int dwPreshrinkYStep;

  @Uint32()
  external int dwNumVBIAutoFlipSurfaces;

  @Uint32()
  external int dwNumPreferredAutoflip;

  @Uint16()
  external int wNumFilterTapsX;

  @Uint16()
  external int wNumFilterTapsY;
}

/// {@category Struct}
class DDVIDEOPORTCONNECT extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwPortWidth;

  external GUID guidTypeID;

  @Uint32()
  external int dwFlags;

  @IntPtr()
  external int dwReserved1;
}

/// {@category Struct}
class DDVIDEOPORTDATA extends Struct {
  @Uint32()
  external int dwVideoPortId;

  @Uint32()
  external int dwVPFlags;

  @Uint32()
  external int dwOriginOffset;

  @Uint32()
  external int dwHeight;

  @Uint32()
  external int dwVBIHeight;

  @Uint32()
  external int dwDriverReserved1;

  @Uint32()
  external int dwDriverReserved2;

  @Uint32()
  external int dwDriverReserved3;
}

/// {@category Struct}
class DDVIDEOPORTDESC extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwFieldWidth;

  @Uint32()
  external int dwVBIWidth;

  @Uint32()
  external int dwFieldHeight;

  @Uint32()
  external int dwMicrosecondsPerField;

  @Uint32()
  external int dwMaxPixelsPerSecond;

  @Uint32()
  external int dwVideoPortID;

  @Uint32()
  external int dwReserved1;

  external DDVIDEOPORTCONNECT VideoPortType;

  @IntPtr()
  external int dwReserved2;

  @IntPtr()
  external int dwReserved3;
}

/// {@category Struct}
class DDVIDEOPORTINFO extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwOriginX;

  @Uint32()
  external int dwOriginY;

  @Uint32()
  external int dwVPFlags;

  external RECT rCrop;

  @Uint32()
  external int dwPrescaleWidth;

  @Uint32()
  external int dwPrescaleHeight;

  external Pointer<DDPIXELFORMAT> lpddpfInputFormat;

  external Pointer<DDPIXELFORMAT> lpddpfVBIInputFormat;

  external Pointer<DDPIXELFORMAT> lpddpfVBIOutputFormat;

  @Uint32()
  external int dwVBIHeight;

  @IntPtr()
  external int dwReserved1;

  @IntPtr()
  external int dwReserved2;
}

/// {@category Struct}
class DDVIDEOPORTNOTIFY extends Struct {
  @Int64()
  external int ApproximateTimeStamp;

  @Int32()
  external int lField;

  @Uint32()
  external int dwSurfaceIndex;

  @Int32()
  external int lDone;
}

/// {@category Struct}
class DDVIDEOPORTSTATUS extends Struct {
  @Uint32()
  external int dwSize;

  @Int32()
  external int bInUse;

  @Uint32()
  external int dwFlags;

  @Uint32()
  external int dwReserved1;

  external DDVIDEOPORTCONNECT VideoPortType;

  @IntPtr()
  external int dwReserved2;

  @IntPtr()
  external int dwReserved3;
}

/// {@category Struct}
class DD_ADDATTACHEDSURFACEDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_GLOBAL> lpDD;

  external Pointer<DD_SURFACE_LOCAL> lpDDSurface;

  external Pointer<DD_SURFACE_LOCAL> lpSurfAttached;

  @Int32()
  external int ddRVal;

  external Pointer AddAttachedSurface;
}

/// {@category Struct}
class DD_ATTACHLIST extends Struct {
  external Pointer<DD_ATTACHLIST> lpLink;

  external Pointer<DD_SURFACE_LOCAL> lpAttached;
}

/// {@category Struct}
class DD_BEGINMOCOMPFRAMEDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_LOCAL> lpDD;

  external Pointer<DD_MOTIONCOMP_LOCAL> lpMoComp;

  external Pointer<DD_SURFACE_LOCAL> lpDestSurface;

  @Uint32()
  external int dwInputDataSize;

  external Pointer lpInputData;

  @Uint32()
  external int dwOutputDataSize;

  external Pointer lpOutputData;

  @Int32()
  external int ddRVal;
}

/// {@category Struct}
class DD_BLTDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_GLOBAL> lpDD;

  external Pointer<DD_SURFACE_LOCAL> lpDDDestSurface;

  external RECTL rDest;

  external Pointer<DD_SURFACE_LOCAL> lpDDSrcSurface;

  external RECTL rSrc;

  @Uint32()
  external int dwFlags;

  @Uint32()
  external int dwROPFlags;

  external DDBLTFX bltFX;

  @Int32()
  external int ddRVal;

  external Pointer Blt;

  @Int32()
  external int IsClipped;

  external RECTL rOrigDest;

  external RECTL rOrigSrc;

  @Uint32()
  external int dwRectCnt;

  external Pointer<RECT> prDestRects;

  @Uint32()
  external int dwAFlags;

  external DDARGB ddargbScaleFactors;
}

/// {@category Struct}
class DD_CALLBACKS extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwFlags;

  external Pointer<NativeFunction<PDD_DESTROYDRIVER>> DestroyDriver;

  external Pointer<NativeFunction<PDD_CREATESURFACE>> CreateSurface;

  external Pointer<NativeFunction<PDD_SETCOLORKEY>> SetColorKey;

  external Pointer<NativeFunction<PDD_SETMODE>> SetMode;

  external Pointer<NativeFunction<PDD_WAITFORVERTICALBLANK>>
      WaitForVerticalBlank;

  external Pointer<NativeFunction<PDD_CANCREATESURFACE>> CanCreateSurface;

  external Pointer<NativeFunction<PDD_CREATEPALETTE>> CreatePalette;

  external Pointer<NativeFunction<PDD_GETSCANLINE>> GetScanLine;

  external Pointer<NativeFunction<PDD_MAPMEMORY>> MapMemory;
}

/// {@category Struct}
class DD_CANCREATESURFACEDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_GLOBAL> lpDD;

  external Pointer<DDSURFACEDESC> lpDDSurfaceDesc;

  @Uint32()
  external int bIsDifferentPixelFormat;

  @Int32()
  external int ddRVal;

  external Pointer CanCreateSurface;
}

/// {@category Struct}
class DD_CANCREATEVPORTDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_LOCAL> lpDD;

  external Pointer<DDVIDEOPORTDESC> lpDDVideoPortDesc;

  @Int32()
  external int ddRVal;

  external Pointer CanCreateVideoPort;
}

/// {@category Struct}
class DD_CLIPPER_GLOBAL extends Struct {
  @IntPtr()
  external int dwReserved1;
}

/// {@category Struct}
class DD_CLIPPER_LOCAL extends Struct {
  @IntPtr()
  external int dwReserved1;
}

/// {@category Struct}
class DD_COLORCONTROLCALLBACKS extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwFlags;

  external Pointer<NativeFunction<PDD_COLORCB_COLORCONTROL>> ColorControl;
}

/// {@category Struct}
class DD_COLORCONTROLDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_GLOBAL> lpDD;

  external Pointer<DD_SURFACE_LOCAL> lpDDSurface;

  external Pointer<DDCOLORCONTROL> lpColorData;

  @Uint32()
  external int dwFlags;

  @Int32()
  external int ddRVal;

  external Pointer ColorControl;
}

/// {@category Struct}
class DD_CREATEMOCOMPDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_LOCAL> lpDD;

  external Pointer<DD_MOTIONCOMP_LOCAL> lpMoComp;

  external Pointer<GUID> lpGuid;

  @Uint32()
  external int dwUncompWidth;

  @Uint32()
  external int dwUncompHeight;

  external DDPIXELFORMAT ddUncompPixelFormat;

  external Pointer lpData;

  @Uint32()
  external int dwDataSize;

  @Int32()
  external int ddRVal;
}

/// {@category Struct}
class DD_CREATEPALETTEDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_GLOBAL> lpDD;

  external Pointer<DD_PALETTE_GLOBAL> lpDDPalette;

  external Pointer<PALETTEENTRY> lpColorTable;

  @Int32()
  external int ddRVal;

  external Pointer CreatePalette;

  @Int32()
  external int is_excl;
}

/// {@category Struct}
class DD_CREATESURFACEDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_GLOBAL> lpDD;

  external Pointer<DDSURFACEDESC> lpDDSurfaceDesc;

  external Pointer<Pointer<DD_SURFACE_LOCAL>> lplpSList;

  @Uint32()
  external int dwSCnt;

  @Int32()
  external int ddRVal;

  external Pointer CreateSurface;
}

/// {@category Struct}
class DD_CREATESURFACEEXDATA extends Struct {
  @Uint32()
  external int dwFlags;

  external Pointer<DD_DIRECTDRAW_LOCAL> lpDDLcl;

  external Pointer<DD_SURFACE_LOCAL> lpDDSLcl;

  @Int32()
  external int ddRVal;
}

/// {@category Struct}
class DD_CREATEVPORTDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_LOCAL> lpDD;

  external Pointer<DDVIDEOPORTDESC> lpDDVideoPortDesc;

  external Pointer<DD_VIDEOPORT_LOCAL> lpVideoPort;

  @Int32()
  external int ddRVal;

  external Pointer CreateVideoPort;
}

/// {@category Struct}
class DD_D3DBUFCALLBACKS extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwFlags;

  external Pointer<NativeFunction<PDD_CANCREATESURFACE>> CanCreateD3DBuffer;

  external Pointer<NativeFunction<PDD_CREATESURFACE>> CreateD3DBuffer;

  external Pointer<NativeFunction<PDD_SURFCB_DESTROYSURFACE>> DestroyD3DBuffer;

  external Pointer<NativeFunction<PDD_SURFCB_LOCK>> LockD3DBuffer;

  external Pointer<NativeFunction<PDD_SURFCB_UNLOCK>> UnlockD3DBuffer;
}

/// {@category Struct}
class DD_DESTROYDDLOCALDATA extends Struct {
  @Uint32()
  external int dwFlags;

  external Pointer<DD_DIRECTDRAW_LOCAL> pDDLcl;

  @Int32()
  external int ddRVal;
}

/// {@category Struct}
class DD_DESTROYMOCOMPDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_LOCAL> lpDD;

  external Pointer<DD_MOTIONCOMP_LOCAL> lpMoComp;

  @Int32()
  external int ddRVal;
}

/// {@category Struct}
class DD_DESTROYPALETTEDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_GLOBAL> lpDD;

  external Pointer<DD_PALETTE_GLOBAL> lpDDPalette;

  @Int32()
  external int ddRVal;

  external Pointer DestroyPalette;
}

/// {@category Struct}
class DD_DESTROYSURFACEDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_GLOBAL> lpDD;

  external Pointer<DD_SURFACE_LOCAL> lpDDSurface;

  @Int32()
  external int ddRVal;

  external Pointer DestroySurface;
}

/// {@category Struct}
class DD_DESTROYVPORTDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_LOCAL> lpDD;

  external Pointer<DD_VIDEOPORT_LOCAL> lpVideoPort;

  @Int32()
  external int ddRVal;

  external Pointer DestroyVideoPort;
}

/// {@category Struct}
class DD_DIRECTDRAW_GLOBAL extends Struct {
  external Pointer dhpdev;

  @IntPtr()
  external int dwReserved1;

  @IntPtr()
  external int dwReserved2;

  external Pointer<DDVIDEOPORTCAPS> lpDDVideoPortCaps;
}

/// {@category Struct}
class DD_DIRECTDRAW_LOCAL extends Struct {
  external Pointer<DD_DIRECTDRAW_GLOBAL> lpGbl;
}

/// {@category Struct}
class DD_DRVSETCOLORKEYDATA extends Struct {
  external Pointer<DD_SURFACE_LOCAL> lpDDSurface;

  @Uint32()
  external int dwFlags;

  external DDCOLORKEY ckNew;

  @Int32()
  external int ddRVal;

  external Pointer SetColorKey;
}

/// {@category Struct}
class DD_ENDMOCOMPFRAMEDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_LOCAL> lpDD;

  external Pointer<DD_MOTIONCOMP_LOCAL> lpMoComp;

  external Pointer lpInputData;

  @Uint32()
  external int dwInputDataSize;

  @Int32()
  external int ddRVal;
}

/// {@category Struct}
class DD_FLIPDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_GLOBAL> lpDD;

  external Pointer<DD_SURFACE_LOCAL> lpSurfCurr;

  external Pointer<DD_SURFACE_LOCAL> lpSurfTarg;

  @Uint32()
  external int dwFlags;

  @Int32()
  external int ddRVal;

  external Pointer Flip;

  external Pointer<DD_SURFACE_LOCAL> lpSurfCurrLeft;

  external Pointer<DD_SURFACE_LOCAL> lpSurfTargLeft;
}

/// {@category Struct}
class DD_FLIPTOGDISURFACEDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_GLOBAL> lpDD;

  @Uint32()
  external int dwToGDI;

  @Uint32()
  external int dwReserved;

  @Int32()
  external int ddRVal;

  external Pointer FlipToGDISurface;
}

/// {@category Struct}
class DD_FLIPVPORTDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_LOCAL> lpDD;

  external Pointer<DD_VIDEOPORT_LOCAL> lpVideoPort;

  external Pointer<DD_SURFACE_LOCAL> lpSurfCurr;

  external Pointer<DD_SURFACE_LOCAL> lpSurfTarg;

  @Int32()
  external int ddRVal;

  external Pointer FlipVideoPort;
}

/// {@category Struct}
class DD_FREEDRIVERMEMORYDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_GLOBAL> lpDD;

  external Pointer<DD_SURFACE_LOCAL> lpDDSurface;

  @Int32()
  external int ddRVal;

  external Pointer FreeDriverMemory;
}

/// {@category Struct}
class DD_GETAVAILDRIVERMEMORYDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_GLOBAL> lpDD;

  external DDSCAPS DDSCaps;

  @Uint32()
  external int dwTotal;

  @Uint32()
  external int dwFree;

  @Int32()
  external int ddRVal;

  external Pointer GetAvailDriverMemory;
}

/// {@category Struct}
class DD_GETBLTSTATUSDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_GLOBAL> lpDD;

  external Pointer<DD_SURFACE_LOCAL> lpDDSurface;

  @Uint32()
  external int dwFlags;

  @Int32()
  external int ddRVal;

  external Pointer GetBltStatus;
}

/// {@category Struct}
class DD_GETDRIVERINFODATA extends Struct {
  external Pointer dhpdev;

  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwFlags;

  external GUID guidInfo;

  @Uint32()
  external int dwExpectedSize;

  external Pointer lpvData;

  @Uint32()
  external int dwActualSize;

  @Int32()
  external int ddRVal;
}

/// {@category Struct}
class DD_GETDRIVERSTATEDATA extends Struct {
  @Uint32()
  external int dwFlags;

  external _DD_GETDRIVERSTATEDATA__Anonymous_e__Union Anonymous;

  external Pointer<Uint32> lpdwStates;

  @Uint32()
  external int dwLength;

  @Int32()
  external int ddRVal;
}

/// {@category Struct}
class _DD_GETDRIVERSTATEDATA__Anonymous_e__Union extends Union {
  external Pointer<DD_DIRECTDRAW_GLOBAL> lpDD;

  @IntPtr()
  external int dwhContext;
}

extension DD_GETDRIVERSTATEDATA_Extension on DD_GETDRIVERSTATEDATA {
  Pointer<DD_DIRECTDRAW_GLOBAL> get lpDD => this.Anonymous.lpDD;
  set lpDD(Pointer<DD_DIRECTDRAW_GLOBAL> value) => this.Anonymous.lpDD = value;

  int get dwhContext => this.Anonymous.dwhContext;
  set dwhContext(int value) => this.Anonymous.dwhContext = value;
}

/// {@category Struct}
class DD_GETFLIPSTATUSDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_GLOBAL> lpDD;

  external Pointer<DD_SURFACE_LOCAL> lpDDSurface;

  @Uint32()
  external int dwFlags;

  @Int32()
  external int ddRVal;

  external Pointer GetFlipStatus;
}

/// {@category Struct}
class DD_GETHEAPALIGNMENTDATA extends Struct {
  @IntPtr()
  external int dwInstance;

  @Uint32()
  external int dwHeap;

  @Int32()
  external int ddRVal;

  external Pointer GetHeapAlignment;

  external HEAPALIGNMENT Alignment;
}

/// {@category Struct}
class DD_GETINTERNALMOCOMPDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_LOCAL> lpDD;

  external Pointer<GUID> lpGuid;

  @Uint32()
  external int dwWidth;

  @Uint32()
  external int dwHeight;

  external DDPIXELFORMAT ddPixelFormat;

  @Uint32()
  external int dwScratchMemAlloc;

  @Int32()
  external int ddRVal;
}

/// {@category Struct}
class DD_GETMOCOMPCOMPBUFFDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_LOCAL> lpDD;

  external Pointer<GUID> lpGuid;

  @Uint32()
  external int dwWidth;

  @Uint32()
  external int dwHeight;

  external DDPIXELFORMAT ddPixelFormat;

  @Uint32()
  external int dwNumTypesCompBuffs;

  external Pointer<DDCOMPBUFFERINFO> lpCompBuffInfo;

  @Int32()
  external int ddRVal;
}

/// {@category Struct}
class DD_GETMOCOMPFORMATSDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_LOCAL> lpDD;

  external Pointer<GUID> lpGuid;

  @Uint32()
  external int dwNumFormats;

  external Pointer<DDPIXELFORMAT> lpFormats;

  @Int32()
  external int ddRVal;
}

/// {@category Struct}
class DD_GETMOCOMPGUIDSDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_LOCAL> lpDD;

  @Uint32()
  external int dwNumGuids;

  external Pointer<GUID> lpGuids;

  @Int32()
  external int ddRVal;
}

/// {@category Struct}
class DD_GETSCANLINEDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_GLOBAL> lpDD;

  @Uint32()
  external int dwScanLine;

  @Int32()
  external int ddRVal;

  external Pointer GetScanLine;
}

/// {@category Struct}
class DD_GETVPORTBANDWIDTHDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_LOCAL> lpDD;

  external Pointer<DD_VIDEOPORT_LOCAL> lpVideoPort;

  external Pointer<DDPIXELFORMAT> lpddpfFormat;

  @Uint32()
  external int dwWidth;

  @Uint32()
  external int dwHeight;

  @Uint32()
  external int dwFlags;

  external Pointer<DDVIDEOPORTBANDWIDTH> lpBandwidth;

  @Int32()
  external int ddRVal;

  external Pointer GetVideoPortBandwidth;
}

/// {@category Struct}
class DD_GETVPORTCONNECTDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_LOCAL> lpDD;

  @Uint32()
  external int dwPortId;

  external Pointer<DDVIDEOPORTCONNECT> lpConnect;

  @Uint32()
  external int dwNumEntries;

  @Int32()
  external int ddRVal;

  external Pointer GetVideoPortConnectInfo;
}

/// {@category Struct}
class DD_GETVPORTFIELDDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_LOCAL> lpDD;

  external Pointer<DD_VIDEOPORT_LOCAL> lpVideoPort;

  @Int32()
  external int bField;

  @Int32()
  external int ddRVal;

  external Pointer GetVideoPortField;
}

/// {@category Struct}
class DD_GETVPORTFLIPSTATUSDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_LOCAL> lpDD;

  @IntPtr()
  external int fpSurface;

  @Int32()
  external int ddRVal;

  external Pointer GetVideoPortFlipStatus;
}

/// {@category Struct}
class DD_GETVPORTINPUTFORMATDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_LOCAL> lpDD;

  external Pointer<DD_VIDEOPORT_LOCAL> lpVideoPort;

  @Uint32()
  external int dwFlags;

  external Pointer<DDPIXELFORMAT> lpddpfFormat;

  @Uint32()
  external int dwNumFormats;

  @Int32()
  external int ddRVal;

  external Pointer GetVideoPortInputFormats;
}

/// {@category Struct}
class DD_GETVPORTLINEDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_LOCAL> lpDD;

  external Pointer<DD_VIDEOPORT_LOCAL> lpVideoPort;

  @Uint32()
  external int dwLine;

  @Int32()
  external int ddRVal;

  external Pointer GetVideoPortLine;
}

/// {@category Struct}
class DD_GETVPORTOUTPUTFORMATDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_LOCAL> lpDD;

  external Pointer<DD_VIDEOPORT_LOCAL> lpVideoPort;

  @Uint32()
  external int dwFlags;

  external Pointer<DDPIXELFORMAT> lpddpfInputFormat;

  external Pointer<DDPIXELFORMAT> lpddpfOutputFormats;

  @Uint32()
  external int dwNumFormats;

  @Int32()
  external int ddRVal;

  external Pointer GetVideoPortInputFormats;
}

/// {@category Struct}
class DD_GETVPORTSIGNALDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_LOCAL> lpDD;

  external Pointer<DD_VIDEOPORT_LOCAL> lpVideoPort;

  @Uint32()
  external int dwStatus;

  @Int32()
  external int ddRVal;

  external Pointer GetVideoSignalStatus;
}

/// {@category Struct}
class DD_HALINFO extends Struct {
  @Uint32()
  external int dwSize;

  external VIDEOMEMORYINFO vmiData;

  external DDNTCORECAPS ddCaps;

  external Pointer<NativeFunction<PDD_GETDRIVERINFO>> GetDriverInfo;

  @Uint32()
  external int dwFlags;

  external Pointer lpD3DGlobalDriverData;

  external Pointer lpD3DHALCallbacks;

  external Pointer<DD_D3DBUFCALLBACKS> lpD3DBufCallbacks;
}

/// {@category Struct}
class DD_HALINFO_V4 extends Struct {
  @Uint32()
  external int dwSize;

  external VIDEOMEMORYINFO vmiData;

  external DDNTCORECAPS ddCaps;

  external Pointer<NativeFunction<PDD_GETDRIVERINFO>> GetDriverInfo;

  @Uint32()
  external int dwFlags;
}

/// {@category Struct}
class DD_KERNELCALLBACKS extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwFlags;

  external Pointer<NativeFunction<PDD_KERNELCB_SYNCSURFACE>> SyncSurfaceData;

  external Pointer<NativeFunction<PDD_KERNELCB_SYNCVIDEOPORT>>
      SyncVideoPortData;
}

/// {@category Struct}
class DD_LOCKDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_GLOBAL> lpDD;

  external Pointer<DD_SURFACE_LOCAL> lpDDSurface;

  @Uint32()
  external int bHasRect;

  external RECTL rArea;

  external Pointer lpSurfData;

  @Int32()
  external int ddRVal;

  external Pointer Lock;

  @Uint32()
  external int dwFlags;

  @IntPtr()
  external int fpProcess;
}

/// {@category Struct}
class DD_MAPMEMORYDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_GLOBAL> lpDD;

  @Int32()
  external int bMap;

  @IntPtr()
  external int hProcess;

  @IntPtr()
  external int fpProcess;

  @Int32()
  external int ddRVal;
}

/// {@category Struct}
class DD_MISCELLANEOUS2CALLBACKS extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwFlags;

  external Pointer<NativeFunction<PDD_ALPHABLT>> AlphaBlt;

  external Pointer<NativeFunction<PDD_CREATESURFACEEX>> CreateSurfaceEx;

  external Pointer<NativeFunction<PDD_GETDRIVERSTATE>> GetDriverState;

  external Pointer<NativeFunction<PDD_DESTROYDDLOCAL>> DestroyDDLocal;
}

/// {@category Struct}
class DD_MISCELLANEOUSCALLBACKS extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwFlags;

  external Pointer<NativeFunction<PDD_GETAVAILDRIVERMEMORY>>
      GetAvailDriverMemory;
}

/// {@category Struct}
class DD_MORECAPS extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwAlphaCaps;

  @Uint32()
  external int dwSVBAlphaCaps;

  @Uint32()
  external int dwVSBAlphaCaps;

  @Uint32()
  external int dwSSBAlphaCaps;

  @Uint32()
  external int dwFilterCaps;

  @Uint32()
  external int dwSVBFilterCaps;

  @Uint32()
  external int dwVSBFilterCaps;

  @Uint32()
  external int dwSSBFilterCaps;
}

/// {@category Struct}
class DD_MORESURFACECAPS extends Struct {
  @Uint32()
  external int dwSize;

  external DDSCAPSEX ddsCapsMore;

  @Array(1)
  external Array<_DD_MORESURFACECAPS_NTExtendedHeapRestrictions>
      ddsExtendedHeapRestrictions;
}

/// {@category Struct}
class _DD_MORESURFACECAPS_NTExtendedHeapRestrictions extends Struct {
  external DDSCAPSEX ddsCapsEx;

  external DDSCAPSEX ddsCapsExAlt;
}

/// {@category Struct}
class DD_MOTIONCOMPCALLBACKS extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwFlags;

  external Pointer<NativeFunction<PDD_MOCOMPCB_GETGUIDS>> GetMoCompGuids;

  external Pointer<NativeFunction<PDD_MOCOMPCB_GETFORMATS>> GetMoCompFormats;

  external Pointer<NativeFunction<PDD_MOCOMPCB_CREATE>> CreateMoComp;

  external Pointer<NativeFunction<PDD_MOCOMPCB_GETCOMPBUFFINFO>>
      GetMoCompBuffInfo;

  external Pointer<NativeFunction<PDD_MOCOMPCB_GETINTERNALINFO>>
      GetInternalMoCompInfo;

  external Pointer<NativeFunction<PDD_MOCOMPCB_BEGINFRAME>> BeginMoCompFrame;

  external Pointer<NativeFunction<PDD_MOCOMPCB_ENDFRAME>> EndMoCompFrame;

  external Pointer<NativeFunction<PDD_MOCOMPCB_RENDER>> RenderMoComp;

  external Pointer<NativeFunction<PDD_MOCOMPCB_QUERYSTATUS>> QueryMoCompStatus;

  external Pointer<NativeFunction<PDD_MOCOMPCB_DESTROY>> DestroyMoComp;
}

/// {@category Struct}
class DD_MOTIONCOMP_LOCAL extends Struct {
  external Pointer<DD_DIRECTDRAW_LOCAL> lpDD;

  external GUID guid;

  @Uint32()
  external int dwUncompWidth;

  @Uint32()
  external int dwUncompHeight;

  external DDPIXELFORMAT ddUncompPixelFormat;

  @Uint32()
  external int dwDriverReserved1;

  @Uint32()
  external int dwDriverReserved2;

  @Uint32()
  external int dwDriverReserved3;

  external Pointer lpDriverReserved1;

  external Pointer lpDriverReserved2;

  external Pointer lpDriverReserved3;
}

/// {@category Struct}
class DD_NONLOCALVIDMEMCAPS extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwNLVBCaps;

  @Uint32()
  external int dwNLVBCaps2;

  @Uint32()
  external int dwNLVBCKeyCaps;

  @Uint32()
  external int dwNLVBFXCaps;

  @Array(8)
  external Array<Uint32> dwNLVBRops;
}

/// {@category Struct}
class DD_NTCALLBACKS extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwFlags;

  external Pointer<NativeFunction<PDD_FREEDRIVERMEMORY>> FreeDriverMemory;

  external Pointer<NativeFunction<PDD_SETEXCLUSIVEMODE>> SetExclusiveMode;

  external Pointer<NativeFunction<PDD_FLIPTOGDISURFACE>> FlipToGDISurface;
}

/// {@category Struct}
class DD_NTPRIVATEDRIVERCAPS extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwPrivateCaps;
}

/// {@category Struct}
class DD_PALETTECALLBACKS extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwFlags;

  external Pointer<NativeFunction<PDD_PALCB_DESTROYPALETTE>> DestroyPalette;

  external Pointer<NativeFunction<PDD_PALCB_SETENTRIES>> SetEntries;
}

/// {@category Struct}
class DD_PALETTE_GLOBAL extends Struct {
  @IntPtr()
  external int dwReserved1;
}

/// {@category Struct}
class DD_PALETTE_LOCAL extends Struct {
  @Uint32()
  external int dwReserved0;

  @IntPtr()
  external int dwReserved1;
}

/// {@category Struct}
class DD_QUERYMOCOMPSTATUSDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_LOCAL> lpDD;

  external Pointer<DD_MOTIONCOMP_LOCAL> lpMoComp;

  external Pointer<DD_SURFACE_LOCAL> lpSurface;

  @Uint32()
  external int dwFlags;

  @Int32()
  external int ddRVal;
}

/// {@category Struct}
class DD_RENDERMOCOMPDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_LOCAL> lpDD;

  external Pointer<DD_MOTIONCOMP_LOCAL> lpMoComp;

  @Uint32()
  external int dwNumBuffers;

  external Pointer<DDMOCOMPBUFFERINFO> lpBufferInfo;

  @Uint32()
  external int dwFunction;

  external Pointer lpInputData;

  @Uint32()
  external int dwInputDataSize;

  external Pointer lpOutputData;

  @Uint32()
  external int dwOutputDataSize;

  @Int32()
  external int ddRVal;
}

/// {@category Struct}
class DD_SETCLIPLISTDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_GLOBAL> lpDD;

  external Pointer<DD_SURFACE_LOCAL> lpDDSurface;

  @Int32()
  external int ddRVal;

  external Pointer SetClipList;
}

/// {@category Struct}
class DD_SETCOLORKEYDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_GLOBAL> lpDD;

  external Pointer<DD_SURFACE_LOCAL> lpDDSurface;

  @Uint32()
  external int dwFlags;

  external DDCOLORKEY ckNew;

  @Int32()
  external int ddRVal;

  external Pointer SetColorKey;
}

/// {@category Struct}
class DD_SETENTRIESDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_GLOBAL> lpDD;

  external Pointer<DD_PALETTE_GLOBAL> lpDDPalette;

  @Uint32()
  external int dwBase;

  @Uint32()
  external int dwNumEntries;

  external Pointer<PALETTEENTRY> lpEntries;

  @Int32()
  external int ddRVal;

  external Pointer SetEntries;
}

/// {@category Struct}
class DD_SETEXCLUSIVEMODEDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_GLOBAL> lpDD;

  @Uint32()
  external int dwEnterExcl;

  @Uint32()
  external int dwReserved;

  @Int32()
  external int ddRVal;

  external Pointer SetExclusiveMode;
}

/// {@category Struct}
class DD_SETOVERLAYPOSITIONDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_GLOBAL> lpDD;

  external Pointer<DD_SURFACE_LOCAL> lpDDSrcSurface;

  external Pointer<DD_SURFACE_LOCAL> lpDDDestSurface;

  @Int32()
  external int lXPos;

  @Int32()
  external int lYPos;

  @Int32()
  external int ddRVal;

  external Pointer SetOverlayPosition;
}

/// {@category Struct}
class DD_SETPALETTEDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_GLOBAL> lpDD;

  external Pointer<DD_SURFACE_LOCAL> lpDDSurface;

  external Pointer<DD_PALETTE_GLOBAL> lpDDPalette;

  @Int32()
  external int ddRVal;

  external Pointer SetPalette;

  @Int32()
  external int Attach;
}

/// {@category Struct}
class DD_STEREOMODE extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwHeight;

  @Uint32()
  external int dwWidth;

  @Uint32()
  external int dwBpp;

  @Uint32()
  external int dwRefreshRate;

  @Int32()
  external int bSupported;
}

/// {@category Struct}
class DD_SURFACECALLBACKS extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwFlags;

  external Pointer<NativeFunction<PDD_SURFCB_DESTROYSURFACE>> DestroySurface;

  external Pointer<NativeFunction<PDD_SURFCB_FLIP>> Flip;

  external Pointer<NativeFunction<PDD_SURFCB_SETCLIPLIST>> SetClipList;

  external Pointer<NativeFunction<PDD_SURFCB_LOCK>> Lock;

  external Pointer<NativeFunction<PDD_SURFCB_UNLOCK>> Unlock;

  external Pointer<NativeFunction<PDD_SURFCB_BLT>> Blt;

  external Pointer<NativeFunction<PDD_SURFCB_SETCOLORKEY>> SetColorKey;

  external Pointer<NativeFunction<PDD_SURFCB_ADDATTACHEDSURFACE>>
      AddAttachedSurface;

  external Pointer<NativeFunction<PDD_SURFCB_GETBLTSTATUS>> GetBltStatus;

  external Pointer<NativeFunction<PDD_SURFCB_GETFLIPSTATUS>> GetFlipStatus;

  external Pointer<NativeFunction<PDD_SURFCB_UPDATEOVERLAY>> UpdateOverlay;

  external Pointer<NativeFunction<PDD_SURFCB_SETOVERLAYPOSITION>>
      SetOverlayPosition;

  external Pointer reserved4;

  external Pointer<NativeFunction<PDD_SURFCB_SETPALETTE>> SetPalette;
}

/// {@category Struct}
class DD_SURFACE_GLOBAL extends Struct {
  external _DD_SURFACE_GLOBAL__Anonymous1_e__Union Anonymous1;

  external _DD_SURFACE_GLOBAL__Anonymous2_e__Union Anonymous2;

  @IntPtr()
  external int fpVidMem;

  external _DD_SURFACE_GLOBAL__Anonymous3_e__Union Anonymous3;

  @Int32()
  external int yHint;

  @Int32()
  external int xHint;

  @Uint32()
  external int wHeight;

  @Uint32()
  external int wWidth;

  @IntPtr()
  external int dwReserved1;

  external DDPIXELFORMAT ddpfSurface;

  @IntPtr()
  external int fpHeapOffset;

  @IntPtr()
  external int hCreatorProcess;
}

/// {@category Struct}
class _DD_SURFACE_GLOBAL__Anonymous1_e__Union extends Union {
  @Uint32()
  external int dwBlockSizeY;

  @Int32()
  external int lSlicePitch;
}

extension DD_SURFACE_GLOBAL_Extension on DD_SURFACE_GLOBAL {
  int get dwBlockSizeY => this.Anonymous1.dwBlockSizeY;
  set dwBlockSizeY(int value) => this.Anonymous1.dwBlockSizeY = value;

  int get lSlicePitch => this.Anonymous1.lSlicePitch;
  set lSlicePitch(int value) => this.Anonymous1.lSlicePitch = value;
}

/// {@category Struct}
class _DD_SURFACE_GLOBAL__Anonymous2_e__Union extends Union {
  external Pointer<VIDEOMEMORY> lpVidMemHeap;

  @Uint32()
  external int dwBlockSizeX;

  @Uint32()
  external int dwUserMemSize;
}

extension DD_SURFACE_GLOBAL_Extension_1 on DD_SURFACE_GLOBAL {
  Pointer<VIDEOMEMORY> get lpVidMemHeap => this.Anonymous2.lpVidMemHeap;
  set lpVidMemHeap(Pointer<VIDEOMEMORY> value) =>
      this.Anonymous2.lpVidMemHeap = value;

  int get dwBlockSizeX => this.Anonymous2.dwBlockSizeX;
  set dwBlockSizeX(int value) => this.Anonymous2.dwBlockSizeX = value;

  int get dwUserMemSize => this.Anonymous2.dwUserMemSize;
  set dwUserMemSize(int value) => this.Anonymous2.dwUserMemSize = value;
}

/// {@category Struct}
class _DD_SURFACE_GLOBAL__Anonymous3_e__Union extends Union {
  @Int32()
  external int lPitch;

  @Uint32()
  external int dwLinearSize;
}

extension DD_SURFACE_GLOBAL_Extension_2 on DD_SURFACE_GLOBAL {
  int get lPitch => this.Anonymous3.lPitch;
  set lPitch(int value) => this.Anonymous3.lPitch = value;

  int get dwLinearSize => this.Anonymous3.dwLinearSize;
  set dwLinearSize(int value) => this.Anonymous3.dwLinearSize = value;
}

/// {@category Struct}
class DD_SURFACE_INT extends Struct {
  external Pointer<DD_SURFACE_LOCAL> lpLcl;
}

/// {@category Struct}
class DD_SURFACE_LOCAL extends Struct {
  external Pointer<DD_SURFACE_GLOBAL> lpGbl;

  @Uint32()
  external int dwFlags;

  external DDSCAPS ddsCaps;

  @IntPtr()
  external int dwReserved1;

  external _DD_SURFACE_LOCAL__Anonymous1_e__Union Anonymous1;

  external _DD_SURFACE_LOCAL__Anonymous2_e__Union Anonymous2;

  external Pointer<DD_SURFACE_MORE> lpSurfMore;

  external Pointer<DD_ATTACHLIST> lpAttachList;

  external Pointer<DD_ATTACHLIST> lpAttachListFrom;

  external RECT rcOverlaySrc;
}

/// {@category Struct}
class _DD_SURFACE_LOCAL__Anonymous1_e__Union extends Union {
  external DDCOLORKEY ddckCKSrcOverlay;

  external DDCOLORKEY ddckCKSrcBlt;
}

extension DD_SURFACE_LOCAL_Extension on DD_SURFACE_LOCAL {
  DDCOLORKEY get ddckCKSrcOverlay => this.Anonymous1.ddckCKSrcOverlay;
  set ddckCKSrcOverlay(DDCOLORKEY value) =>
      this.Anonymous1.ddckCKSrcOverlay = value;

  DDCOLORKEY get ddckCKSrcBlt => this.Anonymous1.ddckCKSrcBlt;
  set ddckCKSrcBlt(DDCOLORKEY value) => this.Anonymous1.ddckCKSrcBlt = value;
}

/// {@category Struct}
class _DD_SURFACE_LOCAL__Anonymous2_e__Union extends Union {
  external DDCOLORKEY ddckCKDestOverlay;

  external DDCOLORKEY ddckCKDestBlt;
}

extension DD_SURFACE_LOCAL_Extension_1 on DD_SURFACE_LOCAL {
  DDCOLORKEY get ddckCKDestOverlay => this.Anonymous2.ddckCKDestOverlay;
  set ddckCKDestOverlay(DDCOLORKEY value) =>
      this.Anonymous2.ddckCKDestOverlay = value;

  DDCOLORKEY get ddckCKDestBlt => this.Anonymous2.ddckCKDestBlt;
  set ddckCKDestBlt(DDCOLORKEY value) => this.Anonymous2.ddckCKDestBlt = value;
}

/// {@category Struct}
class DD_SURFACE_MORE extends Struct {
  @Uint32()
  external int dwMipMapCount;

  external Pointer<DD_VIDEOPORT_LOCAL> lpVideoPort;

  @Uint32()
  external int dwOverlayFlags;

  external DDSCAPSEX ddsCapsEx;

  @Uint32()
  external int dwSurfaceHandle;
}

/// {@category Struct}
class DD_SYNCSURFACEDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_LOCAL> lpDD;

  external Pointer<DD_SURFACE_LOCAL> lpDDSurface;

  @Uint32()
  external int dwSurfaceOffset;

  @IntPtr()
  external int fpLockPtr;

  @Int32()
  external int lPitch;

  @Uint32()
  external int dwOverlayOffset;

  @Uint32()
  external int dwDriverReserved1;

  @Uint32()
  external int dwDriverReserved2;

  @Uint32()
  external int dwDriverReserved3;

  @Uint32()
  external int dwDriverReserved4;

  @Int32()
  external int ddRVal;
}

/// {@category Struct}
class DD_SYNCVIDEOPORTDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_LOCAL> lpDD;

  external Pointer<DD_VIDEOPORT_LOCAL> lpVideoPort;

  @Uint32()
  external int dwOriginOffset;

  @Uint32()
  external int dwHeight;

  @Uint32()
  external int dwVBIHeight;

  @Uint32()
  external int dwDriverReserved1;

  @Uint32()
  external int dwDriverReserved2;

  @Uint32()
  external int dwDriverReserved3;

  @Int32()
  external int ddRVal;
}

/// {@category Struct}
class DD_UNLOCKDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_GLOBAL> lpDD;

  external Pointer<DD_SURFACE_LOCAL> lpDDSurface;

  @Int32()
  external int ddRVal;

  external Pointer Unlock;
}

/// {@category Struct}
class DD_UPDATENONLOCALHEAPDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_GLOBAL> lpDD;

  @Uint32()
  external int dwHeap;

  @IntPtr()
  external int fpGARTLin;

  @IntPtr()
  external int fpGARTDev;

  @IntPtr()
  external int ulPolicyMaxBytes;

  @Int32()
  external int ddRVal;

  external Pointer UpdateNonLocalHeap;
}

/// {@category Struct}
class DD_UPDATEOVERLAYDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_GLOBAL> lpDD;

  external Pointer<DD_SURFACE_LOCAL> lpDDDestSurface;

  external RECTL rDest;

  external Pointer<DD_SURFACE_LOCAL> lpDDSrcSurface;

  external RECTL rSrc;

  @Uint32()
  external int dwFlags;

  external DDOVERLAYFX overlayFX;

  @Int32()
  external int ddRVal;

  external Pointer UpdateOverlay;
}

/// {@category Struct}
class DD_UPDATEVPORTDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_LOCAL> lpDD;

  external Pointer<DD_VIDEOPORT_LOCAL> lpVideoPort;

  external Pointer<Pointer<DD_SURFACE_INT>> lplpDDSurface;

  external Pointer<Pointer<DD_SURFACE_INT>> lplpDDVBISurface;

  external Pointer<DDVIDEOPORTINFO> lpVideoInfo;

  @Uint32()
  external int dwFlags;

  @Uint32()
  external int dwNumAutoflip;

  @Uint32()
  external int dwNumVBIAutoflip;

  @Int32()
  external int ddRVal;

  external Pointer UpdateVideoPort;
}

/// {@category Struct}
class DD_VIDEOPORTCALLBACKS extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwFlags;

  external Pointer<NativeFunction<PDD_VPORTCB_CANCREATEVIDEOPORT>>
      CanCreateVideoPort;

  external Pointer<NativeFunction<PDD_VPORTCB_CREATEVIDEOPORT>> CreateVideoPort;

  external Pointer<NativeFunction<PDD_VPORTCB_FLIP>> FlipVideoPort;

  external Pointer<NativeFunction<PDD_VPORTCB_GETBANDWIDTH>>
      GetVideoPortBandwidth;

  external Pointer<NativeFunction<PDD_VPORTCB_GETINPUTFORMATS>>
      GetVideoPortInputFormats;

  external Pointer<NativeFunction<PDD_VPORTCB_GETOUTPUTFORMATS>>
      GetVideoPortOutputFormats;

  external Pointer lpReserved1;

  external Pointer<NativeFunction<PDD_VPORTCB_GETFIELD>> GetVideoPortField;

  external Pointer<NativeFunction<PDD_VPORTCB_GETLINE>> GetVideoPortLine;

  external Pointer<NativeFunction<PDD_VPORTCB_GETVPORTCONNECT>>
      GetVideoPortConnectInfo;

  external Pointer<NativeFunction<PDD_VPORTCB_DESTROYVPORT>> DestroyVideoPort;

  external Pointer<NativeFunction<PDD_VPORTCB_GETFLIPSTATUS>>
      GetVideoPortFlipStatus;

  external Pointer<NativeFunction<PDD_VPORTCB_UPDATE>> UpdateVideoPort;

  external Pointer<NativeFunction<PDD_VPORTCB_WAITFORSYNC>>
      WaitForVideoPortSync;

  external Pointer<NativeFunction<PDD_VPORTCB_GETSIGNALSTATUS>>
      GetVideoSignalStatus;

  external Pointer<NativeFunction<PDD_VPORTCB_COLORCONTROL>> ColorControl;
}

/// {@category Struct}
class DD_VIDEOPORT_LOCAL extends Struct {
  external Pointer<DD_DIRECTDRAW_LOCAL> lpDD;

  external DDVIDEOPORTDESC ddvpDesc;

  external DDVIDEOPORTINFO ddvpInfo;

  external Pointer<DD_SURFACE_INT> lpSurface;

  external Pointer<DD_SURFACE_INT> lpVBISurface;

  @Uint32()
  external int dwNumAutoflip;

  @Uint32()
  external int dwNumVBIAutoflip;

  @IntPtr()
  external int dwReserved1;

  @IntPtr()
  external int dwReserved2;

  @IntPtr()
  external int dwReserved3;
}

/// {@category Struct}
class DD_VPORTCOLORDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_LOCAL> lpDD;

  external Pointer<DD_VIDEOPORT_LOCAL> lpVideoPort;

  @Uint32()
  external int dwFlags;

  external Pointer<DDCOLORCONTROL> lpColorData;

  @Int32()
  external int ddRVal;

  external Pointer ColorControl;
}

/// {@category Struct}
class DD_WAITFORVERTICALBLANKDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_GLOBAL> lpDD;

  @Uint32()
  external int dwFlags;

  @Uint32()
  external int bIsInVB;

  @IntPtr()
  external int hEvent;

  @Int32()
  external int ddRVal;

  external Pointer WaitForVerticalBlank;
}

/// {@category Struct}
class DD_WAITFORVPORTSYNCDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_LOCAL> lpDD;

  external Pointer<DD_VIDEOPORT_LOCAL> lpVideoPort;

  @Uint32()
  external int dwFlags;

  @Uint32()
  external int dwLine;

  @Uint32()
  external int dwTimeOut;

  @Int32()
  external int ddRVal;

  external Pointer UpdateVideoPort;
}

/// {@category Struct}
class DXAPI_INTERFACE extends Struct {
  @Uint16()
  external int Size;

  @Uint16()
  external int Version;

  external Pointer Context;

  external Pointer InterfaceReference;

  external Pointer InterfaceDereference;

  external Pointer<NativeFunction<PDX_GETIRQINFO>> DxGetIrqInfo;

  external Pointer<NativeFunction<PDX_ENABLEIRQ>> DxEnableIrq;

  external Pointer<NativeFunction<PDX_SKIPNEXTFIELD>> DxSkipNextField;

  external Pointer<NativeFunction<PDX_BOBNEXTFIELD>> DxBobNextField;

  external Pointer<NativeFunction<PDX_SETSTATE>> DxSetState;

  external Pointer<NativeFunction<PDX_LOCK>> DxLock;

  external Pointer<NativeFunction<PDX_FLIPOVERLAY>> DxFlipOverlay;

  external Pointer<NativeFunction<PDX_FLIPVIDEOPORT>> DxFlipVideoPort;

  external Pointer<NativeFunction<PDX_GETPOLARITY>> DxGetPolarity;

  external Pointer<NativeFunction<PDX_GETCURRENTAUTOFLIP>> DxGetCurrentAutoflip;

  external Pointer<NativeFunction<PDX_GETPREVIOUSAUTOFLIP>>
      DxGetPreviousAutoflip;

  external Pointer<NativeFunction<PDX_TRANSFER>> DxTransfer;

  external Pointer<NativeFunction<PDX_GETTRANSFERSTATUS>> DxGetTransferStatus;
}

/// {@category Struct}
class DX_IRQDATA extends Struct {
  @Uint32()
  external int dwIrqFlags;
}

/// {@category Struct}
class HEAPALIAS extends Struct {
  @IntPtr()
  external int fpVidMem;

  external Pointer lpAlias;

  @Uint32()
  external int dwAliasSize;
}

/// {@category Struct}
class HEAPALIASINFO extends Struct {
  @Uint32()
  external int dwRefCnt;

  @Uint32()
  external int dwFlags;

  @Uint32()
  external int dwNumHeaps;

  external Pointer<HEAPALIAS> lpAliases;
}

/// {@category Struct}
class HEAPALIGNMENT extends Struct {
  @Uint32()
  external int dwSize;

  external DDSCAPS ddsCaps;

  @Uint32()
  external int dwReserved;

  external SURFACEALIGNMENT ExecuteBuffer;

  external SURFACEALIGNMENT Overlay;

  external SURFACEALIGNMENT Texture;

  external SURFACEALIGNMENT ZBuffer;

  external SURFACEALIGNMENT AlphaBuffer;

  external SURFACEALIGNMENT Offscreen;

  external SURFACEALIGNMENT FlipTarget;
}

/// {@category Struct}
class IDDVideoPortContainerVtbl extends Opaque {}

/// {@category Struct}
class IDirectDraw2Vtbl extends Opaque {}

/// {@category Struct}
class IDirectDraw4Vtbl extends Opaque {}

/// {@category Struct}
class IDirectDraw7Vtbl extends Opaque {}

/// {@category Struct}
class IDirectDrawClipperVtbl extends Opaque {}

/// {@category Struct}
class IDirectDrawColorControlVtbl extends Opaque {}

/// {@category Struct}
class IDirectDrawGammaControlVtbl extends Opaque {}

/// {@category Struct}
class IDirectDrawKernelVtbl extends Opaque {}

/// {@category Struct}
class IDirectDrawPaletteVtbl extends Opaque {}

/// {@category Struct}
class IDirectDrawSurface2Vtbl extends Opaque {}

/// {@category Struct}
class IDirectDrawSurface3Vtbl extends Opaque {}

/// {@category Struct}
class IDirectDrawSurface4Vtbl extends Opaque {}

/// {@category Struct}
class IDirectDrawSurface7Vtbl extends Opaque {}

/// {@category Struct}
class IDirectDrawSurfaceKernelVtbl extends Opaque {}

/// {@category Struct}
class IDirectDrawSurfaceVtbl extends Opaque {}

/// {@category Struct}
class IDirectDrawVideoPortNotifyVtbl extends Opaque {}

/// {@category Struct}
class IDirectDrawVideoPortVtbl extends Opaque {}

/// {@category Struct}
class IDirectDrawVtbl extends Opaque {}

/// {@category Struct}
class IUNKNOWN_LIST extends Struct {
  external Pointer<IUNKNOWN_LIST> lpLink;

  external Pointer<GUID> lpGuid;

  external Pointer<COMObject> lpIUnknown;
}

/// {@category Struct}
class MDL extends Struct {
  external Pointer<MDL> MdlNext;

  @Int16()
  external int MdlSize;

  @Int16()
  external int MdlFlags;

  external Pointer<_MDL__EPROCESS> Process;

  external Pointer<Uint32> lpMappedSystemVa;

  external Pointer<Uint32> lpStartVa;

  @Uint32()
  external int ByteCount;

  @Uint32()
  external int ByteOffset;
}

/// {@category Struct}
class _MDL__EPROCESS extends Opaque {}

/// {@category Struct}
class PROCESS_LIST extends Struct {
  external Pointer<PROCESS_LIST> lpLink;

  @Uint32()
  external int dwProcessId;

  @Uint32()
  external int dwRefCnt;

  @Uint32()
  external int dwAlphaDepth;

  @Uint32()
  external int dwZDepth;
}

/// {@category Struct}
class SURFACEALIGNMENT extends Struct {
  external _SURFACEALIGNMENT__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _SURFACEALIGNMENT__Anonymous_e__Union extends Union {
  external _SURFACEALIGNMENT__Anonymous_e__Union__Linear_e__Struct Linear;

  external _SURFACEALIGNMENT__Anonymous_e__Union__Rectangular_e__Struct
      Rectangular;
}

/// {@category Struct}
class _SURFACEALIGNMENT__Anonymous_e__Union__Linear_e__Struct extends Struct {
  @Uint32()
  external int dwStartAlignment;

  @Uint32()
  external int dwPitchAlignment;

  @Uint32()
  external int dwFlags;

  @Uint32()
  external int dwReserved2;
}

extension SURFACEALIGNMENT__Anonymous_e__Union_Extension on SURFACEALIGNMENT {
  int get dwStartAlignment => this.Anonymous.Linear.dwStartAlignment;
  set dwStartAlignment(int value) =>
      this.Anonymous.Linear.dwStartAlignment = value;

  int get dwPitchAlignment => this.Anonymous.Linear.dwPitchAlignment;
  set dwPitchAlignment(int value) =>
      this.Anonymous.Linear.dwPitchAlignment = value;

  int get dwFlags => this.Anonymous.Linear.dwFlags;
  set dwFlags(int value) => this.Anonymous.Linear.dwFlags = value;

  int get dwReserved2 => this.Anonymous.Linear.dwReserved2;
  set dwReserved2(int value) => this.Anonymous.Linear.dwReserved2 = value;
}

/// {@category Struct}
class _SURFACEALIGNMENT__Anonymous_e__Union__Rectangular_e__Struct
    extends Struct {
  @Uint32()
  external int dwXAlignment;

  @Uint32()
  external int dwYAlignment;

  @Uint32()
  external int dwFlags;

  @Uint32()
  external int dwReserved2;
}

extension SURFACEALIGNMENT__Anonymous_e__Union_Extension_1 on SURFACEALIGNMENT {
  int get dwXAlignment => this.Anonymous.Rectangular.dwXAlignment;
  set dwXAlignment(int value) =>
      this.Anonymous.Rectangular.dwXAlignment = value;

  int get dwYAlignment => this.Anonymous.Rectangular.dwYAlignment;
  set dwYAlignment(int value) =>
      this.Anonymous.Rectangular.dwYAlignment = value;

  int get dwFlags => this.Anonymous.Rectangular.dwFlags;
  set dwFlags(int value) => this.Anonymous.Rectangular.dwFlags = value;

  int get dwReserved2 => this.Anonymous.Rectangular.dwReserved2;
  set dwReserved2(int value) => this.Anonymous.Rectangular.dwReserved2 = value;
}

extension SURFACEALIGNMENT_Extension on SURFACEALIGNMENT {
  _SURFACEALIGNMENT__Anonymous_e__Union__Linear_e__Struct get Linear =>
      this.Anonymous.Linear;
  set Linear(_SURFACEALIGNMENT__Anonymous_e__Union__Linear_e__Struct value) =>
      this.Anonymous.Linear = value;

  _SURFACEALIGNMENT__Anonymous_e__Union__Rectangular_e__Struct
      get Rectangular => this.Anonymous.Rectangular;
  set Rectangular(
          _SURFACEALIGNMENT__Anonymous_e__Union__Rectangular_e__Struct value) =>
      this.Anonymous.Rectangular = value;
}

/// {@category Struct}
class VIDEOMEMORY extends Struct {
  @Uint32()
  external int dwFlags;

  @IntPtr()
  external int fpStart;

  external _VIDEOMEMORY__Anonymous1_e__Union Anonymous1;

  external DDSCAPS ddsCaps;

  external DDSCAPS ddsCapsAlt;

  external _VIDEOMEMORY__Anonymous2_e__Union Anonymous2;
}

/// {@category Struct}
class _VIDEOMEMORY__Anonymous1_e__Union extends Union {
  @IntPtr()
  external int fpEnd;

  @Uint32()
  external int dwWidth;
}

extension VIDEOMEMORY_Extension on VIDEOMEMORY {
  int get fpEnd => this.Anonymous1.fpEnd;
  set fpEnd(int value) => this.Anonymous1.fpEnd = value;

  int get dwWidth => this.Anonymous1.dwWidth;
  set dwWidth(int value) => this.Anonymous1.dwWidth = value;
}

/// {@category Struct}
class _VIDEOMEMORY__Anonymous2_e__Union extends Union {
  external Pointer<VMEMHEAP> lpHeap;

  @Uint32()
  external int dwHeight;
}

extension VIDEOMEMORY_Extension_1 on VIDEOMEMORY {
  Pointer<VMEMHEAP> get lpHeap => this.Anonymous2.lpHeap;
  set lpHeap(Pointer<VMEMHEAP> value) => this.Anonymous2.lpHeap = value;

  int get dwHeight => this.Anonymous2.dwHeight;
  set dwHeight(int value) => this.Anonymous2.dwHeight = value;
}

/// {@category Struct}
class VIDEOMEMORYINFO extends Struct {
  @IntPtr()
  external int fpPrimary;

  @Uint32()
  external int dwFlags;

  @Uint32()
  external int dwDisplayWidth;

  @Uint32()
  external int dwDisplayHeight;

  @Int32()
  external int lDisplayPitch;

  external DDPIXELFORMAT ddpfDisplay;

  @Uint32()
  external int dwOffscreenAlign;

  @Uint32()
  external int dwOverlayAlign;

  @Uint32()
  external int dwTextureAlign;

  @Uint32()
  external int dwZBufferAlign;

  @Uint32()
  external int dwAlphaAlign;

  external Pointer pvPrimary;
}

/// {@category Struct}
class VIDMEM extends Struct {
  @Uint32()
  external int dwFlags;

  @IntPtr()
  external int fpStart;

  external _VIDMEM__Anonymous1_e__Union Anonymous1;

  external DDSCAPS ddsCaps;

  external DDSCAPS ddsCapsAlt;

  external _VIDMEM__Anonymous2_e__Union Anonymous2;
}

/// {@category Struct}
class _VIDMEM__Anonymous1_e__Union extends Union {
  @IntPtr()
  external int fpEnd;

  @Uint32()
  external int dwWidth;
}

extension VIDMEM_Extension on VIDMEM {
  int get fpEnd => this.Anonymous1.fpEnd;
  set fpEnd(int value) => this.Anonymous1.fpEnd = value;

  int get dwWidth => this.Anonymous1.dwWidth;
  set dwWidth(int value) => this.Anonymous1.dwWidth = value;
}

/// {@category Struct}
class _VIDMEM__Anonymous2_e__Union extends Union {
  external Pointer<VMEMHEAP> lpHeap;

  @Uint32()
  external int dwHeight;
}

extension VIDMEM_Extension_1 on VIDMEM {
  Pointer<VMEMHEAP> get lpHeap => this.Anonymous2.lpHeap;
  set lpHeap(Pointer<VMEMHEAP> value) => this.Anonymous2.lpHeap = value;

  int get dwHeight => this.Anonymous2.dwHeight;
  set dwHeight(int value) => this.Anonymous2.dwHeight = value;
}

/// {@category Struct}
class VIDMEMINFO extends Struct {
  @IntPtr()
  external int fpPrimary;

  @Uint32()
  external int dwFlags;

  @Uint32()
  external int dwDisplayWidth;

  @Uint32()
  external int dwDisplayHeight;

  @Int32()
  external int lDisplayPitch;

  external DDPIXELFORMAT ddpfDisplay;

  @Uint32()
  external int dwOffscreenAlign;

  @Uint32()
  external int dwOverlayAlign;

  @Uint32()
  external int dwTextureAlign;

  @Uint32()
  external int dwZBufferAlign;

  @Uint32()
  external int dwAlphaAlign;

  @Uint32()
  external int dwNumHeaps;

  external Pointer<VIDMEM> pvmList;
}

/// {@category Struct}
class VMEMHEAP extends Struct {
  @Uint32()
  external int dwFlags;

  @Uint32()
  external int stride;

  external Pointer freeList;

  external Pointer allocList;

  @Uint32()
  external int dwTotalSize;

  @IntPtr()
  external int fpGARTLin;

  @IntPtr()
  external int fpGARTDev;

  @Uint32()
  external int dwCommitedSize;

  @Uint32()
  external int dwCoalesceCount;

  external HEAPALIGNMENT Alignment;

  external DDSCAPSEX ddsCapsEx;

  external DDSCAPSEX ddsCapsExAlt;

  @Int64()
  external int liPhysAGPBase;

  @IntPtr()
  external int hdevAGP;

  external Pointer pvPhysRsrv;

  external Pointer<Uint8> pAgpCommitMask;

  @Uint32()
  external int dwAgpCommitMaskSize;
}

/// {@category Struct}
class VMEML extends Struct {
  external Pointer<VMEML> next;

  @IntPtr()
  external int ptr;

  @Uint32()
  external int size;

  @Int32()
  external int bDiscardable;
}

/// {@category Struct}
class VMEMR extends Struct {
  external Pointer<VMEMR> next;

  external Pointer<VMEMR> prev;

  external Pointer<VMEMR> pUp;

  external Pointer<VMEMR> pDown;

  external Pointer<VMEMR> pLeft;

  external Pointer<VMEMR> pRight;

  @IntPtr()
  external int ptr;

  @Uint32()
  external int size;

  @Uint32()
  external int x;

  @Uint32()
  external int y;

  @Uint32()
  external int cx;

  @Uint32()
  external int cy;

  @Uint32()
  external int flags;

  @IntPtr()
  external int pBits;

  @Int32()
  external int bDiscardable;
}

/// {@category Struct}
class DDFXROP extends Opaque {}

/// {@category Struct}
class DD_DESTROYDRIVERDATA extends Opaque {}

/// {@category Struct}
class DD_GETVPORTAUTOFLIPSURFACEDATA extends Opaque {}

/// {@category Struct}
class DD_SETMODEDATA extends Opaque {}
