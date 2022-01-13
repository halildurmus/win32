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
import '../../graphics/gdi/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/printing/structs.g.dart';

typedef EMFPLAYPROC = Int32 Function(
  IntPtr param0,
  Int32 param1,
  IntPtr param2,
);
typedef OEMCUIPCALLBACK = Int32 Function(
  Pointer<CPSUICBPARAM> param0,
  Pointer<OEMCUIPPARAM> param1,
);
typedef PFNCOMPROPSHEET = IntPtr Function(
  IntPtr hComPropSheet,
  Uint32 Function,
  IntPtr lParam1,
  IntPtr lParam2,
);
typedef PFNPROPSHEETUI = Int32 Function(
  Pointer<PROPSHEETUI_INFO> pPSUIInfo,
  IntPtr lParam,
);
typedef PFN_DrvGetDriverSetting = Int32 Function(
  Pointer pdriverobj,
  Pointer<Utf8> Feature,
  Pointer pOutput,
  Uint32 cbSize,
  Pointer<Uint32> pcbNeeded,
  Pointer<Uint32> pdwOptionsReturned,
);
typedef PFN_DrvUpdateUISetting = Int32 Function(
  Pointer pdriverobj,
  Pointer pOptItem,
  Uint32 dwPreviousSelection,
  Uint32 dwMode,
);
typedef PFN_DrvUpgradeRegistrySetting = Int32 Function(
  IntPtr hPrinter,
  Pointer<Utf8> pFeature,
  Pointer<Utf8> pOption,
);
typedef ROUTER_NOTIFY_CALLBACK = Int32 Function(
  Uint32 dwCommand,
  Pointer pContext,
  Uint32 dwColor,
  Pointer<PRINTER_NOTIFY_INFO> pNofityInfo,
  Uint32 fdwFlags,
  Pointer<Uint32> pdwResult,
);
typedef CPSUICALLBACK = Int32 Function(
  Pointer<CPSUICBPARAM> pCPSUICBParam,
);
