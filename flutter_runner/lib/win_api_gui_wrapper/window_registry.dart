import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'native_app.dart';
import 'window_events.dart';

// ignore_for_file: invalid_use_of_protected_member

class WindowsRegistry {
  static final _awaitingList = <int, WindowEvents>{};
  static final _windows = <int, WindowEvents>{};
  static int? _mainWindowHandle;

  static Map<int, WindowEvents> get windows => Map.unmodifiable(_windows);

  static bool isMainWindow(int handle) {
    return _mainWindowHandle == handle;
  }

  static int get mainWindowHandle => _mainWindowHandle!;

  static WindowEvents get mainWindow => _windows[_mainWindowHandle!]!;

  static WindowEvents? find(int handle) {
    return _windows[handle];
  }

  static void beginRegistration(WindowEvents window) {
    final address = window.hashCode;
    _awaitingList[address] = window;
  }

  static WindowEvents endRegistration(int handle, CREATESTRUCT createInfo) {
    final createClassName = createInfo.lpszClass.toDartString();
    final pWindowHashCode = createInfo.lpCreateParams.cast<Int64>();
    try {
      if (createClassName != WindowClassName) {
        throw 'Class name is not contain';
      }

      final waitingWindow = _awaitingList.remove(pWindowHashCode.value);
      if (waitingWindow == null) {
        throw 'beginRegistration method was not called.';
      }

      if (_windows.isEmpty) {
        _mainWindowHandle = handle;
      }

      _windows[handle] = waitingWindow;
      return waitingWindow;
    } finally {
      free(pWindowHashCode);
    }
  }

  static void unregister(WindowEvents native) {
    _windows.remove(native.handle);
  }
}
