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

  group('StringExtension', () {
    group('toBstr', () {
      test('converts string to BSTR', () {
        for (var i = 0; i < testRuns; i++) {
          const string = 'Dart ❤️ win32';
          final bstr = string.toBstr();
          check(bstr.toDartString()).equals(string);
          SysFreeString(bstr);
        }
      });

      test('handles empty string', () {
        for (var i = 0; i < testRuns; i++) {
          const string = '';
          final bstr = string.toBstr();
          check(bstr.toDartString()).equals(string);
          SysFreeString(bstr);
        }
      });
    });

    group('toHstring', () {
      test('converts string to HSTRING', () {
        for (var i = 0; i < testRuns; i++) {
          const string = 'Dart ❤️ win32';
          final hstring = string.toHstring();
          final len = WindowsGetStringLen(hstring);
          check(len).equals(string.length);
          final buffer = WindowsGetStringRawBuffer(hstring, nullptr);
          check(buffer.isNull).isFalse();
          check(buffer.toDartString()).equals(string);
          WindowsDeleteString(hstring);
        }
      });

      test('handles empty string', () {
        for (var i = 0; i < testRuns; i++) {
          const string = '';
          final hstring = string.toHstring();
          final len = WindowsGetStringLen(hstring);
          check(len).isZero();
          final buffer = WindowsGetStringRawBuffer(hstring, nullptr);
          check(buffer.isNull).isFalse();
          check(buffer.toDartString()).equals(string);
          WindowsDeleteString(hstring);
        }
      });
    });

    group('toPcstr', () {
      test('converts string to PSTR', () {
        for (var i = 0; i < testRuns; i++) {
          const string = 'Dart win32';
          final pcstr = string.toPcstr();
          final buffer = pcstr.cast<BYTE>().asTypedList(string.length + 1);
          check(pcstr.toDartString()).equals(string);
          check(buffer[string.length]).isZero();
          free(pcstr);
        }
      });

      test('handles empty string', () {
        for (var i = 0; i < testRuns; i++) {
          const string = '';
          final pcstr = string.toPcstr();
          final buffer = pcstr.cast<BYTE>().asTypedList(1);
          check(pcstr.toDartString()).equals(string);
          check(buffer[0]).isZero();
          free(pcstr);
        }
      });
    });

    group('toPcwstr', () {
      test('converts string to Pcwstr', () {
        for (var i = 0; i < testRuns; i++) {
          const string = 'Dart ❤️ win32';
          final pcwstr = string.toPcwstr();
          final buffer = pcwstr.cast<WCHAR>().asTypedList(string.length + 1);
          check(pcwstr.toDartString()).equals(string);
          check(buffer[string.length]).isZero();
          free(pcwstr);
        }
      });

      test('handles empty string', () {
        for (var i = 0; i < testRuns; i++) {
          const string = '';
          final pcwstr = string.toPcwstr();
          final buffer = pcwstr.cast<WCHAR>().asTypedList(1);
          check(pcwstr.toDartString()).equals(string);
          check(buffer[0]).isZero();
          free(pcwstr);
        }
      });
    });
  });

  group('StringListExtension', () {
    group('toPcwstr', () {
      /// Calculates the expected char codes for a list of strings, including
      /// NUL terminators for each string and a NUL terminator for the list.
      List<int> expectedCharCodes(List<String> strings) => [
        ...strings.expand((s) => [...s.codeUnits, 0]),
        0,
      ];

      test('converts strings to double NUL-terminated string array', () {
        for (var i = 0; i < testRuns; i++) {
          const strings = ['Dart ❤️', 'win32 🎯'];
          final pcwstr = strings.toPcwstr();
          final buffer = pcwstr.cast<Uint16>().asTypedList(18);
          check(buffer).deepEquals(expectedCharCodes(strings));
          free(pcwstr);
        }
      });

      test('handles single string', () {
        for (var i = 0; i < testRuns; i++) {
          const strings = ['single'];
          final pcwstr = strings.toPcwstr();
          final buffer = pcwstr.cast<Uint16>().asTypedList(8);
          check(buffer).deepEquals(expectedCharCodes(strings));
          free(pcwstr);
        }
      });

      test('throws if the list is empty', () {
        const strings = <String>[];
        check(() => strings.toPcwstr()).throws<ArgumentError>();
      });

      test('throws if any string is empty', () {
        const strings = ['hello', '', 'world'];
        check(() => strings.toPcwstr()).throws<ArgumentError>();
      });
    });
  });
}
