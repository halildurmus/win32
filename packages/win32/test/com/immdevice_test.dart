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

  final mmdevice = IMMDevice(ptr);
  test('Can instantiate IMMDevice.activate', () {
    expect(mmdevice.activate, isA<Function>());
  });
  test('Can instantiate IMMDevice.openPropertyStore', () {
    expect(mmdevice.openPropertyStore, isA<Function>());
  });
  test('Can instantiate IMMDevice.getId', () {
    expect(mmdevice.getId, isA<Function>());
  });
  test('Can instantiate IMMDevice.getState', () {
    expect(mmdevice.getState, isA<Function>());
  });

  free(ptr);
}