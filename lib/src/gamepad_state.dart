import 'package:win32/win32.dart';

import 'gamepad_capabilities.dart';
import 'models/models.dart';

/// The current status of a gamepad.
class GamepadState {
  const GamepadState(
    this.isConnected,
    this._buttonBitmask,
    this.leftTrigger,
    this.rightTrigger,
    this.leftThumbstickX,
    this.leftThumbstickY,
    this.rightThumbstickX,
    this.rightThumbstickY,
  );

  /// Represents a disconnected gamepad.
  factory GamepadState.disconnected() =>
      const GamepadState(false, 0, 0, 0, 0, 0, 0, 0);

  final int _buttonBitmask;

  /// Returns true if the gamepad is currently connected.
  final bool isConnected;

  /// The current value of the left trigger analog control. The value is between
  /// 0 and 255.
  final int leftTrigger;

  /// The current value of the right trigger analog control. The value is
  /// between 0 and 255.
  final int rightTrigger;

  /// Left thumbstick x-axis value.
  ///
  /// A signed value between -32768 and 32767 describing the position of the
  /// left thumbstick. A value of 0 is centered. Negative values signify to the
  /// left. Positive values signify to the right. The constant value
  /// [GamepadCapabilities.leftThumbDeadzone] can be used as a positive and
  /// negative filter to filter a thumbstick input.
  final int leftThumbstickX;

  /// Left thumbstick y-axis value.
  ///
  /// A signed value between -32768 and 32767 describing the position of the
  /// left thumbstick. A value of 0 is centered. Negative values signify down.
  /// Positive values signify up. The constant value
  /// [GamepadCapabilities.leftThumbDeadzone] can be used as a positive and
  /// negative filter to filter a thumbstick input.
  final int leftThumbstickY;

  /// Right thumbstick x-axis value.
  ///
  /// A signed value between -32768 and 32767 describing the position of the
  /// right thumbstick. A value of 0 is centered. Negative values signify to the
  /// left. Positive values signify to the right. The constant value
  /// [GamepadCapabilities.rightThumbDeadzone] can be used as a positive and
  /// negative filter to filter a thumbstick input.
  final int rightThumbstickX;

  /// Right thumbstick y-axis value.
  ///
  /// A signed value between -32768 and 32767 describing the position of the
  /// right thumbstick. A value of 0 is centered. Negative values signify down.
  /// Positive values signify up. The constant value
  /// [GamepadCapabilities.rightThumbDeadzone] can be used as a positive and
  /// negative filter to filter a thumbstick input.
  final int rightThumbstickY;

  /// Returns the eight-way direction pressed on the d-pad, or center if the
  /// dpad is not pressed.
  Direction get dpadDirection {
    if (dpadLeft && dpadUp) return Direction.northwest;
    if (dpadLeft && dpadDown) return Direction.southwest;
    if (dpadLeft) return Direction.west;
    if (dpadRight && dpadUp) return Direction.northeast;
    if (dpadRight && dpadDown) return Direction.southeast;
    if (dpadRight) return Direction.east;
    if (dpadUp) return Direction.north;
    if (dpadDown) return Direction.south;
    return Direction.center;
  }

  /// Returns true if the D-pad direction is up.
  bool get dpadUp =>
      _buttonBitmask & XINPUT_GAMEPAD_BUTTON_FLAGS.XINPUT_GAMEPAD_DPAD_UP ==
      XINPUT_GAMEPAD_BUTTON_FLAGS.XINPUT_GAMEPAD_DPAD_UP;

  /// Returns true if the D-pad direction is down.
  bool get dpadDown =>
      _buttonBitmask & XINPUT_GAMEPAD_BUTTON_FLAGS.XINPUT_GAMEPAD_DPAD_DOWN ==
      XINPUT_GAMEPAD_BUTTON_FLAGS.XINPUT_GAMEPAD_DPAD_DOWN;

