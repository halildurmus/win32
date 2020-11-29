// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Native callback functions that can get called by the Win32 API

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'structs.dart';

/// Application-defined callback function used with the CreateDialog and
/// DialogBox families of functions. It processes messages sent to a modal or
/// modeless dialog box.
typedef DlgProc = IntPtr Function(IntPtr, Uint32, IntPtr, IntPtr);

/// Application-defined callback function used with the EnumChildWindows
/// function. It receives the child window handles.
typedef EnumChildProc = Int32 Function(IntPtr hwnd, IntPtr lParam);

/// Application defined callback function used with the EnumFontFamiliesEx
/// function. It is used to process the fonts.
typedef EnumFontFamExProc = Int32 Function(Pointer<LOGFONT> lpelfe,
    Pointer<TEXTMETRIC> lpntme, Uint32 FontType, IntPtr lParam);

/// Application-defined callback function used with the EnumResourceNames and
/// EnumResourceNamesEx functions. It receives the type and name of a resource.
typedef EnumResNameProc = Int32 Function(IntPtr hModule, Pointer<Utf16> lpType,
    Pointer<Utf16> lpName, IntPtr lParam);

/// Application-defined callback function used with the EnumResourceTypes and
/// EnumResourceTypesEx functions. It receives resource types.
typedef EnumResTypeProc = Int32 Function(
    IntPtr hModule, Pointer<Utf16> lpszType, IntPtr lParam);

/// Application-defined callback function used with the EnumWindows or
/// EnumDesktopWindows function. It receives top-level window handles.
typedef EnumWindowsProc = Int32 Function(IntPtr hwnd, IntPtr lParam);

/// Application-defined callback function used with the FindText or ReplaceText
/// function. It receives messages or notifications intended for the default
/// dialog box procedure of the Find or Replace dialog box.
typedef LPFRHookProc = Pointer<Uint32> Function(IntPtr, Int32, IntPtr, IntPtr);

/// Application-defined callback function that is called by the
/// EnumDisplayMonitors function. It receives display monitors in the calculated
/// enumeration set.
typedef MonitorEnumProc = Int32 Function(
    IntPtr hMonitor, IntPtr hDC, Pointer lpRect, IntPtr lParam);

/// Application-defined callback function that processes WM_TIMER messages.
typedef TimerProc = Void Function(IntPtr, Uint32, Pointer<Uint32>, Int32);

/// An application-defined function that processes messages sent to a window.
typedef WindowProc = IntPtr Function(
    IntPtr hwnd, Int32 uMsg, IntPtr wParam, IntPtr lParam);
