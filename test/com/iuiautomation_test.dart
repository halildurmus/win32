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

  final uiautomation = IUIAutomation(ptr);
  test('Can instantiate IUIAutomation.compareElements', () {
    expect(uiautomation.compareElements, isA<Function>());
  });
  test('Can instantiate IUIAutomation.compareRuntimeIds', () {
    expect(uiautomation.compareRuntimeIds, isA<Function>());
  });
  test('Can instantiate IUIAutomation.getRootElement', () {
    expect(uiautomation.getRootElement, isA<Function>());
  });
  test('Can instantiate IUIAutomation.elementFromHandle', () {
    expect(uiautomation.elementFromHandle, isA<Function>());
  });
  test('Can instantiate IUIAutomation.elementFromPoint', () {
    expect(uiautomation.elementFromPoint, isA<Function>());
  });
  test('Can instantiate IUIAutomation.getFocusedElement', () {
    expect(uiautomation.getFocusedElement, isA<Function>());
  });
  test('Can instantiate IUIAutomation.getRootElementBuildCache', () {
    expect(uiautomation.getRootElementBuildCache, isA<Function>());
  });
  test('Can instantiate IUIAutomation.elementFromHandleBuildCache', () {
    expect(uiautomation.elementFromHandleBuildCache, isA<Function>());
  });
  test('Can instantiate IUIAutomation.elementFromPointBuildCache', () {
    expect(uiautomation.elementFromPointBuildCache, isA<Function>());
  });
  test('Can instantiate IUIAutomation.getFocusedElementBuildCache', () {
    expect(uiautomation.getFocusedElementBuildCache, isA<Function>());
  });
  test('Can instantiate IUIAutomation.createTreeWalker', () {
    expect(uiautomation.createTreeWalker, isA<Function>());
  });
  test('Can instantiate IUIAutomation.createCacheRequest', () {
    expect(uiautomation.createCacheRequest, isA<Function>());
  });
  test('Can instantiate IUIAutomation.createTrueCondition', () {
    expect(uiautomation.createTrueCondition, isA<Function>());
  });
  test('Can instantiate IUIAutomation.createFalseCondition', () {
    expect(uiautomation.createFalseCondition, isA<Function>());
  });
  test('Can instantiate IUIAutomation.createPropertyCondition', () {
    expect(uiautomation.createPropertyCondition, isA<Function>());
  });
  test('Can instantiate IUIAutomation.createPropertyConditionEx', () {
    expect(uiautomation.createPropertyConditionEx, isA<Function>());
  });
  test('Can instantiate IUIAutomation.createAndCondition', () {
    expect(uiautomation.createAndCondition, isA<Function>());
  });
  test('Can instantiate IUIAutomation.createAndConditionFromArray', () {
    expect(uiautomation.createAndConditionFromArray, isA<Function>());
  });
  test('Can instantiate IUIAutomation.createAndConditionFromNativeArray', () {
    expect(uiautomation.createAndConditionFromNativeArray, isA<Function>());
  });
  test('Can instantiate IUIAutomation.createOrCondition', () {
    expect(uiautomation.createOrCondition, isA<Function>());
  });
  test('Can instantiate IUIAutomation.createOrConditionFromArray', () {
    expect(uiautomation.createOrConditionFromArray, isA<Function>());
  });
  test('Can instantiate IUIAutomation.createOrConditionFromNativeArray', () {
    expect(uiautomation.createOrConditionFromNativeArray, isA<Function>());
  });
  test('Can instantiate IUIAutomation.createNotCondition', () {
    expect(uiautomation.createNotCondition, isA<Function>());
  });
  test('Can instantiate IUIAutomation.addAutomationEventHandler', () {
    expect(uiautomation.addAutomationEventHandler, isA<Function>());
  });
  test('Can instantiate IUIAutomation.removeAutomationEventHandler', () {
    expect(uiautomation.removeAutomationEventHandler, isA<Function>());
  });
  test(
      'Can instantiate IUIAutomation.addPropertyChangedEventHandlerNativeArray',
      () {
    expect(uiautomation.addPropertyChangedEventHandlerNativeArray,
        isA<Function>());
  });
  test('Can instantiate IUIAutomation.addPropertyChangedEventHandler', () {
    expect(uiautomation.addPropertyChangedEventHandler, isA<Function>());
  });
  test('Can instantiate IUIAutomation.removePropertyChangedEventHandler', () {
    expect(uiautomation.removePropertyChangedEventHandler, isA<Function>());
  });
  test('Can instantiate IUIAutomation.addStructureChangedEventHandler', () {
    expect(uiautomation.addStructureChangedEventHandler, isA<Function>());
  });
  test('Can instantiate IUIAutomation.removeStructureChangedEventHandler', () {
    expect(uiautomation.removeStructureChangedEventHandler, isA<Function>());
  });
  test('Can instantiate IUIAutomation.addFocusChangedEventHandler', () {
    expect(uiautomation.addFocusChangedEventHandler, isA<Function>());
  });
  test('Can instantiate IUIAutomation.removeFocusChangedEventHandler', () {
    expect(uiautomation.removeFocusChangedEventHandler, isA<Function>());
  });
  test('Can instantiate IUIAutomation.removeAllEventHandlers', () {
    expect(uiautomation.removeAllEventHandlers, isA<Function>());
  });
  test('Can instantiate IUIAutomation.intNativeArrayToSafeArray', () {
    expect(uiautomation.intNativeArrayToSafeArray, isA<Function>());
  });
  test('Can instantiate IUIAutomation.intSafeArrayToNativeArray', () {
    expect(uiautomation.intSafeArrayToNativeArray, isA<Function>());
  });
  test('Can instantiate IUIAutomation.rectToVariant', () {
    expect(uiautomation.rectToVariant, isA<Function>());
  });
  test('Can instantiate IUIAutomation.variantToRect', () {
    expect(uiautomation.variantToRect, isA<Function>());
  });
  test('Can instantiate IUIAutomation.safeArrayToRectNativeArray', () {
    expect(uiautomation.safeArrayToRectNativeArray, isA<Function>());
  });
  test('Can instantiate IUIAutomation.createProxyFactoryEntry', () {
    expect(uiautomation.createProxyFactoryEntry, isA<Function>());
  });
  test('Can instantiate IUIAutomation.getPropertyProgrammaticName', () {
    expect(uiautomation.getPropertyProgrammaticName, isA<Function>());
  });
  test('Can instantiate IUIAutomation.getPatternProgrammaticName', () {
    expect(uiautomation.getPatternProgrammaticName, isA<Function>());
  });
  test('Can instantiate IUIAutomation.pollForPotentialSupportedPatterns', () {
    expect(uiautomation.pollForPotentialSupportedPatterns, isA<Function>());
  });
  test('Can instantiate IUIAutomation.pollForPotentialSupportedProperties', () {
    expect(uiautomation.pollForPotentialSupportedProperties, isA<Function>());
  });
  test('Can instantiate IUIAutomation.checkNotSupported', () {
    expect(uiautomation.checkNotSupported, isA<Function>());
  });
  test('Can instantiate IUIAutomation.elementFromIAccessible', () {
    expect(uiautomation.elementFromIAccessible, isA<Function>());
  });
  test('Can instantiate IUIAutomation.elementFromIAccessibleBuildCache', () {
    expect(uiautomation.elementFromIAccessibleBuildCache, isA<Function>());
  });

  free(ptr);
}
