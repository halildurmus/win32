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
import '../../ui/controls/structs.g.dart';
import '../../ui/controls/callbacks.g.dart';
import '../../system/com/IStream.dart';

typedef DTT_CALLBACK_PROC = Int32 Function(
  IntPtr hdc,
  Pointer<Utf16> pszText,
  Int32 cchText,
  Pointer<RECT> prc,
  Uint32 dwFlags,
  IntPtr lParam,
);
typedef EDITWORDBREAKPROCW = Int32 Function(
  Pointer<Utf16> lpch,
  Int32 ichCurrent,
  Int32 cch,
  Uint32 code,
);
typedef LPFNADDPROPSHEETPAGES = Int32 Function(
  Pointer param0,
  Pointer<NativeFunction<LPFNSVADDPROPSHEETPAGE>> param1,
  IntPtr param2,
);
typedef LPFNCCINFOW = Uint32 Function(
  Pointer<CCINFO> acci,
);
typedef LPFNCCSIZETOTEXTW = Int32 Function(
  Uint32 flStyle,
  Uint32 flExtStyle,
  IntPtr hfont,
  Pointer<Utf16> pszText,
);
typedef LPFNCCSTYLEW = Int32 Function(
  IntPtr hwndParent,
  Pointer<CCSTYLE> pccs,
);
typedef LPFNPSPCALLBACKW = Uint32 Function(
  IntPtr hwnd,
  Uint32 uMsg,
  Pointer<PROPSHEETPAGE> ppsp,
);
typedef LPFNSVADDPROPSHEETPAGE = Int32 Function(
  IntPtr param0,
  IntPtr param1,
);
typedef PFNDACOMPARE = Int32 Function(
  Pointer p1,
  Pointer p2,
  IntPtr lParam,
);
typedef PFNDACOMPARECONST = Int32 Function(
  Pointer p1,
  Pointer p2,
  IntPtr lParam,
);
typedef PFNDAENUMCALLBACK = Int32 Function(
  Pointer p,
  Pointer pData,
);
typedef PFNDAENUMCALLBACKCONST = Int32 Function(
  Pointer p,
  Pointer pData,
);
typedef PFNDPAMERGE = Pointer Function(
  Uint32 uMsg,
  Pointer pvDest,
  Pointer pvSrc,
  IntPtr lParam,
);
typedef PFNDPAMERGECONST = Pointer Function(
  Uint32 uMsg,
  Pointer pvDest,
  Pointer pvSrc,
  IntPtr lParam,
);
typedef PFNDPASTREAM = Int32 Function(
  Pointer<DPASTREAMINFO> pinfo,
  Pointer<COMObject> pstream,
  Pointer pvInstData,
);
typedef PFNLVCOMPARE = Int32 Function(
  IntPtr param0,
  IntPtr param1,
  IntPtr param2,
);
typedef PFNLVGROUPCOMPARE = Int32 Function(
  Int32 param0,
  Int32 param1,
  Pointer param2,
);
typedef PFNPROPSHEETCALLBACK = Int32 Function(
  IntPtr param0,
  Uint32 param1,
  IntPtr param2,
);
typedef PFNTVCOMPARE = Int32 Function(
  IntPtr lParam1,
  IntPtr lParam2,
  IntPtr lParamSort,
);
typedef PFTASKDIALOGCALLBACK = Int32 Function(
  IntPtr hwnd,
  Uint32 msg,
  IntPtr wParam,
  IntPtr lParam,
  IntPtr lpRefData,
);
