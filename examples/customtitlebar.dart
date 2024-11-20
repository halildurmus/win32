// Render a custom title bar on Windows.

// Original C version by Dmitriy Kubyshkin at
//   https://github.com/grassator/win32-window-custom-titlebar

// More at https://kubyshkin.name/posts/win32-window-custom-title-bar-caption/

import 'dart:ffi';

import 'package:win32/win32.dart';

class HoveredButton {
  static const none = 0;
  static const minimize = 1;
  static const maximize = 2;
  static const close = 3;
}

/// Scales a length or width for the given DPI ratio.
int dpiScale(int value, int dpi) => value * dpi ~/ 96;

/// Given a Win32 RECT, duplicates it and returns the duplicate.
Pointer<RECT> cloneRect(Pointer<RECT> rect) {
  final clone = loggingCalloc<RECT>();
  clone.ref
    ..bottom = rect.ref.bottom
    ..left = rect.ref.left
    ..top = rect.ref.top
    ..right = rect.ref.right;
  return clone;
}

/// Return the bounding box for the close button.
Pointer<RECT> getCloseRect(int hwnd, Pointer<RECT> titleBarRect) {
  final dpi = GetDpiForWindow(hwnd);
  const windowsTitleBarButtonWidth = 47;
  final scaledButtonWidth = dpiScale(windowsTitleBarButtonWidth, dpi);

  final closeRect = cloneRect(titleBarRect);
  closeRect.ref.top += 1;
  closeRect.ref.left = closeRect.ref.right - scaledButtonWidth;

  return closeRect;
}

/// Return the bounding box for the maximize button.
Pointer<RECT> getMaximizeRect(int hwnd, Pointer<RECT> titleBarRect) {
  final dpi = GetDpiForWindow(hwnd);
  final buttonWidth = dpiScale(47, dpi);

  final maximizeRect = cloneRect(titleBarRect);
  maximizeRect.ref.top += 1;
  maximizeRect.ref.right -= buttonWidth;
  maximizeRect.ref.left = maximizeRect.ref.right - buttonWidth;

  return maximizeRect;
}

/// Return the bounding box for the minimize button.
Pointer<RECT> getMinimizeRect(int hwnd, Pointer<RECT> titleBarRect) {
  final dpi = GetDpiForWindow(hwnd);
  final buttonWidth = dpiScale(47, dpi);

  final minimizeRect = cloneRect(titleBarRect);
  minimizeRect.ref.top += 1;
  minimizeRect.ref.right -= buttonWidth * 2;
  minimizeRect.ref.left = minimizeRect.ref.right - buttonWidth;

  return minimizeRect;
}

/// Returns a handle for the theme. The handle should be closed when it is no
/// longer needed.
int getWindowThemeHandle(int hwnd) {
  final classList = w('WINDOW');
  return OpenThemeData(hwnd, classList.ptr);
}

/// Returns a rect representing the non-client titlebar area.
Pointer<RECT> getTitlebarRect(int hwnd) {
  const topAndBottomBorders = 2;

  final rect = loggingCalloc<RECT>();
  final hTheme = getWindowThemeHandle(hwnd);
  final dpi = GetDpiForWindow(hwnd);
  final titleBarSize = GetThemePartSize(
    hTheme,
    null,
    WP_CAPTION,
    CS_ACTIVE,
    null,
    TS_TRUE,
  );
  CloseThemeData(hTheme);

  final height = dpiScale(titleBarSize.ref.cy, dpi) + topAndBottomBorders;
  free(titleBarSize);
  GetClientRect(hwnd, rect);
  rect.ref.bottom = rect.ref.top + height;

  return rect;
}

/// Returns a shadow representing the client area of the screen, including space
/// for a fake shadow.
Pointer<RECT> getFakeShadowRect(int hwnd) {
  final rect = loggingCalloc<RECT>();
  GetClientRect(hwnd, rect);
  rect.ref.bottom = rect.ref.top + 1;
  return rect;
}

/// Returns true if the window is maximized within the Windows definition.
bool isWindowMaximized(int hwnd) {
  final windowPlacement = loggingCalloc<WINDOWPLACEMENT>()
    ..ref.length = sizeOf<WINDOWPLACEMENT>();

  try {
    if (GetWindowPlacement(hwnd, windowPlacement)) {
      return windowPlacement.ref.showCmd == SW_SHOWMAXIMIZED;
    }
    return false;
  } finally {
    free(windowPlacement);
  }
}

