// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// Native callback functions that can get called by the Win32 API

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'structs.g.dart';
import '../../combase.dart';
import '../../guid.dart';
import '../../devices/display/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/directdraw/structs.g.dart';
import '../../graphics/opengl/structs.g.dart';
import '../../graphics/gdi/structs.g.dart';
import '../../ui/colorsystem/structs.g.dart';

typedef FREEOBJPROC = Int32 Function(
  Pointer<DRIVEROBJ> pDriverObj,
);
typedef PFN = IntPtr Function();
typedef PFN_DrvAccumulateD3DDirtyRect = Int32 Function(
  Pointer<SURFOBJ> param0,
  Pointer<CDDDXGK_REDIRBITMAPPRESENTINFO> param1,
);
typedef PFN_DrvAlphaBlend = Int32 Function(
  Pointer<SURFOBJ> param0,
  Pointer<SURFOBJ> param1,
  Pointer<CLIPOBJ> param2,
  Pointer<XLATEOBJ> param3,
  Pointer<RECTL> param4,
  Pointer<RECTL> param5,
  Pointer<BLENDOBJ> param6,
);
typedef PFN_DrvAssertMode = Int32 Function(
  IntPtr param0,
  Int32 param1,
);
typedef PFN_DrvAssociateSharedSurface = Int32 Function(
  Pointer<SURFOBJ> param0,
  IntPtr param1,
  IntPtr param2,
  SIZE param3,
);
typedef PFN_DrvBitBlt = Int32 Function(
  Pointer<SURFOBJ> param0,
  Pointer<SURFOBJ> param1,
  Pointer<SURFOBJ> param2,
  Pointer<CLIPOBJ> param3,
  Pointer<XLATEOBJ> param4,
  Pointer<RECTL> param5,
  Pointer<POINTL> param6,
  Pointer<POINTL> param7,
  Pointer<BRUSHOBJ> param8,
  Pointer<POINTL> param9,
  Uint32 param10,
);
typedef PFN_DrvCompletePDEV = Void Function(
  IntPtr param0,
  IntPtr param1,
);
typedef PFN_DrvCopyBits = Int32 Function(
  Pointer<SURFOBJ> param0,
  Pointer<SURFOBJ> param1,
  Pointer<CLIPOBJ> param2,
  Pointer<XLATEOBJ> param3,
  Pointer<RECTL> param4,
  Pointer<POINTL> param5,
);
typedef PFN_DrvCreateDeviceBitmap = IntPtr Function(
  IntPtr param0,
  SIZE param1,
  Uint32 param2,
);
typedef PFN_DrvCreateDeviceBitmapEx = IntPtr Function(
  IntPtr param0,
  SIZE param1,
  Uint32 param2,
  Uint32 param3,
  IntPtr param4,
  Uint32 param5,
  Uint32 param6,
  Pointer<IntPtr> param7,
);
typedef PFN_DrvDeleteDeviceBitmap = Void Function(
  IntPtr param0,
);
typedef PFN_DrvDeleteDeviceBitmapEx = Void Function(
  IntPtr param0,
);
typedef PFN_DrvDeriveSurface = IntPtr Function(
  Pointer<DD_DIRECTDRAW_GLOBAL> param0,
  Pointer<DD_SURFACE_LOCAL> param1,
);
typedef PFN_DrvDescribePixelFormat = Int32 Function(
  IntPtr param0,
  Int32 param1,
  Uint32 param2,
  Pointer<PIXELFORMATDESCRIPTOR> param3,
);
typedef PFN_DrvDestroyFont = Void Function(
  Pointer<FONTOBJ> param0,
);
typedef PFN_DrvDisableDirectDraw = Void Function(
  IntPtr param0,
);
typedef PFN_DrvDisableDriver = Void Function();
typedef PFN_DrvDisablePDEV = Void Function(
  IntPtr param0,
);
typedef PFN_DrvDisableSurface = Void Function(
  IntPtr param0,
);
typedef PFN_DrvDitherColor = Uint32 Function(
  IntPtr param0,
  Uint32 param1,
  Uint32 param2,
  Pointer<Uint32> param3,
);
typedef PFN_DrvDrawEscape = Uint32 Function(
  Pointer<SURFOBJ> param0,
  Uint32 param1,
  Pointer<CLIPOBJ> param2,
  Pointer<RECTL> param3,
  Uint32 param4,
  Pointer param5,
);
typedef PFN_DrvEnableDirectDraw = Int32 Function(
  IntPtr param0,
  Pointer<DD_CALLBACKS> param1,
  Pointer<DD_SURFACECALLBACKS> param2,
  Pointer<DD_PALETTECALLBACKS> param3,
);
typedef PFN_DrvEnableDriver = Int32 Function(
  Uint32 param0,
  Uint32 param1,
  Pointer<DRVENABLEDATA> param2,
);
typedef PFN_DrvEnablePDEV = IntPtr Function(
  Pointer<DEVMODE> param0,
  Pointer<Utf16> param1,
  Uint32 param2,
  Pointer<IntPtr> param3,
  Uint32 param4,
  Pointer<GDIINFO> param5,
  Uint32 param6,
  Pointer<DEVINFO> param7,
  IntPtr param8,
  Pointer<Utf16> param9,
  IntPtr param10,
);
typedef PFN_DrvEnableSurface = IntPtr Function(
  IntPtr param0,
);
typedef PFN_DrvEndDoc = Int32 Function(
  Pointer<SURFOBJ> pso,
  Uint32 fl,
);
typedef PFN_DrvEndDxInterop = Int32 Function(
  Pointer<SURFOBJ> param0,
  Int32 param1,
  Pointer<Int32> param2,
  Pointer KernelModeDeviceHandle,
);
typedef PFN_DrvEscape = Uint32 Function(
  Pointer<SURFOBJ> param0,
  Uint32 param1,
  Uint32 param2,
  Pointer param3,
  Uint32 param4,
  Pointer param5,
);
typedef PFN_DrvFillPath = Int32 Function(
  Pointer<SURFOBJ> param0,
  Pointer<PATHOBJ> param1,
  Pointer<CLIPOBJ> param2,
  Pointer<BRUSHOBJ> param3,
  Pointer<POINTL> param4,
  Uint32 param5,
  Uint32 param6,
);
typedef PFN_DrvFontManagement = Uint32 Function(
  Pointer<SURFOBJ> param0,
  Pointer<FONTOBJ> param1,
  Uint32 param2,
  Uint32 param3,
  Pointer param4,
  Uint32 param5,
  Pointer param6,
);
typedef PFN_DrvFree = Void Function(
  Pointer param0,
  IntPtr param1,
);
typedef PFN_DrvGetDirectDrawInfo = Int32 Function(
  IntPtr param0,
  Pointer<DD_HALINFO> param1,
  Pointer<Uint32> param2,
  Pointer<VIDEOMEMORY> param3,
  Pointer<Uint32> param4,
  Pointer<Uint32> param5,
);
typedef PFN_DrvGetGlyphMode = Uint32 Function(
  IntPtr dhpdev,
  Pointer<FONTOBJ> pfo,
);
typedef PFN_DrvGetModes = Uint32 Function(
  IntPtr param0,
  Uint32 param1,
  Pointer<DEVMODE> param2,
);
typedef PFN_DrvGetTrueTypeFile = Pointer Function(
  IntPtr param0,
  Pointer<Uint32> param1,
);
typedef PFN_DrvGradientFill = Int32 Function(
  Pointer<SURFOBJ> param0,
  Pointer<CLIPOBJ> param1,
  Pointer<XLATEOBJ> param2,
  Pointer<TRIVERTEX> param3,
  Uint32 param4,
  Pointer param5,
  Uint32 param6,
  Pointer<RECTL> param7,
  Pointer<POINTL> param8,
  Uint32 param9,
);
typedef PFN_DrvIcmCheckBitmapBits = Int32 Function(
  IntPtr param0,
  IntPtr param1,
  Pointer<SURFOBJ> param2,
  Pointer<Uint8> param3,
);
typedef PFN_DrvIcmCreateColorTransform = IntPtr Function(
  IntPtr param0,
  Pointer<LOGCOLORSPACE> param1,
  Pointer param2,
  Uint32 param3,
  Pointer param4,
  Uint32 param5,
  Pointer param6,
  Uint32 param7,
  Uint32 param8,
);
typedef PFN_DrvIcmDeleteColorTransform = Int32 Function(
  IntPtr param0,
  IntPtr param1,
);
typedef PFN_DrvIcmSetDeviceGammaRamp = Int32 Function(
  IntPtr param0,
  Uint32 param1,
  Pointer param2,
);
typedef PFN_DrvLineTo = Int32 Function(
  Pointer<SURFOBJ> param0,
  Pointer<CLIPOBJ> param1,
  Pointer<BRUSHOBJ> param2,
  Int32 param3,
  Int32 param4,
  Int32 param5,
  Int32 param6,
  Pointer<RECTL> param7,
  Uint32 param8,
);
typedef PFN_DrvLoadFontFile = IntPtr Function(
  Uint32 param0,
  Pointer<IntPtr> param1,
  Pointer<Pointer> param2,
  Pointer<Uint32> param3,
  Pointer<DESIGNVECTOR> param4,
  Uint32 param5,
  Uint32 param6,
);
typedef PFN_DrvLockDisplayArea = Void Function(
  IntPtr param0,
  Pointer<RECTL> param1,
);
typedef PFN_DrvMovePointer = Void Function(
  Pointer<SURFOBJ> pso,
  Int32 x,
  Int32 y,
  Pointer<RECTL> prcl,
);
typedef PFN_DrvNextBand = Int32 Function(
  Pointer<SURFOBJ> param0,
  Pointer<POINTL> ppointl,
);
typedef PFN_DrvNotify = Void Function(
  Pointer<SURFOBJ> param0,
  Uint32 param1,
  Pointer param2,
);
typedef PFN_DrvPaint = Int32 Function(
  Pointer<SURFOBJ> param0,
  Pointer<CLIPOBJ> param1,
  Pointer<BRUSHOBJ> param2,
  Pointer<POINTL> param3,
  Uint32 param4,
);
typedef PFN_DrvPlgBlt = Int32 Function(
  Pointer<SURFOBJ> param0,
  Pointer<SURFOBJ> param1,
  Pointer<SURFOBJ> param2,
  Pointer<CLIPOBJ> param3,
  Pointer<XLATEOBJ> param4,
  Pointer<COLORADJUSTMENT> param5,
  Pointer<POINTL> param6,
  Pointer<POINTFIX> param7,
  Pointer<RECTL> param8,
  Pointer<POINTL> param9,
  Uint32 param10,
);
typedef PFN_DrvQueryAdvanceWidths = Int32 Function(
  IntPtr param0,
  Pointer<FONTOBJ> param1,
  Uint32 param2,
  Pointer<Uint32> param3,
  Pointer param4,
  Uint32 param5,
);
typedef PFN_DrvQueryDeviceSupport = Int32 Function(
  Pointer<SURFOBJ> param0,
  Pointer<XLATEOBJ> param1,
  Pointer<XFORMOBJ> param2,
  Uint32 param3,
  Uint32 param4,
  Pointer param5,
  Uint32 param6,
  Pointer param7,
);
typedef PFN_DrvQueryFont = Pointer<IFIMETRICS> Function(
  IntPtr param0,
  IntPtr param1,
  Uint32 param2,
  Pointer<IntPtr> param3,
);
typedef PFN_DrvQueryFontCaps = Int32 Function(
  Uint32 param0,
  Pointer<Uint32> param1,
);
typedef PFN_DrvQueryFontData = Int32 Function(
  IntPtr param0,
  Pointer<FONTOBJ> param1,
  Uint32 param2,
  Uint32 param3,
  Pointer<GLYPHDATA> param4,
  Pointer param5,
  Uint32 param6,
);
typedef PFN_DrvQueryFontFile = Int32 Function(
  IntPtr param0,
  Uint32 param1,
  Uint32 param2,
  Pointer<Uint32> param3,
);
typedef PFN_DrvQueryFontTree = Pointer Function(
  IntPtr param0,
  IntPtr param1,
  Uint32 param2,
  Uint32 param3,
  Pointer<IntPtr> param4,
);
typedef PFN_DrvQueryGlyphAttrs = Pointer<FD_GLYPHATTR> Function(
  Pointer<FONTOBJ> param0,
  Uint32 param1,
);
typedef PFN_DrvQueryPerBandInfo = Int32 Function(
  Pointer<SURFOBJ> param0,
  Pointer<PERBANDINFO> param1,
);
typedef PFN_DrvQuerySpoolType = Int32 Function(
  IntPtr dhpdev,
  Pointer<Utf16> pwchType,
);
typedef PFN_DrvQueryTrueTypeOutline = Int32 Function(
  IntPtr param0,
  Pointer<FONTOBJ> param1,
  Uint32 param2,
  Int32 param3,
  Pointer<GLYPHDATA> param4,
  Uint32 param5,
  Pointer<TTPOLYGONHEADER> param6,
);
typedef PFN_DrvQueryTrueTypeSection = Int32 Function(
  Uint32 param0,
  Uint32 param1,
  Uint32 param2,
  Pointer<IntPtr> param3,
  Pointer<Int32> param4,
);
typedef PFN_DrvQueryTrueTypeTable = Int32 Function(
  IntPtr param0,
  Uint32 param1,
  Uint32 param2,
  Int32 param3,
  Uint32 param4,
  Pointer<Uint8> param5,
  Pointer<Pointer<Uint8>> param6,
  Pointer<Uint32> param7,
);
typedef PFN_DrvRealizeBrush = Int32 Function(
  Pointer<BRUSHOBJ> param0,
  Pointer<SURFOBJ> param1,
  Pointer<SURFOBJ> param2,
  Pointer<SURFOBJ> param3,
  Pointer<XLATEOBJ> param4,
  Uint32 param5,
);
typedef PFN_DrvRenderHint = Int32 Function(
  IntPtr dhpdev,
  Uint32 NotifyCode,
  IntPtr Length,
  Pointer Data,
);
typedef PFN_DrvResetDevice = Uint32 Function(
  IntPtr param0,
  Pointer param1,
);
typedef PFN_DrvResetPDEV = Int32 Function(
  IntPtr dhpdevOld,
  IntPtr dhpdevNew,
);
typedef PFN_DrvSaveScreenBits = IntPtr Function(
  Pointer<SURFOBJ> param0,
  Uint32 param1,
  IntPtr param2,
  Pointer<RECTL> param3,
);
typedef PFN_DrvSendPage = Int32 Function(
  Pointer<SURFOBJ> param0,
);
typedef PFN_DrvSetPalette = Int32 Function(
  IntPtr param0,
  Pointer<PALOBJ> param1,
  Uint32 param2,
  Uint32 param3,
  Uint32 param4,
);
typedef PFN_DrvSetPixelFormat = Int32 Function(
  Pointer<SURFOBJ> param0,
  Int32 param1,
  IntPtr param2,
);
typedef PFN_DrvSetPointerShape = Uint32 Function(
  Pointer<SURFOBJ> param0,
  Pointer<SURFOBJ> param1,
  Pointer<SURFOBJ> param2,
  Pointer<XLATEOBJ> param3,
  Int32 param4,
  Int32 param5,
  Int32 param6,
  Int32 param7,
  Pointer<RECTL> param8,
  Uint32 param9,
);
typedef PFN_DrvStartBanding = Int32 Function(
  Pointer<SURFOBJ> param0,
  Pointer<POINTL> ppointl,
);
typedef PFN_DrvStartDoc = Int32 Function(
  Pointer<SURFOBJ> pso,
  Pointer<Utf16> pwszDocName,
  Uint32 dwJobId,
);
typedef PFN_DrvStartDxInterop = Int32 Function(
  Pointer<SURFOBJ> param0,
  Int32 param1,
  Pointer KernelModeDeviceHandle,
);
typedef PFN_DrvStartPage = Int32 Function(
  Pointer<SURFOBJ> pso,
);
typedef PFN_DrvStretchBlt = Int32 Function(
  Pointer<SURFOBJ> param0,
  Pointer<SURFOBJ> param1,
  Pointer<SURFOBJ> param2,
  Pointer<CLIPOBJ> param3,
  Pointer<XLATEOBJ> param4,
  Pointer<COLORADJUSTMENT> param5,
  Pointer<POINTL> param6,
  Pointer<RECTL> param7,
  Pointer<RECTL> param8,
  Pointer<POINTL> param9,
  Uint32 param10,
);
typedef PFN_DrvStretchBltROP = Int32 Function(
  Pointer<SURFOBJ> param0,
  Pointer<SURFOBJ> param1,
  Pointer<SURFOBJ> param2,
  Pointer<CLIPOBJ> param3,
  Pointer<XLATEOBJ> param4,
  Pointer<COLORADJUSTMENT> param5,
  Pointer<POINTL> param6,
  Pointer<RECTL> param7,
  Pointer<RECTL> param8,
  Pointer<POINTL> param9,
  Uint32 param10,
  Pointer<BRUSHOBJ> param11,
  Uint32 param12,
);
typedef PFN_DrvStrokeAndFillPath = Int32 Function(
  Pointer<SURFOBJ> param0,
  Pointer<PATHOBJ> param1,
  Pointer<CLIPOBJ> param2,
  Pointer<XFORMOBJ> param3,
  Pointer<BRUSHOBJ> param4,
  Pointer<LINEATTRS> param5,
  Pointer<BRUSHOBJ> param6,
  Pointer<POINTL> param7,
  Uint32 param8,
  Uint32 param9,
);
typedef PFN_DrvStrokePath = Int32 Function(
  Pointer<SURFOBJ> param0,
  Pointer<PATHOBJ> param1,
  Pointer<CLIPOBJ> param2,
  Pointer<XFORMOBJ> param3,
  Pointer<BRUSHOBJ> param4,
  Pointer<POINTL> param5,
  Pointer<LINEATTRS> param6,
  Uint32 param7,
);
typedef PFN_DrvSurfaceComplete = Int32 Function(
  IntPtr param0,
  IntPtr param1,
);
typedef PFN_DrvSwapBuffers = Int32 Function(
  Pointer<SURFOBJ> param0,
  Pointer<WNDOBJ> param1,
);
typedef PFN_DrvSynchronize = Void Function(
  IntPtr param0,
  Pointer<RECTL> param1,
);
typedef PFN_DrvSynchronizeRedirectionBitmaps = Int32 Function(
  IntPtr param0,
  Pointer<Uint64> param1,
);
typedef PFN_DrvSynchronizeSurface = Void Function(
  Pointer<SURFOBJ> param0,
  Pointer<RECTL> param1,
  Uint32 param2,
);
typedef PFN_DrvTextOut = Int32 Function(
  Pointer<SURFOBJ> param0,
  Pointer<STROBJ> param1,
  Pointer<FONTOBJ> param2,
  Pointer<CLIPOBJ> param3,
  Pointer<RECTL> param4,
  Pointer<RECTL> param5,
  Pointer<BRUSHOBJ> param6,
  Pointer<BRUSHOBJ> param7,
  Pointer<POINTL> param8,
  Uint32 param9,
);
typedef PFN_DrvTransparentBlt = Int32 Function(
  Pointer<SURFOBJ> param0,
  Pointer<SURFOBJ> param1,
  Pointer<CLIPOBJ> param2,
  Pointer<XLATEOBJ> param3,
  Pointer<RECTL> param4,
  Pointer<RECTL> param5,
  Uint32 param6,
  Uint32 param7,
);
typedef PFN_DrvUnloadFontFile = Int32 Function(
  IntPtr param0,
);
typedef PFN_DrvUnlockDisplayArea = Void Function(
  IntPtr param0,
  Pointer<RECTL> param1,
);
typedef PFN_EngCombineRgn = Int32 Function(
  IntPtr hrgnTrg,
  IntPtr hrgnSrc1,
  IntPtr hrgnSrc2,
  Int32 imode,
);
typedef PFN_EngCopyRgn = Int32 Function(
  IntPtr hrgnDst,
  IntPtr hrgnSrc,
);
typedef PFN_EngCreateRectRgn = IntPtr Function(
  Int32 left,
  Int32 top,
  Int32 right,
  Int32 bottom,
);
typedef PFN_EngDeleteRgn = Void Function(
  IntPtr hrgn,
);
typedef PFN_EngIntersectRgn = Int32 Function(
  IntPtr hrgnResult,
  IntPtr hRgnA,
  IntPtr hRgnB,
);
typedef PFN_EngSubtractRgn = Int32 Function(
  IntPtr hrgnResult,
  IntPtr hRgnA,
  IntPtr hRgnB,
);
typedef PFN_EngUnionRgn = Int32 Function(
  IntPtr hrgnResult,
  IntPtr hRgnA,
  IntPtr hRgnB,
);
typedef PFN_EngXorRgn = Int32 Function(
  IntPtr hrgnResult,
  IntPtr hRgnA,
  IntPtr hRgnB,
);
typedef PVIDEO_WIN32K_CALLOUT = Void Function(
  Pointer Params,
);
typedef SORTCOMP = Int32 Function(
  Pointer pv1,
  Pointer pv2,
);
typedef WNDOBJCHANGEPROC = Void Function(
  Pointer<WNDOBJ> pwo,
  Uint32 fl,
);
