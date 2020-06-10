// ICalendar.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'package:win32/src/constants.dart';
import 'package:win32/src/exceptions.dart';
import 'package:win32/src/macros.dart';
import 'package:win32/src/structs.dart';
import 'package:win32/src/win32.dart';
import 'package:win32/src/com/combase.dart';

import 'package:win32/src/winrt/winrt_constants.dart';

import 'package:win32/src/generated/IInspectable.dart';

const IID_ICalendar = '{CA30221D-86D9-40FB-A26B-D44EB7CF08EA}';

typedef Clone_Native = Int32 Function(Pointer obj, Pointer<IntPtr> value);
typedef Clone_Dart = int Function(Pointer obj, Pointer<IntPtr> value);

typedef SetToMin_Native = Int32 Function(Pointer obj);
typedef SetToMin_Dart = int Function(Pointer obj);

typedef SetToMax_Native = Int32 Function(Pointer obj);
typedef SetToMax_Dart = int Function(Pointer obj);

typedef get_Languages_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> value);
typedef get_Languages_Dart = int Function(Pointer obj, Pointer<IntPtr> value);

typedef get_NumeralSystem_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> value);
typedef get_NumeralSystem_Dart = int Function(
    Pointer obj, Pointer<IntPtr> value);

typedef put_NumeralSystem_Native = Int32 Function(Pointer obj, IntPtr value);
typedef put_NumeralSystem_Dart = int Function(Pointer obj, int value);

typedef GetCalendarSystem_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> value);
typedef GetCalendarSystem_Dart = int Function(
    Pointer obj, Pointer<IntPtr> value);

typedef ChangeCalendarSystem_Native = Int32 Function(Pointer obj, IntPtr value);
typedef ChangeCalendarSystem_Dart = int Function(Pointer obj, int value);

typedef GetClock_Native = Int32 Function(Pointer obj, Pointer<IntPtr> value);
typedef GetClock_Dart = int Function(Pointer obj, Pointer<IntPtr> value);

typedef ChangeClock_Native = Int32 Function(Pointer obj, IntPtr value);
typedef ChangeClock_Dart = int Function(Pointer obj, int value);

typedef GetDateTime_Native = Int32 Function(Pointer obj, Pointer<Int64> result);
typedef GetDateTime_Dart = int Function(Pointer obj, Pointer<Int64> result);

typedef SetDateTime_Native = Int32 Function(Pointer obj, Int64 value);
typedef SetDateTime_Dart = int Function(Pointer obj, int value);

typedef SetToNow_Native = Int32 Function(Pointer obj);
typedef SetToNow_Dart = int Function(Pointer obj);

typedef get_FirstEra_Native = Int32 Function(Pointer obj, Pointer<Int32> value);
typedef get_FirstEra_Dart = int Function(Pointer obj, Pointer<Int32> value);

typedef get_LastEra_Native = Int32 Function(Pointer obj, Pointer<Int32> value);
typedef get_LastEra_Dart = int Function(Pointer obj, Pointer<Int32> value);

typedef get_NumberOfEras_Native = Int32 Function(
    Pointer obj, Pointer<Int32> value);
typedef get_NumberOfEras_Dart = int Function(Pointer obj, Pointer<Int32> value);

typedef get_Era_Native = Int32 Function(Pointer obj, Pointer<Int32> value);
typedef get_Era_Dart = int Function(Pointer obj, Pointer<Int32> value);

typedef put_Era_Native = Int32 Function(Pointer obj, Int32 value);
typedef put_Era_Dart = int Function(Pointer obj, int value);

typedef AddEras_Native = Int32 Function(Pointer obj, Int32 eras);
typedef AddEras_Dart = int Function(Pointer obj, int eras);

typedef EraAsFullString_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> result);
typedef EraAsFullString_Dart = int Function(
    Pointer obj, Pointer<IntPtr> result);

typedef EraAsString_Native = Int32 Function(
    Pointer obj, Int32 idealLength, Pointer<IntPtr> result);
typedef EraAsString_Dart = int Function(
    Pointer obj, int idealLength, Pointer<IntPtr> result);

typedef get_FirstYearInThisEra_Native = Int32 Function(
    Pointer obj, Pointer<Int32> value);
typedef get_FirstYearInThisEra_Dart = int Function(
    Pointer obj, Pointer<Int32> value);

typedef get_LastYearInThisEra_Native = Int32 Function(
    Pointer obj, Pointer<Int32> value);
typedef get_LastYearInThisEra_Dart = int Function(
    Pointer obj, Pointer<Int32> value);

typedef get_NumberOfYearsInThisEra_Native = Int32 Function(
    Pointer obj, Pointer<Int32> value);
typedef get_NumberOfYearsInThisEra_Dart = int Function(
    Pointer obj, Pointer<Int32> value);

typedef get_Year_Native = Int32 Function(Pointer obj, Pointer<Int32> value);
typedef get_Year_Dart = int Function(Pointer obj, Pointer<Int32> value);

typedef put_Year_Native = Int32 Function(Pointer obj, Int32 value);
typedef put_Year_Dart = int Function(Pointer obj, int value);

typedef AddYears_Native = Int32 Function(Pointer obj, Int32 years);
typedef AddYears_Dart = int Function(Pointer obj, int years);

typedef YearAsString_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> result);
typedef YearAsString_Dart = int Function(Pointer obj, Pointer<IntPtr> result);

typedef YearAsTruncatedString_Native = Int32 Function(
    Pointer obj, Int32 remainingDigits, Pointer<IntPtr> result);
typedef YearAsTruncatedString_Dart = int Function(
    Pointer obj, int remainingDigits, Pointer<IntPtr> result);

typedef YearAsPaddedString_Native = Int32 Function(
    Pointer obj, Int32 minDigits, Pointer<IntPtr> result);
typedef YearAsPaddedString_Dart = int Function(
    Pointer obj, int minDigits, Pointer<IntPtr> result);

typedef get_FirstMonthInThisYear_Native = Int32 Function(
    Pointer obj, Pointer<Int32> value);
typedef get_FirstMonthInThisYear_Dart = int Function(
    Pointer obj, Pointer<Int32> value);

typedef get_LastMonthInThisYear_Native = Int32 Function(
    Pointer obj, Pointer<Int32> value);
typedef get_LastMonthInThisYear_Dart = int Function(
    Pointer obj, Pointer<Int32> value);

