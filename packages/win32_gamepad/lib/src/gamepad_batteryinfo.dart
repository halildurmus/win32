import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'error.dart';
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
  factory GamepadBatteryInfo(int controller, GamepadDeviceType deviceType) =>
      using((arena) {
        final pBatteryInformation = arena<XINPUT_BATTERY_INFORMATION>();
        final dwResult = WIN32_ERROR(
          XInputGetBatteryInformation(
            controller,
            deviceType == .controller
                ? BATTERY_DEVTYPE_GAMEPAD
                : BATTERY_DEVTYPE_HEADSET,
            pBatteryInformation,
          ),
        );
        if (dwResult == ERROR_DEVICE_NOT_CONNECTED) {
          throw DeviceNotConnectedError();
        }

        final XINPUT_BATTERY_INFORMATION(:BatteryLevel, :BatteryType) =
            pBatteryInformation.ref;
        return GamepadBatteryInfo._(BatteryLevel, BatteryType);
      });

  const GamepadBatteryInfo._(this._batteryLevel, this._batteryType);

  final int _batteryLevel;
  final int _batteryType;

  /// The charge state of the battery.
  ///
  /// This value is only valid for wireless devices with a known battery type.
  GamepadBatteryLevel get batteryLevel => switch (_batteryLevel) {
    BATTERY_LEVEL_FULL => .full,
    BATTERY_LEVEL_MEDIUM => .medium,
    BATTERY_LEVEL_LOW => .low,
    BATTERY_LEVEL_EMPTY => .empty,
    _ => .unknown,
  };

  /// The type of battery.
  GamepadBatteryType get batteryType => switch (_batteryType) {
    BATTERY_TYPE_DISCONNECTED => .disconnected,
    BATTERY_TYPE_WIRED => .wired,
    BATTERY_TYPE_ALKALINE => .alkaline,
    BATTERY_TYPE_NIMH => .nickelMetalHydride,
    _ => .unknown,
  };
}
