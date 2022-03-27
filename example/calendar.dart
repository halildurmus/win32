// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Simple example of calling WinRT APIs

import 'package:win32/win32.dart';

String calendarData(ICalendar calendar) =>
    'Calendar: ${calendar.GetCalendarSystem()}\n'
    'Name of Month: ${calendar.MonthAsFullSoloString()}\n'
    'Day of Month: ${calendar.DayAsPaddedString(2)}\n'
    'Day of Week: ${calendar.DayOfWeekAsFullSoloString()}\n'
    'Year: ${calendar.YearAsString()}\n';

void main() {
  winrtInitialize();
  final japaneseCalendar = convertToHString('JapaneseCalendar');
  final hebrewCalendar = convertToHString('HebrewCalendar');

  try {
    print('Windows Runtime demo. Calling Windows.Globalization.Calendar...\n');
    final comObject =
        CreateObject('Windows.Globalization.Calendar', IID_ICalendar);
    final calendar = ICalendar(comObject);

    print(calendarData(calendar));

    calendar.ChangeCalendarSystem(japaneseCalendar);
    print(calendarData(calendar));

    calendar.ChangeCalendarSystem(hebrewCalendar);
    print(calendarData(calendar));

    print('Daylight Saving Time is '
        '${calendar.IsDaylightSavingTime ? "in " : "not in "}'
        'observance.');

    free(comObject);
  } finally {
    WindowsDeleteString(japaneseCalendar);
    WindowsDeleteString(hebrewCalendar);
    winrtUninitialize();
  }
}
