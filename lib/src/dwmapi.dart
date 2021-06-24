// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'callbacks.dart';
import 'combase.dart';
import 'structs.dart';
import 'structs.g.dart';

final _dwmapi = DynamicLibrary.open('dwmapi.dll');

/// Extends the window frame into the client area.
///
/// ```c
/// DWMAPI DwmExtendFrameIntoClientArea(
///   HWND          hWnd,
///   const MARGINS *pMarInset
/// );
/// ```
/// {@category dwmapi}
int DwmExtendFrameIntoClientArea(int hWnd, Pointer<MARGINS> pMarInset) =>
    _DwmExtendFrameIntoClientArea(hWnd, pMarInset);

late final _DwmExtendFrameIntoClientArea = _dwmapi.lookupFunction<
    Int32 Function(IntPtr hWnd, Pointer<MARGINS> pMarInset),
    int Function(
        int hWnd, Pointer<MARGINS> pMarInset)>('DwmExtendFrameIntoClientArea');
