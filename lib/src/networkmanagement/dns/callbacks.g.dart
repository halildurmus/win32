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
import '../../networkmanagement/dns/structs.g.dart';

typedef DNS_PROXY_COMPLETION_ROUTINE = Void Function(
  Pointer completionContext,
  Int32 status,
);
typedef PDNS_QUERY_COMPLETION_ROUTINE = Void Function(
  Pointer pQueryContext,
  Pointer<DNS_QUERY_RESULT> pQueryResults,
);
typedef PDNS_SERVICE_BROWSE_CALLBACK = Void Function(
  Uint32 Status,
  Pointer pQueryContext,
  DNS_RECORD pDnsRecord,
);
typedef PDNS_SERVICE_REGISTER_COMPLETE = Void Function(
  Uint32 Status,
  Pointer pQueryContext,
  Pointer<DNS_SERVICE_INSTANCE> pInstance,
);
typedef PDNS_SERVICE_RESOLVE_COMPLETE = Void Function(
  Uint32 Status,
  Pointer pQueryContext,
  Pointer<DNS_SERVICE_INSTANCE> pInstance,
);
typedef PMDNS_QUERY_CALLBACK = Void Function(
  Pointer pQueryContext,
  Pointer<MDNS_QUERY_HANDLE> pQueryHandle,
  Pointer<DNS_QUERY_RESULT> pQueryResults,
);
