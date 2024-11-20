// Test what controllers are enabled on the system.

import 'dart:ffi';

import 'package:win32/win32.dart';

void main() {
  CoInitializeEx(COINIT_MULTITHREADED);

  XInputEnable(true);
  final state = loggingCalloc<XINPUT_STATE>();

  for (var controller = 0; controller < XUSER_MAX_COUNT; controller++) {
    ZeroMemory(state, sizeOf<XINPUT_STATE>());
    final dwResult = XInputGetState(controller, state);
    if (dwResult == ERROR_SUCCESS) {
      print('Controller $controller is connected.');
    } else if (dwResult == ERROR_DEVICE_NOT_CONNECTED) {
      print('Controller $controller is not connected.');
    } else {
      throw WindowsException(WIN32_ERROR(dwResult).toHRESULT());
    }
  }

  free(state);
  print('All done.');
}
