import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'window_events.dart';

import 'package:win32/win32.dart';

import 'native_app.dart';
import 'tools.dart';

class NativeWindow extends WindowEvents {
  late final int _hWnd;

  NativeWindow() {
    _hWnd = _createWindowHidden();
  }

  @override
  int get handle => _hWnd;

  void center() {
    final thisScreenRect = rect;
    rect = centredOfScreenRect(
      thisScreenRect.width,
      thisScreenRect.height,
    );
  }

  int _createWindowHidden() {
    final pWindowClassName = _windowClassName.toNativeUtf16();

    // this pointer is used in the main wndProc
    // to register and associate with this object
    // memory will be free in WindowEventRegistry.endRegistration()
    final pNativeWindowAddress = calloc<Int64>()..value = hashCode;
    final pTitle = 'Window'.toNativeUtf16();
    try {
      final hWnd = CreateWindowEx(
        0,
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
        pNativeWindowAddress,
      );

      if (hWnd == 0) {
        throw 'Window create error';
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
      __windowClassName = WindowClassName;
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
}
