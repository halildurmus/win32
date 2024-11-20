@TestOn('windows')
library;

import 'dart:ffi';

import 'package:checks/checks.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';

import '../helpers.dart';

// Run these tests a large number of times to try and identify memory leaks or
// buffer overruns.
const testRuns = 100;

void main() {
  setUpAll(LeakTracker.enableInDebug);

  setUp(LeakTracker.reset);

  tearDown(LeakTracker.verifyNoLeaksInDebug);

  group('BSTR', () {
    test('handles short string', () {
      for (var i = 0; i < testRuns; i++) {
        const string = 'Dart ❤️ win32';
        final bstr = string.toBstr();
        check(bstr.length).equals(string.length);
        check(bstr.byteLength).equals(string.length * 2);
        check(bstr.isEmpty).isFalse();
        check(bstr.toDartString()).equals(string);
        verifyBstr(bstr, string);
        SysFreeString(bstr);
      }
    });

    test('handles large string', () {
      final string = 'A very long string.' * 100_000; // 4MB.
      final bstr = string.toBstr();
      check(bstr.length).equals(string.length);
      check(bstr.byteLength).equals(string.length * 2);
      check(bstr.toDartString()).equals(string);
      verifyBstr(bstr, string);
      SysFreeString(bstr);
    });

    test('supports embedded NUL characters', () {
      for (var i = 0; i < testRuns; i++) {
        const string = 'Dart\x00win32';
        final bstr = string.toBstr();
        check(bstr.length).equals(string.length);
        check(bstr.byteLength).equals(string.length * 2);
        check(bstr.toDartString()).equals(string);
        verifyBstr(bstr, string);
        SysFreeString(bstr);
      }
    });

    test('copies BSTR', () {
      for (var i = 0; i < testRuns; i++) {
        const string = 'Dart ❤️ win32';
        final original = string.toBstr();
        final copy = original.copy();
        check(copy.toDartString()).equals(string);
        check(original.address).not((it) => it.equals(copy.address));
        verifyBstr(copy, string);
        SysFreeString(copy);
        SysFreeString(original);
      }
    });
  });
}

/// Helper function to verify the internal structure of a BSTR.
void verifyBstr(BSTR bstr, String expectedString) {
  final pLength = Pointer<DWORD>.fromAddress(bstr.address - sizeOf<DWORD>());
  final expectedByteLength = expectedString.length * 2;

  // Check the DWORD-length prefix matches the byte length of the string.
  check(pLength.value).equals(expectedByteLength);

  // Verify the null terminator.
  final pNull = Pointer<WORD>.fromAddress(bstr.address + expectedByteLength);
  check(pNull.value).isZero();
}
