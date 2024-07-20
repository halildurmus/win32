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

  final mmnotificationclient = IMMNotificationClient(ptr);
  test('Can instantiate IMMNotificationClient.onDeviceStateChanged', () {
    expect(mmnotificationclient.onDeviceStateChanged, isA<Function>());
  });
  test('Can instantiate IMMNotificationClient.onDeviceAdded', () {
    expect(mmnotificationclient.onDeviceAdded, isA<Function>());
  });
  test('Can instantiate IMMNotificationClient.onDeviceRemoved', () {
    expect(mmnotificationclient.onDeviceRemoved, isA<Function>());
  });
  test('Can instantiate IMMNotificationClient.onDefaultDeviceChanged', () {
    expect(mmnotificationclient.onDefaultDeviceChanged, isA<Function>());
  });
  test('Can instantiate IMMNotificationClient.onPropertyValueChanged', () {
    expect(mmnotificationclient.onPropertyValueChanged, isA<Function>());
  });

  free(ptr);
}
