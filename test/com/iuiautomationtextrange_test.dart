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

  final uiautomationtextrange = IUIAutomationTextRange(ptr);
  test('Can instantiate IUIAutomationTextRange.clone', () {
    expect(uiautomationtextrange.clone, isA<Function>());
  });
  test('Can instantiate IUIAutomationTextRange.compare', () {
    expect(uiautomationtextrange.compare, isA<Function>());
  });
  test('Can instantiate IUIAutomationTextRange.compareEndpoints', () {
    expect(uiautomationtextrange.compareEndpoints, isA<Function>());
  });
  test('Can instantiate IUIAutomationTextRange.expandToEnclosingUnit', () {
    expect(uiautomationtextrange.expandToEnclosingUnit, isA<Function>());
  });
  test('Can instantiate IUIAutomationTextRange.findAttribute', () {
    expect(uiautomationtextrange.findAttribute, isA<Function>());
  });
  test('Can instantiate IUIAutomationTextRange.findText', () {
    expect(uiautomationtextrange.findText, isA<Function>());
  });
  test('Can instantiate IUIAutomationTextRange.getAttributeValue', () {
    expect(uiautomationtextrange.getAttributeValue, isA<Function>());
  });
  test('Can instantiate IUIAutomationTextRange.getBoundingRectangles', () {
    expect(uiautomationtextrange.getBoundingRectangles, isA<Function>());
  });
  test('Can instantiate IUIAutomationTextRange.getEnclosingElement', () {
    expect(uiautomationtextrange.getEnclosingElement, isA<Function>());
  });
  test('Can instantiate IUIAutomationTextRange.getText', () {
    expect(uiautomationtextrange.getText, isA<Function>());
  });
  test('Can instantiate IUIAutomationTextRange.move', () {
    expect(uiautomationtextrange.move, isA<Function>());
  });
  test('Can instantiate IUIAutomationTextRange.moveEndpointByUnit', () {
    expect(uiautomationtextrange.moveEndpointByUnit, isA<Function>());
  });
  test('Can instantiate IUIAutomationTextRange.moveEndpointByRange', () {
    expect(uiautomationtextrange.moveEndpointByRange, isA<Function>());
  });
  test('Can instantiate IUIAutomationTextRange.select', () {
    expect(uiautomationtextrange.select, isA<Function>());
  });
  test('Can instantiate IUIAutomationTextRange.addToSelection', () {
    expect(uiautomationtextrange.addToSelection, isA<Function>());
  });
  test('Can instantiate IUIAutomationTextRange.removeFromSelection', () {
    expect(uiautomationtextrange.removeFromSelection, isA<Function>());
  });
  test('Can instantiate IUIAutomationTextRange.scrollIntoView', () {
    expect(uiautomationtextrange.scrollIntoView, isA<Function>());
  });
  test('Can instantiate IUIAutomationTextRange.getChildren', () {
    expect(uiautomationtextrange.getChildren, isA<Function>());
  });

  free(ptr);
}
