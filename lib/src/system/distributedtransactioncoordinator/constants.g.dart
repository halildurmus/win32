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

const DTCINSTALL_E_CLIENT_ALREADY_INSTALLED = 0x180;
const DTCINSTALL_E_SERVER_ALREADY_INSTALLED = 0x181;
const XA_SWITCH_F_DTC = 0x1;
const XA_FMTID_DTC = 0x445443;
const XA_FMTID_DTC_VER1 = 0x1445443;
const XIDDATASIZE = 0x80;
const MAXGTRIDSIZE = 0x40;
const MAXBQUALSIZE = 0x40;
const RMNAMESZ = 0x20;
const MAXINFOSIZE = 0x100;
const TMNOFLAGS = 0x0;
const TMREGISTER = 0x1;
const TMNOMIGRATE = 0x2;
const TMUSEASYNC = 0x4;
const TMASYNC = 0x80000000;
const TMONEPHASE = 0x40000000;
const TMFAIL = 0x20000000;
const TMNOWAIT = 0x10000000;
const TMRESUME = 0x8000000;
const TMSUCCESS = 0x4000000;
const TMSUSPEND = 0x2000000;
const TMSTARTRSCAN = 0x1000000;
const TMENDRSCAN = 0x800000;
const TMMULTIPLE = 0x400000;
const TMJOIN = 0x200000;
const TMMIGRATE = 0x100000;
const TM_JOIN = 0x2;
const TM_RESUME = 0x1;
const TM_OK = 0x0;
const TMER_TMERR = 0xffffffff;
const TMER_INVAL = 0xfffffffe;
const TMER_PROTO = 0xfffffffd;
const XA_RBBASE = 0x64;
const XA_RBROLLBACK = 0x64;
const XA_RBCOMMFAIL = 0x65;
const XA_RBDEADLOCK = 0x66;
const XA_RBINTEGRITY = 0x67;
const XA_RBOTHER = 0x68;
const XA_RBPROTO = 0x69;
const XA_RBTIMEOUT = 0x6a;
const XA_RBTRANSIENT = 0x6b;
const XA_RBEND = 0x6b;
const XA_NOMIGRATE = 0x9;
const XA_HEURHAZ = 0x8;
const XA_HEURCOM = 0x7;
const XA_HEURRB = 0x6;
const XA_HEURMIX = 0x5;
const XA_RETRY = 0x4;
const XA_RDONLY = 0x3;
const XA_OK = 0x0;
const XAER_ASYNC = 0xfffffffe;
const XAER_RMERR = 0xfffffffd;
const XAER_NOTA = 0xfffffffc;
const XAER_INVAL = 0xfffffffb;
const XAER_PROTO = 0xfffffffa;
const XAER_RMFAIL = 0xfffffff9;
const XAER_DUPID = 0xfffffff8;
const XAER_OUTSIDE = 0xfffffff7;
const DTC_INSTALL_OVERWRITE_CLIENT = 0x1;
const DTC_INSTALL_OVERWRITE_SERVER = 0x2;
const OLE_TM_CONFIG_VERSION_1 = 0x1;
const OLE_TM_CONFIG_VERSION_2 = 0x2;
const OLE_TM_FLAG_NONE = 0x0;
const OLE_TM_FLAG_NODEMANDSTART = 0x1;
const OLE_TM_FLAG_NOAGILERECOVERY = 0x2;
const OLE_TM_FLAG_QUERY_SERVICE_LOCKSTATUS = 0x80000000;
const OLE_TM_FLAG_INTERNAL_TO_TM = 0x40000000;
const CLSID_MSDtcTransactionManager = 0x0;
const CLSID_MSDtcTransaction = 0x0;
