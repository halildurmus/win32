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

Pointer<Uint8> convertToANSIString(String str) {
  final pStr = allocate<Uint8>(count: str.length + 1);
  for (var i = 0; i < str.length; i++) {
    pStr.elementAt(i).value = str.codeUnitAt(i) & 0xFF;
  }
  pStr.elementAt(str.length).value = 0;
  return pStr;
}

const TEXT = Utf16.toUtf16;
