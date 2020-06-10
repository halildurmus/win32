// calendar.dart

// Simple example of calling WinRT APIs

import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

void main() {
  winrtInitialize();

  final object = CreateObject('Windows.Globalization.Calendar', IID_ICalendar);
  final calendar = ICalendar(object.cast());

  print('The year is ${calendar.Year}.');

  final systemPtr = allocate<IntPtr>();
  calendar.GetCalendarSystem(systemPtr);
  print('The calendar system is ${convertHString(systemPtr)}.');
  WindowsDeleteString(systemPtr.value);

  final dayPtr = allocate<IntPtr>();
  calendar.DayOfWeekAsFullSoloString(dayPtr);
  print('Today is ${convertHString(dayPtr)}.');
  free(dayPtr);

  if (calendar.IsDaylightSavingTime == 1) {
    print('Daylight Saving Time is in observance.');
  } else if (calendar.IsDaylightSavingTime == 0) {
    print('Daylight Savings Time is not in observance.');
  }

  winrtUninitialize();
}
