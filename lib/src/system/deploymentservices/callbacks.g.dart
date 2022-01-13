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
import '../../system/deploymentservices/structs.g.dart';
import '../../foundation/structs.g.dart';

typedef PFN_WdsCliCallback = Void Function(
  Uint32 dwMessageId,
  IntPtr wParam,
  IntPtr lParam,
  Pointer pvUserData,
);
typedef PFN_WdsCliTraceFunction = Void Function(
  Pointer<Utf16> pwszFormat,
  Pointer<Int8> Params,
);
typedef PFN_WdsTransportClientReceiveContents = Void Function(
  IntPtr hSessionKey,
  Pointer pCallerData,
  Pointer pContents,
  Uint32 ulSize,
  Pointer<Uint64> pullContentOffset,
);
typedef PFN_WdsTransportClientReceiveMetadata = Void Function(
  IntPtr hSessionKey,
  Pointer pCallerData,
  Pointer pMetadata,
  Uint32 ulSize,
);
typedef PFN_WdsTransportClientSessionComplete = Void Function(
  IntPtr hSessionKey,
  Pointer pCallerData,
  Uint32 dwError,
);
typedef PFN_WdsTransportClientSessionNegotiate = Void Function(
  IntPtr hSessionKey,
  Pointer pCallerData,
  Pointer<TRANSPORTCLIENT_SESSION_INFO> pInfo,
  IntPtr hNegotiateKey,
);
typedef PFN_WdsTransportClientSessionStart = Void Function(
  IntPtr hSessionKey,
  Pointer pCallerData,
  Pointer<Uint64> ullFileSize,
);
typedef PFN_WdsTransportClientSessionStartEx = Void Function(
  IntPtr hSessionKey,
  Pointer pCallerData,
  Pointer<TRANSPORTCLIENT_SESSION_INFO> Info,
);
