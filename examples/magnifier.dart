// Implements a simple control that magnifies the screen, using the
// Magnification API.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:win32/win32.dart';

// For simplicity, the sample uses a constant magnification factor
const MAGFACTOR = 2.0;
final WINDOW_STYLE RESTOREDWINDOWSTYLES =
    WS_SIZEBOX | WS_SYSMENU | WS_CLIPCHILDREN | WS_CAPTION | WS_MAXIMIZEBOX;

const timerInterval = 16;
final Pcwstr windowClassName = w('MagnifierWindow');
final Pcwstr windowTitle = w('Screen Magnifier Sample');

// Global variables
int hwndMag = NULL;
int hwndHost = NULL;
final Pointer<RECT> magWindowRect = loggingCalloc<RECT>();
final Pointer<RECT> hostWindowRect = loggingCalloc<RECT>();
var isFullScreen = false;

void main() => initApp(winMain);

/// Entry point for the application.
void winMain(int hInstance, List<String> args, SHOW_WINDOW_CMD nCmdShow) {
  if (!MagInitialize()) {
    print('MagInitialize failed!');
    throw WindowsException(GetLastError().toHRESULT());
  }

  final lpfnWndProc = NativeCallable<WNDPROC>.isolateLocal(
    hostWndProc,
    exceptionalReturn: 0,
  );

  if (!setupMagnifier(hInstance, lpfnWndProc.nativeFunction)) return;

  ShowWindow(hwndHost, nCmdShow);
  UpdateWindow(hwndHost);

  final lpTimerFunc = NativeCallable<TIMERPROC>.isolateLocal(updateMagWindow);

  // Create a timer to update the control
  final timerId = SetTimer(
    hwndHost,
    0,
    timerInterval,
    lpTimerFunc.nativeFunction,
  );

  // Main message loop
  final msg = loggingCalloc<MSG>();
  while (GetMessage(msg, null, 0, 0)) {
    TranslateMessage(msg);
    DispatchMessage(msg);
  }

  // Shut down
  KillTimer(null, timerId);
  MagUninitialize();

  lpTimerFunc.close();
  lpfnWndProc.close();
  free(msg);
  free(magWindowRect);
  free(hostWindowRect);
}

/// Window procedure for the window that hosts the magnifier control
int hostWndProc(int hWnd, int message, int wParam, int lParam) {
  switch (message) {
    case WM_KEYDOWN:
      if (wParam == VK_ESCAPE) {
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
        final RECT(:left, :top, :right, :bottom) = magWindowRect.ref;
        // Resize the control to fill the window.
        SetWindowPos(hwndMag, null, left, top, right, bottom, SWP_NOSIZE);
      }

    default:
      return DefWindowProc(hWnd, message, wParam, lParam);
  }
  return 0;
}

/// Registers the window class for the window that contains the magnification
/// control.
int registerHostWindowClass(
  int hInstance,
  Pointer<NativeFunction<WNDPROC>> lpfnWndProc,
) {
  final wcex = loggingCalloc<WNDCLASSEX>();
  wcex.ref
    ..cbSize = sizeOf<WNDCLASSEX>()
    ..style = CS_HREDRAW | CS_VREDRAW
    ..lpfnWndProc = lpfnWndProc
    ..hInstance = hInstance
    ..hCursor = LoadCursor(null, IDC_ARROW)
    ..hbrBackground = COLOR_BTNFACE + 1
    ..lpszClassName = windowClassName.ptr;
  final result = RegisterClassEx(wcex);
  if (result == 0) {
    free(wcex);
    throw WindowsException(GetLastError().toHRESULT());
  }

  free(wcex);
  return result;
}

