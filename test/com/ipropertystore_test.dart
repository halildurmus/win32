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

  final propertystore = IPropertyStore(ptr);
  test('Can instantiate IPropertyStore.getCount', () {
    expect(propertystore.getCount, isA<Function>());
  });
  test('Can instantiate IPropertyStore.getAt', () {
    expect(propertystore.getAt, isA<Function>());
  });
  test('Can instantiate IPropertyStore.getValue', () {
    expect(propertystore.getValue, isA<Function>());
  });
  test('Can instantiate IPropertyStore.setValue', () {
    expect(propertystore.setValue, isA<Function>());
  });
  test('Can instantiate IPropertyStore.commit', () {
    expect(propertystore.commit, isA<Function>());
  });

  free(ptr);
}
