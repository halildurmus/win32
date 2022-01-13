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
import '../../networkmanagement/qos/structs.g.dart';
import '../../foundation/structs.g.dart';

typedef CBADMITRESULT = Pointer<Uint32> Function(
  IntPtr LpmHandle,
  IntPtr RequestHandle,
  Uint32 ulPcmActionFlags,
  Int32 LpmError,
  Int32 PolicyDecisionsCount,
  Pointer<policy_decision> pPolicyDecisions,
);
typedef CBGETRSVPOBJECTS = Pointer<Uint32> Function(
  IntPtr LpmHandle,
  IntPtr RequestHandle,
  Int32 LpmError,
  Int32 RsvpObjectsCount,
  Pointer<Pointer<RsvpObjHdr>> ppRsvpObjects,
);
typedef PALLOCMEM = Pointer Function(
  Uint32 Size,
);
typedef PFREEMEM = Void Function(
  Pointer pv,
);
typedef TCI_ADD_FLOW_COMPLETE_HANDLER = Void Function(
  IntPtr ClFlowCtx,
  Uint32 Status,
);
typedef TCI_DEL_FLOW_COMPLETE_HANDLER = Void Function(
  IntPtr ClFlowCtx,
  Uint32 Status,
);
typedef TCI_MOD_FLOW_COMPLETE_HANDLER = Void Function(
  IntPtr ClFlowCtx,
  Uint32 Status,
);
typedef TCI_NOTIFY_HANDLER = Void Function(
  IntPtr ClRegCtx,
  IntPtr ClIfcCtx,
  Uint32 Event,
  IntPtr SubCode,
  Uint32 BufSize,
  Pointer Buffer,
);
