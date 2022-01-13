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
import '../../system/diagnostics/debug/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../system/virtualdosmachines/callbacks.g.dart';
import '../../system/virtualdosmachines/structs.g.dart';

typedef DEBUGEVENTPROC = Uint32 Function(
  Pointer<DEBUG_EVENT> param0,
  Pointer param1,
);
typedef PROCESSENUMPROC = Int32 Function(
  Uint32 dwProcessId,
  Uint32 dwAttributes,
  IntPtr lpUserDefined,
);
typedef TASKENUMPROC = Int32 Function(
  Uint32 dwThreadId,
  Uint16 hMod16,
  Uint16 hTask16,
  IntPtr lpUserDefined,
);
typedef TASKENUMPROCEX = Int32 Function(
  Uint32 dwThreadId,
  Uint16 hMod16,
  Uint16 hTask16,
  Pointer<Int8> pszModName,
  Pointer<Int8> pszFileName,
  IntPtr lpUserDefined,
);
typedef VDMBREAKTHREADPROC = Int32 Function(
  IntPtr param0,
);
typedef VDMDETECTWOWPROC = Int32 Function();
typedef VDMENUMPROCESSWOWPROC = Int32 Function(
  Pointer<NativeFunction<PROCESSENUMPROC>> param0,
  IntPtr param1,
);
typedef VDMENUMTASKWOWEXPROC = Int32 Function(
  Uint32 param0,
  Pointer<NativeFunction<TASKENUMPROCEX>> param1,
  IntPtr param2,
);
typedef VDMENUMTASKWOWPROC = Int32 Function(
  Uint32 param0,
  Pointer<NativeFunction<TASKENUMPROC>> param1,
  IntPtr param2,
);
typedef VDMGETADDREXPRESSIONPROC = Int32 Function(
  Pointer<Utf8> param0,
  Pointer<Utf8> param1,
  Pointer<Uint16> param2,
  Pointer<Uint32> param3,
  Pointer<Uint16> param4,
);
typedef VDMGETCONTEXTPROC = Int32 Function(
  IntPtr param0,
  IntPtr param1,
  Pointer<VDMCONTEXT> param2,
);
typedef VDMGETDBGFLAGSPROC = Uint32 Function(
  IntPtr param0,
);
typedef VDMGETMODULESELECTORPROC = Int32 Function(
  IntPtr param0,
  IntPtr param1,
  Uint32 param2,
  Pointer<Utf8> param3,
  Pointer<Uint16> param4,
);
typedef VDMGETPOINTERPROC = Uint32 Function(
  IntPtr param0,
  IntPtr param1,
  Uint16 param2,
  Uint32 param3,
  Int32 param4,
);
typedef VDMGETSEGMENTINFOPROC = Int32 Function(
  Uint16 param0,
  Uint32 param1,
  Int32 param2,
  VDM_SEGINFO param3,
);
typedef VDMGETSELECTORMODULEPROC = Int32 Function(
  IntPtr param0,
  IntPtr param1,
  Uint16 param2,
  Pointer<Uint32> param3,
  Pointer<Utf8> param4,
  Uint32 param5,
  Pointer<Utf8> param6,
  Uint32 param7,
);
typedef VDMGETSYMBOLPROC = Int32 Function(
  Pointer<Utf8> param0,
  Uint16 param1,
  Uint32 param2,
  Int32 param3,
  Int32 param4,
  Pointer<Utf8> param5,
  Pointer<Uint32> param6,
);
typedef VDMGETTHREADSELECTORENTRYPROC = Int32 Function(
  IntPtr param0,
  IntPtr param1,
  Uint32 param2,
  Pointer<VDMLDT_ENTRY> param3,
);
typedef VDMGLOBALFIRSTPROC = Int32 Function(
  IntPtr param0,
  IntPtr param1,
  Pointer<GLOBALENTRY> param2,
  Uint16 param3,
  Pointer<NativeFunction<DEBUGEVENTPROC>> param4,
  Pointer param5,
);
typedef VDMGLOBALNEXTPROC = Int32 Function(
  IntPtr param0,
  IntPtr param1,
  Pointer<GLOBALENTRY> param2,
  Uint16 param3,
  Pointer<NativeFunction<DEBUGEVENTPROC>> param4,
  Pointer param5,
);
typedef VDMISMODULELOADEDPROC = Int32 Function(
  Pointer<Utf8> param0,
);
typedef VDMKILLWOWPROC = Int32 Function();
typedef VDMMODULEFIRSTPROC = Int32 Function(
  IntPtr param0,
  IntPtr param1,
  Pointer<MODULEENTRY> param2,
  Pointer<NativeFunction<DEBUGEVENTPROC>> param3,
  Pointer param4,
);
typedef VDMMODULENEXTPROC = Int32 Function(
  IntPtr param0,
  IntPtr param1,
  Pointer<MODULEENTRY> param2,
  Pointer<NativeFunction<DEBUGEVENTPROC>> param3,
  Pointer param4,
);
typedef VDMPROCESSEXCEPTIONPROC = Int32 Function(
  Pointer<DEBUG_EVENT> param0,
);
typedef VDMSETCONTEXTPROC = Int32 Function(
  IntPtr param0,
  IntPtr param1,
  Pointer<VDMCONTEXT> param2,
);
typedef VDMSETDBGFLAGSPROC = Int32 Function(
  IntPtr param0,
  Uint32 param1,
);
typedef VDMSTARTTASKINWOWPROC = Int32 Function(
  Uint32 param0,
  Pointer<Utf8> param1,
  Uint16 param2,
);
typedef VDMTERMINATETASKINWOWPROC = Int32 Function(
  Uint32 param0,
  Uint16 param1,
);