/// Given a child and parent RECT, update the child to be centered within the
/// parent.
void centerRectInParent(Pointer<RECT> child, Pointer<RECT> parent) {
  final childWidth = child.ref.right - child.ref.left;
  final childHeight = child.ref.bottom - child.ref.top;
  final parentWidth = parent.ref.right - parent.ref.left;
  final parentHeight = parent.ref.bottom - parent.ref.top;

  final paddingX = (parentWidth - childWidth) ~/ 2;
  final paddingY = (parentHeight - childHeight) ~/ 2;

  child.ref
    ..left = parent.ref.left + paddingX
    ..top = parent.ref.top + paddingY
    ..right = child.ref.left + childWidth
    ..bottom = child.ref.top + childHeight;
}

/// Paints title bar buttons. Returns the left most extent of the buttons within
/// the titleBarRect.
int paintButtons(
  int hwnd,
  int hdc,
  Pointer<PAINTSTRUCT> ps,
  Pointer<RECT> titleBarRect,
  int titleBarItemColor,
) {
  final titleBarHoverColor = RGB(130, 180, 160);
  final titleBarHoverBrush = CreateSolidBrush(titleBarHoverColor);
  final closeButtonColor = RGB(0xCC, 0x00, 0x00);
  final buttonIconBrush = CreateSolidBrush(titleBarItemColor);
  final buttonIconPen = CreatePen(PS_SOLID, 1, titleBarItemColor);
  final hoveredButton = GetWindowLongPtr(hwnd, GWLP_USERDATA);

  final dpi = GetDpiForWindow(hwnd);
  final iconDimension = dpiScale(10, dpi);

  // Paint minimize button
  final minimizeButtonRect = getMinimizeRect(hwnd, titleBarRect);
  final minimizeIconRect = loggingCalloc<RECT>();
  minimizeIconRect.ref
    ..right = iconDimension
    ..bottom = 1;

  try {
    if (hoveredButton == HoveredButton.minimize) {
      FillRect(hdc, minimizeButtonRect, titleBarHoverBrush);
    }

    centerRectInParent(minimizeIconRect, minimizeButtonRect);
    FillRect(hdc, minimizeIconRect, buttonIconBrush);
  } finally {
    free(minimizeIconRect);
    free(minimizeButtonRect);
  }

  // Paint maximize button
  final maximizeButtonRect = getMaximizeRect(hwnd, titleBarRect);
  final maximizeIconRect = loggingCalloc<RECT>();
  maximizeIconRect.ref
    ..right = iconDimension
    ..bottom = iconDimension;

  try {
    if (hoveredButton == HoveredButton.maximize) {
      FillRect(hdc, maximizeButtonRect, titleBarHoverBrush);
    }

    centerRectInParent(maximizeIconRect, maximizeButtonRect);
    SelectObject(hdc, buttonIconPen);
    SelectObject(hdc, GetStockObject(HOLLOW_BRUSH));
    Rectangle(
      hdc,
      maximizeIconRect.ref.left,
      maximizeIconRect.ref.top,
      maximizeIconRect.ref.right,
      maximizeIconRect.ref.bottom,
    );
  } finally {
    free(maximizeIconRect);
    free(maximizeButtonRect);
  }

  // Paint close button
  final closeButtonRect = getCloseRect(hwnd, titleBarRect);
  final closeIconRect = loggingCalloc<RECT>();
  closeIconRect.ref
    ..right = iconDimension
    ..bottom = iconDimension;
  try {
    int? customPen;
    if (hoveredButton == HoveredButton.close) {
      final fillBrush = CreateSolidBrush(closeButtonColor);
      FillRect(hdc, closeButtonRect, fillBrush);
      DeleteObject(fillBrush);
      customPen = CreatePen(PS_SOLID, 1, RGB(0xFF, 0xFF, 0xFF));
      SelectObject(hdc, customPen);
    }

    centerRectInParent(closeIconRect, closeButtonRect);
    MoveToEx(hdc, closeIconRect.ref.left, closeIconRect.ref.top, null);
    LineTo(hdc, closeIconRect.ref.right + 1, closeIconRect.ref.bottom + 1);
    MoveToEx(hdc, closeIconRect.ref.left, closeIconRect.ref.bottom, null);
    LineTo(hdc, closeIconRect.ref.right + 1, closeIconRect.ref.top - 1);
    if (customPen != null) DeleteObject(customPen);
  } finally {
    free(closeIconRect);
    free(closeButtonRect);
  }

  DeleteObject(titleBarHoverBrush);
  DeleteObject(buttonIconBrush);
  DeleteObject(buttonIconPen);

  return minimizeButtonRect.ref.left;
}

