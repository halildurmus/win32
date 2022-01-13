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

const WM_DDE_FIRST = 0x3e0;
const WM_DDE_INITIATE = 0x3e0;
const WM_DDE_TERMINATE = 0x3e1;
const WM_DDE_ADVISE = 0x3e2;
const WM_DDE_UNADVISE = 0x3e3;
const WM_DDE_ACK = 0x3e4;
const WM_DDE_DATA = 0x3e5;
const WM_DDE_REQUEST = 0x3e6;
const WM_DDE_POKE = 0x3e7;
const WM_DDE_EXECUTE = 0x3e8;
const WM_DDE_LAST = 0x3e8;
const CADV_LATEACK = 0xffff;
const DDE_FACK = 0x8000;
const DDE_FBUSY = 0x4000;
const DDE_FDEFERUPD = 0x4000;
const DDE_FACKREQ = 0x8000;
const DDE_FRELEASE = 0x2000;
const DDE_FREQUESTED = 0x1000;
const DDE_FAPPSTATUS = 0xff;
const DDE_FNOTPROCESSED = 0x0;
const MSGF_DDEMGR = 0x8001;
const CP_WINANSI = 0x3ec;
const CP_WINUNICODE = 0x4b0;
const CP_WINNEUTRAL = 0x4b0;
const XTYPF_NOBLOCK = 0x2;
const XTYPF_NODATA = 0x4;
const XTYPF_ACKREQ = 0x8;
const XCLASS_MASK = 0xfc00;
const XCLASS_BOOL = 0x1000;
const XCLASS_DATA = 0x2000;
const XCLASS_FLAGS = 0x4000;
const XCLASS_NOTIFICATION = 0x8000;
const XTYP_MASK = 0xf0;
const XTYP_SHIFT = 0x4;
const TIMEOUT_ASYNC = 0xffffffff;
const QID_SYNC = 0xffffffff;
const APPCMD_MASK = 0xff0;
const APPCLASS_MASK = 0xf;
const HDATA_APPOWNED = 0x1;
const DMLERR_NO_ERROR = 0x0;
const DMLERR_FIRST = 0x4000;
const DMLERR_ADVACKTIMEOUT = 0x4000;
const DMLERR_BUSY = 0x4001;
const DMLERR_DATAACKTIMEOUT = 0x4002;
const DMLERR_DLL_NOT_INITIALIZED = 0x4003;
const DMLERR_DLL_USAGE = 0x4004;
const DMLERR_EXECACKTIMEOUT = 0x4005;
const DMLERR_INVALIDPARAMETER = 0x4006;
const DMLERR_LOW_MEMORY = 0x4007;
const DMLERR_MEMORY_ERROR = 0x4008;
const DMLERR_NOTPROCESSED = 0x4009;
const DMLERR_NO_CONV_ESTABLISHED = 0x400a;
const DMLERR_POKEACKTIMEOUT = 0x400b;
const DMLERR_POSTMSG_FAILED = 0x400c;
const DMLERR_REENTRANCY = 0x400d;
const DMLERR_SERVER_DIED = 0x400e;
const DMLERR_SYS_ERROR = 0x400f;
const DMLERR_UNADVACKTIMEOUT = 0x4010;
const DMLERR_UNFOUND_QUEUE_ID = 0x4011;
const DMLERR_LAST = 0x4011;
const MH_CREATE = 0x1;
const MH_KEEP = 0x2;
const MH_DELETE = 0x3;
const MH_CLEANUP = 0x4;
const MAX_MONITORS = 0x4;
const MF_MASK = 0xff000000;
