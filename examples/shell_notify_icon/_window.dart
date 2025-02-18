import 'dart:ffi';
import 'dart:math' as math;

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import '_app.dart' as app;

bool _windowWndProc(int hWnd, int uMsg, int wParam, int lParam) {
  switch (uMsg) {
    case WM_CLOSE:
      ShowWindow(hWnd, SHOW_WINDOW_CMD.SW_HIDE);
      return true;
  }
  return false;
}

int createHidden() {
  final windowClassNme = _regWinClass();
  final rect = _getWindowCenterRect();
  final hWnd = CreateWindowEx(
    0,
    TEXT(windowClassNme),
    TEXT('Tray Callback Window'),
    WINDOW_STYLE.WS_OVERLAPPEDWINDOW,
    rect.left,
    rect.top,
    rect.width,
    rect.height,
    NULL,
    NULL,
    app.hInst,
    nullptr,
  );
  app.registerWndProc(_windowWndProc);
  return hWnd;
}

String _regWinClass() {
  const windowClass = 'Tray_Callback_Window';
  final pWndClass =
      calloc<WNDCLASS>()
        ..ref.style = WNDCLASS_STYLES.CS_HREDRAW | WNDCLASS_STYLES.CS_VREDRAW
        ..ref.lpfnWndProc = app.lpfnWndProc.nativeFunction
        ..ref.hInstance = app.hInst
        ..ref.hIcon = app.loadDartIcon()
        ..ref.hCursor = LoadCursor(NULL, IDC_ARROW)
        ..ref.lpszClassName = TEXT(windowClass);
  RegisterClass(pWndClass);
  return windowClass;
}

math.Rectangle<int> _getWindowCenterRect() {
  const windowWidth = 500;
  const windowHeight = 250;

  final screenWidth = GetSystemMetrics(SYSTEM_METRICS_INDEX.SM_CXFULLSCREEN);
  final screenHeight = GetSystemMetrics(SYSTEM_METRICS_INDEX.SM_CYFULLSCREEN);

  final x = (screenWidth - windowWidth) ~/ 2;
  final y = (screenHeight - windowHeight) ~/ 2;
  return math.Rectangle(x, y, windowWidth, windowHeight);
}
