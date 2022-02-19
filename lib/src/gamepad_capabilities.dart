import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'exceptions.dart';

/// Information about what a gamepad supports: vibration, voice, navigation,
/// etc.
class GamepadCapabilities {
  late int _flags;

  /// The value which the left and right triggers must be greater than to
  /// register as pressed.
  ///
  /// This is optional, but often desirable.
  final int triggerThreshold = XINPUT_GAMEPAD_TRIGGER_THRESHOLD;

  /// A constant which can be used as a positive and negative value to filter a
  /// left thumbstick input.
  final int leftThumbDeadzone = XINPUT_GAMEPAD_LEFT_THUMB_DEADZONE;

  /// A constant which can be used as a positive and negative value to filter a
  /// right thumbstick input.
  final int rightThumbDeadzone = XINPUT_GAMEPAD_RIGHT_THUMB_DEADZONE;

  /// Device has an integrated voice device.
  bool get isVoiceSupported =>
      _flags & XINPUT_CAPS_VOICE_SUPPORTED == XINPUT_CAPS_VOICE_SUPPORTED;

  /// Device supports force feedback functionality. Note that these
  /// force-feedback features beyond rumble are not currently supported.
  bool get supportsVibration =>
      _flags & XINPUT_CAPS_FFB_SUPPORTED == XINPUT_CAPS_FFB_SUPPORTED;

  /// Device has menu navigation buttons (START, BACK, DPAD).
  bool get hasNavigationButtons =>
      !(_flags & XINPUT_CAPS_NO_NAVIGATION == XINPUT_CAPS_NO_NAVIGATION);

  /// Device is wireless.
  bool get isWireless =>
      !(_flags & XINPUT_CAPS_WIRELESS == XINPUT_CAPS_WIRELESS);

  GamepadCapabilities(int controller) {
    final pCapabilities = calloc<XINPUT_CAPABILITIES>();

    try {
      final dwResult =
          XInputGetCapabilities(controller, XINPUT_FLAG_GAMEPAD, pCapabilities);
      if (dwResult == ERROR_DEVICE_NOT_CONNECTED) {
        throw DeviceNotConnectedError();
      } else {
        _flags = pCapabilities.ref.Flags;
      }
    } finally {
      free(pCapabilities);
    }
  }
}
