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

  final uiautomationelement = IUIAutomationElement(ptr);
  test('Can instantiate IUIAutomationElement.setFocus', () {
    expect(uiautomationelement.setFocus, isA<Function>());
  });
  test('Can instantiate IUIAutomationElement.getRuntimeId', () {
    expect(uiautomationelement.getRuntimeId, isA<Function>());
  });
  test('Can instantiate IUIAutomationElement.findFirst', () {
    expect(uiautomationelement.findFirst, isA<Function>());
  });
  test('Can instantiate IUIAutomationElement.findAll', () {
    expect(uiautomationelement.findAll, isA<Function>());
  });
  test('Can instantiate IUIAutomationElement.findFirstBuildCache', () {
    expect(uiautomationelement.findFirstBuildCache, isA<Function>());
  });
  test('Can instantiate IUIAutomationElement.findAllBuildCache', () {
    expect(uiautomationelement.findAllBuildCache, isA<Function>());
  });
  test('Can instantiate IUIAutomationElement.buildUpdatedCache', () {
    expect(uiautomationelement.buildUpdatedCache, isA<Function>());
  });
  test('Can instantiate IUIAutomationElement.getCurrentPropertyValue', () {
    expect(uiautomationelement.getCurrentPropertyValue, isA<Function>());
  });
  test('Can instantiate IUIAutomationElement.getCurrentPropertyValueEx', () {
    expect(uiautomationelement.getCurrentPropertyValueEx, isA<Function>());
  });
  test('Can instantiate IUIAutomationElement.getCachedPropertyValue', () {
    expect(uiautomationelement.getCachedPropertyValue, isA<Function>());
  });
  test('Can instantiate IUIAutomationElement.getCachedPropertyValueEx', () {
    expect(uiautomationelement.getCachedPropertyValueEx, isA<Function>());
  });
  test('Can instantiate IUIAutomationElement.getCurrentPatternAs', () {
    expect(uiautomationelement.getCurrentPatternAs, isA<Function>());
  });
  test('Can instantiate IUIAutomationElement.getCachedPatternAs', () {
    expect(uiautomationelement.getCachedPatternAs, isA<Function>());
  });
  test('Can instantiate IUIAutomationElement.getCurrentPattern', () {
    expect(uiautomationelement.getCurrentPattern, isA<Function>());
  });
  test('Can instantiate IUIAutomationElement.getCachedPattern', () {
    expect(uiautomationelement.getCachedPattern, isA<Function>());
  });
  test('Can instantiate IUIAutomationElement.getCachedParent', () {
    expect(uiautomationelement.getCachedParent, isA<Function>());
  });
  test('Can instantiate IUIAutomationElement.getCachedChildren', () {
    expect(uiautomationelement.getCachedChildren, isA<Function>());
  });
  test('Can instantiate IUIAutomationElement.getClickablePoint', () {
    expect(uiautomationelement.getClickablePoint, isA<Function>());
  });
}
