// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Helpful utilities

import 'dart:ffi';

import 'package:ffi/ffi.dart';

bool isWindowsRuntimeAvailable() {
  try {
    DynamicLibrary.open('api-ms-win-core-winrt-l1-1-0.dll');
    // ignore: avoid_catching_errors
  } on ArgumentError {
    return false;
  }

  return true;
}

Pointer<Utf16> TEXT(String string) => string.toNativeUtf16();

void free(Pointer pointer) => calloc.free(pointer);