bool setupMagnifier(int hInst, Pointer<NativeFunction<WNDPROC>> lpfnWndProc) {
  // Set bounds of host window according to screen size.
  hostWindowRect.ref
    ..top = 0
    ..bottom = GetSystemMetrics(SM_CYSCREEN) ~/ 4
    ..left = 0
    ..right = GetSystemMetrics(SM_CXSCREEN);

  // Create the host window.
  registerHostWindowClass(hInst, lpfnWndProc);
  hwndHost = CreateWindowEx(
    WS_EX_TOPMOST | WS_EX_LAYERED,
    windowClassName.ptr,
    windowTitle.ptr,
    RESTOREDWINDOWSTYLES,
    0,
    0,
    hostWindowRect.ref.right,
    hostWindowRect.ref.bottom,
    null,
    null,
    hInst,
    null,
  );
  if (hwndHost == NULL) return false;

  // Make the window opaque.
  SetLayeredWindowAttributes(hwndHost, 0, 255, LWA_ALPHA);

  // Create a magnifier control that fills the client area.
  GetClientRect(hwndHost, magWindowRect);
  final RECT(:left, :top, :right, :bottom) = magWindowRect.ref;

  final lpClassName = w('Magnifier');
  final lpWindowName = w('MagnifierWindow');
  hwndMag = CreateWindow(
    lpClassName.ptr,
    lpWindowName.ptr,
    WS_CHILD | MS_SHOWMAGNIFIEDCURSOR | WS_VISIBLE,
    left,
    top,
    right,
    bottom,
    hwndHost,
    null,
    hInst,
    null,
  );
  if (hwndMag == NULL) return false;

  final matrix = loggingCalloc<MAGTRANSFORM>();
  final magEffectInvert = loggingCalloc<MAGCOLOREFFECT>();

  try {
    // Set the magnification factor
    matrix.ref
      ..v[0] = MAGFACTOR
      ..v[4] = MAGFACTOR
      ..v[7] = 1.0;

    var ret = MagSetWindowTransform(hwndMag, matrix);
    if (ret) {
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
    return ret;
  } finally {
    free(matrix);
    free(magEffectInvert);
  }
}

/// Sets the source rectangle and updates the window. Called by a timer.
void updateMagWindow(int hwnd, int uMsg, int idEvent, int dwTime) {
  final mousePoint = loggingCalloc<POINT>();
  final pSourceRect = loggingCalloc<RECT>();

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
    if (sourceRect.left > GetSystemMetrics(SM_CXSCREEN) - width) {
      sourceRect.left = GetSystemMetrics(SM_CXSCREEN) - width;
    }
    sourceRect.right = sourceRect.left + width;

    if (sourceRect.top < 0) {
      sourceRect.top = 0;
    }
    if (sourceRect.top > GetSystemMetrics(SM_CYSCREEN) - height) {
      sourceRect.top = GetSystemMetrics(SM_CYSCREEN) - height;
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
      SWP_NOACTIVATE | SWP_NOMOVE | SWP_NOSIZE,
    );

    // Force redraw.
    InvalidateRect(hwndMag, null, true);
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
    GWL_EXSTYLE,
    WS_EX_TOPMOST | WS_EX_LAYERED | WS_EX_TRANSPARENT,
  );

  // Give the window a system menu so it can be closed on the taskbar.
  SetWindowLongPtr(hwndHost, GWL_STYLE, WS_CAPTION | WS_SYSMENU);

  // Calculate the span of the display area.
  final hDC = GetDC(null);
  var xSpan = GetSystemMetrics(SM_CXSCREEN);
  var ySpan = GetSystemMetrics(SM_CYSCREEN);
  ReleaseDC(null, hDC);

  // Calculate the size of system elements.
  final xBorder = GetSystemMetrics(SM_CXFRAME);
  final yCaption = GetSystemMetrics(SM_CYCAPTION);
  final yBorder = GetSystemMetrics(SM_CYFRAME);

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
    SWP_SHOWWINDOW | SWP_NOZORDER | SWP_NOACTIVATE,
  );
}

/// Makes the host window resizable and focusable.
void goPartialScreen() {
  isFullScreen = false;

  SetWindowLongPtr(hwndHost, GWL_EXSTYLE, WS_EX_TOPMOST | WS_EX_LAYERED);
  SetWindowLongPtr(hwndHost, GWL_STYLE, RESTOREDWINDOWSTYLES);
  SetWindowPos(
    hwndHost,
    HWND_TOPMOST,
    hostWindowRect.ref.left,
    hostWindowRect.ref.top,
    hostWindowRect.ref.right,
    hostWindowRect.ref.bottom,
    SWP_SHOWWINDOW | SWP_NOZORDER | SWP_NOACTIVATE,
  );
}
