// Copyright (c) 2021, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Render a custom title bar on Windows.

// Original C version by Dmitriy Kubyshkin at
//   https://github.com/grassator/win32-window-custom-titlebar

// More at https://kubyshkin.name/posts/win32-window-custom-title-bar-caption/

import 'dart:ffi';
import 'package:ffi/ffi.dart';

import 'package:win32/win32.dart';

class CustomTitleBarHoveredButton {
  static const none = 0;
  static const minimize = 1;
  static const maximize = 2;
  static const close = 3;
}

Pointer<RECT> cloneRect(Pointer<RECT> rect) {
  final clone = calloc<RECT>()
    ..ref.bottom = rect.ref.bottom
    ..ref.left = rect.ref.left
    ..ref.top = rect.ref.top
    ..ref.right = rect.ref.right;
  return clone;
}

Pointer<RECT> getCloseRect(int hwnd, Pointer<RECT> titleBarRect) {
  final dpi = GetDpiForWindow(hwnd);
  final buttonWidth = dpiScale(47, dpi);

  final closeRect = cloneRect(titleBarRect);
  closeRect.ref.top += 1;
  closeRect.ref.left = closeRect.ref.right - buttonWidth;

  return closeRect;
}

Pointer<RECT> getMaximizeRect(int hwnd, Pointer<RECT> titleBarRect) {
  final dpi = GetDpiForWindow(hwnd);
  final buttonWidth = dpiScale(47, dpi);

  final maximizeRect = cloneRect(titleBarRect);
  maximizeRect.ref.top += 1;
  maximizeRect.ref.right -= buttonWidth;
  maximizeRect.ref.left = maximizeRect.ref.right - buttonWidth;

  return maximizeRect;
}

Pointer<RECT> getMinimizeRect(int hwnd, Pointer<RECT> titleBarRect) {
  final dpi = GetDpiForWindow(hwnd);
  final buttonWidth = dpiScale(47, dpi);

  final minimizeRect = cloneRect(titleBarRect);
  minimizeRect.ref.top += 1;
  minimizeRect.ref.right -= buttonWidth * 2;
  minimizeRect.ref.left = minimizeRect.ref.right - buttonWidth;

  return minimizeRect;
}

int dpiScale(int value, int dpi) => value * dpi ~/ 96;

int getWindowThemeDataHandle(int hwnd) {
  final classDataSection = 'WINDOW'.toNativeUtf16();
  final hTheme = OpenThemeData(hwnd, classDataSection);
  free(classDataSection);
  return hTheme;
}

void getTitlebarRect(int hwnd, Pointer<RECT> rect) {
  final titleBarSize = calloc<SIZE>();
  const topAndBottomBorders = 2;

  final hTheme = getWindowThemeDataHandle(hwnd);
  final dpi = GetDpiForWindow(hwnd);
  GetThemePartSize(hTheme, NULL, WINDOWPARTS.WP_CAPTION,
      CAPTIONSTATES.CS_ACTIVE, nullptr, THEMESIZE.TS_TRUE, titleBarSize);
  CloseThemeData(hTheme);

  final height = dpiScale(titleBarSize.ref.cy, dpi) + topAndBottomBorders;

  GetClientRect(hwnd, rect);
  rect.ref.bottom = rect.ref.top + height;

  free(titleBarSize);
}

void getFakeShadowRect(int hwnd, Pointer<RECT> rect) {
  GetClientRect(hwnd, rect);
  rect.ref.bottom = rect.ref.top + 1;
}

bool isWindowMaximized(int hwnd) {
  final windowPlacement = calloc<WINDOWPLACEMENT>()
    ..ref.length = sizeOf<WINDOWPLACEMENT>();

  try {
    if (GetWindowPlacement(hwnd, windowPlacement) != FALSE) {
      return windowPlacement.ref.showCmd == SW_SHOWMAXIMIZED;
    }
    return false;
  } finally {
    free(windowPlacement);
  }
}

