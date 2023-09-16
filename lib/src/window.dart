// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:ffi';
import 'dart:math';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide Rectangle;

class Window {
  const Window(this.hwnd);

  factory Window.create({
    required String windowCaption,
    required String className,
    required Pointer<NativeFunction<WindowProc>> windowProc,
    int? hInstance,
    Rectangle<int>? dimensions,
  }) {
    final classNamePtr = className.toNativeUtf16();
    final windowCaptionPtr = windowCaption.toNativeUtf16();

    final wc = calloc<WNDCLASS>()
      ..ref.style = CS_HREDRAW | CS_VREDRAW
      ..ref.lpfnWndProc = windowProc
      ..ref.hInstance = hInstance ?? GetModuleHandle(nullptr)
      ..ref.lpszClassName = classNamePtr
      ..ref.hCursor = LoadCursor(NULL, IDC_ARROW)
      ..ref.hbrBackground = GetStockObject(WHITE_BRUSH);
    RegisterClass(wc);
    free(wc);

    final scaleFactor =
        dimensions != null ? scaleFactorForOrigin(dimensions) : 1.0;

    final hwnd = CreateWindowEx(
      0, // Optional window styles.
      classNamePtr, // Window class
      windowCaptionPtr, // Window caption
      WS_OVERLAPPEDWINDOW | WS_VISIBLE, // Window style
      dimensions != null ? scale(dimensions.left, scaleFactor) : CW_USEDEFAULT,
      dimensions != null ? scale(dimensions.top, scaleFactor) : CW_USEDEFAULT,
      dimensions != null ? scale(dimensions.width, scaleFactor) : CW_USEDEFAULT,
      dimensions != null
          ? scale(dimensions.height, scaleFactor)
          : CW_USEDEFAULT,
      NULL, // Parent window
      NULL, // Menu
      hInstance ?? GetModuleHandle(nullptr), // Instance handle
      nullptr, // Additional application data
    );

    if (hwnd == FALSE) throw Exception('Unable to create top-level window.');

    free(windowCaptionPtr);
    free(classNamePtr);

    return Window(hwnd);
  }

  final int hwnd;

  static double scaleFactorForOrigin(Rectangle<int> dimensions) {
    final point = calloc<POINT>()
      ..ref.x = dimensions.left
      ..ref.y = dimensions.top;
    final dpiX = calloc<UINT>();
    final dpiY = calloc<UINT>();

    final hmonitor = MonitorFromPoint(point.ref, MONITOR_DEFAULTTONEAREST);
    GetDpiForMonitor(hmonitor, MONITOR_DPI_TYPE.MDT_EFFECTIVE_DPI, dpiX, dpiY);
    final dpi = dpiX.value;

    free(point);
    free(dpiX);
    free(dpiY);

    return dpi / 96.0;
  }

  // Scale helper to convert logical scaler values to physical using passed in
  // scale factor
  static int scale(int source, double scaleFactor) =>
      (source * scaleFactor).floor();

  Rectangle<int> get dimensions {
    final rect = calloc<RECT>();
    GetClientRect(hwnd, rect);
    final windowRect = Rectangle<int>(rect.ref.left, rect.ref.top,
        rect.ref.right - rect.ref.left, rect.ref.bottom - rect.ref.top);
    free(rect);
    return windowRect;
  }

  void setParent(Window parent) => SetParent(hwnd, parent.hwnd);

  void setFocus() => SetFocus(hwnd);

  void move(Rectangle<int> newDimensions, {bool repaintWindow = true}) =>
      MoveWindow(
        hwnd,
        newDimensions.left,
        newDimensions.top,
        newDimensions.width,
        newDimensions.height,
        repaintWindow ? TRUE : FALSE,
      );

  void runMessageLoop() {
    // Run the message loop.
    final msg = calloc<MSG>();
    while (GetMessage(msg, NULL, 0, 0) != FALSE) {
      TranslateMessage(msg);
      DispatchMessage(msg);
    }
    free(msg);
  }
}
