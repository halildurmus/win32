// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'com/combase.dart';
import 'structs.dart';

final _shcore = DynamicLibrary.open('shcore.dll');

/// Queries the dots per inch (dpi) of a display.
///
/// ```c
/// HRESULT GetDpiForMonitor(
///   HMONITOR         hmonitor,
///   MONITOR_DPI_TYPE dpiType,
///   UINT             *dpiX,
///   UINT             *dpiY
///   );
/// ```
/// {@category shcore}
final GetDpiForMonitor = _shcore.lookupFunction<
    IntPtr Function(IntPtr hMonitor, Int32 dpiType, Pointer<Int32> dpiX,
        Pointer<Int32> dpiY),
    int Function(int hMonitor, int dpiType, Pointer<Int32> dpiX,
        Pointer<Int32> dpiY)>('GetDpiForMonitor');

/// Retrieves the dots per inch (dpi) awareness of the specified process.
///
/// ```c
/// HRESULT GetProcessDpiAwareness(
///   HANDLE                hprocess,
///   PROCESS_DPI_AWARENESS *value
/// );
/// ```
/// {@category shcore}
final GetProcessDpiAwareness = _shcore.lookupFunction<
    IntPtr Function(IntPtr hprocess, Pointer<Int32> value),
    int Function(int hprocess, Pointer<Int32> value)>('GetProcessDpiAwareness');

/// Sets the process-default DPI awareness level. This is equivalent to
/// calling SetProcessDpiAwarenessContext with the corresponding
/// DPI_AWARENESS_CONTEXT value.
///
/// ```c
/// HRESULT SetProcessDpiAwareness(
///   PROCESS_DPI_AWARENESS value
/// );
/// ```
/// {@category shcore}
final SetProcessDpiAwareness = _shcore.lookupFunction<
    IntPtr Function(Int32 value),
    int Function(int value)>('SetProcessDpiAwareness');
