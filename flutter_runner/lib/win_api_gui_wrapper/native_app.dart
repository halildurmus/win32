import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'window_registry.dart';

// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: avoid_classes_with_only_static_members

const WindowClassName = 'Win32_Dart_Window_Class';

class NativeApp {
  static final hInst = GetModuleHandle(nullptr);

  static void run() {
    final msg = calloc<MSG>();
    while (GetMessage(msg, NULL, 0, 0) != 0) {
      TranslateMessage(msg);
      DispatchMessage(msg);
    }
    free(msg);
  }
}

int wndProc(int hWnd, int uMsg, int wParam, int lParam) {
  switch (uMsg) {
    case WM_CREATE:
      final createInfo = Pointer<CREATESTRUCT>.fromAddress(lParam).ref;
      final isRegistered = WindowsRegistry.endRegistration(hWnd, createInfo);

      if (isRegistered) {
        return 0;
      }
      break;

    case WM_DESTROY:
      if (WindowsRegistry.windows.isEmpty) {
        PostQuitMessage(0);
      }
      return 0;
  }

  final windowEvent = WindowsRegistry.find(hWnd);
  if (windowEvent != null) {
    final result = windowEvent.wndProc(hWnd, uMsg, wParam, lParam);
    if (result != 0) {
      return result;
    }
  }

  return DefWindowProc(hWnd, uMsg, wParam, lParam);
}
