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

typedef PFN_HANDLE_CMD = Uint32 Function(
  Pointer<Utf16> pwszMachine,
  Pointer<Pointer<Utf16>> ppwcArguments,
  Uint32 dwCurrentIndex,
  Uint32 dwArgCount,
  Uint32 dwFlags,
  Pointer pvData,
  Pointer<Int32> pbDone,
);
typedef PGET_RESOURCE_STRING_FN = Uint32 Function(
  Uint32 dwMsgID,
  Pointer<Utf16> lpBuffer,
  Uint32 nBufferMax,
);
typedef PNS_CONTEXT_COMMIT_FN = Uint32 Function(
  Uint32 dwAction,
);
typedef PNS_CONTEXT_CONNECT_FN = Uint32 Function(
  Pointer<Utf16> pwszMachine,
);
typedef PNS_CONTEXT_DUMP_FN = Uint32 Function(
  Pointer<Utf16> pwszRouter,
  Pointer<Pointer<Utf16>> ppwcArguments,
  Uint32 dwArgCount,
  Pointer pvData,
);
typedef PNS_DLL_INIT_FN = Uint32 Function(
  Uint32 dwNetshVersion,
  Pointer pReserved,
);
typedef PNS_DLL_STOP_FN = Uint32 Function(
  Uint32 dwReserved,
);
typedef PNS_HELPER_START_FN = Uint32 Function(
  Pointer<GUID> pguidParent,
  Uint32 dwVersion,
);
typedef PNS_HELPER_STOP_FN = Uint32 Function(
  Uint32 dwReserved,
);
typedef PNS_OSVERSIONCHECK = Int32 Function(
  Uint32 CIMOSType,
  Uint32 CIMOSProductSuite,
  Pointer<Utf16> CIMOSVersion,
  Pointer<Utf16> CIMOSBuildNumber,
  Pointer<Utf16> CIMServicePackMajorVersion,
  Pointer<Utf16> CIMServicePackMinorVersion,
  Uint32 uiReserved,
  Uint32 dwReserved,
);
