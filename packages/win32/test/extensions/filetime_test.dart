@TestOn('windows')
library;

import 'dart:ffi';

import 'package:checks/checks.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';

void main() {
  setUpAll(LeakTracker.enableInDebug);

  setUp(LeakTracker.reset);

  tearDown(LeakTracker.verifyNoLeaksInDebug);

  group('FILETIME ↔ DateTime conversions', () {
    test('FILETIME.toDateTime defaults to UTC', () {
      final fileTime = Struct.create<FILETIME>()
        ..dwLowDateTime = 751147008
        ..dwHighDateTime = 31062902;
      final dateTime = fileTime.toDateTime();
      check(dateTime.isUtc).isTrue();
      check(dateTime.year).equals(2023);
      check(dateTime.month).equals(10);
      check(dateTime.day).equals(10);
      check(dateTime.hour).equals(12);
      check(dateTime.minute).equals(34);
      check(dateTime.second).equals(56);
    });

    test('FILETIME.toDateTime with isUtc=false produces local DateTime', () {
      final fileTime = Struct.create<FILETIME>()
        ..dwLowDateTime = 751147008
        ..dwHighDateTime = 31062902;
      final dateTime = fileTime.toDateTime(isUtc: false);
      check(dateTime.isUtc).isFalse();
      check(dateTime.year).equals(2023);
      check(dateTime.month).equals(10);
    });

    test('DateTime.toFILETIME conversion', () {
      final dateTime = DateTime.utc(2023, 10, 10, 12, 34, 56);
      final pFileTime = dateTime.toFILETIME();
      final FILETIME(:dwLowDateTime, :dwHighDateTime) = pFileTime.ref;
      check(dwLowDateTime).equals(751147008);
      check(dwHighDateTime).equals(31062902);
      free(pFileTime);
    });

    test('Round-trip FILETIME → DateTime → FILETIME (UTC)', () {
      final original = DateTime.utc(2025, 01, 31, 23, 59, 59);
      final pFileTime = original.toFILETIME();
      final dateTime = pFileTime.ref.toDateTime();
      check(dateTime).equals(original);
      check(dateTime.isUtc).isTrue();
      check(dateTime.year).equals(2025);
      check(dateTime.month).equals(1);
      free(pFileTime);
    });
  });

  group('FILETIME ↔ Duration conversions', () {
    test('FILETIME.toDuration converts 100ns ticks correctly', () {
      final fileTime = Struct.create<FILETIME>();
      const original = Duration(
        seconds: 3,
        milliseconds: 250,
        microseconds: 500,
      );
      final ticks = original.inMicroseconds * 10;
      fileTime
        ..dwLowDateTime = ticks & 0xFFFFFFFF
        ..dwHighDateTime = ticks >> 32;
      final duration = fileTime.toDuration();
      check(duration).equals(original);
    });

    test('Duration.toFILETIME round-trips exactly', () {
      const original = Duration(
        hours: 1,
        minutes: 2,
        seconds: 3,
        milliseconds: 4,
        microseconds: 5,
      );
      final pFileTime = original.toFILETIME();
      final duration = pFileTime.ref.toDuration();
      check(duration).equals(original);
      free(pFileTime);
    });

    test('Duration FILETIME is not interpreted as a timestamp', () {
      const duration = Duration(seconds: 1);
      final pFileTime = duration.toFILETIME();
      final dateTime = pFileTime.ref.toDateTime();

      // This is a sanity check: interpreting a duration FILETIME as a timestamp
      // should produce a value near the Windows epoch, not "now".
      check(dateTime.year).equals(1601);

      free(pFileTime);
    });
  });
}
