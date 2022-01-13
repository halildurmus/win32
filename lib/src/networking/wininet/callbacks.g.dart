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
import '../../networking/wininet/structs.g.dart';
import '../../foundation/structs.g.dart';

typedef CACHE_OPERATOR = Int32 Function(
  Pointer<INTERNET_CACHE_ENTRY_INFO> pcei,
  Pointer<Uint32> pcbcei,
  Pointer pOpData,
);
typedef GOPHER_ATTRIBUTE_ENUMERATOR = Int32 Function(
  Pointer<GOPHER_ATTRIBUTE_TYPE> lpAttributeInfo,
  Uint32 dwError,
);
typedef HTTP_POLICY_EXTENSION_INIT = Uint32 Function(
  Int32 Version,
  Int32 Type,
  Pointer pvData,
  Uint32 cbData,
);
typedef HTTP_POLICY_EXTENSION_SHUTDOWN = Uint32 Function(
  Int32 Type,
);
typedef LPINTERNET_STATUS_CALLBACK = Void Function(
  Pointer hInternet,
  IntPtr dwContext,
  Uint32 dwInternetStatus,
  Pointer lpvStatusInformation,
  Uint32 dwStatusInformationLength,
);
typedef PFN_AUTH_NOTIFY = Uint32 Function(
  IntPtr param0,
  Uint32 param1,
  Pointer param2,
);
typedef PFN_DIAL_HANDLER = Uint32 Function(
  IntPtr param0,
  Pointer<Utf8> param1,
  Uint32 param2,
  Pointer<Uint32> param3,
);
typedef pfnInternetDeInitializeAutoProxyDll = Int32 Function(
  Pointer<Utf8> lpszMime,
  Uint32 dwReserved,
);
typedef pfnInternetGetProxyInfo = Int32 Function(
  Pointer<Utf8> lpszUrl,
  Uint32 dwUrlLength,
  Pointer<Utf8> lpszUrlHostName,
  Uint32 dwUrlHostNameLength,
  Pointer<Pointer<Utf8>> lplpszProxyHostName,
  Pointer<Uint32> lpdwProxyHostNameLength,
);
typedef pfnInternetInitializeAutoProxyDll = Int32 Function(
  Uint32 dwVersion,
  Pointer<Utf8> lpszDownloadedTempFile,
  Pointer<Utf8> lpszMime,
  Pointer<AutoProxyHelperFunctions> lpAutoProxyCallbacks,
  Pointer<AUTO_PROXY_SCRIPT_BUFFER> lpAutoProxyScriptBuffer,
);
