// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Demonstrates simple GDI drawing and min/max window sizing

import 'dart:ffi';
import 'dart:math' show min, max;

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

final hInstance = GetModuleHandle(nullptr);

final abc = [
  'anteater',
  'bear',
  'cougar',
  'dingo',
  'elephant',
  'falcon',
  'gazelle',
  'hyena',
  'iguana',
  'jackal',
  'kangaroo',
  'llama',
  'moose',
  'newt',
  'octopus',
  'penguin',
  'quail',
  'rat',
  'squid',
  'tortoise',
  'urus',
  'vole',
  'walrus',
  'xylophone',
  'yak',
  'zebra',
  'This line contains words, but no character. Go figure.',
  ''
];

int xClient; // width of client area
int yClient; // height of client area
int xClientMax; // maximum width of client area

int xChar; // horizontal scrolling unit
int yChar; // vertical scrolling unit
int xUpper; // average width of uppercase letters

int xPos; // current horizontal scrolling position
int yPos; // current vertical scrolling position

int mainWindowProc(int hwnd, int uMsg, int wParam, int lParam) {
  switch (uMsg) {
    case WM_CREATE:
      // Get the handle to the client area's device context.
      final hdc = GetDC(hwnd);

      // Extract font dimensions from the text metrics.
      final tm = TEXTMETRIC.allocate();
      GetTextMetrics(hdc, tm.addressOf);
      xChar = tm.tmAveCharWidth;
      xUpper = ((tm.tmPitchAndFamily & 1 == 1 ? 3 : 2) * xChar / 2).floor();
      yChar = tm.tmHeight + tm.tmExternalLeading;

      // Free the device context.
      ReleaseDC(hwnd, hdc);

      // Set an arbitrary maximum width for client area.
      // (xClientMax is the sum of the widths of 48 average
      // lowercase letters and 12 uppercase letters.)
      xClientMax = 48 * xChar + 12 * xUpper;

      free(tm.addressOf);

      return 0;

    case WM_SIZE:

      // Retrieve the dimensions of the client area.
      yClient = HIWORD(lParam);
      xClient = LOWORD(lParam);

      // Set the vertical scrolling range and page size
      final si = SCROLLINFO.allocate();
      si.cbSize = sizeOf<SCROLLINFO>();
      si.fMask = SIF_RANGE | SIF_PAGE;
      si.nMin = 0;
      si.nMax = abc.length - 1;
      si.nPage = (yClient / yChar).floor();
      SetScrollInfo(hwnd, SB_VERT, si.addressOf, TRUE);

      // Set the horizontal scrolling range and page size.
      si.cbSize = sizeOf<SCROLLINFO>();
      si.fMask = SIF_RANGE | SIF_PAGE;
      si.nMin = 0;
      si.nMax = 2 + (xClientMax / xChar).floor();
      si.nPage = (xClient / xChar).floor();
      SetScrollInfo(hwnd, SB_HORZ, si.addressOf, TRUE);

      free(si.addressOf);

      return 0;

    case WM_HSCROLL:
      final si = SCROLLINFO.allocate();

      // Get all the vertial scroll bar information.
      si.cbSize = sizeOf<SCROLLINFO>();
      si.fMask = SIF_ALL;

      // Save the position for comparison later on.
      GetScrollInfo(hwnd, SB_HORZ, si.addressOf);
      xPos = si.nPos;
      switch (LOWORD(wParam)) {
        // User clicked the left arrow.
        case SB_LINELEFT:
          si.nPos -= 1;
          break;

        // User clicked the right arrow.
        case SB_LINERIGHT:
          si.nPos += 1;
          break;

        // User clicked the scroll bar shaft left of the scroll box.
        case SB_PAGELEFT:
          si.nPos -= si.nPage;
          break;

        // User clicked the scroll bar shaft right of the scroll box.
        case SB_PAGERIGHT:
          si.nPos += si.nPage;
          break;

        // User dragged the scroll box.
        case SB_THUMBTRACK:
          si.nPos = si.nTrackPos;
          break;

        default:
          break;
      }

      // Set the position and then retrieve it.  Due to adjustments
      // by Windows it may not be the same as the value set.
      si.fMask = SIF_POS;
      SetScrollInfo(hwnd, SB_HORZ, si.addressOf, TRUE);
      GetScrollInfo(hwnd, SB_HORZ, si.addressOf);

      // If the position has changed, scroll the window.
      if (si.nPos != xPos) {
        ScrollWindow(hwnd, xChar * (xPos - si.nPos), 0, nullptr, nullptr);
      }

      free(si.addressOf);
      return 0;

    case WM_VSCROLL:
      final si = SCROLLINFO.allocate();

      // Get all the vertial scroll bar information.
      si.cbSize = sizeOf<SCROLLINFO>();
      si.fMask = SIF_ALL;
      GetScrollInfo(hwnd, SB_VERT, si.addressOf);

      // Save the position for comparison later on.
      yPos = si.nPos;
      switch (LOWORD(wParam)) {

        // User clicked the HOME keyboard key.
        case SB_TOP:
          si.nPos = si.nMin;
          break;

        // User clicked the END keyboard key.
        case SB_BOTTOM:
          si.nPos = si.nMax;
          break;

        // User clicked the top arrow.
        case SB_LINEUP:
          si.nPos -= 1;
          break;

        // User clicked the bottom arrow.
        case SB_LINEDOWN:
          si.nPos += 1;
          break;

        // User clicked the scroll bar shaft above the scroll box.
        case SB_PAGEUP:
          si.nPos -= si.nPage;
          break;

        // User clicked the scroll bar shaft below the scroll box.
        case SB_PAGEDOWN:
          si.nPos += si.nPage;
          break;

        // User dragged the scroll box.
        case SB_THUMBTRACK:
          si.nPos = si.nTrackPos;
          break;

        default:
          break;
      }

      // Set the position and then retrieve it. Due to adjustments
      // by Windows it may not be the same as the value set.
      si.fMask = SIF_POS;
      SetScrollInfo(hwnd, SB_VERT, si.addressOf, TRUE);
      GetScrollInfo(hwnd, SB_VERT, si.addressOf);

      // If the position has changed, scroll window and update it.
      if (si.nPos != yPos) {
        ScrollWindow(hwnd, 0, yChar * (yPos - si.nPos), nullptr, nullptr);
        UpdateWindow(hwnd);
      }

      free(si.addressOf);
      return 0;

    case WM_PAINT:
      final ps = PAINTSTRUCT.allocate();
      final si = SCROLLINFO.allocate();

      // Prepare the window for painting.
      final hdc = BeginPaint(hwnd, ps.addressOf);

      // Get vertical scroll bar position.
      si.cbSize = sizeOf<SCROLLINFO>();
      si.fMask = SIF_POS;
      GetScrollInfo(hwnd, SB_VERT, si.addressOf);
      yPos = si.nPos;

      // Get horizontal scroll bar position.
      GetScrollInfo(hwnd, SB_HORZ, si.addressOf);
      xPos = si.nPos;

      // Find painting limits.
      final firstLine = max(0, yPos + (ps.rcPaintT / yChar).floor());
      final lastLine =
          min(abc.length - 1, yPos + (ps.rcPaintB / yChar).floor());

      for (var i = firstLine; i <= lastLine; i++) {
        final x = xChar * (1 - xPos);
        final y = yChar * (i - yPos);

        // Write a line of text to the client area.
        TextOut(hdc, x, y, TEXT(abc[i]), abc[i].length);
      }

      // Indicate that painting is finished.
      EndPaint(hwnd, ps.addressOf);
      free(ps.addressOf);
      free(si.addressOf);
      return 0;

    case WM_DESTROY:
      PostQuitMessage(0);
      return 0;
  }

  return DefWindowProc(hwnd, uMsg, wParam, lParam);
}

void main() {
  // Register the window class.

  final className = TEXT('Scrollbar Sample');

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
      className, // Window caption
      WS_OVERLAPPEDWINDOW | WS_VSCROLL | WS_HSCROLL, // Window style

      // Size and position
      CW_USEDEFAULT,
      CW_USEDEFAULT,
      250,
      250,
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
