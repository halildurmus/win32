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

const OFN_SHAREFALLTHROUGH = 0x2;
const OFN_SHARENOWARN = 0x1;
const OFN_SHAREWARN = 0x0;
const CDM_FIRST = 0x464;
const CDM_LAST = 0x4c8;
const CDM_GETSPEC = 0x464;
const CDM_GETFILEPATH = 0x465;
const CDM_GETFOLDERPATH = 0x466;
const CDM_GETFOLDERIDLIST = 0x467;
const CDM_SETCONTROLTEXT = 0x468;
const CDM_HIDECONTROL = 0x469;
const CDM_SETDEFEXT = 0x46a;
const FR_RAW = 0x20000;
const FR_SHOWWRAPAROUND = 0x40000;
const FR_NOWRAPAROUND = 0x80000;
const FR_WRAPAROUND = 0x100000;
const FRM_FIRST = 0x464;
const FRM_LAST = 0x4c8;
const FRM_SETOPERATIONRESULT = 0x464;
const FRM_SETOPERATIONRESULTTEXT = 0x465;
const PS_OPENTYPE_FONTTYPE = 0x10000;
const TT_OPENTYPE_FONTTYPE = 0x20000;
const TYPE1_FONTTYPE = 0x40000;
const SYMBOL_FONTTYPE = 0x80000;
const WM_CHOOSEFONT_GETLOGFONT = 0x401;
const WM_CHOOSEFONT_SETLOGFONT = 0x465;
const WM_CHOOSEFONT_SETFLAGS = 0x466;
const CD_LBSELNOITEMS = 0xffffffff;
const CD_LBSELCHANGE = 0x0;
const CD_LBSELSUB = 0x1;
const CD_LBSELADD = 0x2;
const START_PAGE_GENERAL = 0xffffffff;
const PD_RESULT_CANCEL = 0x0;
const PD_RESULT_PRINT = 0x1;
const PD_RESULT_APPLY = 0x2;
const DN_DEFAULTPRN = 0x1;
const WM_PSD_FULLPAGERECT = 0x401;
const WM_PSD_MINMARGINRECT = 0x402;
const WM_PSD_MARGINRECT = 0x403;
const WM_PSD_GREEKTEXTRECT = 0x404;
const WM_PSD_ENVSTAMPRECT = 0x405;
const WM_PSD_YAFULLPAGERECT = 0x406;
const DLG_COLOR = 0xa;
const COLOR_HUESCROLL = 0x2bc;
const COLOR_SATSCROLL = 0x2bd;
const COLOR_LUMSCROLL = 0x2be;
const COLOR_HUE = 0x2bf;
const COLOR_SAT = 0x2c0;
const COLOR_LUM = 0x2c1;
const COLOR_RED = 0x2c2;
const COLOR_GREEN = 0x2c3;
const COLOR_BLUE = 0x2c4;
const COLOR_CURRENT = 0x2c5;
const COLOR_RAINBOW = 0x2c6;
const COLOR_SAVE = 0x2c7;
const COLOR_ADD = 0x2c8;
const COLOR_SOLID = 0x2c9;
const COLOR_TUNE = 0x2ca;
const COLOR_SCHEMES = 0x2cb;
const COLOR_ELEMENT = 0x2cc;
const COLOR_SAMPLES = 0x2cd;
const COLOR_PALETTE = 0x2ce;
const COLOR_MIX = 0x2cf;
const COLOR_BOX1 = 0x2d0;
const COLOR_CUSTOM1 = 0x2d1;
const COLOR_HUEACCEL = 0x2d3;
const COLOR_SATACCEL = 0x2d4;
const COLOR_LUMACCEL = 0x2d5;
const COLOR_REDACCEL = 0x2d6;
const COLOR_GREENACCEL = 0x2d7;
const COLOR_BLUEACCEL = 0x2d8;
const COLOR_SOLID_LEFT = 0x2da;
const COLOR_SOLID_RIGHT = 0x2db;
const NUM_BASIC_COLORS = 0x30;
const NUM_CUSTOM_COLORS = 0x10;
