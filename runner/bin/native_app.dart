import 'dart:ffi';
import 'dart:math' as math;

import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';
import 'package:win32/win32.dart';

// ignore: avoid_classes_with_only_static_members
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
  final window = _windows[hWnd];
  if (window != null) {
    final windowResult = window.wndProc(hWnd, uMsg, wParam, lParam);
    if (windowResult) {
      return 0;
    }
  }

  switch (uMsg) {
    case WM_DESTROY:
      if (_windows.isEmpty) {
        PostQuitMessage(0);
      }
      return 0;
  }

  return DefWindowProc(hWnd, uMsg, wParam, lParam);
}

final _windows = <int, NativeWindow>{};

abstract class NativeWindow {
  late final int hWnd;

  NativeWindow() {
    hWnd = _createWindowHidden();
    _windows[hWnd] = this;
  }

  @protected
  bool wndProc(int hWnd, int uMsg, int wParam, int lParam) {
    switch(uMsg) {
      case WM_CLOSE:
        _windows.remove(hWnd);
        DestroyWindow(hWnd);

        return true;

      case WM_PAINT:
        final ps = calloc<PAINTSTRUCT>();
        final rect = calloc<RECT>();
        try {
          GetClientRect(hWnd, rect);
          final hdc = BeginPaint(hWnd, ps);
          FillRect(hdc, rect, COLOR_WINDOW);
          EndPaint(hWnd, ps);
        } finally {
          free(ps);
          free(rect);
        }
        return true;
    }
    return false;
  }
}

int _createWindowHidden() {
  final rect = _getWindowCenterRect();

  final pWindowClassName = _windowClassName.toNativeUtf16();
  final pTitle = 'Window'.toNativeUtf16();
  try {
    final hWnd = CreateWindowEx(
        0,
        pWindowClassName,
        pTitle,
        WS_OVERLAPPEDWINDOW,
        rect.left,
        rect.top,
        rect.width,
        rect.height,
        NULL,
        NULL,
        NativeApp.hInst,
        nullptr);

    if (hWnd == 0) {
      throw 'Window create erorr';
    }

    return hWnd;
  } finally {
    free(pTitle);
    free(pWindowClassName);
  }
}

String __windowClassName = '';
String get _windowClassName {
  if (__windowClassName.isEmpty) {
    __windowClassName = 'WindowClass';
    _registryWinClass();
  }
  return __windowClassName;
}

void _registryWinClass() {
  final pWindowClass = __windowClassName.toNativeUtf16();
  final pWndClass = calloc<WNDCLASS>();

  try {
    pWndClass.ref
      ..style = CS_HREDRAW | CS_VREDRAW
      ..lpfnWndProc = Pointer.fromFunction<WindowProc>(wndProc, 0)
      ..hInstance = NativeApp.hInst
    //..hbrBackground = LoadResource(hInst, WHITE_BRUSH)
    //..hIcon = LoadIcon (hInst , 1)
      ..hCursor = LoadCursor(NULL, IDC_ARROW)
      ..lpszClassName = pWindowClass;
    RegisterClass(pWndClass);
  } finally {
    free(pWindowClass);
    free(pWndClass);
  }
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
