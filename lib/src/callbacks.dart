// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Native callback functions that can get called by the Win32 API

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'structs.dart';

typedef EnumFontFamExProc = Int32 Function(Pointer<LOGFONT> lpelfe,
    Pointer<TEXTMETRIC> lpntme, Uint32 FontType, IntPtr lParam);

typedef EnumResTypeProc = Int32 Function(
    IntPtr hModule, Pointer<Utf16> lpszType, IntPtr lParam);

typedef EnumWindowsProc = Int32 Function(IntPtr hwnd, IntPtr lParam);

typedef LPFRHookProc = Pointer<Uint32> Function(IntPtr, Int32, IntPtr, IntPtr);

typedef MonitorEnumProc = Int32 Function(
    IntPtr hMonitor, IntPtr hDC, Pointer lpRect, IntPtr lParam);

typedef TimerProc = Void Function(IntPtr, Uint32, Pointer<Uint32>, Int32);

typedef WindowProc = IntPtr Function(
    IntPtr hwnd, Int32 uMsg, IntPtr wParam, IntPtr lParam);
