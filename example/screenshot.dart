// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Capture a screenshot.
// Example comes from:
//   https://docs.microsoft.com/en-us/windows/win32/gdi/capturing-an-image

import 'dart:ffi';
import 'package:ffi/ffi.dart';

import 'package:win32/win32.dart';

final hInstance = GetModuleHandle(nullptr);

void captureImage(int hwnd) {
  final hdcScreen = GetDC(NULL);
  final hdcWindow = GetDC(hwnd);

  final hdcMemDC = CreateCompatibleDC(hdcWindow);
  final bmpScreen = BITMAP.allocate();

  try {
    if (hdcMemDC == 0) {
      MessageBox(
          hwnd, TEXT('CreateCompatibleDC failed.'), TEXT('Failed'), MB_OK);
      return;
    }

    final rcClient = RECT.allocate();
    GetClientRect(hwnd, rcClient.addressOf);

    SetStretchBltMode(hdcWindow, HALFTONE);

    StretchBlt(
        hdcWindow,
        0,
        0,
        rcClient.right,
        rcClient.bottom,
        hdcScreen,
        0,
        0,
        GetSystemMetrics(SM_CXSCREEN),
        GetSystemMetrics(SM_CYSCREEN),
        SRCCOPY);

    final hbmScreen = CreateCompatibleBitmap(hdcWindow,
        rcClient.right - rcClient.left, rcClient.bottom - rcClient.top);

    SelectObject(hdcMemDC, hbmScreen);

    BitBlt(hdcMemDC, 0, 0, rcClient.right - rcClient.left,
        rcClient.bottom - rcClient.top, hdcWindow, 0, 0, SRCCOPY);

    GetObject(hbmScreen, sizeOf<BITMAP>(), bmpScreen.addressOf);

    final bitmapFileHeader = BITMAPFILEHEADER.allocate();
    final bitmapInfoHeader = BITMAPINFOHEADER.allocate()
      ..biSize = sizeOf<BITMAPINFOHEADER>()
      ..biWidth = bmpScreen.bmWidth
      ..biHeight = bmpScreen.bmHeight
      ..biPlanes = 1
      ..biBitCount = 32
      ..biCompression = BI_RGB;

    final dwBmpSize = ((bmpScreen.bmWidth * bitmapInfoHeader.biBitCount + 31) /
            32 *
            4 *
            bmpScreen.bmHeight)
        .toInt();

    final lpBitmap = allocate<Uint8>(count: dwBmpSize);

    GetDIBits(hdcWindow, hbmScreen, 0, bmpScreen.bmHeight, lpBitmap,
        bitmapInfoHeader.addressOf.cast(), DIB_RGB_COLORS);

    final hFile = CreateFile(TEXT('captureqwsz.bmp'), GENERIC_WRITE, 0, nullptr,
        CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, NULL);

    final dwSizeOfDIB =
        dwBmpSize + sizeOf<BITMAPFILEHEADER>() + sizeOf<BITMAPINFOHEADER>();
    bitmapFileHeader.bfOffBits =
        sizeOf<BITMAPFILEHEADER>() + sizeOf<BITMAPINFOHEADER>();

    bitmapFileHeader.bfSize = dwSizeOfDIB;
    bitmapFileHeader.bfType = 0x4D42; // BM

    final dwBytesWritten = allocate<Uint32>();
    WriteFile(hFile, bitmapFileHeader.addressOf, sizeOf<BITMAPFILEHEADER>(),
        dwBytesWritten, nullptr);
    WriteFile(hFile, bitmapInfoHeader.addressOf, sizeOf<BITMAPINFOHEADER>(),
        dwBytesWritten, nullptr);
    WriteFile(hFile, lpBitmap, dwBmpSize, dwBytesWritten, nullptr);

    CloseHandle(hFile);
  } finally {
    DeleteObject(hdcMemDC);
    ReleaseDC(NULL, hdcScreen);
    ReleaseDC(hwnd, hdcWindow);
  }
}

int mainWindowProc(int hWnd, int uMsg, int wParam, int lParam) {
  switch (uMsg) {
    case WM_DESTROY:
      PostQuitMessage(0);
      return 0;

    case WM_PAINT:
      final ps = PAINTSTRUCT.allocate();
      final hdc = BeginPaint(hWnd, ps.addressOf);
      final rect = RECT.allocate();
      final msg = TEXT('Hello, Dart!');

      GetClientRect(hWnd, rect.addressOf);
      DrawText(
          hdc, msg, -1, rect.addressOf, DT_CENTER | DT_VCENTER | DT_SINGLELINE);
      EndPaint(hWnd, ps.addressOf);

      free(ps.addressOf);
      free(rect.addressOf);
      free(msg);

      return 0;
  }
  return DefWindowProc(hWnd, uMsg, wParam, lParam);
}

void main() {
  // Register the window class.
  final className = TEXT('Sample Window Class');

  final wc = WNDCLASS.allocate();
  wc.style = CS_HREDRAW | CS_VREDRAW;
  wc.lpfnWndProc = Pointer.fromFunction<WindowProc>(mainWindowProc, 0);
  wc.hInstance = hInstance;
  wc.lpszClassName = className;
  wc.hCursor = LoadCursor(NULL, IDC_ARROW);
  wc.hbrBackground = GetStockObject(WHITE_BRUSH);
  RegisterClass(wc.addressOf);

  // Create the window.

  final hWnd = CreateWindowEx(
      0, // Optional window styles.
      className, // Window class
      TEXT('Dart Native Win32 window'), // Window caption
      WS_OVERLAPPEDWINDOW, // Window style

      // Size and position
      CW_USEDEFAULT,
      0,
      CW_USEDEFAULT,
      0,
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
