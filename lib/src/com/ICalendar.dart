// ICalendar.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../macros.dart';
import '../ole32.dart';
import '../structs.dart';
import '../structs.g.dart';
import '../utils.dart';

import '../winrt/winrt_constants.dart';

import 'IInspectable.dart';

/// @nodoc
const IID_ICalendar = '{CA30221D-86D9-40FB-A26B-D44EB7CF08EA}';

typedef _Clone_Native = Int32 Function(Pointer obj, Pointer<Pointer> result);
typedef _Clone_Dart = int Function(Pointer obj, Pointer<Pointer> result);

typedef _SetToMin_Native = Int32 Function(Pointer obj);
typedef _SetToMin_Dart = int Function(Pointer obj);

typedef _SetToMax_Native = Int32 Function(Pointer obj);
typedef _SetToMax_Dart = int Function(Pointer obj);

typedef _get_Languages_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> value);
typedef _get_Languages_Dart = int Function(Pointer obj, Pointer<IntPtr> value);

typedef _get_NumeralSystem_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> value);
typedef _get_NumeralSystem_Dart = int Function(
    Pointer obj, Pointer<IntPtr> value);

typedef _put_NumeralSystem_Native = Int32 Function(Pointer obj, IntPtr value);
typedef _put_NumeralSystem_Dart = int Function(Pointer obj, int value);

typedef _GetCalendarSystem_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> result);
typedef _GetCalendarSystem_Dart = int Function(
    Pointer obj, Pointer<IntPtr> result);

typedef _ChangeCalendarSystem_Native = Int32 Function(
    Pointer obj, IntPtr value);
typedef _ChangeCalendarSystem_Dart = int Function(Pointer obj, int value);

typedef _GetClock_Native = Int32 Function(Pointer obj, Pointer<IntPtr> result);
typedef _GetClock_Dart = int Function(Pointer obj, Pointer<IntPtr> result);

typedef _ChangeClock_Native = Int32 Function(Pointer obj, IntPtr value);
typedef _ChangeClock_Dart = int Function(Pointer obj, int value);

typedef _GetDateTime_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> result);
typedef _GetDateTime_Dart = int Function(Pointer obj, Pointer<Uint32> result);

typedef _SetDateTime_Native = Int32 Function(Pointer obj, Uint32 value);
typedef _SetDateTime_Dart = int Function(Pointer obj, int value);

typedef _SetToNow_Native = Int32 Function(Pointer obj);
typedef _SetToNow_Dart = int Function(Pointer obj);

typedef _get_FirstEra_Native = Int32 Function(
    Pointer obj, Pointer<Int32> value);
typedef _get_FirstEra_Dart = int Function(Pointer obj, Pointer<Int32> value);

typedef _get_LastEra_Native = Int32 Function(Pointer obj, Pointer<Int32> value);
typedef _get_LastEra_Dart = int Function(Pointer obj, Pointer<Int32> value);

typedef _get_NumberOfEras_Native = Int32 Function(
    Pointer obj, Pointer<Int32> value);
typedef _get_NumberOfEras_Dart = int Function(
    Pointer obj, Pointer<Int32> value);

typedef _get_Era_Native = Int32 Function(Pointer obj, Pointer<Int32> value);
typedef _get_Era_Dart = int Function(Pointer obj, Pointer<Int32> value);

typedef _put_Era_Native = Int32 Function(Pointer obj, Int32 value);
typedef _put_Era_Dart = int Function(Pointer obj, int value);

typedef _AddEras_Native = Int32 Function(Pointer obj, Int32 eras);
typedef _AddEras_Dart = int Function(Pointer obj, int eras);

typedef _EraAsFullString_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> result);
typedef _EraAsFullString_Dart = int Function(
    Pointer obj, Pointer<IntPtr> result);

typedef _EraAsString_Native = Int32 Function(
    Pointer obj, Int32 idealLength, Pointer<IntPtr> result);
typedef _EraAsString_Dart = int Function(
    Pointer obj, int idealLength, Pointer<IntPtr> result);

typedef _get_FirstYearInThisEra_Native = Int32 Function(
    Pointer obj, Pointer<Int32> value);
typedef _get_FirstYearInThisEra_Dart = int Function(
    Pointer obj, Pointer<Int32> value);

typedef _get_LastYearInThisEra_Native = Int32 Function(
    Pointer obj, Pointer<Int32> value);
typedef _get_LastYearInThisEra_Dart = int Function(
    Pointer obj, Pointer<Int32> value);

typedef _get_NumberOfYearsInThisEra_Native = Int32 Function(
    Pointer obj, Pointer<Int32> value);
typedef _get_NumberOfYearsInThisEra_Dart = int Function(
    Pointer obj, Pointer<Int32> value);

typedef _get_Year_Native = Int32 Function(Pointer obj, Pointer<Int32> value);
typedef _get_Year_Dart = int Function(Pointer obj, Pointer<Int32> value);

typedef _put_Year_Native = Int32 Function(Pointer obj, Int32 value);
typedef _put_Year_Dart = int Function(Pointer obj, int value);

typedef _AddYears_Native = Int32 Function(Pointer obj, Int32 years);
typedef _AddYears_Dart = int Function(Pointer obj, int years);

typedef _YearAsString_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> result);
typedef _YearAsString_Dart = int Function(Pointer obj, Pointer<IntPtr> result);

typedef _YearAsTruncatedString_Native = Int32 Function(
    Pointer obj, Int32 remainingDigits, Pointer<IntPtr> result);
typedef _YearAsTruncatedString_Dart = int Function(
    Pointer obj, int remainingDigits, Pointer<IntPtr> result);

typedef _YearAsPaddedString_Native = Int32 Function(
    Pointer obj, Int32 minDigits, Pointer<IntPtr> result);
