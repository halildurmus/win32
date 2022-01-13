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

const VDMCONTEXT_i386 = 0x10000;
const VDMCONTEXT_i486 = 0x10000;
const VDM_KGDT_R3_CODE = 0x18;
const VDM_MAXIMUM_SUPPORTED_EXTENSION = 0x200;
const V86FLAGS_CARRY = 0x1;
const V86FLAGS_PARITY = 0x4;
const V86FLAGS_AUXCARRY = 0x10;
const V86FLAGS_ZERO = 0x40;
const V86FLAGS_SIGN = 0x80;
const V86FLAGS_TRACE = 0x100;
const V86FLAGS_INTERRUPT = 0x200;
const V86FLAGS_DIRECTION = 0x400;
const V86FLAGS_OVERFLOW = 0x800;
const V86FLAGS_IOPL = 0x3000;
const V86FLAGS_IOPL_BITS = 0x12;
const V86FLAGS_RESUME = 0x10000;
const V86FLAGS_V86 = 0x20000;
const V86FLAGS_ALIGNMENT = 0x40000;
const STATUS_VDM_EVENT = 0x40000005;
const DBG_SEGLOAD = 0x0;
const DBG_SEGMOVE = 0x1;
const DBG_SEGFREE = 0x2;
const DBG_MODLOAD = 0x3;
const DBG_MODFREE = 0x4;
const DBG_SINGLESTEP = 0x5;
const DBG_BREAK = 0x6;
const DBG_GPFAULT = 0x7;
const DBG_DIVOVERFLOW = 0x8;
const DBG_INSTRFAULT = 0x9;
const DBG_TASKSTART = 0xa;
const DBG_TASKSTOP = 0xb;
const DBG_DLLSTART = 0xc;
const DBG_DLLSTOP = 0xd;
const DBG_ATTACH = 0xe;
const DBG_TOOLHELP = 0xf;
const DBG_STACKFAULT = 0x10;
const DBG_WOWINIT = 0x11;
const DBG_TEMPBP = 0x12;
const DBG_MODMOVE = 0x13;
const DBG_INIT = 0x14;
const DBG_GPFAULT2 = 0x15;
const VDMEVENT_NEEDS_INTERACTIVE = 0x8000;
const VDMEVENT_VERBOSE = 0x4000;
const VDMEVENT_PE = 0x2000;
const VDMEVENT_ALLFLAGS = 0xe000;
const VDMEVENT_V86 = 0x1;
const VDMEVENT_PM16 = 0x2;
const MAX_MODULE_NAME = 0x9;
const MAX_PATH16 = 0xff;
const SN_CODE = 0x0;
const SN_DATA = 0x1;
const SN_V86 = 0x2;
const GLOBAL_ALL = 0x0;
const GLOBAL_LRU = 0x1;
const GLOBAL_FREE = 0x2;
const GT_UNKNOWN = 0x0;
const GT_DGROUP = 0x1;
const GT_DATA = 0x2;
const GT_CODE = 0x3;
const GT_TASK = 0x4;
const GT_RESOURCE = 0x5;
const GT_MODULE = 0x6;
const GT_FREE = 0x7;
const GT_INTERNAL = 0x8;
const GT_SENTINEL = 0x9;
const GT_BURGERMASTER = 0xa;
const GD_USERDEFINED = 0x0;
const GD_CURSORCOMPONENT = 0x1;
const GD_BITMAP = 0x2;
const GD_ICONCOMPONENT = 0x3;
const GD_MENU = 0x4;
const GD_DIALOG = 0x5;
const GD_STRING = 0x6;
const GD_FONTDIR = 0x7;
const GD_FONT = 0x8;
const GD_ACCELERATORS = 0x9;
const GD_RCDATA = 0xa;
const GD_ERRTABLE = 0xb;
const GD_CURSOR = 0xc;
const GD_ICON = 0xe;
const GD_NAMETABLE = 0xf;
const GD_MAX_RESOURCE = 0xf;
const VDMDBG_BREAK_DOSTASK = 0x1;
const VDMDBG_BREAK_WOWTASK = 0x2;
const VDMDBG_BREAK_LOADDLL = 0x4;
const VDMDBG_BREAK_EXCEPTIONS = 0x8;
const VDMDBG_BREAK_DEBUGGER = 0x10;
const VDMDBG_TRACE_HISTORY = 0x80;
const VDMDBG_BREAK_DIVIDEBYZERO = 0x100;
const VDMDBG_INITIAL_FLAGS = 0x100;
const VDMDBG_MAX_SYMBOL_BUFFER = 0x100;
const VDMADDR_V86 = 0x2;
const VDMADDR_PM16 = 0x4;
const VDMADDR_PM32 = 0x10;
