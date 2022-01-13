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

const CATID_WcsPlugin = 0x0;
const MAX_COLOR_CHANNELS = 0x8;
const INTENT_PERCEPTUAL = 0x0;
const INTENT_RELATIVE_COLORIMETRIC = 0x1;
const INTENT_SATURATION = 0x2;
const INTENT_ABSOLUTE_COLORIMETRIC = 0x3;
const FLAG_EMBEDDEDPROFILE = 0x1;
const FLAG_DEPENDENTONDATA = 0x2;
const FLAG_ENABLE_CHROMATIC_ADAPTATION = 0x2000000;
const ATTRIB_TRANSPARENCY = 0x1;
const ATTRIB_MATTE = 0x2;
const PROFILE_FILENAME = 0x1;
const PROFILE_MEMBUFFER = 0x2;
const PROFILE_READ = 0x1;
const PROFILE_READWRITE = 0x2;
const INDEX_DONT_CARE = 0x0;
const CMM_FROM_PROFILE = 0x0;
const ENUM_TYPE_VERSION = 0x300;
const ET_DEVICENAME = 0x1;
const ET_MEDIATYPE = 0x2;
const ET_DITHERMODE = 0x4;
const ET_RESOLUTION = 0x8;
const ET_CMMTYPE = 0x10;
const ET_CLASS = 0x20;
const ET_DATACOLORSPACE = 0x40;
const ET_CONNECTIONSPACE = 0x80;
const ET_SIGNATURE = 0x100;
const ET_PLATFORM = 0x200;
const ET_PROFILEFLAGS = 0x400;
const ET_MANUFACTURER = 0x800;
const ET_MODEL = 0x1000;
const ET_ATTRIBUTES = 0x2000;
const ET_RENDERINGINTENT = 0x4000;
const ET_CREATOR = 0x8000;
const ET_DEVICECLASS = 0x10000;
const ET_STANDARDDISPLAYCOLOR = 0x20000;
const ET_EXTENDEDDISPLAYCOLOR = 0x40000;
const PROOF_MODE = 0x1;
const NORMAL_MODE = 0x2;
const BEST_MODE = 0x3;
const ENABLE_GAMUT_CHECKING = 0x10000;
const USE_RELATIVE_COLORIMETRIC = 0x20000;
const FAST_TRANSLATE = 0x40000;
const PRESERVEBLACK = 0x100000;
const WCS_ALWAYS = 0x200000;
const SEQUENTIAL_TRANSFORM = 0x80800000;
const RESERVED = 0x80000000;
const CSA_A = 0x1;
const CSA_ABC = 0x2;
const CSA_DEF = 0x3;
const CSA_DEFG = 0x4;
const CSA_GRAY = 0x5;
const CSA_RGB = 0x6;
const CSA_CMYK = 0x7;
const CSA_Lab = 0x8;
const CMM_WIN_VERSION = 0x0;
const CMM_IDENT = 0x1;
const CMM_DRIVER_VERSION = 0x2;
const CMM_DLL_VERSION = 0x3;
const CMM_VERSION = 0x4;
const CMM_DESCRIPTION = 0x5;
const CMM_LOGOICON = 0x6;
const CMS_FORWARD = 0x0;
const CMS_BACKWARD = 0x1;
const COLOR_MATCH_VERSION = 0x200;
const CMS_DISABLEICM = 0x1;
const CMS_ENABLEPROOFING = 0x2;
const CMS_SETRENDERINTENT = 0x4;
const CMS_SETPROOFINTENT = 0x8;
const CMS_SETMONITORPROFILE = 0x10;
const CMS_SETPRINTERPROFILE = 0x20;
const CMS_SETTARGETPROFILE = 0x40;
const CMS_USEHOOK = 0x80;
const CMS_USEAPPLYCALLBACK = 0x100;
const CMS_USEDESCRIPTION = 0x200;
const CMS_DISABLEINTENT = 0x400;
const CMS_DISABLERENDERINTENT = 0x800;
const CMS_MONITOROVERFLOW = 0x80000000;
const CMS_PRINTEROVERFLOW = 0x40000000;
const CMS_TARGETOVERFLOW = 0x20000000;
const DONT_USE_EMBEDDED_WCS_PROFILES = 0x1;
const WCS_DEFAULT = 0x0;
const WCS_ICCONLY = 0x10000;
