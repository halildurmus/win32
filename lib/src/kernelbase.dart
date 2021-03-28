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

final _kernelbase = DynamicLibrary.open('kernelbase.dll');

/// Compares two object handles to determine if they refer to the same
/// underlying kernel object.
///
/// ```c
/// BOOL CompareObjectHandles(
///   HANDLE hFirstObjectHandle,
///   HANDLE hSecondObjectHandle
/// );
/// ```
/// {@category kernel32}
int CompareObjectHandles(int hFirstObjectHandle, int hSecondObjectHandle) {
  final _CompareObjectHandles = _kernelbase.lookupFunction<
      Int32 Function(IntPtr hFirstObjectHandle, IntPtr hSecondObjectHandle),
      int Function(int hFirstObjectHandle,
          int hSecondObjectHandle)>('CompareObjectHandles');
  return _CompareObjectHandles(hFirstObjectHandle, hSecondObjectHandle);
}

/// Retrieves the best estimate of the diagonal size of the built-in
/// screen, in inches.
///
/// ```c
/// HRESULT GetIntegratedDisplaySize(
///   double *sizeInInches
/// );
/// ```
/// {@category kernel32}
int GetIntegratedDisplaySize(Pointer<Double> sizeInInches) {
  final _GetIntegratedDisplaySize = _kernelbase.lookupFunction<
      Int32 Function(Pointer<Double> sizeInInches),
      int Function(Pointer<Double> sizeInInches)>('GetIntegratedDisplaySize');
  return _GetIntegratedDisplaySize(sizeInInches);
}
