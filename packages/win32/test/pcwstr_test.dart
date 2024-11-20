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
  group('Pcwstr', () {
    test('handles empty string', () {
      for (var i = 0; i < testRuns; i++) {
        final pcwstr = Pcwstr('');
        check(pcwstr.isEmpty).isTrue();
        check(pcwstr.toDartString()).isEmpty();
        verifyPCWSTRStructure(pcwstr, '');
      }
    });

    test('handles short string', () {
      for (var i = 0; i < testRuns; i++) {
        const string = 'Dart ❤️ win32';
        final pcwstr = Pcwstr(string);
        check(pcwstr.isEmpty).isFalse();
        check(pcwstr.byteLength).equals(string.length * 2);
        check(pcwstr.toDartString()).equals(string);
        verifyPCWSTRStructure(pcwstr, string);
      }
    });

    test('handles large string', () {
      final string = 'A very long string.' * 100_000; // 4MB.
      final pcwstr = Pcwstr(string);
      check(pcwstr.isEmpty).isFalse();
      check(pcwstr.byteLength).equals(string.length * 2);
      check(pcwstr.toDartString()).equals(string);
      verifyPCWSTRStructure(pcwstr, string);
    });

    test('supports embedded NUL characters', () {
      for (var i = 0; i < testRuns; i++) {
        const string = 'Dart\x00win32';
        final pcwstr = Pcwstr(string);
        check(pcwstr.byteLength).equals(4 * 2);
        check(pcwstr.toDartString()).equals('Dart');
        check(pcwstr.toDartString(length: string.length)).equals(string);
      }
    });

    test('clones PCWSTR', () {
      for (var i = 0; i < testRuns; i++) {
        const string = 'Dart ❤️ win32';
        final original = Pcwstr(string);
        final clone = original.clone();
        check(clone.toDartString()).equals(string);
        check(original.ptr.address).not((it) => it.equals(clone.ptr.address));
        verifyPCWSTRStructure(clone, string);
      }
    });

    test('concatenates PCWSTRs', () {
      for (var i = 0; i < testRuns; i++) {
        var combined = Pcwstr('');
        for (var i = 0; i < 10; i++) {
          final part = Pcwstr('Dart$i');
          combined = combined + part;
        }
        check(
          combined.toDartString(),
        ).equals('Dart0Dart1Dart2Dart3Dart4Dart5Dart6Dart7Dart8Dart9');
        verifyPCWSTRStructure(
          combined,
          'Dart0Dart1Dart2Dart3Dart4Dart5Dart6Dart7Dart8Dart9',
        );
      }
    });

    test('throws ArgumentError for null pointer', () {
      check(() => Pcwstr.fromPointer(nullptr)).throws<ArgumentError>();
    });
  });
}

/// Helper function to verify the internal structure of a PCWSTR.
void verifyPCWSTRStructure(Pcwstr pcwstr, String expectedString) {
  final expectedLength = expectedString.length;

  // Verify the length matches.
  check(pcwstr.length).equals(expectedLength);

  // Verify null terminator at the correct position.
  final pNull = Pointer<WCHAR>.fromAddress(
    pcwstr.ptr.address + expectedLength * sizeOf<WCHAR>(),
  );
  check(pNull.value).isZero();
}
