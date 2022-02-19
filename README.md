[![pub package](https://img.shields.io/pub/v/win32_gamepad.svg)](https://pub.dev/packages/win32_gamepad)
[![Language](https://img.shields.io/badge/language-Dart-blue.svg)](https://dart.dev)

A package that provides a friendly Dart API for accessing gamepads connected to a Windows machine.

This package builds on top of the Dart [win32](https://pub.dev/packages/win32)
package, offering a high-level Dart wrapper that avoids the need for users
to understand FFI or write directly to the Win32 API.

## Using win32_gamepad
Having imported the package, you can get a `Gamepad` object as follows:

```dart
final gamepad = Gamepad(0); // primary controller
```

Windows allows up to four gamepads to be connected at once. You can poll the gamepad for status by calling `updateState()` and then inspecting the `gamepad.state` object during a game loop; this contains values for the various buttons, triggers and thumbsticks.

## Example
An example Flutter app is provided which shows how you can use this to track the status of buttons in a simple game loop:
![image](https://user-images.githubusercontent.com/2319867/154780182-24d89abe-500b-4352-97bb-3704ba694340.png)
