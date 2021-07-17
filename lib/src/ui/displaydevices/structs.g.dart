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
import '../../graphics/gdi/structs.g.dart';
import '../../system/systemservices/structs.g.dart';
import '../../ui/displaydevices/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/directdraw/structs.g.dart';
import '../../graphics/directdraw/callbacks.g.dart';
import '../../ui/displaydevices/callbacks.g.dart';
import '../../system/systemservices/callbacks.g.dart';

/// {@category Struct}
class BLENDOBJ extends Struct {
  external BLENDFUNCTION BlendFunction;
}

/// {@category Struct}
class BRUSHOBJ extends Struct {
  @Uint32()
  external int iSolidColor;
  external Pointer pvRbrush;
  @Uint32()
  external int flColorType;
}

/// {@category Struct}
class CIECHROMA extends Struct {
  @Int32()
  external int x;
  @Int32()
  external int y;
  @Int32()
  external int Y;
}

/// {@category Struct}
class CLIPLINE extends Struct {
  external POINTFIX ptfxA;
  external POINTFIX ptfxB;
  @Int32()
  external int lStyleState;
  @Uint32()
  external int c;
  @Array(1)
  external Array<RUN> arun;
}

/// {@category Struct}
class CLIPOBJ extends Struct {
  @Uint32()
  external int iUniq;
  external RECTL rclBounds;
  @Uint8()
  external int iDComplexity;
  @Uint8()
  external int iFComplexity;
  @Uint8()
  external int iMode;
  @Uint8()
  external int fjOptions;
}

/// {@category Struct}
class COLORINFO extends Struct {
  external CIECHROMA Red;
  external CIECHROMA Green;
  external CIECHROMA Blue;
  external CIECHROMA Cyan;
  external CIECHROMA Magenta;
  external CIECHROMA Yellow;
  external CIECHROMA AlignmentWhite;
  @Int32()
  external int RedGamma;
  @Int32()
  external int GreenGamma;
  @Int32()
  external int BlueGamma;
  @Int32()
  external int MagentaInCyanDye;
  @Int32()
  external int YellowInCyanDye;
  @Int32()
  external int CyanInMagentaDye;
  @Int32()
  external int YellowInMagentaDye;
  @Int32()
  external int CyanInYellowDye;
  @Int32()
  external int MagentaInYellowDye;
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
class DDHAL_DESTROYDDLOCALDATA extends Struct {
  @Uint32()
  external int dwFlags;
  external Pointer<DDRAWI_DIRECTDRAW_LCL> pDDLcl;
  @Int32()
  external int ddRVal;
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
class DDKERNELCAPS extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int dwCaps;
  @Uint32()
  external int dwIRQCaps;
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
  @Uint32()
  external int Anonymous;
  external Pointer<Uint32> lpdwStates;
  @Uint32()
  external int dwLength;
  @Int32()
  external int ddRVal;
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
class DD_MORESURFACECAPS extends Struct {
  @Uint32()
  external int dwSize;
  external DDSCAPSEX ddsCapsMore;
  @Array(1)
  external Array<Uint32> ddsExtendedHeapRestrictions;
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
  @Uint32()
  external int Anonymous1;
  @Uint32()
  external int Anonymous2;
  @IntPtr()
  external int fpVidMem;
  @Uint32()
  external int Anonymous3;
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
  @Uint32()
  external int Anonymous1;
  @Uint32()
  external int Anonymous2;
  external Pointer<DD_SURFACE_MORE> lpSurfMore;
  external Pointer<DD_ATTACHLIST> lpAttachList;
  external Pointer<DD_ATTACHLIST> lpAttachListFrom;
  external RECT rcOverlaySrc;
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
class DEVHTADJDATA extends Struct {
  @Uint32()
  external int DeviceFlags;
  @Uint32()
  external int DeviceXDPI;
  @Uint32()
  external int DeviceYDPI;
  external Pointer<DEVHTINFO> pDefHTInfo;
  external Pointer<DEVHTINFO> pAdjHTInfo;
}

/// {@category Struct}
class DEVHTINFO extends Struct {
  @Uint32()
  external int HTFlags;
  @Uint32()
  external int HTPatternSize;
  @Uint32()
  external int DevPelsDPI;
  external COLORINFO ColorInfo;
}

/// {@category Struct}
class DEVINFO extends Struct {
  @Uint32()
  external int flGraphicsCaps;
  external LOGFONT lfDefaultFont;
  external LOGFONT lfAnsiVarFont;
  external LOGFONT lfAnsiFixFont;
  @Uint32()
  external int cFonts;
  @Uint32()
  external int iDitherFormat;
  @Uint16()
  external int cxDither;
  @Uint16()
  external int cyDither;
  @IntPtr()
  external int hpalDefault;
  @Uint32()
  external int flGraphicsCaps2;
}

/// {@category Struct}
class DEVMODE extends Struct {
  @Array(32)
  external Array<Uint16> _dmDeviceName;