typedef _YearAsPaddedString_Dart = int Function(
    Pointer obj, int minDigits, Pointer<IntPtr> result);

typedef _get_FirstMonthInThisYear_Native = Int32 Function(
    Pointer obj, Pointer<Int32> value);
typedef _get_FirstMonthInThisYear_Dart = int Function(
    Pointer obj, Pointer<Int32> value);

typedef _get_LastMonthInThisYear_Native = Int32 Function(
    Pointer obj, Pointer<Int32> value);
typedef _get_LastMonthInThisYear_Dart = int Function(
    Pointer obj, Pointer<Int32> value);

typedef _get_NumberOfMonthsInThisYear_Native = Int32 Function(
    Pointer obj, Pointer<Int32> value);
typedef _get_NumberOfMonthsInThisYear_Dart = int Function(
    Pointer obj, Pointer<Int32> value);

typedef _get_Month_Native = Int32 Function(Pointer obj, Pointer<Int32> value);
typedef _get_Month_Dart = int Function(Pointer obj, Pointer<Int32> value);

typedef _put_Month_Native = Int32 Function(Pointer obj, Int32 value);
typedef _put_Month_Dart = int Function(Pointer obj, int value);

typedef _AddMonths_Native = Int32 Function(Pointer obj, Int32 months);
typedef _AddMonths_Dart = int Function(Pointer obj, int months);

typedef _MonthAsFullString_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> result);
typedef _MonthAsFullString_Dart = int Function(
    Pointer obj, Pointer<IntPtr> result);

typedef _MonthAsString_Native = Int32 Function(
    Pointer obj, Int32 idealLength, Pointer<IntPtr> result);
typedef _MonthAsString_Dart = int Function(
    Pointer obj, int idealLength, Pointer<IntPtr> result);

typedef _MonthAsFullSoloString_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> result);
typedef _MonthAsFullSoloString_Dart = int Function(
    Pointer obj, Pointer<IntPtr> result);

typedef _MonthAsSoloString_Native = Int32 Function(
    Pointer obj, Int32 idealLength, Pointer<IntPtr> result);
typedef _MonthAsSoloString_Dart = int Function(
    Pointer obj, int idealLength, Pointer<IntPtr> result);

typedef _MonthAsNumericString_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> result);
typedef _MonthAsNumericString_Dart = int Function(
    Pointer obj, Pointer<IntPtr> result);

typedef _MonthAsPaddedNumericString_Native = Int32 Function(
    Pointer obj, Int32 minDigits, Pointer<IntPtr> result);
typedef _MonthAsPaddedNumericString_Dart = int Function(
    Pointer obj, int minDigits, Pointer<IntPtr> result);

typedef _AddWeeks_Native = Int32 Function(Pointer obj, Int32 weeks);
typedef _AddWeeks_Dart = int Function(Pointer obj, int weeks);

typedef _get_FirstDayInThisMonth_Native = Int32 Function(
    Pointer obj, Pointer<Int32> value);
typedef _get_FirstDayInThisMonth_Dart = int Function(
    Pointer obj, Pointer<Int32> value);

typedef _get_LastDayInThisMonth_Native = Int32 Function(
    Pointer obj, Pointer<Int32> value);
typedef _get_LastDayInThisMonth_Dart = int Function(
    Pointer obj, Pointer<Int32> value);

typedef _get_NumberOfDaysInThisMonth_Native = Int32 Function(
    Pointer obj, Pointer<Int32> value);
typedef _get_NumberOfDaysInThisMonth_Dart = int Function(
    Pointer obj, Pointer<Int32> value);

typedef _get_Day_Native = Int32 Function(Pointer obj, Pointer<Int32> value);
typedef _get_Day_Dart = int Function(Pointer obj, Pointer<Int32> value);

typedef _put_Day_Native = Int32 Function(Pointer obj, Int32 value);
typedef _put_Day_Dart = int Function(Pointer obj, int value);

typedef _AddDays_Native = Int32 Function(Pointer obj, Int32 days);
typedef _AddDays_Dart = int Function(Pointer obj, int days);

typedef _DayAsString_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> result);
typedef _DayAsString_Dart = int Function(Pointer obj, Pointer<IntPtr> result);

typedef _DayAsPaddedString_Native = Int32 Function(
    Pointer obj, Int32 minDigits, Pointer<IntPtr> result);
typedef _DayAsPaddedString_Dart = int Function(
    Pointer obj, int minDigits, Pointer<IntPtr> result);

typedef _get_DayOfWeek_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> value);
typedef _get_DayOfWeek_Dart = int Function(Pointer obj, Pointer<Uint32> value);

typedef _DayOfWeekAsFullString_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> result);
typedef _DayOfWeekAsFullString_Dart = int Function(
    Pointer obj, Pointer<IntPtr> result);

typedef _DayOfWeekAsString_Native = Int32 Function(
    Pointer obj, Int32 idealLength, Pointer<IntPtr> result);
typedef _DayOfWeekAsString_Dart = int Function(
    Pointer obj, int idealLength, Pointer<IntPtr> result);

typedef _DayOfWeekAsFullSoloString_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> result);
typedef _DayOfWeekAsFullSoloString_Dart = int Function(
    Pointer obj, Pointer<IntPtr> result);

typedef _DayOfWeekAsSoloString_Native = Int32 Function(
    Pointer obj, Int32 idealLength, Pointer<IntPtr> result);
typedef _DayOfWeekAsSoloString_Dart = int Function(
    Pointer obj, int idealLength, Pointer<IntPtr> result);

typedef _get_FirstPeriodInThisDay_Native = Int32 Function(
    Pointer obj, Pointer<Int32> value);
typedef _get_FirstPeriodInThisDay_Dart = int Function(
    Pointer obj, Pointer<Int32> value);

