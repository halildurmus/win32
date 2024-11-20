import 'dart:ffi';

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/src/extensions/_internal.dart';
import 'package:win32/win32.dart';

import '../helpers.dart';

void main() {
  group('Uint16Array extension', () {
    test('setString and toDartString work correctly', () {
      final struct = loggingCalloc<C>();
      final array = struct.ref.array..setString('Hello');
      check(array[0]).equals('H'.codeUnitAt(0));
      check(array[1]).equals('e'.codeUnitAt(0));
      check(array[2]).equals('l'.codeUnitAt(0));
      check(array[3]).equals('l'.codeUnitAt(0));
      check(array[4]).equals('o'.codeUnitAt(0));
      check(array[5]).isZero(); // NUL terminator.
      final result = array.toDartString();
      check(result).equals('Hello');
      free(struct);
    });

    test('setString truncates at null character', () {
      final struct = loggingCalloc<C>();
      final array = struct.ref.array..setString('Hi\x00There');
      check(array.toDartString()).equals('Hi');
      free(struct);
    });
  });

  group('IntBitField extension', () {
    test('getBits extracts correct value', () {
      const value = 0xB4; // Binary: 10110100
      check(value.getBits(2, 3)).equals(5); // 101
      check(value.getBits(4, 4)).equals(11); // 1011
      check(value.getBits(0, 8)).equals(0xB4); // Full value
    });

    test('setBits modifies value correctly', () {
      var result = 0xB4; // Binary: 10110100
      // Set bits 2-4 (3 bits) to 3 (Binary: 011).
      result = result.setBits(2, 3, 3);
      check(result).equals(0xAC); // Binary: 10101100 -> Decimal: 172

      // Set bits 0-3 (4 bits) to 15 (Binary: 1111).
      result = result.setBits(0, 4, 15);
      check(result).equals(0xAF); // Binary: 10101111 -> Decimal: 175
    });
  });
}

final class C extends Struct {
  @Array(10)
  external Array<Uint16> array;
}
