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
import '../../devices/pwm/structs.g.dart';
import '../../foundation/structs.g.dart';

/// {@category Struct}
class PWM_CONTROLLER_GET_ACTUAL_PERIOD_OUTPUT extends Struct {
  @Uint64()
  external int ActualPeriod;
}

/// {@category Struct}
class PWM_CONTROLLER_INFO extends Struct {
  @IntPtr()
  external int Size;

  @Uint32()
  external int PinCount;

  @Uint64()
  external int MinimumPeriod;

  @Uint64()
  external int MaximumPeriod;
}

/// {@category Struct}
class PWM_CONTROLLER_SET_DESIRED_PERIOD_INPUT extends Struct {
  @Uint64()
  external int DesiredPeriod;
}

/// {@category Struct}
class PWM_CONTROLLER_SET_DESIRED_PERIOD_OUTPUT extends Struct {
  @Uint64()
  external int ActualPeriod;
}

/// {@category Struct}
class PWM_PIN_GET_ACTIVE_DUTY_CYCLE_PERCENTAGE_OUTPUT extends Struct {
  @Uint64()
  external int Percentage;
}

/// {@category Struct}
class PWM_PIN_GET_POLARITY_OUTPUT extends Struct {
  @Int32()
  external int Polarity;
}

/// {@category Struct}
class PWM_PIN_IS_STARTED_OUTPUT extends Struct {
  @Uint8()
  external int IsStarted;
}

/// {@category Struct}
class PWM_PIN_SET_ACTIVE_DUTY_CYCLE_PERCENTAGE_INPUT extends Struct {
  @Uint64()
  external int Percentage;
}

/// {@category Struct}
class PWM_PIN_SET_POLARITY_INPUT extends Struct {
  @Int32()
  external int Polarity;
}
