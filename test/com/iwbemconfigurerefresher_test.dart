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

  final wbemconfigurerefresher = IWbemConfigureRefresher(ptr);
  test('Can instantiate IWbemConfigureRefresher.addObjectByPath', () {
    expect(wbemconfigurerefresher.addObjectByPath, isA<Function>());
  });
  test('Can instantiate IWbemConfigureRefresher.addObjectByTemplate', () {
    expect(wbemconfigurerefresher.addObjectByTemplate, isA<Function>());
  });
  test('Can instantiate IWbemConfigureRefresher.addRefresher', () {
    expect(wbemconfigurerefresher.addRefresher, isA<Function>());
  });
  test('Can instantiate IWbemConfigureRefresher.remove', () {
    expect(wbemconfigurerefresher.remove, isA<Function>());
  });
  test('Can instantiate IWbemConfigureRefresher.addEnum', () {
    expect(wbemconfigurerefresher.addEnum, isA<Function>());
  });

  free(ptr);
}
