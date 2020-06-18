@TestOn('windows')

import 'dart:ffi';

import 'package:test/test.dart';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

const testString = "If my grandmother had wheels, she'd be a motorbike";
final testStringArray = 'apples|hazelnuts|bananas|raisins|coconuts|sultanas||';

Pointer<Utf16> createStringArray(String textWithPipeDelimiters) {
  final arrayPtr = TEXT(textWithPipeDelimiters);

  // because tne Utf16 struct itself has no length, we need to cast to Uint16 so
  // we can iterate through it with .elementAt()
  final intArrayPtr = arrayPtr.cast<Uint16>();

  // Replace pipe characters with \0
  for (var i = 0; i < testStringArray.length; i++) {
    if (intArrayPtr.elementAt(i).cast<Utf16>().unpackString(1) == '|') {
      intArrayPtr.elementAt(i).value = 0;
    }
  }

  return intArrayPtr.cast<Utf16>();
}

void main() {
  // Run these tests a large number of times to try and identify memory leaks or
  // buffer overruns
  for (var i = 0; i < 100; i++) {
    group('Unicode', () {
      test('Can create string', () {
        final stringPtr = TEXT(testString);

        expect(stringPtr.unpackString(5), equals(testString.substring(0, 5)));
        free(stringPtr);
      });

      test('Overflow string', () {
        final stringPtr = TEXT(testString);

        expect(stringPtr.unpackString(256), equals(testString));
        free(stringPtr);
      });

      test('Empty string', () {
        final stringPtr = TEXT('');

        expect(stringPtr.unpackString(10), equals(''));
        free(stringPtr);
      });

      test('Array', () {
        final arrayPtr = createStringArray(testStringArray);

        // 400 is an arbitrarily long length to try and force an overflow error,
        // if one exists
        expect(arrayPtr.unpackStringArray(400)[0], equals('apples'));
        expect(arrayPtr.unpackStringArray(400)[1], equals('hazelnuts'));
        expect(arrayPtr.unpackStringArray(400)[2], equals('bananas'));
        expect(arrayPtr.unpackStringArray(400)[5], equals('sultanas'));
        expect(arrayPtr.unpackStringArray(400).length, equals(6));

        free(arrayPtr);
      });
    });

    group('HSTRING tests', () {
      test('String to HSTRING conversion', () {
        final string = 'This is a string to convert.\n';
        final hstring = convertToHString(string);

        // final string2 = convertFromHString(hstring);
        // expect(string, equals(string2));

        WindowsDeleteString(hstring.value);
        free(hstring);
      });
      test('String to HSTRING conversion -- more complex', () {
        final string = '''
Some emojis: 💼📃👩🏾‍💻🛀🏼🤗
Some Hangul: 이력서
Some accented text: Résumé
    ''';
        final hstring = convertToHString(string);

        final string2 = convertFromHString(hstring);
        expect(string, equals(string2));

        WindowsDeleteString(hstring.value);
        free(hstring);
      });
    });
  }
}
