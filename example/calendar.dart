// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Simple example of calling WinRT APIs

import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

void main() {
  winrtInitialize();

  try {
    final comObject =
        CreateObject('Windows.Globalization.Calendar', IID_ICalendar);
    final calendar = ICalendar(comObject);

    print('Windows Runtime demo. Calling Windows.Globalization.Calendar...\n');
    print('The year is ${calendar.Year}.');

    final calendarSystem = calloc<HSTRING>();
    calendar.GetCalendarSystem(calendarSystem);
    print('The calendar system is ${calendarSystem.toDartString()}.');
    free(calendarSystem);

    final dayOfWeek = calloc<HSTRING>();
    calendar.DayOfWeekAsFullSoloString(dayOfWeek);
    print('Today is ${dayOfWeek.toDartString()}.');
    free(dayOfWeek);

    if (calendar.IsDaylightSavingTime) {
      print('Daylight Saving Time is in observance.');
    } else if (calendar.IsDaylightSavingTime) {
      print('Daylight Savings Time is not in observance.');
    }

    free(comObject);
  } finally {
    winrtUninitialize();
  }
}
