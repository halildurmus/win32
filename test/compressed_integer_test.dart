import 'dart:typed_data';

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

void main() {
  group('CompressedInteger', () {
    group('decode', () {
      test('1-byte encoding (< 0x80)', () {
        final result = CompressedInteger.decode(Uint8List.fromList([0x7F]));
        check(result.value).equals(0x7F);
        check(result.bytesRead).equals(1);
      });

      test('2-byte encoding (< 0x4000)', () {
        final result = CompressedInteger.decode(
          Uint8List.fromList([0x80, 0x80]),
        );
        check(result.value).equals(0x80);
        check(result.bytesRead).equals(2);
      });

      test('4-byte encoding (<= 0x1FFFFFFF)', () {
        final result = CompressedInteger.decode(
          Uint8List.fromList([0xC0, 0x00, 0x40, 0x00]),
        );
        check(result.value).equals(0x4000);
        check(result.bytesRead).equals(4);
      });

      test('throws on invalid first byte', () {
        check(() => CompressedInteger.decode(Uint8List.fromList([0xF0])))
            .throws<WinmdException>()
            .has((e) => e.message, 'message')
            .equals('Invalid compressed integer encoding: 0xf0');
      });

      test('throws on truncated 2-byte sequence', () {
        check(() => CompressedInteger.decode(Uint8List.fromList([0x80])))
            .throws<WinmdException>()
            .has((e) => e.message, 'message')
            .equals('Truncated 2-byte compressed integer');
      });

      test('throws on truncated 4-byte sequence', () {
        check(
              () => CompressedInteger.decode(
                Uint8List.fromList([0xC0, 0x00, 0x00]),
              ),
            )
            .throws<WinmdException>()
            .has((e) => e.message, 'message')
            .equals('Truncated 4-byte compressed integer');
      });

      test('throws on offset out of bounds', () {
        check(() => CompressedInteger.decode(Uint8List(0), 1))
            .throws<WinmdException>()
            .has((e) => e.message, 'message')
            .equals('Offset out of bounds: 1');
      });
    });

    group('encode', () {
      test('1-byte encoding (< 0x80)', () {
        final encoded = CompressedInteger.encode(0x7F);
        check(encoded).deepEquals(Uint8List.fromList([0x7F]));
      });

      test('2-byte encoding (< 0x4000)', () {
        final encoded = CompressedInteger.encode(0x80);
        check(encoded).deepEquals(Uint8List.fromList([0x80, 0x80]));
      });

      test('4-byte encoding (<= 0x1FFFFFFF)', () {
        final encoded = CompressedInteger.encode(0x4000);
        check(encoded).deepEquals(Uint8List.fromList([0xC0, 0x00, 0x40, 0x00]));
      });

      test('throws on negative value', () {
        check(() => CompressedInteger.encode(-1))
            .throws<ArgumentError>()
            .has((e) => e.message, 'message')
            .equals('Must be non-negative');
      });

      test('throws on value exceeding 29-bit max', () {
        check(() => CompressedInteger.encode(0x20000000))
            .throws<ArgumentError>()
            .has((e) => e.message, 'message')
            .equals('Exceeds 29-bit limit (0x1FFFFFFF)');
      });
    });
  });
}
