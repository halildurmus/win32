// Copyright (c) 2020, Dart | Windows.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Tests that Win32 API prototypes can be successfully loaded (i.e. that
// lookupFunction works for all the APIs generated)

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_local_variable

@TestOn('windows')
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:test/test.dart';
import 'package:win32/win32.dart';

void main() {
  final ptr = calloc<COMObject>();

  final uiautomationtextrange3 = IUIAutomationTextRange3(ptr);
  test('Can instantiate IUIAutomationTextRange3.getEnclosingElementBuildCache',
      () {
    expect(
        uiautomationtextrange3.getEnclosingElementBuildCache, isA<Function>());
  });
  test('Can instantiate IUIAutomationTextRange3.getChildrenBuildCache', () {
    expect(uiautomationtextrange3.getChildrenBuildCache, isA<Function>());
  });
  test('Can instantiate IUIAutomationTextRange3.getAttributeValues', () {
    expect(uiautomationtextrange3.getAttributeValues, isA<Function>());
  });

  free(ptr);
}
