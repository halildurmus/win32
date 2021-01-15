// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Tests that Win32 API prototypes can be successfully loaded (i.e. that
// lookupFunction works for all the APIs generated)

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

@TestOn('windows')

import 'package:ffi/ffi.dart';
import 'package:test/test.dart';

import 'package:win32/win32.dart';

void main() {
  final ptr = calloc<COMObject>();

  final metadatadispenser = IMetaDataDispenser(ptr);
  test('Can instantiate IMetaDataDispenser.DefineScope', () {
    expect(metadatadispenser.DefineScope, isA<Function>());
  });
  test('Can instantiate IMetaDataDispenser.OpenScope', () {
    expect(metadatadispenser.OpenScope, isA<Function>());
  });
  test('Can instantiate IMetaDataDispenser.OpenScopeOnMemory', () {
    expect(metadatadispenser.OpenScopeOnMemory, isA<Function>());
  });
  free(ptr);
}