typedef get_NumberOfMonthsInThisYear_Native = Int32 Function(
    Pointer obj, Pointer<Int32> value);
typedef get_NumberOfMonthsInThisYear_Dart = int Function(
    Pointer obj, Pointer<Int32> value);

typedef get_Month_Native = Int32 Function(Pointer obj, Pointer<Int32> value);
typedef get_Month_Dart = int Function(Pointer obj, Pointer<Int32> value);

typedef put_Month_Native = Int32 Function(Pointer obj, Int32 value);
typedef put_Month_Dart = int Function(Pointer obj, int value);

typedef AddMonths_Native = Int32 Function(Pointer obj, Int32 months);
typedef AddMonths_Dart = int Function(Pointer obj, int months);

typedef MonthAsFullString_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> result);
typedef MonthAsFullString_Dart = int Function(
    Pointer obj, Pointer<IntPtr> result);

typedef MonthAsString_Native = Int32 Function(
    Pointer obj, Int32 idealLength, Pointer<IntPtr> result);
typedef MonthAsString_Dart = int Function(
    Pointer obj, int idealLength, Pointer<IntPtr> result);

typedef MonthAsFullSoloString_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> result);
typedef MonthAsFullSoloString_Dart = int Function(
    Pointer obj, Pointer<IntPtr> result);

typedef MonthAsSoloString_Native = Int32 Function(
    Pointer obj, Int32 idealLength, Pointer<IntPtr> result);
typedef MonthAsSoloString_Dart = int Function(
    Pointer obj, int idealLength, Pointer<IntPtr> result);

typedef MonthAsNumericString_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> result);
typedef MonthAsNumericString_Dart = int Function(
    Pointer obj, Pointer<IntPtr> result);

typedef MonthAsPaddedNumericString_Native = Int32 Function(
    Pointer obj, Int32 minDigits, Pointer<IntPtr> result);
typedef MonthAsPaddedNumericString_Dart = int Function(
    Pointer obj, int minDigits, Pointer<IntPtr> result);

typedef AddWeeks_Native = Int32 Function(Pointer obj, Int32 weeks);
typedef AddWeeks_Dart = int Function(Pointer obj, int weeks);

typedef get_FirstDayInThisMonth_Native = Int32 Function(
    Pointer obj, Pointer<Int32> value);
typedef get_FirstDayInThisMonth_Dart = int Function(
    Pointer obj, Pointer<Int32> value);

typedef get_LastDayInThisMonth_Native = Int32 Function(
    Pointer obj, Pointer<Int32> value);
typedef get_LastDayInThisMonth_Dart = int Function(
    Pointer obj, Pointer<Int32> value);

typedef get_NumberOfDaysInThisMonth_Native = Int32 Function(
    Pointer obj, Pointer<Int32> value);
typedef get_NumberOfDaysInThisMonth_Dart = int Function(
    Pointer obj, Pointer<Int32> value);

typedef get_Day_Native = Int32 Function(Pointer obj, Pointer<Int32> value);
typedef get_Day_Dart = int Function(Pointer obj, Pointer<Int32> value);

typedef put_Day_Native = Int32 Function(Pointer obj, Int32 value);
typedef put_Day_Dart = int Function(Pointer obj, int value);

typedef AddDays_Native = Int32 Function(Pointer obj, Int32 days);
typedef AddDays_Dart = int Function(Pointer obj, int days);

typedef DayAsString_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> result);
typedef DayAsString_Dart = int Function(Pointer obj, Pointer<IntPtr> result);

typedef DayAsPaddedString_Native = Int32 Function(
    Pointer obj, Int32 minDigits, Pointer<IntPtr> result);
typedef DayAsPaddedString_Dart = int Function(
    Pointer obj, int minDigits, Pointer<IntPtr> result);

typedef get_DayOfWeek_Native = Int32 Function(
    Pointer obj, Pointer<Int32> value);
typedef get_DayOfWeek_Dart = int Function(Pointer obj, Pointer<Int32> value);

typedef DayOfWeekAsFullString_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> result);
typedef DayOfWeekAsFullString_Dart = int Function(
    Pointer obj, Pointer<IntPtr> result);

typedef DayOfWeekAsString_Native = Int32 Function(
    Pointer obj, Int32 idealLength, Pointer<IntPtr> result);
typedef DayOfWeekAsString_Dart = int Function(
    Pointer obj, int idealLength, Pointer<IntPtr> result);

typedef DayOfWeekAsFullSoloString_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> result);
typedef DayOfWeekAsFullSoloString_Dart = int Function(
    Pointer obj, Pointer<IntPtr> result);

typedef DayOfWeekAsSoloString_Native = Int32 Function(
    Pointer obj, Int32 idealLength, Pointer<IntPtr> result);
typedef DayOfWeekAsSoloString_Dart = int Function(
    Pointer obj, int idealLength, Pointer<IntPtr> result);

typedef get_FirstPeriodInThisDay_Native = Int32 Function(
    Pointer obj, Pointer<Int32> value);
typedef get_FirstPeriodInThisDay_Dart = int Function(
    Pointer obj, Pointer<Int32> value);

typedef get_LastPeriodInThisDay_Native = Int32 Function(
    Pointer obj, Pointer<Int32> value);
typedef get_LastPeriodInThisDay_Dart = int Function(
    Pointer obj, Pointer<Int32> value);

typedef get_NumberOfPeriodsInThisDay_Native = Int32 Function(
    Pointer obj, Pointer<Int32> value);
typedef get_NumberOfPeriodsInThisDay_Dart = int Function(
    Pointer obj, Pointer<Int32> value);

typedef get_Period_Native = Int32 Function(Pointer obj, Pointer<Int32> value);
typedef get_Period_Dart = int Function(Pointer obj, Pointer<Int32> value);

typedef put_Period_Native = Int32 Function(Pointer obj, Int32 value);
typedef put_Period_Dart = int Function(Pointer obj, int value);

typedef AddPeriods_Native = Int32 Function(Pointer obj, Int32 periods);
typedef AddPeriods_Dart = int Function(Pointer obj, int periods);

typedef PeriodAsFullString_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> result);
typedef PeriodAsFullString_Dart = int Function(
    Pointer obj, Pointer<IntPtr> result);

typedef PeriodAsString_Native = Int32 Function(
    Pointer obj, Int32 idealLength, Pointer<IntPtr> result);
