import 'dart:io';

import 'package:win32_gamepad/win32_gamepad.dart';

void main() {
  for (var idx = 0; idx < 4; idx++) {
    final gamepad = Gamepad(idx);
    print(
        'Gamepad $idx is ${gamepad.state.isConnected ? 'connected' : 'disconnected'}.');
  }

  print('Testing first gamepad.');
  final gamepad = Gamepad(0);
  if (gamepad.isConnected) {
    print('Battery type is ${gamepad.gamepadBatteryInfo.batteryType.name}.');
    print('Battery level is ${gamepad.gamepadBatteryInfo.batteryLevel.name}.');

    print('Vibrating left motor (half intensity).');
    gamepad.vibrate(leftMotorSpeed: 32767);
    sleep(const Duration(milliseconds: 1000));

    print('Vibrating right motor (half intensity).');
    gamepad.vibrate(rightMotorSpeed: 32767);
    sleep(const Duration(milliseconds: 1000));

    print('Vibrating both motors (full intensity).');
    gamepad.vibrate(leftMotorSpeed: 65535, rightMotorSpeed: 65535);
    sleep(const Duration(milliseconds: 1000));

    print('Turning off vibration.');
    gamepad.vibrate(leftMotorSpeed: 0, rightMotorSpeed: 0);
  }
}
