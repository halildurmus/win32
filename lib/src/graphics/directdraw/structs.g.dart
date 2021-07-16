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
import '../../ui/displaydevices/structs.g.dart';
import '../../graphics/gdi/structs.g.dart';
import '../../system/com/IUnknown.dart';
import '../../ui/displaydevices/callbacks.g.dart';

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
  external COMObject lpDDSSrc;
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
  @Uint32()
  external int Anonymous1;
  @Uint32()
  external int dwZSrcConstBitDepth;
  @Uint32()
  external int Anonymous2;
  @Uint32()
  external int dwAlphaEdgeBlendBitDepth;
  @Uint32()
  external int dwAlphaEdgeBlend;
  @Uint32()
  external int dwReserved;
  @Uint32()
  external int dwAlphaDestConstBitDepth;
  @Uint32()
  external int Anonymous3;
  @Uint32()
  external int dwAlphaSrcConstBitDepth;
  @Uint32()
  external int Anonymous4;
  @Uint32()
  external int Anonymous5;
  external DDCOLORKEY ddckDestColorkey;
  external DDCOLORKEY ddckSrcColorkey;
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
class DDGAMMARAMP extends Struct {
  @Array(256)
  external Array<Uint16> red;
  @Array(256)
  external Array<Uint16> green;
  @Array(256)
  external Array<Uint16> blue;
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
  @Uint32()
  external int Anonymous;
  external Pointer<Uint32> lpdwStates;
  @Uint32()
  external int dwLength;
  @Int32()
  external int ddRVal;
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
  external Array<Uint32> ddsExtendedHeapRestrictions;
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
  @Uint32()
  external int Anonymous1;
  @Uint32()
  external int dwAlphaSrcConstBitDepth;
  @Uint32()
  external int Anonymous2;
  external DDCOLORKEY dckDestColorkey;
  external DDCOLORKEY dckSrcColorkey;
  @Uint32()
  external int dwDDFX;
  @Uint32()
  external int dwFlags;
}

/// {@category Struct}
class DDPIXELFORMAT extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int dwFlags;
  @Uint32()
  external int dwFourCC;
  @Uint32()
  external int Anonymous1;
  @Uint32()
  external int Anonymous2;
  @Uint32()
  external int Anonymous3;
  @Uint32()
  external int Anonymous4;
  @Uint32()
  external int Anonymous5;
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
  external COMObject pUnkOuter;
  external Pointer<DDRAWI_DIRECTDRAW_INT> lpDD_int;
  @IntPtr()
  external int dwReserved1;
  external COMObject pAddrefedThisOwner;
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
  @Uint32()
  external int Anonymous;
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
  external COMObject pUnkOuter;
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
  @Uint32()
  external int Anonymous1;
  @Uint32()
  external int Anonymous2;
  @Uint32()
  external int Anonymous3;
  @IntPtr()
  external int fpVidMem;
  @Uint32()
  external int Anonymous4;
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
class DDRAWI_DDRAWSURFACE_GBL_MORE extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int Anonymous;
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
  @Uint32()
  external int Anonymous1;
  @Uint32()
  external int Anonymous2;
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
  external COMObject pUnkOuter;
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
  external COMObject pD3DIUnknown;
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
  @Uint32()
  external int Anonymous;
}

/// {@category Struct}
class DDSCAPSEX extends Struct {
  @Uint32()
  external int dwCaps2;
  @Uint32()
  external int dwCaps3;
  @Uint32()
  external int Anonymous;
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
class DDSURFACEDESC extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int dwFlags;
  @Uint32()
  external int dwHeight;
  @Uint32()
  external int dwWidth;
  @Uint32()
  external int Anonymous1;
  @Uint32()
  external int dwBackBufferCount;
  @Uint32()
  external int Anonymous2;
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
class DDSURFACEDESC2 extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int dwFlags;
  @Uint32()
  external int dwHeight;
  @Uint32()
  external int dwWidth;
  @Uint32()
  external int Anonymous1;
  @Uint32()
  external int Anonymous2;
  @Uint32()
  external int Anonymous3;
  @Uint32()
  external int dwAlphaBitDepth;
  @Uint32()
  external int dwReserved;
  external Pointer lpSurface;
  @Uint32()
  external int Anonymous4;
  external DDCOLORKEY ddckCKDestBlt;
  external DDCOLORKEY ddckCKSrcOverlay;
  external DDCOLORKEY ddckCKSrcBlt;
  @Uint32()
  external int Anonymous5;
  external DDSCAPS2 ddsCaps;
  @Uint32()
  external int dwTextureStage;
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
class DD_DESTROYDDLOCALDATA extends Struct {
  @Uint32()
  external int dwFlags;
  external Pointer<DD_DIRECTDRAW_LOCAL> pDDLcl;
  @Int32()
  external int ddRVal;
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
class DD_SETCLIPLISTDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_GLOBAL> lpDD;
  external Pointer<DD_SURFACE_LOCAL> lpDDSurface;
  @Int32()
  external int ddRVal;
  external Pointer SetClipList;
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
class IUNKNOWN_LIST extends Struct {
  external Pointer<IUNKNOWN_LIST> lpLink;
  external Pointer<GUID> lpGuid;
  external COMObject lpIUnknown;
}

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
class VIDMEM extends Struct {
  @Uint32()
  external int dwFlags;
  @IntPtr()
  external int fpStart;
  @Uint32()
  external int Anonymous1;
  external DDSCAPS ddsCaps;
  external DDSCAPS ddsCapsAlt;
  @Uint32()
  external int Anonymous2;
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
