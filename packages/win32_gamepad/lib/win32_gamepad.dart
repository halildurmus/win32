/// A modern, type-safe Dart API for accessing gamepads connected to a Windows
/// machine.
///
/// This library provides a high-level Dart wrapper around the Windows Gamepad
/// API, allowing developers to easily access gamepad information, state, and
/// capabilities without needing to interact directly with the underlying
/// Windows APIs.
///
/// It includes features such as:
/// - Retrieving connected gamepads and their capabilities
/// - Accessing and controlling gamepad state, including button presses and axis
///   movements
/// - Handling gamepad battery information
library;

export 'src/error.dart';
export 'src/gamepad.dart';
export 'src/gamepad_batteryinfo.dart';
export 'src/gamepad_capabilities.dart';
export 'src/gamepad_state.dart';
export 'src/models/models.dart';
