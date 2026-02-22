// Demonstrates simple GDI drawing and min/max window sizing.

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

    case WM_GETMINMAXINFO:
      final info = Pointer<MINMAXINFO>.fromAddress(lParam).ref;
      info.ptMinTrackSize.x = 400;
      info.ptMinTrackSize.y = 400;
      return 0;

    case WM_PAINT:
      final ps = adaptiveCalloc<PAINTSTRUCT>();
      final hdc = BeginPaint(hwnd, ps);
      final rect = adaptiveCalloc<RECT>();

      GetClientRect(hwnd, rect);
      for (var i = 1; i <= 20; i++) {
        final color = (255 - 256 / 10 * i).round();
        final hBrush = CreateSolidBrush(
          RGB(0, color >= 0 ? color : 0, color >= 0 ? color : 0),
        );
        rect.ref.left = rect.ref.left + 10;
        rect.ref.right = rect.ref.right - 10;
        rect.ref.top = rect.ref.top + 10;
        rect.ref.bottom = rect.ref.bottom - 10;
        FillRect(hdc, rect, hBrush);
        hBrush.close();
      }

      EndPaint(hwnd, ps);
      free(rect);
      free(ps);

      return 0;
  }
  return DefWindowProc(hwnd, uMsg, WPARAM(wParam), LPARAM(lParam));
}

void main() => initApp(winMain);

void winMain(HINSTANCE hInstance, List<String> args, SHOW_WINDOW_CMD nShowCmd) {
  using((arena) {
    // Register the window class.
    final className = arena.pcwstr('Simple Paint Sample');

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
    final Win32Result(value: hWnd, :error) = CreateWindowEx(
      WS_EX_LEFT, // Optional window styles.
      className, // Window class
      className, // Window caption
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
