import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';

void main() {
  group('IntToHexConversion extension', () {
    test('throws ArgumentError for invalid width values', () {
      check(() => 1.toHexString(-32)).throws<ArgumentError>();
      check(() => 1.toHexString(0)).throws<ArgumentError>();
      check(() => 1.toHexString(7))
          .throws<ArgumentError>()
          .has((e) => e.message, 'message')
          .equals('Must be positive and divisible by 8');
    });

    test('converts zero to hex string with various widths', () {
      check(0.toHexString(8)).equals('0x0');
      check(0.toHexString(16)).equals('0x0');
      check(0.toHexString()).equals('0x0');
      check(0.toHexString(64)).equals('0x0');
    });

    test('converts positive numbers to hex string', () {
      check(1.toHexString()).equals('0x1');
      check(16.toHexString()).equals('0x10');
      check(127.toHexString()).equals('0x7F');
      check(128.toHexString()).equals('0x80');
      check(255.toHexString()).equals('0xFF');
      check(256.toHexString()).equals('0x100');
      check(1024.toHexString()).equals('0x400');
      check(32768.toHexString()).equals('0x8000');
      check(2147483647.toHexString()).equals('0x7FFFFFFF');
      check(4294967295.toHexString()).equals('0xFFFFFFFF');
      check(4294967296.toHexString()).equals('0x100000000');
      check(9223372036854775807.toHexString()).equals('0x7FFFFFFFFFFFFFFF');
    });

    group('converts negative numbers to hex string', () {
      test('with default width', () {
        check((-1).toHexString()).equals('0xFFFFFFFF');
        check((-16).toHexString()).equals('0xFFFFFFF0');
        check((-127).toHexString()).equals('0xFFFFFF81');
        check((-128).toHexString()).equals('0xFFFFFF80');
        check((-255).toHexString()).equals('0xFFFFFF01');
        check((-256).toHexString()).equals('0xFFFFFF00');
        check((-1024).toHexString()).equals('0xFFFFFC00');
        check((-32768).toHexString()).equals('0xFFFF8000');
        check((-2147483648).toHexString()).equals('0x80000000');
      });

      test('with extended width (64 bits)', () {
        check((-1).toHexString(64)).equals('0xFFFFFFFFFFFFFFFF');
        check((-255).toHexString(64)).equals('0xFFFFFFFFFFFFFF01');
        check((-2147483648).toHexString(64)).equals('0xFFFFFFFF80000000');
        check(
          (-9223372036854775808).toHexString(64),
        ).equals('0x8000000000000000');
      });

      test('with smaller widths', () {
        check((-1).toHexString(8)).equals('0xFF');
        check((-255).toHexString(16)).equals('0xFF01');
        check((-32768).toHexString(16)).equals('0x8000');
      });

      test('with various widths', () {
        check((-1).toHexString(8)).equals('0xFF');
        check((-1).toHexString(16)).equals('0xFFFF');
        check((-1).toHexString()).equals('0xFFFFFFFF');
        check((-1).toHexString(64)).equals('0xFFFFFFFFFFFFFFFF');
        check((-255).toHexString(16)).equals('0xFF01');
        check((-255).toHexString()).equals('0xFFFFFF01');
        check((-255).toHexString(64)).equals('0xFFFFFFFFFFFFFF01');
      });

      test('boundary values', () {
        check((-128).toHexString(8)).equals('0x80');
        check((-32768).toHexString(16)).equals('0x8000');
        check((-2147483648).toHexString()).equals('0x80000000');
        check(
          (-9223372036854775808).toHexString(64),
        ).equals('0x8000000000000000');
      });
    });
  });
}
