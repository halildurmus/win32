// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

// 10,000,000 allocations (and hopefully deallocations)
void main() {
  for (var i = 0; i < 100000; i++) {
    var addr = 0;
    var lastPtr = 0;
    for (var j = 0; j < 100; j++) {
      final val = IUnknown(calloc<COMObject>());
      addr += val.ptr.address ~/ 1024;
      lastPtr = val.ptr.address;
    }
    print('$i: ${addr ~/ 1024} | $lastPtr');
  }
  print('all done');
}
