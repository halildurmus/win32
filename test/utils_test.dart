@TestOn('windows')

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

void main() {
  group('UncompressedData', () {
    test('Fails on empty list', () {
      const emptyList = <int>[];
      check(() => UncompressedData.fromBlob(emptyList))
          .throws<WinmdException>()
          .has((e) => e.message, 'message')
          .equals('Bad signature');
    });

    test('Conversion test 1', () {
      const compressed = <int>[0x03];
      final uncompressed = UncompressedData.fromBlob(compressed);
      check(uncompressed.data).equals(0x03);
      check(uncompressed.dataLength).equals(1);
    });

    test('Conversion test 2', () {
      const compressed = <int>[0x7F];
      final uncompressed = UncompressedData.fromBlob(compressed);
      check(uncompressed.data).equals(0x7F);
      check(uncompressed.dataLength).equals(1);
    });

    test('Conversion test 3', () {
      const compressed = <int>[0x80, 0x80];
      final uncompressed = UncompressedData.fromBlob(compressed);
      check(uncompressed.data).equals(0x80);
      check(uncompressed.dataLength).equals(2);
    });

    test('Conversion test 4', () {
      const compressed = <int>[0xAE, 0x57];
      final uncompressed = UncompressedData.fromBlob(compressed);
      check(uncompressed.data).equals(0x2E57);
      check(uncompressed.dataLength).equals(2);
    });

    test('Conversion test 5', () {
      const compressed = <int>[0xBF, 0xFF];
      final uncompressed = UncompressedData.fromBlob(compressed);
      check(uncompressed.data).equals(0x3FFF);
      check(uncompressed.dataLength).equals(2);
    });

    test('Conversion test 6', () {
      const compressed = <int>[0xC0, 0x00, 0x40, 0x00];
      final uncompressed = UncompressedData.fromBlob(compressed);
      check(uncompressed.data).equals(0x4000);
      check(uncompressed.dataLength).equals(4);
    });

    test('Conversion test 7', () {
      const compressed = <int>[0xDF, 0xFF, 0xFF, 0xFF];
      final uncompressed = UncompressedData.fromBlob(compressed);
      check(uncompressed.data).equals(0x1FFFFFFF);
      check(uncompressed.dataLength).equals(4);
    });

    test('Conversion fail test 1', () {
      const compressed = <int>[0x9F];
      // Medium, should be two bytes long
      check(() => UncompressedData.fromBlob(compressed))
          .throws<WinmdException>();
    });

    test('Conversion fail test 2', () {
      const compressed = <int>[0xDF, 0x3F, 0x00];
      // Large, should be four bytes long
      check(() => UncompressedData.fromBlob(compressed))
          .throws<WinmdException>();
    });

    test('Conversion fail test 3', () {
      const compressed = <int>[0xF3];
      // Invalid (should be 110? ????)
      check(() => UncompressedData.fromBlob(compressed))
          .throws<WinmdException>();
    });
  });
}
