// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Maps FFI prototypes onto the corresponding Win32 API function calls

// This file contains Win32 APIs that are missing from the Win32 metadata.

// import 'dart:ffi';

// final _user32 = DynamicLibrary.open('user32.dll');

/// Changes an attribute of the specified window. The function also sets a
/// value at the specified offset in the extra window memory.
///
/// ```c
/// LONG_PTR SetWindowLongPtrW(
///   HWND     hWnd,
///   int      nIndex,
///   LONG_PTR dwNewLong
/// );
/// ```
/// {@category user32}
// int SetWindowLongPtr(int hWnd, int nIndex, int dwNewLong) {
//   final _SetWindowLongPtr = _user32.lookupFunction<
//       IntPtr Function(IntPtr hWnd, Int32 nIndex, IntPtr dwNewLong),
//       int Function(int hWnd, int nIndex, int dwNewLong)>('SetWindowLongPtrW');
//   return _SetWindowLongPtr(hWnd, nIndex, dwNewLong);
// }
