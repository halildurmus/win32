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

  final enumnetworks = IEnumNetworks(ptr);
  test('Can instantiate IEnumNetworks.next', () {
    expect(enumnetworks.next, isA<Function>());
  });
  test('Can instantiate IEnumNetworks.skip', () {
    expect(enumnetworks.skip, isA<Function>());
  });
  test('Can instantiate IEnumNetworks.reset', () {
    expect(enumnetworks.reset, isA<Function>());
  });
  test('Can instantiate IEnumNetworks.clone', () {
    expect(enumnetworks.clone, isA<Function>());
  });

  free(ptr);
}
