// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Basic Petzoldian "hello world" Win32 app

import 'dart:ffi';
import 'package:win32/with_win32.dart';

final hInstance = GetModuleHandle(nullptr);

int MainWindowProc(int hWnd, int uMsg, int wParam, int lParam) {
  switch (uMsg) {
    case WM_DESTROY:
      PostQuitMessage(0);
      return 0;

    case WM_PAINT:
      BeginPaint(hWnd, (hdc) {
        GetClientRect(hWnd, (rect) {
          DrawText(hdc, 'Hello, Dart!', -1, rect,
              DT_CENTER | DT_VCENTER | DT_SINGLELINE);
        });
      });
      return 0;
  }
  return DefWindowProc(hWnd, uMsg, wParam, lParam);
}

void main() {
  // Register the window class.
  const CLASS_NAME = 'Sample Window Class';

  withTEXT(CLASS_NAME, (CLASS_NAME) {
    RegisterClass((wc) {
      wc
        ..style = CS_HREDRAW | CS_VREDRAW
        ..lpfnWndProc = Pointer.fromFunction<WindowProc>(MainWindowProc, 0)
        ..hInstance = hInstance
        ..lpszClassName = CLASS_NAME
        ..hCursor = LoadCursor(NULL, IDC_ARROW)
        ..hbrBackground = GetStockObject(WHITE_BRUSH);
    });
  });

  // Create the window.

  final hWnd = CreateWindowEx(
    0, // Optional window styles.
    CLASS_NAME, // Window class
    'Dart Native Win32 window', // Window caption
    WS_OVERLAPPEDWINDOW, // Window style

    // Size and position
    CW_USEDEFAULT,
    CW_USEDEFAULT,
    CW_USEDEFAULT,
    CW_USEDEFAULT,
    NULL, // Parent window
    NULL, // Menu
    hInstance, // Instance handle
    nullptr, // Additional application data
  );

  ShowWindow(hWnd, SW_SHOWNORMAL);
  UpdateWindow(hWnd);

  // Run the message loop.

  withMSG((msg) {
    while (GetMessage(msg, NULL, 0, 0) != 0) {
      TranslateMessage(msg);
      DispatchMessage(msg);
    }
  });
}
