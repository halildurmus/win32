import 'dart:io';

import 'package:win32_gamepad/win32_gamepad.dart';

void main() {
  // Check which controllers are connected.
  for (var idx = 0; idx < 4; idx++) {
    final gamepad = Gamepad(idx);
    final connectionStatus = gamepad.isConnected ? 'connected' : 'disconnected';
    print('Gamepad $idx is $connectionStatus.');
  }

  final gamepad = Gamepad(0);
  if (!gamepad.isConnected) {
    print('No gamepad connected on slot 0.');
    return;
  }

  // Read battery information.
  final GamepadBatteryInfo(:batteryLevel, :batteryType) =
      gamepad.gamepadBatteryInfo;
  print('Battery type is ${batteryType.name}.');
  print('Battery level is ${batteryLevel.name}.');

  // Test vibration motors.
  print('Vibrating left motor (half intensity).');
  gamepad.vibrate(leftMotorSpeed: 32767);
  sleep(const .new(milliseconds: 1000));

  print('Vibrating right motor (half intensity).');
  gamepad.vibrate(rightMotorSpeed: 32767);
  sleep(const .new(milliseconds: 1000));

  print('Vibrating both motors (full intensity).');
  gamepad.vibrate(leftMotorSpeed: 65535, rightMotorSpeed: 65535);
  sleep(const .new(milliseconds: 1000));

  print('Turning off vibration.');
  gamepad.vibrate();
}
