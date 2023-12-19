// Copyright (c) 2020, Dart | Windows.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Tests that Win32 API prototypes can be successfully loaded (i.e. that
// lookupFunction works for all the APIs generated)

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_local_variable

@TestOn('windows')

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:test/test.dart';

import 'package:win32/win32.dart';

void main() {
  final ptr = calloc<COMObject>();

  final uiautomationproxyfactorymapping = IUIAutomationProxyFactoryMapping(ptr);
  test('Can instantiate IUIAutomationProxyFactoryMapping.getTable', () {
    expect(uiautomationproxyfactorymapping.getTable, isA<Function>());
  });
  test('Can instantiate IUIAutomationProxyFactoryMapping.getEntry', () {
    expect(uiautomationproxyfactorymapping.getEntry, isA<Function>());
  });
  test('Can instantiate IUIAutomationProxyFactoryMapping.setTable', () {
    expect(uiautomationproxyfactorymapping.setTable, isA<Function>());
  });
  test('Can instantiate IUIAutomationProxyFactoryMapping.insertEntries', () {
    expect(uiautomationproxyfactorymapping.insertEntries, isA<Function>());
  });
  test('Can instantiate IUIAutomationProxyFactoryMapping.insertEntry', () {
    expect(uiautomationproxyfactorymapping.insertEntry, isA<Function>());
  });
  test('Can instantiate IUIAutomationProxyFactoryMapping.removeEntry', () {
    expect(uiautomationproxyfactorymapping.removeEntry, isA<Function>());
  });
  test('Can instantiate IUIAutomationProxyFactoryMapping.clearTable', () {
    expect(uiautomationproxyfactorymapping.clearTable, isA<Function>());
  });
  test('Can instantiate IUIAutomationProxyFactoryMapping.restoreDefaultTable',
      () {
    expect(
        uiautomationproxyfactorymapping.restoreDefaultTable, isA<Function>());
  });

  free(ptr);
}
