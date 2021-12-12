@TestOn('windows')

import 'package:test/test.dart';
import 'package:winmd/winmd.dart';

void main() {
  group('UncompressedData', () {
    test('Fails on empty list', () {
      const emptyList = <int>[];
      expect(
          () => UncompressedData.fromBlob(emptyList),
          throwsA(predicate(
              (e) => e is WinmdException && e.message == 'Bad signature')));
    });

    test('Conversion test 1', () {
      const compressed = <int>[0x03];
      final uncompressed = UncompressedData.fromBlob(compressed);
      expect(uncompressed.data, equals(0x03));
      expect(uncompressed.dataLength, equals(1));
    });

    test('Conversion test 2', () {
      const compressed = <int>[0x7F];
      final uncompressed = UncompressedData.fromBlob(compressed);
      expect(uncompressed.data, equals(0x7F));
      expect(uncompressed.dataLength, equals(1));
    });

    test('Conversion test 3', () {
      const compressed = <int>[0x80, 0x80];
      final uncompressed = UncompressedData.fromBlob(compressed);
      expect(uncompressed.data, equals(0x80));
      expect(uncompressed.dataLength, equals(2));
    });

    test('Conversion test 4', () {
      const compressed = <int>[0xAE, 0x57];
      final uncompressed = UncompressedData.fromBlob(compressed);
      expect(uncompressed.data, equals(0x2E57));
      expect(uncompressed.dataLength, equals(2));
    });

    test('Conversion test 5', () {
      const compressed = <int>[0xBF, 0xFF];
      final uncompressed = UncompressedData.fromBlob(compressed);
      expect(uncompressed.data, equals(0x3FFF));
      expect(uncompressed.dataLength, equals(2));
    });

    test('Conversion test 6', () {
      const compressed = <int>[0xC0, 0x00, 0x40, 0x00];
      final uncompressed = UncompressedData.fromBlob(compressed);
      expect(uncompressed.data, equals(0x4000));
      expect(uncompressed.dataLength, equals(4));
    });

    test('Conversion test 7', () {
      const compressed = <int>[0xDF, 0xFF, 0xFF, 0xFF];
      final uncompressed = UncompressedData.fromBlob(compressed);
      expect(uncompressed.data, equals(0x1FFFFFFF));
      expect(uncompressed.dataLength, equals(4));
    });

    test('Conversion fail test 1', () {
      const compressed = <int>[0x9F];
      // Medium, should be two bytes long
      expect(() => UncompressedData.fromBlob(compressed),
          throwsA(isA<WinmdException>()));
    });

    test('Conversion fail test 2', () {
      const compressed = <int>[0xDF, 0x3F, 0x00];
      // Large, should be two bytes long
      expect(() => UncompressedData.fromBlob(compressed),
          throwsA(isA<WinmdException>()));
    });
  });
}
