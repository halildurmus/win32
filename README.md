[![ci][ci_badge]][ci_link]
[![Package: win32_gamepad][package_badge]][package_link]
[![Publisher: halildurmus.dev][publisher_badge]][publisher_link]
[![Language: Dart][language_badge]][language_link]
[![License: BSD-3-Clause][license_badge]][license_link]

A package that provides a friendly Dart API for accessing gamepads connected to
a Windows machine.

This package builds on top of the Dart [win32][win32_pub_dev_link] package,
offering a high-level Dart wrapper that avoids the need for users to understand
FFI or write directly to the Win32 API.

## Usage

Having imported the package, you can get a `Gamepad` object as follows:

```dart
final gamepad = Gamepad(0); // primary controller
```

Windows allows up to four gamepads to be connected at once. You can poll the
gamepad for status by calling [`updateState()`][update_state_method_link] and
then inspecting the [`state`][state_class_link] object during a game loop;
this contains values for the various buttons, triggers and thumbsticks.

You can also trigger vibrations with the [`vibrate`][vibrate_method_link]
method, which activates one of the two rumble motors on a typical gamepad.

## Example

A simple example of using the gamepad:

```dart
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
```

Alternatively, a more sophisticated example is available in the
`example\inspector\` directory in the form of a Flutter app that shows how you
can use this to monitor the status of buttons in a simple game loop:

![image][demo_image_link]

## Feature requests and bugs

Please file feature requests and bugs at the
[issue tracker][issue_tracker_link].

[ci_badge]: https://github.com/halildurmus/win32_gamepad/actions/workflows/build.yml/badge.svg
[ci_link]: https://github.com/halildurmus/win32_gamepad/actions/workflows/build.yml
[demo_image_link]: https://raw.githubusercontent.com/halildurmus/win32_gamepad/main/screenshots/demo.png
[issue_tracker_link]: https://github.com/halildurmus/win32_gamepad/issues
[language_badge]: https://img.shields.io/badge/language-Dart-blue.svg
[language_link]: https://dart.dev
[license_badge]: https://img.shields.io/github/license/halildurmus/win32_gamepad?color=blue
[license_link]: https://opensource.org/licenses/BSD-3-Clause
[package_badge]: https://img.shields.io/pub/v/win32_gamepad.svg
[package_link]: https://pub.dev/packages/win32_gamepad
[publisher_badge]: https://img.shields.io/pub/publisher/win32_gamepad.svg
[publisher_link]: https://pub.dev/publishers/halildurmus.dev
[state_class_link]: https://pub.dev/documentation/win32_gamepad/latest/win32_gamepad/GamepadState-class.html
[update_state_method_link]: https://pub.dev/documentation/win32_gamepad/latest/win32_gamepad/Gamepad/updateState.html
[vibrate_method_link]: https://pub.dev/documentation/win32_gamepad/latest/win32_gamepad/Gamepad/vibrate.html
[win32_pub_dev_link]: https://pub.dev/packages/win32
