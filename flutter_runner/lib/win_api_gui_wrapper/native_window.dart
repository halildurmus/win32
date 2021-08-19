import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';
import 'package:meta/meta.dart';

import '../win32_addons.dart';
import 'window_events.dart';
import 'window_registry.dart';

import 'native_app.dart';
import 'tools.dart';

class NativeWindow extends WindowEvents {
  NativeWindow() {
    _createWindowHidden();
  }

  @override
  @protected
  void onCreate(int hWnd, CREATESTRUCT createInfo) {
    if (!WindowsRegistry.isMainWindow(hWnd)) {
      SetWindowLongPtr(hWnd, GWL_HWNDPARENT, WindowsRegistry.mainWindowHandle);
    }
    super.onCreate(hWnd, createInfo);
  }

  @override
  @protected
  void onPaint(int hdc, Pointer<RECT> pRect) {
    FillRect(hdc, pRect, COLOR_WINDOW);
  }

  void center() {
    final thisScreenRect = rect;
    rect = centredOfScreenRect(
      thisScreenRect.width,
      thisScreenRect.height,
    );
  }

  void _createWindowHidden() {
    // this pointer is used in the main NativeApp.wndProc
    // to register and associate with this object
    // memory will be free in WindowEventRegistry.endRegistration()
    final pWindowHashCode = calloc<Int64>()..value = hashCode;

    final pWindowClassName = windowClassName.toNativeUtf16();
    final pTitle = 'Window'.toNativeUtf16();
    try {
      final hWnd = CreateWindowEx(
        WindowsRegistry.windows.isEmpty ? WS_EX_APPWINDOW : WS_EX_TOOLWINDOW,
        pWindowClassName,
        pTitle,
        WS_OVERLAPPEDWINDOW,
        CW_USEDEFAULT,
        CW_USEDEFAULT,
        CW_USEDEFAULT,
        CW_USEDEFAULT,
        NULL,
        NULL,
        NativeApp.hInst,
        pWindowHashCode,
      );

      if (hWnd == 0) {
        throw 'Window create error';
      }
    } finally {
      free(pTitle);
      free(pWindowClassName);
    }
  }

  late String windowClassName = _registerWindowClass();

  String _registerWindowClass() {
    final pWindowClass = WindowClassName.toNativeUtf16();
    final pWndClass = calloc<WNDCLASS>();

    try {
      pWndClass.ref
        ..style = CS_HREDRAW | CS_VREDRAW
        ..lpfnWndProc = Pointer.fromFunction<WindowProc>(NativeApp.wndProc, 0)
        ..hInstance = NativeApp.hInst
        ..hCursor = LoadCursor(NULL, IDC_ARROW)
        ..lpszClassName = pWindowClass;
      RegisterClass(pWndClass);
    } finally {
      free(pWindowClass);
      free(pWndClass);
    }

    return WindowClassName;
  }
}
