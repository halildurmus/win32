// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// -----------------------------------------------------------------------------
// Linter exceptions
// -----------------------------------------------------------------------------
// ignore_for_file: camel_case_types
// ignore_for_file: camel_case_extensions
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

class XINPUT_GAMEPAD extends Struct {
  @Uint16()
  external int wButtons;
  @Uint8()
  external int bLeftTrigger;
  @Uint8()
  external int bRightTrigger;
  @Int16()
  external int sThumbLX;
  @Int16()
  external int sThumbLY;
  @Int16()
  external int sThumbRX;
  @Int16()
  external int sThumbRY;
}

class XINPUT_STATE extends Struct {
  @Uint32()
  external int dwPacketNumber;
  external XINPUT_GAMEPAD Gamepad;
}

class XINPUT_VIBRATION extends Struct {
  @Uint16()
  external int wLeftMotorSpeed;
  @Uint16()
  external int wRightMotorSpeed;
}

class XINPUT_CAPABILITIES extends Struct {
  @Uint8()
  external int Type;
  @Uint8()
  external int SubType;
  @Uint16()
  external int Flags;
  external XINPUT_GAMEPAD Gamepad;
  external XINPUT_VIBRATION Vibration;
}

class XINPUT_BATTERY_INFORMATION extends Struct {
  @Uint8()
  external int BatteryType;
  @Uint8()
  external int BatteryLevel;
}

class XINPUT_KEYSTROKE extends Struct {
  @Uint16()
  external int VirtualKey;
  @Uint16()
  external int Unicode;
  @Uint16()
  external int Flags;
  @Uint8()
  external int UserIndex;
  @Uint8()
  external int HidCode;
}
