// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// -----------------------------------------------------------------------------
// Linter exceptions
// -----------------------------------------------------------------------------
// ignore_for_file: camel_case_types ignore_for_file: camel_case_extensions
//
// Why? The linter defaults to throw a warning for types not named as camel
// case. We deliberately break this convention to match the Win32 underlying
// types.
//
//
// ignore_for_file: unused_field
//
// Why? The linter complains about unused fields (e.g. a class that contains
// underscore-prefixed members that are not used in the library. In this class,
// we use this feature to ensure that sizeOf<STRUCT_NAME> returns a size at
// least as large as the underlying native struct. See, for example,
// ENUMLOGFONTEX.
//
//
// ignore_for_file: unnecessary_getters_setters
//
// Why? In structs like VARIANT, we're using getters and setters to project the
// same underlying data property to various union types. The trivial overhead is
// outweighed by readability.
//
//
// ignore_for_file: unused_import
//
// Why? We speculatively include some imports that we might generate a
// requirement for.
// -----------------------------------------------------------------------------

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';

class DAILY extends Struct {
  @Uint16() external int DaysInterval;
}

class WEEKLY extends Struct {
  @Uint16() external int WeeksInterval;
  @Uint16() external int rgfDaysOfTheWeek;
}

class MONTHLYDATE extends Struct {
  @Uint32() external int rgfDays;
  @Uint16() external int rgfMonths;
}

class MONTHLYDOW extends Struct {
  @Uint16() external int wWhichWeek;
  @Uint16() external int rgfDaysOfTheWeek;
  @Uint16() external int rgfMonths;
}

class TRIGGER_TYPE_UNION extends Struct {
  external DAILY Daily;
  external WEEKLY Weekly;
  external MONTHLYDATE MonthlyDate;
  external MONTHLYDOW MonthlyDOW;
}

class TASK_TRIGGER extends Struct {
  @Uint16() external int cbTriggerSize;
  @Uint16() external int Reserved1;
  @Uint16() external int wBeginYear;
  @Uint16() external int wBeginMonth;
  @Uint16() external int wBeginDay;
  @Uint16() external int wEndYear;
  @Uint16() external int wEndMonth;
  @Uint16() external int wEndDay;
  @Uint16() external int wStartHour;
  @Uint16() external int wStartMinute;
  @Uint32() external int MinutesDuration;
  @Uint32() external int MinutesInterval;
  @Uint32() external int rgFlags;
  @Uint32() external int TriggerType;
  external TRIGGER_TYPE_UNION Type;
  @Uint16() external int Reserved2;
  @Uint16() external int wRandomMinutesInterval;
}

class TaskScheduler extends Struct {
}

class TaskHandlerPS extends Struct {
}

class TaskHandlerStatusPS extends Struct {
}

