// Basic Petzoldian "hello world" Win32 app.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';
import 'package:win32/win32.dart';

int mainWindowProc(Pointer hWnd, int uMsg, int wParam, int lParam) {
  final hwnd = HWND(hWnd);
  switch (uMsg) {
    case WM_DESTROY:
      PostQuitMessage(0);
      return 0;

    case WM_PAINT:
      final ps = adaptiveCalloc<PAINTSTRUCT>();
      final hdc = BeginPaint(hwnd, ps);
      final rect = adaptiveCalloc<RECT>();
      final msg = 'Hello, Dart!'.toPcwstr();

      GetClientRect(hwnd, rect);
      DrawText(hdc, msg, -1, rect, DT_CENTER | DT_VCENTER | DT_SINGLELINE);
      EndPaint(hwnd, ps);

      free(msg);
      free(rect);
      free(ps);

      return 0;
  }

  return DefWindowProc(hwnd, uMsg, .new(wParam), .new(lParam));
}

// An optional approach to launching a GUI app that lets you use a more
// traditional WinMain entry point, rather than having to manually retrieve the
// hInstance and nShowCmd parameters.
void main() => initApp(winMain);

void winMain(HINSTANCE hInstance, List<String> args, SHOW_WINDOW_CMD nShowCmd) {
  using((arena) {
    // Register the window class.
    final className = arena.pcwstr('Sample Window Class');

    final lpfnWndProc = NativeCallable<WNDPROC>.isolateLocal(
      mainWindowProc,
      exceptionalReturn: 0,
    );

    final wc = arena<WNDCLASS>();
    wc.ref
      ..style = CS_HREDRAW | CS_VREDRAW
      ..lpfnWndProc = lpfnWndProc.nativeFunction
      ..hInstance = hInstance
      ..lpszClassName = PWSTR(className)
      ..hCursor = LoadCursor(null, IDC_ARROW).value
      ..hbrBackground = HBRUSH(GetStockObject(WHITE_BRUSH));
    RegisterClass(wc);

    // Create the window.
    final windowCaption = arena.pcwstr('Dart Native Win32 window');
    final Win32Result(value: hWnd, :error) = CreateWindowEx(
      WS_EX_LEFT, // Optional window styles.
      className, // Window class
      windowCaption, // Window caption
      WS_OVERLAPPEDWINDOW, // Window style
      // Size and position
      CW_USEDEFAULT,
      CW_USEDEFAULT,
      CW_USEDEFAULT,
      CW_USEDEFAULT,
      null, // Parent window
      null, // Menu
      hInstance, // Instance handle
      null, // Additional application data
    );
    if (hWnd.isNull) throw WindowsException(error.toHRESULT());

    ShowWindow(hWnd, nShowCmd);
    UpdateWindow(hWnd);

    // Run the message loop.
    final msg = arena<MSG>();
    while (GetMessage(msg, null, 0, 0).value) {
      TranslateMessage(msg);
      DispatchMessage(msg);
    }

    lpfnWndProc.close();
  });
}
