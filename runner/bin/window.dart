import 'dart:ffi';
import 'dart:math';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide Rectangle;

class Window {
  final int hwnd;

  Window(this.hwnd);

  factory Window.create(
      {required String windowCaption,
      required String className,
      required Pointer<NativeFunction<WindowProc>> windowProc,
      int? hInstance,
      Rectangle<int>? dimensions}) {
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

    final hwnd = CreateWindowEx(
        0, // Optional window styles.
        classNamePtr, // Window class
        windowCaptionPtr, // Window caption
        WS_OVERLAPPEDWINDOW | WS_VISIBLE, // Window style
        dimensions?.left ?? CW_USEDEFAULT,
        dimensions?.top ?? CW_USEDEFAULT,
        dimensions?.width ?? CW_USEDEFAULT,
        dimensions?.height ?? CW_USEDEFAULT,
        NULL, // Parent window
        NULL, // Menu
        hInstance ?? GetModuleHandle(nullptr), // Instance handle
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
    final windowRect = Rectangle<int>(rect.ref.left, rect.ref.top,
        rect.ref.right - rect.ref.left, rect.ref.bottom - rect.ref.top);
    free(rect);
    return windowRect;
  }

  void setParent(Window parent) {
    SetParent(hwnd, parent.hwnd);
  }

  void setFocus() {
    SetFocus(hwnd);
  }

  void move(Rectangle<int> newDimensions, {bool repaintWindow = true}) {
    MoveWindow(hwnd, newDimensions.left, newDimensions.top, newDimensions.width,
        newDimensions.height, repaintWindow ? TRUE : FALSE);
  }

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

// Scale helper to convert logical scaler values to physical using passed in
// scale factor
int Scale(int source, double scale_factor) => (source * scale_factor).floor();
