// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'exceptions.dart';
import 'models/models.dart';

/// Information about the battery state for a gamepad or headset.
class GamepadBatteryInfo {
  /// Creates an instance of [GamepadBatteryInfo] for the specified controller
  /// and device type.
  ///
  /// The [controller] parameter represents the index of the gamepad controller,
  /// and the [deviceType] parameter specifies whether it's a gamepad controller
  /// or an attached headset.
  ///
  /// Throws a [DeviceNotConnectedError] if the specified controller is not
  /// connected.
  GamepadBatteryInfo(int controller, GamepadDeviceType deviceType) {
    final pBatteryInformation = calloc<XINPUT_BATTERY_INFORMATION>();
    try {
      final dwResult = XInputGetBatteryInformation(
        controller,
        deviceType == GamepadDeviceType.controller
            ? BATTERY_DEVTYPE_GAMEPAD
            : BATTERY_DEVTYPE_HEADSET,
        pBatteryInformation,
      );
      if (dwResult == ERROR_DEVICE_NOT_CONNECTED) {
        throw DeviceNotConnectedError();
      } else {
        final XINPUT_BATTERY_INFORMATION(:BatteryLevel, :BatteryType) =
            pBatteryInformation.ref;
        _batteryLevel = BatteryLevel;
        _batteryType = BatteryType;
      }
    } finally {
      free(pBatteryInformation);
    }
  }

  late final int _batteryLevel;
  late final int _batteryType;

  /// The charge state of the battery.
  ///
  /// This value is only valid for wireless devices with a known battery type.
  GamepadBatteryLevel get batteryLevel => switch (_batteryLevel) {
        BATTERY_LEVEL_FULL => GamepadBatteryLevel.full,
        BATTERY_LEVEL_MEDIUM => GamepadBatteryLevel.medium,
        BATTERY_LEVEL_LOW => GamepadBatteryLevel.low,
        BATTERY_LEVEL_EMPTY => GamepadBatteryLevel.empty,
        _ => GamepadBatteryLevel.unknown
      };

  /// The type of battery.
  GamepadBatteryType get batteryType => switch (_batteryType) {
        BATTERY_TYPE_DISCONNECTED => GamepadBatteryType.disconnected,
        BATTERY_TYPE_WIRED => GamepadBatteryType.wired,
        BATTERY_TYPE_ALKALINE => GamepadBatteryType.alkaline,
        BATTERY_TYPE_NIMH => GamepadBatteryType.nickelMetalHydride,
        _ => GamepadBatteryType.unknown
      };
}
