@TestOn('windows')
library;

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';

import 'helpers.dart';

// Run these tests a large number of times to try and identify memory leaks or
// buffer overruns.
const testRuns = 100;

void main() {
  group('Hstring', () {
    test('handles empty string', () {
      for (var i = 0; i < testRuns; i++) {
        final hstring = Hstring('');
        check(hstring.length).isZero();
        check(hstring.byteLength).isZero();
        check(hstring.isEmpty).isTrue();
        check(hstring.toDartString()).isEmpty();
      }
    });

    test('handles short string', () {
      for (var i = 0; i < testRuns; i++) {
        const string = 'Dart ❤️ win32';
        final hstring = Hstring(string);
        check(hstring.length).equals(string.length);
        check(hstring.byteLength).equals(string.length * 2);
        check(hstring.isEmpty).isFalse();
        check(hstring.toDartString()).equals(string);
      }
    });

    test('handles large string', () {
      final string = 'A very long string.' * 100_000; // 4MB.
      final hstring = Hstring(string);
      check(hstring.length).equals(string.length);
      check(hstring.byteLength).equals(string.length * 2);
      check(hstring.toDartString()).equals(string);
    });

    test('supports embedded NUL characters', () {
      for (var i = 0; i < testRuns; i++) {
        const string = 'Dart\x00win32';
        final hstring = Hstring(string);
        check(hstring.length).equals(string.length);
        check(hstring.byteLength).equals(string.length * 2);
        check(hstring.toDartString()).equals(string);
      }
    });

    test('clones HSTRING', () {
      for (var i = 0; i < testRuns; i++) {
        const string = 'Dart ❤️ win32';
        final original = Hstring(string);
        final clone = original.clone();
        check(clone.toDartString()).equals(string);
        // The handle should be equal, since `WindowsDuplicateString` just
        // increments the reference count of the original string and returns
        // the same handle if the original string was created with
        // `WindowsCreateString` which is the case here.
        check(original.handle).equals(clone.handle);
      }
    });

    test('concatenates HSTRINGs', () {
      for (var i = 0; i < testRuns; i++) {
        var combined = Hstring('');
        for (var i = 0; i < 10; i++) {
          final part = Hstring('Dart$i');
          combined = combined + part;
        }
        check(
          combined.toDartString(),
        ).equals('Dart0Dart1Dart2Dart3Dart4Dart5Dart6Dart7Dart8Dart9');
      }
    });
  });
}
