@TestOn('windows')

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:test/test.dart';
import 'package:win32/win32.dart';

void main() {
  test('Allocate Bluetooth PIN', () {
    final pin = calloc<BLUETOOTH_PIN_INFO>();
    pin.ref.pin = Uint8List.fromList([1, 2, 5, 0]);
    pin.ref.pinLength = 4;
    expect(pin.ref.pin.sublist(0, 4), equals(Uint8List.fromList([1, 2, 5, 0])));
    expect(pin.ref.pinLength, equals(4));
  });

  test('Overallocate Bluetooth PIN', () {
    final pin = calloc<BLUETOOTH_PIN_INFO>();
    pin.ref.pin = Uint8List.fromList([
      1, 2, 3, 4, 1, 2, 3, 4, 1, 2, 3, 4, 1, 2, 3, 4, //
      1, 2, 3, 4, 1, 2, 3, 4, 1, 2, 3, 4, 1, 2, 3, 4
    ]);
    expect(
        pin.ref.pin,
        equals(Uint8List.fromList(
            [1, 2, 3, 4, 1, 2, 3, 4, 1, 2, 3, 4, 1, 2, 3, 4])));
  });
}
