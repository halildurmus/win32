import 'dart:ffi';
import 'dart:math' as math;

import 'package:win32/win32.dart';

import '_app.dart' as app;

bool _windowWndProc(int hWnd, int uMsg, int wParam, int lParam) {
  switch (uMsg) {
    case WM_CLOSE:
      ShowWindow(hWnd, SW_HIDE);
      return true;
  }
  return false;
}

int createHidden() {
  final windowClassName = _regWinClass();
  final rect = _getWindowCenterRect();
  final windowName = w('Tray Callback Window');
  final hWnd = CreateWindowEx(
    WS_EX_LEFT,
    windowClassName.ptr,
    windowName.ptr,
    WS_OVERLAPPEDWINDOW,
    rect.left,
    rect.top,
    rect.width,
    rect.height,
    null,
    null,
    app.hInst,
    null,
  );
  app.registerWndProc(_windowWndProc);
  return hWnd;
}

Pcwstr _regWinClass() {
  final windowClass = w('Tray_Callback_Window');
  final pWndClass = loggingCalloc<WNDCLASS>();
  pWndClass.ref
    ..style = CS_HREDRAW | CS_VREDRAW
    ..lpfnWndProc = app.lpfnWndProc.nativeFunction
    ..hInstance = app.hInst
    ..hIcon = app.loadDartIcon()
    ..hCursor = LoadCursor(null, IDC_ARROW)
    ..lpszClassName = windowClass.ptr;
  RegisterClass(pWndClass);
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
