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
import '../../../combase.dart';
import '../../../guid.dart';
import '../../../security/cryptography/structs.g.dart';
import '../../../foundation/structs.g.dart';

typedef PFNCFILTERPROC = Int32 Function(
  Pointer<CERT_CONTEXT> pCertContext,
  Pointer<Int32> pfInitialSelectedCert,
  Pointer pvCallbackData,
);
typedef PFNCMFILTERPROC = Int32 Function(
  Pointer<CERT_CONTEXT> pCertContext,
  IntPtr param1,
  Uint32 param2,
  Uint32 param3,
);
typedef PFNCMHOOKPROC = Uint32 Function(
  IntPtr hwndDialog,
  Uint32 message,
  IntPtr wParam,
  IntPtr lParam,
);
typedef PFNTRUSTHELPER = Int32 Function(
  Pointer<CERT_CONTEXT> pCertContext,
  IntPtr lCustData,
  Int32 fLeafCertificate,
  Pointer<Uint8> pbTrustBlob,
);
