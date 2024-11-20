@TestOn('windows')
library;

import 'dart:ffi';
import 'dart:typed_data';

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';

void main() {
  group('SidIdentifierAuthority', () {
    test('creates instance from valid Uint8List', () {
      final values = Uint8List.fromList(const [0, 1, 2, 3, 4, 5]);
      final sidAuth = SidIdentifierAuthority(values);
      check(sidAuth.value[0]).equals(0);
      check(sidAuth.value[1]).equals(1);
      check(sidAuth.value[2]).equals(2);
      check(sidAuth.value[3]).equals(3);
      check(sidAuth.value[4]).equals(4);
      check(sidAuth.value[5]).equals(5);
      check(
        sidAuth.toString(),
      ).equals('SidIdentifierAuthority([0, 1, 2, 3, 4, 5])');
    });

    test('throws ArgumentError for invalid Uint8List length', () {
      final tooShort = Uint8List.fromList(const [1, 2, 3, 4, 5]);
      final tooLong = Uint8List.fromList(const [0, 1, 2, 3, 4, 5, 6]);
      check(() => SidIdentifierAuthority(tooShort)).throws<ArgumentError>();
      check(() => SidIdentifierAuthority(tooLong)).throws<ArgumentError>();
    });

    test('creates instance from pointer', () {
      final sidAuthPointer = loggingCalloc<SID_IDENTIFIER_AUTHORITY>();
      sidAuthPointer.ref.Value
        ..[0] = 10
        ..[1] = 20
        ..[2] = 30
        ..[3] = 40
        ..[4] = 50
        ..[5] = 60;
      final sidAuth = SidIdentifierAuthority.fromPointer(sidAuthPointer);
      check(sidAuth.value[0]).equals(10);
      check(sidAuth.value[1]).equals(20);
      check(sidAuth.value[2]).equals(30);
      check(sidAuth.value[3]).equals(40);
      check(sidAuth.value[4]).equals(50);
      check(sidAuth.value[5]).equals(60);
    });

    test('throws ArgumentError for null pointer', () {
      check(
        () => SidIdentifierAuthority.fromPointer(nullptr),
      ).throws<ArgumentError>();
    });
  });
}
