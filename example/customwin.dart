// Copyright (c) 2021, Dart | Windows.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Draw a circular window

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

int mainWindowProc(int hWnd, int uMsg, int wParam, int lParam) {
  switch (uMsg) {
    case WM_CREATE:
      final hRgn = CreateEllipticRgn(0, 0, 500, 500);
      SetWindowRgn(hWnd, hRgn, TRUE);
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
      final ps = calloc<PAINTSTRUCT>();
      final hdc = BeginPaint(hWnd, ps);
      final hPen = CreatePen(PEN_STYLE.PS_SOLID, 4, RGB(64, 64, 64));
      final hPrevPen = SelectObject(hdc, hPen);

      Ellipse(hdc, 0, 0, 499, 499);
      SelectObject(hdc, hPrevPen);
      DeleteObject(hPen);

      final rect = calloc<RECT>();
      final msg = TEXT('What a strange window!');

      GetClientRect(hWnd, rect);
      DrawText(
          hdc,
          msg,
          -1,
          rect,
          DRAW_TEXT_FORMAT.DT_CENTER |
              DRAW_TEXT_FORMAT.DT_VCENTER |
              DRAW_TEXT_FORMAT.DT_SINGLELINE);

      EndPaint(hWnd, ps);

      free(rect);
      free(msg);
      free(ps);

      return 0;
  }
  return DefWindowProc(hWnd, uMsg, wParam, lParam);
}

void main() => initApp(winMain);

void winMain(int hInstance, List<String> args, int nShowCmd) {
  // Register the window class.
  final className = TEXT('Sample Window Class');

  final lpfnWndProc = NativeCallable<WNDPROC>.isolateLocal(
    mainWindowProc,
    exceptionalReturn: 0,
  );

  final wc = calloc<WNDCLASS>()
    ..ref.style = WNDCLASS_STYLES.CS_HREDRAW | WNDCLASS_STYLES.CS_VREDRAW
    ..ref.lpfnWndProc = lpfnWndProc.nativeFunction
    ..ref.hInstance = hInstance
    ..ref.lpszClassName = className
    ..ref.hCursor = LoadCursor(NULL, IDC_ARROW)
    ..ref.hbrBackground = GetStockObject(GET_STOCK_OBJECT_FLAGS.WHITE_BRUSH);
  RegisterClass(wc);

  // Create the window.
  final hWnd = CreateWindowEx(
      0, // Optional window styles.
      className, // Window class
      nullptr, // Window caption
      WINDOW_STYLE.WS_BORDER, // Window style

      // Size and position
      CW_USEDEFAULT,
      CW_USEDEFAULT,
      500,
      500,
      NULL, // Parent window
      NULL, // Menu
      hInstance, // Instance handle
      nullptr // Additional application data
      );

  // Remove the title bar
  SetWindowLongPtr(hWnd, WINDOW_LONG_PTR_INDEX.GWL_STYLE, 0);

  if (hWnd == 0) {
    final error = GetLastError();
    throw WindowsException(HRESULT_FROM_WIN32(error));
  }

  ShowWindow(hWnd, nShowCmd);
  UpdateWindow(hWnd);

  // Run the message loop.
  final msg = calloc<MSG>();
  while (GetMessage(msg, NULL, 0, 0) != 0) {
    TranslateMessage(msg);
    DispatchMessage(msg);
  }

  lpfnWndProc.close();
  free(className);
}
