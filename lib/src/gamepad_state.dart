import 'package:win32/win32.dart';

class GamepadState {
  final bool isConnected;
  final int _buttonBitmask;
  final int leftTrigger;
  final int rightTrigger;
  final int leftThumbstickX;
  final int leftThumbstickY;
  final int rightThumbstickX;
  final int rightThumbstickY;

  /// Returns true if the D-pad direction is up.
  bool get dpadUp =>
      _buttonBitmask & XINPUT_GAMEPAD_DPAD_UP == XINPUT_GAMEPAD_DPAD_UP;

  /// Returns true if the D-pad direction is down.
  bool get dpadDown =>
      _buttonBitmask & XINPUT_GAMEPAD_DPAD_DOWN == XINPUT_GAMEPAD_DPAD_DOWN;

  /// Returns true if the D-pad direction is left.
  bool get dpadLeft =>
      _buttonBitmask & XINPUT_GAMEPAD_DPAD_LEFT == XINPUT_GAMEPAD_DPAD_LEFT;

  /// Returns true if the D-pad direction is right.
  bool get dpadRight =>
      _buttonBitmask & XINPUT_GAMEPAD_DPAD_RIGHT == XINPUT_GAMEPAD_DPAD_RIGHT;

  /// Returns true if the start button is pressed down.
  bool get buttonStart =>
      _buttonBitmask & XINPUT_GAMEPAD_START == XINPUT_GAMEPAD_START;

  /// Returns true if the back button is pressed down.
  bool get buttonBack =>
      _buttonBitmask & XINPUT_GAMEPAD_BACK == XINPUT_GAMEPAD_BACK;

  /// Returns true if the left thumbstick is clicked.
  bool get leftThumb =>
      _buttonBitmask & XINPUT_GAMEPAD_LEFT_THUMB == XINPUT_GAMEPAD_LEFT_THUMB;

  /// Returns true if the right thumbstick is clicked.
  bool get rightThumb =>
      _buttonBitmask & XINPUT_GAMEPAD_RIGHT_THUMB == XINPUT_GAMEPAD_RIGHT_THUMB;

  /// Returns true if the left shoulder button is pressed down.
  bool get leftShoulder =>
      _buttonBitmask & XINPUT_GAMEPAD_LEFT_SHOULDER ==
      XINPUT_GAMEPAD_LEFT_SHOULDER;

  /// Returns true if the right shoulder button is pressed down.
  bool get rightShoulder =>
      _buttonBitmask & XINPUT_GAMEPAD_RIGHT_SHOULDER ==
      XINPUT_GAMEPAD_RIGHT_SHOULDER;

  /// Returns true if the A button is pressed down.
  bool get buttonA => _buttonBitmask & XINPUT_GAMEPAD_A == XINPUT_GAMEPAD_A;

  /// Returns true if the B button is pressed down.
  bool get buttonB => _buttonBitmask & XINPUT_GAMEPAD_B == XINPUT_GAMEPAD_B;

  /// Returns true if the X button is pressed down.
  bool get buttonX => _buttonBitmask & XINPUT_GAMEPAD_X == XINPUT_GAMEPAD_X;

  /// Returns true if the Y button is pressed down.
  bool get buttonY => _buttonBitmask & XINPUT_GAMEPAD_Y == XINPUT_GAMEPAD_Y;

  const GamepadState(
      this.isConnected,
      this._buttonBitmask,
      this.leftTrigger,
      this.rightTrigger,
      this.leftThumbstickX,
      this.leftThumbstickY,
      this.rightThumbstickX,
      this.rightThumbstickY);

  factory GamepadState.disconnected() =>
      const GamepadState(false, 0, 0, 0, 0, 0, 0, 0);
}
