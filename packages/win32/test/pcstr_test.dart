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

  group('PCSTR', () {
    test('handles empty string', () {
      for (var i = 0; i < testRuns; i++) {
        final pcstr = ''.toPcstr();
        check(pcstr.isEmpty).isTrue();
        check(pcstr.toDartString()).isEmpty();
        verifyPcstr(pcstr, '');
        free(pcstr);
      }
    });

    test('handles short string', () {
      for (var i = 0; i < testRuns; i++) {
        const string = 'Dart win32';
        final pcstr = string.toPcstr();
        check(pcstr.isEmpty).isFalse();
        check(pcstr.byteLength).equals(string.length);
        check(pcstr.toDartString()).equals(string);
        verifyPcstr(pcstr, string);
        free(pcstr);
      }
    });

    test('handles large string', () {
      final string = 'A very long string.' * 100_000; // 2MB.
      final pcstr = string.toPcstr();
      check(pcstr.isEmpty).isFalse();
      check(pcstr.byteLength).equals(string.length);
      check(pcstr.toDartString()).equals(string);
      verifyPcstr(pcstr, string);
      free(pcstr);
    });

    test('supports embedded NUL characters', () {
      for (var i = 0; i < testRuns; i++) {
        const string = 'Dart\x00win32';
        final pcstr = string.toPcstr();
        check(pcstr.byteLength).equals(4);
        check(pcstr.toDartString()).equals('Dart');
        check(pcstr.toDartString(length: string.length)).equals(string);
        free(pcstr);
      }
    });

    test('copies PCSTR', () {
      for (var i = 0; i < testRuns; i++) {
        const string = 'Dart win32';
        final original = string.toPcstr();
        final copy = original.copy();
        check(copy.toDartString()).equals(string);
        check(original.address).not((it) => it.equals(copy.address));
        verifyPcstr(copy, string);
        free(copy);
        free(original);
      }
    });
  });
}

/// Helper function to verify the internal structure of a PCSTR.
void verifyPcstr(PCSTR pcstr, String expectedString) {
  final expectedLength = expectedString.length;

  // Verify the length matches.
  check(pcstr.length).equals(expectedLength);

  // Verify null terminator at the correct position.
  final pNull = Pointer<BYTE>.fromAddress(pcstr.address + expectedLength);
  check(pNull.value).isZero();
}
