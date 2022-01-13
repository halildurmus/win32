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
import '../../system/grouppolicy/structs.g.dart';
import '../../system/registry/structs.g.dart';
import '../../system/grouppolicy/callbacks.g.dart';
import '../../system/wmi/IWbemServices.dart';

typedef PFNGENERATEGROUPPOLICY = Uint32 Function(
  Uint32 dwFlags,
  Pointer<Int32> pbAbort,
  Pointer<Utf16> pwszSite,
  Pointer<RSOP_TARGET> pComputerTarget,
  Pointer<RSOP_TARGET> pUserTarget,
);
typedef PFNPROCESSGROUPPOLICY = Uint32 Function(
  Uint32 dwFlags,
  IntPtr hToken,
  IntPtr hKeyRoot,
  Pointer<GROUP_POLICY_OBJECT> pDeletedGPOList,
  Pointer<GROUP_POLICY_OBJECT> pChangedGPOList,
  IntPtr pHandle,
  Pointer<Int32> pbAbort,
  Pointer<NativeFunction<PFNSTATUSMESSAGECALLBACK>> pStatusCallback,
);
typedef PFNPROCESSGROUPPOLICYEX = Uint32 Function(
  Uint32 dwFlags,
  IntPtr hToken,
  IntPtr hKeyRoot,
  Pointer<GROUP_POLICY_OBJECT> pDeletedGPOList,
  Pointer<GROUP_POLICY_OBJECT> pChangedGPOList,
  IntPtr pHandle,
  Pointer<Int32> pbAbort,
  Pointer<NativeFunction<PFNSTATUSMESSAGECALLBACK>> pStatusCallback,
  Pointer<COMObject> pWbemServices,
  Pointer<Int32> pRsopStatus,
);
typedef PFNSTATUSMESSAGECALLBACK = Uint32 Function(
  Int32 bVerbose,
  Pointer<Utf16> lpMessage,
);
