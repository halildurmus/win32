// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:io';

import 'package:win32_gamepad/win32_gamepad.dart';

void main() {
  for (var idx = 0; idx < 4; idx++) {
    final gamepad = Gamepad(idx);
    final connectionStatus =
        gamepad.state.isConnected ? 'connected' : 'disconnected';
    print('Gamepad $idx is $connectionStatus.');
  }

  print('Testing first gamepad.');
  final gamepad = Gamepad(0);
  if (gamepad.isConnected) {
    final GamepadBatteryInfo(:batteryLevel, :batteryType) =
        gamepad.gamepadBatteryInfo;
    print('Battery type is ${batteryType.name}.');
    print('Battery level is ${batteryLevel.name}.');

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
