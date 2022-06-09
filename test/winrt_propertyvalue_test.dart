@TestOn('windows')

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:test/test.dart';
import 'package:win32/win32.dart';

// Test the WinRT phone number formatter object to make sure overrides,
// properties and methods are working correctly.

void main() {
  if (isWindowsRuntimeAvailable()) {
    setUp(winrtInitialize);

    test('UInt8', () {
      final pv = IPropertyValue.from(PropertyValue.CreateUInt8(30));
      expect(pv.GetUInt8(), equals(30));
    });

    test('UInt8Array', () {
      final array = calloc<Uint8>(5);
      for (var idx = 0; idx < 5; idx++) {
        array[idx] = (10 * idx) + 10;
      }
      final pv = IPropertyValue.from(PropertyValue.CreateUInt8Array(5, array));
      final arraySize = calloc<Uint32>();
      final newArray = calloc<Uint8>(5);

      pv.GetUInt8Array(arraySize, newArray);
      expect(arraySize.value, equals(5));
      expect(newArray[0], equals(10));
      expect(newArray[1], equals(20));
      expect(newArray[2], equals(30));
      expect(newArray[3], equals(40));
      expect(newArray[4], equals(50));
    });

    test('UInt16', () {
      final pv = IPropertyValue.from(PropertyValue.CreateUInt16(65534));
      expect(pv.GetUInt16(), equals(65534));
    });

    test('UInt16Array', () {
      final array = calloc<Uint16>(5);
      for (var idx = 0; idx < 5; idx++) {
        array[idx] = (100 * idx) + 100;
      }
      final pv = IPropertyValue.from(PropertyValue.CreateUInt16Array(5, array));
      final arraySize = calloc<Uint32>();
      final newArray = calloc<Uint16>(5);

      pv.GetUInt16Array(arraySize, newArray);
      expect(arraySize.value, equals(5));
      expect(newArray[0], equals(100));
      expect(newArray[1], equals(200));
      expect(newArray[2], equals(300));
      expect(newArray[3], equals(400));
      expect(newArray[4], equals(500));
    });

    tearDown(winrtUninitialize);
  }
}
