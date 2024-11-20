@TestOn('windows')
library;

import 'dart:ffi';

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';

import '../helpers.dart';

// Run these tests a large number of times to try and identify memory leaks or
// buffer overruns.
const testRuns = 100;

void main() {
  group('Bstr', () {
    test('handles empty string', () {
      for (var i = 0; i < testRuns; i++) {
        final bstr = Bstr('');
        check(bstr.length).isZero();
        check(bstr.byteLength).isZero();
        check(bstr.isEmpty).isTrue();
        check(bstr.toDartString()).isEmpty();
        verifyBSTR(bstr, '');
      }
    });

    test('handles short string', () {
      for (var i = 0; i < testRuns; i++) {
        const string = 'Dart ❤️ win32';
        final bstr = Bstr(string);
        check(bstr.length).equals(string.length);
        check(bstr.byteLength).equals(string.length * 2);
        check(bstr.isEmpty).isFalse();
        check(bstr.toDartString()).equals(string);
        verifyBSTR(bstr, string);
      }
    });

    test('handles large string', () {
      final string = 'A very long string.' * 100_000; // 4MB.
      final bstr = Bstr(string);
      check(bstr.length).equals(string.length);
      check(bstr.byteLength).equals(string.length * 2);
      check(bstr.toDartString()).equals(string);
      verifyBSTR(bstr, string);
    });

    test('supports embedded NUL characters', () {
      for (var i = 0; i < testRuns; i++) {
        const string = 'Dart\x00win32';
        final bstr = Bstr(string);
        check(bstr.length).equals(string.length);
        check(bstr.byteLength).equals(string.length * 2);
        check(bstr.toDartString()).equals(string);
        verifyBSTR(bstr, string);
      }
    });

    test('clones BSTR', () {
      for (var i = 0; i < testRuns; i++) {
        const string = 'Dart ❤️ win32';
        final original = Bstr(string);
        final clone = original.clone();
        check(clone.toDartString()).equals(string);
        check(original.ptr.address).not((it) => it.equals(clone.ptr.address));
        verifyBSTR(clone, string);
      }
    });

    test('concatenates BSTRs', () {
      for (var i = 0; i < testRuns; i++) {
        var combined = Bstr('');
        for (var i = 0; i < 10; i++) {
          final part = Bstr('Dart$i');
          combined = combined + part;
        }
        check(
          combined.toDartString(),
        ).equals('Dart0Dart1Dart2Dart3Dart4Dart5Dart6Dart7Dart8Dart9');
        verifyBSTR(
          combined,
          'Dart0Dart1Dart2Dart3Dart4Dart5Dart6Dart7Dart8Dart9',
        );
      }
    });

    test('throws ArgumentError for null pointer', () {
      check(() => Bstr.fromPointer(nullptr)).throws<ArgumentError>();
    });
  });
}

/// Helper function to verify the internal structure of a BSTR.
void verifyBSTR(Bstr bstr, String expectedString) {
  final pLength = Pointer<DWORD>.fromAddress(
    bstr.ptr.address - sizeOf<DWORD>(),
  );
  final expectedByteLength = expectedString.length * 2;

  // Check the DWORD-length prefix matches the byte length of the string.
  check(pLength.value).equals(expectedByteLength);

  // Verify the null terminator.
  final pNull = Pointer<WORD>.fromAddress(
    bstr.ptr.address + expectedByteLength,
  );
  check(pNull.value).isZero();
}
