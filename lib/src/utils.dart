// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Helpful utilities

import 'dart:ffi';

import 'package:ffi/ffi.dart';

/// Detects whether the Windows Runtime is available by attempting to open its
/// core library.
bool isWindowsRuntimeAvailable() {
  try {
    DynamicLibrary.open('api-ms-win-core-winrt-l1-1-0.dll');
    // ignore: avoid_catching_errors
  } on ArgumentError {
    return false;
  }

  return true;
}

/// Converts a Dart string to a natively-allocated string.
///
/// The user is responsible for disposing its memory, typically by calling
/// free() when it has been used.
Pointer<Utf16> TEXT(String string) => string.toNativeUtf16();

/// Frees allocated memory.
///
/// [calloc.free] and [malloc.free] do the same thing, so this works regardless
/// of whether memory was zero-allocated on creation or not.
void free(Pointer pointer) => calloc.free(pointer);
