import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:test/test.dart';
import 'package:win32/win32.dart';

void main() {
  group('FILETIME Conversion', () {
    test('FILETIME to DateTime', () {
      final fileTime = calloc<FILETIME>();
      fileTime.ref
        ..dwLowDateTime = 751147008
        ..dwHighDateTime = 31062902;
      final dateTime = fileTime.ref.toDateTime();
      expect(dateTime.isUtc, isTrue);
      expect(dateTime, DateTime.utc(2023, 10, 10, 12, 34, 56));
      free(fileTime);
    });

    test('FILETIME to DateTime (local time)', () {
      final fileTime = calloc<FILETIME>();
      fileTime.ref
        ..dwLowDateTime = 751147008
        ..dwHighDateTime = 31062902;
      final dateTime = fileTime.ref.toDateTime(convertToLocalTimeZone: true);
      expect(dateTime.isUtc, isFalse);
      free(fileTime);
    });

    test('DateTime to FILETIME', () {
      final dateTime = DateTime.utc(2023, 10, 10, 12, 34, 56);
      final fileTime = dateTime.toFILETIME();
      final FILETIME(:dwLowDateTime, :dwHighDateTime) = fileTime.ref;
      expect(dwLowDateTime, 751147008);
      expect(dwHighDateTime, 31062902);
      free(fileTime);
    });

    test('Round-trip conversion', () {
      final originalDateTime = DateTime.utc(2025, 01, 31, 23, 59, 59);
      final fileTime = originalDateTime.toFILETIME();
      final convertedDateTime = fileTime.ref.toDateTime();
      expect(convertedDateTime, originalDateTime);
      expect(convertedDateTime.isUtc, isTrue);
      free(fileTime);
    });
  });
}
