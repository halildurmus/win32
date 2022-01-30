import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'utils.dart';

// A class abstraction for a high DPI-aware Win32 Window. Intended to be
// inherited from by classes that wish to specialize with custom
// rendering and input handling
class Win32Window {
  static final className = 'FLUTTER_RUNNER_WIN32_WINDOW'.toNativeUtf16();

  // window handle for top level window.
  int topLevelWindowHandle = 0;

  // window handle for hosted content.
  int childWindowHandle = 0;

  // Creates and shows a win32 window with |title| and position and size using
  // |origin| and |size|. New windows are created on the default monitor. Window
  // sizes are specified to the OS in physical pixels, hence to ensure a
  // consistent size to will treat the width height passed in to this function
  // as logical pixels and scale to appropriate for the default monitor. Returns
  // true if the window was created successfully.
  bool CreateAndShow(String title, Point origin, Size size) {
    final window_class = calloc<WNDCLASS>()
      ..ref.hCursor = LoadCursor(NULL, IDC_ARROW)
      ..ref.lpszClassName = className
      ..ref.style = CS_HREDRAW | CS_VREDRAW
      ..ref.hInstance = GetModuleHandle(nullptr)
      ..ref.hbrBackground = 0
      ..ref.lpfnWndProc = Pointer.fromFunction<WindowProc>(mainWindowProc, 0);
    RegisterClass(window_class);

    // final monitor = MonitorFromPoint(target_point, MONITOR_DEFAULTTONEAREST);
    final dpi = 96;
    final scale_factor = dpi / 96.0;

    CreateWindow(
        className,
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

    return OnCreate();
  }

  // Called when CreateAndShow is called, allowing subclass window-related
  // setup. Subclasses should return false if setup fails.
  bool OnCreate() => true;

  // Called when Destroy is called.
  void OnDestroy() {}

  // Release OS resources associated with window.
  void Destroy() {}

  // Inserts |content| into the window tree.
  void SetChildContent(int contentWindowHandle) {
    childWindowHandle = contentWindowHandle;
    SetParent(contentWindowHandle, topLevelWindowHandle);

    final rect = calloc<RECT>();
    GetClientRect(topLevelWindowHandle, rect);
    final frame = rect.ref;
    MoveWindow(contentWindowHandle, frame.left, frame.top,
        frame.right - frame.left, frame.bottom - frame.top, TRUE);
    free(rect);

    SetFocus(childWindowHandle);
  }

  // Returns the backing Window handle to enable clients to set icon and other
  // window properties. Returns nullptr if the window has been destroyed.
  int GetHandle() => topLevelWindowHandle;

  static int mainWindowProc(int hWnd, int uMsg, int wParam, int lParam) {
    switch (uMsg) {
      case WM_DESTROY:
        PostQuitMessage(0);
        return 0;
    }
    return DefWindowProc(hWnd, uMsg, wParam, lParam);
  }
}
