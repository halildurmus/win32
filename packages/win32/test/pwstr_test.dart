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
  group('Pwstr', () {
    test('handles empty string', () {
      for (var i = 0; i < testRuns; i++) {
        final pwstr = Pwstr('');
        check(pwstr.isEmpty).isTrue();
        check(pwstr.toDartString()).isEmpty();
        verifyPWSTRStructure(pwstr, '');
      }
    });

    test('handles short string', () {
      for (var i = 0; i < testRuns; i++) {
        const string = 'Dart ❤️ win32';
        final pwstr = Pwstr(string);
        check(pwstr.isEmpty).isFalse();
        check(pwstr.byteLength).equals(string.length * 2);
        check(pwstr.toDartString()).equals(string);
        verifyPWSTRStructure(pwstr, string);
      }
    });

    test('handles large string', () {
      final string = 'A very long string.' * 100_000; // 4MB.
      final pwstr = Pwstr(string);
      check(pwstr.isEmpty).isFalse();
      check(pwstr.byteLength).equals(string.length * 2);
      check(pwstr.toDartString()).equals(string);
      verifyPWSTRStructure(pwstr, string);
    });

    test('supports embedded NUL characters', () {
      for (var i = 0; i < testRuns; i++) {
        const string = 'Dart\x00win32';
        final pwstr = Pwstr(string);
        check(pwstr.byteLength).equals(4 * 2);
        check(pwstr.toDartString()).equals('Dart');
        check(pwstr.toDartString(length: string.length)).equals(string);
      }
    });

    test('allocates buffer with specified length', () {
      for (var i = 0; i < testRuns; i++) {
        final pwstr = Pwstr.allocate(10);
        check(pwstr.isEmpty).isTrue();
        check(pwstr.byteLength).isZero();
        verifyPWSTRStructure(pwstr, '');
      }
    });

    test('clones PWSTR', () {
      for (var i = 0; i < testRuns; i++) {
        const string = 'Dart ❤️ win32';
        final original = Pwstr(string);
        final clone = original.clone();
        check(clone.toDartString()).equals(string);
        check(original.ptr.address).not((it) => it.equals(clone.ptr.address));
        verifyPWSTRStructure(clone, string);
      }
    });

    test('concatenates PWSTRs', () {
      for (var i = 0; i < testRuns; i++) {
        var combined = Pwstr('');
        for (var i = 0; i < 10; i++) {
          final part = Pwstr('Dart$i');
          combined = combined + part;
        }
        check(
          combined.toDartString(),
        ).equals('Dart0Dart1Dart2Dart3Dart4Dart5Dart6Dart7Dart8Dart9');
        verifyPWSTRStructure(
          combined,
          'Dart0Dart1Dart2Dart3Dart4Dart5Dart6Dart7Dart8Dart9',
        );
      }
    });

    test('throws ArgumentError for null pointer', () {
      check(() => Pwstr.fromPointer(nullptr)).throws<ArgumentError>();
    });
  });
}

/// Helper function to verify the internal structure of a PWSTR.
void verifyPWSTRStructure(Pwstr pwstr, String expectedString) {
  final expectedLength = expectedString.length;

  // Verify the length matches.
  check(pwstr.length).equals(expectedLength);

  // Verify null terminator at the correct position.
  final pNull = Pointer<WCHAR>.fromAddress(
    pwstr.ptr.address + expectedLength * sizeOf<WCHAR>(),
  );
  check(pNull.value).isZero();
}
