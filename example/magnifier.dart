// Copyright (c) 2020, Dart | Windows.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Implements a simple control that magnifies the screen, using the
// Magnification API.

// ignore_for_file: constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

// For simplicity, the sample uses a constant magnification factor
const MAGFACTOR = 2.0;
const RESTOREDWINDOWSTYLES = WINDOW_STYLE.WS_SIZEBOX |
    WINDOW_STYLE.WS_SYSMENU |
    WINDOW_STYLE.WS_CLIPCHILDREN |
    WINDOW_STYLE.WS_CAPTION |
    WINDOW_STYLE.WS_MAXIMIZEBOX;

const timerInterval = 16;
final windowClassName = TEXT('MagnifierWindow');
final windowTitle = TEXT('Screen Magnifier Sample');

// Global variables
int hwndMag = 0;
int hwndHost = 0;
final magWindowRect = calloc<RECT>();
final hostWindowRect = calloc<RECT>();
bool isFullScreen = false;

void main() => initApp(winMain);

/// Entry point for the application
void winMain(int hInstance, List<String> args, int nCmdShow) {
  final lpfnWndProc =
      NativeCallable<WNDPROC>.isolateLocal(hostWndProc, exceptionalReturn: 0);

  if (MagInitialize() == FALSE ||
      !setupMagnifier(hInstance, lpfnWndProc.nativeFunction)) {
    return;
  }

  ShowWindow(hwndHost, nCmdShow);
  UpdateWindow(hwndHost);

  final lpTimerFunc = NativeCallable<TIMERPROC>.isolateLocal(updateMagWindow);

  // Create a timer to update the control
  final timerId =
      SetTimer(hwndHost, 0, timerInterval, lpTimerFunc.nativeFunction);

  // Main message loop
  final msg = calloc<MSG>();
  while (GetMessage(msg, NULL, 0, 0) == TRUE) {
    TranslateMessage(msg);
    DispatchMessage(msg);
  }

  // Shut down
  KillTimer(NULL, timerId);
  MagUninitialize();

  lpTimerFunc.close();
  lpfnWndProc.close();
  free(msg);
}

/// Window procedure for the window that hosts the magnifier control
int hostWndProc(int hWnd, int message, int wParam, int lParam) {
  switch (message) {
    case WM_KEYDOWN:
      if (wParam == VIRTUAL_KEY.VK_ESCAPE) {
        if (isFullScreen) {
          goPartialScreen();
        }
      }

    case WM_SYSCOMMAND:
      if (GET_SC_WPARAM(wParam) == SC_MAXIMIZE) {
        goFullScreen();
      } else {
        return DefWindowProc(hWnd, message, wParam, lParam);
      }

    case WM_DESTROY:
      PostQuitMessage(0);

    case WM_SIZE:
      if (hwndMag != NULL) {
        GetClientRect(hWnd, magWindowRect);

        // Resize the control to fill the window.
        SetWindowPos(
            hwndMag,
            NULL,
            magWindowRect.ref.left,
            magWindowRect.ref.top,
            magWindowRect.ref.right,
            magWindowRect.ref.bottom,
            0);
      }

    default:
      return DefWindowProc(hWnd, message, wParam, lParam);
  }
  return 0;
}

/// Registers the window class for the window that contains the magnification
/// control.
int registerHostWindowClass(
    int hInstance, Pointer<NativeFunction<WNDPROC>> lpfnWndProc) {
  final wcex = calloc<WNDCLASSEX>()
    ..ref.cbSize = sizeOf<WNDCLASSEX>()
    ..ref.style = WNDCLASS_STYLES.CS_HREDRAW | WNDCLASS_STYLES.CS_VREDRAW
    ..ref.lpfnWndProc = lpfnWndProc
    ..ref.hInstance = hInstance
    ..ref.hCursor = LoadCursor(NULL, IDC_ARROW)
    ..ref.hbrBackground = SYS_COLOR_INDEX.COLOR_BTNFACE + 1
    ..ref.lpszClassName = windowClassName;

  return RegisterClassEx(wcex);
}