void centerRectInParent(Pointer<RECT> child, Pointer<RECT> parent) {
  final childWidth = child.ref.right - child.ref.left;
  final childHeight = child.ref.bottom - child.ref.top;
  final parentWidth = parent.ref.right - parent.ref.left;
  final parentHeight = parent.ref.bottom - parent.ref.top;

  final paddingX = (parentWidth - childWidth) ~/ 2;
  final paddingY = (parentHeight - childHeight) ~/ 2;

  child.ref.left = parent.ref.left + paddingX;
  child.ref.top = parent.ref.top + paddingY;
  child.ref.right = child.ref.left + childWidth;
  child.ref.bottom = child.ref.top + childHeight;
}

int mainWindowProc(int hwnd, int msg, int wParam, int lParam) {
  final hoveredButton = GetWindowLongPtr(hwnd, GWLP_USERDATA);

  switch (msg) {
    case WM_NCCALCSIZE:
      // Handling this event allows us to extend the client (paintable) area
      // into the title bar region.
      //
      // Per https://docs.microsoft.com/en-us/windows/win32/dwm/customframe:
      //
      // "To remove the standard window frame, you must handle the WM_NCCALCSIZE
      // message, specifically when its wParam value is TRUE and the return
      // value is 0. By doing so, your application uses the entire window region
      // as the client area, removing the standard frame."
      if (wParam == 0) return DefWindowProc(hwnd, msg, wParam, lParam);
      final dpi = GetDpiForWindow(hwnd);

      final frameX = GetSystemMetricsForDpi(SM_CXFRAME, dpi);
      final frameY = GetSystemMetricsForDpi(SM_CYFRAME, dpi);
      final padding = GetSystemMetricsForDpi(SM_CXPADDEDBORDER, dpi);

      final params = Pointer<NCCALCSIZE_PARAMS>.fromAddress(lParam);
      final requestedClientRect = params.ref.rgrc[0];

      requestedClientRect.right -= frameX + padding;
      requestedClientRect.left += frameX + padding;
      requestedClientRect.bottom -= frameY + padding;

      if (isWindowMaximized(hwnd)) {
        requestedClientRect.top += padding;
      }

      return 0;

    case WM_CREATE:
      final sizeRect = calloc<RECT>();
      GetWindowRect(hwnd, sizeRect);

      // Inform the application of the frame change to force redrawing with the
      // new client area that is extended into the title bar.
      SetWindowPos(
          hwnd,
          NULL,
          sizeRect.ref.left,
          sizeRect.ref.top,
          sizeRect.ref.right - sizeRect.ref.left,
          sizeRect.ref.bottom - sizeRect.ref.top,
          SWP_FRAMECHANGED | SWP_NOMOVE | SWP_NOSIZE);

      free(sizeRect);
      break;

    case WM_ACTIVATE:
      final titleBarRect = calloc<RECT>();

      getTitlebarRect(hwnd, titleBarRect);
      InvalidateRect(hwnd, titleBarRect, FALSE);

      free(titleBarRect);
      break;

    case WM_NCHITTEST:
      // Let the default procedure handle resizing areas
      final hit = DefWindowProc(hwnd, msg, wParam, lParam);
      if ([
        HTNOWHERE,
        HTLEFT,
        HTTOPLEFT,
        HTTOP,
        HTTOPRIGHT,
        HTRIGHT,
        HTBOTTOMRIGHT,
        HTBOTTOM,
        HTBOTTOMLEFT
      ].contains(hit)) return hit;

      // Looks like adjustment happening in NCCALCSIZE is messing with the detection
      // of the top hit area so manually fixing that.
      final dpi = GetDpiForWindow(hwnd);
      final frameY = GetSystemMetricsForDpi(SM_CYFRAME, dpi);
      final padding = GetSystemMetricsForDpi(SM_CXPADDEDBORDER, dpi);
      final cursorPoint = calloc<POINT>()
        ..ref.x = LOWORD(lParam)
        ..ref.y = HIWORD(lParam);
      final titlebarRect = calloc<RECT>();

      try {
        ScreenToClient(hwnd, cursorPoint);
        if (cursorPoint.ref.y > 0 && cursorPoint.ref.y < frameY + padding) {
          return HTTOP;
        }

        // Since we are drawing our own caption, this needs to be a custom test
        getTitlebarRect(hwnd, titlebarRect);
        final titlebarBottom = titlebarRect.ref.bottom;
        if (cursorPoint.ref.y < titlebarBottom) {
          return HTCAPTION;
        }

        return HTCLIENT;
      } finally {
        free(titlebarRect);
        free(cursorPoint);
      }

    case WM_PAINT:
      final hasFocus = GetFocus() != 0;

      final ps = calloc<PAINTSTRUCT>();
      final hdc = BeginPaint(hwnd, ps);

      final bgBrush = CreateSolidBrush(RGB(200, 250, 230));
      final psRect = Pointer<RECT>.fromAddress(ps.address + 12);
      FillRect(hdc, psRect, bgBrush);
      DeleteObject(bgBrush);

      final hThemeData = getWindowThemeDataHandle(hwnd);
      final titleBarColor = RGB(150, 200, 180);
      final titleBarBrush = CreateSolidBrush(titleBarColor);
      final titleBarHoverColor = RGB(130, 180, 160);
      final titleBarHoverBrush = CreateSolidBrush(titleBarHoverColor);

      final titleBarRect = calloc<RECT>();
      getTitlebarRect(hwnd, titleBarRect);
      FillRect(hdc, titleBarRect, titleBarBrush);
      DeleteObject(titleBarBrush);

      final titleBarItemColor = hasFocus ? RGB(33, 33, 33) : RGB(127, 127, 127);
      final buttonIconBrush = CreateSolidBrush(titleBarItemColor);
      final buttonIconPen = CreatePen(PS_SOLID, 1, titleBarItemColor);

      final dpi = GetDpiForWindow(hwnd);
      final iconDimension = dpiScale(10, dpi);

      // Minimize button
      final minimizeButtonRect = getMinimizeRect(hwnd, titleBarRect);
      if (hoveredButton == CustomTitleBarHoveredButton.minimize) {
        FillRect(hdc, minimizeButtonRect, titleBarHoverBrush);
      }

      final minimizeIconRect = calloc<RECT>()
        ..ref.right = iconDimension
        ..ref.bottom = 1;
      centerRectInParent(minimizeIconRect, minimizeButtonRect);
      FillRect(hdc, minimizeIconRect, buttonIconBrush);

      free(minimizeIconRect);
      free(minimizeButtonRect);

      // Maximize button
      final maximizeButtonRect = getMaximizeRect(hwnd, titleBarRect);

      if (hoveredButton == CustomTitleBarHoveredButton.maximize) {
        FillRect(hdc, maximizeButtonRect, titleBarHoverBrush);
      }
      final maximizeIconRect = calloc<RECT>()
        ..ref.right = iconDimension
        ..ref.bottom = iconDimension;
      centerRectInParent(maximizeIconRect, maximizeButtonRect);
      SelectObject(hdc, buttonIconPen);
      SelectObject(hdc, GetStockObject(HOLLOW_BRUSH));
      Rectangle(hdc, maximizeIconRect.ref.left, maximizeIconRect.ref.top,
          maximizeIconRect.ref.right, maximizeIconRect.ref.bottom);

      free(maximizeIconRect);
      free(maximizeButtonRect);

      // Close button
      final closeButtonRect = getCloseRect(hwnd, titleBarRect);
      var customPen = 0;
      if (hoveredButton == CustomTitleBarHoveredButton.close) {
        final fillBrush = CreateSolidBrush(RGB(0xCC, 0, 0));
        FillRect(hdc, closeButtonRect, fillBrush);
        DeleteObject(fillBrush);
        customPen = CreatePen(PS_SOLID, 1, RGB(0xFF, 0xFF, 0xFF));
        SelectObject(hdc, customPen);
      }
      final closeIconRect = calloc<RECT>()
        ..ref.right = iconDimension
        ..ref.bottom = iconDimension;
      centerRectInParent(closeIconRect, closeButtonRect);
      MoveToEx(hdc, closeIconRect.ref.left, closeIconRect.ref.top, nullptr);
      LineTo(hdc, closeIconRect.ref.right + 1, closeIconRect.ref.bottom + 1);
      MoveToEx(hdc, closeIconRect.ref.left, closeIconRect.ref.bottom, nullptr);
      LineTo(hdc, closeIconRect.ref.right + 1, closeIconRect.ref.top - 1);
      if (customPen != 0) DeleteObject(customPen);

      free(closeIconRect);
      free(closeButtonRect);

      DeleteObject(titleBarHoverBrush);
      DeleteObject(buttonIconBrush);
      DeleteObject(buttonIconPen);

      // Draw window title
      final logicalFont = calloc<LOGFONT>();
      var oldFont = NULL;
      if (SUCCEEDED(
          GetThemeSysFont(hThemeData, TMT_CAPTIONFONT, logicalFont))) {
        final themeFont = CreateFontIndirect(logicalFont);
        oldFont = SelectObject(hdc, themeFont);
      }
      final titleText = wsalloc(256);
      GetWindowText(hwnd, titleText, 256);
      const textPadding = 10;
      final titleBarTextRect = cloneRect(titleBarRect)
        ..ref.left += textPadding
        ..ref.right = minimizeButtonRect.ref.left - textPadding;
      final drawThemeOptions = calloc<DTTOPTS>()
        ..ref.dwSize = sizeOf<DTTOPTS>()
        ..ref.dwFlags = DTT_TEXTCOLOR
        ..ref.crText = titleBarItemColor;
      DrawThemeTextEx(
          hThemeData,
          hdc,
          0,
          0,
          titleText,
          -1,
          DT_VCENTER | DT_SINGLELINE | DT_WORD_ELLIPSIS,
          titleBarTextRect,
          drawThemeOptions);
      if (oldFont != 0) SelectObject(hdc, oldFont);
      free(drawThemeOptions);
      free(titleBarTextRect);
      free(titleText);
      free(logicalFont);
      CloseThemeData(hThemeData);

      // Paint fake top shadow.
      final shadowColor = RGB(100, 100, 100);
      final fakeTopShadowColor = hasFocus
          ? shadowColor
          : RGB(
              (GetRValue(titleBarColor) + GetRValue(shadowColor)) ~/ 2,
              (GetGValue(titleBarColor) + GetGValue(shadowColor)) ~/ 2,
              (GetBValue(titleBarColor) + GetBValue(shadowColor)) ~/ 2);
      final fakeTopShadowBrush = CreateSolidBrush(fakeTopShadowColor);
      final fakeTopShadowRect = calloc<RECT>();
      getFakeShadowRect(hwnd, fakeTopShadowRect);
      FillRect(hdc, fakeTopShadowRect, fakeTopShadowBrush);
      DeleteObject(fakeTopShadowBrush);
      free(fakeTopShadowRect);

      EndPaint(hwnd, ps);
      break;

    case WM_NCMOUSEMOVE:
      final cursorPoint = calloc<POINT>();
      GetCursorPos(cursorPoint);
      ScreenToClient(hwnd, cursorPoint);

      final titleBarRect = calloc<RECT>();
      getTitlebarRect(hwnd, titleBarRect);
      final closeRect = getCloseRect(hwnd, titleBarRect);
      final maximizeRect = getMaximizeRect(hwnd, titleBarRect);
      final minimizeRect = getMinimizeRect(hwnd, titleBarRect);

      var newHoveredButton = CustomTitleBarHoveredButton.none;
      if (PtInRect(closeRect, cursorPoint.ref) != FALSE) {
        newHoveredButton = CustomTitleBarHoveredButton.close;
      } else if (PtInRect(maximizeRect, cursorPoint.ref) != FALSE) {
        newHoveredButton = CustomTitleBarHoveredButton.maximize;
      } else if (PtInRect(minimizeRect, cursorPoint.ref) != FALSE) {
        newHoveredButton = CustomTitleBarHoveredButton.minimize;
      }
      if (newHoveredButton != hoveredButton) {
        InvalidateRect(hwnd, closeRect, FALSE);
        InvalidateRect(hwnd, maximizeRect, FALSE);
        InvalidateRect(hwnd, minimizeRect, FALSE);
        SetWindowLongPtr(hwnd, GWLP_USERDATA, newHoveredButton);
      }

      free(minimizeRect);
      free(maximizeRect);
      free(closeRect);
      free(titleBarRect);
      free(cursorPoint);
      break;

    case WM_MOUSEMOVE:
      if (hoveredButton != CustomTitleBarHoveredButton.none) {
        final titleBarRect = calloc<RECT>();
        getTitlebarRect(hwnd, titleBarRect);
        InvalidateRect(hwnd, titleBarRect, FALSE);
        SetWindowLongPtr(hwnd, GWLP_USERDATA, CustomTitleBarHoveredButton.none);
      }
      break;

    case WM_NCLBUTTONDOWN:
      // Clicks on buttons will be handled in WM_NCLBUTTONUP, but we still need
      // to remove default handling of the click to avoid it counting as drag.
      //
      // Ideally you also want to check that the mouse hasn't moved out or too much
      // between DOWN and UP messages.
      if (hoveredButton != CustomTitleBarHoveredButton.none) {
        return 0;
      }
      break;

    case WM_NCLBUTTONUP:
      // Map button clicks to the right messages for the window
      if (hoveredButton == CustomTitleBarHoveredButton.close) {
        PostMessage(hwnd, WM_CLOSE, 0, 0);
        return 0;
      } else if (hoveredButton == CustomTitleBarHoveredButton.minimize) {
        ShowWindow(hwnd, SW_MINIMIZE);
        return 0;
      } else if (hoveredButton == CustomTitleBarHoveredButton.maximize) {
        final mode = isWindowMaximized(hwnd) ? SW_NORMAL : SW_MAXIMIZE;
        ShowWindow(hwnd, mode);
        return 0;
      }
      break;

    case WM_SETCURSOR:
      // Show an arrow instead of the busy cursor
      SetCursor(LoadCursor(NULL, IDC_ARROW));
      break;

    case WM_DESTROY:
      PostQuitMessage(0);
      return 0;
  }
  return DefWindowProc(hwnd, msg, wParam, lParam);
}

