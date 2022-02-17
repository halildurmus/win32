import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'exceptions.dart';

class GamepadCapabilities {
  late int _flags;

  final int triggerThreshold = XINPUT_GAMEPAD_TRIGGER_THRESHOLD;

  final int leftThumbDeadzone = XINPUT_GAMEPAD_LEFT_THUMB_DEADZONE;
  final int rightThumbDeadzone = XINPUT_GAMEPAD_RIGHT_THUMB_DEADZONE;

  bool get isVoiceSupported =>
      _flags & XINPUT_CAPS_VOICE_SUPPORTED == XINPUT_CAPS_VOICE_SUPPORTED;

  bool get supportsVibration =>
      _flags & XINPUT_CAPS_FFB_SUPPORTED == XINPUT_CAPS_FFB_SUPPORTED;

  bool get hasNavigationButtons =>
      !(_flags & XINPUT_CAPS_NO_NAVIGATION == XINPUT_CAPS_NO_NAVIGATION);

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
