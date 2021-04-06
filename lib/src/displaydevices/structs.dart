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

class DEVMODEW extends Struct {
  @Array(32)
  external Array<Uint16> dmDeviceName;
  @Uint16() external int dmSpecVersion;
  @Uint16() external int dmDriverVersion;
  @Uint16() external int dmSize;
  @Uint16() external int dmDriverExtra;
  @Uint32() external int dmFields;
  @Uint32() external int Anonymous1;
  @Int16() external int dmColor;
  @Int16() external int dmDuplex;
  @Int16() external int dmYResolution;
  @Int16() external int dmTTOption;
  @Int16() external int dmCollate;
  @Array(32)
  external Array<Uint16> dmFormName;
  @Uint16() external int dmLogPixels;
  @Uint32() external int dmBitsPerPel;
  @Uint32() external int dmPelsWidth;
  @Uint32() external int dmPelsHeight;
  @Uint32() external int Anonymous2;
  @Uint32() external int dmDisplayFrequency;
  @Uint32() external int dmICMMethod;
  @Uint32() external int dmICMIntent;
  @Uint32() external int dmMediaType;
  @Uint32() external int dmDitherType;
  @Uint32() external int dmReserved1;
  @Uint32() external int dmReserved2;
  @Uint32() external int dmPanningWidth;
  @Uint32() external int dmPanningHeight;
}

class DISPLAYCONFIG_RATIONAL extends Struct {
  @Uint32() external int Numerator;
  @Uint32() external int Denominator;
}

class DISPLAYCONFIG_2DREGION extends Struct {
  @Uint32() external int cx;
  @Uint32() external int cy;
}

class DISPLAYCONFIG_VIDEO_SIGNAL_INFO extends Struct {
  @Uint64() external int pixelRate;
  external DISPLAYCONFIG_RATIONAL hSyncFreq;
  external DISPLAYCONFIG_RATIONAL vSyncFreq;
  external DISPLAYCONFIG_2DREGION activeSize;
  external DISPLAYCONFIG_2DREGION totalSize;
  @Uint32() external int Anonymous;
  @Uint32() external int scanLineOrdering;
}

class DISPLAYCONFIG_SOURCE_MODE extends Struct {
  @Uint32() external int width;
  @Uint32() external int height;
  @Uint32() external int pixelFormat;
  external POINTL position;
}

class DISPLAYCONFIG_TARGET_MODE extends Struct {
  external DISPLAYCONFIG_VIDEO_SIGNAL_INFO targetVideoSignalInfo;
}

class DISPLAYCONFIG_DESKTOP_IMAGE_INFO extends Struct {
  external POINTL PathSourceSize;
  external RECTL DesktopImageRegion;
  external RECTL DesktopImageClip;
}

class DISPLAYCONFIG_MODE_INFO extends Struct {
  @Uint32() external int infoType;
  @Uint32() external int id;
  external LUID adapterId;
  @Uint32() external int Anonymous;
}

class DISPLAYCONFIG_PATH_SOURCE_INFO extends Struct {
  external LUID adapterId;
  @Uint32() external int id;
  @Uint32() external int Anonymous;
  @Uint32() external int statusFlags;
}

class DISPLAYCONFIG_PATH_TARGET_INFO extends Struct {
  external LUID adapterId;
  @Uint32() external int id;
  @Uint32() external int Anonymous;
  @Uint32() external int outputTechnology;
  @Uint32() external int rotation;
  @Uint32() external int scaling;
  external DISPLAYCONFIG_RATIONAL refreshRate;
  @Uint32() external int scanLineOrdering;
  @Int32() external int targetAvailable;
  @Uint32() external int statusFlags;
}

class DISPLAYCONFIG_PATH_INFO extends Struct {
  external DISPLAYCONFIG_PATH_SOURCE_INFO sourceInfo;
  external DISPLAYCONFIG_PATH_TARGET_INFO targetInfo;
  @Uint32() external int flags;
}

class DISPLAYCONFIG_DEVICE_INFO_HEADER extends Struct {
  @Uint32() external int type;
  @Uint32() external int size;
  external LUID adapterId;
  @Uint32() external int id;
}

class DISPLAYCONFIG_SOURCE_DEVICE_NAME extends Struct {
  external DISPLAYCONFIG_DEVICE_INFO_HEADER header;
  @Array(32)
  external Array<Uint16> viewGdiDeviceName;
}

class DISPLAYCONFIG_TARGET_DEVICE_NAME_FLAGS extends Struct {
  @Uint32() external int Anonymous;
}

class DISPLAYCONFIG_TARGET_DEVICE_NAME extends Struct {
  external DISPLAYCONFIG_DEVICE_INFO_HEADER header;
  external DISPLAYCONFIG_TARGET_DEVICE_NAME_FLAGS flags;
  @Uint32() external int outputTechnology;
  @Uint16() external int edidManufactureId;
  @Uint16() external int edidProductCodeId;
  @Uint32() external int connectorInstance;
  @Array(64)
  external Array<Uint16> monitorFriendlyDeviceName;
  @Array(128)
  external Array<Uint16> monitorDevicePath;
}

class DISPLAYCONFIG_TARGET_PREFERRED_MODE extends Struct {
  external DISPLAYCONFIG_DEVICE_INFO_HEADER header;
  @Uint32() external int width;
  @Uint32() external int height;
  external DISPLAYCONFIG_TARGET_MODE targetMode;
}

class DISPLAYCONFIG_ADAPTER_NAME extends Struct {
  external DISPLAYCONFIG_DEVICE_INFO_HEADER header;
  @Array(128)
  external Array<Uint16> adapterDevicePath;
}

class DISPLAYCONFIG_TARGET_BASE_TYPE extends Struct {
  external DISPLAYCONFIG_DEVICE_INFO_HEADER header;
  @Uint32() external int baseOutputTechnology;
}

class DISPLAYCONFIG_SET_TARGET_PERSISTENCE extends Struct {
  external DISPLAYCONFIG_DEVICE_INFO_HEADER header;
  @Uint32() external int Anonymous;
}

class DISPLAYCONFIG_SUPPORT_VIRTUAL_RESOLUTION extends Struct {
  external DISPLAYCONFIG_DEVICE_INFO_HEADER header;
  @Uint32() external int Anonymous;
}

class RECT extends Struct {
  @Int32() external int left;
  @Int32() external int top;
  @Int32() external int right;
  @Int32() external int bottom;
}

class RECTL extends Struct {
  @Int32() external int left;
  @Int32() external int top;
  @Int32() external int right;
  @Int32() external int bottom;
}

class POINT extends Struct {
  @Int32() external int x;
  @Int32() external int y;
}

class POINTL extends Struct {
  @Int32() external int x;
  @Int32() external int y;
}

class SIZE extends Struct {
  @Int32() external int cx;
  @Int32() external int cy;
}

class POINTS extends Struct {
  @Int16() external int x;
  @Int16() external int y;
}

class DDVIDEOPORTCAPS extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwFlags;
  @Uint32() external int dwMaxWidth;
  @Uint32() external int dwMaxVBIWidth;
  @Uint32() external int dwMaxHeight;
  @Uint32() external int dwVideoPortID;
  @Uint32() external int dwCaps;
  @Uint32() external int dwFX;
  @Uint32() external int dwNumAutoFlipSurfaces;
  @Uint32() external int dwAlignVideoPortBoundary;
  @Uint32() external int dwAlignVideoPortPrescaleWidth;
  @Uint32() external int dwAlignVideoPortCropBoundary;
  @Uint32() external int dwAlignVideoPortCropWidth;
  @Uint32() external int dwPreshrinkXStep;
  @Uint32() external int dwPreshrinkYStep;
  @Uint32() external int dwNumVBIAutoFlipSurfaces;
  @Uint32() external int dwNumPreferredAutoflip;
  @Uint16() external int wNumFilterTapsX;
  @Uint16() external int wNumFilterTapsY;
}

