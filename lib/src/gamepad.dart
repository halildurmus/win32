import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'exceptions.dart';
import 'gamepad_batteryinfo.dart';
import 'gamepad_state.dart';

/// Represents a gamepad controller.
///
/// Up to four controllers may be connected to a system, numbered from 0 to 3.
class Gamepad {
  final int controller;
  int _packetNumber = -1;
  late GamepadState state;

  static bool _isComInitialized = false;

  void _initializeCom() {
    if (!_isComInitialized) {
      CoInitializeEx(nullptr, COINIT_APARTMENTTHREADED);
      _isComInitialized = true;
    }
  }

  Gamepad(this.controller)
      : assert(controller > 0 && controller < XUSER_MAX_COUNT) {
    _initializeCom();
    updateState();
  }

  /// Controls whether the gamepad is active.
  ///
  /// This function is meant to be called when an app gains or loses focus. When
  /// set to false, vibration effects will be stopped and calls to [updateState]
  /// will be returned neutral values.
  set appHasFocus(bool value) => XInputEnable(value ? TRUE : FALSE);

  /// Get the current state of the current controller.
  ///
  /// This function is designed to be called once for each pass on a game loop.
  /// It can safely be called even if the gamepad is disconnected, at which
  /// point neutral values will be returned for all buttons and thumbsticks.
  void updateState() {
    final pState = calloc<XINPUT_STATE>();
    try {
      final dwResult = XInputGetState(controller, pState);

      if (dwResult == ERROR_SUCCESS) {
        // The packet number indicates whether there have been any changes in the
        // state of the controller. If the dwPacketNumber member is the same in
        // sequentially returned XINPUT_STATE structures, the controller state has
        // not changed.
        if (pState.ref.dwPacketNumber == _packetNumber) return;

        _packetNumber = pState.ref.dwPacketNumber;
        final gamepad = pState.ref.Gamepad;
        state = GamepadState(
            true,
            gamepad.wButtons,
            gamepad.bLeftTrigger,
            gamepad.bRightTrigger,
            gamepad.sThumbLX,
            gamepad.sThumbLY,
            gamepad.sThumbRX,
            gamepad.sThumbRY);
      } else if (dwResult == ERROR_DEVICE_NOT_CONNECTED) {
        state = GamepadState.disconnected();
      } else {
        throw WindowsException(dwResult);
      }
    } finally {
      free(pState);
    }
  }

  /// Returns a value for whether the controller is connected.
  ///
  /// This can be used to identify which controllers are connected to a system.
  /// But a controller may be disconnected at any point, so a true value does
  /// not guarantee that a following call will succeed. Instead, guard calls to
  /// other functions to check that a [DeviceNotConnectedError] is not thrown.
  bool get isConnected => state.isConnected;

  /// Get the battery type for the gamepad.
  GamepadBatteryInfo get gamepadBatteryInfo =>
      GamepadBatteryInfo(controller, GamepadDeviceType.controller);

  /// Get the battery type for a headset attached to the gamepad, if there is
  /// one.
  GamepadBatteryInfo get headsetBatteryInfo =>
      GamepadBatteryInfo(controller, GamepadDeviceType.headset);

  /// Activate a gamepad controller's vibration motors.
  ///
  /// Either the left or right motor can be activated. The value should be
  /// between 0 and 65535.
  void vibrate({int leftMotorSpeed = 0, int rightMotorSpeed = 0}) {
    if (leftMotorSpeed < 0 ||
        leftMotorSpeed > 65535 ||
        rightMotorSpeed < 0 ||
        rightMotorSpeed > 65535) {
      throw ArgumentError('Vibration value must be in range 0..65535');
    }

    final pVibration = calloc<XINPUT_VIBRATION>()
      ..ref.wLeftMotorSpeed = leftMotorSpeed
      ..ref.wRightMotorSpeed = rightMotorSpeed;

    try {
      final dwResult = XInputSetState(controller, pVibration);
      if (dwResult == ERROR_DEVICE_NOT_CONNECTED) {
        throw DeviceNotConnectedError();
      } else if (dwResult != ERROR_SUCCESS) {
        throw WindowsException(dwResult);
      }
    } finally {
      free(pVibration);
    }
  }
}