typedef _get_LastPeriodInThisDay_Native = Int32 Function(
    Pointer obj, Pointer<Int32> value);
typedef _get_LastPeriodInThisDay_Dart = int Function(
    Pointer obj, Pointer<Int32> value);

typedef _get_NumberOfPeriodsInThisDay_Native = Int32 Function(
    Pointer obj, Pointer<Int32> value);
typedef _get_NumberOfPeriodsInThisDay_Dart = int Function(
    Pointer obj, Pointer<Int32> value);

typedef _get_Period_Native = Int32 Function(Pointer obj, Pointer<Int32> value);
typedef _get_Period_Dart = int Function(Pointer obj, Pointer<Int32> value);

typedef _put_Period_Native = Int32 Function(Pointer obj, Int32 value);
typedef _put_Period_Dart = int Function(Pointer obj, int value);

typedef _AddPeriods_Native = Int32 Function(Pointer obj, Int32 periods);
typedef _AddPeriods_Dart = int Function(Pointer obj, int periods);

typedef _PeriodAsFullString_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> result);
typedef _PeriodAsFullString_Dart = int Function(
    Pointer obj, Pointer<IntPtr> result);

typedef _PeriodAsString_Native = Int32 Function(
    Pointer obj, Int32 idealLength, Pointer<IntPtr> result);
typedef _PeriodAsString_Dart = int Function(
    Pointer obj, int idealLength, Pointer<IntPtr> result);

typedef _get_FirstHourInThisPeriod_Native = Int32 Function(
    Pointer obj, Pointer<Int32> value);
typedef _get_FirstHourInThisPeriod_Dart = int Function(
    Pointer obj, Pointer<Int32> value);

typedef _get_LastHourInThisPeriod_Native = Int32 Function(
    Pointer obj, Pointer<Int32> value);
typedef _get_LastHourInThisPeriod_Dart = int Function(
    Pointer obj, Pointer<Int32> value);

typedef _get_NumberOfHoursInThisPeriod_Native = Int32 Function(
    Pointer obj, Pointer<Int32> value);
typedef _get_NumberOfHoursInThisPeriod_Dart = int Function(
    Pointer obj, Pointer<Int32> value);

typedef _get_Hour_Native = Int32 Function(Pointer obj, Pointer<Int32> value);
typedef _get_Hour_Dart = int Function(Pointer obj, Pointer<Int32> value);

typedef _put_Hour_Native = Int32 Function(Pointer obj, Int32 value);
typedef _put_Hour_Dart = int Function(Pointer obj, int value);

typedef _AddHours_Native = Int32 Function(Pointer obj, Int32 hours);
typedef _AddHours_Dart = int Function(Pointer obj, int hours);

typedef _HourAsString_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> result);
typedef _HourAsString_Dart = int Function(Pointer obj, Pointer<IntPtr> result);

typedef _HourAsPaddedString_Native = Int32 Function(
    Pointer obj, Int32 minDigits, Pointer<IntPtr> result);
typedef _HourAsPaddedString_Dart = int Function(
    Pointer obj, int minDigits, Pointer<IntPtr> result);

typedef _get_Minute_Native = Int32 Function(Pointer obj, Pointer<Int32> value);
typedef _get_Minute_Dart = int Function(Pointer obj, Pointer<Int32> value);

typedef _put_Minute_Native = Int32 Function(Pointer obj, Int32 value);
typedef _put_Minute_Dart = int Function(Pointer obj, int value);

typedef _AddMinutes_Native = Int32 Function(Pointer obj, Int32 minutes);
typedef _AddMinutes_Dart = int Function(Pointer obj, int minutes);

typedef _MinuteAsString_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> result);
typedef _MinuteAsString_Dart = int Function(
    Pointer obj, Pointer<IntPtr> result);

typedef _MinuteAsPaddedString_Native = Int32 Function(
    Pointer obj, Int32 minDigits, Pointer<IntPtr> result);
typedef _MinuteAsPaddedString_Dart = int Function(
    Pointer obj, int minDigits, Pointer<IntPtr> result);

typedef _get_Second_Native = Int32 Function(Pointer obj, Pointer<Int32> value);
typedef _get_Second_Dart = int Function(Pointer obj, Pointer<Int32> value);

typedef _put_Second_Native = Int32 Function(Pointer obj, Int32 value);
typedef _put_Second_Dart = int Function(Pointer obj, int value);

typedef _AddSeconds_Native = Int32 Function(Pointer obj, Int32 seconds);
typedef _AddSeconds_Dart = int Function(Pointer obj, int seconds);

typedef _SecondAsString_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> result);
typedef _SecondAsString_Dart = int Function(
    Pointer obj, Pointer<IntPtr> result);

typedef _SecondAsPaddedString_Native = Int32 Function(
    Pointer obj, Int32 minDigits, Pointer<IntPtr> result);
typedef _SecondAsPaddedString_Dart = int Function(
    Pointer obj, int minDigits, Pointer<IntPtr> result);

typedef _get_Nanosecond_Native = Int32 Function(
    Pointer obj, Pointer<Int32> value);
typedef _get_Nanosecond_Dart = int Function(Pointer obj, Pointer<Int32> value);

typedef _put_Nanosecond_Native = Int32 Function(Pointer obj, Int32 value);
typedef _put_Nanosecond_Dart = int Function(Pointer obj, int value);

typedef _AddNanoseconds_Native = Int32 Function(Pointer obj, Int32 nanoseconds);
typedef _AddNanoseconds_Dart = int Function(Pointer obj, int nanoseconds);

typedef _NanosecondAsString_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> result);
typedef _NanosecondAsString_Dart = int Function(
    Pointer obj, Pointer<IntPtr> result);

typedef _NanosecondAsPaddedString_Native = Int32 Function(
    Pointer obj, Int32 minDigits, Pointer<IntPtr> result);
