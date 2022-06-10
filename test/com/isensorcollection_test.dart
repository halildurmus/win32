// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
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

  final sensorcollection = ISensorCollection(ptr);
  test('Can instantiate ISensorCollection.GetAt', () {
    expect(sensorcollection.GetAt, isA<Function>());
  });
  test('Can instantiate ISensorCollection.GetCount', () {
    expect(sensorcollection.GetCount, isA<Function>());
  });
  test('Can instantiate ISensorCollection.Add', () {
    expect(sensorcollection.Add, isA<Function>());
  });
  test('Can instantiate ISensorCollection.Remove', () {
    expect(sensorcollection.Remove, isA<Function>());
  });
  test('Can instantiate ISensorCollection.RemoveByID', () {
    expect(sensorcollection.RemoveByID, isA<Function>());
  });
  test('Can instantiate ISensorCollection.Clear', () {
    expect(sensorcollection.Clear, isA<Function>());
  });
  free(ptr);
}
