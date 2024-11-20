import 'dart:ffi';

import 'package:checks/checks.dart';
import 'package:ffi/ffi.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';

import '../helpers.dart';

// Run these tests a large number of times to try and identify memory leaks or
// buffer overruns.
const testRuns = 100;

void main() {
  group('StringExtension', () {
    group('toBSTR', () {
      test('converts string to HSTRING', () {
        for (var i = 0; i < testRuns; i++) {
          const string = 'Dart ❤️ win32';
          final bstr = string.toBSTR();
          check(bstr.toDartString()).equals(string);
          SysFreeString(bstr);
        }
      });

      test('handles empty string', () {
        for (var i = 0; i < testRuns; i++) {
          const string = '';
          final bstr = string.toBSTR();
          check(bstr.toDartString()).equals(string);
          SysFreeString(bstr);
        }
      });
    });

    group('toHSTRING', () {
      test('converts string to HSTRING', () {
        for (var i = 0; i < testRuns; i++) {
          const string = 'Dart ❤️ win32';
          final hstring = string.toHSTRING();
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
          final hstring = string.toHSTRING();
          final len = WindowsGetStringLen(hstring);
          check(len).isZero();
          final buffer = WindowsGetStringRawBuffer(hstring, nullptr);
          check(buffer.isNull).isFalse();
          check(buffer.toDartString()).equals(string);
          WindowsDeleteString(hstring);
        }
      });
    });

    group('toPSTR', () {
      test('converts string to PSTR', () {
        for (var i = 0; i < testRuns; i++) {
          const string = 'Dart win32';
          final pstr = string.toPSTR();
          final buffer = pstr.cast<BYTE>().asTypedList(string.length + 1);
          check(pstr.toDartString()).equals(string);
          check(buffer[string.length]).isZero();
          free(pstr);
        }
      });

      test('handles empty string', () {
        for (var i = 0; i < testRuns; i++) {
          const string = '';
          final pstr = string.toPSTR();
          final buffer = pstr.cast<BYTE>().asTypedList(1);
          check(pstr.toDartString()).equals(string);
          check(buffer[0]).isZero();
          free(pstr);
        }
      });
    });

    group('toPWSTR', () {
      test('converts string to PWSTR', () {
        for (var i = 0; i < testRuns; i++) {
          const string = 'Dart ❤️ win32';
          final pwstr = string.toPWSTR();
          final buffer = pwstr.cast<WCHAR>().asTypedList(string.length + 1);
          check(pwstr.toDartString()).equals(string);
          check(buffer[string.length]).isZero();
          free(pwstr);
        }
      });

      test('handles empty string', () {
        for (var i = 0; i < testRuns; i++) {
          const string = '';
          final pwstr = string.toPWSTR();
          final buffer = pwstr.cast<WCHAR>().asTypedList(1);
          check(pwstr.toDartString()).equals(string);
          check(buffer[0]).isZero();
          free(pwstr);
        }
      });
    });
  });

  group('StringListExtension', () {
    group('toPWSTR', () {
      /// Calculates the expected char codes for a list of strings, including
      /// NUL terminators for each string and a NUL terminator for the list.
      List<int> expectedCharCodes(List<String> strings) => [
        ...strings.expand((s) => [...s.codeUnits, 0]),
        0,
      ];

      test('converts strings to double NUL-terminated string array', () {
        for (var i = 0; i < testRuns; i++) {
          const strings = ['Dart ❤️', 'win32 🎯'];
          final ptr = strings.toPWSTR();
          final buffer = ptr.cast<Uint16>().asTypedList(18);
          check(buffer).deepEquals(expectedCharCodes(strings));
          free(ptr);
        }
      });

      test('handles single string', () {
        for (var i = 0; i < testRuns; i++) {
          const strings = ['single'];
          final ptr = strings.toPWSTR();
          final buffer = ptr.cast<Uint16>().asTypedList(8);
          check(buffer).deepEquals(expectedCharCodes(strings));
          free(ptr);
        }
      });

      test('throws if the list is empty', () {
        const strings = <String>[];
        check(() => strings.toPWSTR()).throws<ArgumentError>();
      });

      test('throws if any string is empty', () {
        const strings = ['hello', '', 'world'];
        check(() => strings.toPWSTR()).throws<ArgumentError>();
      });
    });
  });

  group('PSTRExtension', () {
    group('setString', () {
      test('writes string to memory and returns correct byte count', () {
        for (var i = 0; i < testRuns; i++) {
          const string = 'win32';
          final ptr = loggingCalloc<BYTE>(string.length + 1).cast<Utf8>();
          final bytesWritten = ptr.setString(string);
          check(bytesWritten).equals(string.length + 1);
          final writtenString = ptr.toDartString();
          check(writtenString).equals(string);
          free(ptr);
        }
      });

      test('handles empty string gracefully', () {
        for (var i = 0; i < testRuns; i++) {
          const string = '';
          final ptr = loggingCalloc<BYTE>(2).cast<Utf8>();
          final bytesWritten = ptr.setString(string);
          check(bytesWritten).equals(1);
          final writtenString = ptr.toDartString();
          check(writtenString).equals(string);
          free(ptr);
        }
      });

      test('overwrites existing memory contents', () {
        for (var i = 0; i < testRuns; i++) {
          const string = 'Old string';
          final ptr = loggingCalloc<BYTE>(string.length + 1).cast<Utf8>()
            ..setString(string);
          const newString = 'New string';
          ptr.setString(newString);
          final writtenString = ptr.toDartString();
          check(writtenString).equals(newString);
          free(ptr);
        }
      });
    });
  });

  group('PWSTRExtension', () {
    group('setString', () {
      test('writes string to memory and returns correct byte count', () {
        for (var i = 0; i < testRuns; i++) {
          final ptr = loggingMalloc<WCHAR>(24).cast<Utf16>();
          const string = 'Dart ❤️ win32';
          final bytesWritten = ptr.setString(string);
          check(bytesWritten).equals((string.length + 1) * 2);
          final writtenString = ptr.toDartString();
          check(writtenString).equals(string);
          free(ptr);
        }
      });

      test('handles empty string', () {
        for (var i = 0; i < testRuns; i++) {
          final ptr = loggingMalloc<WCHAR>(5).cast<Utf16>();
          const string = '';
          final bytesWritten = ptr.setString(string);
          check(bytesWritten).equals(2);
          final writtenString = ptr.toDartString();
          check(writtenString).equals(string);
          free(ptr);
        }
      });

      test('overwrites existing memory contents', () {
        for (var i = 0; i < testRuns; i++) {
          final ptr = loggingMalloc<WCHAR>(20).cast<Utf16>()
            ..setString('OldData');
          const string = 'New';
          ptr.setString(string);
          final writtenString = ptr.toDartString();
          check(writtenString).equals(string);
          free(ptr);
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
          final ptr = loggingMalloc<WCHAR>(arraySize).cast<Utf16>()
            ..setString('${strings.join('\x00')}\x00');
          final result = ptr.toDartStringList(arraySize);
          check(result).deepEquals(strings);
          free(ptr);
        }
      });

      test('handles single string', () {
        for (var i = 0; i < testRuns; i++) {
          const strings = ['win32.pub'];
          final arraySize = expectedTotalSize(strings);
          check(arraySize).equals(11);
          final ptr = loggingMalloc<WCHAR>(arraySize).cast<Utf16>()
            ..setString('${strings.join('\x00')}\x00');
          final result = ptr.toDartStringList(arraySize);
          check(result).deepEquals(strings);
          free(ptr);
        }
      });

      test('stops reading at maxLength', () {
        for (var i = 0; i < testRuns; i++) {
          final strings = ['banana', 'strawberry', 'kiwi'];
          final arraySize = expectedTotalSize(strings);
          check(arraySize).equals(24);
          final ptr = loggingMalloc<WCHAR>(arraySize).cast<Utf16>()
            ..setString('${strings.join('\x00')}\x00');
          check(ptr.toDartStringList(7)).deepEquals(['banana']);
          check(ptr.toDartStringList(8)).deepEquals(['banana', 's']);
          check(ptr.toDartStringList(9)).deepEquals(['banana', 'st']);
          check(ptr.toDartStringList(10)).deepEquals(['banana', 'str']);
          check(ptr.toDartStringList(11)).deepEquals(['banana', 'stra']);
          check(ptr.toDartStringList(12)).deepEquals(['banana', 'straw']);
          check(ptr.toDartStringList(13)).deepEquals(['banana', 'strawb']);
          check(ptr.toDartStringList(14)).deepEquals(['banana', 'strawbe']);
          check(ptr.toDartStringList(15)).deepEquals(['banana', 'strawber']);
          check(ptr.toDartStringList(16)).deepEquals(['banana', 'strawberr']);
          check(ptr.toDartStringList(17)).deepEquals(['banana', 'strawberry']);
          check(ptr.toDartStringList(18)).deepEquals(['banana', 'strawberry']);
          check(
            ptr.toDartStringList(19),
          ).deepEquals(['banana', 'strawberry', 'k']);
          check(
            ptr.toDartStringList(20),
          ).deepEquals(['banana', 'strawberry', 'ki']);
          check(
            ptr.toDartStringList(21),
          ).deepEquals(['banana', 'strawberry', 'kiw']);
          check(
            ptr.toDartStringList(22),
          ).deepEquals(['banana', 'strawberry', 'kiwi']);
          check(
            ptr.toDartStringList(23),
          ).deepEquals(['banana', 'strawberry', 'kiwi']);
          check(
            ptr.toDartStringList(24),
          ).deepEquals(['banana', 'strawberry', 'kiwi']);
          free(ptr);
        }
      });

      test('returns empty list for empty memory block', () {
        for (var i = 0; i < testRuns; i++) {
          final ptr = loggingMalloc<WCHAR>(2).cast<Utf16>()
            ..setString('\x00\x00');
          final result = ptr.toDartStringList(2);
          check(result).isEmpty();
          free(ptr);
        }
      });

      test('throws RangeError for negative maxLength', () {
        final ptr = loggingMalloc<WCHAR>(10).cast<Utf16>();
        check(() => ptr.toDartStringList(-1)).throws<RangeError>();
        free(ptr);
      });
    });
  });
}
