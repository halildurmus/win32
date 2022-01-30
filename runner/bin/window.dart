import 'dart:ffi';
import 'dart:math';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide Rectangle;

class Window {
  final int hwnd;

  Window(this.hwnd);

  factory Window.create(
      {required String windowCaption,
      required int hInstance,
      required String className}) {
    final classNamePtr = className.toNativeUtf16();
    final windowCaptionPtr = windowCaption.toNativeUtf16();

    final hwnd = CreateWindowEx(
        0, // Optional window styles.
        classNamePtr, // Window class
        windowCaptionPtr, // Window caption
        WS_OVERLAPPEDWINDOW | WS_VISIBLE, // Window style

        // Size and position
        CW_USEDEFAULT,
        CW_USEDEFAULT,
        CW_USEDEFAULT,
        CW_USEDEFAULT,
        NULL, // Parent window
        NULL, // Menu
        hInstance, // Instance handle
        nullptr // Additional application data
        );

    if (hwnd == FALSE) {
      throw Exception('Unable to create top-level window.');
    }

    free(windowCaptionPtr);
    free(classNamePtr);
    return Window(hwnd);
  }

  Rectangle<int> get dimensions {
    final rect = calloc<RECT>();
    GetClientRect(hwnd, rect);
    final window = Rectangle<int>(rect.ref.left, rect.ref.top,
        rect.ref.right - rect.ref.left, rect.ref.bottom - rect.ref.top);
    free(rect);
    return window;
  }

  void setParent(Window parent) {
    SetParent(hwnd, parent.hwnd);
  }
}

// Scale helper to convert logical scaler values to physical using passed in
// scale factor
int Scale(int source, double scale_factor) => (source * scale_factor).floor();
