import 'dart:ffi';

import 'package:checks/checks.dart';
import 'package:ffi/ffi.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';

void main() {
  group('FILETIME Conversion', () {
    test('FILETIME to DateTime', () {
      final fileTime = calloc<FILETIME>();
      fileTime.ref
        ..dwLowDateTime = 751147008
        ..dwHighDateTime = 31062902;
      final dateTime = fileTime.ref.toDateTime();
      check(dateTime.isUtc).isTrue();
      check(dateTime).equals(DateTime.utc(2023, 10, 10, 12, 34, 56));
      free(fileTime);
    });

    test('FILETIME to DateTime (local time)', () {
      final fileTime = calloc<FILETIME>();
      fileTime.ref
        ..dwLowDateTime = 751147008
        ..dwHighDateTime = 31062902;
      final dateTime = fileTime.ref.toDateTime(convertToLocalTimeZone: true);
      check(dateTime.isUtc).isFalse();
      free(fileTime);
    });

    test('DateTime to FILETIME', () {
      final dateTime = DateTime.utc(2023, 10, 10, 12, 34, 56);
      final fileTime = dateTime.toFILETIME();
      final FILETIME(:dwLowDateTime, :dwHighDateTime) = fileTime.ref;
      check(dwLowDateTime).equals(751147008);
      check(dwHighDateTime).equals(31062902);
      free(fileTime);
    });

    test('Round-trip conversion', () {
      final originalDateTime = DateTime.utc(2025, 01, 31, 23, 59, 59);
      final fileTime = originalDateTime.toFILETIME();
      final convertedDateTime = fileTime.ref.toDateTime();
      check(convertedDateTime).equals(originalDateTime);
      check(convertedDateTime.isUtc).isTrue();
      free(fileTime);
    });
  });
}