bool setupMagnifier(int hInst, Pointer<NativeFunction<WNDPROC>> lpfnWndProc) {
  // Set bounds of host window according to screen size
  hostWindowRect
    ..ref.top = 0
    ..ref.bottom = GetSystemMetrics(SYSTEM_METRICS_INDEX.SM_CYSCREEN) ~/ 4
    ..ref.left = 0
    ..ref.right = GetSystemMetrics(SYSTEM_METRICS_INDEX.SM_CXSCREEN);

  // Create the host window
  registerHostWindowClass(hInst, lpfnWndProc);
  hwndHost = CreateWindowEx(
      WINDOW_EX_STYLE.WS_EX_TOPMOST | WINDOW_EX_STYLE.WS_EX_LAYERED,
      windowClassName,
      windowTitle,
      RESTOREDWINDOWSTYLES,
      0,
      0,
      hostWindowRect.ref.right,
      hostWindowRect.ref.bottom,
      NULL,
      NULL,
      hInst,
      nullptr);

  if (hwndHost == FALSE) return false;

  // Make the window opaque
  SetLayeredWindowAttributes(
      hwndHost, 0, 255, LAYERED_WINDOW_ATTRIBUTES_FLAGS.LWA_ALPHA);

  // Create a magnifier control that fills the client area
  GetClientRect(hwndHost, magWindowRect);
  hwndMag = CreateWindow(
      TEXT('Magnifier'),
      TEXT('MagnifierWindow'),
      WINDOW_STYLE.WS_CHILD | MS_SHOWMAGNIFIEDCURSOR | WINDOW_STYLE.WS_VISIBLE,
      magWindowRect.ref.left,
      magWindowRect.ref.top,
      magWindowRect.ref.right,
      magWindowRect.ref.bottom,
      hwndHost,
      NULL,
      hInst,
      nullptr);

  if (hwndMag == FALSE) return false;

  final matrix = calloc<MAGTRANSFORM>();
  final magEffectInvert = calloc<MAGCOLOREFFECT>();

  try {
    // Set the magnification factor
    matrix
      ..ref.v[0] = MAGFACTOR
      ..ref.v[4] = MAGFACTOR
      ..ref.v[7] = 1.0;

    var ret = MagSetWindowTransform(hwndMag, matrix);
    if (ret == TRUE) {
      final transform = magEffectInvert.ref.transform;
      transform[0] = -1.0;
      transform[1] = 0.0;
      transform[2] = 0.0;
      transform[3] = 0.0;
      transform[4] = 0.0;
      transform[5] = 0.0;
      transform[6] = -1.0;
      transform[7] = 0.0;
      transform[8] = 0.0;
      transform[9] = 0.0;
      transform[10] = 0.0;
      transform[11] = 0.0;
      transform[12] = -1.0;
      transform[13] = 0.0;
      transform[14] = 0.0;
      transform[15] = 0.0;
      transform[16] = 0.0;
      transform[17] = 0.0;
      transform[18] = 1.0;
      transform[19] = 0.0;
      transform[20] = 1.0;
      transform[21] = 1.0;
      transform[22] = 1.0;
      transform[23] = 0.0;
      transform[24] = 1.0;
      ret = MagSetColorEffect(hwndMag, magEffectInvert);
    }
    return ret == TRUE;
  } finally {
    free(matrix);
    free(magEffectInvert);
  }
}

/// Sets the source rectangle and updates the window. Called by a timer.
void updateMagWindow(int hwnd, int uMsg, Pointer<Uint32> idEvent, int dwTime) {
  final mousePoint = calloc<POINT>();
  final pSourceRect = calloc<RECT>();

  try {
    final sourceRect = pSourceRect.ref;
    GetCursorPos(mousePoint);

    final width =
        (magWindowRect.ref.right - magWindowRect.ref.left) ~/ MAGFACTOR;
    final height =
        (magWindowRect.ref.bottom - magWindowRect.ref.top) ~/ MAGFACTOR;

    sourceRect
      ..left = mousePoint.ref.x - width ~/ 2
      ..top = mousePoint.ref.y - height ~/ 2;

    // Don't scroll outside desktop area.
    if (sourceRect.left < 0) {
      sourceRect.left = 0;
    }
    if (sourceRect.left >
        GetSystemMetrics(SYSTEM_METRICS_INDEX.SM_CXSCREEN) - width) {
      sourceRect.left =
          GetSystemMetrics(SYSTEM_METRICS_INDEX.SM_CXSCREEN) - width;
    }
    sourceRect.right = sourceRect.left + width;

    if (sourceRect.top < 0) {
      sourceRect.top = 0;
    }
    if (sourceRect.top >
        GetSystemMetrics(SYSTEM_METRICS_INDEX.SM_CYSCREEN) - height) {
      sourceRect.top =
          GetSystemMetrics(SYSTEM_METRICS_INDEX.SM_CYSCREEN) - height;
    }
    sourceRect.bottom = sourceRect.top + height;

    // Set the source rectangle for the magnifier control.
    MagSetWindowSource(hwndMag, sourceRect);

    // Reclaim topmost status, to prevent unmagnified menus from remaining in
    // view.
    SetWindowPos(
        hwndHost,
        HWND_TOPMOST,
        0,
        0,
        0,
        0,
        SET_WINDOW_POS_FLAGS.SWP_NOACTIVATE |
            SET_WINDOW_POS_FLAGS.SWP_NOMOVE |
            SET_WINDOW_POS_FLAGS.SWP_NOSIZE);

    // Force redraw.
    InvalidateRect(hwndMag, nullptr, TRUE);
  } finally {
    free(mousePoint);
    free(pSourceRect);
  }
}

