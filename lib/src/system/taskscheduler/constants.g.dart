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

const TASK_SUNDAY = 0x1;
const TASK_MONDAY = 0x2;
const TASK_TUESDAY = 0x4;
const TASK_WEDNESDAY = 0x8;
const TASK_THURSDAY = 0x10;
const TASK_FRIDAY = 0x20;
const TASK_SATURDAY = 0x40;
const TASK_FIRST_WEEK = 0x1;
const TASK_SECOND_WEEK = 0x2;
const TASK_THIRD_WEEK = 0x3;
const TASK_FOURTH_WEEK = 0x4;
const TASK_LAST_WEEK = 0x5;
const TASK_JANUARY = 0x1;
const TASK_FEBRUARY = 0x2;
const TASK_MARCH = 0x4;
const TASK_APRIL = 0x8;
const TASK_MAY = 0x10;
const TASK_JUNE = 0x20;
const TASK_JULY = 0x40;
const TASK_AUGUST = 0x80;
const TASK_SEPTEMBER = 0x100;
const TASK_OCTOBER = 0x200;
const TASK_NOVEMBER = 0x400;
const TASK_DECEMBER = 0x800;
const TASK_FLAG_INTERACTIVE = 0x1;
const TASK_FLAG_DELETE_WHEN_DONE = 0x2;
const TASK_FLAG_DISABLED = 0x4;
const TASK_FLAG_START_ONLY_IF_IDLE = 0x10;
const TASK_FLAG_KILL_ON_IDLE_END = 0x20;
const TASK_FLAG_DONT_START_IF_ON_BATTERIES = 0x40;
const TASK_FLAG_KILL_IF_GOING_ON_BATTERIES = 0x80;
const TASK_FLAG_RUN_ONLY_IF_DOCKED = 0x100;
const TASK_FLAG_HIDDEN = 0x200;
const TASK_FLAG_RUN_IF_CONNECTED_TO_INTERNET = 0x400;
const TASK_FLAG_RESTART_ON_IDLE_RESUME = 0x800;
const TASK_FLAG_SYSTEM_REQUIRED = 0x1000;
const TASK_FLAG_RUN_ONLY_IF_LOGGED_ON = 0x2000;
const TASK_TRIGGER_FLAG_HAS_END_DATE = 0x1;
const TASK_TRIGGER_FLAG_KILL_AT_DURATION_END = 0x2;
const TASK_TRIGGER_FLAG_DISABLED = 0x4;
const TASK_MAX_RUN_TIMES = 0x5a0;
const CLSID_CTask = 0x0;
const CLSID_CTaskScheduler = 0x0;
const TaskHandlerPS = '{F2A69DB7-DA2C-4352-9066-86FEE6DACAC9}';
const TaskHandlerStatusPS = '{9F15266D-D7BA-48F0-93C1-E6895F6FE5AC}';
