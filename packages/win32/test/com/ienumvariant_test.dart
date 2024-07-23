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

  final enumvariant = IEnumVARIANT(ptr);
  test('Can instantiate IEnumVARIANT.next', () {
    expect(enumvariant.next, isA<Function>());
  });
  test('Can instantiate IEnumVARIANT.skip', () {
    expect(enumvariant.skip, isA<Function>());
  });
  test('Can instantiate IEnumVARIANT.reset', () {
    expect(enumvariant.reset, isA<Function>());
  });
  test('Can instantiate IEnumVARIANT.clone', () {
    expect(enumvariant.clone, isA<Function>());
  });

  free(ptr);
}