class DDVIDEOPORTDESC extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwFieldWidth;
  @Uint32() external int dwVBIWidth;
  @Uint32() external int dwFieldHeight;
  @Uint32() external int dwMicrosecondsPerField;
  @Uint32() external int dwMaxPixelsPerSecond;
  @Uint32() external int dwVideoPortID;
  @Uint32() external int dwReserved1;
  external DDVIDEOPORTCONNECT VideoPortType;
  @IntPtr() external int dwReserved2;
  @IntPtr() external int dwReserved3;
}

class DDVIDEOPORTINFO extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwOriginX;
  @Uint32() external int dwOriginY;
  @Uint32() external int dwVPFlags;
  external RECT rCrop;
  @Uint32() external int dwPrescaleWidth;
  @Uint32() external int dwPrescaleHeight;
  external Pointer<DDPIXELFORMAT> lpddpfInputFormat;
  external Pointer<DDPIXELFORMAT> lpddpfVBIInputFormat;
  external Pointer<DDPIXELFORMAT> lpddpfVBIOutputFormat;
  @Uint32() external int dwVBIHeight;
  @IntPtr() external int dwReserved1;
  @IntPtr() external int dwReserved2;
}

class DDVIDEOPORTBANDWIDTH extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwCaps;
  @Uint32() external int dwOverlay;
  @Uint32() external int dwColorkey;
  @Uint32() external int dwYInterpolate;
  @Uint32() external int dwYInterpAndColorkey;
  @IntPtr() external int dwReserved1;
  @IntPtr() external int dwReserved2;
}

class DD_GETHEAPALIGNMENTDATA extends Struct {
}

class VIDEOMEMORY extends Struct {
  @Uint32() external int dwFlags;
  @IntPtr() external int fpStart;
  @Uint32() external int Anonymous1;
  external DDSCAPS ddsCaps;
  external DDSCAPS ddsCapsAlt;
  @Uint32() external int Anonymous2;
}

class VIDEOMEMORYINFO extends Struct {
  @IntPtr() external int fpPrimary;
  @Uint32() external int dwFlags;
  @Uint32() external int dwDisplayWidth;
  @Uint32() external int dwDisplayHeight;
  @Int32() external int lDisplayPitch;
  external DDPIXELFORMAT ddpfDisplay;
  @Uint32() external int dwOffscreenAlign;
  @Uint32() external int dwOverlayAlign;
  @Uint32() external int dwTextureAlign;
  @Uint32() external int dwZBufferAlign;
  @Uint32() external int dwAlphaAlign;
  external Pointer pvPrimary;
}

class DD_CALLBACKS extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwFlags;
  external PDD_DESTROYDRIVER DestroyDriver;
  external PDD_CREATESURFACE CreateSurface;
  external PDD_SETCOLORKEY SetColorKey;
  external PDD_SETMODE SetMode;
  external PDD_WAITFORVERTICALBLANK WaitForVerticalBlank;
  external PDD_CANCREATESURFACE CanCreateSurface;
  external PDD_CREATEPALETTE CreatePalette;
  external PDD_GETSCANLINE GetScanLine;
  external PDD_MAPMEMORY MapMemory;
}

class DD_MISCELLANEOUSCALLBACKS extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwFlags;
  external PDD_GETAVAILDRIVERMEMORY GetAvailDriverMemory;
}

class DD_MISCELLANEOUS2CALLBACKS extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwFlags;
  external PDD_ALPHABLT AlphaBlt;
  external PDD_CREATESURFACEEX CreateSurfaceEx;
  external PDD_GETDRIVERSTATE GetDriverState;
  external PDD_DESTROYDDLOCAL DestroyDDLocal;
}

class DD_NTCALLBACKS extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwFlags;
  external PDD_FREEDRIVERMEMORY FreeDriverMemory;
  external PDD_SETEXCLUSIVEMODE SetExclusiveMode;
  external PDD_FLIPTOGDISURFACE FlipToGDISurface;
}

class DD_PALETTECALLBACKS extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwFlags;
  external PDD_PALCB_DESTROYPALETTE DestroyPalette;
  external PDD_PALCB_SETENTRIES SetEntries;
}

class DD_SURFACECALLBACKS extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwFlags;
  external PDD_SURFCB_DESTROYSURFACE DestroySurface;
  external PDD_SURFCB_FLIP Flip;
  external PDD_SURFCB_SETCLIPLIST SetClipList;
  external PDD_SURFCB_LOCK Lock;
  external PDD_SURFCB_UNLOCK Unlock;
  external PDD_SURFCB_BLT Blt;
  external PDD_SURFCB_SETCOLORKEY SetColorKey;
  external PDD_SURFCB_ADDATTACHEDSURFACE AddAttachedSurface;
  external PDD_SURFCB_GETBLTSTATUS GetBltStatus;
  external PDD_SURFCB_GETFLIPSTATUS GetFlipStatus;
  external PDD_SURFCB_UPDATEOVERLAY UpdateOverlay;
  external PDD_SURFCB_SETOVERLAYPOSITION SetOverlayPosition;
  external Pointer reserved4;
  external PDD_SURFCB_SETPALETTE SetPalette;
}

class DD_VIDEOPORTCALLBACKS extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwFlags;
  external PDD_VPORTCB_CANCREATEVIDEOPORT CanCreateVideoPort;
  external PDD_VPORTCB_CREATEVIDEOPORT CreateVideoPort;
  external PDD_VPORTCB_FLIP FlipVideoPort;
  external PDD_VPORTCB_GETBANDWIDTH GetVideoPortBandwidth;
  external PDD_VPORTCB_GETINPUTFORMATS GetVideoPortInputFormats;
  external PDD_VPORTCB_GETOUTPUTFORMATS GetVideoPortOutputFormats;
  external Pointer lpReserved1;
  external PDD_VPORTCB_GETFIELD GetVideoPortField;
  external PDD_VPORTCB_GETLINE GetVideoPortLine;
  external PDD_VPORTCB_GETVPORTCONNECT GetVideoPortConnectInfo;
  external PDD_VPORTCB_DESTROYVPORT DestroyVideoPort;
  external PDD_VPORTCB_GETFLIPSTATUS GetVideoPortFlipStatus;
  external PDD_VPORTCB_UPDATE UpdateVideoPort;
  external PDD_VPORTCB_WAITFORSYNC WaitForVideoPortSync;
  external PDD_VPORTCB_GETSIGNALSTATUS GetVideoSignalStatus;
  external PDD_VPORTCB_COLORCONTROL ColorControl;
}

class DD_COLORCONTROLCALLBACKS extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwFlags;
  external PDD_COLORCB_COLORCONTROL ColorControl;
}

class DD_KERNELCALLBACKS extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwFlags;
  external PDD_KERNELCB_SYNCSURFACE SyncSurfaceData;
  external PDD_KERNELCB_SYNCVIDEOPORT SyncVideoPortData;
}

class DD_MOTIONCOMPCALLBACKS extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwFlags;
  external PDD_MOCOMPCB_GETGUIDS GetMoCompGuids;
  external PDD_MOCOMPCB_GETFORMATS GetMoCompFormats;
  external PDD_MOCOMPCB_CREATE CreateMoComp;
  external PDD_MOCOMPCB_GETCOMPBUFFINFO GetMoCompBuffInfo;
  external PDD_MOCOMPCB_GETINTERNALINFO GetInternalMoCompInfo;
  external PDD_MOCOMPCB_BEGINFRAME BeginMoCompFrame;
  external PDD_MOCOMPCB_ENDFRAME EndMoCompFrame;
  external PDD_MOCOMPCB_RENDER RenderMoComp;
  external PDD_MOCOMPCB_QUERYSTATUS QueryMoCompStatus;
  external PDD_MOCOMPCB_DESTROY DestroyMoComp;
}

