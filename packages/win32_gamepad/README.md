[![ci][ci_badge]][ci_link]
[![Package: win32_gamepad][package_badge]][package_link]
[![Publisher: halildurmus.dev][publisher_badge]][publisher_link]
[![Language: Dart][language_badge]][language_link]
[![License: BSD-3-Clause][license_badge]][license_link]

**A modern, type-safe Dart API for accessing gamepads connected to a Windows
machine.**

This package builds on top of the [package:win32][win32_pub_dev_link] and
provides a high-level abstraction over native registry APIs. It eliminates the
need to work directly with FFI, raw pointers, or low-level Win32 calls while
preserving performance and correctness.

## ✨ Features

- **Connect up to 4 gamepads** — supports all four XInput controller slots
- **Poll buttons, triggers & thumbsticks** — full access to every input via a
  clean `GamepadState` object
- **Rumble motor control** — independently set left and right vibration motor
  speeds
- **Battery information** — query battery level and type for wireless
  controllers

## 🚀 Getting Started

Add the package to your `pubspec.yaml`:

```yaml
dependencies:
  win32_gamepad: ^1.0.10
```

Then import it:

```dart
import 'package:win32_gamepad/win32_gamepad.dart';
```

## ⚡ Quick Example

Create a `Gamepad` instance by passing the controller index (0–3):

```dart
final gamepad = Gamepad(0); // primary controller
```

Windows supports up to four gamepads simultaneously. Poll the gamepad by calling
[`updateState()`][update_state_method_link] in your game loop, then inspect the
[`state`][state_class_link] object for buttons, triggers, and thumbstick values.
Rumble motors can be activated with the [`vibrate`][vibrate_method_link] method.

```dart
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
```

## 🖥️ Flutter Inspector Demo

A full Flutter example app is available in the `example/inspector/` directory.
It demonstrates how to build a live gamepad monitor with button highlights,
trigger bars, and thumbstick visualisations inside a game loop:

![Gamepad Inspector Demo][demo_image_link]

## 📝 Documentation

Full API reference is available here:

👉 [API Reference][api_reference_link].

Additional usage examples are located in the [example] directory.

## 🐞 Features and Bugs

If you encounter bugs or need additional functionality, please
[file an issue][issue_tracker_link].

[api_reference_link]: https://pub.dev/documentation/win32_gamepad/latest/
[ci_badge]: https://github.com/halildurmus/win32_gamepad/actions/workflows/win32_gamepad.yml/badge.svg
[ci_link]: https://github.com/halildurmus/win32_gamepad/actions/workflows/win32_gamepad.yml
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
