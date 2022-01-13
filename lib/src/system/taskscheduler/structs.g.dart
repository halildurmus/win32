// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import '../../combase.dart';
import '../../guid.dart';
import '../../system/taskscheduler/structs.g.dart';

/// {@category Struct}
class DAILY extends Struct {
  @Uint16()
  external int DaysInterval;
}

/// {@category Struct}
class MONTHLYDATE extends Struct {
  @Uint32()
  external int rgfDays;

  @Uint16()
  external int rgfMonths;
}

/// {@category Struct}
class MONTHLYDO extends Struct {
  @Uint16()
  external int wWhichWeek;

  @Uint16()
  external int rgfDaysOfTheWeek;

  @Uint16()
  external int rgfMonths;
}

/// {@category Struct}
class TASK_TRIGGER extends Struct {
  @Uint16()
  external int cbTriggerSize;

  @Uint16()
  external int Reserved1;

  @Uint16()
  external int wBeginYear;

  @Uint16()
  external int wBeginMonth;

  @Uint16()
  external int wBeginDay;

  @Uint16()
  external int wEndYear;

  @Uint16()
  external int wEndMonth;

  @Uint16()
  external int wEndDay;

  @Uint16()
  external int wStartHour;

  @Uint16()
  external int wStartMinute;

  @Uint32()
  external int MinutesDuration;

  @Uint32()
  external int MinutesInterval;

  @Uint32()
  external int rgFlags;

  @Int32()
  external int TriggerType;

  external TRIGGER_TYPE_UNION Type;

  @Uint16()
  external int Reserved2;

  @Uint16()
  external int wRandomMinutesInterval;
}

/// {@category Struct}
class TRIGGER_TYPE_UNION extends Union {
  external DAILY Daily;

  external WEEKLY Weekly;

  external MONTHLYDATE MonthlyDate;

  external MONTHLYDO MonthlyDOW;
}

/// {@category Struct}
class WEEKLY extends Struct {
  @Uint16()
  external int WeeksInterval;

  @Uint16()
  external int rgfDaysOfTheWeek;
}
