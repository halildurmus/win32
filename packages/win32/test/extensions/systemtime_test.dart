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

  group('SYSTEMTIME ↔ DateTime conversions', () {
    test('SYSTEMTIME.toDateTime defaults to UTC', () {
      final systemTime = Struct.create<SYSTEMTIME>()
        ..wYear = 2024
        ..wMonth = 3
        ..wDay = 10
        ..wHour = 12
        ..wMinute = 34
        ..wSecond = 56
        ..wMilliseconds = 789;
      final dateTime = systemTime.toDateTime();
      check(dateTime.isUtc).isTrue();
      check(dateTime.year).equals(2024);
      check(dateTime.month).equals(3);
      check(dateTime.day).equals(10);
      check(dateTime.hour).equals(12);
      check(dateTime.minute).equals(34);
      check(dateTime.second).equals(56);
      check(dateTime.millisecond).equals(789);
    });

    test('SYSTEMTIME.toDateTime with isUtc=false produces local DateTime', () {
      final systemTime = Struct.create<SYSTEMTIME>()
        ..wYear = 2024
        ..wMonth = 3
        ..wDay = 10
        ..wHour = 12
        ..wMinute = 34
        ..wSecond = 56
        ..wMilliseconds = 0;
      final dateTime = systemTime.toDateTime(isUtc: false);
      check(dateTime.isUtc).isFalse();
      check(dateTime.year).equals(2024);
      check(dateTime.month).equals(3);
    });

    test('DateTime.toSYSTEMTIME defaults to UTC conversion', () {
      final dateTime = DateTime.utc(2022, 6, 15, 8, 9, 10, 123);
      final pSystemTime = dateTime.toSYSTEMTIME();
      final systemTime = pSystemTime.ref;
      check(systemTime.wYear).equals(2022);
      check(systemTime.wMonth).equals(6);
      check(systemTime.wDay).equals(15);
      check(systemTime.wHour).equals(8);
      check(systemTime.wMinute).equals(9);
      check(systemTime.wSecond).equals(10);
      check(systemTime.wMilliseconds).equals(123);
      check(systemTime.wDayOfWeek).equals(dateTime.weekday % 7);
      free(pSystemTime);
    });

    test('DateTime.toSYSTEMTIME with isUtc=false preserves local fields', () {
      final localDateTime = DateTime(2023, 11, 5, 22, 45, 1, 999);
      final pSystemTime = localDateTime.toSYSTEMTIME(isUtc: false);
      final systemTime = pSystemTime.ref;
      check(systemTime.wYear).equals(2023);
      check(systemTime.wMonth).equals(11);
      check(systemTime.wDay).equals(5);
      check(systemTime.wHour).equals(22);
      check(systemTime.wMinute).equals(45);
      check(systemTime.wSecond).equals(1);
      check(systemTime.wMilliseconds).equals(999);
      free(pSystemTime);
    });

    test('Round-trip SYSTEMTIME → DateTime → SYSTEMTIME (UTC)', () {
      final original = Struct.create<SYSTEMTIME>()
        ..wYear = 2020
        ..wMonth = 2
        ..wDay = 29
        ..wHour = 23
        ..wMinute = 59
        ..wSecond = 58
        ..wMilliseconds = 456;
      final dateTime = original.toDateTime();
      final pSystemTime = dateTime.toSYSTEMTIME();
      final systemTime = pSystemTime.ref;
      check(systemTime.wYear).equals(original.wYear);
      check(systemTime.wMonth).equals(original.wMonth);
      check(systemTime.wDay).equals(original.wDay);
      check(systemTime.wHour).equals(original.wHour);
      check(systemTime.wMinute).equals(original.wMinute);
      check(systemTime.wSecond).equals(original.wSecond);
      check(systemTime.wMilliseconds).equals(original.wMilliseconds);
      free(pSystemTime);
    });
  });
}