  String get dmDeviceName {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      charCodes.add(_dmDeviceName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set dmDeviceName(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _dmDeviceName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint16()
  external int dmSpecVersion;
  @Uint16()
  external int dmDriverVersion;
  @Uint16()
  external int dmSize;
  @Uint16()
  external int dmDriverExtra;
  @Uint32()
  external int dmFields;
  @Uint32()
  external int Anonymous1;
  @Int16()
  external int dmColor;
  @Int16()
  external int dmDuplex;
  @Int16()
  external int dmYResolution;
  @Int16()
  external int dmTTOption;
  @Int16()
  external int dmCollate;
  @Array(32)
  external Array<Uint16> _dmFormName;

  String get dmFormName {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      charCodes.add(_dmFormName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set dmFormName(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _dmFormName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint16()
  external int dmLogPixels;
  @Uint32()
  external int dmBitsPerPel;
  @Uint32()
  external int dmPelsWidth;
  @Uint32()
  external int dmPelsHeight;
  @Uint32()
  external int Anonymous2;
  @Uint32()
  external int dmDisplayFrequency;
  @Uint32()
  external int dmICMMethod;
  @Uint32()
  external int dmICMIntent;
  @Uint32()
  external int dmMediaType;
  @Uint32()
  external int dmDitherType;
  @Uint32()
  external int dmReserved1;
  @Uint32()
  external int dmReserved2;
  @Uint32()
  external int dmPanningWidth;
  @Uint32()
  external int dmPanningHeight;
}

/// {@category Struct}
class DISPLAYCONFIG_2DREGION extends Struct {
  @Uint32()
  external int cx;
  @Uint32()
  external int cy;
}

/// {@category Struct}
class DISPLAYCONFIG_ADAPTER_NAME extends Struct {
  external DISPLAYCONFIG_DEVICE_INFO_HEADER header;
  @Array(128)
  external Array<Uint16> _adapterDevicePath;

  String get adapterDevicePath {
    final charCodes = <int>[];
    for (var i = 0; i < 128; i++) {
      charCodes.add(_adapterDevicePath[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set adapterDevicePath(String value) {
    final stringToStore = value.padRight(128, '\x00');
    for (var i = 0; i < 128; i++) {
      _adapterDevicePath[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class DISPLAYCONFIG_DESKTOP_IMAGE_INFO extends Struct {
  external POINTL PathSourceSize;
  external RECTL DesktopImageRegion;
  external RECTL DesktopImageClip;
}

/// {@category Struct}
class DISPLAYCONFIG_DEVICE_INFO_HEADER extends Struct {
  @Uint32()
  external int type;
  @Uint32()
  external int size;
  external LUID adapterId;
  @Uint32()
  external int id;
}

/// {@category Struct}
class DISPLAYCONFIG_MODE_INFO extends Struct {
  @Uint32()
  external int infoType;
  @Uint32()
  external int id;
  external LUID adapterId;
  @Uint32()
  external int Anonymous;
}

/// {@category Struct}
class DISPLAYCONFIG_PATH_INFO extends Struct {
  external DISPLAYCONFIG_PATH_SOURCE_INFO sourceInfo;
  external DISPLAYCONFIG_PATH_TARGET_INFO targetInfo;
  @Uint32()
  external int flags;
}

/// {@category Struct}
class DISPLAYCONFIG_PATH_SOURCE_INFO extends Struct {
  external LUID adapterId;
  @Uint32()
  external int id;
  @Uint32()
  external int Anonymous;
  @Uint32()
  external int statusFlags;
}

/// {@category Struct}
class DISPLAYCONFIG_PATH_TARGET_INFO extends Struct {
  external LUID adapterId;
  @Uint32()
  external int id;
  @Uint32()
  external int Anonymous;
  @Uint32()
  external int outputTechnology;
  @Uint32()
  external int rotation;
  @Uint32()
  external int scaling;
  external DISPLAYCONFIG_RATIONAL refreshRate;
  @Uint32()
  external int scanLineOrdering;
  @Int32()
  external int targetAvailable;
  @Uint32()
  external int statusFlags;
}

/// {@category Struct}
class DISPLAYCONFIG_RATIONAL extends Struct {
  @Uint32()
  external int Numerator;
  @Uint32()
  external int Denominator;
}

/// {@category Struct}
class DISPLAYCONFIG_SET_TARGET_PERSISTENCE extends Struct {
  external DISPLAYCONFIG_DEVICE_INFO_HEADER header;
  @Uint32()
  external int Anonymous;
}

/// {@category Struct}
class DISPLAYCONFIG_SOURCE_DEVICE_NAME extends Struct {
  external DISPLAYCONFIG_DEVICE_INFO_HEADER header;
  @Array(32)
  external Array<Uint16> _viewGdiDeviceName;

  String get viewGdiDeviceName {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      charCodes.add(_viewGdiDeviceName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set viewGdiDeviceName(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _viewGdiDeviceName[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class DISPLAYCONFIG_SOURCE_MODE extends Struct {
  @Uint32()
  external int width;
  @Uint32()
  external int height;
  @Uint32()
  external int pixelFormat;
  external POINTL position;
}

/// {@category Struct}
class DISPLAYCONFIG_SUPPORT_VIRTUAL_RESOLUTION extends Struct {
  external DISPLAYCONFIG_DEVICE_INFO_HEADER header;
  @Uint32()
  external int Anonymous;
}

/// {@category Struct}
class DISPLAYCONFIG_TARGET_BASE_TYPE extends Struct {
  external DISPLAYCONFIG_DEVICE_INFO_HEADER header;
  @Uint32()
  external int baseOutputTechnology;
}

/// {@category Struct}
class DISPLAYCONFIG_TARGET_DEVICE_NAME extends Struct {
  external DISPLAYCONFIG_DEVICE_INFO_HEADER header;
  external DISPLAYCONFIG_TARGET_DEVICE_NAME_FLAGS flags;
  @Uint32()
  external int outputTechnology;
  @Uint16()
  external int edidManufactureId;
  @Uint16()
  external int edidProductCodeId;
  @Uint32()
  external int connectorInstance;
  @Array(64)
  external Array<Uint16> _monitorFriendlyDeviceName;

  String get monitorFriendlyDeviceName {
    final charCodes = <int>[];
    for (var i = 0; i < 64; i++) {
      charCodes.add(_monitorFriendlyDeviceName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set monitorFriendlyDeviceName(String value) {
    final stringToStore = value.padRight(64, '\x00');
    for (var i = 0; i < 64; i++) {
      _monitorFriendlyDeviceName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(128)
  external Array<Uint16> _monitorDevicePath;

  String get monitorDevicePath {
    final charCodes = <int>[];
    for (var i = 0; i < 128; i++) {
      charCodes.add(_monitorDevicePath[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set monitorDevicePath(String value) {
    final stringToStore = value.padRight(128, '\x00');
    for (var i = 0; i < 128; i++) {
      _monitorDevicePath[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class DISPLAYCONFIG_TARGET_DEVICE_NAME_FLAGS extends Struct {
  @Uint32()
  external int Anonymous;
}

/// {@category Struct}
class DISPLAYCONFIG_TARGET_MODE extends Struct {
  external DISPLAYCONFIG_VIDEO_SIGNAL_INFO targetVideoSignalInfo;
}

/// {@category Struct}
class DISPLAYCONFIG_TARGET_PREFERRED_MODE extends Struct {
  external DISPLAYCONFIG_DEVICE_INFO_HEADER header;
  @Uint32()
  external int width;
  @Uint32()
  external int height;
  external DISPLAYCONFIG_TARGET_MODE targetMode;
}

/// {@category Struct}
class DISPLAYCONFIG_VIDEO_SIGNAL_INFO extends Struct {
  @Uint64()
  external int pixelRate;
  external DISPLAYCONFIG_RATIONAL hSyncFreq;
  external DISPLAYCONFIG_RATIONAL vSyncFreq;
  external DISPLAYCONFIG_2DREGION activeSize;
  external DISPLAYCONFIG_2DREGION totalSize;
  @Uint32()
  external int Anonymous;
  @Uint32()
  external int scanLineOrdering;
}

/// {@category Struct}
class DRIVEROBJ extends Struct {
  external Pointer pvObj;
  external Pointer<NativeFunction<FREEOBJPROC>> pFreeProc;
  @IntPtr()
  external int hdev;
  @IntPtr()
  external int dhpdev;
}

/// {@category Struct}
class DRVENABLEDATA extends Struct {
  @Uint32()
  external int iDriverVersion;
  @Uint32()
  external int c;
  external Pointer<DRVFN> pdrvfn;
}

/// {@category Struct}
class DRVFN extends Struct {
  @Uint32()
  external int iFunc;
  external Pointer<NativeFunction<PFN>> pfn;
}

/// {@category Struct}
class ENGSAFESEMAPHORE extends Struct {
  external Pointer<HSEMAPHORE__> hsem;
  @Int32()
  external int lCount;
}

/// {@category Struct}
class ENG_TIME_FIELDS extends Struct {
  @Uint16()
  external int usYear;
  @Uint16()
  external int usMonth;
  @Uint16()
  external int usDay;
  @Uint16()
  external int usHour;
  @Uint16()
  external int usMinute;
  @Uint16()
  external int usSecond;
  @Uint16()
  external int usMilliseconds;
  @Uint16()
  external int usWeekday;
}

/// {@category Struct}
class ENUMRECTS extends Struct {
  @Uint32()
  external int c;
  @Array(1)
  external Array<RECTL> arcl;
}

/// {@category Struct}
class FD_DEVICEMETRICS extends Struct {
  @Uint32()
  external int flRealizedType;
  external POINTE pteBase;
  external POINTE pteSide;
  @Int32()
  external int lD;
  @Int32()
  external int fxMaxAscender;
  @Int32()
  external int fxMaxDescender;
  external POINTL ptlUnderline1;
  external POINTL ptlStrikeOut;
  external POINTL ptlULThickness;
  external POINTL ptlSOThickness;
  @Uint32()
  external int cxMax;
  @Uint32()
  external int cyMax;
  @Uint32()
  external int cjGlyphMax;
  external FD_XFORM fdxQuantized;
  @Int32()
  external int lNonLinearExtLeading;
  @Int32()
  external int lNonLinearIntLeading;
  @Int32()
  external int lNonLinearMaxCharWidth;
  @Int32()
  external int lNonLinearAvgCharWidth;
  @Int32()
  external int lMinA;
  @Int32()
  external int lMinC;
  @Int32()
  external int lMinD;
  @Array(1)
  external Array<Int32> alReserved;
}

/// {@category Struct}
class FD_GLYPHATTR extends Struct {
  @Uint32()
  external int cjThis;
  @Uint32()
  external int cGlyphs;
  @Uint32()
  external int iMode;
  @Array(1)
  external Array<Uint8> aGlyphAttr;
}

/// {@category Struct}
class FD_GLYPHSET extends Struct {
  @Uint32()
  external int cjThis;
  @Uint32()
  external int flAccel;
  @Uint32()
  external int cGlyphsSupported;
  @Uint32()
  external int cRuns;
  @Array(1)
  external Array<WCRUN> awcrun;
}

/// {@category Struct}
class FD_KERNINGPAIR extends Struct {
  @Uint16()
  external int wcFirst;
  @Uint16()
  external int wcSecond;
  @Int16()
  external int fwdKern;
}

/// {@category Struct}
class FD_XFORM extends Struct {
  @Float()
  external double eXX;
  @Float()
  external double eXY;
  @Float()
  external double eYX;
  @Float()
  external double eYY;
}

/// {@category Struct}
class FONTDIFF extends Struct {
  @Uint8()
  external int jReserved1;
  @Uint8()
  external int jReserved2;
  @Uint8()
  external int jReserved3;
  @Uint8()
  external int bWeight;
  @Uint16()
  external int usWinWeight;
  @Uint16()
  external int fsSelection;
  @Int16()
  external int fwdAveCharWidth;
  @Int16()
  external int fwdMaxCharInc;
  external POINTL ptlCaret;
}

/// {@category Struct}
class FONTINFO extends Struct {
  @Uint32()
  external int cjThis;
  @Uint32()
  external int flCaps;
  @Uint32()
  external int cGlyphsSupported;
  @Uint32()
  external int cjMaxGlyph1;
  @Uint32()
  external int cjMaxGlyph4;
  @Uint32()
  external int cjMaxGlyph8;
  @Uint32()
  external int cjMaxGlyph32;
}

/// {@category Struct}
class FONTOBJ extends Struct {
  @Uint32()
  external int iUniq;
  @Uint32()
  external int iFace;
  @Uint32()
  external int cxMax;
  @Uint32()
  external int flFontType;
  @IntPtr()
  external int iTTUniq;
  @IntPtr()
  external int iFile;
  external SIZE sizLogResPpi;
  @Uint32()
  external int ulStyleSize;
  external Pointer pvConsumer;
  external Pointer pvProducer;
}

/// {@category Struct}
class FONTSIM extends Struct {
  @Int32()
  external int dpBold;
  @Int32()
  external int dpItalic;
  @Int32()
  external int dpBoldItalic;
}

/// {@category Struct}
class GAMMARAMP extends Struct {
  @Array(256)
  external Array<Uint16> Red;
  @Array(256)
  external Array<Uint16> Green;
  @Array(256)
  external Array<Uint16> Blue;
}

/// {@category Struct}
class GDIINFO extends Struct {
  @Uint32()
  external int ulVersion;
  @Uint32()
  external int ulTechnology;
  @Uint32()
  external int ulHorzSize;
  @Uint32()
  external int ulVertSize;
  @Uint32()
  external int ulHorzRes;
  @Uint32()
  external int ulVertRes;
  @Uint32()
  external int cBitsPixel;
  @Uint32()
  external int cPlanes;
  @Uint32()
  external int ulNumColors;
  @Uint32()
  external int flRaster;
  @Uint32()
  external int ulLogPixelsX;
  @Uint32()
  external int ulLogPixelsY;
  @Uint32()
  external int flTextCaps;
  @Uint32()
  external int ulDACRed;
  @Uint32()
  external int ulDACGreen;
  @Uint32()
  external int ulDACBlue;
  @Uint32()
  external int ulAspectX;
  @Uint32()
  external int ulAspectY;
  @Uint32()
  external int ulAspectXY;
  @Int32()
  external int xStyleStep;
  @Int32()
  external int yStyleStep;
  @Int32()
  external int denStyleStep;
  external POINTL ptlPhysOffset;
  external SIZE szlPhysSize;
  @Uint32()
  external int ulNumPalReg;
  external COLORINFO ciDevice;
  @Uint32()
  external int ulDevicePelsDPI;
  @Uint32()
  external int ulPrimaryOrder;
  @Uint32()
  external int ulHTPatternSize;
  @Uint32()
  external int ulHTOutputFormat;
  @Uint32()
  external int flHTFlags;
  @Uint32()
  external int ulVRefresh;
  @Uint32()
  external int ulBltAlignment;
  @Uint32()
  external int ulPanningHorzRes;
  @Uint32()
  external int ulPanningVertRes;
  @Uint32()
  external int xPanningAlignment;
  @Uint32()
  external int yPanningAlignment;
  @Uint32()
  external int cxHTPat;
  @Uint32()
  external int cyHTPat;
  external Pointer<Uint8> pHTPatA;
  external Pointer<Uint8> pHTPatB;
  external Pointer<Uint8> pHTPatC;
  @Uint32()
  external int flShadeBlend;
  @Uint32()
  external int ulPhysicalPixelCharacteristics;
  @Uint32()
  external int ulPhysicalPixelGamma;
}

/// {@category Struct}
class GLYPHBITS extends Struct {
  external POINTL ptlOrigin;
  external SIZE sizlBitmap;
  @Array(1)
  external Array<Uint8> aj;
}

/// {@category Struct}
class GLYPHDATA extends Struct {
  external GLYPHDEF gdf;
  @Uint32()
  external int hg;
  @Int32()
  external int fxD;
  @Int32()
  external int fxA;
  @Int32()
  external int fxAB;
  @Int32()
  external int fxInkTop;
  @Int32()
  external int fxInkBottom;
  external RECTL rclInk;
  external POINTQF ptqD;
}

/// {@category Struct}
class GLYPHDEF extends Struct {
  external Pointer<GLYPHBITS> pgb;
  external Pointer<PATHOBJ> ppo;
}

/// {@category Struct}
class GLYPHPOS extends Struct {
  @Uint32()
  external int hg;
  external Pointer<GLYPHDEF> pgdf;
  external POINTL ptl;
}

/// {@category Struct}
class IFIMETRICS extends Struct {
  @Uint32()
  external int cjThis;
  @Uint32()
  external int cjIfiExtra;
  @Int32()
  external int dpwszFamilyName;
  @Int32()
  external int dpwszStyleName;
  @Int32()
  external int dpwszFaceName;
  @Int32()
  external int dpwszUniqueName;
  @Int32()
  external int dpFontSim;
  @Int32()
  external int lEmbedId;
  @Int32()
  external int lItalicAngle;
  @Int32()
  external int lCharBias;
  @Int32()
  external int dpCharSets;
  @Uint8()
  external int jWinCharSet;
  @Uint8()
  external int jWinPitchAndFamily;
  @Uint16()
  external int usWinWeight;
  @Uint32()
  external int flInfo;
  @Uint16()
  external int fsSelection;
  @Uint16()
  external int fsType;
  @Int16()
  external int fwdUnitsPerEm;
  @Int16()
  external int fwdLowestPPEm;
  @Int16()
  external int fwdWinAscender;
  @Int16()
  external int fwdWinDescender;
  @Int16()
  external int fwdMacAscender;
  @Int16()
  external int fwdMacDescender;
  @Int16()
  external int fwdMacLineGap;
  @Int16()
  external int fwdTypoAscender;
  @Int16()
  external int fwdTypoDescender;
  @Int16()
  external int fwdTypoLineGap;
  @Int16()
  external int fwdAveCharWidth;
  @Int16()
  external int fwdMaxCharInc;
  @Int16()
  external int fwdCapHeight;
  @Int16()
  external int fwdXHeight;
  @Int16()
  external int fwdSubscriptXSize;
  @Int16()
  external int fwdSubscriptYSize;
  @Int16()
  external int fwdSubscriptXOffset;
  @Int16()
  external int fwdSubscriptYOffset;
  @Int16()
  external int fwdSuperscriptXSize;
  @Int16()
  external int fwdSuperscriptYSize;
  @Int16()
  external int fwdSuperscriptXOffset;
  @Int16()
  external int fwdSuperscriptYOffset;
  @Int16()
  external int fwdUnderscoreSize;
  @Int16()
  external int fwdUnderscorePosition;
  @Int16()
  external int fwdStrikeoutSize;
  @Int16()
  external int fwdStrikeoutPosition;
  @Uint8()
  external int chFirstChar;
  @Uint8()
  external int chLastChar;
  @Uint8()
  external int chDefaultChar;
  @Uint8()
  external int chBreakChar;
  @Uint16()
  external int wcFirstChar;
  @Uint16()
  external int wcLastChar;
  @Uint16()
  external int wcDefaultChar;
  @Uint16()
  external int wcBreakChar;
  external POINTL ptlBaseline;
  external POINTL ptlAspect;
  external POINTL ptlCaret;
  external RECTL rclFontBox;
  @Array(4)
  external Array<Uint8> achVendId;
  @Uint32()
  external int cKerningPairs;
  @Uint32()
  external int ulPanoseCulture;
  external PANOSE panose;
  external Pointer Align;
}

/// {@category Struct}
class LINEATTRS extends Struct {
  @Uint32()
  external int fl;
  @Uint32()
  external int iJoin;
  @Uint32()
  external int iEndCap;
  external FLOAT_LONG elWidth;
  @Float()
  external double eMiterLimit;
  @Uint32()
  external int cstyle;
  external Pointer<FLOAT_LONG> pstyle;
  external FLOAT_LONG elStyleState;
}

/// {@category Struct}
class PALOBJ extends Struct {
  @Uint32()
  external int ulReserved;
}

/// {@category Struct}
class PATHDATA extends Struct {
  @Uint32()
  external int flags;
  @Uint32()
  external int count;
  external Pointer<POINTFIX> pptfx;
}

/// {@category Struct}
class PATHOBJ extends Struct {
  @Uint32()
  external int fl;
  @Uint32()
  external int cCurves;
}

/// {@category Struct}
class PERBANDINFO extends Struct {
  @Int32()
  external int bRepeatThisBand;
  external SIZE szlBand;
  @Uint32()
  external int ulHorzRes;
  @Uint32()
  external int ulVertRes;
}

/// {@category Struct}
class RUN extends Struct {
  @Int32()
  external int iStart;
  @Int32()
  external int iStop;
}

/// {@category Struct}
class STROBJ extends Struct {
  @Uint32()
  external int cGlyphs;
  @Uint32()
  external int flAccel;
  @Uint32()
  external int ulCharInc;
  external RECTL rclBkGround;
  external Pointer<GLYPHPOS> pgp;
  external Pointer<Utf16> pwszOrg;
}

/// {@category Struct}
class SURFOBJ extends Struct {
  @IntPtr()
  external int dhsurf;
  @IntPtr()
  external int hsurf;
  @IntPtr()
  external int dhpdev;
  @IntPtr()
  external int hdev;
  external SIZE sizlBitmap;
  @Uint32()
  external int cjBits;
  external Pointer pvBits;
  external Pointer pvScan0;
  @Int32()
  external int lDelta;
  @Uint32()
  external int iUniq;
  @Uint32()
  external int iBitmapFormat;
  @Uint16()
  external int iType;
  @Uint16()
  external int fjBitmap;
}

/// {@category Struct}
class TYPE1_FONT extends Struct {
  @IntPtr()
  external int hPFM;
  @IntPtr()
  external int hPFB;
  @Uint32()
  external int ulIdentifier;
}

/// {@category Struct}
class VIDEOMEMORY extends Struct {
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
class VIDEOPARAMETERS extends Struct {
  external GUID Guid;
  @Uint32()
  external int dwOffset;
  @Uint32()
  external int dwCommand;
  @Uint32()
  external int dwFlags;
  @Uint32()
  external int dwMode;
  @Uint32()
  external int dwTVStandard;
  @Uint32()
  external int dwAvailableModes;
  @Uint32()
  external int dwAvailableTVStandard;
  @Uint32()
  external int dwFlickerFilter;
  @Uint32()
  external int dwOverScanX;
  @Uint32()
  external int dwOverScanY;
  @Uint32()
  external int dwMaxUnscaledX;
  @Uint32()
  external int dwMaxUnscaledY;
  @Uint32()
  external int dwPositionX;
  @Uint32()
  external int dwPositionY;
  @Uint32()
  external int dwBrightness;
  @Uint32()
  external int dwContrast;
  @Uint32()
  external int dwCPType;
  @Uint32()
  external int dwCPCommand;
  @Uint32()
  external int dwCPStandard;
  @Uint32()
  external int dwCPKey;
  @Uint32()
  external int bCP_APSTriggerBits;
  @Array(256)
  external Array<Uint8> bOEMCopyProtection;
}

/// {@category Struct}
class WCRUN extends Struct {
  @Uint16()
  external int wcLow;
  @Uint16()
  external int cGlyphs;
  external Pointer<Uint32> phg;
}

/// {@category Struct}
class WNDOBJ extends Struct {
  external CLIPOBJ coClient;
  external Pointer pvConsumer;
  external RECTL rclClient;
  external Pointer<SURFOBJ> psoOwner;
}

/// {@category Struct}
class XFORML extends Struct {
  @Float()
  external double eM11;
  @Float()
  external double eM12;
  @Float()
  external double eM21;
  @Float()
  external double eM22;
  @Float()
  external double eDx;
  @Float()
  external double eDy;
}

/// {@category Struct}
class XLATEOBJ extends Struct {
  @Uint32()
  external int iUniq;
  @Uint32()
  external int flXlate;
  @Uint16()
  external int iSrcType;
  @Uint16()
  external int iDstType;
  @Uint32()
  external int cEntries;
  external Pointer<Uint32> pulXlate;
}