/// Draws the title bar caption within the given rectangle.
void drawWindowCaption(
  int hwnd,
  int hdc,
  Pointer<RECT> titleBarTextRect,
  int titleBarItemColor,
) {
  final titleText = Pwstr.allocate(256);
  final drawThemeOptions = loggingCalloc<DTTOPTS>();
  drawThemeOptions.ref
    ..dwSize = sizeOf<DTTOPTS>()
    ..dwFlags = DTT_TEXTCOLOR
    ..crText = titleBarItemColor;

  try {
    final hTheme = getWindowThemeHandle(hwnd);
    final logicalFont = GetThemeSysFont(hTheme, TMT_CAPTIONFONT);

    final themeFont = CreateFontIndirect(logicalFont);
    final savedFont = SelectObject(hdc, themeFont);
    CloseThemeData(hTheme);
    free(logicalFont);

    GetWindowText(hwnd, titleText.ptr, 256);
    DrawThemeTextEx(
      hTheme,
      hdc,
      0,
      0,
      titleText.ptr,
      -1,
      DT_VCENTER | DT_SINGLELINE | DT_WORD_ELLIPSIS,
      titleBarTextRect,
      drawThemeOptions,
    );

    SelectObject(hdc, savedFont);
  } finally {
    free(drawThemeOptions);
  }
}

/// Paints the contents of the window in response to a WM_PAINT message.
void paintWindow(int hwnd) {
  final titleBarColor = RGB(150, 200, 180);
  final titleBarFocusedItemColor = RGB(33, 33, 33);
  final titleBarInactiveItemColor = RGB(127, 127, 127);
  final windowBackgroundColor = RGB(200, 250, 230);
  final shadowColor = RGB(100, 100, 100);

  final hasFocus = GetFocus() != NULL;
  final titleBarItemColor = hasFocus
      ? titleBarFocusedItemColor
      : titleBarInactiveItemColor;

  final ps = loggingCalloc<PAINTSTRUCT>();
  final hdc = BeginPaint(hwnd, ps);
  const psRectOffset = 12;
  final psRect = Pointer<RECT>.fromAddress(ps.address + psRectOffset);

  // Paint window client area background
  final windowBackgroundBrush = CreateSolidBrush(windowBackgroundColor);
  FillRect(hdc, psRect, windowBackgroundBrush);
  DeleteObject(windowBackgroundBrush);

  // Paint title bar background
  final titleBarRect = getTitlebarRect(hwnd);
  final titleBarBrush = CreateSolidBrush(titleBarColor);
  FillRect(hdc, titleBarRect, titleBarBrush);
  DeleteObject(titleBarBrush);

  // Paint buttons
  final leftButtonExtent = paintButtons(
    hwnd,
    hdc,
    ps,
    titleBarRect,
    titleBarItemColor,
  );

  // Draw window caption
  const textPadding = 10;
  final titleBarTextRect = cloneRect(titleBarRect);
  titleBarTextRect.ref
    ..left += textPadding
    ..right = leftButtonExtent - textPadding;
  drawWindowCaption(hwnd, hdc, titleBarTextRect, titleBarItemColor);
  free(titleBarTextRect);

  // Paint fake top shadow.
  final fakeTopShadowColor = hasFocus
      ? shadowColor
      : RGB(
          (GetRValue(titleBarColor) + GetRValue(shadowColor)) ~/ 2,
          (GetGValue(titleBarColor) + GetGValue(shadowColor)) ~/ 2,
          (GetBValue(titleBarColor) + GetBValue(shadowColor)) ~/ 2,
        );
  final fakeTopShadowBrush = CreateSolidBrush(fakeTopShadowColor);
  final fakeTopShadowRect = getFakeShadowRect(hwnd);
  FillRect(hdc, fakeTopShadowRect, fakeTopShadowBrush);
  DeleteObject(fakeTopShadowBrush);
  free(fakeTopShadowRect);

  EndPaint(hwnd, ps);
  free(titleBarRect);
  free(ps);
}

