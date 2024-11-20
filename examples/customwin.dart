// Draw a circular window.

import 'dart:ffi';

import 'package:win32/win32.dart';

int mainWindowProc(int hWnd, int uMsg, int wParam, int lParam) {
  switch (uMsg) {
    case WM_CREATE:
      final hRgn = CreateEllipticRgn(0, 0, 500, 500);
      SetWindowRgn(hWnd, hRgn, true);
      return 0;

    case WM_DESTROY:
      PostQuitMessage(0);
      return 0;

    case WM_NCHITTEST:
      // A click on the client area is treated as a click on the title bar
      if (DefWindowProc(hWnd, uMsg, wParam, lParam) == HTCLIENT) {
        return HTCAPTION;
      }
      return 0;

    case WM_PAINT:
      final ps = loggingCalloc<PAINTSTRUCT>();
      final hdc = BeginPaint(hWnd, ps);
      final hPen = CreatePen(PS_SOLID, 4, RGB(64, 64, 64));
      final hPrevPen = SelectObject(hdc, hPen);

      Ellipse(hdc, 0, 0, 499, 499);
      SelectObject(hdc, hPrevPen);
      DeleteObject(hPen);

      final rect = loggingCalloc<RECT>();
      final msg = w('What a strange window!');

      GetClientRect(hWnd, rect);
      DrawText(hdc, msg.ptr, -1, rect, DT_CENTER | DT_VCENTER | DT_SINGLELINE);

      EndPaint(hWnd, ps);

      free(rect);
      free(ps);

      return 0;
  }
  return DefWindowProc(hWnd, uMsg, wParam, lParam);
}

void main() => initApp(winMain);

void winMain(int hInstance, List<String> args, SHOW_WINDOW_CMD nShowCmd) {
  // Register the window class.
  final className = w('Sample Window Class');

  final lpfnWndProc = NativeCallable<WNDPROC>.isolateLocal(
    mainWindowProc,
    exceptionalReturn: 0,
  );

  final wc = loggingCalloc<WNDCLASS>();
  wc.ref
    ..style = CS_HREDRAW | CS_VREDRAW
    ..lpfnWndProc = lpfnWndProc.nativeFunction
    ..hInstance = hInstance
    ..lpszClassName = className.ptr
    ..hCursor = LoadCursor(null, IDC_ARROW)
    ..hbrBackground = GetStockObject(WHITE_BRUSH);
  RegisterClass(wc);

  // Create the window.
  final hWnd = CreateWindowEx(
    WS_EX_LEFT, // Optional window styles.
    className.ptr, // Window class
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
  if (hWnd == NULL) throw WindowsException(GetLastError().toHRESULT());

  // Remove the title bar
  SetWindowLongPtr(hWnd, GWL_STYLE, 0);

  ShowWindow(hWnd, nShowCmd);
  UpdateWindow(hWnd);

  // Run the message loop.
  final msg = loggingCalloc<MSG>();
  while (GetMessage(msg, null, 0, 0)) {
    TranslateMessage(msg);
    DispatchMessage(msg);
  }

  lpfnWndProc.close();
  free(msg);
  free(wc);
}
