@TestOn('windows')
library;

import 'dart:ffi';

import 'package:checks/checks.dart';
import 'package:ffi/ffi.dart';
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

  group('PSTR', () {
    test('handles empty string', () {
      for (var i = 0; i < testRuns; i++) {
        final pstr = ''.toPstr();
        check(pstr.isEmpty).isTrue();
        check(pstr.toDartString()).isEmpty();
        verifyPstr(pstr, '');
        free(pstr);
      }
    });

    test('handles short string', () {
      for (var i = 0; i < testRuns; i++) {
        const string = 'Dart win32';
        final pstr = string.toPstr();
        check(pstr.isEmpty).isFalse();
        check(pstr.byteLength).equals(string.length);
        check(pstr.toDartString()).equals(string);
        verifyPstr(pstr, string);
        free(pstr);
      }
    });

    test('handles large string', () {
      final string = 'A very long string.' * 100_000; // 2MB.
      final pstr = string.toPstr();
      check(pstr.isEmpty).isFalse();
      check(pstr.byteLength).equals(string.length);
      check(pstr.toDartString()).equals(string);
      verifyPstr(pstr, string);
      free(pstr);
    });

    test('supports embedded NUL characters', () {
      for (var i = 0; i < testRuns; i++) {
        const string = 'Dart\x00win32';
        final pstr = string.toPstr();
        check(pstr.byteLength).equals(4);
        check(pstr.toDartString()).equals('Dart');
        check(pstr.toDartString(length: string.length)).equals(string);
        free(pstr);
      }
    });

    test('allocates buffer with specified length', () {
      for (var i = 0; i < testRuns; i++) {
        final pstr = PSTR(adaptiveCalloc<BYTE>(10).cast<Utf8>());
        check(pstr.isEmpty).isTrue();
        check(pstr.byteLength).isZero();
        verifyPstr(pstr, '');
        free(pstr);
      }
    });

    test('copies string', () {
      for (var i = 0; i < testRuns; i++) {
        const string = 'Dart win32';
        final original = string.toPstr();
        final copy = original.copy();
        check(copy.toDartString()).equals(string);
        check(original.address).not((it) => it.equals(copy.address));
        verifyPstr(copy, string);
        free(copy);
        free(original);
      }
    });

    group('setString', () {
      test('writes string to memory and returns correct byte count', () {
        for (var i = 0; i < testRuns; i++) {
          const string = 'win32';
          final pstr = PSTR(
            adaptiveCalloc<BYTE>(string.length + 1).cast<Utf8>(),
          );
          final bytesWritten = pstr.setString(string);
          check(bytesWritten).equals(string.length + 1);
          final writtenString = pstr.toDartString();
          check(writtenString).equals(string);
          free(pstr);
        }
      });

      test('handles empty string gracefully', () {
        for (var i = 0; i < testRuns; i++) {
          const string = '';
          final pstr = PSTR(adaptiveCalloc<BYTE>(2).cast<Utf8>());
          final bytesWritten = pstr.setString(string);
          check(bytesWritten).equals(1);
          final writtenString = pstr.toDartString();
          check(writtenString).equals(string);
          free(pstr);
        }
      });

      test('overwrites existing memory contents', () {
        for (var i = 0; i < testRuns; i++) {
          const string = 'Old string';
          final pstr = PSTR(
            adaptiveCalloc<BYTE>(string.length + 1).cast<Utf8>(),
          )..setString(string);
          const newString = 'New string';
          pstr.setString(newString);
          final writtenString = pstr.toDartString();
          check(writtenString).equals(newString);
          free(pstr);
        }
      });
    });
  });
}

/// Helper function to verify the internal structure of a PSTR.
void verifyPstr(PSTR pstr, String expectedString) {
  final expectedLength = expectedString.length;

  // Verify the length matches.
  check(pstr.length).equals(expectedLength);

  // Verify null terminator at the correct position.
  final pNull = Pointer<BYTE>.fromAddress(pstr.address + expectedLength);
  check(pNull.value).isZero();
}