  /// Returns true if the D-pad direction is left.
  bool get dpadLeft =>
      _buttonBitmask & XINPUT_GAMEPAD_BUTTON_FLAGS.XINPUT_GAMEPAD_DPAD_LEFT ==
      XINPUT_GAMEPAD_BUTTON_FLAGS.XINPUT_GAMEPAD_DPAD_LEFT;

  /// Returns true if the D-pad direction is right.
  bool get dpadRight =>
      _buttonBitmask & XINPUT_GAMEPAD_BUTTON_FLAGS.XINPUT_GAMEPAD_DPAD_RIGHT ==
      XINPUT_GAMEPAD_BUTTON_FLAGS.XINPUT_GAMEPAD_DPAD_RIGHT;

  /// Returns true if the start button is pressed down.
  bool get buttonStart =>
      _buttonBitmask & XINPUT_GAMEPAD_BUTTON_FLAGS.XINPUT_GAMEPAD_START ==
      XINPUT_GAMEPAD_BUTTON_FLAGS.XINPUT_GAMEPAD_START;

  /// Returns true if the back button is pressed down.
  bool get buttonBack =>
      _buttonBitmask & XINPUT_GAMEPAD_BUTTON_FLAGS.XINPUT_GAMEPAD_BACK ==
      XINPUT_GAMEPAD_BUTTON_FLAGS.XINPUT_GAMEPAD_BACK;

  /// Returns true if the left thumbstick is clicked.
  bool get leftThumb =>
      _buttonBitmask & XINPUT_GAMEPAD_BUTTON_FLAGS.XINPUT_GAMEPAD_LEFT_THUMB ==
      XINPUT_GAMEPAD_BUTTON_FLAGS.XINPUT_GAMEPAD_LEFT_THUMB;

  /// Returns true if the right thumbstick is clicked.
  bool get rightThumb =>
      _buttonBitmask & XINPUT_GAMEPAD_BUTTON_FLAGS.XINPUT_GAMEPAD_RIGHT_THUMB ==
      XINPUT_GAMEPAD_BUTTON_FLAGS.XINPUT_GAMEPAD_RIGHT_THUMB;

  /// Returns true if the left shoulder button is pressed down.
  bool get leftShoulder =>
      _buttonBitmask &
          XINPUT_GAMEPAD_BUTTON_FLAGS.XINPUT_GAMEPAD_LEFT_SHOULDER ==
      XINPUT_GAMEPAD_BUTTON_FLAGS.XINPUT_GAMEPAD_LEFT_SHOULDER;

  /// Returns true if the right shoulder button is pressed down.
  bool get rightShoulder =>
      _buttonBitmask &
          XINPUT_GAMEPAD_BUTTON_FLAGS.XINPUT_GAMEPAD_RIGHT_SHOULDER ==
      XINPUT_GAMEPAD_BUTTON_FLAGS.XINPUT_GAMEPAD_RIGHT_SHOULDER;

  /// Returns true if the A button is pressed down.
  bool get buttonA =>
      _buttonBitmask & XINPUT_GAMEPAD_BUTTON_FLAGS.XINPUT_GAMEPAD_A ==
      XINPUT_GAMEPAD_BUTTON_FLAGS.XINPUT_GAMEPAD_A;

  /// Returns true if the B button is pressed down.
  bool get buttonB =>
      _buttonBitmask & XINPUT_GAMEPAD_BUTTON_FLAGS.XINPUT_GAMEPAD_B ==
      XINPUT_GAMEPAD_BUTTON_FLAGS.XINPUT_GAMEPAD_B;

  /// Returns true if the X button is pressed down.
  bool get buttonX =>
      _buttonBitmask & XINPUT_GAMEPAD_BUTTON_FLAGS.XINPUT_GAMEPAD_X ==
      XINPUT_GAMEPAD_BUTTON_FLAGS.XINPUT_GAMEPAD_X;

  /// Returns true if the Y button is pressed down.
  bool get buttonY =>
      _buttonBitmask & XINPUT_GAMEPAD_BUTTON_FLAGS.XINPUT_GAMEPAD_Y ==
      XINPUT_GAMEPAD_BUTTON_FLAGS.XINPUT_GAMEPAD_Y;
}