typedef _NanosecondAsPaddedString_Dart = int Function(
    Pointer obj, int minDigits, Pointer<IntPtr> result);

typedef _Compare_Native = Int32 Function(
    Pointer obj, Pointer other, Pointer<Int32> result);
typedef _Compare_Dart = int Function(
    Pointer obj, Pointer other, Pointer<Int32> result);

typedef _CompareDateTime_Native = Int32 Function(
    Pointer obj, Uint32 other, Pointer<Int32> result);
typedef _CompareDateTime_Dart = int Function(
    Pointer obj, int other, Pointer<Int32> result);

typedef _CopyTo_Native = Int32 Function(Pointer obj, Pointer other);
typedef _CopyTo_Dart = int Function(Pointer obj, Pointer other);

typedef _get_FirstMinuteInThisHour_Native = Int32 Function(
    Pointer obj, Pointer<Int32> value);
typedef _get_FirstMinuteInThisHour_Dart = int Function(
    Pointer obj, Pointer<Int32> value);

typedef _get_LastMinuteInThisHour_Native = Int32 Function(
    Pointer obj, Pointer<Int32> value);
typedef _get_LastMinuteInThisHour_Dart = int Function(
    Pointer obj, Pointer<Int32> value);

typedef _get_NumberOfMinutesInThisHour_Native = Int32 Function(
    Pointer obj, Pointer<Int32> value);
typedef _get_NumberOfMinutesInThisHour_Dart = int Function(
    Pointer obj, Pointer<Int32> value);

typedef _get_FirstSecondInThisMinute_Native = Int32 Function(
    Pointer obj, Pointer<Int32> value);
typedef _get_FirstSecondInThisMinute_Dart = int Function(
    Pointer obj, Pointer<Int32> value);

typedef _get_LastSecondInThisMinute_Native = Int32 Function(
    Pointer obj, Pointer<Int32> value);
typedef _get_LastSecondInThisMinute_Dart = int Function(
    Pointer obj, Pointer<Int32> value);

typedef _get_NumberOfSecondsInThisMinute_Native = Int32 Function(
    Pointer obj, Pointer<Int32> value);
typedef _get_NumberOfSecondsInThisMinute_Dart = int Function(
    Pointer obj, Pointer<Int32> value);

typedef _get_ResolvedLanguage_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> value);
typedef _get_ResolvedLanguage_Dart = int Function(
    Pointer obj, Pointer<IntPtr> value);

typedef _get_IsDaylightSavingTime_Native = Int32 Function(
    Pointer obj, Pointer< /* Boolean */ Uint8> value);
typedef _get_IsDaylightSavingTime_Dart = int Function(
    Pointer obj, Pointer< /* Boolean */ Uint8> value);

/// {@category Interface}
/// {@category winrt}
class ICalendar extends IInspectable {
  // vtable begins at 6, ends at 103

  ICalendar(Pointer<COMObject> ptr) : super(ptr);

  int Clone(Pointer<Pointer> result) => ptr.ref.lpVtbl.value
      .elementAt(6)
      .cast<Pointer<NativeFunction<_Clone_Native>>>()
      .value
      .asFunction<_Clone_Dart>()(ptr.ref.lpVtbl, result);

  int SetToMin() => ptr.ref.lpVtbl.value
      .elementAt(7)
      .cast<Pointer<NativeFunction<_SetToMin_Native>>>()
      .value
      .asFunction<_SetToMin_Dart>()(ptr.ref.lpVtbl);

  int SetToMax() => ptr.ref.lpVtbl.value
      .elementAt(8)
      .cast<Pointer<NativeFunction<_SetToMax_Native>>>()
      .value
      .asFunction<_SetToMax_Dart>()(ptr.ref.lpVtbl);

