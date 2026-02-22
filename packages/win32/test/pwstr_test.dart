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

  group('PWSTR', () {
    test('handles empty string', () {
      for (var i = 0; i < testRuns; i++) {
        final pwstr = ''.toPwstr();
        check(pwstr.isEmpty).isTrue();
        check(pwstr.toDartString()).isEmpty();
        verifyPwstr(pwstr, '');
        free(pwstr);
      }
    });

    test('handles short string', () {
      for (var i = 0; i < testRuns; i++) {
        const string = 'Dart ❤️ win32';
        final pwstr = string.toPwstr();
        check(pwstr.isEmpty).isFalse();
        check(pwstr.byteLength).equals(string.length * 2);
        check(pwstr.toDartString()).equals(string);
        verifyPwstr(pwstr, string);
        free(pwstr);
      }
    });

    test('handles large string', () {
      final string = 'A very long string.' * 100_000; // 4MB.
      final pwstr = string.toPwstr();
      check(pwstr.isEmpty).isFalse();
      check(pwstr.byteLength).equals(string.length * 2);
      check(pwstr.toDartString()).equals(string);
      verifyPwstr(pwstr, string);
      free(pwstr);
    });

    test('supports embedded NUL characters', () {
      for (var i = 0; i < testRuns; i++) {
        const string = 'Dart\x00win32';
        final pwstr = string.toPwstr();
        check(pwstr.byteLength).equals(4 * 2);
        check(pwstr.toDartString()).equals('Dart');
        check(pwstr.toDartString(length: string.length)).equals(string);
        free(pwstr);
      }
    });

    test('allocates buffer with specified length', () {
      for (var i = 0; i < testRuns; i++) {
        final pwstr = wsalloc(10);
        check(pwstr.isEmpty).isTrue();
        check(pwstr.byteLength).isZero();
        verifyPwstr(pwstr, '');
        free(pwstr);
      }
    });

    test('copies string', () {
      for (var i = 0; i < testRuns; i++) {
        const string = 'Dart ❤️ win32';
        final original = string.toPwstr();
        final copy = original.copy();
        check(copy.toDartString()).equals(string);
        check(original.address).not((it) => it.equals(copy.address));
        verifyPwstr(copy, string);
        free(copy);
        free(original);
      }
    });

    group('setString', () {
      test('writes string to memory and returns correct byte count', () {
        for (var i = 0; i < testRuns; i++) {
          final pwstr = wsalloc(24);
          const string = 'Dart ❤️ win32';
          final bytesWritten = pwstr.setString(string);
          check(bytesWritten).equals((string.length + 1) * 2);
          final writtenString = pwstr.toDartString();
          check(writtenString).equals(string);
          free(pwstr);
        }
      });

      test('handles empty string', () {
        for (var i = 0; i < testRuns; i++) {
          final pwstr = wsalloc(5);
          const string = '';
          final bytesWritten = pwstr.setString(string);
          check(bytesWritten).equals(2);
          final writtenString = pwstr.toDartString();
          check(writtenString).equals(string);
          free(pwstr);
        }
      });

      test('overwrites existing memory contents', () {
        for (var i = 0; i < testRuns; i++) {
          final pwstr = wsalloc(20)..setString('OldData');
          const string = 'New';
          pwstr.setString(string);
          final writtenString = pwstr.toDartString();
          check(writtenString).equals(string);
          free(pwstr);
        }
      });
    });

    group('toDartStringList', () {
      /// Calculates the expected total size of a list of strings, including NUL
      /// terminators for each string and a NUL terminator for the list.
      int expectedTotalSize(List<String> strings) =>
          strings.fold(0, (prev, element) => prev + element.length + 1) + 1;

      test('reads multiple strings', () {
        for (var i = 0; i < testRuns; i++) {
          final strings = ['banana', 'strawberry', 'kiwi'];
          final arraySize = expectedTotalSize(strings);
          check(arraySize).equals(24);
          final pwstr = wsalloc(arraySize)
            ..setString('${strings.join('\x00')}\x00');
          final result = pwstr.toDartStringList(arraySize);
          check(result).deepEquals(strings);
          free(pwstr);
        }
      });

      test('handles single string', () {
        for (var i = 0; i < testRuns; i++) {
          const strings = ['win32.pub'];
          final arraySize = expectedTotalSize(strings);
          check(arraySize).equals(11);
          final pwstr = wsalloc(arraySize)
            ..setString('${strings.join('\x00')}\x00');
          final result = pwstr.toDartStringList(arraySize);
          check(result).deepEquals(strings);
          free(pwstr);
        }
      });

      test('stops reading at maxLength', () {
        for (var i = 0; i < testRuns; i++) {
          final strings = ['banana', 'strawberry', 'kiwi'];
          final arraySize = expectedTotalSize(strings);
          check(arraySize).equals(24);
          final pwstr = wsalloc(arraySize)
            ..setString('${strings.join('\x00')}\x00');
          check(pwstr.toDartStringList(7)).deepEquals(['banana']);
          check(pwstr.toDartStringList(8)).deepEquals(['banana', 's']);
          check(pwstr.toDartStringList(9)).deepEquals(['banana', 'st']);
          check(pwstr.toDartStringList(10)).deepEquals(['banana', 'str']);
          check(pwstr.toDartStringList(11)).deepEquals(['banana', 'stra']);
          check(pwstr.toDartStringList(12)).deepEquals(['banana', 'straw']);
          check(pwstr.toDartStringList(13)).deepEquals(['banana', 'strawb']);
          check(pwstr.toDartStringList(14)).deepEquals(['banana', 'strawbe']);
          check(pwstr.toDartStringList(15)).deepEquals(['banana', 'strawber']);
          check(pwstr.toDartStringList(16)).deepEquals(['banana', 'strawberr']);
          check(
            pwstr.toDartStringList(17),
          ).deepEquals(['banana', 'strawberry']);
          check(
            pwstr.toDartStringList(18),
          ).deepEquals(['banana', 'strawberry']);
          check(
            pwstr.toDartStringList(19),
          ).deepEquals(['banana', 'strawberry', 'k']);
          check(
            pwstr.toDartStringList(20),
          ).deepEquals(['banana', 'strawberry', 'ki']);
          check(
            pwstr.toDartStringList(21),
          ).deepEquals(['banana', 'strawberry', 'kiw']);
          check(
            pwstr.toDartStringList(22),
          ).deepEquals(['banana', 'strawberry', 'kiwi']);
          check(
            pwstr.toDartStringList(23),
          ).deepEquals(['banana', 'strawberry', 'kiwi']);
          check(
            pwstr.toDartStringList(24),
          ).deepEquals(['banana', 'strawberry', 'kiwi']);
          free(pwstr);
        }
      });

      test('returns empty list for empty memory block', () {
        for (var i = 0; i < testRuns; i++) {
          final pwstr = wsalloc(2)..setString('\x00\x00');
          final result = pwstr.toDartStringList(2);
          check(result).isEmpty();
          free(pwstr);
        }
      });

      test('throws RangeError for negative maxLength', () {
        final pwstr = wsalloc(10);
        check(() => pwstr.toDartStringList(-1)).throws<RangeError>();
        free(pwstr);
      });
    });
  });
}

/// Helper function to verify the internal structure of a PWSTR.
void verifyPwstr(PWSTR pwstr, String expectedString) {
  final expectedLength = expectedString.length;

  // Verify the length matches.
  check(pwstr.length).equals(expectedLength);

  // Verify null terminator at the correct position.
  final pNull = Pointer<WCHAR>.fromAddress(
    pwstr.address + expectedLength * sizeOf<WCHAR>(),
  );
  check(pNull.value).isZero();
}
