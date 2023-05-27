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

  final uiautomationtreewalker = IUIAutomationTreeWalker(ptr);
  test('Can instantiate IUIAutomationTreeWalker.getParentElement', () {
    expect(uiautomationtreewalker.getParentElement, isA<Function>());
  });
  test('Can instantiate IUIAutomationTreeWalker.getFirstChildElement', () {
    expect(uiautomationtreewalker.getFirstChildElement, isA<Function>());
  });
  test('Can instantiate IUIAutomationTreeWalker.getLastChildElement', () {
    expect(uiautomationtreewalker.getLastChildElement, isA<Function>());
  });
  test('Can instantiate IUIAutomationTreeWalker.getNextSiblingElement', () {
    expect(uiautomationtreewalker.getNextSiblingElement, isA<Function>());
  });
  test('Can instantiate IUIAutomationTreeWalker.getPreviousSiblingElement', () {
    expect(uiautomationtreewalker.getPreviousSiblingElement, isA<Function>());
  });
  test('Can instantiate IUIAutomationTreeWalker.normalizeElement', () {
    expect(uiautomationtreewalker.normalizeElement, isA<Function>());
  });
  test('Can instantiate IUIAutomationTreeWalker.getParentElementBuildCache',
      () {
    expect(uiautomationtreewalker.getParentElementBuildCache, isA<Function>());
  });
  test('Can instantiate IUIAutomationTreeWalker.getFirstChildElementBuildCache',
      () {
    expect(
        uiautomationtreewalker.getFirstChildElementBuildCache, isA<Function>());
  });
  test('Can instantiate IUIAutomationTreeWalker.getLastChildElementBuildCache',
      () {
    expect(
        uiautomationtreewalker.getLastChildElementBuildCache, isA<Function>());
  });
  test(
      'Can instantiate IUIAutomationTreeWalker.getNextSiblingElementBuildCache',
      () {
    expect(uiautomationtreewalker.getNextSiblingElementBuildCache,
        isA<Function>());
  });
  test(
      'Can instantiate IUIAutomationTreeWalker.getPreviousSiblingElementBuildCache',
      () {
    expect(uiautomationtreewalker.getPreviousSiblingElementBuildCache,
        isA<Function>());
  });
  test('Can instantiate IUIAutomationTreeWalker.normalizeElementBuildCache',
      () {
    expect(uiautomationtreewalker.normalizeElementBuildCache, isA<Function>());
  });
}
