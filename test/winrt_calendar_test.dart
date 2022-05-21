@TestOn('windows')

import 'package:test/test.dart';
import 'package:win32/win32.dart';

// Exhaustively test the WinRT calendar object to make sure overrides,
// properties and methods are working correctly.

void main() {
  if (isWindowsRuntimeAvailable()) {
    late ICalendar calendar;

    setUp(() {
      winrtInitialize();

      final object =
          CreateObject('Windows.Globalization.Calendar', IID_ICalendar);
      calendar = ICalendar(object);
    });

    test('Calendar is a materialized object', () {
      expect(calendar.trustLevel, equals(TrustLevel.baseTrust));
      expect(
          calendar.runtimeClassName, equals('Windows.Globalization.Calendar'));
    });

    test('Calendar day', () {
      expect(calendar.Day, inInclusiveRange(1, 31));
    });

    test('Set calendar day', () {
      calendar.Day = 13;
      expect(calendar.Day, equals(13));
    });

    test('Calendar day of week', () {
      expect(calendar.DayOfWeek, inInclusiveRange(0, 6));
    });

    test('Calendar era', () {
      calendar.ChangeCalendarSystem('GregorianCalendar');
      expect(calendar.Era, equals(1));
    });

    test('Calendar first day of month', () {
      calendar.ChangeCalendarSystem('GregorianCalendar');
      expect(calendar.FirstDayInThisMonth, equals(1));
    });

    test('Calendar first era', () {
      calendar.ChangeCalendarSystem('GregorianCalendar');

      // Per Microsoft docs, the WinRT implementation only recognizes the
      // current era (A.D.). See:
      // https://docs.microsoft.com/en-us/uwp/api/windows.globalization.calendaridentifiers.gregorian
      expect(calendar.FirstEra, equals(1));
    });

    test('Calendar first hour in this period', () {
      calendar.ChangeClock('12HourClock');
      expect(calendar.FirstHourInThisPeriod, isIn([0, 12]));
    });

    test('Calendar first minute in this hour', () {
      expect(calendar.FirstMinuteInThisHour, equals(0));
    });

    test('Calendar first month in this year', () {
      expect(calendar.FirstMonthInThisYear, equals(1));
    });

    test('Calendar first period in this day', () {
      expect(calendar.FirstMonthInThisYear, equals(1));
    });

    test('Calendar first second in this minute', () {
      expect(calendar.FirstSecondInThisMinute, equals(0));
    });

    test('Calendar first year in the current era', () {
      calendar.ChangeCalendarSystem('HebrewCalendar');
      expect(calendar.FirstYearInThisEra, equals(5343));
    });

    test('Calendar hour', () {
      expect(calendar.Hour, inInclusiveRange(0, 23));
    });

    test('Calendar daylight saving time', () {
      expect(() => calendar.IsDaylightSavingTime, returnsNormally);
    });

    test('Calendar languages', () {
      expect(calendar.Languages.length, isPositive);
    });

    test('Calendar last day in month', () {
      calendar.ChangeCalendarSystem('GregorianCalendar');
      expect(calendar.LastDayInThisMonth, isIn([28, 29, 30, 31]));
    });

    test('Calendar last era', () {
      calendar.ChangeCalendarSystem('GregorianCalendar');
      expect(calendar.FirstEra, equals(1));
      expect(calendar.LastEra, equals(1));

      // Most systems should be in the Reiwa (令和) era, but a system without
      // the calendar update will be in the Heisei (平成) era. In either event,
      // there should be at least four Japanese eras registered by WinRT.
      calendar.ChangeCalendarSystem('JapaneseCalendar');
      expect(calendar.FirstEra, equals(1));
      expect(calendar.LastEra, greaterThanOrEqualTo(4));
    });

    test('Calendar last hour in this period', () {
      calendar.ChangeClock('12HourClock');
      expect(calendar.LastHourInThisPeriod, equals(11));
    });

    test('Calendar last minute in this hour', () {
      calendar.ChangeClock('12HourClock');
      expect(calendar.LastMinuteInThisHour, equals(59));
    });

    test('Calendar last month in this year', () {
      calendar.ChangeCalendarSystem('GregorianCalendar');
      expect(calendar.LastMonthInThisYear, equals(12));
    });

    test('Calendar last period in this day', () {
      calendar.ChangeClock('12HourClock');
      expect(calendar.LastPeriodInThisDay, equals(2));
    });

    test('Calendar last second in this minute', () {
      expect(calendar.LastSecondInThisMinute, equals(59));
    });

    test('Calendar last year in this era', () {
      calendar.ChangeCalendarSystem('GregorianCalendar');
      expect(calendar.LastYearInThisEra, equals(9999));
    });

    test('Calendar minute', () {
      expect(calendar.Minute, inInclusiveRange(0, 59));
    });

    test('Calendar month', () {
      expect(calendar.Month, inInclusiveRange(1, 12));
    });

    test('Calendar nanosecond', () {
      expect(calendar.Nanosecond, isPositive);
    });

    test('Calendar days in month', () {
      calendar.ChangeCalendarSystem('GregorianCalendar');
      expect(calendar.NumberOfDaysInThisMonth, isIn([28, 29, 30, 31]));
    });

    test('Calendar number of eras', () {
      calendar.ChangeCalendarSystem('GregorianCalendar');
      expect(calendar.NumberOfEras, equals(1));
    });

    test('Calendar number of hours in this period', () {
      calendar.ChangeClock('24HourClock');
      expect(calendar.NumberOfHoursInThisPeriod, equals(24));
    });

    test('Calendar number of minutes in this hour', () {
      expect(calendar.NumberOfMinutesInThisHour, equals(60));
    });

    test('Calendar number of months in this year', () {
      expect(calendar.NumberOfMonthsInThisYear, equals(12));
    });

    test('Calendar number of periods in this day', () {
      calendar.ChangeClock('24HourClock');
      expect(calendar.NumberOfPeriodsInThisDay, equals(1));
    });

    test('Calendar number of seconds in this minute', () {
      // Allow for a leap second
      expect(calendar.NumberOfSecondsInThisMinute, closeTo(60, 1));
    });

    test('Calendar resolved language', () {
      final resolvedLanguage = calendar.ResolvedLanguage;

      // Should be something like en-US
      expect(resolvedLanguage[2], equals('-'));
      expect(resolvedLanguage.length, equals(5));
    });

    test('Calendar number of years in this era', () {
      calendar
        ..ChangeCalendarSystem('JapaneseCalendar')
        ..Era = 3; // 昭和 (Showa)
      expect(calendar.NumberOfYearsInThisEra, equals(64));
    });

    test('Change numeral system', () {
      final arabicNumerals = '٠١٢٣٤٥٦٧٨٩'.split('');
      calendar.NumeralSystem = 'arab';
      final date = calendar.MonthAsPaddedNumericString(2);

      expect(arabicNumerals, contains(date[0]));
      expect(arabicNumerals, contains(date[1]));
    });

    test('Calendar current period', () {
      calendar.ChangeClock('12HourClock');
      expect(calendar.Period, isIn([1, 2]));
    });

    test('Calendar second', () {
      expect(calendar.Second, inInclusiveRange(0, 59));
    });

    test('Calendar year', () {
      calendar.ChangeCalendarSystem('GregorianCalendar');
      expect(calendar.Year, greaterThanOrEqualTo(2021));
    });

    test('Day of week for current month is the same across Dart and WinRT', () {
      // Dart day of week goes [1..7] for [Mon..Sun]
      final date = DateTime.now();
      final firstOfMonth = date.add(Duration(days: -date.day + 1));
      final dartDay = firstOfMonth.weekday == 7 ? 0 : firstOfMonth.weekday;

      // WinRT day of week goes [0..6] for [Sun..Sat]
      calendar.AddDays(-calendar.Day + 1);
      final winrtDay = calendar.DayOfWeek;

      expect(winrtDay, equals(dartDay));
    });

    test('Calendar add years', () {
      calendar.AddYears(10);
      expect(calendar.Year, greaterThanOrEqualTo(2031));
    });

    test('Calendar subtract years', () {
      // These tests will start failing in 2100 :)
      calendar.AddYears(-100);
      expect(calendar.Year, inInclusiveRange(1921, 2000));
      calendar.AddYears(-100);
      expect(calendar.Year, inInclusiveRange(1821, 1900));
      calendar.AddYears(-100);
      expect(calendar.Year, inInclusiveRange(1721, 1800));
    });

    test('Calendar clone', () {
      final calendar2 = ICalendar(calendar.Clone());

      expect(
          calendar2.runtimeClassName, equals('Windows.Globalization.Calendar'));
      expect(calendar2.Year, equals(calendar.Year));
    });

    test('Compare equality', () {
      final original = calendar.Clone();
      calendar
        ..AddDays(1)
        ..AddDays(-1);
      final compare = calendar.Compare(original);
      expect(compare, isZero);
    });

    test('Compare positive', () {
      final original = calendar.Clone();
      calendar
        ..AddDays(2)
        ..AddDays(-1);
      final compare = calendar.Compare(original);
      expect(compare, isPositive);
    });

    test('Compare negative', () {
      final original = calendar.Clone();
      calendar
        ..AddDays(2)
        ..AddDays(-3);
      final compare = calendar.Compare(original);
      expect(compare, isNegative);
    });

    test('Get date / time', () {
      final winrtDate = calendar.GetDateTime();
      final dartDate = DateTime.now().toUtc();

      expect(winrtDate.year, equals(dartDate.year));
      expect(winrtDate.month, equals(dartDate.month));
      expect(winrtDate.day, equals(dartDate.day));
      expect(winrtDate.hour, equals(dartDate.hour));
      expect(winrtDate.minute, equals(dartDate.minute));
      expect(winrtDate.second, closeTo(dartDate.second, 2)); // allow flex
    });

    test('Set date / time', () {
      final dartDate = DateTime.utc(2017, 9, 7, 17, 30);
      calendar.SetDateTime(dartDate);
      final winrtDate = calendar.GetDateTime();
      expect(winrtDate.year, equals(2017));
      expect(winrtDate.month, equals(9));
      expect(winrtDate.day, equals(7));
      expect(winrtDate.hour, equals(17));
      expect(winrtDate.minute, equals(30));
    });

    test('Calendar era name', () {
      calendar.ChangeCalendarSystem('GregorianCalendar');
      expect(calendar.EraAsFullString(), equals('A.D.'));
    });

    test('Calendar month as string', () {
      // Repeat to ensure that this doesn't fail because of some kind of memory
      // issue.
      for (var i = 0; i < 10000; i++) {
        final month = calendar.MonthAsFullString();
        expect(
            month,
            isIn([
              'January',
              'February',
              'March',
              'April',
              'May',
              'June',
              'July',
              'August',
              'September',
              'October',
              'November',
              'December'
            ]));
      }
    });

    test('Calendar month as truncated string', () {
      // Repeat to ensure that this doesn't fail because of some kind of memory
      // issue.
      for (var i = 0; i < 10000; i++) {
        final month = calendar.MonthAsString(3);
        expect(
            month,
            isIn([
              'Jan',
              'Feb',
              'Mar',
              'Apr',
              'May',
              'Jun',
              'Jul',
              'Aug',
              'Sep',
              'Oct',
              'Nov',
              'Dec'
            ]));
      }
    });

    tearDown(() {
      free(calendar.ptr);
      winrtUninitialize();
    });
  }
}
