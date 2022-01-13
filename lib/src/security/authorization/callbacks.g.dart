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
import '../../security/authorization/structs.g.dart';
import '../../security/structs.g.dart';

typedef FN_PROGRESS = Void Function(
  Pointer<Utf16> pObjectName,
  Uint32 Status,
  Pointer<Int32> pInvokeSetting,
  Pointer Args,
  Int32 SecuritySet,
);
typedef PFN_AUTHZ_COMPUTE_DYNAMIC_GROUPS = Int32 Function(
  IntPtr hAuthzClientContext,
  Pointer Args,
  Pointer<Pointer<SID_AND_ATTRIBUTES>> pSidAttrArray,
  Pointer<Uint32> pSidCount,
  Pointer<Pointer<SID_AND_ATTRIBUTES>> pRestrictedSidAttrArray,
  Pointer<Uint32> pRestrictedSidCount,
);
typedef PFN_AUTHZ_DYNAMIC_ACCESS_CHECK = Int32 Function(
  IntPtr hAuthzClientContext,
  Pointer<ACE_HEADER> pAce,
  Pointer pArgs,
  Pointer<Int32> pbAceApplicable,
);
typedef PFN_AUTHZ_FREE_CENTRAL_ACCESS_POLICY = Void Function(
  Pointer pCentralAccessPolicy,
);
typedef PFN_AUTHZ_FREE_DYNAMIC_GROUPS = Void Function(
  Pointer<SID_AND_ATTRIBUTES> pSidAttrArray,
);
typedef PFN_AUTHZ_GET_CENTRAL_ACCESS_POLICY = Int32 Function(
  IntPtr hAuthzClientContext,
  IntPtr capid,
  Pointer pArgs,
  Pointer<Int32> pCentralAccessPolicyApplicable,
  Pointer<Pointer> ppCentralAccessPolicy,
);
