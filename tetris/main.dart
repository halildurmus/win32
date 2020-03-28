import 'dart:ffi';
import 'dart:io';

import 'package:win32/win32.dart';

const PX_PER_BLOCK = 25; // Cell size in pixels
const SCREEN_WIDTH = 10; // Level width in cells
const SCREEN_HEIGHT = 20; // Level height in cells
const GAME_SPEED = 33; // Update the game every GAME_SPEED millisecs (= 1/fps)
const TIMER_ID = 1;

final hInstance = GetModuleHandle(nullptr);

void main() {
  final szAppName = TEXT('Tetris');

  final wc = WNDCLASS.allocate(); // TODO: WNDCLASSEX
  wc.style = CS_HREDRAW | CS_VREDRAW | CS_OWNDC;
  wc.lpfnWndProc = Pointer.fromFunction<WindowProc>(MainWindowProc, 0);
  wc.hInstance = hInstance;
  wc.hIcon = LoadIcon(NULL, IDI_APPLICATION);
  wc.hCursor = LoadCursor(NULL, IDC_ARROW);
  wc.hbrBackground = GetStockObject(BLACK_BRUSH);
  wc.lpszClassName = szAppName;
  RegisterClass(wc.addressOf);

  final hWnd = CreateWindowEx(
      0, // Optional window styles.
      szAppName, // Window class
      szAppName, // Window text
      WS_MINIMIZEBOX | WS_SYSMENU, // Window style

      // Size and position
      CW_USEDEFAULT,
      CW_USEDEFAULT,
      SCREEN_WIDTH * PX_PER_BLOCK + 156,
      SCREEN_WIDTH * PX_PER_BLOCK + 25,
      NULL, // Parent window
      NULL, // Menu
      hInstance, // Instance handle
      nullptr // Additional application data
      );

  if (hWnd == 0) {
    stderr.writeln('CreateWindowEx failed with error: ${GetLastError()}');
    exit(-1);
  }

  ShowWindow(hWnd, SW_SHOWNORMAL);
  UpdateWindow(hWnd);

  // Run the message loop.

  final msg = MSG.allocate();
  while (GetMessage(msg.addressOf, NULL, 0, 0) != 0) {
    TranslateMessage(msg.addressOf);
    DispatchMessage(msg.addressOf);
  }
}

int MainWindowProc(int hwnd, int uMsg, int wParam, int lParam) {
  var hdc;
  final ps = PAINTSTRUCT.allocate();

  switch (uMsg) {
    case WM_CREATE:
      return 0;

    case WM_KEYDOWN:
      return 0;

    case WM_TIMER:
      return 0;

    case WM_KILLFOCUS:
      return 0;

    case WM_SETFOCUS:
      return 0;

    case WM_DESTROY:
      PostQuitMessage(0);
      return 0;

    case WM_PAINT:
      hdc = BeginPaint(hwnd, ps.addressOf);
      EndPaint(hwnd, ps.addressOf);

      return 0;
  }
  return DefWindowProc(hwnd, uMsg, wParam, lParam);
}
