@TestOn('windows')
library;

import 'dart:ffi';

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';

void main() {
  group('Guid', () {
    test('generate', () {
      check(Guid.generate).returnsNormally();
    });

    test('setGUID', () {
      final guid = loggingCalloc<GUID>();
      try {
        // Note the rogue 'X' here.
        check(
          () => guid.ref.setGUID('{X161CA9B-9409-4A77-7327-8B8D3363C6B9}'),
        ).throws<AssertionError>();
      } finally {
        free(guid);
      }
    });

    test('handles largest value correctly', () {
      final guid = Guid('{FFFFFFFF-FFFF-FFFF-FFFF-FFFFFFFFFFFF}');
      final bytes = guid.ptr.cast<Uint8>().asTypedList(16);
      check(bytes).deepEquals([
        0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, //
        0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
      ]);
    });

    test('invalid hex string', () {
      check(
        () => Guid('{123G4567-G89B-12D3-A456-426655440000}'),
      ).throws<AssertionError>();
    });

    test('invalid length string', () {
      check(
        () => Guid('{123E4567-G89B-12D3-426655440000}'),
      ).throws<AssertionError>();
    });

    test('create GUID from string', () {
      final guid = Guid('{123E4567-E89B-12D3-A456-426655440000}');
      check(guid.toString()).equals('{123e4567-e89b-12d3-a456-426655440000}');
    });

    test('is ordered correctly', () {
      final guid = Guid('{00112233-4455-6677-8899-AABBCCDDEEFF}');
      final bytes = guid.ptr.cast<Uint8>().asTypedList(16);
      check(bytes).deepEquals([
        0x33, 0x22, 0x11, 0x00, 0x55, 0x44, 0x77, 0x66, // Reversed ordering.
        0x88, 0x99, 0xAA, 0xBB, 0xCC, 0xDD, 0xEE, 0xFF,
      ]);
    });

    test('check representation of native GUID versus Win32 API', () {
      const guidString = '{6EC9E41B-6709-5647-9918-A1270110FC4E}';
      final lpsz = w(guidString);
      final iid = IIDFromString(lpsz.ptr);
      final guid = Guid(guidString);

      // Check string representation matches.
      check(guidString.toLowerCase())
        ..equals(guid.toString())
        ..equals(iid.ref.toString());

      // Check binary representation matches.
      check(
        iid.cast<Uint8>().asTypedList(16),
      ).deepEquals(guid.ptr.cast<Uint8>().asTypedList(16));

      free(iid);
    });

    test('roundtrip String conversion correctly', () {
      const guidString = '{5552a738-29dd-4fbe-b1b8-e869eeb94601}';
      final guid = Guid(guidString);
      check(guid.toString()).equals(guidString);
    });
  });
}