typedef PeriodAsString_Dart = int Function(
    Pointer obj, int idealLength, Pointer<IntPtr> result);

typedef get_FirstHourInThisPeriod_Native = Int32 Function(
    Pointer obj, Pointer<Int32> value);
typedef get_FirstHourInThisPeriod_Dart = int Function(
    Pointer obj, Pointer<Int32> value);

typedef get_LastHourInThisPeriod_Native = Int32 Function(
    Pointer obj, Pointer<Int32> value);
typedef get_LastHourInThisPeriod_Dart = int Function(
    Pointer obj, Pointer<Int32> value);

typedef get_NumberOfHoursInThisPeriod_Native = Int32 Function(
    Pointer obj, Pointer<Int32> value);
typedef get_NumberOfHoursInThisPeriod_Dart = int Function(
    Pointer obj, Pointer<Int32> value);

typedef get_Hour_Native = Int32 Function(Pointer obj, Pointer<Int32> value);
typedef get_Hour_Dart = int Function(Pointer obj, Pointer<Int32> value);

typedef put_Hour_Native = Int32 Function(Pointer obj, Int32 value);
typedef put_Hour_Dart = int Function(Pointer obj, int value);

typedef AddHours_Native = Int32 Function(Pointer obj, Int32 hours);
typedef AddHours_Dart = int Function(Pointer obj, int hours);

typedef HourAsString_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> result);
typedef HourAsString_Dart = int Function(Pointer obj, Pointer<IntPtr> result);

typedef HourAsPaddedString_Native = Int32 Function(
    Pointer obj, Int32 minDigits, Pointer<IntPtr> result);
typedef HourAsPaddedString_Dart = int Function(
    Pointer obj, int minDigits, Pointer<IntPtr> result);

typedef get_Minute_Native = Int32 Function(Pointer obj, Pointer<Int32> value);
typedef get_Minute_Dart = int Function(Pointer obj, Pointer<Int32> value);

typedef put_Minute_Native = Int32 Function(Pointer obj, Int32 value);
typedef put_Minute_Dart = int Function(Pointer obj, int value);

typedef AddMinutes_Native = Int32 Function(Pointer obj, Int32 minutes);
typedef AddMinutes_Dart = int Function(Pointer obj, int minutes);

typedef MinuteAsString_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> result);
typedef MinuteAsString_Dart = int Function(Pointer obj, Pointer<IntPtr> result);

typedef MinuteAsPaddedString_Native = Int32 Function(
    Pointer obj, Int32 minDigits, Pointer<IntPtr> result);
typedef MinuteAsPaddedString_Dart = int Function(
    Pointer obj, int minDigits, Pointer<IntPtr> result);

typedef get_Second_Native = Int32 Function(Pointer obj, Pointer<Int32> value);
typedef get_Second_Dart = int Function(Pointer obj, Pointer<Int32> value);

typedef put_Second_Native = Int32 Function(Pointer obj, Int32 value);
typedef put_Second_Dart = int Function(Pointer obj, int value);

typedef AddSeconds_Native = Int32 Function(Pointer obj, Int32 seconds);
typedef AddSeconds_Dart = int Function(Pointer obj, int seconds);

typedef SecondAsString_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> result);
typedef SecondAsString_Dart = int Function(Pointer obj, Pointer<IntPtr> result);

typedef SecondAsPaddedString_Native = Int32 Function(
    Pointer obj, Int32 minDigits, Pointer<IntPtr> result);
typedef SecondAsPaddedString_Dart = int Function(
    Pointer obj, int minDigits, Pointer<IntPtr> result);

typedef get_Nanosecond_Native = Int32 Function(
    Pointer obj, Pointer<Int32> value);
typedef get_Nanosecond_Dart = int Function(Pointer obj, Pointer<Int32> value);

typedef put_Nanosecond_Native = Int32 Function(Pointer obj, Int32 value);
typedef put_Nanosecond_Dart = int Function(Pointer obj, int value);

typedef AddNanoseconds_Native = Int32 Function(Pointer obj, Int32 nanoseconds);
typedef AddNanoseconds_Dart = int Function(Pointer obj, int nanoseconds);

typedef NanosecondAsString_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> result);
typedef NanosecondAsString_Dart = int Function(
    Pointer obj, Pointer<IntPtr> result);

typedef NanosecondAsPaddedString_Native = Int32 Function(
    Pointer obj, Int32 minDigits, Pointer<IntPtr> result);
typedef NanosecondAsPaddedString_Dart = int Function(
    Pointer obj, int minDigits, Pointer<IntPtr> result);

typedef Compare_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> other, Pointer<Int32> result);
typedef Compare_Dart = int Function(
    Pointer obj, Pointer<IntPtr> other, Pointer<Int32> result);

typedef CompareDateTime_Native = Int32 Function(
    Pointer obj, Int64 other, Pointer<Int32> result);
typedef CompareDateTime_Dart = int Function(
    Pointer obj, int other, Pointer<Int32> result);

typedef CopyTo_Native = Int32 Function(Pointer obj, Pointer<IntPtr> other);
typedef CopyTo_Dart = int Function(Pointer obj, Pointer<IntPtr> other);

typedef get_FirstMinuteInThisHour_Native = Int32 Function(
    Pointer obj, Pointer<Int32> value);
typedef get_FirstMinuteInThisHour_Dart = int Function(
    Pointer obj, Pointer<Int32> value);

typedef get_LastMinuteInThisHour_Native = Int32 Function(
    Pointer obj, Pointer<Int32> value);
typedef get_LastMinuteInThisHour_Dart = int Function(
    Pointer obj, Pointer<Int32> value);

typedef get_NumberOfMinutesInThisHour_Native = Int32 Function(
    Pointer obj, Pointer<Int32> value);
typedef get_NumberOfMinutesInThisHour_Dart = int Function(
    Pointer obj, Pointer<Int32> value);

typedef get_FirstSecondInThisMinute_Native = Int32 Function(
    Pointer obj, Pointer<Int32> value);
typedef get_FirstSecondInThisMinute_Dart = int Function(
    Pointer obj, Pointer<Int32> value);

typedef get_LastSecondInThisMinute_Native = Int32 Function(
    Pointer obj, Pointer<Int32> value);
typedef get_LastSecondInThisMinute_Dart = int Function(
    Pointer obj, Pointer<Int32> value);

