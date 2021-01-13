import 'dart:ffi';
import 'dart:math' as math;

import 'package:win32/win32.dart';

import '_app.dart' as app;

bool _windowWndProc(int hWnd, int uMsg, int wParam, int lParam) {
  switch(uMsg) {
    case WM_CLOSE:
      ShowWindow(hWnd, SW_HIDE);
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
      WS_OVERLAPPEDWINDOW,
      rect.left,
      rect.top,
      rect.width,
      rect.height,
      NULL,
      NULL,
      app.hInst,
      nullptr);
  app.registryWdnProc(_windowWndProc);
  return hWnd;
}

String _regWinClass() {
  const windowClass = 'Tray_Callback_Window';
  final wc = WNDCLASS.allocate();
  wc.style = CS_HREDRAW | CS_VREDRAW;
  wc.lpfnWndProc = app.wndProc;
  wc.hInstance = app.hInst;
  wc.hIcon = app.loadDartIcon();
  wc.hCursor = LoadCursor(NULL, IDC_ARROW);
  wc.lpszClassName = TEXT(windowClass);
  RegisterClass(wc.addressOf);
  return windowClass;
}

math.Rectangle<int> _getWindowCenterRect() {
  const windowWidth = 500;
  const windowHeight = 250;

  final screenWidth = GetSystemMetrics(SM_CXFULLSCREEN);
  final screenHeight = GetSystemMetrics(SM_CYFULLSCREEN);

  final x = (screenWidth - windowWidth) ~/ 2;
  final y = (screenHeight - windowHeight) ~/ 2;
  return math.Rectangle(x, y, windowWidth, windowHeight);
}
