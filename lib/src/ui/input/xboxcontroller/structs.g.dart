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
import '../../../combase.dart';
import '../../../guid.dart';
import '../../../ui/input/xboxcontroller/structs.g.dart';

/// {@category Struct}
class XINPUT_BATTERY_INFORMATION extends Struct {
  @Uint8()
  external int BatteryType;

  @Uint8()
  external int BatteryLevel;
}

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
class XINPUT_STATE extends Struct {
  @Uint32()
  external int dwPacketNumber;

  external XINPUT_GAMEPAD Gamepad;
}

/// {@category Struct}
class XINPUT_VIBRATION extends Struct {
  @Uint16()
  external int wLeftMotorSpeed;

  @Uint16()
  external int wRightMotorSpeed;
}
