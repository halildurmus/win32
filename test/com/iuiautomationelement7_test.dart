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

  final uiautomationelement7 = IUIAutomationElement7(ptr);
  test('Can instantiate IUIAutomationElement7.findFirstWithOptions', () {
    expect(uiautomationelement7.findFirstWithOptions, isA<Function>());
  });
  test('Can instantiate IUIAutomationElement7.findAllWithOptions', () {
    expect(uiautomationelement7.findAllWithOptions, isA<Function>());
  });
  test('Can instantiate IUIAutomationElement7.findFirstWithOptionsBuildCache',
      () {
    expect(
        uiautomationelement7.findFirstWithOptionsBuildCache, isA<Function>());
  });
  test('Can instantiate IUIAutomationElement7.findAllWithOptionsBuildCache',
      () {
    expect(uiautomationelement7.findAllWithOptionsBuildCache, isA<Function>());
  });
  test('Can instantiate IUIAutomationElement7.getCurrentMetadataValue', () {
    expect(uiautomationelement7.getCurrentMetadataValue, isA<Function>());
  });

  free(ptr);
}
