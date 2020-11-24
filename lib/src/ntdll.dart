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

final _ntdll = DynamicLibrary.open('ntdll.dll');

/// The undocumented NtResumeProcess function accepts a process handle and
/// resumes that process.
///
/// ```c
/// void NtResumeProcess(
///  HWND hWnd
/// );
/// ```
/// {@category ntdll}
void NtResumeProcess(int hWnd) {
  final _NtResumeProcess = _ntdll.lookupFunction<Void Function(IntPtr hWnd),
      void Function(int hWnd)>('NtResumeProcess');
  return _NtResumeProcess(hWnd);
}

/// The undocumented NtSuspendProcess function accepts a process handle and
/// suspends that process.
///
/// ```c
/// void NtSuspendProcess(
///  HWND hWnd
/// );
/// ```
/// {@category ntdll}
void NtSuspendProcess(int hWnd) {
  final _NtSuspendProcess = _ntdll.lookupFunction<Void Function(IntPtr hWnd),
      void Function(int hWnd)>('NtSuspendProcess');
  return _NtSuspendProcess(hWnd);
}
