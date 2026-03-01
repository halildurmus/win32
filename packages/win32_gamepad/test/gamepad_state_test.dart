import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:win32_gamepad/win32_gamepad.dart';

void main() {
  group('GamepadState', () {
    test('disconnected', () {
      final state = GamepadState.disconnected();
      check(state.isConnected).isFalse();
      check(state.leftTrigger).equals(0);
      check(state.rightTrigger).equals(0);
      check(state.leftThumbstickX).equals(0);
      check(state.leftThumbstickY).equals(0);
      check(state.rightThumbstickX).equals(0);
      check(state.rightThumbstickY).equals(0);
      check(state.dpadDirection).equals(.center);
      check(state.dpadUp).isFalse();
      check(state.dpadDown).isFalse();
      check(state.dpadLeft).isFalse();
      check(state.dpadRight).isFalse();
      check(state.buttonStart).isFalse();
      check(state.buttonBack).isFalse();
      check(state.leftThumb).isFalse();
      check(state.rightThumb).isFalse();
      check(state.leftShoulder).isFalse();
      check(state.rightShoulder).isFalse();
      check(state.buttonA).isFalse();
      check(state.buttonB).isFalse();
      check(state.buttonX).isFalse();
      check(state.buttonY).isFalse();
    });
  });
}
