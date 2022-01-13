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
import '../../ui/shell/structs.g.dart';
import '../../ui/shell/IShellFolder.dart';
import '../../system/com/IDataObject.dart';
import '../../ui/shell/IShellView.dart';

typedef APPLET_PROC = Int32 Function(
  IntPtr hwndCpl,
  Uint32 msg,
  IntPtr lParam1,
  IntPtr lParam2,
);
typedef BFFCALLBACK = Int32 Function(
  IntPtr hwnd,
  Uint32 uMsg,
  IntPtr lParam,
  IntPtr lpData,
);
typedef DLLGETVERSIONPROC = Int32 Function(
  Pointer<DLLVERSIONINFO> param0,
);
typedef LPFNDFMCALLBACK = Int32 Function(
  Pointer<COMObject> psf,
  IntPtr hwnd,
  Pointer<COMObject> pdtobj,
  Uint32 uMsg,
  IntPtr wParam,
  IntPtr lParam,
);
typedef LPFNVIEWCALLBACK = Int32 Function(
  Pointer<COMObject> psvOuter,
  Pointer<COMObject> psf,
  IntPtr hwndMain,
  Uint32 uMsg,
  IntPtr wParam,
  IntPtr lParam,
);
typedef PAPPCONSTRAIN_CHANGE_ROUTINE = Void Function(
  Uint8 Constrained,
  Pointer Context,
);
typedef PAPPSTATE_CHANGE_ROUTINE = Void Function(
  Uint8 Quiesced,
  Pointer Context,
);
typedef PFNCANSHAREFOLDERW = Int32 Function(
  Pointer<Utf16> pszPath,
);
typedef PFNSHOWSHAREFOLDERUIW = Int32 Function(
  IntPtr hwndParent,
  Pointer<Utf16> pszPath,
);
typedef SUBCLASSPROC = IntPtr Function(
  IntPtr hWnd,
  Uint32 uMsg,
  IntPtr wParam,
  IntPtr lParam,
  IntPtr uIdSubclass,
  IntPtr dwRefData,
);
