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
import '../../foundation/structs.g.dart';
import '../../networkmanagement/snmp/structs.g.dart';

typedef PFNSNMPCLEANUPEX = Uint32 Function();
typedef PFNSNMPEXTENSIONCLOSE = Void Function();
typedef PFNSNMPEXTENSIONINIT = Int32 Function(
  Uint32 dwUpTimeReference,
  Pointer<IntPtr> phSubagentTrapEvent,
  Pointer<AsnObjectIdentifier> pFirstSupportedRegion,
);
typedef PFNSNMPEXTENSIONINITEX = Int32 Function(
  Pointer<AsnObjectIdentifier> pNextSupportedRegion,
);
typedef PFNSNMPEXTENSIONMONITOR = Int32 Function(
  Pointer pAgentMgmtData,
);
typedef PFNSNMPEXTENSIONQUERY = Int32 Function(
  Uint8 bPduType,
  Pointer<SnmpVarBindList> pVarBindList,
  Pointer<Int32> pErrorStatus,
  Pointer<Int32> pErrorIndex,
);
typedef PFNSNMPEXTENSIONQUERYEX = Int32 Function(
  Uint32 nRequestType,
  Uint32 nTransactionId,
  Pointer<SnmpVarBindList> pVarBindList,
  Pointer<AsnOctetString> pContextInfo,
  Pointer<Int32> pErrorStatus,
  Pointer<Int32> pErrorIndex,
);
typedef PFNSNMPEXTENSIONTRAP = Int32 Function(
  Pointer<AsnObjectIdentifier> pEnterpriseOid,
  Pointer<Int32> pGenericTrapId,
  Pointer<Int32> pSpecificTrapId,
  Pointer<Uint32> pTimeStamp,
  Pointer<SnmpVarBindList> pVarBindList,
);
typedef PFNSNMPSTARTUPEX = Uint32 Function(
  Pointer<Uint32> param0,
  Pointer<Uint32> param1,
  Pointer<Uint32> param2,
  Pointer<Uint32> param3,
  Pointer<Uint32> param4,
);
typedef SNMPAPI_CALLBACK = Uint32 Function(
  IntPtr hSession,
  IntPtr hWnd,
  Uint32 wMsg,
  IntPtr wParam,
  IntPtr lParam,
  Pointer lpClientData,
);
