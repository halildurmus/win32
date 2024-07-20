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

  final uiautomationselectionitempattern =
      IUIAutomationSelectionItemPattern(ptr);
  test('Can instantiate IUIAutomationSelectionItemPattern.select', () {
    expect(uiautomationselectionitempattern.select, isA<Function>());
  });
  test('Can instantiate IUIAutomationSelectionItemPattern.addToSelection', () {
    expect(uiautomationselectionitempattern.addToSelection, isA<Function>());
  });
  test('Can instantiate IUIAutomationSelectionItemPattern.removeFromSelection',
      () {
    expect(
        uiautomationselectionitempattern.removeFromSelection, isA<Function>());
  });

  free(ptr);
}
