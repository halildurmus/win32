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
import '../../guid.dart';
import '../../combase.dart';
import '../../ui/displaydevices/structs.g.dart';
import '../../graphics/directdraw/structs.g.dart';

typedef PDD_CANCREATESURFACE = Uint32 Function(
    Pointer<DD_CANCREATESURFACEDATA> param0);
typedef PDD_COLORCB_COLORCONTROL = Uint32 Function(
    Pointer<DD_COLORCONTROLDATA> param0);
typedef PDD_CREATEPALETTE = Uint32 Function(
    Pointer<DD_CREATEPALETTEDATA> param0);
typedef PDD_CREATESURFACE = Uint32 Function(
    Pointer<DD_CREATESURFACEDATA> param0);
typedef PDD_CREATESURFACEEX = Uint32 Function(
    Pointer<DD_CREATESURFACEEXDATA> param0);
typedef PDD_DESTROYDDLOCAL = Uint32 Function(
    Pointer<DD_DESTROYDDLOCALDATA> param0);
typedef PDD_FLIPTOGDISURFACE = Uint32 Function(
    Pointer<DD_FLIPTOGDISURFACEDATA> param0);
typedef PDD_FREEDRIVERMEMORY = Uint32 Function(
    Pointer<DD_FREEDRIVERMEMORYDATA> param0);
typedef PDD_GETAVAILDRIVERMEMORY = Uint32 Function(
    Pointer<DD_GETAVAILDRIVERMEMORYDATA> param0);
typedef PDD_GETDRIVERINFO = Uint32 Function(
    Pointer<DD_GETDRIVERINFODATA> param0);
typedef PDD_GETDRIVERSTATE = Uint32 Function(
    Pointer<DD_GETDRIVERSTATEDATA> param0);
typedef PDD_GETSCANLINE = Uint32 Function(Pointer<DD_GETSCANLINEDATA> param0);
typedef PDD_KERNELCB_SYNCSURFACE = Uint32 Function(
    Pointer<DD_SYNCSURFACEDATA> param0);
typedef PDD_KERNELCB_SYNCVIDEOPORT = Uint32 Function(
    Pointer<DD_SYNCVIDEOPORTDATA> param0);
typedef PDD_MAPMEMORY = Uint32 Function(Pointer<DD_MAPMEMORYDATA> param0);
typedef PDD_MOCOMPCB_BEGINFRAME = Uint32 Function(
    Pointer<DD_BEGINMOCOMPFRAMEDATA> param0);
typedef PDD_MOCOMPCB_CREATE = Uint32 Function(
    Pointer<DD_CREATEMOCOMPDATA> param0);
typedef PDD_MOCOMPCB_DESTROY = Uint32 Function(
    Pointer<DD_DESTROYMOCOMPDATA> param0);
typedef PDD_MOCOMPCB_ENDFRAME = Uint32 Function(
    Pointer<DD_ENDMOCOMPFRAMEDATA> param0);
typedef PDD_MOCOMPCB_GETCOMPBUFFINFO = Uint32 Function(
    Pointer<DD_GETMOCOMPCOMPBUFFDATA> param0);
typedef PDD_MOCOMPCB_GETFORMATS = Uint32 Function(
    Pointer<DD_GETMOCOMPFORMATSDATA> param0);
typedef PDD_MOCOMPCB_GETGUIDS = Uint32 Function(
    Pointer<DD_GETMOCOMPGUIDSDATA> param0);
typedef PDD_MOCOMPCB_GETINTERNALINFO = Uint32 Function(
    Pointer<DD_GETINTERNALMOCOMPDATA> param0);
typedef PDD_MOCOMPCB_QUERYSTATUS = Uint32 Function(
    Pointer<DD_QUERYMOCOMPSTATUSDATA> param0);
typedef PDD_MOCOMPCB_RENDER = Uint32 Function(
    Pointer<DD_RENDERMOCOMPDATA> param0);
typedef PDD_PALCB_DESTROYPALETTE = Uint32 Function(
    Pointer<DD_DESTROYPALETTEDATA> param0);
typedef PDD_PALCB_SETENTRIES = Uint32 Function(
    Pointer<DD_SETENTRIESDATA> param0);
typedef PDD_SETEXCLUSIVEMODE = Uint32 Function(
    Pointer<DD_SETEXCLUSIVEMODEDATA> param0);
