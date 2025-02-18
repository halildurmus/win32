// ignore_for_file: constant_identifier_names

import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'canvas.dart';
import 'game.dart';

const PX_PER_BLOCK = 25; // Cell size in pixels
const SCREEN_WIDTH = 10; // Level width in cells
const SCREEN_HEIGHT = 20; // Level height in cells
const GAME_SPEED = 33; // Update the game every GAME_SPEED ms (= 1000/fps)
const TIMER_ID = 1;

final hInstance = GetModuleHandle(nullptr);

late Game game;
late Canvas canvas;

void main() {
  final szAppName = 'Tetris'.toNativeUtf16();

  final lpfnWndProc = NativeCallable<WNDPROC>.isolateLocal(
    mainWindowProc,
    exceptionalReturn: 0,
  );

  final wc =
      calloc<WNDCLASS>()
        ..ref.style =
            WNDCLASS_STYLES.CS_HREDRAW |
            WNDCLASS_STYLES.CS_VREDRAW |
            WNDCLASS_STYLES.CS_OWNDC
        ..ref.lpfnWndProc = lpfnWndProc.nativeFunction
        ..ref.hInstance = hInstance
        ..ref.hIcon = LoadIcon(NULL, IDI_APPLICATION)
        ..ref.hCursor = LoadCursor(NULL, IDC_ARROW)
        ..ref.hbrBackground = GetStockObject(GET_STOCK_OBJECT_FLAGS.BLACK_BRUSH)
        ..ref.lpszClassName = szAppName;
  RegisterClass(wc);

  final hWnd = CreateWindowEx(
    0, // Optional window styles.
    szAppName, // Window class
    szAppName, // Window text
    WINDOW_STYLE.WS_MINIMIZEBOX | WINDOW_STYLE.WS_SYSMENU, // Window style
    // Size and position
    CW_USEDEFAULT,
    CW_USEDEFAULT,
    SCREEN_WIDTH * PX_PER_BLOCK + 156,
    SCREEN_HEIGHT * PX_PER_BLOCK + 25,
    NULL, // Parent window
    NULL, // Menu
    hInstance, // Instance handle
    nullptr, // Additional application data
  );

  if (hWnd == 0) {
    stderr.writeln('CreateWindowEx failed with error: ${GetLastError()}');
    exit(-1);
  }

  ShowWindow(hWnd, SHOW_WINDOW_CMD.SW_SHOWNORMAL);
  UpdateWindow(hWnd);

  // Run the message loop.
  final msg = calloc<MSG>();
  while (GetMessage(msg, NULL, 0, 0) != 0) {
    TranslateMessage(msg);
    DispatchMessage(msg);
  }

  lpfnWndProc.close();
  free(szAppName);
}

int mainWindowProc(int hwnd, int uMsg, int wParam, int lParam) {
  int hdc;
  var result = 0;

  final ps = calloc<PAINTSTRUCT>();

  switch (uMsg) {
    case WM_CREATE:
      hdc = GetDC(hwnd);

      canvas = Canvas(hdc, hwnd, PX_PER_BLOCK);
      game = Game(canvas);
      SetTimer(hwnd, TIMER_ID, GAME_SPEED, nullptr);

      ReleaseDC(hwnd, hdc);

    case WM_KEYDOWN:
      game.keyPress(wParam);

    case WM_TIMER:
      game.timerUpdate();

    case WM_KILLFOCUS:
      KillTimer(hwnd, TIMER_ID);
      game.pauseGame();

    case WM_SETFOCUS:
      SetTimer(hwnd, TIMER_ID, GAME_SPEED, nullptr);

    case WM_PAINT:
      hdc = BeginPaint(hwnd, ps);
      game.repaint();
      EndPaint(hwnd, ps);

    case WM_DESTROY:
      KillTimer(hwnd, TIMER_ID);
      PostQuitMessage(0);

    default:
      result = DefWindowProc(hwnd, uMsg, wParam, lParam);
  }

  free(ps);

  return result;
}
