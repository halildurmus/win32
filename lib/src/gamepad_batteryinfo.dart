import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'exceptions.dart';

/// Whether the specified device is the controller or an attached headset.
enum GamepadDeviceType { controller, headset }

/// The type of battery.
enum GamepadBatteryType {
  /// The device is not connected.
  disconnected,

  /// The device is a wired device and does not have a battery.
  wired,

  /// The device has an alkaline battery.
  alkaline,

  /// The device has a nickel metal hydride battery.
  nickelMetalHydride,

  /// The device has an unknown battery type.
  unknown
}

/// The charge state of the battery.
///
/// This value is only valid for wireless devices with a known battery type.
enum GamepadBatteryLevel {
  /// The charge state is empty.
  empty,

  /// The charge state is low.
  low,

  /// The charge state is medium.
  medium,

  /// The charge state is full.
  full,

  /// The charge state is unknown.
  unknown
}

/// Information about the battery state for a gamepad or headset.
class GamepadBatteryInfo {
  late int _batteryType;
  late int _batteryLevel;

  GamepadBatteryType get batteryType {
    switch (_batteryType) {
      case BATTERY_TYPE_DISCONNECTED:
        return GamepadBatteryType.disconnected;
      case BATTERY_TYPE_WIRED:
        return GamepadBatteryType.wired;
      case BATTERY_TYPE_ALKALINE:
        return GamepadBatteryType.alkaline;
      case BATTERY_TYPE_NIMH:
        return GamepadBatteryType.nickelMetalHydride;
      default:
        return GamepadBatteryType.unknown;
    }
  }

  GamepadBatteryLevel get batteryLevel {
    switch (_batteryLevel) {
      case BATTERY_LEVEL_FULL:
        return GamepadBatteryLevel.full;
      case BATTERY_LEVEL_MEDIUM:
        return GamepadBatteryLevel.medium;
      case BATTERY_LEVEL_LOW:
        return GamepadBatteryLevel.low;
      case BATTERY_LEVEL_EMPTY:
        return GamepadBatteryLevel.empty;
      default:
        return GamepadBatteryLevel.unknown;
    }
  }

  GamepadBatteryInfo(int controller, GamepadDeviceType deviceType) {
    final pBatteryInformation = calloc<XINPUT_BATTERY_INFORMATION>();

    try {
      final dwResult = XInputGetBatteryInformation(
          controller,
          deviceType == GamepadDeviceType.controller
              ? BATTERY_DEVTYPE_GAMEPAD
              : BATTERY_DEVTYPE_HEADSET,
          pBatteryInformation);
      if (dwResult == ERROR_DEVICE_NOT_CONNECTED) {
        throw DeviceNotConnectedError();
      } else {
        _batteryType = pBatteryInformation.ref.BatteryType;
        _batteryLevel = pBatteryInformation.ref.BatteryLevel;
      }
    } finally {
      free(pBatteryInformation);
    }
  }
}
