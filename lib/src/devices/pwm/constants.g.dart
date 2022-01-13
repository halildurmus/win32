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

const GUID_DEVINTERFACE_PWM_CONTROLLER = 0x0;
const IOCTL_PWM_CONTROLLER_GET_INFO = 0x40000;
const IOCTL_PWM_CONTROLLER_GET_ACTUAL_PERIOD = 0x40004;
const IOCTL_PWM_CONTROLLER_SET_DESIRED_PERIOD = 0x48008;
const IOCTL_PWM_PIN_GET_ACTIVE_DUTY_CYCLE_PERCENTAGE = 0x40190;
const IOCTL_PWM_PIN_SET_ACTIVE_DUTY_CYCLE_PERCENTAGE = 0x48194;
const IOCTL_PWM_PIN_GET_POLARITY = 0x40198;
const IOCTL_PWM_PIN_SET_POLARITY = 0x4819c;
const IOCTL_PWM_PIN_START = 0x481a3;
const IOCTL_PWM_PIN_STOP = 0x481a7;
const IOCTL_PWM_PIN_IS_STARTED = 0x401a8;
const PWM_IOCTL_ID_CONTROLLER_GET_INFO = 0x0;
const PWM_IOCTL_ID_CONTROLLER_GET_ACTUAL_PERIOD = 0x1;
const PWM_IOCTL_ID_CONTROLLER_SET_DESIRED_PERIOD = 0x2;
const PWM_IOCTL_ID_PIN_GET_ACTIVE_DUTY_CYCLE_PERCENTAGE = 0x64;
const PWM_IOCTL_ID_PIN_SET_ACTIVE_DUTY_CYCLE_PERCENTAGE = 0x65;
const PWM_IOCTL_ID_PIN_GET_POLARITY = 0x66;
const PWM_IOCTL_ID_PIN_SET_POLARITY = 0x67;
const PWM_IOCTL_ID_PIN_START = 0x68;
const PWM_IOCTL_ID_PIN_STOP = 0x69;
const PWM_IOCTL_ID_PIN_IS_STARTED = 0x6a;
