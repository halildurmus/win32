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

  final uiautomation5 = IUIAutomation5(ptr);
  test('Can instantiate IUIAutomation5.addNotificationEventHandler', () {
    expect(uiautomation5.addNotificationEventHandler, isA<Function>());
  });
  test('Can instantiate IUIAutomation5.removeNotificationEventHandler', () {
    expect(uiautomation5.removeNotificationEventHandler, isA<Function>());
  });

  free(ptr);
}
