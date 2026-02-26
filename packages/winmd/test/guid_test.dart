import 'dart:typed_data';

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

void main() {
  group('Guid', () {
    group('fromBytes', () {
      test('parses a valid 16-byte LE GUID', () {
        final bytes = Uint8List.fromList([
          0x40, 0xFC, 0x29, 0x6B, // data1: 0x6B29FC40
          0x47, 0xCA, // data2: 0xCA47
          0x67, 0x10, // data3: 0x1067
          0xB3, 0x1D, 0x00, 0xDD, 0x01, 0x06, 0x62, 0xDA, // data4
        ]);
        final guid = Guid.fromBytes(bytes);
        check(guid.toString()).equals('6b29fc40-ca47-1067-b31d-00dd010662da');
      });

      test('throws ArgumentError if byte array is too short', () {
        check(() => Guid.fromBytes(Uint8List(15))).throws<ArgumentError>();
      });

      test('throws ArgumentError if byte array is too long', () {
        check(() => Guid.fromBytes(Uint8List(17))).throws<ArgumentError>();
      });

      test('parses individual fields correctly', () {
        final bytes = Uint8List.fromList([
          0x12, 0x34, 0x56, 0x78, // data1: 0x78563412
          0x9A, 0xBC, // data2: 0xBC9A
          0xDE, 0xF0, // data3: 0xF0DE
          0x01, 0x23, 0x45, 0x67, 0x89, 0xAB, 0xCD, 0xEF, // data4
        ]);

        final guid = Guid.fromBytes(bytes);
        check(guid.data1).equals(0x78563412);
        check(guid.data2).equals(0xBC9A);
        check(guid.data3).equals(0xF0DE);
        check(
          guid.data4,
        ).deepEquals([0x01, 0x23, 0x45, 0x67, 0x89, 0xAB, 0xCD, 0xEF]);
      });

      test('returns an unmodifiable data4 list', () {
        final bytes = Uint8List.fromList(List.filled(16, 0));
        final guid = Guid.fromBytes(bytes);
        check(() => guid.data4[0] = 1).throws<UnsupportedError>();
      });
    });

    group('fromString', () {
      test('parses a valid Guid string correctly', () {
        const input = '00112233-4455-6677-8899-aabbccddeeff';
        final guid = Guid.fromString(input);
        check(guid.data1).equals(0x00112233);
        check(guid.data2).equals(0x4455);
        check(guid.data3).equals(0x6677);
        check(guid.data4).deepEquals(
          Uint8List.fromList([
            0x88, 0x99, 0xaa, 0xbb, 0xcc, 0xdd, 0xee, 0xff, //
          ]),
        );
      });

      test('supports roundtrip from string to string', () {
        const input = 'deadbeef-dead-beef-cafe-000102030405';
        final guid = Guid.fromString(input);
        check(guid.toString()).equals(input);
      });

      test('handles largest value correctly', () {
        final guid = Guid.fromString('ffffffff-ffff-ffff-ffff-ffffffffffff');
        check(guid.data1).equals(0xffffffff);
        check(guid.data2).equals(0xffff);
        check(guid.data3).equals(0xffff);
        check(guid.data4).deepEquals(
          Uint8List.fromList([
            0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, //
          ]),
        );
        check(guid.toString()).equals('ffffffff-ffff-ffff-ffff-ffffffffffff');
      });

      test('throws on invalid characters', () {
        check(
          // Note the rogue 'x' here.
          () => Guid.fromString('x161ca9b-9409-4a77-7327-8b8d3363c6b9'),
        ).throws<AssertionError>();
      });

      test('asserts on invalid hex string', () {
        check(
          () => Guid.fromString('123g4567-g89b-12d3-a456-426655440000'),
        ).throws<AssertionError>();
      });

      test('asserts on invalid length string', () {
        check(
          () => Guid.fromString('123e4567-g89b-12d3-426655440000'),
        ).throws<AssertionError>();
      });
    });

    test('zero Guid is all-zero bytes', () {
      final guid = Guid.zero();
      check(guid.isZero).isTrue();
      check(guid.data1).equals(0);
      check(guid.data2).equals(0);
      check(guid.data3).equals(0);
      check(guid.data4).deepEquals(Uint8List(8));
      check(guid.toString()).equals('00000000-0000-0000-0000-000000000000');
    });

    test('two Guids with the same values are equal', () {
      const input = '89abcdef-1234-5678-9abc-def012345678';
      final guid1 = Guid.fromString(input);
      final guid2 = Guid.fromString(input);
      final guid3 = Guid(guid1.data1, guid1.data2, guid1.data3, guid1.data4);
      final guid4 = Guid.zero();
      check(guid1).equals(guid2);
      check(guid1).equals(guid3);
      check(guid1).not((it) => it.equals(guid4));
    });

    test('toString', () {
      final guid = Guid(
        0x00112233,
        0x4455,
        0x6677,
        Uint8List.fromList([
          0x88, 0x99, 0xaa, 0xbb, 0xcc, 0xdd, 0xee, 0xff, //
        ]),
      );
      check(guid.isZero).isFalse();
      check(guid.toString()).equals('00112233-4455-6677-8899-aabbccddeeff');
    });
  });
}
