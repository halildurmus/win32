@TestOn('windows')

import 'dart:ffi';

import 'package:test/test.dart';
import 'package:win32/src/winrt/internal/int_array.dart';
import 'package:win32/win32.dart';

void main() {
  test('Invalid hex string', () {
    expect(() => GUIDFromString('{123G4567-G89B-12D3-A456-426655440000}'),
        throwsFormatException);
  });

  test('Invalid length string', () {
    expect(() => GUIDFromString('{123E4567-G89B-12D3-426655440000}'),
        throwsFormatException);
  });

  test('Create GUID from string', () {
    final guid = GUIDFromString('{123E4567-E89B-12D3-A456-426655440000}');
    expect(
        guid.ref.toString(), equals('{123e4567-e89b-12d3-a456-426655440000}'));
    free(guid);
  });

  test('GUID is ordered correctly', () {
    final guid = GUIDFromString('{00112233-4455-6677-8899-AABBCCDDEEFF}');
    final bytes = guid.cast<Uint8>().toList(length: 16);
    expect(
        bytes,
        equals([
          0x33, 0x22, 0x11, 0x00, 0x55, 0x44, 0x77, 0x66, // Reversed ordering
          0x88, 0x99, 0xAA, 0xBB, 0xCC, 0xDD, 0xEE, 0xFF
        ]));
  });

  test('Guid is ordered correctly', () {
    final guid = Guid.fromString('{00112233-4455-6677-8899-AABBCCDDEEFF}');
    final pGUID = guid.toNativeGUID();
    final bytes = pGUID.cast<Uint8>().toList(length: 16);
    expect(
        bytes,
        equals([
          0x33, 0x22, 0x11, 0x00, 0x55, 0x44, 0x77, 0x66, // Reversed ordering
          0x88, 0x99, 0xAA, 0xBB, 0xCC, 0xDD, 0xEE, 0xFF
        ]));
    free(pGUID);
  });

  test('Dart Guid handles largest value correctly', () {
    final guid = Guid.fromString('{FFFFFFFF-FFFF-FFFF-FFFF-FFFFFFFFFFFF}');
    final pGUID = guid.toNativeGUID();
    final bytes = pGUID.cast<Uint8>().toList(length: 16);
    expect(
        bytes,
        equals([
          0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, //
          0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
        ]));
    free(pGUID);
  });

  test('Dart Guid handles largest value correctly 2', () {
    final pGUID = GUIDFromString('{FFFFFFFF-FFFF-FFFF-FFFF-FFFFFFFFFFFF}');
    final guid = pGUID.toDartGuid();

    expect(guid.toString(), equals('{ffffffff-ffff-ffff-ffff-ffffffffffff}'));

    free(pGUID);
  });

  test('Native GUID handles largest value correctly', () {
    final pGUID = GUIDFromString('{FFFFFFFF-FFFF-FFFF-FFFF-FFFFFFFFFFFF}');
    final bytes = pGUID.cast<Uint8>().toList(length: 16);
    expect(
        bytes,
        equals([
          0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, //
          0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
        ]));
    free(pGUID);
  });

  test('Roundtrip String conversion correctly', () {
    const guidString = '{537320b6-2f84-4347-89ff-22bc4f803d29}';

    final dartGuid = Guid.fromString(guidString);
    expect(dartGuid.toString(), equals(guidString));

    final nativeGUID = dartGuid.toNativeGUID();
    expect(nativeGUID.ref.toString(), equals(guidString));

    free(nativeGUID);
  });

  test('Roundtrip String conversion correctly 2', () {
    const guidString = '{5552a738-29dd-4fbe-b1b8-e869eeb94601}';

    final nativeGUID = GUIDFromString(guidString);
    expect(nativeGUID.ref.toString(), equals(guidString));

    final dartGuid = nativeGUID.toDartGuid();
    expect(dartGuid.toString(), equals(guidString));

    free(nativeGUID);
  });

  test('Nil Guid is created correctly', () {
    final nil = Guid.zero();

    expect(nil.toString(), equals('{00000000-0000-0000-0000-000000000000}'));
  });
}