class DD_NONLOCALVIDMEMCAPS extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwNLVBCaps;
  @Uint32() external int dwNLVBCaps2;
  @Uint32() external int dwNLVBCKeyCaps;
  @Uint32() external int dwNLVBFXCaps;
  @Array(8)
  external Array<Uint32> dwNLVBRops;
}

class DD_PALETTE_GLOBAL extends Struct {
  @IntPtr() external int dwReserved1;
}

class DD_PALETTE_LOCAL extends Struct {
  @Uint32() external int dwReserved0;
  @IntPtr() external int dwReserved1;
}

class DD_CLIPPER_GLOBAL extends Struct {
  @IntPtr() external int dwReserved1;
}

class DD_CLIPPER_LOCAL extends Struct {
  @IntPtr() external int dwReserved1;
}

class DD_ATTACHLIST extends Struct {
  external Pointer<DD_ATTACHLIST> lpLink;
  external Pointer<DD_SURFACE_LOCAL> lpAttached;
}

class DD_SURFACE_INT extends Struct {
  external Pointer<DD_SURFACE_LOCAL> lpLcl;
}

class DD_SURFACE_GLOBAL extends Struct {
  @Uint32() external int Anonymous1;
  @Uint32() external int Anonymous2;
  @IntPtr() external int fpVidMem;
  @Uint32() external int Anonymous3;
  @Int32() external int yHint;
  @Int32() external int xHint;
  @Uint32() external int wHeight;
  @Uint32() external int wWidth;
  @IntPtr() external int dwReserved1;
  external DDPIXELFORMAT ddpfSurface;
  @IntPtr() external int fpHeapOffset;
  @IntPtr() external int hCreatorProcess;
}

class DD_SURFACE_MORE extends Struct {
  @Uint32() external int dwMipMapCount;
  external Pointer<DD_VIDEOPORT_LOCAL> lpVideoPort;
  @Uint32() external int dwOverlayFlags;
  external DDSCAPSEX ddsCapsEx;
  @Uint32() external int dwSurfaceHandle;
}

class DD_SURFACE_LOCAL extends Struct {
  external Pointer<DD_SURFACE_GLOBAL> lpGbl;
  @Uint32() external int dwFlags;
  external DDSCAPS ddsCaps;
  @IntPtr() external int dwReserved1;
  @Uint32() external int Anonymous1;
  @Uint32() external int Anonymous2;
  external Pointer<DD_SURFACE_MORE> lpSurfMore;
  external Pointer<DD_ATTACHLIST> lpAttachList;
  external Pointer<DD_ATTACHLIST> lpAttachListFrom;
  external RECT rcOverlaySrc;
}

class DD_D3DBUFCALLBACKS extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwFlags;
  external PDD_CANCREATESURFACE CanCreateD3DBuffer;
  external PDD_CREATESURFACE CreateD3DBuffer;
  external PDD_SURFCB_DESTROYSURFACE DestroyD3DBuffer;
  external PDD_SURFCB_LOCK LockD3DBuffer;
  external PDD_SURFCB_UNLOCK UnlockD3DBuffer;
}

class DD_HALINFO extends Struct {
  @Uint32() external int dwSize;
  external VIDEOMEMORYINFO vmiData;
  external DDNTCORECAPS ddCaps;
  external PDD_GETDRIVERINFO GetDriverInfo;
  @Uint32() external int dwFlags;
  external Pointer lpD3DGlobalDriverData;
  external Pointer lpD3DHALCallbacks;
  external Pointer<DD_D3DBUFCALLBACKS> lpD3DBufCallbacks;
}

class DD_DIRECTDRAW_GLOBAL extends Struct {
  external Pointer dhpdev;
  @IntPtr() external int dwReserved1;
  @IntPtr() external int dwReserved2;
  external Pointer<DDVIDEOPORTCAPS> lpDDVideoPortCaps;
}

class DD_DIRECTDRAW_LOCAL extends Struct {
  external Pointer<DD_DIRECTDRAW_GLOBAL> lpGbl;
}

class DD_VIDEOPORT_LOCAL extends Struct {
  external Pointer<DD_DIRECTDRAW_LOCAL> lpDD;
  external DDVIDEOPORTDESC ddvpDesc;
  external DDVIDEOPORTINFO ddvpInfo;
  external Pointer<DD_SURFACE_INT> lpSurface;
  external Pointer<DD_SURFACE_INT> lpVBISurface;
  @Uint32() external int dwNumAutoflip;
  @Uint32() external int dwNumVBIAutoflip;
  @IntPtr() external int dwReserved1;
  @IntPtr() external int dwReserved2;
  @IntPtr() external int dwReserved3;
}

class DD_MOTIONCOMP_LOCAL extends Struct {
  external Pointer<DD_DIRECTDRAW_LOCAL> lpDD;
  external GUID guid;
  @Uint32() external int dwUncompWidth;
  @Uint32() external int dwUncompHeight;
  external DDPIXELFORMAT ddUncompPixelFormat;
  @Uint32() external int dwDriverReserved1;
  @Uint32() external int dwDriverReserved2;
  @Uint32() external int dwDriverReserved3;
  external Pointer lpDriverReserved1;
  external Pointer lpDriverReserved2;
  external Pointer lpDriverReserved3;
}

class DD_MORESURFACECAPS extends Struct {
  @Uint32() external int dwSize;
  external DDSCAPSEX ddsCapsMore;
  @Array(1)
  external Array<Uint32> ddsExtendedHeapRestrictions;
}

class DD_STEREOMODE extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwHeight;
  @Uint32() external int dwWidth;
  @Uint32() external int dwBpp;
  @Uint32() external int dwRefreshRate;
  @Int32() external int bSupported;
}

class DD_UPDATENONLOCALHEAPDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_GLOBAL> lpDD;
  @Uint32() external int dwHeap;
  @IntPtr() external int fpGARTLin;
  @IntPtr() external int fpGARTDev;
  @IntPtr() external int ulPolicyMaxBytes;
  @Int32() external int ddRVal;
  external Pointer UpdateNonLocalHeap;
}

class DD_NTPRIVATEDRIVERCAPS extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwPrivateCaps;
}

class DD_BLTDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_GLOBAL> lpDD;
  external Pointer<DD_SURFACE_LOCAL> lpDDDestSurface;
  external RECTL rDest;
  external Pointer<DD_SURFACE_LOCAL> lpDDSrcSurface;
  external RECTL rSrc;
  @Uint32() external int dwFlags;
  @Uint32() external int dwROPFlags;
  external DDBLTFX bltFX;
  @Int32() external int ddRVal;
  external Pointer Blt;
  @Int32() external int IsClipped;
  external RECTL rOrigDest;
  external RECTL rOrigSrc;
  @Uint32() external int dwRectCnt;
  external Pointer<RECT> prDestRects;
  @Uint32() external int dwAFlags;
  external DDARGB ddargbScaleFactors;
}

class DD_LOCKDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_GLOBAL> lpDD;
  external Pointer<DD_SURFACE_LOCAL> lpDDSurface;
  @Uint32() external int bHasRect;
  external RECTL rArea;
  external Pointer lpSurfData;
  @Int32() external int ddRVal;
  external Pointer Lock;
  @Uint32() external int dwFlags;
  @IntPtr() external int fpProcess;
}

