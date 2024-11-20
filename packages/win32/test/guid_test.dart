@TestOn('windows')
library;

import 'dart:ffi';

import 'package:checks/checks.dart';
import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';

void main() {
  setUpAll(LeakTracker.enableInDebug);

  setUp(LeakTracker.reset);

  tearDown(LeakTracker.verifyNoLeaksInDebug);

  group('GUID', () {
    test('setGUID', () {
      final guid = Struct.create<GUID>();
      // Note the rogue 'X' here.
      check(
        () => guid.setGUID('{X161CA9B-9409-4A77-7327-8B8D3363C6B9}'),
      ).throws<AssertionError>();
    });

    test('handles largest value correctly', () {
      using((arena) {
        final guid = GUID(
          '{FFFFFFFF-FFFF-FFFF-FFFF-FFFFFFFFFFFF}',
        ).toNative(allocator: arena);
        final bytes = guid.cast<Uint8>().asTypedList(16);
        check(bytes).deepEquals([
          0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, //
          0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
        ]);
      });
    });

    test('invalid hex string', () {
      check(
        () => GUID('{123G4567-G89B-12D3-A456-426655440000}'),
      ).throws<AssertionError>();
    });

    test('invalid length string', () {
      check(
        () => GUID('{123E4567-G89B-12D3-426655440000}'),
      ).throws<AssertionError>();
    });

    test('create GUID from string', () {
      final guid = GUID('{123E4567-E89B-12D3-A456-426655440000}');
      check(guid.toString()).equals('{123e4567-e89b-12d3-a456-426655440000}');
    });

    test('is ordered correctly', () {
      using((arena) {
        final guid = GUID(
          '{00112233-4455-6677-8899-AABBCCDDEEFF}',
        ).toNative(allocator: arena);
        final bytes = guid.cast<Uint8>().asTypedList(16);
        check(bytes).deepEquals([
          0x33, 0x22, 0x11, 0x00, 0x55, 0x44, 0x77, 0x66, // Reversed ordering.
          0x88, 0x99, 0xAA, 0xBB, 0xCC, 0xDD, 0xEE, 0xFF,
        ]);
      });
    });

    test('check representation of native GUID versus Win32 API', () {
      using((arena) {
        const guidString = '{6EC9E41B-6709-5647-9918-A1270110FC4E}';
        final lpsz = arena.pcwstr(guidString);
        final iid = arena.using(IIDFromString(lpsz), free);
        final guid = GUID(guidString).toNative(allocator: arena);

        // Check string representation matches.
        check(guidString.toLowerCase())
          ..equals(guid.ref.toString())
          ..equals(iid.ref.toString());

        // Check binary representation matches.
        check(
          iid.cast<Uint8>().asTypedList(16),
        ).deepEquals(guid.cast<Uint8>().asTypedList(16));
      });
    });

    test('roundtrip String conversion correctly', () {
      const guidString = '{5552a738-29dd-4fbe-b1b8-e869eeb94601}';
      final guid = GUID(guidString);
      check(guid.toString()).equals(guidString);
    });
  });
}
