@TestOn('windows')
library;

import 'dart:ffi';
import 'dart:typed_data';

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';

void main() {
  group('PropertyKey', () {
    test('creates instance from GUID and property ID', () {
      final guid = Guid.generate();
      const pid = 42;
      final propertyKey = PropertyKey(guid.ref, pid);
      check(propertyKey.fmtid.toString()).equals(guid.ref.toString());
      check(propertyKey.pid).equals(pid);
      check(propertyKey.toString()).equals('PropertyKey($guid, $pid)');
    });

    test('creates instance from components', () {
      const data1 = 0x12345678;
      const data2 = 0x1234;
      const data3 = 0x5678;
      final data4 = Uint8List.fromList(const [
        0x90,
        0xAB,
        0xCD,
        0xEF,
        0x01,
        0x23,
        0x45,
        0x67,
      ]);
      const pid = 99;
      final propertyKey = PropertyKey.fromComponents(
        data1,
        data2,
        data3,
        data4,
        pid,
      );
      final expectedGuid = Guid.fromComponents(data1, data2, data3, data4);
      check(propertyKey.fmtid.toString()).equals(expectedGuid.ref.toString());
      check(propertyKey.pid).equals(pid);
      check(propertyKey.toString()).equals('PropertyKey($expectedGuid, $pid)');
    });

    test('throws ArgumentError for invalid data4 length', () {
      const data1 = 0x12345678;
      const data2 = 0x1234;
      const data3 = 0x5678;
      final tooShort = Uint8List.fromList(const [
        0x90,
        0xAB,
        0xCD,
        0xEF,
        0x01,
        0x23,
        0x45,
      ]);
      final tooLong = Uint8List.fromList(const [
        0x90,
        0xAB,
        0xCD,
        0xEF,
        0x01,
        0x23,
        0x45,
        0x67,
        0x89,
      ]);
      const pid = 99;
      check(
        () => PropertyKey.fromComponents(data1, data2, data3, tooShort, pid),
      ).throws<ArgumentError>();
      check(
        () => PropertyKey.fromComponents(data1, data2, data3, tooLong, pid),
      ).throws<ArgumentError>();
    });

    test('creates instance from pointer', () {
      final propertyKeyPointer = loggingCalloc<PROPERTYKEY>();
      final guid = Guid.generate();
      propertyKeyPointer.ref
        ..fmtid = guid.ref
        ..pid = 77;
      final propertyKey = PropertyKey.fromPointer(propertyKeyPointer);
      check(propertyKey.fmtid.toString()).equals(guid.ref.toString());
      check(propertyKey.pid).equals(77);
    });

    test('throws ArgumentError for null pointer', () {
      check(() => PropertyKey.fromPointer(nullptr)).throws<ArgumentError>();
    });
  });
}
