// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Extension method to convert HSTRING arrays to List<String>

import 'dart:ffi';

import '../api-ms-win-core-winrt-string-l1-1-0.dart';
import '../types.dart';
import '../winrt/winrt_helpers.dart';

extension HStringHelper on Pointer<HSTRING> {
  List<String> toList({int length = 1}) {
    final list = <String>[];
    for (var i = 0; i < length; i++) {
      final element = this[i];
      if (element != 0) {
        list.add(convertFromHString(this[i]));
        WindowsDeleteString(this[i]);
      }
    }

    return list;
  }
}
