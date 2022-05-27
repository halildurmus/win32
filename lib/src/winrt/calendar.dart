// ignore_for_file: non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../com/iinspectable.dart';
import '../combase.dart';
import '../winrt_helpers.dart';
import 'icalendar.dart';
import 'icalendarfactory.dart';
import 'icalendarfactory2.dart';
import 'itimezoneoncalendar.dart';

class Calendar extends IInspectable implements ICalendar, ITimeZoneOnCalendar {
  Calendar({Allocator allocator = calloc})
      : super(ActivateClass(_className, allocator: allocator));
  Calendar.fromPointer(super.ptr);

  static const _className = 'Windows.Globalization.Calendar';
  late final _iCalendar = ICalendar(toInterface(IID_ICalendar));
  late final _iTimeZoneOnCalendar =
      ITimeZoneOnCalendar(toInterface(IID_ITimeZoneOnCalendar));

  // ICalendarFactory
  static Calendar CreateCalendarDefaultCalendarAndClock(
      Pointer<COMObject> languages) {
    final factory = ICalendarFactory(
        CreateActivationFactory(_className, IID_ICalendarFactory));
    final result = factory.CreateCalendarDefaultCalendarAndClock(languages);
    return Calendar.fromPointer(result);
  }

  static Calendar CreateCalendar(
      Pointer<COMObject> languages, String calendar, String clock) {
    final factory = ICalendarFactory(
        CreateActivationFactory(_className, IID_ICalendarFactory));
    final result = factory.CreateCalendar(languages, calendar, clock);
    return Calendar.fromPointer(result);
  }

  // ICalendarFactory2
  static Calendar CreateCalendarWithTimeZone(Pointer<COMObject> languages,
      String calendar, String clock, String timeZoneId) {
    final factory = ICalendarFactory2(
        CreateActivationFactory(_className, IID_ICalendarFactory2));
    final result = factory.CreateCalendarWithTimeZone(
        languages, calendar, clock, timeZoneId);
    return Calendar.fromPointer(result);
  }

  @override
  int get Day => _iCalendar.Day;

  @override
  set Day(int value) => _iCalendar.Day = value;

  @override
  int get Era => _iCalendar.Era;

  @override
  set Era(int value) => _iCalendar.Era = value;

  @override
  int get Hour => _iCalendar.Hour;

  @override
  set Hour(int value) => _iCalendar.Hour = value;

  @override
  int get Minute => _iCalendar.Minute;

  @override
  set Minute(int value) => _iCalendar.Minute = value;

  @override
  int get Month => _iCalendar.Month;

  @override
  set Month(int value) => _iCalendar.Month = value;

  @override
  int get Nanosecond => _iCalendar.Nanosecond;

  @override
  set Nanosecond(int value) => _iCalendar.Nanosecond = value;

  @override
  String get NumeralSystem => _iCalendar.NumeralSystem;

  @override
  set NumeralSystem(String value) => _iCalendar.NumeralSystem = value;

  @override
  int get Period => _iCalendar.Period;

  @override
  set Period(int value) => _iCalendar.Period = value;

  @override
  int get Second => _iCalendar.Second;

  @override
  set Second(int value) => _iCalendar.Second = value;

  @override
  int get Year => _iCalendar.Year;

  @override
  set Year(int value) => _iCalendar.Year = value;

  @override
  void AddDays(int days) => _iCalendar.AddDays(days);

  @override
  void AddEras(int eras) => _iCalendar.AddEras(eras);

  @override
  void AddHours(int hours) => _iCalendar.AddHours(hours);

  @override
  void AddMinutes(int minutes) => _iCalendar.AddMinutes(minutes);

  @override
  void AddMonths(int months) => _iCalendar.AddMonths(months);

  @override
  void AddNanoseconds(int nanoseconds) =>
      _iCalendar.AddNanoseconds(nanoseconds);

  @override
  void AddPeriods(int periods) => _iCalendar.AddPeriods(periods);

  @override
  void AddSeconds(int seconds) => _iCalendar.AddSeconds(seconds);

  @override
  void AddWeeks(int weeks) => _iCalendar.AddWeeks(weeks);

  @override
  void AddYears(int years) => _iCalendar.AddYears(years);

  @override
  void ChangeCalendarSystem(String value) =>
      _iCalendar.ChangeCalendarSystem(value);

  @override
  void ChangeClock(String value) => _iCalendar.ChangeClock(value);

  @override
  void ChangeTimeZone(String timeZoneId) =>
      _iTimeZoneOnCalendar.ChangeTimeZone(timeZoneId);

  @override
  Pointer<COMObject> Clone() => _iCalendar.Clone();

  @override
  int Compare(Pointer<COMObject> other) => _iCalendar.Compare(other);

  @override
  int CompareDateTime(DateTime other) => _iCalendar.CompareDateTime(other);

  @override
  void CopyTo(Pointer<COMObject> other) => _iCalendar.CopyTo(other);

  @override
  String DayAsPaddedString(int minDigits) =>
      _iCalendar.DayAsPaddedString(minDigits);

  @override
  String DayAsString() => _iCalendar.DayAsString();

  @override
  int get DayOfWeek => _iCalendar.DayOfWeek;

  @override
  String DayOfWeekAsFullSoloString() => _iCalendar.DayOfWeekAsFullSoloString();

  @override
  String DayOfWeekAsFullString() => _iCalendar.DayOfWeekAsFullString();

  @override
  String DayOfWeekAsSoloString(int idealLength) =>
      _iCalendar.DayOfWeekAsSoloString(idealLength);

  @override
  String DayOfWeekAsString(int idealLength) =>
      _iCalendar.DayOfWeekAsString(idealLength);