typedef get_NumberOfSecondsInThisMinute_Native = Int32 Function(
    Pointer obj, Pointer<Int32> value);
typedef get_NumberOfSecondsInThisMinute_Dart = int Function(
    Pointer obj, Pointer<Int32> value);

typedef get_ResolvedLanguage_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> value);
typedef get_ResolvedLanguage_Dart = int Function(
    Pointer obj, Pointer<IntPtr> value);

typedef get_IsDaylightSavingTime_Native = Int32 Function(
    Pointer obj, Pointer<Uint8> value);
typedef get_IsDaylightSavingTime_Dart = int Function(
    Pointer obj, Pointer<Uint8> value);

class ICalendar extends IInspectable {
  // vtable begins at 6, ends at 103

  @override
  Pointer<COMObject> ptr;

  ICalendar(this.ptr) : super(ptr);

  int Clone(Pointer<IntPtr> value) =>
      Pointer<NativeFunction<Clone_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(6).value)
          .asFunction<Clone_Dart>()(ptr.ref.lpVtbl, value);

  int SetToMin() => Pointer<NativeFunction<SetToMin_Native>>.fromAddress(
          ptr.ref.vtable.elementAt(7).value)
      .asFunction<SetToMin_Dart>()(ptr.ref.lpVtbl);

  int SetToMax() => Pointer<NativeFunction<SetToMax_Native>>.fromAddress(
          ptr.ref.vtable.elementAt(8).value)
      .asFunction<SetToMax_Dart>()(ptr.ref.lpVtbl);

  int get Languages {
    final retValuePtr = allocate<IntPtr>();

    final hr = Pointer<NativeFunction<get_Languages_Native>>.fromAddress(
            ptr.ref.vtable.elementAt(9).value)
        .asFunction<get_Languages_Dart>()(ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) throw COMException(hr);

    final retValue = retValuePtr.value;
    free(retValuePtr);
    return retValue;
  }

  int get NumeralSystem {
    final retValuePtr = allocate<IntPtr>();

    final hr = Pointer<NativeFunction<get_NumeralSystem_Native>>.fromAddress(
            ptr.ref.vtable.elementAt(10).value)
        .asFunction<get_NumeralSystem_Dart>()(ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) throw COMException(hr);

    final retValue = retValuePtr.value;
    free(retValuePtr);
    return retValue;
  }

  set NumeralSystem(int value) {
    final hr = Pointer<NativeFunction<put_NumeralSystem_Native>>.fromAddress(
            ptr.ref.vtable.elementAt(11).value)
        .asFunction<put_NumeralSystem_Dart>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw COMException(hr);
  }

  int GetCalendarSystem(Pointer<IntPtr> value) =>
      Pointer<NativeFunction<GetCalendarSystem_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(12).value)
          .asFunction<GetCalendarSystem_Dart>()(ptr.ref.lpVtbl, value);

  int ChangeCalendarSystem(int value) =>
      Pointer<NativeFunction<ChangeCalendarSystem_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(13).value)
          .asFunction<ChangeCalendarSystem_Dart>()(ptr.ref.lpVtbl, value);

  int GetClock(Pointer<IntPtr> value) =>
      Pointer<NativeFunction<GetClock_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(14).value)
          .asFunction<GetClock_Dart>()(ptr.ref.lpVtbl, value);

  int ChangeClock(int value) =>
      Pointer<NativeFunction<ChangeClock_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(15).value)
          .asFunction<ChangeClock_Dart>()(ptr.ref.lpVtbl, value);

  int GetDateTime(Pointer<Int64> result) =>
      Pointer<NativeFunction<GetDateTime_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(16).value)
          .asFunction<GetDateTime_Dart>()(ptr.ref.lpVtbl, result);

  int SetDateTime(int value) =>
      Pointer<NativeFunction<SetDateTime_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(17).value)
          .asFunction<SetDateTime_Dart>()(ptr.ref.lpVtbl, value);

  int SetToNow() => Pointer<NativeFunction<SetToNow_Native>>.fromAddress(
          ptr.ref.vtable.elementAt(18).value)
      .asFunction<SetToNow_Dart>()(ptr.ref.lpVtbl);

  int get FirstEra {
    final retValuePtr = allocate<Int32>();

    final hr = Pointer<NativeFunction<get_FirstEra_Native>>.fromAddress(
            ptr.ref.vtable.elementAt(19).value)
        .asFunction<get_FirstEra_Dart>()(ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) throw COMException(hr);

    final retValue = retValuePtr.value;
    free(retValuePtr);
    return retValue;
  }

  int get LastEra {
    final retValuePtr = allocate<Int32>();

    final hr = Pointer<NativeFunction<get_LastEra_Native>>.fromAddress(
            ptr.ref.vtable.elementAt(20).value)
        .asFunction<get_LastEra_Dart>()(ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) throw COMException(hr);

    final retValue = retValuePtr.value;
    free(retValuePtr);
    return retValue;
  }

  int get NumberOfEras {
    final retValuePtr = allocate<Int32>();

    final hr = Pointer<NativeFunction<get_NumberOfEras_Native>>.fromAddress(
            ptr.ref.vtable.elementAt(21).value)
        .asFunction<get_NumberOfEras_Dart>()(ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) throw COMException(hr);

    final retValue = retValuePtr.value;
    free(retValuePtr);
    return retValue;
  }

  int get Era {
    final retValuePtr = allocate<Int32>();

    final hr = Pointer<NativeFunction<get_Era_Native>>.fromAddress(
            ptr.ref.vtable.elementAt(22).value)
        .asFunction<get_Era_Dart>()(ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) throw COMException(hr);

    final retValue = retValuePtr.value;
    free(retValuePtr);
    return retValue;
  }

  set Era(int value) {
    final hr = Pointer<NativeFunction<put_Era_Native>>.fromAddress(
            ptr.ref.vtable.elementAt(23).value)
        .asFunction<put_Era_Dart>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw COMException(hr);
  }

  int AddEras(int eras) => Pointer<NativeFunction<AddEras_Native>>.fromAddress(
          ptr.ref.vtable.elementAt(24).value)
      .asFunction<AddEras_Dart>()(ptr.ref.lpVtbl, eras);

  int EraAsFullString(Pointer<IntPtr> result) =>
      Pointer<NativeFunction<EraAsFullString_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(25).value)
          .asFunction<EraAsFullString_Dart>()(ptr.ref.lpVtbl, result);

  int EraAsString(int idealLength, Pointer<IntPtr> result) =>
      Pointer<NativeFunction<EraAsString_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(26).value)
          .asFunction<EraAsString_Dart>()(ptr.ref.lpVtbl, idealLength, result);

  int get FirstYearInThisEra {
    final retValuePtr = allocate<Int32>();

    final hr =
        Pointer<NativeFunction<get_FirstYearInThisEra_Native>>.fromAddress(
                    ptr.ref.vtable.elementAt(27).value)
                .asFunction<get_FirstYearInThisEra_Dart>()(
            ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) throw COMException(hr);

    final retValue = retValuePtr.value;
    free(retValuePtr);
    return retValue;
  }

  int get LastYearInThisEra {
    final retValuePtr = allocate<Int32>();

    final hr =
        Pointer<NativeFunction<get_LastYearInThisEra_Native>>.fromAddress(
                    ptr.ref.vtable.elementAt(28).value)
                .asFunction<get_LastYearInThisEra_Dart>()(
            ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) throw COMException(hr);

    final retValue = retValuePtr.value;
    free(retValuePtr);
    return retValue;
  }

  int get NumberOfYearsInThisEra {
    final retValuePtr = allocate<Int32>();

    final hr =
        Pointer<NativeFunction<get_NumberOfYearsInThisEra_Native>>.fromAddress(
                    ptr.ref.vtable.elementAt(29).value)
                .asFunction<get_NumberOfYearsInThisEra_Dart>()(
            ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) throw COMException(hr);

    final retValue = retValuePtr.value;
    free(retValuePtr);
    return retValue;
  }

  int get Year {
    final retValuePtr = allocate<Int32>();

    final hr = Pointer<NativeFunction<get_Year_Native>>.fromAddress(
            ptr.ref.vtable.elementAt(30).value)
        .asFunction<get_Year_Dart>()(ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) throw COMException(hr);

    final retValue = retValuePtr.value;
    free(retValuePtr);
    return retValue;
  }

  set Year(int value) {
    final hr = Pointer<NativeFunction<put_Year_Native>>.fromAddress(
            ptr.ref.vtable.elementAt(31).value)
        .asFunction<put_Year_Dart>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw COMException(hr);
  }

  int AddYears(int years) =>
      Pointer<NativeFunction<AddYears_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(32).value)
          .asFunction<AddYears_Dart>()(ptr.ref.lpVtbl, years);

  int YearAsString(Pointer<IntPtr> result) =>
      Pointer<NativeFunction<YearAsString_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(33).value)
          .asFunction<YearAsString_Dart>()(ptr.ref.lpVtbl, result);

  int YearAsTruncatedString(int remainingDigits, Pointer<IntPtr> result) =>
      Pointer<NativeFunction<YearAsTruncatedString_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(34).value)
              .asFunction<YearAsTruncatedString_Dart>()(
          ptr.ref.lpVtbl, remainingDigits, result);

  int YearAsPaddedString(int minDigits, Pointer<IntPtr> result) =>
      Pointer<NativeFunction<YearAsPaddedString_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(35).value)
              .asFunction<YearAsPaddedString_Dart>()(
          ptr.ref.lpVtbl, minDigits, result);

  int get FirstMonthInThisYear {
    final retValuePtr = allocate<Int32>();

    final hr =
        Pointer<NativeFunction<get_FirstMonthInThisYear_Native>>.fromAddress(
                    ptr.ref.vtable.elementAt(36).value)
                .asFunction<get_FirstMonthInThisYear_Dart>()(
            ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) throw COMException(hr);

    final retValue = retValuePtr.value;
    free(retValuePtr);
    return retValue;
  }

  int get LastMonthInThisYear {
    final retValuePtr = allocate<Int32>();

    final hr =
        Pointer<NativeFunction<get_LastMonthInThisYear_Native>>.fromAddress(
                    ptr.ref.vtable.elementAt(37).value)
                .asFunction<get_LastMonthInThisYear_Dart>()(
            ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) throw COMException(hr);

    final retValue = retValuePtr.value;
    free(retValuePtr);
    return retValue;
  }

  int get NumberOfMonthsInThisYear {
    final retValuePtr = allocate<Int32>();

    final hr = Pointer<
                    NativeFunction<
                        get_NumberOfMonthsInThisYear_Native>>.fromAddress(
                ptr.ref.vtable.elementAt(38).value)
            .asFunction<get_NumberOfMonthsInThisYear_Dart>()(
        ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) throw COMException(hr);

    final retValue = retValuePtr.value;
    free(retValuePtr);
    return retValue;
  }

  int get Month {
    final retValuePtr = allocate<Int32>();

    final hr = Pointer<NativeFunction<get_Month_Native>>.fromAddress(
            ptr.ref.vtable.elementAt(39).value)
        .asFunction<get_Month_Dart>()(ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) throw COMException(hr);

    final retValue = retValuePtr.value;
    free(retValuePtr);
    return retValue;
  }

  set Month(int value) {
    final hr = Pointer<NativeFunction<put_Month_Native>>.fromAddress(
            ptr.ref.vtable.elementAt(40).value)
        .asFunction<put_Month_Dart>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw COMException(hr);
  }

  int AddMonths(int months) =>
      Pointer<NativeFunction<AddMonths_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(41).value)
          .asFunction<AddMonths_Dart>()(ptr.ref.lpVtbl, months);

  int MonthAsFullString(Pointer<IntPtr> result) =>
      Pointer<NativeFunction<MonthAsFullString_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(42).value)
          .asFunction<MonthAsFullString_Dart>()(ptr.ref.lpVtbl, result);

  int MonthAsString(int idealLength, Pointer<IntPtr> result) =>
      Pointer<NativeFunction<MonthAsString_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(43).value)
              .asFunction<MonthAsString_Dart>()(
          ptr.ref.lpVtbl, idealLength, result);

  int MonthAsFullSoloString(Pointer<IntPtr> result) =>
      Pointer<NativeFunction<MonthAsFullSoloString_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(44).value)
          .asFunction<MonthAsFullSoloString_Dart>()(ptr.ref.lpVtbl, result);

  int MonthAsSoloString(int idealLength, Pointer<IntPtr> result) =>
      Pointer<NativeFunction<MonthAsSoloString_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(45).value)
              .asFunction<MonthAsSoloString_Dart>()(
          ptr.ref.lpVtbl, idealLength, result);

  int MonthAsNumericString(Pointer<IntPtr> result) =>
      Pointer<NativeFunction<MonthAsNumericString_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(46).value)
          .asFunction<MonthAsNumericString_Dart>()(ptr.ref.lpVtbl, result);

  int MonthAsPaddedNumericString(int minDigits, Pointer<IntPtr> result) =>
      Pointer<NativeFunction<MonthAsPaddedNumericString_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(47).value)
              .asFunction<MonthAsPaddedNumericString_Dart>()(
          ptr.ref.lpVtbl, minDigits, result);

  int AddWeeks(int weeks) =>
      Pointer<NativeFunction<AddWeeks_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(48).value)
          .asFunction<AddWeeks_Dart>()(ptr.ref.lpVtbl, weeks);

  int get FirstDayInThisMonth {
    final retValuePtr = allocate<Int32>();

    final hr =
        Pointer<NativeFunction<get_FirstDayInThisMonth_Native>>.fromAddress(
                    ptr.ref.vtable.elementAt(49).value)
                .asFunction<get_FirstDayInThisMonth_Dart>()(
            ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) throw COMException(hr);

    final retValue = retValuePtr.value;
    free(retValuePtr);
    return retValue;
  }

  int get LastDayInThisMonth {
    final retValuePtr = allocate<Int32>();

    final hr =
        Pointer<NativeFunction<get_LastDayInThisMonth_Native>>.fromAddress(
                    ptr.ref.vtable.elementAt(50).value)
                .asFunction<get_LastDayInThisMonth_Dart>()(
            ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) throw COMException(hr);

    final retValue = retValuePtr.value;
    free(retValuePtr);
    return retValue;
  }

  int get NumberOfDaysInThisMonth {
    final retValuePtr = allocate<Int32>();

    final hr =
        Pointer<NativeFunction<get_NumberOfDaysInThisMonth_Native>>.fromAddress(
                    ptr.ref.vtable.elementAt(51).value)
                .asFunction<get_NumberOfDaysInThisMonth_Dart>()(
            ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) throw COMException(hr);

    final retValue = retValuePtr.value;
    free(retValuePtr);
    return retValue;
  }

  int get Day {
    final retValuePtr = allocate<Int32>();

    final hr = Pointer<NativeFunction<get_Day_Native>>.fromAddress(
            ptr.ref.vtable.elementAt(52).value)
        .asFunction<get_Day_Dart>()(ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) throw COMException(hr);

    final retValue = retValuePtr.value;
    free(retValuePtr);
    return retValue;
  }

  set Day(int value) {
    final hr = Pointer<NativeFunction<put_Day_Native>>.fromAddress(
            ptr.ref.vtable.elementAt(53).value)
        .asFunction<put_Day_Dart>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw COMException(hr);
  }

  int AddDays(int days) => Pointer<NativeFunction<AddDays_Native>>.fromAddress(
          ptr.ref.vtable.elementAt(54).value)
      .asFunction<AddDays_Dart>()(ptr.ref.lpVtbl, days);

  int DayAsString(Pointer<IntPtr> result) =>
      Pointer<NativeFunction<DayAsString_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(55).value)
          .asFunction<DayAsString_Dart>()(ptr.ref.lpVtbl, result);

  int DayAsPaddedString(int minDigits, Pointer<IntPtr> result) =>
      Pointer<NativeFunction<DayAsPaddedString_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(56).value)
              .asFunction<DayAsPaddedString_Dart>()(
          ptr.ref.lpVtbl, minDigits, result);

  int get DayOfWeek {
    final retValuePtr = allocate<Int32>();

    final hr = Pointer<NativeFunction<get_DayOfWeek_Native>>.fromAddress(
            ptr.ref.vtable.elementAt(57).value)
        .asFunction<get_DayOfWeek_Dart>()(ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) throw COMException(hr);

    final retValue = retValuePtr.value;
    free(retValuePtr);
    return retValue;
  }

  int DayOfWeekAsFullString(Pointer<IntPtr> result) =>
      Pointer<NativeFunction<DayOfWeekAsFullString_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(58).value)
          .asFunction<DayOfWeekAsFullString_Dart>()(ptr.ref.lpVtbl, result);

  int DayOfWeekAsString(int idealLength, Pointer<IntPtr> result) =>
      Pointer<NativeFunction<DayOfWeekAsString_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(59).value)
              .asFunction<DayOfWeekAsString_Dart>()(
          ptr.ref.lpVtbl, idealLength, result);

  int DayOfWeekAsFullSoloString(Pointer<IntPtr> result) =>
      Pointer<NativeFunction<DayOfWeekAsFullSoloString_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(60).value)
          .asFunction<DayOfWeekAsFullSoloString_Dart>()(ptr.ref.lpVtbl, result);

  int DayOfWeekAsSoloString(int idealLength, Pointer<IntPtr> result) =>
      Pointer<NativeFunction<DayOfWeekAsSoloString_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(61).value)
              .asFunction<DayOfWeekAsSoloString_Dart>()(
          ptr.ref.lpVtbl, idealLength, result);

  int get FirstPeriodInThisDay {
    final retValuePtr = allocate<Int32>();

    final hr =
        Pointer<NativeFunction<get_FirstPeriodInThisDay_Native>>.fromAddress(
                    ptr.ref.vtable.elementAt(62).value)
                .asFunction<get_FirstPeriodInThisDay_Dart>()(
            ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) throw COMException(hr);

    final retValue = retValuePtr.value;
    free(retValuePtr);
    return retValue;
  }

  int get LastPeriodInThisDay {
    final retValuePtr = allocate<Int32>();

    final hr =
        Pointer<NativeFunction<get_LastPeriodInThisDay_Native>>.fromAddress(
                    ptr.ref.vtable.elementAt(63).value)
                .asFunction<get_LastPeriodInThisDay_Dart>()(
            ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) throw COMException(hr);

    final retValue = retValuePtr.value;
    free(retValuePtr);
    return retValue;
  }

  int get NumberOfPeriodsInThisDay {
    final retValuePtr = allocate<Int32>();

    final hr = Pointer<
                    NativeFunction<
                        get_NumberOfPeriodsInThisDay_Native>>.fromAddress(
                ptr.ref.vtable.elementAt(64).value)
            .asFunction<get_NumberOfPeriodsInThisDay_Dart>()(
        ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) throw COMException(hr);

    final retValue = retValuePtr.value;
    free(retValuePtr);
    return retValue;
  }

  int get Period {
    final retValuePtr = allocate<Int32>();

    final hr = Pointer<NativeFunction<get_Period_Native>>.fromAddress(
            ptr.ref.vtable.elementAt(65).value)
        .asFunction<get_Period_Dart>()(ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) throw COMException(hr);

    final retValue = retValuePtr.value;
    free(retValuePtr);
    return retValue;
  }

  set Period(int value) {
    final hr = Pointer<NativeFunction<put_Period_Native>>.fromAddress(
            ptr.ref.vtable.elementAt(66).value)
        .asFunction<put_Period_Dart>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw COMException(hr);
  }

  int AddPeriods(int periods) =>
      Pointer<NativeFunction<AddPeriods_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(67).value)
          .asFunction<AddPeriods_Dart>()(ptr.ref.lpVtbl, periods);

  int PeriodAsFullString(Pointer<IntPtr> result) =>
      Pointer<NativeFunction<PeriodAsFullString_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(68).value)
          .asFunction<PeriodAsFullString_Dart>()(ptr.ref.lpVtbl, result);

  int PeriodAsString(int idealLength, Pointer<IntPtr> result) =>
      Pointer<NativeFunction<PeriodAsString_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(69).value)
              .asFunction<PeriodAsString_Dart>()(
          ptr.ref.lpVtbl, idealLength, result);

  int get FirstHourInThisPeriod {
    final retValuePtr = allocate<Int32>();

    final hr =
        Pointer<NativeFunction<get_FirstHourInThisPeriod_Native>>.fromAddress(
                    ptr.ref.vtable.elementAt(70).value)
                .asFunction<get_FirstHourInThisPeriod_Dart>()(
            ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) throw COMException(hr);

    final retValue = retValuePtr.value;
    free(retValuePtr);
    return retValue;
  }

  int get LastHourInThisPeriod {
    final retValuePtr = allocate<Int32>();

    final hr =
        Pointer<NativeFunction<get_LastHourInThisPeriod_Native>>.fromAddress(
                    ptr.ref.vtable.elementAt(71).value)
                .asFunction<get_LastHourInThisPeriod_Dart>()(
            ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) throw COMException(hr);

    final retValue = retValuePtr.value;
    free(retValuePtr);
    return retValue;
  }

  int get NumberOfHoursInThisPeriod {
    final retValuePtr = allocate<Int32>();

    final hr = Pointer<
                    NativeFunction<
                        get_NumberOfHoursInThisPeriod_Native>>.fromAddress(
                ptr.ref.vtable.elementAt(72).value)
            .asFunction<get_NumberOfHoursInThisPeriod_Dart>()(
        ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) throw COMException(hr);

    final retValue = retValuePtr.value;
    free(retValuePtr);
    return retValue;
  }

  int get Hour {
    final retValuePtr = allocate<Int32>();

    final hr = Pointer<NativeFunction<get_Hour_Native>>.fromAddress(
            ptr.ref.vtable.elementAt(73).value)
        .asFunction<get_Hour_Dart>()(ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) throw COMException(hr);

    final retValue = retValuePtr.value;
    free(retValuePtr);
    return retValue;
  }

  set Hour(int value) {
    final hr = Pointer<NativeFunction<put_Hour_Native>>.fromAddress(
            ptr.ref.vtable.elementAt(74).value)
        .asFunction<put_Hour_Dart>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw COMException(hr);
  }

  int AddHours(int hours) =>
      Pointer<NativeFunction<AddHours_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(75).value)
          .asFunction<AddHours_Dart>()(ptr.ref.lpVtbl, hours);

  int HourAsString(Pointer<IntPtr> result) =>
      Pointer<NativeFunction<HourAsString_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(76).value)
          .asFunction<HourAsString_Dart>()(ptr.ref.lpVtbl, result);

  int HourAsPaddedString(int minDigits, Pointer<IntPtr> result) =>
      Pointer<NativeFunction<HourAsPaddedString_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(77).value)
              .asFunction<HourAsPaddedString_Dart>()(
          ptr.ref.lpVtbl, minDigits, result);

  int get Minute {
    final retValuePtr = allocate<Int32>();

    final hr = Pointer<NativeFunction<get_Minute_Native>>.fromAddress(
            ptr.ref.vtable.elementAt(78).value)
        .asFunction<get_Minute_Dart>()(ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) throw COMException(hr);

    final retValue = retValuePtr.value;
    free(retValuePtr);
    return retValue;
  }

  set Minute(int value) {
    final hr = Pointer<NativeFunction<put_Minute_Native>>.fromAddress(
            ptr.ref.vtable.elementAt(79).value)
        .asFunction<put_Minute_Dart>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw COMException(hr);
  }

  int AddMinutes(int minutes) =>
      Pointer<NativeFunction<AddMinutes_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(80).value)
          .asFunction<AddMinutes_Dart>()(ptr.ref.lpVtbl, minutes);

  int MinuteAsString(Pointer<IntPtr> result) =>
      Pointer<NativeFunction<MinuteAsString_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(81).value)
          .asFunction<MinuteAsString_Dart>()(ptr.ref.lpVtbl, result);

  int MinuteAsPaddedString(int minDigits, Pointer<IntPtr> result) =>
      Pointer<NativeFunction<MinuteAsPaddedString_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(82).value)
              .asFunction<MinuteAsPaddedString_Dart>()(
          ptr.ref.lpVtbl, minDigits, result);

  int get Second {
    final retValuePtr = allocate<Int32>();

    final hr = Pointer<NativeFunction<get_Second_Native>>.fromAddress(
            ptr.ref.vtable.elementAt(83).value)
        .asFunction<get_Second_Dart>()(ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) throw COMException(hr);

    final retValue = retValuePtr.value;
    free(retValuePtr);
    return retValue;
  }

  set Second(int value) {
    final hr = Pointer<NativeFunction<put_Second_Native>>.fromAddress(
            ptr.ref.vtable.elementAt(84).value)
        .asFunction<put_Second_Dart>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw COMException(hr);
  }

  int AddSeconds(int seconds) =>
      Pointer<NativeFunction<AddSeconds_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(85).value)
          .asFunction<AddSeconds_Dart>()(ptr.ref.lpVtbl, seconds);

  int SecondAsString(Pointer<IntPtr> result) =>
      Pointer<NativeFunction<SecondAsString_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(86).value)
          .asFunction<SecondAsString_Dart>()(ptr.ref.lpVtbl, result);

  int SecondAsPaddedString(int minDigits, Pointer<IntPtr> result) =>
      Pointer<NativeFunction<SecondAsPaddedString_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(87).value)
              .asFunction<SecondAsPaddedString_Dart>()(
          ptr.ref.lpVtbl, minDigits, result);

  int get Nanosecond {
    final retValuePtr = allocate<Int32>();

    final hr = Pointer<NativeFunction<get_Nanosecond_Native>>.fromAddress(
            ptr.ref.vtable.elementAt(88).value)
        .asFunction<get_Nanosecond_Dart>()(ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) throw COMException(hr);

    final retValue = retValuePtr.value;
    free(retValuePtr);
    return retValue;
  }

  set Nanosecond(int value) {
    final hr = Pointer<NativeFunction<put_Nanosecond_Native>>.fromAddress(
            ptr.ref.vtable.elementAt(89).value)
        .asFunction<put_Nanosecond_Dart>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw COMException(hr);
  }

  int AddNanoseconds(int nanoseconds) =>
      Pointer<NativeFunction<AddNanoseconds_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(90).value)
          .asFunction<AddNanoseconds_Dart>()(ptr.ref.lpVtbl, nanoseconds);

  int NanosecondAsString(Pointer<IntPtr> result) =>
      Pointer<NativeFunction<NanosecondAsString_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(91).value)
          .asFunction<NanosecondAsString_Dart>()(ptr.ref.lpVtbl, result);

  int NanosecondAsPaddedString(int minDigits, Pointer<IntPtr> result) =>
      Pointer<NativeFunction<NanosecondAsPaddedString_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(92).value)
              .asFunction<NanosecondAsPaddedString_Dart>()(
          ptr.ref.lpVtbl, minDigits, result);

  int Compare(Pointer<IntPtr> other, Pointer<Int32> result) =>
      Pointer<NativeFunction<Compare_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(93).value)
          .asFunction<Compare_Dart>()(ptr.ref.lpVtbl, other, result);

  int CompareDateTime(int other, Pointer<Int32> result) =>
      Pointer<NativeFunction<CompareDateTime_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(94).value)
          .asFunction<CompareDateTime_Dart>()(ptr.ref.lpVtbl, other, result);

  int CopyTo(Pointer<IntPtr> other) =>
      Pointer<NativeFunction<CopyTo_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(95).value)
          .asFunction<CopyTo_Dart>()(ptr.ref.lpVtbl, other);

  int get FirstMinuteInThisHour {
    final retValuePtr = allocate<Int32>();

    final hr =
        Pointer<NativeFunction<get_FirstMinuteInThisHour_Native>>.fromAddress(
                    ptr.ref.vtable.elementAt(96).value)
                .asFunction<get_FirstMinuteInThisHour_Dart>()(
            ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) throw COMException(hr);

    final retValue = retValuePtr.value;
    free(retValuePtr);
    return retValue;
  }

  int get LastMinuteInThisHour {
    final retValuePtr = allocate<Int32>();

    final hr =
        Pointer<NativeFunction<get_LastMinuteInThisHour_Native>>.fromAddress(
                    ptr.ref.vtable.elementAt(97).value)
                .asFunction<get_LastMinuteInThisHour_Dart>()(
            ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) throw COMException(hr);

    final retValue = retValuePtr.value;
    free(retValuePtr);
    return retValue;
  }

  int get NumberOfMinutesInThisHour {
    final retValuePtr = allocate<Int32>();

    final hr = Pointer<
                    NativeFunction<
                        get_NumberOfMinutesInThisHour_Native>>.fromAddress(
                ptr.ref.vtable.elementAt(98).value)
            .asFunction<get_NumberOfMinutesInThisHour_Dart>()(
        ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) throw COMException(hr);

    final retValue = retValuePtr.value;
    free(retValuePtr);
    return retValue;
  }

  int get FirstSecondInThisMinute {
    final retValuePtr = allocate<Int32>();

    final hr =
        Pointer<NativeFunction<get_FirstSecondInThisMinute_Native>>.fromAddress(
                    ptr.ref.vtable.elementAt(99).value)
                .asFunction<get_FirstSecondInThisMinute_Dart>()(
            ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) throw COMException(hr);

    final retValue = retValuePtr.value;
    free(retValuePtr);
    return retValue;
  }

  int get LastSecondInThisMinute {
    final retValuePtr = allocate<Int32>();

    final hr =
        Pointer<NativeFunction<get_LastSecondInThisMinute_Native>>.fromAddress(
                    ptr.ref.vtable.elementAt(100).value)
                .asFunction<get_LastSecondInThisMinute_Dart>()(
            ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) throw COMException(hr);

    final retValue = retValuePtr.value;
    free(retValuePtr);
    return retValue;
  }

  int get NumberOfSecondsInThisMinute {
    final retValuePtr = allocate<Int32>();

    final hr = Pointer<
                    NativeFunction<
                        get_NumberOfSecondsInThisMinute_Native>>.fromAddress(
                ptr.ref.vtable.elementAt(101).value)
            .asFunction<get_NumberOfSecondsInThisMinute_Dart>()(
        ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) throw COMException(hr);

    final retValue = retValuePtr.value;
    free(retValuePtr);
    return retValue;
  }

  int get ResolvedLanguage {
    final retValuePtr = allocate<IntPtr>();

    final hr = Pointer<NativeFunction<get_ResolvedLanguage_Native>>.fromAddress(
            ptr.ref.vtable.elementAt(102).value)
        .asFunction<get_ResolvedLanguage_Dart>()(ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) throw COMException(hr);

    final retValue = retValuePtr.value;
    free(retValuePtr);
    return retValue;
  }

  int get IsDaylightSavingTime {
    final retValuePtr = allocate<Uint8>();

    final hr =
        Pointer<NativeFunction<get_IsDaylightSavingTime_Native>>.fromAddress(
                    ptr.ref.vtable.elementAt(103).value)
                .asFunction<get_IsDaylightSavingTime_Dart>()(
            ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) throw COMException(hr);

    final retValue = retValuePtr.value;
    free(retValuePtr);
    return retValue;
  }
}
