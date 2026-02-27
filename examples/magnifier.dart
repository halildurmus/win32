// Implements a simple control that magnifies the screen, using the
// Magnification API.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';
import 'package:win32/win32.dart';

const _magnificationFactor = 2.0;
const _timerInterval = 16; // ~60 fps

const _windowClassName = 'MagnifierWindow';
const _windowTitle = 'Screen Magnifier Sample';

final WINDOW_STYLE _restoredWindowStyles =
    WS_SIZEBOX | WS_SYSMENU | WS_CLIPCHILDREN | WS_CAPTION | WS_MAXIMIZEBOX;

var _hwndMag = HWND(nullptr);
var _hwndHost = HWND(nullptr);
var _isFullScreen = false;

final Pointer<RECT> _magWindowRect = adaptiveCalloc<RECT>();
final Pointer<RECT> _hostWindowRect = adaptiveCalloc<RECT>();

void main() => initApp(winMain);

void winMain(HINSTANCE hInstance, List<String> args, SHOW_WINDOW_CMD nCmdShow) {
  if (!MagInitialize()) throw Exception('MagInitialize failed!');

  final lpfnWndProc = NativeCallable<WNDPROC>.isolateLocal(
    _hostWndProc,
    exceptionalReturn: 0,
  );

  using((arena) {
    final className = arena.pcwstr(_windowClassName);
    final wc = arena<WNDCLASSEX>();
    wc.ref
      ..cbSize = sizeOf<WNDCLASSEX>()
      ..style = CS_HREDRAW | CS_VREDRAW
      ..lpfnWndProc = lpfnWndProc.nativeFunction
      ..hInstance = hInstance
      ..hCursor = LoadCursor(null, IDC_ARROW).value
      ..hbrBackground = .new(Pointer.fromAddress(COLOR_BTNFACE + 1))
      ..lpszClassName = .new(className);
    final result = RegisterClassEx(wc);
    if (result.value == 0) throw WindowsException(result.error.toHRESULT());

    try {
      if (!_createWindows(className, hInstance)) return;

      ShowWindow(_hwndHost, nCmdShow);
      UpdateWindow(_hwndHost);

      final lpTimerFunc = NativeCallable<TIMERPROC>.isolateLocal(
        _updateMagWindow,
      );

      final timerId = SetTimer(
        _hwndHost,
        0,
        _timerInterval,
        lpTimerFunc.nativeFunction,
      ).value;

      // Run message loop
      final msg = arena<MSG>();
      while (GetMessage(msg, null, 0, 0).value) {
        TranslateMessage(msg);
        DispatchMessage(msg);
      }

      KillTimer(null, timerId);
      lpTimerFunc.close();
    } finally {
      MagUninitialize();
      UnregisterClass(className, hInstance);
      lpfnWndProc.close();
    }
  });
}

bool _createWindows(PCWSTR className, HINSTANCE hInstance) => using((arena) {
  // Set host window bounds to the top quarter of the screen.
  _hostWindowRect.ref
    ..top = 0
    ..bottom = GetSystemMetrics(SM_CYSCREEN) ~/ 4
    ..left = 0
    ..right = GetSystemMetrics(SM_CXSCREEN);

  _hwndHost = CreateWindowEx(
    WS_EX_TOPMOST | WS_EX_LAYERED,
    className,
    arena.pcwstr(_windowTitle),
    _restoredWindowStyles,
    0,
    0,
    _hostWindowRect.ref.right,
    _hostWindowRect.ref.bottom,
    null,
    null,
    hInstance,
    null,
  ).value;
  if (_hwndHost.isNull) return false;

  // Make the window fully opaque.
  SetLayeredWindowAttributes(_hwndHost, const COLORREF(0), 255, LWA_ALPHA);

  // Create a magnifier control that fills the client area.
  GetClientRect(_hwndHost, _magWindowRect);
  final RECT(:left, :top, :right, :bottom) = _magWindowRect.ref;

  _hwndMag = CreateWindow(
    arena.pcwstr('Magnifier'),
    className,
    WS_CHILD | MS_SHOWMAGNIFIEDCURSOR | WS_VISIBLE,
    left,
    top,
    right,
    bottom,
    _hwndHost,
    null,
    hInstance,
    null,
  ).value;
  if (_hwndMag.isNull) return false;

  return _configureMagnifier(arena);
});

