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

  final uiautomationsynchronizedinputpattern =
      IUIAutomationSynchronizedInputPattern(ptr);
  test('Can instantiate IUIAutomationSynchronizedInputPattern.startListening',
      () {
    expect(
        uiautomationsynchronizedinputpattern.startListening, isA<Function>());
  });
  test('Can instantiate IUIAutomationSynchronizedInputPattern.cancel', () {
    expect(uiautomationsynchronizedinputpattern.cancel, isA<Function>());
  });

  free(ptr);
}
