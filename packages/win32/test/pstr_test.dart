@TestOn('windows')
library;

import 'dart:ffi';

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';

import 'helpers.dart';

// Run these tests a large number of times to try and identify memory leaks or
// buffer overruns.
const testRuns = 100;

void main() {
  group('Pstr', () {
    test('handles empty string', () {
      for (var i = 0; i < testRuns; i++) {
        final pstr = Pstr('');
        check(pstr.isEmpty).isTrue();
        check(pstr.toDartString()).isEmpty();
        verifyPSTRStructure(pstr, '');
      }
    });

    test('handles short string', () {
      for (var i = 0; i < testRuns; i++) {
        const string = 'Dart win32';
        final pstr = Pstr(string);
        check(pstr.isEmpty).isFalse();
        check(pstr.byteLength).equals(string.length);
        check(pstr.toDartString()).equals(string);
        verifyPSTRStructure(pstr, string);
      }
    });

    test('handles large string', () {
      final string = 'A very long string.' * 100_000; // 2MB.
      final pstr = Pstr(string);
      check(pstr.isEmpty).isFalse();
      check(pstr.byteLength).equals(string.length);
      check(pstr.toDartString()).equals(string);
      verifyPSTRStructure(pstr, string);
    });

    test('supports embedded NUL characters', () {
      for (var i = 0; i < testRuns; i++) {
        const string = 'Dart\x00win32';
        final pstr = Pstr(string);
        check(pstr.byteLength).equals(4);
        check(pstr.toDartString()).equals('Dart');
        check(pstr.toDartString(length: string.length)).equals(string);
      }
    });

    test('allocates buffer with specified length', () {
      for (var i = 0; i < testRuns; i++) {
        final pwstr = Pstr.allocate(10);
        check(pwstr.isEmpty).isTrue();
        check(pwstr.byteLength).isZero();
        verifyPSTRStructure(pwstr, '');
      }
    });

    test('clones PSTR', () {
      for (var i = 0; i < testRuns; i++) {
        const string = 'Dart win32';
        final original = Pstr(string);
        final clone = original.clone();
        check(clone.toDartString()).equals(string);
        check(original.ptr.address).not((it) => it.equals(clone.ptr.address));
        verifyPSTRStructure(clone, string);
      }
    });

    test('concatenates PSTRs', () {
      for (var i = 0; i < testRuns; i++) {
        var combined = Pstr('');
        for (var i = 0; i < 10; i++) {
          final part = Pstr('Dart$i');
          combined = combined + part;
        }
        check(
          combined.toDartString(),
        ).equals('Dart0Dart1Dart2Dart3Dart4Dart5Dart6Dart7Dart8Dart9');
        verifyPSTRStructure(
          combined,
          'Dart0Dart1Dart2Dart3Dart4Dart5Dart6Dart7Dart8Dart9',
        );
      }
    });

    test('throws ArgumentError for null pointer', () {
      check(() => Pstr.fromPointer(nullptr)).throws<ArgumentError>();
    });
  });
}

/// Helper function to verify the internal structure of a PSTR.
void verifyPSTRStructure(Pstr pstr, String expectedString) {
  final expectedLength = expectedString.length;

  // Verify the length matches.
  check(pstr.length).equals(expectedLength);

  // Verify null terminator at the correct position.
  final pNull = Pointer<BYTE>.fromAddress(pstr.ptr.address + expectedLength);
  check(pNull.value).isZero();
}
