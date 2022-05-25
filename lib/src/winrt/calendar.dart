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

class Calendar extends IInspectable with ICalendar, ITimeZoneOnCalendar {
  Calendar({Allocator allocator = calloc})
      : super(ActivateClass(_className, allocator: allocator));
  Calendar.fromPointer(super.ptr);

  static final _className = 'Windows.Globalization.Calendar';

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
}
