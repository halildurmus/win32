@TestOn('windows')
library;

import 'dart:ffi';

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

  group('PCWSTR', () {
    test('handles empty string', () {
      for (var i = 0; i < testRuns; i++) {
        final pcwstr = ''.toPcwstr();
        check(pcwstr.isEmpty).isTrue();
        check(pcwstr.toDartString()).isEmpty();
        verifyPcwstr(pcwstr, '');
        free(pcwstr);
      }
    });

    test('handles short string', () {
      for (var i = 0; i < testRuns; i++) {
        const string = 'Dart ❤️ win32';
        final pcwstr = string.toPcwstr();
        check(pcwstr.isEmpty).isFalse();
        check(pcwstr.byteLength).equals(string.length * 2);
        check(pcwstr.toDartString()).equals(string);
        verifyPcwstr(pcwstr, string);
        free(pcwstr);
      }
    });

    test('handles large string', () {
      final string = 'A very long string.' * 100_000; // 4MB.
      final pcwstr = string.toPcwstr();
      check(pcwstr.isEmpty).isFalse();
      check(pcwstr.byteLength).equals(string.length * 2);
      check(pcwstr.toDartString()).equals(string);
      verifyPcwstr(pcwstr, string);
      free(pcwstr);
    });

    test('supports embedded NUL characters', () {
      for (var i = 0; i < testRuns; i++) {
        const string = 'Dart\x00win32';
        final pcwstr = string.toPcwstr();
        check(pcwstr.byteLength).equals(4 * 2);
        check(pcwstr.toDartString()).equals('Dart');
        check(pcwstr.toDartString(length: string.length)).equals(string);
        free(pcwstr);
      }
    });

    test('clones string', () {
      for (var i = 0; i < testRuns; i++) {
        const string = 'Dart ❤️ win32';
        final original = string.toPcwstr();
        final copy = original.copy();
        check(copy.toDartString()).equals(string);
        check(original.address).not((it) => it.equals(copy.address));
        verifyPcwstr(copy, string);
        free(copy);
        free(original);
      }
    });
  });
}

/// Helper function to verify the internal structure of a PCWSTR.
void verifyPcwstr(PCWSTR pcwstr, String expectedString) {
  final expectedLength = expectedString.length;

  // Verify the length matches.
  check(pcwstr.length).equals(expectedLength);

  // Verify null terminator at the correct position.
  final pNull = Pointer<WCHAR>.fromAddress(
    pcwstr.address + expectedLength * sizeOf<WCHAR>(),
  );
  check(pNull.value).isZero();
}
