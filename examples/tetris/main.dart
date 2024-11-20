// ignore_for_file: constant_identifier_names

import 'dart:ffi';
import 'dart:io';

import 'package:win32/win32.dart';

import 'canvas.dart';
import 'game.dart';

const PX_PER_BLOCK = 25; // Cell size in pixels
const SCREEN_WIDTH = 10; // Level width in cells
const SCREEN_HEIGHT = 20; // Level height in cells
const GAME_SPEED = 33; // Update the game every GAME_SPEED ms (= 1000/fps)
const TIMER_ID = 1;

final int hInstance = GetModuleHandle(null);

late Game game;
late Canvas canvas;

void main() {
  final szAppName = w('Tetris');

  final lpfnWndProc = NativeCallable<WNDPROC>.isolateLocal(
    mainWindowProc,
    exceptionalReturn: 0,
  );

  final wc = loggingCalloc<WNDCLASS>();
  wc.ref
    ..style = CS_HREDRAW | CS_VREDRAW | CS_OWNDC
    ..lpfnWndProc = lpfnWndProc.nativeFunction
    ..hInstance = hInstance
    ..hIcon = LoadIcon(null, IDI_APPLICATION)
    ..hCursor = LoadCursor(null, IDC_ARROW)
    ..hbrBackground = GetStockObject(BLACK_BRUSH)
    ..lpszClassName = szAppName.ptr;
  RegisterClass(wc);

  final hWnd = CreateWindowEx(
    WS_EX_LEFT, // Optional window styles.
    szAppName.ptr, // Window class
    szAppName.ptr, // Window text
    WS_MINIMIZEBOX | WS_SYSMENU, // Window style
    // Size and position
    CW_USEDEFAULT,
    CW_USEDEFAULT,
    SCREEN_WIDTH * PX_PER_BLOCK + 156,
    SCREEN_HEIGHT * PX_PER_BLOCK + 25,
    null, // Parent window
    null, // Menu
    hInstance, // Instance handle
    nullptr, // Additional application data
  );

  if (hWnd == NULL) {
    stderr.writeln('CreateWindowEx failed with error: ${GetLastError()}');
    exit(-1);
  }

  ShowWindow(hWnd, SW_SHOWNORMAL);
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

int mainWindowProc(int hwnd, int uMsg, int wParam, int lParam) {
  int hdc;
  var result = 0;

  switch (uMsg) {
    case WM_CREATE:
      hdc = GetDC(hwnd);
      canvas = Canvas(hdc, hwnd);
      game = Game(canvas);
      SetTimer(hwnd, TIMER_ID, GAME_SPEED, null);
      ReleaseDC(hwnd, hdc);

    case WM_KEYDOWN:
      game.keyPress(wParam);

    case WM_TIMER:
      game.timerUpdate();

    case WM_KILLFOCUS:
      KillTimer(hwnd, TIMER_ID);
      game.pauseGame();

    case WM_SETFOCUS:
      SetTimer(hwnd, TIMER_ID, GAME_SPEED, null);

    case WM_PAINT:
      final ps = loggingCalloc<PAINTSTRUCT>();
      hdc = BeginPaint(hwnd, ps);
      game.repaint();
      EndPaint(hwnd, ps);
      free(ps);

    case WM_DESTROY:
      KillTimer(hwnd, TIMER_ID);
      PostQuitMessage(0);

    default:
      result = DefWindowProc(hwnd, uMsg, wParam, lParam);
  }

  return result;
}
