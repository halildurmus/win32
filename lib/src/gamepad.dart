import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'error.dart';
import 'gamepad_batteryinfo.dart';
import 'gamepad_state.dart';

/// Represents a gamepad controller.
class Gamepad {
  /// Creates an instance of [Gamepad] for the specified controller.
  ///
  /// The [controller] parameter represents the index of the gamepad controller.
  ///
  /// Up to four controllers may be connected to a system, numbered from `0` to
  /// `3`.
  Gamepad(this.controller)
    : assert(
        controller >= 0 && controller < XUSER_MAX_COUNT,
        'Controller index must be between 0 and ${XUSER_MAX_COUNT - 1}',
      ) {
    _initializeCom();
    updateState();
  }

  /// The identifier for the current controller.
  ///
  /// Up to four controllers may be connected to a system, numbered from `0` to
  /// `3`.
  final int controller;

  var _packetNumber = -1;

  /// The status of the buttons, triggers and thumbsticks on the gamepad.
  late GamepadState state;

  /// Whether COM has been initialized.
  static var _isComInitialized = false;

  void _initializeCom() {
    if (!_isComInitialized) {
      final hr = CoInitializeEx(
        COINIT_APARTMENTTHREADED | COINIT_DISABLE_OLE1DDE,
      );
      if (hr.isError) throw WindowsException(hr);
      _isComInitialized = true;
    }
  }

  /// Controls whether the gamepad is active.
  ///
  /// This function is meant to be called when an app gains or loses focus. When
  /// set to false, vibration effects will be stopped and calls to [updateState]
  /// will be returned neutral values.
  // ignore: avoid_setters_without_getters
  set appHasFocus(bool value) => XInputEnable(value);

  /// Get the current state of the current controller.
  ///
  /// This function is designed to be called once for each pass on a game loop.
  /// It can safely be called even if the gamepad is disconnected, at which
  /// point neutral values will be returned for all buttons and thumbsticks.
  void updateState() => using((arena) {
    final pState = arena<XINPUT_STATE>();
    final dwResult = WIN32_ERROR(XInputGetState(controller, pState));
    if (dwResult == ERROR_SUCCESS) {
      final XINPUT_STATE(:dwPacketNumber, Gamepad: gamepad) = pState.ref;
      // The packet number indicates whether there have been any changes in
      // the state of the controller. If the dwPacketNumber member is the same
      // in sequentially returned XINPUT_STATE structures, the controller
      // state has not changed.
      if (dwPacketNumber == _packetNumber) return;

      _packetNumber = dwPacketNumber;
      state = .new(
        true,
        gamepad.wButtons,
        gamepad.bLeftTrigger,
        gamepad.bRightTrigger,
        gamepad.sThumbLX,
        gamepad.sThumbLY,
        gamepad.sThumbRX,
        gamepad.sThumbRY,
      );
    } else if (dwResult == ERROR_DEVICE_NOT_CONNECTED) {
      state = .disconnected();
    } else {
      throw WindowsException(dwResult.toHRESULT());
    }
  });

  /// Returns a value for whether the controller is connected.
  ///
  /// This can be used to identify which controllers are connected to a system.
  /// But a controller may be disconnected at any point, so a true value does
  /// not guarantee that a following call will succeed. Instead, guard calls to
  /// other functions to check that a [DeviceNotConnectedError] is not thrown.
  bool get isConnected => state.isConnected;

  /// Get the battery type for the gamepad.
  GamepadBatteryInfo get gamepadBatteryInfo => .new(controller, .controller);

  /// Get the battery type for a headset attached to the gamepad, if there is
  /// one.
  GamepadBatteryInfo get headsetBatteryInfo => .new(controller, .headset);

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

    using((arena) {
      final pVibration = arena<XINPUT_VIBRATION>();
      pVibration.ref
        ..wLeftMotorSpeed = leftMotorSpeed
        ..wRightMotorSpeed = rightMotorSpeed;
      final dwResult = WIN32_ERROR(XInputSetState(controller, pVibration));
      if (dwResult == ERROR_DEVICE_NOT_CONNECTED) {
        throw DeviceNotConnectedError();
      } else if (dwResult != ERROR_SUCCESS) {
        throw WindowsException(dwResult.toHRESULT());
      }
    });
  }
}