bool _configureMagnifier(Arena arena) {
  // Set the magnification transform matrix.
  final matrix = arena<MAGTRANSFORM>();
  matrix.ref
    ..v[0] = _magnificationFactor
    ..v[4] = _magnificationFactor
    ..v[8] = 1.0;
  if (!MagSetWindowTransform(_hwndMag, matrix)) return false;
  return true;
}

int _hostWndProc(Pointer hWnd, int message, int wParam, int lParam) {
  final hwnd = HWND(hWnd);

  switch (message) {
    case WM_KEYDOWN:
      if (wParam == VK_ESCAPE && _isFullScreen) {
        goPartialScreen();
        return 0;
      }

    case WM_SYSCOMMAND:
      if (GET_SC_WPARAM(wParam) == SC_MAXIMIZE) {
        goFullScreen();
        return 0;
      }

    case WM_SIZE:
      if (_hwndMag.isNotNull) {
        GetClientRect(hwnd, _magWindowRect);
        final RECT(:left, :top, :right, :bottom) = _magWindowRect.ref;
        // Resize the magnifier control to fill the client area.
        SetWindowPos(
          _hwndMag,
          null,
          left,
          top,
          right - left,
          bottom - top,
          SWP_NOZORDER,
        );
        return 0;
      }

    case WM_DESTROY:
      PostQuitMessage(0);
      return 0;
  }

  return DefWindowProc(hwnd, message, .new(wParam), .new(lParam));
}

void _updateMagWindow(Pointer hWnd, int uMsg, int idEvent, int dwTime) {
  using((arena) {
    final mousePoint = arena<POINT>();
    GetCursorPos(mousePoint);

    final width =
        (_magWindowRect.ref.right - _magWindowRect.ref.left) ~/
        _magnificationFactor;
    final height =
        (_magWindowRect.ref.bottom - _magWindowRect.ref.top) ~/
        _magnificationFactor;

    final screenWidth = GetSystemMetrics(SM_CXSCREEN);
    final screenHeight = GetSystemMetrics(SM_CYSCREEN);

    // Centre the source rectangle on the cursor and clamp to the screen.
    final left = (mousePoint.ref.x - width ~/ 2).clamp(0, screenWidth - width);
    final top = (mousePoint.ref.y - height ~/ 2).clamp(
      0,
      screenHeight - height,
    );

    final pSourceRect = arena<RECT>();
    pSourceRect.ref
      ..left = left
      ..top = top
      ..right = left + width
      ..bottom = top + height;
    MagSetWindowSource(_hwndMag, pSourceRect.ref);

    // Reclaim topmost status so unmagnified menus don't linger.
    SetWindowPos(
      _hwndHost,
      HWND_TOPMOST,
      0,
      0,
      0,
      0,
      SWP_NOACTIVATE | SWP_NOMOVE | SWP_NOSIZE,
    );

    InvalidateRect(_hwndMag, null, true);
  });
}

/// Pushes non-client chrome off-screen so the magnifier covers the full
/// display.
void goFullScreen() {
  SetWindowLongPtr(
    _hwndHost,
    GWL_EXSTYLE,
    WS_EX_TOPMOST | WS_EX_LAYERED | WS_EX_TRANSPARENT,
  );
  SetWindowLongPtr(_hwndHost, GWL_STYLE, WS_CAPTION | WS_SYSMENU);
  final xBorder = GetSystemMetrics(SM_CXFRAME);
  final yBorder = GetSystemMetrics(SM_CYFRAME);
  final yCaption = GetSystemMetrics(SM_CYCAPTION);
  SetWindowPos(
    _hwndHost,
    HWND_TOPMOST,
    -xBorder,
    -yBorder - yCaption,
    GetSystemMetrics(SM_CXSCREEN) + 2 * xBorder,
    GetSystemMetrics(SM_CYSCREEN) + 2 * yBorder + yCaption,
    SWP_SHOWWINDOW | SWP_NOZORDER | SWP_NOACTIVATE,
  );

  _isFullScreen = true;
}

/// Restores the host window to a resizable, focusable state.
void goPartialScreen() {
  SetWindowLongPtr(_hwndHost, GWL_EXSTYLE, WS_EX_TOPMOST | WS_EX_LAYERED);
  SetWindowLongPtr(_hwndHost, GWL_STYLE, _restoredWindowStyles);
  final RECT(:left, :top, :right, :bottom) = _hostWindowRect.ref;
  SetWindowPos(
    _hwndHost,
    HWND_TOPMOST,
    left,
    top,
    right,
    bottom,
    SWP_SHOWWINDOW | SWP_NOZORDER | SWP_NOACTIVATE,
  );

  _isFullScreen = false;
}
