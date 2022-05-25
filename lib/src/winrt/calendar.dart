// ignore_for_file: non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../api_ms_win_core_winrt_l1_1_0.dart';
import '../api_ms_win_core_winrt_string_l1_1_0.dart';
import '../com/iinspectable.dart';
import '../combase.dart';
import '../exceptions.dart';
import '../guid.dart';
import '../macros.dart';
import '../utils.dart';
import '../winrt_helpers.dart';
import 'icalendar.dart';
import 'icalendarfactory.dart';
import 'icalendarfactory2.dart';
import 'itimezoneoncalendar.dart';

class Calendar extends IInspectable with ICalendar, ITimeZoneOnCalendar {
  Calendar({Allocator allocator = calloc})
      : super(ActivateClass(_className, allocator: allocator));
  Calendar.fromPointer(super.ptr);

  static final _className = 'Windows.Globalization.Calendar';

  // ICalendarFactory
  static Calendar CreateCalendarDefaultCalendarAndClock(
      Pointer<COMObject> languages) {
    final hClassName = convertToHString(_className);

    final pIID = calloc<GUID>()..ref.setGUID(IID_ICalendarFactory);
    final activationFactory = calloc<COMObject>();

    try {
      final hr =
          RoGetActivationFactory(hClassName, pIID, activationFactory.cast());
      if (FAILED(hr)) throw WindowsException(hr);

      final calendarFactory = ICalendarFactory(activationFactory);
      final result =
          calendarFactory.CreateCalendarDefaultCalendarAndClock(languages);
      if (FAILED(hr)) throw WindowsException(hr);

      return Calendar.fromPointer(result);
    } finally {
      WindowsDeleteString(hClassName);
      free(pIID);
      free(activationFactory);
    }
  }

  static Calendar CreateCalendar(
      Pointer<COMObject> languages, String calendar, String clock) {
    final hClassName = convertToHString(_className);

    final pIID = calloc<GUID>()..ref.setGUID(IID_ICalendarFactory);
    final activationFactory = calloc<COMObject>();

    try {
      final hr =
          RoGetActivationFactory(hClassName, pIID, activationFactory.cast());
      if (FAILED(hr)) throw WindowsException(hr);

      final calendarFactory = ICalendarFactory(activationFactory);
      final result = calendarFactory.CreateCalendar(languages, calendar, clock);
      if (FAILED(hr)) throw WindowsException(hr);

      return Calendar.fromPointer(result);
    } finally {
      WindowsDeleteString(hClassName);
      free(pIID);
      free(activationFactory);
    }
  }

  // ICalendarFactory2
  static Calendar CreateCalendarWithTimeZone(Pointer<COMObject> languages,
      String calendar, String clock, String timeZoneId) {
    final hClassName = convertToHString(_className);

    final pIID = calloc<GUID>()..ref.setGUID(IID_ICalendarFactory2);
    final activationFactory = calloc<COMObject>();

    try {
      final hr =
          RoGetActivationFactory(hClassName, pIID, activationFactory.cast());
      if (FAILED(hr)) throw WindowsException(hr);

      final calendarFactory2 = ICalendarFactory2(activationFactory);
      final result = calendarFactory2.CreateCalendarWithTimeZone(
          languages, calendar, clock, timeZoneId);
      if (FAILED(hr)) throw WindowsException(hr);

      return Calendar.fromPointer(result);
    } finally {
      WindowsDeleteString(hClassName);
      free(pIID);
      free(activationFactory);
    }
  }
}
