import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';
import 'package:win32/win32.dart';

import 'app.dart';
import 'resources.dart';

class Win32Window {
  Win32Window({required this.title, this.width = 512, this.height = 288})
    : _hInstance = .new(GetModuleHandle(null).value),
      _hIcon = _loadIcon() {
    _wndProc = NativeCallable<WNDPROC>.isolateLocal(
      _windowProc,
      exceptionalReturn: 0,
    );
    _className = 'SystemTrayIconWindow'.toPcwstr();
    _registerClass();
    _hWnd = _createWindow();
    _windowRegistry[_hWnd] = this;
    _app = App(_hWnd, _hIcon)..addTrayIcon();
  }

  final String title;
  final int width;
  final int height;
  final HINSTANCE _hInstance;
  final HICON _hIcon;

  late final PCWSTR _className;
  late final HWND _hWnd;
  late final NativeCallable<WNDPROC> _wndProc;
  late final App _app;

  static final _windowRegistry = <HWND, Win32Window>{};

  void messageLoop() {
    final msg = adaptiveCalloc<MSG>();
    while (GetMessage(msg, null, 0, 0).value) {
      TranslateMessage(msg);
      DispatchMessage(msg);
    }
    _app.removeTrayIcon();
    free(msg);
    _wndProc.close();
    UnregisterClass(_className, _hInstance);
    free(_className);
    _windowRegistry.remove(_hWnd);
    _hIcon.close();
  }

  void _registerClass() => using((arena) {
    final wc = arena<WNDCLASS>();
    wc.ref
      ..lpfnWndProc = _wndProc.nativeFunction
      ..hInstance = _hInstance
      ..hCursor = LoadCursor(null, IDC_ARROW).value
      ..hIcon = _hIcon
      ..hbrBackground = .new(GetStockObject(WHITE_BRUSH))
      ..lpszClassName = .new(_className)
      ..style = CS_HREDRAW | CS_VREDRAW;
    final Win32Result(:value, :error) = RegisterClass(wc);
    if (value == 0) throw WindowsException(error.toHRESULT());
  });

  HWND _createWindow() => using((arena) {
    final RECT(:left, :top, :right, :bottom) = _getWindowCenterRect(
      windowWidth: width,
      windowHeight: height,
    );
    final Win32Result(value: hWnd, :error) = CreateWindowEx(
      WS_EX_LEFT,
      _className,
      arena.pcwstr(title),
      WS_OVERLAPPEDWINDOW,
      left,
      top,
      right,
      bottom,
      null,
      null,
      _hInstance,
      null,
    );
    if (hWnd.isNull) throw WindowsException(error.toHRESULT());
    return hWnd;
  });
}

RECT _getWindowCenterRect({
  required int windowWidth,
  required int windowHeight,
}) {
  final screenWidth = GetSystemMetrics(SM_CXFULLSCREEN);
  final screenHeight = GetSystemMetrics(SM_CYFULLSCREEN);
  final x = (screenWidth - windowWidth) ~/ 2;
  final y = (screenHeight - windowHeight) ~/ 2;
  return Struct.create()
    ..left = x
    ..top = y
    ..right = windowWidth
    ..bottom = windowHeight;
}

int _windowProc(Pointer hWnd, int uMsg, int wParam, int lParam) {
  final hwnd = HWND(hWnd);
  switch (uMsg) {
    case WM_COMMAND:
      if (LOWORD(wParam) == IDM_EXIT) {
        DestroyWindow(hwnd);
        return 0;
      }
      return 0;

    case WM_APP_NOTIFY_CALLBACK:
      final event = LOWORD(lParam);
      switch (event) {
        case NIN_SELECT:
          final isVisible = IsWindowVisible(hwnd);
          ShowWindow(hwnd, isVisible ? SW_HIDE : SW_SHOW);
          SetForegroundWindow(hwnd);
          return 0;

        case WM_CONTEXTMENU:
          final window = Win32Window._windowRegistry[hwnd]!;
          window._app.showTrayContextMenu(
            screenX: LOWORD(wParam),
            screenY: HIWORD(wParam),
          );
          return 0;

        default:
          return DefWindowProc(hwnd, uMsg, .new(wParam), .new(lParam));
      }

    case WM_CLOSE:
      ShowWindow(hwnd, SW_HIDE);
      return 0;

    case WM_DESTROY:
      PostQuitMessage(0);
      return 0;
  }

  return DefWindowProc(hwnd, uMsg, .new(wParam), .new(lParam));
}

HICON _loadIcon() {
  var iconPath = _iconPath;
  if (!File(iconPath).existsSync()) {
    iconPath = iconPath.replaceFirst('dart.ico', r'resources\dart.ico');
  }
  return .new(
    using(
      (arena) => LoadImage(
        null,
        arena.pcwstr(iconPath),
        IMAGE_ICON,
        0,
        0,
        LR_LOADFROMFILE | LR_DEFAULTSIZE,
      ).value,
    ),
  );
}

final String _iconPath = Platform.script.toFilePath().replaceFirst(
  RegExp(r'[^\\]+$'),
  'dart.ico',
);
