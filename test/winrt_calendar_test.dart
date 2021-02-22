import 'dart:ffi';

@TestOn('windows')
import 'package:ffi/ffi.dart';
import 'package:test/test.dart';
import 'package:win32/win32.dart';

void main() {
  if (isWindowsRuntimeAvailable()) {
    late ICalendar calendar;
    setUp(() {
      winrtInitialize();

      final object =
          CreateObject('Windows.Globalization.Calendar', IID_ICalendar);
      calendar = ICalendar(object.cast());
    });

    test('Calendar year', () {
      expect(calendar.Year, greaterThanOrEqualTo(2021));
    });

    test('Calendar day', () {
      expect(calendar.Day, inInclusiveRange(1, 31));
    });

    test('Calendar day of week', () {
      expect(calendar.DayOfWeek, inInclusiveRange(0, 6));
    });

    test('Calendar hour', () {
      expect(calendar.Hour, inInclusiveRange(0, 23));
    });

    test('Calendar DST', () {
      // TODO: Should be projected as a bool
      expect(calendar.IsDaylightSavingTime, inInclusiveRange(0, 1));
    });

    test('Calendar add years', () {
      calendar.AddYears(10);
      expect(calendar.Year, greaterThanOrEqualTo(2031));
    });

    test('Calendar subtract years', () {
      calendar.AddYears(-100);
      // This test will start failing in 2100 :)
      expect(calendar.Year, inInclusiveRange(1921, 2000));
    });

    // test('Calendar month as string', () {
    //   final monthString = calendar.MonthAsFullString();
    //   expect(
    //       calendar.monthString,
    //       isIn([
    //         'January',
    //         'February',
    //         'March',
    //         'April',
    //         'May',
    //         'June',
    //         'July',
    //         'August',
    //         'September',
    //         'October',
    //         'November',
    //         'December'
    //       ]));
    // });

    // test('Calendar resolved language', () {
    //   final addr = calendar.ResolvedLanguage;
    //   final hstr = Pointer<IntPtr>.fromAddress(addr);
    //   expect(convertFromHString(hstr), equals('en-US'));
    // });

    tearDown(() {
      calloc.free(calendar.ptr);
      winrtUninitialize();
    });
  }
}
