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

  final sensor = ISensor(ptr);
  test('Can instantiate ISensor.GetID', () {
    expect(sensor.GetID, isA<Function>());
  });
  test('Can instantiate ISensor.GetCategory', () {
    expect(sensor.GetCategory, isA<Function>());
  });
  test('Can instantiate ISensor.GetType', () {
    expect(sensor.GetType, isA<Function>());
  });
  test('Can instantiate ISensor.GetFriendlyName', () {
    expect(sensor.GetFriendlyName, isA<Function>());
  });
  test('Can instantiate ISensor.GetProperty', () {
    expect(sensor.GetProperty, isA<Function>());
  });
  test('Can instantiate ISensor.GetProperties', () {
    expect(sensor.GetProperties, isA<Function>());
  });
  test('Can instantiate ISensor.GetSupportedDataFields', () {
    expect(sensor.GetSupportedDataFields, isA<Function>());
  });
  test('Can instantiate ISensor.SetProperties', () {
    expect(sensor.SetProperties, isA<Function>());
  });
  test('Can instantiate ISensor.SupportsDataField', () {
    expect(sensor.SupportsDataField, isA<Function>());
  });
  test('Can instantiate ISensor.GetState', () {
    expect(sensor.GetState, isA<Function>());
  });
  test('Can instantiate ISensor.GetData', () {
    expect(sensor.GetData, isA<Function>());
  });
  test('Can instantiate ISensor.SupportsEvent', () {
    expect(sensor.SupportsEvent, isA<Function>());
  });
  test('Can instantiate ISensor.GetEventInterest', () {
    expect(sensor.GetEventInterest, isA<Function>());
  });
  test('Can instantiate ISensor.SetEventInterest', () {
    expect(sensor.SetEventInterest, isA<Function>());
  });
  test('Can instantiate ISensor.SetEventSink', () {
    expect(sensor.SetEventSink, isA<Function>());
  });
  free(ptr);
}
