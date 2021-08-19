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

  static void quit() {
    WindowsRegistry.mainWindow.destroy();
  }

  static int wndProc(int hWnd, int uMsg, int wParam, int lParam) {
    final windowEvent = WindowsRegistry.find(hWnd);
    final result = windowEvent?.wndProc(hWnd, uMsg, wParam, lParam);
    if (result != null && result != 0) {
      return result;
    }

    switch (uMsg) {
      case WM_CREATE:
        final createInfo = Pointer<CREATESTRUCT>.fromAddress(lParam).ref;
        final eventWindow = WindowsRegistry.endRegistration(hWnd, createInfo);
        eventWindow.onCreate(hWnd, createInfo);
        return 0;

      case WM_DESTROY:
        if (WindowsRegistry.isMainWindow(hWnd)) {
          final allWindow = WindowsRegistry.windows.values.toList();
          allWindow.forEach((win) => win.destroy());
          PostQuitMessage(0);
          return 0;
        }
    }

    return DefWindowProc(hWnd, uMsg, wParam, lParam);
  }
}
