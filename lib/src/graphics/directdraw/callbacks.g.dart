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
import '../../graphics/directdraw/IDirectDrawClipper.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/gdi/structs.g.dart';
import '../../graphics/directdraw/structs.g.dart';
import '../../graphics/directdraw/IDirectDrawSurface.dart';
import '../../graphics/directdraw/IDirectDrawSurface4.dart';
import '../../graphics/directdraw/IDirectDrawSurface7.dart';
import '../../graphics/directdraw/callbacks.g.dart';

typedef LPCLIPPERCALLBACK = Uint32 Function(
  Pointer<COMObject> lpDDClipper,
  IntPtr hWnd,
  Uint32 code,
  Pointer lpContext,
);
typedef LPDD32BITDRIVERINIT = Uint32 Function(
  Uint32 dwContext,
);
typedef LPDDENUMCALLBACKEXW = Int32 Function(
  Pointer<GUID> param0,
  Pointer<Utf16> param1,
  Pointer<Utf16> param2,
  Pointer param3,
  IntPtr param4,
);
typedef LPDDENUMCALLBACKW = Int32 Function(
  Pointer<GUID> param0,
  Pointer<Utf16> param1,
  Pointer<Utf16> param2,
  Pointer param3,
);
typedef LPDDENUMMODESCALLBACK = Int32 Function(
  Pointer<DDSURFACEDESC> param0,
  Pointer param1,
);
typedef LPDDENUMMODESCALLBACK2 = Int32 Function(
  Pointer<DDSURFACEDESC2> param0,
  Pointer param1,
);
typedef LPDDENUMSURFACESCALLBACK = Int32 Function(
  Pointer<COMObject> param0,
  Pointer<DDSURFACEDESC> param1,
  Pointer param2,
);
typedef LPDDENUMSURFACESCALLBACK2 = Int32 Function(
  Pointer<COMObject> param0,
  Pointer<DDSURFACEDESC2> param1,
  Pointer param2,
);
typedef LPDDENUMSURFACESCALLBACK7 = Int32 Function(
  Pointer<COMObject> param0,
  Pointer<DDSURFACEDESC2> param1,
  Pointer param2,
);
typedef LPDDENUMVIDEOCALLBACK = Int32 Function(
  Pointer<DDVIDEOPORTCAPS> param0,
  Pointer param1,
);
typedef LPDDGAMMACALIBRATORPROC = Int32 Function(
  Pointer<DDGAMMARAMP> param0,
  Pointer<Uint8> param1,
);
typedef LPDDHALCOLORCB_COLORCONTROL = Uint32 Function(
  Pointer<DDHAL_COLORCONTROLDATA> param0,
);
typedef LPDDHALEXEBUFCB_CANCREATEEXEBUF = Uint32 Function(
  Pointer<DDHAL_CANCREATESURFACEDATA> param0,
);
typedef LPDDHALEXEBUFCB_CREATEEXEBUF = Uint32 Function(
  Pointer<DDHAL_CREATESURFACEDATA> param0,
);
typedef LPDDHALEXEBUFCB_DESTROYEXEBUF = Uint32 Function(
  Pointer<DDHAL_DESTROYSURFACEDATA> param0,
);
typedef LPDDHALEXEBUFCB_LOCKEXEBUF = Uint32 Function(
  Pointer<DDHAL_LOCKDATA> param0,
);
typedef LPDDHALEXEBUFCB_UNLOCKEXEBUF = Uint32 Function(
  Pointer<DDHAL_UNLOCKDATA> param0,
);
typedef LPDDHALKERNELCB_SYNCSURFACE = Uint32 Function(
  Pointer<DDHAL_SYNCSURFACEDATA> param0,
);
typedef LPDDHALKERNELCB_SYNCVIDEOPORT = Uint32 Function(
  Pointer<DDHAL_SYNCVIDEOPORTDATA> param0,
);
typedef LPDDHALMOCOMPCB_BEGINFRAME = Uint32 Function(
  Pointer<DDHAL_BEGINMOCOMPFRAMEDATA> param0,
);
typedef LPDDHALMOCOMPCB_CREATE = Uint32 Function(
  Pointer<DDHAL_CREATEMOCOMPDATA> param0,
);
typedef LPDDHALMOCOMPCB_DESTROY = Uint32 Function(
  Pointer<DDHAL_DESTROYMOCOMPDATA> param0,
);
typedef LPDDHALMOCOMPCB_ENDFRAME = Uint32 Function(
  Pointer<DDHAL_ENDMOCOMPFRAMEDATA> param0,
);
typedef LPDDHALMOCOMPCB_GETCOMPBUFFINFO = Uint32 Function(
  Pointer<DDHAL_GETMOCOMPCOMPBUFFDATA> param0,
);
typedef LPDDHALMOCOMPCB_GETFORMATS = Uint32 Function(
  Pointer<DDHAL_GETMOCOMPFORMATSDATA> param0,
);
typedef LPDDHALMOCOMPCB_GETGUIDS = Uint32 Function(
  Pointer<DDHAL_GETMOCOMPGUIDSDATA> param0,
);
typedef LPDDHALMOCOMPCB_GETINTERNALINFO = Uint32 Function(
  Pointer<DDHAL_GETINTERNALMOCOMPDATA> param0,
);
typedef LPDDHALMOCOMPCB_QUERYSTATUS = Uint32 Function(
  Pointer<DDHAL_QUERYMOCOMPSTATUSDATA> param0,
);
typedef LPDDHALMOCOMPCB_RENDER = Uint32 Function(
  Pointer<DDHAL_RENDERMOCOMPDATA> param0,
);
typedef LPDDHALPALCB_DESTROYPALETTE = Uint32 Function(
  Pointer<DDHAL_DESTROYPALETTEDATA> param0,
);
typedef LPDDHALPALCB_SETENTRIES = Uint32 Function(
  Pointer<DDHAL_SETENTRIESDATA> param0,
);
typedef LPDDHALSURFCB_ADDATTACHEDSURFACE = Uint32 Function(
  Pointer<DDHAL_ADDATTACHEDSURFACEDATA> param0,
);
typedef LPDDHALSURFCB_BLT = Uint32 Function(
  Pointer<DDHAL_BLTDATA> param0,
);
typedef LPDDHALSURFCB_DESTROYSURFACE = Uint32 Function(
  Pointer<DDHAL_DESTROYSURFACEDATA> param0,
);
typedef LPDDHALSURFCB_FLIP = Uint32 Function(
  Pointer<DDHAL_FLIPDATA> param0,
);
typedef LPDDHALSURFCB_GETBLTSTATUS = Uint32 Function(
  Pointer<DDHAL_GETBLTSTATUSDATA> param0,
);
typedef LPDDHALSURFCB_GETFLIPSTATUS = Uint32 Function(
  Pointer<DDHAL_GETFLIPSTATUSDATA> param0,
);
typedef LPDDHALSURFCB_LOCK = Uint32 Function(
  Pointer<DDHAL_LOCKDATA> param0,
);
typedef LPDDHALSURFCB_SETCLIPLIST = Uint32 Function(
  Pointer<DDHAL_SETCLIPLISTDATA> param0,
);
typedef LPDDHALSURFCB_SETCOLORKEY = Uint32 Function(
  Pointer<DDHAL_SETCOLORKEYDATA> param0,
);
typedef LPDDHALSURFCB_SETOVERLAYPOSITION = Uint32 Function(
  Pointer<DDHAL_SETOVERLAYPOSITIONDATA> param0,
);
typedef LPDDHALSURFCB_SETPALETTE = Uint32 Function(
  Pointer<DDHAL_SETPALETTEDATA> param0,
);
typedef LPDDHALSURFCB_UNLOCK = Uint32 Function(
  Pointer<DDHAL_UNLOCKDATA> param0,
);
typedef LPDDHALSURFCB_UPDATEOVERLAY = Uint32 Function(
  Pointer<DDHAL_UPDATEOVERLAYDATA> param0,
);
typedef LPDDHALVPORTCB_CANCREATEVIDEOPORT = Uint32 Function(
  Pointer<DDHAL_CANCREATEVPORTDATA> param0,
);
typedef LPDDHALVPORTCB_COLORCONTROL = Uint32 Function(
  Pointer<DDHAL_VPORTCOLORDATA> param0,
);
typedef LPDDHALVPORTCB_CREATEVIDEOPORT = Uint32 Function(
  Pointer<DDHAL_CREATEVPORTDATA> param0,
);
typedef LPDDHALVPORTCB_DESTROYVPORT = Uint32 Function(
  Pointer<DDHAL_DESTROYVPORTDATA> param0,
);
typedef LPDDHALVPORTCB_FLIP = Uint32 Function(
  Pointer<DDHAL_FLIPVPORTDATA> param0,
);
typedef LPDDHALVPORTCB_GETBANDWIDTH = Uint32 Function(
  Pointer<DDHAL_GETVPORTBANDWIDTHDATA> param0,
);
typedef LPDDHALVPORTCB_GETFIELD = Uint32 Function(
  Pointer<DDHAL_GETVPORTFIELDDATA> param0,
);
typedef LPDDHALVPORTCB_GETFLIPSTATUS = Uint32 Function(
  Pointer<DDHAL_GETVPORTFLIPSTATUSDATA> param0,
);
typedef LPDDHALVPORTCB_GETINPUTFORMATS = Uint32 Function(
  Pointer<DDHAL_GETVPORTINPUTFORMATDATA> param0,
);
typedef LPDDHALVPORTCB_GETLINE = Uint32 Function(
  Pointer<DDHAL_GETVPORTLINEDATA> param0,
);
typedef LPDDHALVPORTCB_GETOUTPUTFORMATS = Uint32 Function(
  Pointer<DDHAL_GETVPORTOUTPUTFORMATDATA> param0,
);
typedef LPDDHALVPORTCB_GETSIGNALSTATUS = Uint32 Function(
  Pointer<DDHAL_GETVPORTSIGNALDATA> param0,
);
typedef LPDDHALVPORTCB_GETVPORTCONNECT = Uint32 Function(
  Pointer<DDHAL_GETVPORTCONNECTDATA> param0,
);
typedef LPDDHALVPORTCB_UPDATE = Uint32 Function(
  Pointer<DDHAL_UPDATEVPORTDATA> param0,
);
typedef LPDDHALVPORTCB_WAITFORSYNC = Uint32 Function(
  Pointer<DDHAL_WAITFORVPORTSYNCDATA> param0,
);
typedef LPDDHAL_CANCREATESURFACE = Uint32 Function(
  Pointer<DDHAL_CANCREATESURFACEDATA> param0,
);
typedef LPDDHAL_CREATEPALETTE = Uint32 Function(
  Pointer<DDHAL_CREATEPALETTEDATA> param0,
);
typedef LPDDHAL_CREATESURFACE = Uint32 Function(
  Pointer<DDHAL_CREATESURFACEDATA> param0,
);
typedef LPDDHAL_CREATESURFACEEX = Uint32 Function(
  Pointer<DDHAL_CREATESURFACEEXDATA> param0,
);
typedef LPDDHAL_DESTROYDDLOCAL = Uint32 Function(
  Pointer<DDHAL_DESTROYDDLOCALDATA> param0,
);
typedef LPDDHAL_DESTROYDRIVER = Uint32 Function(
  Pointer<DDHAL_DESTROYDRIVERDATA> param0,
);
typedef LPDDHAL_FLIPTOGDISURFACE = Uint32 Function(
  Pointer<DDHAL_FLIPTOGDISURFACEDATA> param0,
);
typedef LPDDHAL_GETAVAILDRIVERMEMORY = Uint32 Function(
  Pointer<DDHAL_GETAVAILDRIVERMEMORYDATA> param0,
);
typedef LPDDHAL_GETDRIVERINFO = Uint32 Function(
  Pointer<DDHAL_GETDRIVERINFODATA> param0,
);
typedef LPDDHAL_GETDRIVERSTATE = Uint32 Function(
  Pointer<DDHAL_GETDRIVERSTATEDATA> param0,
);
typedef LPDDHAL_GETHEAPALIGNMENT = Uint32 Function(
  Pointer<DDHAL_GETHEAPALIGNMENTDATA> param0,
);
typedef LPDDHAL_GETSCANLINE = Uint32 Function(
  Pointer<DDHAL_GETSCANLINEDATA> param0,
);
typedef LPDDHAL_SETCOLORKEY = Uint32 Function(
  Pointer<DDHAL_DRVSETCOLORKEYDATA> param0,
);
typedef LPDDHAL_SETEXCLUSIVEMODE = Uint32 Function(
  Pointer<DDHAL_SETEXCLUSIVEMODEDATA> param0,
);
typedef LPDDHAL_SETINFO = Int32 Function(
  Pointer<DDHALINFO> lpDDHalInfo,
  Int32 reset,
);
typedef LPDDHAL_SETMODE = Uint32 Function(
  Pointer<DDHAL_SETMODEDATA> param0,
);
typedef LPDDHAL_UPDATENONLOCALHEAP = Uint32 Function(
  Pointer<DDHAL_UPDATENONLOCALHEAPDATA> param0,
);
typedef LPDDHAL_VIDMEMALLOC = IntPtr Function(
  Pointer<DDRAWI_DIRECTDRAW_GBL> lpDD,
  Int32 heap,
  Uint32 dwWidth,
  Uint32 dwHeight,
);
typedef LPDDHAL_VIDMEMFREE = Void Function(
  Pointer<DDRAWI_DIRECTDRAW_GBL> lpDD,
  Int32 heap,
  IntPtr fpMem,
);
typedef LPDDHAL_WAITFORVERTICALBLANK = Uint32 Function(
  Pointer<DDHAL_WAITFORVERTICALBLANKDATA> param0,
);
typedef LPDDHEL_INIT = Int32 Function(
  Pointer<DDRAWI_DIRECTDRAW_GBL> param0,
  Int32 param1,
);
typedef LPDIRECTDRAWENUMERATEEXW = Int32 Function(
  Pointer<NativeFunction<LPDDENUMCALLBACKEXW>> lpCallback,
  Pointer lpContext,
  Uint32 dwFlags,
);
typedef PDD_ALPHABLT = Uint32 Function(
  Pointer<DD_BLTDATA> param0,
);
typedef PDD_CANCREATESURFACE = Uint32 Function(
  Pointer<DD_CANCREATESURFACEDATA> param0,
);
typedef PDD_COLORCB_COLORCONTROL = Uint32 Function(
  Pointer<DD_COLORCONTROLDATA> param0,
);
typedef PDD_CREATEPALETTE = Uint32 Function(
  Pointer<DD_CREATEPALETTEDATA> param0,
);
typedef PDD_CREATESURFACE = Uint32 Function(
  Pointer<DD_CREATESURFACEDATA> param0,
);
typedef PDD_CREATESURFACEEX = Uint32 Function(
  Pointer<DD_CREATESURFACEEXDATA> param0,
);
typedef PDD_DESTROYDDLOCAL = Uint32 Function(
  Pointer<DD_DESTROYDDLOCALDATA> param0,
);
typedef PDD_DESTROYDRIVER = Uint32 Function(
  Pointer<DD_DESTROYDRIVERDATA> param0,
);
typedef PDD_FLIPTOGDISURFACE = Uint32 Function(
  Pointer<DD_FLIPTOGDISURFACEDATA> param0,
);
typedef PDD_FREEDRIVERMEMORY = Uint32 Function(
  Pointer<DD_FREEDRIVERMEMORYDATA> param0,
);
typedef PDD_GETAVAILDRIVERMEMORY = Uint32 Function(
  Pointer<DD_GETAVAILDRIVERMEMORYDATA> param0,
);
typedef PDD_GETDRIVERINFO = Uint32 Function(
  Pointer<DD_GETDRIVERINFODATA> param0,
);
typedef PDD_GETDRIVERSTATE = Uint32 Function(
  Pointer<DD_GETDRIVERSTATEDATA> param0,
);
typedef PDD_GETSCANLINE = Uint32 Function(
  Pointer<DD_GETSCANLINEDATA> param0,
);
typedef PDD_KERNELCB_SYNCSURFACE = Uint32 Function(
  Pointer<DD_SYNCSURFACEDATA> param0,
);
typedef PDD_KERNELCB_SYNCVIDEOPORT = Uint32 Function(
  Pointer<DD_SYNCVIDEOPORTDATA> param0,
);
typedef PDD_MAPMEMORY = Uint32 Function(
  Pointer<DD_MAPMEMORYDATA> param0,
);
typedef PDD_MOCOMPCB_BEGINFRAME = Uint32 Function(
  Pointer<DD_BEGINMOCOMPFRAMEDATA> param0,
);
typedef PDD_MOCOMPCB_CREATE = Uint32 Function(
  Pointer<DD_CREATEMOCOMPDATA> param0,
);
typedef PDD_MOCOMPCB_DESTROY = Uint32 Function(
  Pointer<DD_DESTROYMOCOMPDATA> param0,
);
typedef PDD_MOCOMPCB_ENDFRAME = Uint32 Function(
  Pointer<DD_ENDMOCOMPFRAMEDATA> param0,
);
typedef PDD_MOCOMPCB_GETCOMPBUFFINFO = Uint32 Function(
  Pointer<DD_GETMOCOMPCOMPBUFFDATA> param0,
);
typedef PDD_MOCOMPCB_GETFORMATS = Uint32 Function(
  Pointer<DD_GETMOCOMPFORMATSDATA> param0,
);
typedef PDD_MOCOMPCB_GETGUIDS = Uint32 Function(
  Pointer<DD_GETMOCOMPGUIDSDATA> param0,
);
typedef PDD_MOCOMPCB_GETINTERNALINFO = Uint32 Function(
  Pointer<DD_GETINTERNALMOCOMPDATA> param0,
);
typedef PDD_MOCOMPCB_QUERYSTATUS = Uint32 Function(
  Pointer<DD_QUERYMOCOMPSTATUSDATA> param0,
);
typedef PDD_MOCOMPCB_RENDER = Uint32 Function(
  Pointer<DD_RENDERMOCOMPDATA> param0,
);
typedef PDD_PALCB_DESTROYPALETTE = Uint32 Function(
  Pointer<DD_DESTROYPALETTEDATA> param0,
);
typedef PDD_PALCB_SETENTRIES = Uint32 Function(
  Pointer<DD_SETENTRIESDATA> param0,
);
typedef PDD_SETCOLORKEY = Uint32 Function(
  Pointer<DD_DRVSETCOLORKEYDATA> param0,
);
typedef PDD_SETEXCLUSIVEMODE = Uint32 Function(
  Pointer<DD_SETEXCLUSIVEMODEDATA> param0,
);
typedef PDD_SETMODE = Uint32 Function(
  Pointer<DD_SETMODEDATA> param0,
);
typedef PDD_SURFCB_ADDATTACHEDSURFACE = Uint32 Function(
  Pointer<DD_ADDATTACHEDSURFACEDATA> param0,
);
typedef PDD_SURFCB_BLT = Uint32 Function(
  Pointer<DD_BLTDATA> param0,
);
typedef PDD_SURFCB_DESTROYSURFACE = Uint32 Function(
  Pointer<DD_DESTROYSURFACEDATA> param0,
);
typedef PDD_SURFCB_FLIP = Uint32 Function(
  Pointer<DD_FLIPDATA> param0,
);
typedef PDD_SURFCB_GETBLTSTATUS = Uint32 Function(
  Pointer<DD_GETBLTSTATUSDATA> param0,
);
typedef PDD_SURFCB_GETFLIPSTATUS = Uint32 Function(
  Pointer<DD_GETFLIPSTATUSDATA> param0,
);
typedef PDD_SURFCB_LOCK = Uint32 Function(
  Pointer<DD_LOCKDATA> param0,
);
typedef PDD_SURFCB_SETCLIPLIST = Uint32 Function(
  Pointer<DD_SETCLIPLISTDATA> param0,
);
typedef PDD_SURFCB_SETCOLORKEY = Uint32 Function(
  Pointer<DD_SETCOLORKEYDATA> param0,
);
typedef PDD_SURFCB_SETOVERLAYPOSITION = Uint32 Function(
  Pointer<DD_SETOVERLAYPOSITIONDATA> param0,
);
typedef PDD_SURFCB_SETPALETTE = Uint32 Function(
  Pointer<DD_SETPALETTEDATA> param0,
);
typedef PDD_SURFCB_UNLOCK = Uint32 Function(
  Pointer<DD_UNLOCKDATA> param0,
);
typedef PDD_SURFCB_UPDATEOVERLAY = Uint32 Function(
  Pointer<DD_UPDATEOVERLAYDATA> param0,
);
typedef PDD_VPORTCB_CANCREATEVIDEOPORT = Uint32 Function(
  Pointer<DD_CANCREATEVPORTDATA> param0,
);
typedef PDD_VPORTCB_COLORCONTROL = Uint32 Function(
  Pointer<DD_VPORTCOLORDATA> param0,
);
typedef PDD_VPORTCB_CREATEVIDEOPORT = Uint32 Function(
  Pointer<DD_CREATEVPORTDATA> param0,
);
typedef PDD_VPORTCB_DESTROYVPORT = Uint32 Function(
  Pointer<DD_DESTROYVPORTDATA> param0,
);
typedef PDD_VPORTCB_FLIP = Uint32 Function(
  Pointer<DD_FLIPVPORTDATA> param0,
);
typedef PDD_VPORTCB_GETAUTOFLIPSURF = Uint32 Function(
  Pointer<DD_GETVPORTAUTOFLIPSURFACEDATA> param0,
);
typedef PDD_VPORTCB_GETBANDWIDTH = Uint32 Function(
  Pointer<DD_GETVPORTBANDWIDTHDATA> param0,
);
typedef PDD_VPORTCB_GETFIELD = Uint32 Function(
  Pointer<DD_GETVPORTFIELDDATA> param0,
);
typedef PDD_VPORTCB_GETFLIPSTATUS = Uint32 Function(
  Pointer<DD_GETVPORTFLIPSTATUSDATA> param0,
);
typedef PDD_VPORTCB_GETINPUTFORMATS = Uint32 Function(
  Pointer<DD_GETVPORTINPUTFORMATDATA> param0,
);
typedef PDD_VPORTCB_GETLINE = Uint32 Function(
  Pointer<DD_GETVPORTLINEDATA> param0,
);
typedef PDD_VPORTCB_GETOUTPUTFORMATS = Uint32 Function(
  Pointer<DD_GETVPORTOUTPUTFORMATDATA> param0,
);
typedef PDD_VPORTCB_GETSIGNALSTATUS = Uint32 Function(
  Pointer<DD_GETVPORTSIGNALDATA> param0,
);
typedef PDD_VPORTCB_GETVPORTCONNECT = Uint32 Function(
  Pointer<DD_GETVPORTCONNECTDATA> param0,
);
typedef PDD_VPORTCB_UPDATE = Uint32 Function(
  Pointer<DD_UPDATEVPORTDATA> param0,
);
typedef PDD_VPORTCB_WAITFORSYNC = Uint32 Function(
  Pointer<DD_WAITFORVPORTSYNCDATA> param0,
);
typedef PDD_WAITFORVERTICALBLANK = Uint32 Function(
  Pointer<DD_WAITFORVERTICALBLANKDATA> param0,
);
typedef PDX_BOBNEXTFIELD = Uint32 Function(
  Pointer param0,
  Pointer<DDBOBNEXTFIELDINFO> param1,
  Pointer param2,
);
typedef PDX_ENABLEIRQ = Uint32 Function(
  Pointer param0,
  Pointer<DDENABLEIRQINFO> param1,
  Pointer param2,
);
typedef PDX_FLIPOVERLAY = Uint32 Function(
  Pointer param0,
  Pointer<DDFLIPOVERLAYINFO> param1,
  Pointer param2,
);
typedef PDX_FLIPVIDEOPORT = Uint32 Function(
  Pointer param0,
  Pointer<DDFLIPVIDEOPORTINFO> param1,
  Pointer param2,
);
typedef PDX_GETCURRENTAUTOFLIP = Uint32 Function(
  Pointer param0,
  Pointer<DDGETCURRENTAUTOFLIPININFO> param1,
  Pointer<DDGETCURRENTAUTOFLIPOUTINFO> param2,
);
typedef PDX_GETIRQINFO = Uint32 Function(
  Pointer param0,
  Pointer param1,
  Pointer<DDGETIRQINFO> param2,
);
typedef PDX_GETPOLARITY = Uint32 Function(
  Pointer param0,
  Pointer<DDGETPOLARITYININFO> param1,
  Pointer<DDGETPOLARITYOUTINFO> param2,
);
typedef PDX_GETPREVIOUSAUTOFLIP = Uint32 Function(
  Pointer param0,
  Pointer<DDGETPREVIOUSAUTOFLIPININFO> param1,
  Pointer<DDGETPREVIOUSAUTOFLIPOUTINFO> param2,
);
typedef PDX_GETTRANSFERSTATUS = Uint32 Function(
  Pointer param0,
  Pointer param1,
  Pointer<DDGETTRANSFERSTATUSOUTINFO> param2,
);
typedef PDX_IRQCALLBACK = Void Function(
  Pointer<DX_IRQDATA> pIrqData,
);
typedef PDX_LOCK = Uint32 Function(
  Pointer param0,
  Pointer<DDLOCKININFO> param1,
  Pointer<DDLOCKOUTINFO> param2,
);
typedef PDX_SETSTATE = Uint32 Function(
  Pointer param0,
  Pointer<DDSETSTATEININFO> param1,
  Pointer<DDSETSTATEOUTINFO> param2,
);
typedef PDX_SKIPNEXTFIELD = Uint32 Function(
  Pointer param0,
  Pointer<DDSKIPNEXTFIELDINFO> param1,
  Pointer param2,
);
typedef PDX_TRANSFER = Uint32 Function(
  Pointer param0,
  Pointer<DDTRANSFERININFO> param1,
  Pointer<DDTRANSFEROUTINFO> param2,
);
