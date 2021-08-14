import 'dart:ffi';

import 'package:win32/win32.dart';
import 'package:ffi/ffi.dart';

class Point {
  int x;
  int y;

  Point(this.x, this.y);
}

class Size {
  int width;
  int height;

  Size(this.width, this.height);
}

// Scale helper to convert logical scaler values to physical using passed in
// scale factor
int Scale(int source, double scale_factor) => (source * scale_factor).floor();

class WindowClassRegistrar {
  static WindowClassRegistrar getInstance() {
    return WindowClassRegistrar();
  }
}

// A class abstraction for a high DPI-aware Win32 Window. Intended to be
// inherited from by classes that wish to specialize with custom
// rendering and input handling
class Win32Window {
  static const className = 'FLUTTER_RUNNER_WIN32_WINDOW';

  bool quit_on_close_ = false;

  // window handle for top level window.
  late int window_handle_;

  // window handle for hosted content.
  late int child_content_;

  // Creates and shows a win32 window with |title| and position and size using
  // |origin| and |size|. New windows are created on the default monitor. Window
  // sizes are specified to the OS in physical pixels, hence to ensure a
  // consistent size to will treat the width height passed in to this function
  // as logical pixels and scale to appropriate for the default monitor. Returns
  // true if the window was created successfully.
  bool CreateAndShow(String title, Point origin, Size size) {
    final classNamePtr = TEXT(className);

    final window_class = malloc<WNDCLASS>();
    window_class.ref
      ..hCursor = LoadCursor(NULL, IDC_ARROW)
      ..lpszClassName = classNamePtr
      ..style = CS_HREDRAW | CS_VREDRAW
      ..hInstance = GetModuleHandle(nullptr)
      ..hbrBackground = 0
      ..lpfnWndProc = Pointer.fromFunction<WindowProc>(mainWindowProc, 0);
    RegisterClass(window_class);

    //final monitor = MonitorFromPoint(target_point, MONITOR_DEFAULTTONEAREST);
    //final int dpi = FlutterDesktopGetDpiForMonitor(monitor);
    const dpi = 96;
    const scale_factor = dpi / 96.0;

    final window = CreateWindow(
        classNamePtr,
        TEXT(title),
        WS_OVERLAPPEDWINDOW | WS_VISIBLE,
        Scale(origin.x, scale_factor),
        Scale(origin.y, scale_factor),
        Scale(size.width, scale_factor),
        Scale(size.height, scale_factor),
        NULL,
        NULL,
        GetModuleHandle(nullptr),
        nullptr);

    ShowWindow(window, SW_SHOW);
    free(classNamePtr);
    return window != 0;
  }

  // Release OS resources associated with window.
  void Destroy() {}

  // Inserts |content| into the window tree.
  void SetChildContent(int content) {}

  // Returns the backing Window handle to enable clients to set icon and other
  // window properties. Returns nullptr if the window has been destroyed.
  int GetHandle() => window_handle_;

  static int mainWindowProc(int hWnd, int uMsg, int wParam, int lParam) {
    switch (uMsg) {
      case WM_DESTROY:
        PostQuitMessage(0);
        return 0;

      case WM_PAINT:
        final ps = malloc<PAINTSTRUCT>();
        final rect = malloc<RECT>();
        final msg = TEXT('Hello, Dart!');
        try {
          // final hdc = BeginPaint(hWnd, ps);
          // GetClientRect(hWnd, rect);
          // DrawText(hdc, msg, -1, rect, DT_CENTER | DT_VCENTER | DT_SINGLELINE);
          // EndPaint(hWnd, ps);
        } finally {
          free(ps);
          free(rect);
          free(msg);
        }
        return 0;
    }
    return DefWindowProc(hWnd, uMsg, wParam, lParam);
  }
}
