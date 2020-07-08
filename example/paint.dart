// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Demonstrates simple GDI drawing and min/max window sizing

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

final hInstance = GetModuleHandle(nullptr);

int MainWindowProc(int hwnd, int uMsg, int wParam, int lParam) {
  switch (uMsg) {
    case WM_DESTROY:
      PostQuitMessage(0);
      return 0;

    case WM_GETMINMAXINFO:
      final info = Pointer<MINMAXINFO>.fromAddress(lParam).ref;
      info.ptMinTrackSizeX = 400;
      info.ptMinTrackSizeY = 400;
      return 0;

    case WM_PAINT:
      final ps = PAINTSTRUCT.allocate();
      final hdc = BeginPaint(hwnd, ps.addressOf);
      final rect = RECT.allocate();

      GetClientRect(hwnd, rect.addressOf);
      for (var i = 1; i <= 20; i++) {
        final color = (255 - 256 / 10 * i).round();
        final hBrush = CreateSolidBrush(
            RGB(0, color >= 0 ? color : 0, color >= 0 ? color : 0));
        rect.left = rect.left + 10;
        rect.right = rect.right - 10;
        rect.top = rect.top + 10;
        rect.bottom = rect.bottom - 10;
        FillRect(hdc, rect.addressOf, hBrush);
        DeleteObject(hBrush);
      }

      EndPaint(hwnd, ps.addressOf);
      free(rect.addressOf);
      free(ps.addressOf);

      return 0;
  }
  return DefWindowProc(hwnd, uMsg, wParam, lParam);
}

void main() {
  // Register the window class.

  final CLASS_NAME = TEXT('Simple Paint Sample');

  final wc = WNDCLASS.allocate();
  wc.style = CS_HREDRAW | CS_VREDRAW;
  wc.lpfnWndProc = Pointer.fromFunction<WindowProc>(MainWindowProc, 0);
  wc.hInstance = hInstance;
  wc.lpszClassName = CLASS_NAME;
  wc.hCursor = LoadCursor(NULL, IDC_ARROW);
  wc.hbrBackground = GetStockObject(WHITE_BRUSH);
  RegisterClass(wc.addressOf);

  // Create the window.

  final hWnd = CreateWindowEx(
      0, // Optional window styles.
      CLASS_NAME, // Window class
      CLASS_NAME, // Window caption
      WS_OVERLAPPEDWINDOW, // Window style

      // Size and position
      CW_USEDEFAULT,
      CW_USEDEFAULT,
      CW_USEDEFAULT,
      CW_USEDEFAULT,
      NULL, // Parent window
      NULL, // Menu
      hInstance, // Instance handle
      nullptr // Additional application data
      );

  if (hWnd == 0) {
    final error = GetLastError();
    throw WindowsException(HRESULT_FROM_WIN32(error));
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
