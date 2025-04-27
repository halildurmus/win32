import 'dart:typed_data';

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

void main() {
  group('Guid', () {
    test('converts Guid to string correctly', () {
      final guid = Guid(
        0x00112233,
        0x4455,
        0x6677,
        Uint8List.fromList([
          0x88, 0x99, 0xaa, 0xbb, 0xcc, 0xdd, 0xee, 0xff, //
        ]),
      );
      check(guid.toString()).equals('00112233-4455-6677-8899-aabbccddeeff');
    });

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

    test('zero Guid is all-zero bytes', () {
      final zero = Guid.zero();
      check(zero.data1).equals(0);
      check(zero.data2).equals(0);
      check(zero.data3).equals(0);
      check(zero.data4).deepEquals(Uint8List(8));
      check(zero.toString()).equals('00000000-0000-0000-0000-000000000000');
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
}