int mainWindowProc(int hwnd, int msg, int wParam, int lParam) {
  switch (msg) {
    case WM_NCCALCSIZE:
      // Handling this event allows us to extend the client (paintable) area
      // into the title bar region.
      //
      // Per https://learn.microsoft.com/windows/win32/dwm/customframe :
      //
      // "To remove the standard window frame, you must handle the WM_NCCALCSIZE
      // message, specifically when its wParam value is TRUE and the return
      // value is 0. By doing so, your application uses the entire window region
      // as the client area, removing the standard frame."
      if (wParam == FALSE) break;

      final dpi = GetDpiForWindow(hwnd);

      final frameX = GetSystemMetricsForDpi(SM_CXFRAME, dpi);
      final frameY = GetSystemMetricsForDpi(SM_CYFRAME, dpi);
      final padding = GetSystemMetricsForDpi(SM_CXPADDEDBORDER, dpi);

      final params = Pointer<NCCALCSIZE_PARAMS>.fromAddress(lParam);
      final requestedClientRect = params.ref.rgrc[0]
        ..right -= frameX + padding
        ..left += frameX + padding
        ..bottom -= frameY + padding;

      if (isWindowMaximized(hwnd)) {
        requestedClientRect.top += padding;
      }

      return 0;

    case WM_CREATE:
      final sizeRect = loggingCalloc<RECT>();
      GetWindowRect(hwnd, sizeRect);

      // Inform the application of the frame change to force redrawing with the
      // new client area that is extended into the title bar.
      SetWindowPos(
        hwnd,
        null,
        sizeRect.ref.left,
        sizeRect.ref.top,
        sizeRect.ref.right - sizeRect.ref.left,
        sizeRect.ref.bottom - sizeRect.ref.top,
        SWP_FRAMECHANGED | SWP_NOMOVE | SWP_NOSIZE,
      );

      free(sizeRect);

    case WM_ACTIVATE:
      final titleBarRect = getTitlebarRect(hwnd);
      InvalidateRect(hwnd, titleBarRect, false);
      free(titleBarRect);

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
        HTBOTTOMLEFT,
      ].contains(hit)) {
        return hit;
      }

      // Looks like adjustment happening in NCCALCSIZE is messing with the detection
      // of the top hit area so manually fixing that.
      final dpi = GetDpiForWindow(hwnd);
      final frameY = GetSystemMetricsForDpi(SM_CYFRAME, dpi);
      final padding = GetSystemMetricsForDpi(SM_CXPADDEDBORDER, dpi);
      final cursorPoint = loggingCalloc<POINT>();
      cursorPoint.ref
        ..x = LOWORD(lParam)
        ..y = HIWORD(lParam);

      try {
        ScreenToClient(hwnd, cursorPoint);
        if (cursorPoint.ref.y > 0 && cursorPoint.ref.y < frameY + padding) {
          return HTTOP;
        }

        // Since we are drawing our own caption, this needs to be a custom test
        final titlebarRect = getTitlebarRect(hwnd);
        final titlebarBottom = titlebarRect.ref.bottom;
        free(titlebarRect);
        if (cursorPoint.ref.y < titlebarBottom) {
          return HTCAPTION;
        }

        return HTCLIENT;
      } finally {
        free(cursorPoint);
      }

    case WM_PAINT:
      paintWindow(hwnd);

    case WM_NCMOUSEMOVE:
      final hoveredButton = GetWindowLongPtr(hwnd, GWLP_USERDATA);

      final cursorPoint = loggingCalloc<POINT>();
      GetCursorPos(cursorPoint);
      ScreenToClient(hwnd, cursorPoint);

      final titleBarRect = getTitlebarRect(hwnd);
      final closeRect = getCloseRect(hwnd, titleBarRect);
      final maximizeRect = getMaximizeRect(hwnd, titleBarRect);
      final minimizeRect = getMinimizeRect(hwnd, titleBarRect);

      try {
        var newHoveredButton = HoveredButton.none;
        if (PtInRect(closeRect, cursorPoint.ref)) {
          newHoveredButton = HoveredButton.close;
        } else if (PtInRect(maximizeRect, cursorPoint.ref)) {
          newHoveredButton = HoveredButton.maximize;
        } else if (PtInRect(minimizeRect, cursorPoint.ref)) {
          newHoveredButton = HoveredButton.minimize;
        }
        if (newHoveredButton != hoveredButton) {
          InvalidateRect(hwnd, closeRect, false);
          InvalidateRect(hwnd, maximizeRect, false);
          InvalidateRect(hwnd, minimizeRect, false);
          SetWindowLongPtr(hwnd, GWLP_USERDATA, newHoveredButton);
        }
      } finally {
        free(minimizeRect);
        free(maximizeRect);
        free(closeRect);
        free(titleBarRect);
        free(cursorPoint);
      }

    case WM_MOUSEMOVE:
      final hoveredButton = GetWindowLongPtr(hwnd, GWLP_USERDATA);

      if (hoveredButton != HoveredButton.none) {
        final titleBarRect = getTitlebarRect(hwnd);
        InvalidateRect(hwnd, titleBarRect, false);
        free(titleBarRect);
        SetWindowLongPtr(hwnd, GWLP_USERDATA, HoveredButton.none);
      }

    case WM_NCLBUTTONDOWN:
      // Clicks on buttons will be handled in WM_NCLBUTTONUP, but we still need
      // to remove default handling of the click to avoid it counting as drag.
      //
      // Ideally you also want to check that the mouse hasn't moved out or too much
      // between DOWN and UP messages.
      final hoveredButton = GetWindowLongPtr(hwnd, GWLP_USERDATA);
      if (hoveredButton != HoveredButton.none) return 0;

    case WM_NCLBUTTONUP:
      final hoveredButton = GetWindowLongPtr(hwnd, GWLP_USERDATA);

      // Map button clicks to the right messages for the window
      switch (hoveredButton) {
        case HoveredButton.close:
          PostMessage(hwnd, WM_CLOSE, 0, 0);
          return 0;
        case HoveredButton.minimize:
          ShowWindow(hwnd, SW_MINIMIZE);
          return 0;
        case HoveredButton.maximize:
          final mode = isWindowMaximized(hwnd) ? SW_NORMAL : SW_MAXIMIZE;
          ShowWindow(hwnd, mode);
          return 0;
      }

    case WM_DESTROY:
      PostQuitMessage(0);
      return 0;
  }
  return DefWindowProc(hwnd, msg, wParam, lParam);
}

