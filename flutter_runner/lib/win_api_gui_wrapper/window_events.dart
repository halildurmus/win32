import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'parent_hwnd.dart';
import 'package:meta/meta.dart';
import 'package:win32/win32.dart';

import 'tools.dart';
import 'window_registry.dart';

enum WindowState { destroy, hide, minimize, stayOpen }

abstract class WindowEvents extends ParentHwnd {
  WindowEvents() {
    WindowsRegistry.beginRegistration(this);
  }

  @protected
  int wndProc(int hWnd, int uMsg, int wParam, int lParam) {
    switch (uMsg) {
      case WM_CLOSE:
        _closeEvent();
        return 0;

      case WM_PAINT:
        onPaint();
        return 0;

      case WM_SIZE:
        onResize(LOWORD(lParam), HIWORD(lParam));
        return 0;

      case WM_FONTCHANGE:
        onFontChange();
        return 0;

      case WM_DPICHANGED:
        onDpiChange(Rect.fromAddress(lParam));
        return 0;

      case WM_SHOWWINDOW:
        onShow();
        return 0;
    }
    return 0;
  }

  void destroy() {
    onDestroy();
    WindowsRegistry.unregister(this);
    DestroyWindow(handle);
  }

  @protected
  void onPaint() {
    if (childContent != null) {
      return;
    }

    final ps = calloc<PAINTSTRUCT>();
    final rect = calloc<RECT>();
    try {
      GetClientRect(handle, rect);
      final hdc = BeginPaint(handle, ps);
      FillRect(hdc, rect, COLOR_WINDOW);
      EndPaint(handle, ps);
    } finally {
      free(ps);
      free(rect);
    }
  }

  @protected
  void onResize(int width, int height) {
    childContent?.rect = Rect(0, 0, width, height);
  }

  @protected
  void onFontChange() {}

  @protected
  void onDpiChange(Rect newWindowRect) {
    rect = newWindowRect;
  }

  @protected
  void onShow() {}

  @protected
  void onCreate() {}

  @protected
  void onDestroy() {}

  @protected
  WindowState onClose() => WindowState.destroy;

  void _closeEvent() {
    final closeAnswer = onClose();
    switch (closeAnswer) {
      case WindowState.destroy:
        destroy();
        break;
      case WindowState.hide:
        hide();
        break;
      case WindowState.minimize:
        minimize();
        break;
      case WindowState.stayOpen:
        break;
    }
  }
}