class DD_UNLOCKDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_GLOBAL> lpDD;
  external Pointer<DD_SURFACE_LOCAL> lpDDSurface;
  @Int32() external int ddRVal;
  external Pointer Unlock;
}

class DD_UPDATEOVERLAYDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_GLOBAL> lpDD;
  external Pointer<DD_SURFACE_LOCAL> lpDDDestSurface;
  external RECTL rDest;
  external Pointer<DD_SURFACE_LOCAL> lpDDSrcSurface;
  external RECTL rSrc;
  @Uint32() external int dwFlags;
  external DDOVERLAYFX overlayFX;
  @Int32() external int ddRVal;
  external Pointer UpdateOverlay;
}

class DD_SETOVERLAYPOSITIONDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_GLOBAL> lpDD;
  external Pointer<DD_SURFACE_LOCAL> lpDDSrcSurface;
  external Pointer<DD_SURFACE_LOCAL> lpDDDestSurface;
  @Int32() external int lXPos;
  @Int32() external int lYPos;
  @Int32() external int ddRVal;
  external Pointer SetOverlayPosition;
}

class DD_SETPALETTEDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_GLOBAL> lpDD;
  external Pointer<DD_SURFACE_LOCAL> lpDDSurface;
  external Pointer<DD_PALETTE_GLOBAL> lpDDPalette;
  @Int32() external int ddRVal;
  external Pointer SetPalette;
  @Int32() external int Attach;
}

class DD_FLIPDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_GLOBAL> lpDD;
  external Pointer<DD_SURFACE_LOCAL> lpSurfCurr;
  external Pointer<DD_SURFACE_LOCAL> lpSurfTarg;
  @Uint32() external int dwFlags;
  @Int32() external int ddRVal;
  external Pointer Flip;
  external Pointer<DD_SURFACE_LOCAL> lpSurfCurrLeft;
  external Pointer<DD_SURFACE_LOCAL> lpSurfTargLeft;
}

class DD_DESTROYSURFACEDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_GLOBAL> lpDD;
  external Pointer<DD_SURFACE_LOCAL> lpDDSurface;
  @Int32() external int ddRVal;
  external Pointer DestroySurface;
}

class DD_ADDATTACHEDSURFACEDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_GLOBAL> lpDD;
  external Pointer<DD_SURFACE_LOCAL> lpDDSurface;
  external Pointer<DD_SURFACE_LOCAL> lpSurfAttached;
  @Int32() external int ddRVal;
  external Pointer AddAttachedSurface;
}

class DD_SETCOLORKEYDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_GLOBAL> lpDD;
  external Pointer<DD_SURFACE_LOCAL> lpDDSurface;
  @Uint32() external int dwFlags;
  external DDCOLORKEY ckNew;
  @Int32() external int ddRVal;
  external Pointer SetColorKey;
}

class DD_GETBLTSTATUSDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_GLOBAL> lpDD;
  external Pointer<DD_SURFACE_LOCAL> lpDDSurface;
  @Uint32() external int dwFlags;
  @Int32() external int ddRVal;
  external Pointer GetBltStatus;
}

class DD_GETFLIPSTATUSDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_GLOBAL> lpDD;
  external Pointer<DD_SURFACE_LOCAL> lpDDSurface;
  @Uint32() external int dwFlags;
  @Int32() external int ddRVal;
  external Pointer GetFlipStatus;
}

class DD_DESTROYPALETTEDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_GLOBAL> lpDD;
  external Pointer<DD_PALETTE_GLOBAL> lpDDPalette;
  @Int32() external int ddRVal;
  external Pointer DestroyPalette;
}

class DD_SETENTRIESDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_GLOBAL> lpDD;
  external Pointer<DD_PALETTE_GLOBAL> lpDDPalette;
  @Uint32() external int dwBase;
  @Uint32() external int dwNumEntries;
  external Pointer<PALETTEENTRY> lpEntries;
  @Int32() external int ddRVal;
  external Pointer SetEntries;
}

class DD_CREATESURFACEDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_GLOBAL> lpDD;
  external Pointer<DDSURFACEDESC> lpDDSurfaceDesc;
  external Pointer<Pointer<DD_SURFACE_LOCAL>> lplpSList;
  @Uint32() external int dwSCnt;
  @Int32() external int ddRVal;
  external Pointer CreateSurface;
}

class DD_CANCREATESURFACEDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_GLOBAL> lpDD;
  external Pointer<DDSURFACEDESC> lpDDSurfaceDesc;
  @Uint32() external int bIsDifferentPixelFormat;
  @Int32() external int ddRVal;
  external Pointer CanCreateSurface;
}

class DD_CREATEPALETTEDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_GLOBAL> lpDD;
  external Pointer<DD_PALETTE_GLOBAL> lpDDPalette;
  external Pointer<PALETTEENTRY> lpColorTable;
  @Int32() external int ddRVal;
  external Pointer CreatePalette;
  @Int32() external int is_excl;
}

class DD_WAITFORVERTICALBLANKDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_GLOBAL> lpDD;
  @Uint32() external int dwFlags;
  @Uint32() external int bIsInVB;
  @IntPtr() external int hEvent;
  @Int32() external int ddRVal;
  external Pointer WaitForVerticalBlank;
}

class DD_GETSCANLINEDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_GLOBAL> lpDD;
  @Uint32() external int dwScanLine;
  @Int32() external int ddRVal;
  external Pointer GetScanLine;
}

class DD_MAPMEMORYDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_GLOBAL> lpDD;
  @Int32() external int bMap;
  @IntPtr() external int hProcess;
  @IntPtr() external int fpProcess;
  @Int32() external int ddRVal;
}

class DD_CANCREATEVPORTDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_LOCAL> lpDD;
  external Pointer<DDVIDEOPORTDESC> lpDDVideoPortDesc;
  @Int32() external int ddRVal;
  external Pointer CanCreateVideoPort;
}

class DD_CREATEVPORTDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_LOCAL> lpDD;
  external Pointer<DDVIDEOPORTDESC> lpDDVideoPortDesc;
  external Pointer<DD_VIDEOPORT_LOCAL> lpVideoPort;
  @Int32() external int ddRVal;
  external Pointer CreateVideoPort;
}

class DD_FLIPVPORTDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_LOCAL> lpDD;
  external Pointer<DD_VIDEOPORT_LOCAL> lpVideoPort;
  external Pointer<DD_SURFACE_LOCAL> lpSurfCurr;
  external Pointer<DD_SURFACE_LOCAL> lpSurfTarg;
  @Int32() external int ddRVal;
  external Pointer FlipVideoPort;
}

class DD_GETVPORTBANDWIDTHDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_LOCAL> lpDD;
  external Pointer<DD_VIDEOPORT_LOCAL> lpVideoPort;
  external Pointer<DDPIXELFORMAT> lpddpfFormat;
  @Uint32() external int dwWidth;
  @Uint32() external int dwHeight;
  @Uint32() external int dwFlags;
  external Pointer<DDVIDEOPORTBANDWIDTH> lpBandwidth;
  @Int32() external int ddRVal;
  external Pointer GetVideoPortBandwidth;
}

class DD_GETVPORTINPUTFORMATDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_LOCAL> lpDD;
  external Pointer<DD_VIDEOPORT_LOCAL> lpVideoPort;
  @Uint32() external int dwFlags;
  external Pointer<DDPIXELFORMAT> lpddpfFormat;
  @Uint32() external int dwNumFormats;
  @Int32() external int ddRVal;
  external Pointer GetVideoPortInputFormats;
}

class DD_GETVPORTOUTPUTFORMATDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_LOCAL> lpDD;
  external Pointer<DD_VIDEOPORT_LOCAL> lpVideoPort;
  @Uint32() external int dwFlags;
  external Pointer<DDPIXELFORMAT> lpddpfInputFormat;
  external Pointer<DDPIXELFORMAT> lpddpfOutputFormats;
  @Uint32() external int dwNumFormats;
  @Int32() external int ddRVal;
  external Pointer GetVideoPortInputFormats;
}

class DD_GETVPORTFIELDDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_LOCAL> lpDD;
  external Pointer<DD_VIDEOPORT_LOCAL> lpVideoPort;
  @Int32() external int bField;
  @Int32() external int ddRVal;
  external Pointer GetVideoPortField;
}

class DD_GETVPORTLINEDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_LOCAL> lpDD;
  external Pointer<DD_VIDEOPORT_LOCAL> lpVideoPort;
  @Uint32() external int dwLine;
  @Int32() external int ddRVal;
  external Pointer GetVideoPortLine;
}

class DD_GETVPORTCONNECTDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_LOCAL> lpDD;
  @Uint32() external int dwPortId;
  external Pointer<DDVIDEOPORTCONNECT> lpConnect;
  @Uint32() external int dwNumEntries;
  @Int32() external int ddRVal;
  external Pointer GetVideoPortConnectInfo;
}

class DD_DESTROYVPORTDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_LOCAL> lpDD;
  external Pointer<DD_VIDEOPORT_LOCAL> lpVideoPort;
  @Int32() external int ddRVal;
  external Pointer DestroyVideoPort;
}

class DD_GETVPORTFLIPSTATUSDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_LOCAL> lpDD;
  @IntPtr() external int fpSurface;
  @Int32() external int ddRVal;
  external Pointer GetVideoPortFlipStatus;
}

class DD_UPDATEVPORTDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_LOCAL> lpDD;
  external Pointer<DD_VIDEOPORT_LOCAL> lpVideoPort;
  external Pointer<Pointer<DD_SURFACE_INT>> lplpDDSurface;
  external Pointer<Pointer<DD_SURFACE_INT>> lplpDDVBISurface;
  external Pointer<DDVIDEOPORTINFO> lpVideoInfo;
  @Uint32() external int dwFlags;
  @Uint32() external int dwNumAutoflip;
  @Uint32() external int dwNumVBIAutoflip;
  @Int32() external int ddRVal;
  external Pointer UpdateVideoPort;
}

class DD_WAITFORVPORTSYNCDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_LOCAL> lpDD;
  external Pointer<DD_VIDEOPORT_LOCAL> lpVideoPort;
  @Uint32() external int dwFlags;
  @Uint32() external int dwLine;
  @Uint32() external int dwTimeOut;
  @Int32() external int ddRVal;
  external Pointer UpdateVideoPort;
}

class DD_GETVPORTSIGNALDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_LOCAL> lpDD;
  external Pointer<DD_VIDEOPORT_LOCAL> lpVideoPort;
  @Uint32() external int dwStatus;
  @Int32() external int ddRVal;
  external Pointer GetVideoSignalStatus;
}

class DD_VPORTCOLORDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_LOCAL> lpDD;
  external Pointer<DD_VIDEOPORT_LOCAL> lpVideoPort;
  @Uint32() external int dwFlags;
  external Pointer<DDCOLORCONTROL> lpColorData;
  @Int32() external int ddRVal;
  external Pointer ColorControl;
}

class DD_COLORCONTROLDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_GLOBAL> lpDD;
  external Pointer<DD_SURFACE_LOCAL> lpDDSurface;
  external Pointer<DDCOLORCONTROL> lpColorData;
  @Uint32() external int dwFlags;
  @Int32() external int ddRVal;
  external Pointer ColorControl;
}

class DD_GETDRIVERINFODATA extends Struct {
  external Pointer dhpdev;
  @Uint32() external int dwSize;
  @Uint32() external int dwFlags;
  external GUID guidInfo;
  @Uint32() external int dwExpectedSize;
  external Pointer lpvData;
  @Uint32() external int dwActualSize;
  @Int32() external int ddRVal;
}

class DD_GETAVAILDRIVERMEMORYDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_GLOBAL> lpDD;
  external DDSCAPS DDSCaps;
  @Uint32() external int dwTotal;
  @Uint32() external int dwFree;
  @Int32() external int ddRVal;
  external Pointer GetAvailDriverMemory;
}

class DD_FREEDRIVERMEMORYDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_GLOBAL> lpDD;
  external Pointer<DD_SURFACE_LOCAL> lpDDSurface;
  @Int32() external int ddRVal;
  external Pointer FreeDriverMemory;
}

class DD_SETEXCLUSIVEMODEDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_GLOBAL> lpDD;
  @Uint32() external int dwEnterExcl;
  @Uint32() external int dwReserved;
  @Int32() external int ddRVal;
  external Pointer SetExclusiveMode;
}

class DD_FLIPTOGDISURFACEDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_GLOBAL> lpDD;
  @Uint32() external int dwToGDI;
  @Uint32() external int dwReserved;
  @Int32() external int ddRVal;
  external Pointer FlipToGDISurface;
}

class DD_SYNCSURFACEDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_LOCAL> lpDD;
  external Pointer<DD_SURFACE_LOCAL> lpDDSurface;
  @Uint32() external int dwSurfaceOffset;
  @IntPtr() external int fpLockPtr;
  @Int32() external int lPitch;
  @Uint32() external int dwOverlayOffset;
  @Uint32() external int dwDriverReserved1;
  @Uint32() external int dwDriverReserved2;
  @Uint32() external int dwDriverReserved3;
  @Uint32() external int dwDriverReserved4;
  @Int32() external int ddRVal;
}

class DD_SYNCVIDEOPORTDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_LOCAL> lpDD;
  external Pointer<DD_VIDEOPORT_LOCAL> lpVideoPort;
  @Uint32() external int dwOriginOffset;
  @Uint32() external int dwHeight;
  @Uint32() external int dwVBIHeight;
  @Uint32() external int dwDriverReserved1;
  @Uint32() external int dwDriverReserved2;
  @Uint32() external int dwDriverReserved3;
  @Int32() external int ddRVal;
}

class DD_GETMOCOMPGUIDSDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_LOCAL> lpDD;
  @Uint32() external int dwNumGuids;
  external Pointer<GUID> lpGuids;
  @Int32() external int ddRVal;
}

class DD_GETMOCOMPFORMATSDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_LOCAL> lpDD;
  external Pointer<GUID> lpGuid;
  @Uint32() external int dwNumFormats;
  external Pointer<DDPIXELFORMAT> lpFormats;
  @Int32() external int ddRVal;
}

class DD_CREATEMOCOMPDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_LOCAL> lpDD;
  external Pointer<DD_MOTIONCOMP_LOCAL> lpMoComp;
  external Pointer<GUID> lpGuid;
  @Uint32() external int dwUncompWidth;
  @Uint32() external int dwUncompHeight;
  external DDPIXELFORMAT ddUncompPixelFormat;
  external Pointer lpData;
  @Uint32() external int dwDataSize;
  @Int32() external int ddRVal;
}

class DDCOMPBUFFERINFO extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwNumCompBuffers;
  @Uint32() external int dwWidthToCreate;
  @Uint32() external int dwHeightToCreate;
  @Uint32() external int dwBytesToAllocate;
  external DDSCAPS2 ddCompCaps;
  external DDPIXELFORMAT ddPixelFormat;
}

class DD_GETMOCOMPCOMPBUFFDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_LOCAL> lpDD;
  external Pointer<GUID> lpGuid;
  @Uint32() external int dwWidth;
  @Uint32() external int dwHeight;
  external DDPIXELFORMAT ddPixelFormat;
  @Uint32() external int dwNumTypesCompBuffs;
  external Pointer<DDCOMPBUFFERINFO> lpCompBuffInfo;
  @Int32() external int ddRVal;
}

class DD_GETINTERNALMOCOMPDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_LOCAL> lpDD;
  external Pointer<GUID> lpGuid;
  @Uint32() external int dwWidth;
  @Uint32() external int dwHeight;
  external DDPIXELFORMAT ddPixelFormat;
  @Uint32() external int dwScratchMemAlloc;
  @Int32() external int ddRVal;
}

class DD_BEGINMOCOMPFRAMEDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_LOCAL> lpDD;
  external Pointer<DD_MOTIONCOMP_LOCAL> lpMoComp;
  external Pointer<DD_SURFACE_LOCAL> lpDestSurface;
  @Uint32() external int dwInputDataSize;
  external Pointer lpInputData;
  @Uint32() external int dwOutputDataSize;
  external Pointer lpOutputData;
  @Int32() external int ddRVal;
}

class DD_ENDMOCOMPFRAMEDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_LOCAL> lpDD;
  external Pointer<DD_MOTIONCOMP_LOCAL> lpMoComp;
  external Pointer lpInputData;
  @Uint32() external int dwInputDataSize;
  @Int32() external int ddRVal;
}

class DDMOCOMPBUFFERINFO extends Struct {
  @Uint32() external int dwSize;
  external Pointer<DD_SURFACE_LOCAL> lpCompSurface;
  @Uint32() external int dwDataOffset;
  @Uint32() external int dwDataSize;
  external Pointer lpPrivate;
}

class DD_RENDERMOCOMPDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_LOCAL> lpDD;
  external Pointer<DD_MOTIONCOMP_LOCAL> lpMoComp;
  @Uint32() external int dwNumBuffers;
  external Pointer<DDMOCOMPBUFFERINFO> lpBufferInfo;
  @Uint32() external int dwFunction;
  external Pointer lpInputData;
  @Uint32() external int dwInputDataSize;
  external Pointer lpOutputData;
  @Uint32() external int dwOutputDataSize;
  @Int32() external int ddRVal;
}

class DD_QUERYMOCOMPSTATUSDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_LOCAL> lpDD;
  external Pointer<DD_MOTIONCOMP_LOCAL> lpMoComp;
  external Pointer<DD_SURFACE_LOCAL> lpSurface;
  @Uint32() external int dwFlags;
  @Int32() external int ddRVal;
}

class DD_DESTROYMOCOMPDATA extends Struct {
  external Pointer<DD_DIRECTDRAW_LOCAL> lpDD;
  external Pointer<DD_MOTIONCOMP_LOCAL> lpMoComp;
  @Int32() external int ddRVal;
}

class DD_CREATESURFACEEXDATA extends Struct {
  @Uint32() external int dwFlags;
  external Pointer<DD_DIRECTDRAW_LOCAL> lpDDLcl;
  external Pointer<DD_SURFACE_LOCAL> lpDDSLcl;
  @Int32() external int ddRVal;
}

class DD_GETDRIVERSTATEDATA extends Struct {
  @Uint32() external int dwFlags;
  @Uint32() external int Anonymous;
  external Pointer<Uint32> lpdwStates;
  @Uint32() external int dwLength;
  @Int32() external int ddRVal;
}

class FD_XFORM extends Struct {
  @Float() external double eXX;
  @Float() external double eXY;
  @Float() external double eYX;
  @Float() external double eYY;
}

class FD_DEVICEMETRICS extends Struct {
  @Uint32() external int flRealizedType;
  external POINTE pteBase;
  external POINTE pteSide;
  @Int32() external int lD;
  @Int32() external int fxMaxAscender;
  @Int32() external int fxMaxDescender;
  external POINTL ptlUnderline1;
  external POINTL ptlStrikeOut;
  external POINTL ptlULThickness;
  external POINTL ptlSOThickness;
  @Uint32() external int cxMax;
  @Uint32() external int cyMax;
  @Uint32() external int cjGlyphMax;
  external FD_XFORM fdxQuantized;
  @Int32() external int lNonLinearExtLeading;
  @Int32() external int lNonLinearIntLeading;
  @Int32() external int lNonLinearMaxCharWidth;
  @Int32() external int lNonLinearAvgCharWidth;
  @Int32() external int lMinA;
  @Int32() external int lMinC;
  @Int32() external int lMinD;
  @Array(1)
  external Array<Int32> alReserved;
}

class WCRUN extends Struct {
  @Uint16() external int wcLow;
  @Uint16() external int cGlyphs;
  external Pointer<Uint32> phg;
}

class FD_GLYPHSET extends Struct {
  @Uint32() external int cjThis;
  @Uint32() external int flAccel;
  @Uint32() external int cGlyphsSupported;
  @Uint32() external int cRuns;
  @Array(1)
  external Array<WCRUN> awcrun;
}

class FD_GLYPHATTR extends Struct {
  @Uint32() external int cjThis;
  @Uint32() external int cGlyphs;
  @Uint32() external int iMode;
  @Array(1)
  external Array<Uint8> aGlyphAttr;
}

class FD_KERNINGPAIR extends Struct {
  @Uint16() external int wcFirst;
  @Uint16() external int wcSecond;
  @Int16() external int fwdKern;
}

class FONTDIFF extends Struct {
  @Uint8() external int jReserved1;
  @Uint8() external int jReserved2;
  @Uint8() external int jReserved3;
  @Uint8() external int bWeight;
  @Uint16() external int usWinWeight;
  @Uint16() external int fsSelection;
  @Int16() external int fwdAveCharWidth;
  @Int16() external int fwdMaxCharInc;
  external POINTL ptlCaret;
}

class FONTSIM extends Struct {
  @Int32() external int dpBold;
  @Int32() external int dpItalic;
  @Int32() external int dpBoldItalic;
}

class IFIMETRICS extends Struct {
  @Uint32() external int cjThis;
  @Uint32() external int cjIfiExtra;
  @Int32() external int dpwszFamilyName;
  @Int32() external int dpwszStyleName;
  @Int32() external int dpwszFaceName;
  @Int32() external int dpwszUniqueName;
  @Int32() external int dpFontSim;
  @Int32() external int lEmbedId;
  @Int32() external int lItalicAngle;
  @Int32() external int lCharBias;
  @Int32() external int dpCharSets;
  @Uint8() external int jWinCharSet;
  @Uint8() external int jWinPitchAndFamily;
  @Uint16() external int usWinWeight;
  @Uint32() external int flInfo;
  @Uint16() external int fsSelection;
  @Uint16() external int fsType;
  @Int16() external int fwdUnitsPerEm;
  @Int16() external int fwdLowestPPEm;
  @Int16() external int fwdWinAscender;
  @Int16() external int fwdWinDescender;
  @Int16() external int fwdMacAscender;
  @Int16() external int fwdMacDescender;
  @Int16() external int fwdMacLineGap;
  @Int16() external int fwdTypoAscender;
  @Int16() external int fwdTypoDescender;
  @Int16() external int fwdTypoLineGap;
  @Int16() external int fwdAveCharWidth;
  @Int16() external int fwdMaxCharInc;
  @Int16() external int fwdCapHeight;
  @Int16() external int fwdXHeight;
  @Int16() external int fwdSubscriptXSize;
  @Int16() external int fwdSubscriptYSize;
  @Int16() external int fwdSubscriptXOffset;
  @Int16() external int fwdSubscriptYOffset;
  @Int16() external int fwdSuperscriptXSize;
  @Int16() external int fwdSuperscriptYSize;
  @Int16() external int fwdSuperscriptXOffset;
  @Int16() external int fwdSuperscriptYOffset;
  @Int16() external int fwdUnderscoreSize;
  @Int16() external int fwdUnderscorePosition;
  @Int16() external int fwdStrikeoutSize;
  @Int16() external int fwdStrikeoutPosition;
  @Uint8() external int chFirstChar;
  @Uint8() external int chLastChar;
  @Uint8() external int chDefaultChar;
  @Uint8() external int chBreakChar;
  @Uint16() external int wcFirstChar;
  @Uint16() external int wcLastChar;
  @Uint16() external int wcDefaultChar;
  @Uint16() external int wcBreakChar;
  external POINTL ptlBaseline;
  external POINTL ptlAspect;
  external POINTL ptlCaret;
  external RECTL rclFontBox;
  @Array(4)
  external Array<Uint8> achVendId;
  @Uint32() external int cKerningPairs;
  @Uint32() external int ulPanoseCulture;
  external PANOSE panose;
  external Pointer Align;
}

