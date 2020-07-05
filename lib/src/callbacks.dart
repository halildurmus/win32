// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// callbacks.dart

// Native functions that get called by the Win32 API

import 'dart:ffi';

typedef LPFRHookProc = Pointer<Uint32> Function(IntPtr, Int32, IntPtr, IntPtr);
typedef TimerProc = Void Function(IntPtr, Uint32, Pointer<Uint32>, Int32);
typedef EnumWindowsProc = Int32 Function(IntPtr hwnd, IntPtr lParam);
typedef MonitorEnumProc = Int32 Function(
    IntPtr hMonitor, IntPtr hDC, Pointer lpRect, IntPtr lParam);
typedef WindowProc = IntPtr Function(
    IntPtr hwnd, Int32 uMsg, IntPtr wParam, IntPtr lParam);