  int get Languages {
    final retValuePtr = calloc<IntPtr>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<Pointer<NativeFunction<_get_Languages_Native>>>()
          .value
          .asFunction<_get_Languages_Dart>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get NumeralSystem {
    final retValuePtr = calloc<IntPtr>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<Pointer<NativeFunction<_get_NumeralSystem_Native>>>()
          .value
          .asFunction<_get_NumeralSystem_Dart>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set NumeralSystem(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(11)
        .cast<Pointer<NativeFunction<_put_NumeralSystem_Native>>>()
        .value
        .asFunction<_put_NumeralSystem_Dart>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int GetCalendarSystem(Pointer<IntPtr> result) => ptr.ref.lpVtbl.value
      .elementAt(12)
      .cast<Pointer<NativeFunction<_GetCalendarSystem_Native>>>()
      .value
      .asFunction<_GetCalendarSystem_Dart>()(ptr.ref.lpVtbl, result);

  int ChangeCalendarSystem(int value) => ptr.ref.lpVtbl.value
      .elementAt(13)
      .cast<Pointer<NativeFunction<_ChangeCalendarSystem_Native>>>()
      .value
      .asFunction<_ChangeCalendarSystem_Dart>()(ptr.ref.lpVtbl, value);

  int GetClock(Pointer<IntPtr> result) => ptr.ref.lpVtbl.value
      .elementAt(14)
      .cast<Pointer<NativeFunction<_GetClock_Native>>>()
      .value
      .asFunction<_GetClock_Dart>()(ptr.ref.lpVtbl, result);

  int ChangeClock(int value) => ptr.ref.lpVtbl.value
      .elementAt(15)
      .cast<Pointer<NativeFunction<_ChangeClock_Native>>>()
      .value
      .asFunction<_ChangeClock_Dart>()(ptr.ref.lpVtbl, value);

  int GetDateTime(Pointer<Uint32> result) => ptr.ref.lpVtbl.value
      .elementAt(16)
      .cast<Pointer<NativeFunction<_GetDateTime_Native>>>()
      .value
      .asFunction<_GetDateTime_Dart>()(ptr.ref.lpVtbl, result);

  int SetDateTime(int value) => ptr.ref.lpVtbl.value
      .elementAt(17)
      .cast<Pointer<NativeFunction<_SetDateTime_Native>>>()
      .value
      .asFunction<_SetDateTime_Dart>()(ptr.ref.lpVtbl, value);

  int SetToNow() => ptr.ref.lpVtbl.value
      .elementAt(18)
      .cast<Pointer<NativeFunction<_SetToNow_Native>>>()
      .value
      .asFunction<_SetToNow_Dart>()(ptr.ref.lpVtbl);

  int get FirstEra {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<Pointer<NativeFunction<_get_FirstEra_Native>>>()
          .value
          .asFunction<_get_FirstEra_Dart>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get LastEra {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<Pointer<NativeFunction<_get_LastEra_Native>>>()
          .value
          .asFunction<_get_LastEra_Dart>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get NumberOfEras {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<Pointer<NativeFunction<_get_NumberOfEras_Native>>>()
          .value
          .asFunction<_get_NumberOfEras_Dart>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get Era {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<Pointer<NativeFunction<_get_Era_Native>>>()
          .value
          .asFunction<_get_Era_Dart>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set Era(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(23)
        .cast<Pointer<NativeFunction<_put_Era_Native>>>()
        .value
        .asFunction<_put_Era_Dart>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int AddEras(int eras) => ptr.ref.lpVtbl.value
      .elementAt(24)
      .cast<Pointer<NativeFunction<_AddEras_Native>>>()
      .value
      .asFunction<_AddEras_Dart>()(ptr.ref.lpVtbl, eras);

  int EraAsFullString(Pointer<IntPtr> result) => ptr.ref.lpVtbl.value
      .elementAt(25)
      .cast<Pointer<NativeFunction<_EraAsFullString_Native>>>()
      .value
      .asFunction<_EraAsFullString_Dart>()(ptr.ref.lpVtbl, result);

  int EraAsString(int idealLength, Pointer<IntPtr> result) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<Pointer<NativeFunction<_EraAsString_Native>>>()
          .value
          .asFunction<_EraAsString_Dart>()(ptr.ref.lpVtbl, idealLength, result);

  int get FirstYearInThisEra {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
              .elementAt(27)
              .cast<Pointer<NativeFunction<_get_FirstYearInThisEra_Native>>>()
              .value
              .asFunction<_get_FirstYearInThisEra_Dart>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get LastYearInThisEra {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
              .elementAt(28)
              .cast<Pointer<NativeFunction<_get_LastYearInThisEra_Native>>>()
              .value
              .asFunction<_get_LastYearInThisEra_Dart>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get NumberOfYearsInThisEra {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<Pointer<NativeFunction<_get_NumberOfYearsInThisEra_Native>>>()
          .value
          .asFunction<
              _get_NumberOfYearsInThisEra_Dart>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get Year {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<Pointer<NativeFunction<_get_Year_Native>>>()
          .value
          .asFunction<_get_Year_Dart>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set Year(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(31)
        .cast<Pointer<NativeFunction<_put_Year_Native>>>()
        .value
        .asFunction<_put_Year_Dart>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int AddYears(int years) => ptr.ref.lpVtbl.value
      .elementAt(32)
      .cast<Pointer<NativeFunction<_AddYears_Native>>>()
      .value
      .asFunction<_AddYears_Dart>()(ptr.ref.lpVtbl, years);

  int YearAsString(Pointer<IntPtr> result) => ptr.ref.lpVtbl.value
      .elementAt(33)
      .cast<Pointer<NativeFunction<_YearAsString_Native>>>()
      .value
      .asFunction<_YearAsString_Dart>()(ptr.ref.lpVtbl, result);

  int YearAsTruncatedString(int remainingDigits, Pointer<IntPtr> result) =>
      ptr.ref.lpVtbl.value
              .elementAt(34)
              .cast<Pointer<NativeFunction<_YearAsTruncatedString_Native>>>()
              .value
              .asFunction<_YearAsTruncatedString_Dart>()(
          ptr.ref.lpVtbl, remainingDigits, result);

  int YearAsPaddedString(int minDigits, Pointer<IntPtr> result) =>
      ptr.ref.lpVtbl.value
              .elementAt(35)
              .cast<Pointer<NativeFunction<_YearAsPaddedString_Native>>>()
              .value
              .asFunction<_YearAsPaddedString_Dart>()(
          ptr.ref.lpVtbl, minDigits, result);

  int get FirstMonthInThisYear {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
              .elementAt(36)
              .cast<Pointer<NativeFunction<_get_FirstMonthInThisYear_Native>>>()
              .value
              .asFunction<_get_FirstMonthInThisYear_Dart>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get LastMonthInThisYear {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
              .elementAt(37)
              .cast<Pointer<NativeFunction<_get_LastMonthInThisYear_Native>>>()
              .value
              .asFunction<_get_LastMonthInThisYear_Dart>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get NumberOfMonthsInThisYear {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(38)
          .cast<Pointer<NativeFunction<_get_NumberOfMonthsInThisYear_Native>>>()
          .value
          .asFunction<
              _get_NumberOfMonthsInThisYear_Dart>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get Month {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(39)
          .cast<Pointer<NativeFunction<_get_Month_Native>>>()
          .value
          .asFunction<_get_Month_Dart>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set Month(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(40)
        .cast<Pointer<NativeFunction<_put_Month_Native>>>()
        .value
        .asFunction<_put_Month_Dart>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int AddMonths(int months) => ptr.ref.lpVtbl.value
      .elementAt(41)
      .cast<Pointer<NativeFunction<_AddMonths_Native>>>()
      .value
      .asFunction<_AddMonths_Dart>()(ptr.ref.lpVtbl, months);

  int MonthAsFullString(Pointer<IntPtr> result) => ptr.ref.lpVtbl.value
      .elementAt(42)
      .cast<Pointer<NativeFunction<_MonthAsFullString_Native>>>()
      .value
      .asFunction<_MonthAsFullString_Dart>()(ptr.ref.lpVtbl, result);

  int MonthAsString(int idealLength, Pointer<IntPtr> result) => ptr
      .ref.lpVtbl.value
      .elementAt(43)
      .cast<Pointer<NativeFunction<_MonthAsString_Native>>>()
      .value
      .asFunction<_MonthAsString_Dart>()(ptr.ref.lpVtbl, idealLength, result);

  int MonthAsFullSoloString(Pointer<IntPtr> result) => ptr.ref.lpVtbl.value
      .elementAt(44)
      .cast<Pointer<NativeFunction<_MonthAsFullSoloString_Native>>>()
      .value
      .asFunction<_MonthAsFullSoloString_Dart>()(ptr.ref.lpVtbl, result);

  int MonthAsSoloString(int idealLength, Pointer<IntPtr> result) =>
      ptr.ref.lpVtbl.value
              .elementAt(45)
              .cast<Pointer<NativeFunction<_MonthAsSoloString_Native>>>()
              .value
              .asFunction<_MonthAsSoloString_Dart>()(
          ptr.ref.lpVtbl, idealLength, result);

  int MonthAsNumericString(Pointer<IntPtr> result) => ptr.ref.lpVtbl.value
      .elementAt(46)
      .cast<Pointer<NativeFunction<_MonthAsNumericString_Native>>>()
      .value
      .asFunction<_MonthAsNumericString_Dart>()(ptr.ref.lpVtbl, result);

  int MonthAsPaddedNumericString(int minDigits, Pointer<IntPtr> result) => ptr
          .ref.lpVtbl.value
          .elementAt(47)
          .cast<Pointer<NativeFunction<_MonthAsPaddedNumericString_Native>>>()
          .value
          .asFunction<_MonthAsPaddedNumericString_Dart>()(
      ptr.ref.lpVtbl, minDigits, result);

  int AddWeeks(int weeks) => ptr.ref.lpVtbl.value
      .elementAt(48)
      .cast<Pointer<NativeFunction<_AddWeeks_Native>>>()
      .value
      .asFunction<_AddWeeks_Dart>()(ptr.ref.lpVtbl, weeks);

  int get FirstDayInThisMonth {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
              .elementAt(49)
              .cast<Pointer<NativeFunction<_get_FirstDayInThisMonth_Native>>>()
              .value
              .asFunction<_get_FirstDayInThisMonth_Dart>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get LastDayInThisMonth {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
              .elementAt(50)
              .cast<Pointer<NativeFunction<_get_LastDayInThisMonth_Native>>>()
              .value
              .asFunction<_get_LastDayInThisMonth_Dart>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get NumberOfDaysInThisMonth {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(51)
          .cast<Pointer<NativeFunction<_get_NumberOfDaysInThisMonth_Native>>>()
          .value
          .asFunction<
              _get_NumberOfDaysInThisMonth_Dart>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get Day {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(52)
          .cast<Pointer<NativeFunction<_get_Day_Native>>>()
          .value
          .asFunction<_get_Day_Dart>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set Day(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(53)
        .cast<Pointer<NativeFunction<_put_Day_Native>>>()
        .value
        .asFunction<_put_Day_Dart>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int AddDays(int days) => ptr.ref.lpVtbl.value
      .elementAt(54)
      .cast<Pointer<NativeFunction<_AddDays_Native>>>()
      .value
      .asFunction<_AddDays_Dart>()(ptr.ref.lpVtbl, days);

  int DayAsString(Pointer<IntPtr> result) => ptr.ref.lpVtbl.value
      .elementAt(55)
      .cast<Pointer<NativeFunction<_DayAsString_Native>>>()
      .value
      .asFunction<_DayAsString_Dart>()(ptr.ref.lpVtbl, result);

  int DayAsPaddedString(int minDigits, Pointer<IntPtr> result) => ptr
      .ref.lpVtbl.value
      .elementAt(56)
      .cast<Pointer<NativeFunction<_DayAsPaddedString_Native>>>()
      .value
      .asFunction<_DayAsPaddedString_Dart>()(ptr.ref.lpVtbl, minDigits, result);

  int get DayOfWeek {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(57)
          .cast<Pointer<NativeFunction<_get_DayOfWeek_Native>>>()
          .value
          .asFunction<_get_DayOfWeek_Dart>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int DayOfWeekAsFullString(Pointer<IntPtr> result) => ptr.ref.lpVtbl.value
      .elementAt(58)
      .cast<Pointer<NativeFunction<_DayOfWeekAsFullString_Native>>>()
      .value
      .asFunction<_DayOfWeekAsFullString_Dart>()(ptr.ref.lpVtbl, result);

  int DayOfWeekAsString(int idealLength, Pointer<IntPtr> result) =>
      ptr.ref.lpVtbl.value
              .elementAt(59)
              .cast<Pointer<NativeFunction<_DayOfWeekAsString_Native>>>()
              .value
              .asFunction<_DayOfWeekAsString_Dart>()(
          ptr.ref.lpVtbl, idealLength, result);

  int DayOfWeekAsFullSoloString(Pointer<IntPtr> result) => ptr.ref.lpVtbl.value
      .elementAt(60)
      .cast<Pointer<NativeFunction<_DayOfWeekAsFullSoloString_Native>>>()
      .value
      .asFunction<_DayOfWeekAsFullSoloString_Dart>()(ptr.ref.lpVtbl, result);

  int DayOfWeekAsSoloString(int idealLength, Pointer<IntPtr> result) =>
      ptr.ref.lpVtbl.value
              .elementAt(61)
              .cast<Pointer<NativeFunction<_DayOfWeekAsSoloString_Native>>>()
              .value
              .asFunction<_DayOfWeekAsSoloString_Dart>()(
          ptr.ref.lpVtbl, idealLength, result);

  int get FirstPeriodInThisDay {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
              .elementAt(62)
              .cast<Pointer<NativeFunction<_get_FirstPeriodInThisDay_Native>>>()
              .value
              .asFunction<_get_FirstPeriodInThisDay_Dart>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get LastPeriodInThisDay {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
              .elementAt(63)
              .cast<Pointer<NativeFunction<_get_LastPeriodInThisDay_Native>>>()
              .value
              .asFunction<_get_LastPeriodInThisDay_Dart>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get NumberOfPeriodsInThisDay {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(64)
          .cast<Pointer<NativeFunction<_get_NumberOfPeriodsInThisDay_Native>>>()
          .value
          .asFunction<
              _get_NumberOfPeriodsInThisDay_Dart>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get Period {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(65)
          .cast<Pointer<NativeFunction<_get_Period_Native>>>()
          .value
          .asFunction<_get_Period_Dart>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set Period(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(66)
        .cast<Pointer<NativeFunction<_put_Period_Native>>>()
        .value
        .asFunction<_put_Period_Dart>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int AddPeriods(int periods) => ptr.ref.lpVtbl.value
      .elementAt(67)
      .cast<Pointer<NativeFunction<_AddPeriods_Native>>>()
      .value
      .asFunction<_AddPeriods_Dart>()(ptr.ref.lpVtbl, periods);

  int PeriodAsFullString(Pointer<IntPtr> result) => ptr.ref.lpVtbl.value
      .elementAt(68)
      .cast<Pointer<NativeFunction<_PeriodAsFullString_Native>>>()
      .value
      .asFunction<_PeriodAsFullString_Dart>()(ptr.ref.lpVtbl, result);

  int PeriodAsString(int idealLength, Pointer<IntPtr> result) => ptr
      .ref.lpVtbl.value
      .elementAt(69)
      .cast<Pointer<NativeFunction<_PeriodAsString_Native>>>()
      .value
      .asFunction<_PeriodAsString_Dart>()(ptr.ref.lpVtbl, idealLength, result);

  int get FirstHourInThisPeriod {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(70)
          .cast<Pointer<NativeFunction<_get_FirstHourInThisPeriod_Native>>>()
          .value
          .asFunction<
              _get_FirstHourInThisPeriod_Dart>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get LastHourInThisPeriod {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
              .elementAt(71)
              .cast<Pointer<NativeFunction<_get_LastHourInThisPeriod_Native>>>()
              .value
              .asFunction<_get_LastHourInThisPeriod_Dart>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get NumberOfHoursInThisPeriod {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(72)
          .cast<
              Pointer<NativeFunction<_get_NumberOfHoursInThisPeriod_Native>>>()
          .value
          .asFunction<
              _get_NumberOfHoursInThisPeriod_Dart>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get Hour {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(73)
          .cast<Pointer<NativeFunction<_get_Hour_Native>>>()
          .value
          .asFunction<_get_Hour_Dart>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set Hour(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(74)
        .cast<Pointer<NativeFunction<_put_Hour_Native>>>()
        .value
        .asFunction<_put_Hour_Dart>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int AddHours(int hours) => ptr.ref.lpVtbl.value
      .elementAt(75)
      .cast<Pointer<NativeFunction<_AddHours_Native>>>()
      .value
      .asFunction<_AddHours_Dart>()(ptr.ref.lpVtbl, hours);

  int HourAsString(Pointer<IntPtr> result) => ptr.ref.lpVtbl.value
      .elementAt(76)
      .cast<Pointer<NativeFunction<_HourAsString_Native>>>()
      .value
      .asFunction<_HourAsString_Dart>()(ptr.ref.lpVtbl, result);

  int HourAsPaddedString(int minDigits, Pointer<IntPtr> result) =>
      ptr.ref.lpVtbl.value
              .elementAt(77)
              .cast<Pointer<NativeFunction<_HourAsPaddedString_Native>>>()
              .value
              .asFunction<_HourAsPaddedString_Dart>()(
          ptr.ref.lpVtbl, minDigits, result);

  int get Minute {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(78)
          .cast<Pointer<NativeFunction<_get_Minute_Native>>>()
          .value
          .asFunction<_get_Minute_Dart>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set Minute(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(79)
        .cast<Pointer<NativeFunction<_put_Minute_Native>>>()
        .value
        .asFunction<_put_Minute_Dart>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int AddMinutes(int minutes) => ptr.ref.lpVtbl.value
      .elementAt(80)
      .cast<Pointer<NativeFunction<_AddMinutes_Native>>>()
      .value
      .asFunction<_AddMinutes_Dart>()(ptr.ref.lpVtbl, minutes);

  int MinuteAsString(Pointer<IntPtr> result) => ptr.ref.lpVtbl.value
      .elementAt(81)
      .cast<Pointer<NativeFunction<_MinuteAsString_Native>>>()
      .value
      .asFunction<_MinuteAsString_Dart>()(ptr.ref.lpVtbl, result);

  int MinuteAsPaddedString(int minDigits, Pointer<IntPtr> result) =>
      ptr.ref.lpVtbl.value
              .elementAt(82)
              .cast<Pointer<NativeFunction<_MinuteAsPaddedString_Native>>>()
              .value
              .asFunction<_MinuteAsPaddedString_Dart>()(
          ptr.ref.lpVtbl, minDigits, result);

  int get Second {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(83)
          .cast<Pointer<NativeFunction<_get_Second_Native>>>()
          .value
          .asFunction<_get_Second_Dart>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set Second(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(84)
        .cast<Pointer<NativeFunction<_put_Second_Native>>>()
        .value
        .asFunction<_put_Second_Dart>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int AddSeconds(int seconds) => ptr.ref.lpVtbl.value
      .elementAt(85)
      .cast<Pointer<NativeFunction<_AddSeconds_Native>>>()
      .value
      .asFunction<_AddSeconds_Dart>()(ptr.ref.lpVtbl, seconds);

  int SecondAsString(Pointer<IntPtr> result) => ptr.ref.lpVtbl.value
      .elementAt(86)
      .cast<Pointer<NativeFunction<_SecondAsString_Native>>>()
      .value
      .asFunction<_SecondAsString_Dart>()(ptr.ref.lpVtbl, result);

  int SecondAsPaddedString(int minDigits, Pointer<IntPtr> result) =>
      ptr.ref.lpVtbl.value
              .elementAt(87)
              .cast<Pointer<NativeFunction<_SecondAsPaddedString_Native>>>()
              .value
              .asFunction<_SecondAsPaddedString_Dart>()(
          ptr.ref.lpVtbl, minDigits, result);

  int get Nanosecond {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(88)
          .cast<Pointer<NativeFunction<_get_Nanosecond_Native>>>()
          .value
          .asFunction<_get_Nanosecond_Dart>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set Nanosecond(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(89)
        .cast<Pointer<NativeFunction<_put_Nanosecond_Native>>>()
        .value
        .asFunction<_put_Nanosecond_Dart>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int AddNanoseconds(int nanoseconds) => ptr.ref.lpVtbl.value
      .elementAt(90)
      .cast<Pointer<NativeFunction<_AddNanoseconds_Native>>>()
      .value
      .asFunction<_AddNanoseconds_Dart>()(ptr.ref.lpVtbl, nanoseconds);

  int NanosecondAsString(Pointer<IntPtr> result) => ptr.ref.lpVtbl.value
      .elementAt(91)
      .cast<Pointer<NativeFunction<_NanosecondAsString_Native>>>()
      .value
      .asFunction<_NanosecondAsString_Dart>()(ptr.ref.lpVtbl, result);

  int NanosecondAsPaddedString(int minDigits, Pointer<IntPtr> result) =>
      ptr.ref.lpVtbl.value
              .elementAt(92)
              .cast<Pointer<NativeFunction<_NanosecondAsPaddedString_Native>>>()
              .value
              .asFunction<_NanosecondAsPaddedString_Dart>()(
          ptr.ref.lpVtbl, minDigits, result);

  int Compare(Pointer other, Pointer<Int32> result) => ptr.ref.lpVtbl.value
      .elementAt(93)
      .cast<Pointer<NativeFunction<_Compare_Native>>>()
      .value
      .asFunction<_Compare_Dart>()(ptr.ref.lpVtbl, other, result);

  int CompareDateTime(int other, Pointer<Int32> result) => ptr.ref.lpVtbl.value
      .elementAt(94)
      .cast<Pointer<NativeFunction<_CompareDateTime_Native>>>()
      .value
      .asFunction<_CompareDateTime_Dart>()(ptr.ref.lpVtbl, other, result);

  int CopyTo(Pointer other) => ptr.ref.lpVtbl.value
      .elementAt(95)
      .cast<Pointer<NativeFunction<_CopyTo_Native>>>()
      .value
      .asFunction<_CopyTo_Dart>()(ptr.ref.lpVtbl, other);

  int get FirstMinuteInThisHour {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(96)
          .cast<Pointer<NativeFunction<_get_FirstMinuteInThisHour_Native>>>()
          .value
          .asFunction<
              _get_FirstMinuteInThisHour_Dart>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get LastMinuteInThisHour {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
              .elementAt(97)
              .cast<Pointer<NativeFunction<_get_LastMinuteInThisHour_Native>>>()
              .value
              .asFunction<_get_LastMinuteInThisHour_Dart>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get NumberOfMinutesInThisHour {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(98)
          .cast<
              Pointer<NativeFunction<_get_NumberOfMinutesInThisHour_Native>>>()
          .value
          .asFunction<
              _get_NumberOfMinutesInThisHour_Dart>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get FirstSecondInThisMinute {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(99)
          .cast<Pointer<NativeFunction<_get_FirstSecondInThisMinute_Native>>>()
          .value
          .asFunction<
              _get_FirstSecondInThisMinute_Dart>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get LastSecondInThisMinute {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(100)
          .cast<Pointer<NativeFunction<_get_LastSecondInThisMinute_Native>>>()
          .value
          .asFunction<
              _get_LastSecondInThisMinute_Dart>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get NumberOfSecondsInThisMinute {
    final retValuePtr = calloc<Int32>();

    try {
      final hr =
          ptr.ref.lpVtbl.value
                  .elementAt(101)
                  .cast<
                      Pointer<
                          NativeFunction<
                              _get_NumberOfSecondsInThisMinute_Native>>>()
                  .value
                  .asFunction<_get_NumberOfSecondsInThisMinute_Dart>()(
              ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get ResolvedLanguage {
    final retValuePtr = calloc<IntPtr>();

    try {
      final hr = ptr.ref.lpVtbl.value
              .elementAt(102)
              .cast<Pointer<NativeFunction<_get_ResolvedLanguage_Native>>>()
              .value
              .asFunction<_get_ResolvedLanguage_Dart>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  bool get IsDaylightSavingTime {
    final retValuePtr = calloc< /* Boolean */ Uint8>();

    try {
      final hr = ptr.ref.lpVtbl.value
              .elementAt(103)
              .cast<Pointer<NativeFunction<_get_IsDaylightSavingTime_Native>>>()
              .value
              .asFunction<_get_IsDaylightSavingTime_Dart>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue == 0;
    } finally {
      free(retValuePtr);
    }
  }
}