class IFIEXTRA extends Struct {
  @Uint32() external int ulIdentifier;
  @Int32() external int dpFontSig;
  @Uint32() external int cig;
  @Int32() external int dpDesignVector;
  @Int32() external int dpAxesInfoW;
  @Array(1)
  external Array<Uint32> aulReserved;
}

class DRVFN extends Struct {
  @Uint32() external int iFunc;
  external PFN pfn;
}

class DRVENABLEDATA extends Struct {
  @Uint32() external int iDriverVersion;
  @Uint32() external int c;
  external Pointer<DRVFN> pdrvfn;
}

class DEVINFO extends Struct {
  @Uint32() external int flGraphicsCaps;
  external LOGFONT lfDefaultFont;
  external LOGFONT lfAnsiVarFont;
  external LOGFONT lfAnsiFixFont;
  @Uint32() external int cFonts;
  @Uint32() external int iDitherFormat;
  @Uint16() external int cxDither;
  @Uint16() external int cyDither;
  @IntPtr() external int hpalDefault;
  @Uint32() external int flGraphicsCaps2;
}

class LINEATTRS extends Struct {
  @Uint32() external int fl;
  @Uint32() external int iJoin;
  @Uint32() external int iEndCap;
  external FLOAT_LONG elWidth;
  @Float() external double eMiterLimit;
  @Uint32() external int cstyle;
  external Pointer<FLOAT_LONG> pstyle;
  external FLOAT_LONG elStyleState;
}

class XFORML extends Struct {
  @Float() external double eM11;
  @Float() external double eM12;
  @Float() external double eM21;
  @Float() external double eM22;
  @Float() external double eDx;
  @Float() external double eDy;
}

class CIECHROMA extends Struct {
  @Int32() external int x;
  @Int32() external int y;
  @Int32() external int Y;
}

class COLORINFO extends Struct {
  external CIECHROMA Red;
  external CIECHROMA Green;
  external CIECHROMA Blue;
  external CIECHROMA Cyan;
  external CIECHROMA Magenta;
  external CIECHROMA Yellow;
  external CIECHROMA AlignmentWhite;
  @Int32() external int RedGamma;
  @Int32() external int GreenGamma;
  @Int32() external int BlueGamma;
  @Int32() external int MagentaInCyanDye;
  @Int32() external int YellowInCyanDye;
  @Int32() external int CyanInMagentaDye;
  @Int32() external int YellowInMagentaDye;
  @Int32() external int CyanInYellowDye;
  @Int32() external int MagentaInYellowDye;
}

class GDIINFO extends Struct {
  @Uint32() external int ulVersion;
  @Uint32() external int ulTechnology;
  @Uint32() external int ulHorzSize;
  @Uint32() external int ulVertSize;
  @Uint32() external int ulHorzRes;
  @Uint32() external int ulVertRes;
  @Uint32() external int cBitsPixel;
  @Uint32() external int cPlanes;
  @Uint32() external int ulNumColors;
  @Uint32() external int flRaster;
  @Uint32() external int ulLogPixelsX;
  @Uint32() external int ulLogPixelsY;
  @Uint32() external int flTextCaps;
  @Uint32() external int ulDACRed;
  @Uint32() external int ulDACGreen;
  @Uint32() external int ulDACBlue;
  @Uint32() external int ulAspectX;
  @Uint32() external int ulAspectY;
  @Uint32() external int ulAspectXY;
  @Int32() external int xStyleStep;
  @Int32() external int yStyleStep;
  @Int32() external int denStyleStep;
  external POINTL ptlPhysOffset;
  external SIZE szlPhysSize;
  @Uint32() external int ulNumPalReg;
  external COLORINFO ciDevice;
  @Uint32() external int ulDevicePelsDPI;
  @Uint32() external int ulPrimaryOrder;
  @Uint32() external int ulHTPatternSize;
  @Uint32() external int ulHTOutputFormat;
  @Uint32() external int flHTFlags;
  @Uint32() external int ulVRefresh;
  @Uint32() external int ulBltAlignment;
  @Uint32() external int ulPanningHorzRes;
  @Uint32() external int ulPanningVertRes;
  @Uint32() external int xPanningAlignment;
  @Uint32() external int yPanningAlignment;
  @Uint32() external int cxHTPat;
  @Uint32() external int cyHTPat;
  external Pointer<Uint8> pHTPatA;
  external Pointer<Uint8> pHTPatB;
  external Pointer<Uint8> pHTPatC;
  @Uint32() external int flShadeBlend;
  @Uint32() external int ulPhysicalPixelCharacteristics;
  @Uint32() external int ulPhysicalPixelGamma;
}

class BRUSHOBJ extends Struct {
  @Uint32() external int iSolidColor;
  external Pointer pvRbrush;
  @Uint32() external int flColorType;
}

class CLIPOBJ extends Struct {
  @Uint32() external int iUniq;
  external RECTL rclBounds;
  @Uint8() external int iDComplexity;
  @Uint8() external int iFComplexity;
  @Uint8() external int iMode;
  @Uint8() external int fjOptions;
}

class DRIVEROBJ extends Struct {
  external Pointer pvObj;
  external FREEOBJPROC pFreeProc;
  @IntPtr() external int hdev;
  @IntPtr() external int dhpdev;
}

class FONTOBJ extends Struct {
  @Uint32() external int iUniq;
  @Uint32() external int iFace;
  @Uint32() external int cxMax;
  @Uint32() external int flFontType;
  @IntPtr() external int iTTUniq;
  @IntPtr() external int iFile;
  external SIZE sizLogResPpi;
  @Uint32() external int ulStyleSize;
  external Pointer pvConsumer;
  external Pointer pvProducer;
}

class BLENDOBJ extends Struct {
  external BLENDFUNCTION BlendFunction;
}

class PALOBJ extends Struct {
  @Uint32() external int ulReserved;
}

class PATHOBJ extends Struct {
  @Uint32() external int fl;
  @Uint32() external int cCurves;
}

class SURFOBJ extends Struct {
  @IntPtr() external int dhsurf;
  @IntPtr() external int hsurf;
  @IntPtr() external int dhpdev;
  @IntPtr() external int hdev;
  external SIZE sizlBitmap;
  @Uint32() external int cjBits;
  external Pointer pvBits;
  external Pointer pvScan0;
  @Int32() external int lDelta;
  @Uint32() external int iUniq;
  @Uint32() external int iBitmapFormat;
  @Uint16() external int iType;
  @Uint16() external int fjBitmap;
}

class WNDOBJ extends Struct {
  external CLIPOBJ coClient;
  external Pointer pvConsumer;
  external RECTL rclClient;
  external Pointer<SURFOBJ> psoOwner;
}