  @override
  String EraAsFullString() => _iCalendar.EraAsFullString();

  @override
  String EraAsString(int idealLength) => _iCalendar.EraAsString(idealLength);

  @override
  int get FirstDayInThisMonth => _iCalendar.FirstDayInThisMonth;

  @override
  int get FirstEra => _iCalendar.FirstEra;

  @override
  int get FirstHourInThisPeriod => _iCalendar.FirstHourInThisPeriod;

  @override
  int get FirstMinuteInThisHour => _iCalendar.FirstMinuteInThisHour;

  @override
  int get FirstMonthInThisYear => _iCalendar.FirstMonthInThisYear;

  @override
  int get FirstPeriodInThisDay => _iCalendar.FirstPeriodInThisDay;

  @override
  int get FirstSecondInThisMinute => _iCalendar.FirstSecondInThisMinute;

  @override
  int get FirstYearInThisEra => _iCalendar.FirstYearInThisEra;

  @override
  String GetCalendarSystem() => _iCalendar.GetCalendarSystem();

  @override
  String GetClock() => _iCalendar.GetClock();

  @override
  DateTime GetDateTime() => _iCalendar.GetDateTime();

  @override
  String GetTimeZone() => _iTimeZoneOnCalendar.GetTimeZone();

  @override
  String HourAsPaddedString(int minDigits) =>
      _iCalendar.HourAsPaddedString(minDigits);

  @override
  String HourAsString() => _iCalendar.HourAsString();

  @override
  bool get IsDaylightSavingTime => _iCalendar.IsDaylightSavingTime;

  @override
  List<String> get Languages => _iCalendar.Languages;

  @override
  int get LastDayInThisMonth => _iCalendar.LastDayInThisMonth;

  @override
  int get LastEra => _iCalendar.LastEra;

  @override
  int get LastHourInThisPeriod => _iCalendar.LastHourInThisPeriod;

  @override
  int get LastMinuteInThisHour => _iCalendar.LastMinuteInThisHour;

  @override
  int get LastMonthInThisYear => _iCalendar.LastMonthInThisYear;

  @override
  int get LastPeriodInThisDay => _iCalendar.LastPeriodInThisDay;

  @override
  int get LastSecondInThisMinute => _iCalendar.LastSecondInThisMinute;

  @override
  int get LastYearInThisEra => _iCalendar.LastYearInThisEra;

  @override
  String MinuteAsPaddedString(int minDigits) =>
      _iCalendar.MinuteAsPaddedString(minDigits);

  @override
  String MinuteAsString() => _iCalendar.MinuteAsString();

  @override
  String MonthAsFullSoloString() => _iCalendar.MonthAsFullSoloString();

  @override
  String MonthAsFullString() => _iCalendar.MonthAsFullString();

  @override
  String MonthAsNumericString() => _iCalendar.MonthAsNumericString();

  @override
  String MonthAsPaddedNumericString(int minDigits) =>
      _iCalendar.MonthAsPaddedNumericString(minDigits);

  @override
  String MonthAsSoloString(int idealLength) =>
      _iCalendar.MonthAsSoloString(idealLength);

  @override
  String MonthAsString(int idealLength) =>
      _iCalendar.MonthAsString(idealLength);

  @override
  String NanosecondAsPaddedString(int minDigits) =>
      _iCalendar.NanosecondAsPaddedString(minDigits);

  @override
  String NanosecondAsString() => _iCalendar.NanosecondAsString();

  @override
  int get NumberOfDaysInThisMonth => _iCalendar.NumberOfDaysInThisMonth;

  @override
  int get NumberOfEras => _iCalendar.NumberOfEras;

  @override
  int get NumberOfHoursInThisPeriod => _iCalendar.NumberOfHoursInThisPeriod;

  @override
  int get NumberOfMinutesInThisHour => _iCalendar.NumberOfMinutesInThisHour;

  @override
  int get NumberOfMonthsInThisYear => _iCalendar.NumberOfMonthsInThisYear;

  @override
  int get NumberOfPeriodsInThisDay => _iCalendar.NumberOfPeriodsInThisDay;

  @override
  int get NumberOfSecondsInThisMinute => _iCalendar.NumberOfSecondsInThisMinute;

  @override
  int get NumberOfYearsInThisEra => _iCalendar.NumberOfYearsInThisEra;

  @override
  String PeriodAsFullString() => _iCalendar.PeriodAsFullString();

  @override
  String PeriodAsString(int idealLength) =>
      _iCalendar.PeriodAsString(idealLength);

  @override
  String get ResolvedLanguage => _iCalendar.ResolvedLanguage;

  @override
  String SecondAsPaddedString(int minDigits) =>
      _iCalendar.SecondAsPaddedString(minDigits);

  @override
  String SecondAsString() => _iCalendar.SecondAsString();

  @override
  void SetDateTime(DateTime value) => _iCalendar.SetDateTime(value);

  @override
  void SetToMax() => _iCalendar.SetToMax();

  @override
  void SetToMin() => _iCalendar.SetToMin();

  @override
  void SetToNow() => _iCalendar.SetToNow();

  @override
  String TimeZoneAsFullString() => _iTimeZoneOnCalendar.TimeZoneAsFullString();

  @override
  String TimeZoneAsString(int idealLength) =>
      _iTimeZoneOnCalendar.TimeZoneAsString(idealLength);

  @override
  String YearAsPaddedString(int minDigits) =>
      _iCalendar.YearAsPaddedString(minDigits);

  @override
  String YearAsString() => _iCalendar.YearAsString();

  @override
  String YearAsTruncatedString(int remainingDigits) =>
      _iCalendar.YearAsTruncatedString(remainingDigits);
}