void main() {
  final result =
      SetProcessDpiAwarenessContext(DPI_AWARENESS_CONTEXT_PER_MONITOR_AWARE_V2);
  if (result == FALSE) {
    final debugMessage = 'WARNING: could not set DPI awareness'.toNativeUtf16();
    OutputDebugString(debugMessage);
    free(debugMessage);
  }

  // Register the window class.
  final windowClassName = 'WIN32_CUSTOM_TITLEBAR_EXAMPLE'.toNativeUtf16();

  final windowClass = calloc<WNDCLASSEX>()
    ..ref.cbSize = sizeOf<WNDCLASSEX>()
    ..ref.lpszClassName = windowClassName
    ..ref.style = CS_HREDRAW | CS_VREDRAW
    ..ref.lpfnWndProc = Pointer.fromFunction<WindowProc>(mainWindowProc, 0);

  RegisterClassEx(windowClass);

  // Create the window.
  const windowStyle = WS_THICKFRAME | // Standard resizeable window
      WS_SYSMENU | // Explicitly ask for the titlebar to support snapping
      WS_MAXIMIZEBOX | // Support maximizing via mouse dragging to screen top
      WS_MINIMIZEBOX | // Support minimizing via clicking taskbar icon
      WS_VISIBLE; // Make window visible after creation.

  final windowCaption = 'Win32 Custom Title Bar Example'.toNativeUtf16();

  CreateWindowEx(WS_EX_APPWINDOW, windowClassName, windowCaption, windowStyle,
      CW_USEDEFAULT, CW_USEDEFAULT, 800, 600, NULL, NULL, NULL, nullptr);

  final msg = calloc<MSG>();
  while (GetMessage(msg, NULL, 0, 0) != 0) {
    TranslateMessage(msg);
    DispatchMessage(msg);
  }

  free(msg);
  free(windowCaption);
  free(windowClass);
  free(windowClassName);
}