void main() {
  registerHighDPISupport();

  // Register the window class.
  final windowClassName = w('WIN32_CUSTOM_TITLEBAR_EXAMPLE');

  final lpfnWndProc = NativeCallable<WNDPROC>.isolateLocal(
    mainWindowProc,
    exceptionalReturn: 0,
  );

  final windowClass = loggingCalloc<WNDCLASSEX>();
  windowClass.ref
    ..cbSize = sizeOf<WNDCLASSEX>()
    ..lpszClassName = windowClassName.ptr
    ..style = CS_HREDRAW | CS_VREDRAW
    ..hCursor = LoadCursor(null, IDC_ARROW)
    ..lpfnWndProc = lpfnWndProc.nativeFunction;

  RegisterClassEx(windowClass);

  // Create the window.
  final windowStyle =
      WS_THICKFRAME | // Standard resizeable window
      WS_SYSMENU | // Explicitly ask for the titlebar to support snapping
      WS_MAXIMIZEBOX | // Support maximizing via mouse dragging to screen top
      WS_MINIMIZEBOX | // Support minimizing via clicking taskbar icon
      WS_VISIBLE; // Make window visible after creation.

  final windowCaption = w('Win32 Custom Title Bar Example');
  CreateWindowEx(
    WS_EX_APPWINDOW,
    windowClassName.ptr,
    windowCaption.ptr,
    windowStyle,
    CW_USEDEFAULT,
    CW_USEDEFAULT,
    800,
    600,
    null,
    null,
    null,
    null,
  );

  final msg = loggingCalloc<MSG>();
  while (GetMessage(msg, null, 0, 0)) {
    TranslateMessage(msg);
    DispatchMessage(msg);
  }

  lpfnWndProc.close();
  free(msg);
  free(windowClass);
}