typedef PDD_SURFCB_ADDATTACHEDSURFACE = Uint32 Function(
    Pointer<DD_ADDATTACHEDSURFACEDATA> param0);
typedef PDD_SURFCB_BLT = Uint32 Function(Pointer<DD_BLTDATA> param0);
typedef PDD_SURFCB_DESTROYSURFACE = Uint32 Function(
    Pointer<DD_DESTROYSURFACEDATA> param0);
typedef PDD_SURFCB_FLIP = Uint32 Function(Pointer<DD_FLIPDATA> param0);
typedef PDD_SURFCB_GETBLTSTATUS = Uint32 Function(
    Pointer<DD_GETBLTSTATUSDATA> param0);
typedef PDD_SURFCB_GETFLIPSTATUS = Uint32 Function(
    Pointer<DD_GETFLIPSTATUSDATA> param0);
typedef PDD_SURFCB_LOCK = Uint32 Function(Pointer<DD_LOCKDATA> param0);
typedef PDD_SURFCB_SETCOLORKEY = Uint32 Function(
    Pointer<DD_SETCOLORKEYDATA> param0);
typedef PDD_SURFCB_SETOVERLAYPOSITION = Uint32 Function(
    Pointer<DD_SETOVERLAYPOSITIONDATA> param0);
typedef PDD_SURFCB_SETPALETTE = Uint32 Function(
    Pointer<DD_SETPALETTEDATA> param0);
typedef PDD_SURFCB_UNLOCK = Uint32 Function(Pointer<DD_UNLOCKDATA> param0);
typedef PDD_SURFCB_UPDATEOVERLAY = Uint32 Function(
    Pointer<DD_UPDATEOVERLAYDATA> param0);
typedef PDD_VPORTCB_CANCREATEVIDEOPORT = Uint32 Function(
    Pointer<DD_CANCREATEVPORTDATA> param0);
typedef PDD_VPORTCB_COLORCONTROL = Uint32 Function(
    Pointer<DD_VPORTCOLORDATA> param0);
typedef PDD_VPORTCB_CREATEVIDEOPORT = Uint32 Function(
    Pointer<DD_CREATEVPORTDATA> param0);
typedef PDD_VPORTCB_DESTROYVPORT = Uint32 Function(
    Pointer<DD_DESTROYVPORTDATA> param0);
typedef PDD_VPORTCB_FLIP = Uint32 Function(Pointer<DD_FLIPVPORTDATA> param0);
typedef PDD_VPORTCB_GETBANDWIDTH = Uint32 Function(
    Pointer<DD_GETVPORTBANDWIDTHDATA> param0);
typedef PDD_VPORTCB_GETFIELD = Uint32 Function(
    Pointer<DD_GETVPORTFIELDDATA> param0);
typedef PDD_VPORTCB_GETFLIPSTATUS = Uint32 Function(
    Pointer<DD_GETVPORTFLIPSTATUSDATA> param0);
typedef PDD_VPORTCB_GETINPUTFORMATS = Uint32 Function(
    Pointer<DD_GETVPORTINPUTFORMATDATA> param0);
typedef PDD_VPORTCB_GETLINE = Uint32 Function(
    Pointer<DD_GETVPORTLINEDATA> param0);
typedef PDD_VPORTCB_GETOUTPUTFORMATS = Uint32 Function(
    Pointer<DD_GETVPORTOUTPUTFORMATDATA> param0);
typedef PDD_VPORTCB_GETSIGNALSTATUS = Uint32 Function(
    Pointer<DD_GETVPORTSIGNALDATA> param0);
typedef PDD_VPORTCB_GETVPORTCONNECT = Uint32 Function(
    Pointer<DD_GETVPORTCONNECTDATA> param0);
typedef PDD_VPORTCB_UPDATE = Uint32 Function(
    Pointer<DD_UPDATEVPORTDATA> param0);
typedef PDD_VPORTCB_WAITFORSYNC = Uint32 Function(
    Pointer<DD_WAITFORVPORTSYNCDATA> param0);
typedef PDD_WAITFORVERTICALBLANK = Uint32 Function(
    Pointer<DD_WAITFORVERTICALBLANKDATA> param0);
typedef PFN_DrvQueryGlyphAttrs = Pointer<FD_GLYPHATTR> Function(
    Pointer<FONTOBJ> param0, Uint32 param1);
