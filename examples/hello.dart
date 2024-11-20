// Basic Petzoldian "hello world" Win32 app.

import 'dart:ffi';

import 'package:win32/win32.dart';

int mainWindowProc(int hWnd, int uMsg, int wParam, int lParam) {
  switch (uMsg) {
    case WM_DESTROY:
      PostQuitMessage(0);
      return 0;

    case WM_PAINT:
      final ps = loggingCalloc<PAINTSTRUCT>();
      final hdc = BeginPaint(hWnd, ps);
      final rect = loggingCalloc<RECT>();
      final msg = w('Hello, Dart!');

      GetClientRect(hWnd, rect);
      DrawText(hdc, msg.ptr, -1, rect, DT_CENTER | DT_VCENTER | DT_SINGLELINE);
      EndPaint(hWnd, ps);

      free(ps);
      free(rect);

      return 0;
  }
  return DefWindowProc(hWnd, uMsg, wParam, lParam);
}

// An optional approach to launching a GUI app that lets you use a more
// traditional WinMain entry point, rather than having to manually retrieve the
// hInstance and nShowCmd parameters.
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
  final windowCaption = w('Dart Native Win32 window');
  final hWnd = CreateWindowEx(
    WS_EX_LEFT, // Optional window styles.
    className.ptr, // Window class
    windowCaption.ptr, // Window caption
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
  if (hWnd == NULL) throw WindowsException(GetLastError().toHRESULT());

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