/// Makes the host window full-screen by placing non-client elements outside the
/// display.
void goFullScreen() {
  isFullScreen = true;

  // The window must be styled as layered for proper rendering.
  // It is styled as transparent so that it does not capture mouse clicks.
  SetWindowLongPtr(
      hwndHost,
      WINDOW_LONG_PTR_INDEX.GWL_EXSTYLE,
      WINDOW_EX_STYLE.WS_EX_TOPMOST |
          WINDOW_EX_STYLE.WS_EX_LAYERED |
          WINDOW_EX_STYLE.WS_EX_TRANSPARENT);

  // Give the window a system menu so it can be closed on the taskbar.
  SetWindowLongPtr(hwndHost, WINDOW_LONG_PTR_INDEX.GWL_STYLE,
      WINDOW_STYLE.WS_CAPTION | WINDOW_STYLE.WS_SYSMENU);

  // Calculate the span of the display area.
  final hDC = GetDC(NULL);
  var xSpan = GetSystemMetrics(SYSTEM_METRICS_INDEX.SM_CXSCREEN);
  var ySpan = GetSystemMetrics(SYSTEM_METRICS_INDEX.SM_CYSCREEN);
  ReleaseDC(NULL, hDC);

  // Calculate the size of system elements.
  final xBorder = GetSystemMetrics(SYSTEM_METRICS_INDEX.SM_CXFRAME);
  final yCaption = GetSystemMetrics(SYSTEM_METRICS_INDEX.SM_CYCAPTION);
  final yBorder = GetSystemMetrics(SYSTEM_METRICS_INDEX.SM_CYFRAME);

  // Calculate the window origin and span for full-screen mode.
  final xOrigin = -xBorder;
  final yOrigin = -yBorder - yCaption;
  xSpan += 2 * xBorder;
  ySpan += 2 * yBorder + yCaption;

  SetWindowPos(
      hwndHost,
      HWND_TOPMOST,
      xOrigin,
      yOrigin,
      xSpan,
      ySpan,
      SET_WINDOW_POS_FLAGS.SWP_SHOWWINDOW |
          SET_WINDOW_POS_FLAGS.SWP_NOZORDER |
          SET_WINDOW_POS_FLAGS.SWP_NOACTIVATE);
}

/// Makes the host window resizable and focusable.
void goPartialScreen() {
  isFullScreen = false;

  SetWindowLongPtr(hwndHost, WINDOW_LONG_PTR_INDEX.GWL_EXSTYLE,
      WINDOW_EX_STYLE.WS_EX_TOPMOST | WINDOW_EX_STYLE.WS_EX_LAYERED);
  SetWindowLongPtr(
      hwndHost, WINDOW_LONG_PTR_INDEX.GWL_STYLE, RESTOREDWINDOWSTYLES);
  SetWindowPos(
      hwndHost,
      HWND_TOPMOST,
      hostWindowRect.ref.left,
      hostWindowRect.ref.top,
      hostWindowRect.ref.right,
      hostWindowRect.ref.bottom,
      SET_WINDOW_POS_FLAGS.SWP_SHOWWINDOW |
          SET_WINDOW_POS_FLAGS.SWP_NOZORDER |
          SET_WINDOW_POS_FLAGS.SWP_NOACTIVATE);
}
