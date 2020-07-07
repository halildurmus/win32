@TestOn('windows')

import 'package:test/test.dart';

import 'package:win32/win32.dart';

void main() {
  test('Allocate Bluetooth PIN', () {
    final pin = BLUETOOTH_PIN_INFO.allocate();
    pin.pin = '1250';
    pin.pinLength = 4;
    expect(pin.pin, equals('1250'));
    expect(pin.pinLength, equals(4));
  });

  test('Overallocate Bluetooth PIN', () {
    final pin = BLUETOOTH_PIN_INFO.allocate();
    pin.pin = '1234123412341234123412341234';
    pin.pinLength = 8;
    expect(pin.pin, equals('12341234'));
  });

  test('Overallocate Bluetooth PIN', () {
    final pin = BLUETOOTH_PIN_INFO.allocate();
    pin.pinLength = 4;
    pin.pin = '1234123412341234123412341234';
    expect(pin.pin, equals('1234'));
  });

  test('Overset Bluetooth PIN length', () {
    final pin = BLUETOOTH_PIN_INFO.allocate();
    pin.pinLength = 18;
    pin.pin = '1234123412341234123412341234';
    expect(pin.pin, equals('1234123412341234'));
  });

  test('Underallocate Bluetooth PIN', () {
    final pin = BLUETOOTH_PIN_INFO.allocate();
    pin.pinLength = 8;
    pin.pin = '1234';
    expect(pin.pin, equals('1234\x00\x00\x00\x00'));
  });

  test('Null pin', () {
    final pin = BLUETOOTH_PIN_INFO.allocate();
    pin.pinLength = 0;
    pin.pin = '1234123412341234123412341234';
    expect(pin.pin, equals(''));
  });

  test('Forgot to initialize PIN', () {
    final pin = BLUETOOTH_PIN_INFO.allocate();
    pin.pinLength = 4;
    expect(pin.pin, equals('\x00\x00\x00\x00'));
  });
}
