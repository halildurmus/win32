@TestOn('windows')
library;

import 'package:checks/checks.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';

import 'helpers.dart';

// Run these tests a large number of times to try and identify memory leaks or
// buffer overruns.
const testRuns = 100;

void main() {
  setUpAll(LeakTracker.enableInDebug);

  setUp(LeakTracker.reset);

  tearDown(LeakTracker.verifyNoLeaksInDebug);

  group('Hstring', () {
    test('handles empty string', () {
      for (var i = 0; i < testRuns; i++) {
        final hstring = ''.toHstring();
        check(hstring.length).isZero();
        check(hstring.byteLength).isZero();
        check(hstring.isEmpty).isTrue();
        check(hstring.toDartString()).isEmpty();
        WindowsDeleteString(hstring);
      }
    });

    test('handles short string', () {
      for (var i = 0; i < testRuns; i++) {
        const string = 'Dart ❤️ win32';
        final hstring = string.toHstring();
        check(hstring.length).equals(string.length);
        check(hstring.byteLength).equals(string.length * 2);
        check(hstring.isEmpty).isFalse();
        check(hstring.toDartString()).equals(string);
        WindowsDeleteString(hstring);
      }
    });

    test('handles large string', () {
      final string = 'A very long string.' * 100_000; // 4MB.
      final hstring = string.toHstring();
      check(hstring.length).equals(string.length);
      check(hstring.byteLength).equals(string.length * 2);
      check(hstring.toDartString()).equals(string);
      WindowsDeleteString(hstring);
    });

    test('supports embedded NUL characters', () {
      for (var i = 0; i < testRuns; i++) {
        const string = 'Dart\x00win32';
        final hstring = string.toHstring();
        check(hstring.length).equals(string.length);
        check(hstring.byteLength).equals(string.length * 2);
        check(hstring.toDartString()).equals(string);
        WindowsDeleteString(hstring);
      }
    });

    test('copies string', () {
      for (var i = 0; i < testRuns; i++) {
        const string = 'Dart ❤️ win32';
        final original = string.toHstring();
        final copy = original.copy();
        check(copy.toDartString()).equals(string);
        // The handle should be equal, since `WindowsDuplicateString` just
        // increments the reference count of the original string and returns
        // the same handle if the original string was created with
        // `WindowsCreateString` which is the case here.
        check(original).equals(copy);
        WindowsDeleteString(copy);
        WindowsDeleteString(original);
      }
    });
  });
}
