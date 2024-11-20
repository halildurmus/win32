// Example creating a circular (elliptical) window with custom shape.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';
import 'package:win32/win32.dart';

int mainWindowProc(Pointer hWnd, int uMsg, int wParam, int lParam) {
  final hwnd = HWND(hWnd);
  switch (uMsg) {
    case WM_CREATE:
      final hRgn = CreateEllipticRgn(0, 0, 500, 500);
      SetWindowRgn(hwnd, hRgn, true);
      return 0;

    case WM_DESTROY:
      PostQuitMessage(0);
      return 0;

    case WM_NCHITTEST:
      // A click on the client area is treated as a click on the title bar
      if (DefWindowProc(hwnd, uMsg, WPARAM(wParam), LPARAM(lParam)) ==
          HTCLIENT) {
        return HTCAPTION;
      }
      return 0;

    case WM_PAINT:
      final ps = adaptiveCalloc<PAINTSTRUCT>();
      final hdc = BeginPaint(hwnd, ps);
      final hPen = CreatePen(PS_SOLID, 4, RGB(64, 64, 64));
      final hPrevPen = SelectObject(hdc, HGDIOBJ(hPen));

      Ellipse(hdc, 0, 0, 499, 499);
      SelectObject(hdc, hPrevPen);
      hPen.close();

      final rect = adaptiveCalloc<RECT>();
      final msg = 'What a strange window!'.toPcwstr();

      GetClientRect(hwnd, rect);
      DrawText(hdc, msg, -1, rect, DT_CENTER | DT_VCENTER | DT_SINGLELINE);

      EndPaint(hwnd, ps);

      free(msg);
      free(rect);
      free(ps);

      return 0;
  }
  return DefWindowProc(hwnd, uMsg, WPARAM(wParam), LPARAM(lParam));
}

void main() => initApp(winMain);

void winMain(HINSTANCE hInstance, List<String> args, SHOW_WINDOW_CMD nShowCmd) {
  using((arena) {
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
    final Win32Result(value: hWnd, :error) = CreateWindowEx(
      WS_EX_LEFT, // Optional window styles.
      className, // Window class
      null, // Window caption
      WS_BORDER, // Window style
      // Size and position
      CW_USEDEFAULT,
      CW_USEDEFAULT,
      500,
      500,
      null, // Parent window
      null, // Menu
      hInstance, // Instance handle
      null, // Additional application data
    );
    if (hWnd.isNull) throw WindowsException(error.toHRESULT());

    // Remove the title bar
    SetWindowLongPtr(hWnd, GWL_STYLE, 0);

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
