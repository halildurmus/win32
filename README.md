<img src="https://raw.githubusercontent.com/dart-windows/.github/main/assets/dart-windows-card.png" width="50%" height="50%">

A package that provides a friendly Dart API for accessing gamepads connected to
a Windows machine.

This package builds on top of the Dart [win32][win32_pub_link] package, offering
a high-level Dart wrapper that avoids the need for users to understand FFI or
write directly to the Win32 API.

Part of the [Dart | Windows][dart_windows_link] suite of Windows packages.

[![Package: win32_gamepad][package_badge]][package_link]
[![Publisher: win32.pub][publisher_badge]][publisher_link]
[![Language: Dart][language_badge]][language_link]
[![License: BSD-3-Clause][license_badge]][license_link]

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

A simple example of using the gamepad is available [here][example_link].

Alternatively, a more sophisticated example is available in the form of a
Flutter app, which shows how you can use this to track the status of buttons in
a simple game loop:

![image][demo_image_link]

This can be found in the `example\inspector` directory.

[dart_windows_link]: https://github.com/dart-windows
[demo_image_link]: https://raw.githubusercontent.com/dart-windows/win32_gamepad/main/screenshots/demo.png
[example_link]: https://pub.dev/packages/win32_gamepad/example
[issue_tracker_link]: https://github.com/dart-windows/win32_gamepad/issues
[language_badge]: https://img.shields.io/badge/language-Dart-blue.svg
[language_link]: https://dart.dev
[license_badge]: https://img.shields.io/github/license/dart-windows/win32_gamepad?color=blue
[license_link]: https://opensource.org/licenses/BSD-3-Clause
[package_badge]: https://img.shields.io/pub/v/win32_gamepad.svg
[package_link]: https://pub.dev/packages/win32_gamepad
[publisher_badge]: https://img.shields.io/pub/publisher/win32_gamepad.svg
[publisher_link]: https://pub.dev/publishers/win32.pub
[state_class_link]: https://pub.dev/documentation/win32_gamepad/latest/win32_gamepad/GamepadState-class.html
[update_state_method_link]: https://pub.dev/documentation/win32_gamepad/latest/win32_gamepad/Gamepad/updateState.html
[vibrate_method_link]: https://pub.dev/documentation/win32_gamepad/latest/win32_gamepad/Gamepad/vibrate.html
[win32_pub_link]: https://pub.dev/packages/win32
