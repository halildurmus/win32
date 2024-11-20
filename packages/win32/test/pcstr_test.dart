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
  group('Pcstr', () {
    test('handles empty string', () {
      for (var i = 0; i < testRuns; i++) {
        final pcstr = Pcstr('');
        check(pcstr.isEmpty).isTrue();
        check(pcstr.toDartString()).isEmpty();
        verifyPCSTRStructure(pcstr, '');
      }
    });

    test('handles short string', () {
      for (var i = 0; i < testRuns; i++) {
        const string = 'Dart win32';
        final pcstr = Pcstr(string);
        check(pcstr.isEmpty).isFalse();
        check(pcstr.byteLength).equals(string.length);
        check(pcstr.toDartString()).equals(string);
        verifyPCSTRStructure(pcstr, string);
      }
    });

    test('handles large string', () {
      final string = 'A very long string.' * 100_000; // 2MB.
      final pcstr = Pcstr(string);
      check(pcstr.isEmpty).isFalse();
      check(pcstr.byteLength).equals(string.length);
      check(pcstr.toDartString()).equals(string);
      verifyPCSTRStructure(pcstr, string);
    });

    test('supports embedded NUL characters', () {
      for (var i = 0; i < testRuns; i++) {
        const string = 'Dart\x00win32';
        final pcstr = Pcstr(string);
        check(pcstr.byteLength).equals(4);
        check(pcstr.toDartString()).equals('Dart');
        check(pcstr.toDartString(length: string.length)).equals(string);
      }
    });

    test('clones PCSTR', () {
      for (var i = 0; i < testRuns; i++) {
        const string = 'Dart win32';
        final original = Pcstr(string);
        final clone = original.clone();
        check(clone.toDartString()).equals(string);
        check(original.ptr.address).not((it) => it.equals(clone.ptr.address));
        verifyPCSTRStructure(clone, string);
      }
    });

    test('concatenates PCSTRs', () {
      for (var i = 0; i < testRuns; i++) {
        var combined = Pcstr('');
        for (var i = 0; i < 10; i++) {
          final part = Pcstr('Dart$i');
          combined = combined + part;
        }
        check(
          combined.toDartString(),
        ).equals('Dart0Dart1Dart2Dart3Dart4Dart5Dart6Dart7Dart8Dart9');
        verifyPCSTRStructure(
          combined,
          'Dart0Dart1Dart2Dart3Dart4Dart5Dart6Dart7Dart8Dart9',
        );
      }
    });

    test('throws ArgumentError for null pointer', () {
      check(() => Pcstr.fromPointer(nullptr)).throws<ArgumentError>();
    });
  });
}

/// Helper function to verify the internal structure of a PCSTR.
void verifyPCSTRStructure(Pcstr pcstr, String expectedString) {
  final expectedLength = expectedString.length;

  // Verify the length matches.
  check(pcstr.length).equals(expectedLength);

  // Verify null terminator at the correct position.
  final pNull = Pointer<BYTE>.fromAddress(pcstr.ptr.address + expectedLength);
  check(pNull.value).isZero();
}