class XLATEOBJ extends Struct {
  @Uint32() external int iUniq;
  @Uint32() external int flXlate;
  @Uint16() external int iSrcType;
  @Uint16() external int iDstType;
  @Uint32() external int cEntries;
  external Pointer<Uint32> pulXlate;
}

class ENUMRECTS extends Struct {
  @Uint32() external int c;
  @Array(1)
  external Array<RECTL> arcl;
}

class GLYPHBITS extends Struct {
  external POINTL ptlOrigin;
  external SIZE sizlBitmap;
  @Array(1)
  external Array<Uint8> aj;
}

class GLYPHDEF extends Struct {
  external Pointer<GLYPHBITS> pgb;
  external Pointer<PATHOBJ> ppo;
}

class GLYPHPOS extends Struct {
  @Uint32() external int hg;
  external Pointer<GLYPHDEF> pgdf;
  external POINTL ptl;
}

class GLYPHDATA extends Struct {
  external GLYPHDEF gdf;
  @Uint32() external int hg;
  @Int32() external int fxD;
  @Int32() external int fxA;
  @Int32() external int fxAB;
  @Int32() external int fxInkTop;
  @Int32() external int fxInkBottom;
  external RECTL rclInk;
  external POINTQF ptqD;
}

class STROBJ extends Struct {
  @Uint32() external int cGlyphs;
  @Uint32() external int flAccel;
  @Uint32() external int ulCharInc;
  external RECTL rclBkGround;
  external Pointer<GLYPHPOS> pgp;
  external Pointer<Utf16> pwszOrg;
}

class FONTINFO extends Struct {
  @Uint32() external int cjThis;
  @Uint32() external int flCaps;
  @Uint32() external int cGlyphsSupported;
  @Uint32() external int cjMaxGlyph1;
  @Uint32() external int cjMaxGlyph4;
  @Uint32() external int cjMaxGlyph8;
  @Uint32() external int cjMaxGlyph32;
}

class PATHDATA extends Struct {
  @Uint32() external int flags;
  @Uint32() external int count;
  external Pointer<POINTFIX> pptfx;
}

class RUN extends Struct {
  @Int32() external int iStart;
  @Int32() external int iStop;
}

class CLIPLINE extends Struct {
  external POINTFIX ptfxA;
  external POINTFIX ptfxB;
  @Int32() external int lStyleState;
  @Uint32() external int c;
  @Array(1)
  external Array<RUN> arun;
}

class PERBANDINFO extends Struct {
  @Int32() external int bRepeatThisBand;
  external SIZE szlBand;
  @Uint32() external int ulHorzRes;
  @Uint32() external int ulVertRes;
}

class GAMMARAMP extends Struct {
  @Array(129)
  external Array<Uint16> Red;
  @Array(129)
  external Array<Uint16> Green;
  @Array(129)
  external Array<Uint16> Blue;
}

class DEVHTINFO extends Struct {
  @Uint32() external int HTFlags;
  @Uint32() external int HTPatternSize;
  @Uint32() external int DevPelsDPI;
  external COLORINFO ColorInfo;
}

class DEVHTADJDATA extends Struct {
  @Uint32() external int DeviceFlags;
  @Uint32() external int DeviceXDPI;
  @Uint32() external int DeviceYDPI;
  external Pointer<DEVHTINFO> pDefHTInfo;
  external Pointer<DEVHTINFO> pAdjHTInfo;
}

class TYPE1_FONT extends Struct {
  @IntPtr() external int hPFM;
  @IntPtr() external int hPFB;
  @Uint32() external int ulIdentifier;
}

class ENGSAFESEMAPHORE extends Struct {
  external Pointer<HSEMAPHORE__> hsem;
  @Int32() external int lCount;
}

class FLOATOBJ_XFORM extends Struct {
  @Float() external double eM11;
  @Float() external double eM12;
  @Float() external double eM21;
  @Float() external double eM22;
  @Float() external double eDx;
  @Float() external double eDy;
}

class ENG_TIME_FIELDS extends Struct {
  @Uint16() external int usYear;
  @Uint16() external int usMonth;
  @Uint16() external int usDay;
  @Uint16() external int usHour;
  @Uint16() external int usMinute;
  @Uint16() external int usSecond;
  @Uint16() external int usMilliseconds;
  @Uint16() external int usWeekday;
}

class VIDEOPARAMETERS extends Struct {
  external GUID Guid;
  @Uint32() external int dwOffset;
  @Uint32() external int dwCommand;
  @Uint32() external int dwFlags;
  @Uint32() external int dwMode;
  @Uint32() external int dwTVStandard;
  @Uint32() external int dwAvailableModes;
  @Uint32() external int dwAvailableTVStandard;
  @Uint32() external int dwFlickerFilter;
  @Uint32() external int dwOverScanX;
  @Uint32() external int dwOverScanY;
  @Uint32() external int dwMaxUnscaledX;
  @Uint32() external int dwMaxUnscaledY;
  @Uint32() external int dwPositionX;
  @Uint32() external int dwPositionY;
  @Uint32() external int dwBrightness;
  @Uint32() external int dwContrast;
  @Uint32() external int dwCPType;
  @Uint32() external int dwCPCommand;
  @Uint32() external int dwCPStandard;
  @Uint32() external int dwCPKey;
  @Uint32() external int bCP_APSTriggerBits;
  @Array(129)
  external Array<Uint8> bOEMCopyProtection;
}

class DDKERNELCAPS extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwCaps;
  @Uint32() external int dwIRQCaps;
}

class SURFACEALIGNMENT extends Struct {
  @Uint32() external int Anonymous;
}

class HEAPALIGNMENT extends Struct {
  @Uint32() external int dwSize;
  external DDSCAPS ddsCaps;
  @Uint32() external int dwReserved;
  external SURFACEALIGNMENT ExecuteBuffer;
  external SURFACEALIGNMENT Overlay;
  external SURFACEALIGNMENT Texture;
  external SURFACEALIGNMENT ZBuffer;
  external SURFACEALIGNMENT AlphaBuffer;
  external SURFACEALIGNMENT Offscreen;
  external SURFACEALIGNMENT FlipTarget;
}

class VMEMHEAP extends Struct {
  @Uint32() external int dwFlags;
  @Uint32() external int stride;
  external Pointer freeList;
  external Pointer allocList;
  @Uint32() external int dwTotalSize;
  @IntPtr() external int fpGARTLin;
  @IntPtr() external int fpGARTDev;
  @Uint32() external int dwCommitedSize;
  @Uint32() external int dwCoalesceCount;
  external HEAPALIGNMENT Alignment;
  external DDSCAPSEX ddsCapsEx;
  external DDSCAPSEX ddsCapsExAlt;
  @Int64() external int liPhysAGPBase;
  @IntPtr() external int hdevAGP;
  external Pointer pvPhysRsrv;
  external Pointer<Uint8> pAgpCommitMask;
  @Uint32() external int dwAgpCommitMaskSize;
}

class DDCORECAPS extends Struct {
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
}

class DDHAL_WAITFORVERTICALBLANKDATA extends Struct {
  external Pointer<DDRAWI_DIRECTDRAW_GBL> lpDD;
  @Uint32() external int dwFlags;
  @Uint32() external int bIsInVB;
  @IntPtr() external int hEvent;
  @Int32() external int ddRVal;
  external Pointer<DDHAL_WAITFORVERTICALBLANK> WaitForVerticalBlank;
}

class DDHAL_DESTROYDDLOCALDATA extends Struct {
  @Uint32() external int dwFlags;
  external Pointer<DDRAWI_DIRECTDRAW_LCL> pDDLcl;
  @Int32() external int ddRVal;
}

