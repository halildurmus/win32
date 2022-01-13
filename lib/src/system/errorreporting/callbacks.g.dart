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
import '../../system/errorreporting/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../system/diagnostics/debug/structs.g.dart';

typedef PFN_WER_RUNTIME_EXCEPTION_DEBUGGER_LAUNCH = Int32 Function(
  Pointer pContext,
  Pointer<WER_RUNTIME_EXCEPTION_INFORMATION> pExceptionInformation,
  Pointer<Int32> pbIsCustomDebugger,
  Pointer<Utf16> pwszDebuggerLaunch,
  Pointer<Uint32> pchDebuggerLaunch,
  Pointer<Int32> pbIsDebuggerAutolaunch,
);
typedef PFN_WER_RUNTIME_EXCEPTION_EVENT = Int32 Function(
  Pointer pContext,
  Pointer<WER_RUNTIME_EXCEPTION_INFORMATION> pExceptionInformation,
  Pointer<Int32> pbOwnershipClaimed,
  Pointer<Utf16> pwszEventName,
  Pointer<Uint32> pchSize,
  Pointer<Uint32> pdwSignatureCount,
);
typedef PFN_WER_RUNTIME_EXCEPTION_EVENT_SIGNATURE = Int32 Function(
  Pointer pContext,
  Pointer<WER_RUNTIME_EXCEPTION_INFORMATION> pExceptionInformation,
  Uint32 dwIndex,
  Pointer<Utf16> pwszName,
  Pointer<Uint32> pchName,
  Pointer<Utf16> pwszValue,
  Pointer<Uint32> pchValue,
);
typedef pfn_ADDEREXCLUDEDAPPLICATIONW = Int32 Function(
  Pointer<Utf16> param0,
);
typedef pfn_REPORTFAULT = Int32 Function(
  Pointer<EXCEPTION_POINTERS> param0,
  Uint32 param1,
);
