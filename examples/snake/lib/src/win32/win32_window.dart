import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';
import 'package:win32/win32.dart';

import '../core/direction.dart';
import '../core/game.dart';
import '../core/game_key.dart';
import '../ui/canvas.dart';
import 'win32_input.dart';
import 'win32_timer.dart';

class Win32Window {
  Win32Window({required this.title, Game? game})
    : game = game ?? Game(),
      _hInstance = HINSTANCE(GetModuleHandle(null).value),
      _hIcon = _loadIcon() {
    _wndProc = NativeCallable<WNDPROC>.isolateLocal(
      _windowProc,
      exceptionalReturn: 0,
    );
    _className = 'DartSnakeWindow'.toPcwstr();
    _registerClass();
    _hWnd = _createWindow();
    _windowRegistry[_hWnd] = this;
    _createBackBuffer();
    _timer = Win32Timer(hWnd: _hWnd, id: 1, intervalMs: 50);
  }

  final String title;
  final Game game;
  final HINSTANCE _hInstance;
  final HICON _hIcon;

  late final PCWSTR _className;
  late final HWND _hWnd;
  late final Win32Timer _timer;
  late final NativeCallable<WNDPROC> _wndProc;

  late HDC _memDC;
  late Canvas _canvas;
  late HBITMAP _memBitmap;
  late HBITMAP _oldBitmap;
  late int _width;
  late int _height;

  static final _windowRegistry = <HWND, Win32Window>{};

  void _createBackBuffer() => using((arena) {
    final hdc = GetDC(_hWnd);
    final rect = arena<RECT>();
    GetClientRect(_hWnd, rect);
    final RECT(:right, :bottom) = rect.ref;
    _width = right;
    _height = bottom;
    _memDC = CreateCompatibleDC(hdc);
    _canvas = Canvas(_memDC);
    _memBitmap = CreateCompatibleBitmap(hdc, _width, _height);
    _oldBitmap = HBITMAP(SelectObject(_memDC, HGDIOBJ(_memBitmap)));
    ReleaseDC(_hWnd, hdc);
  });

  void _destroyBackBuffer() {
    if (_memDC.isNotNull) {
      SelectObject(_memDC, HGDIOBJ(_oldBitmap));
      _memBitmap.close();
      DeleteDC(_memDC);
    }
  }

  void show() {
    ShowWindow(_hWnd, SW_SHOWNORMAL);
    UpdateWindow(_hWnd);
    _timer.start();
  }

  void messageLoop() {
    final msg = adaptiveCalloc<MSG>();
    while (GetMessage(msg, null, 0, 0).value) {
      TranslateMessage(msg);
      DispatchMessage(msg);
    }
    free(msg);
    _wndProc.close();
    _canvas.dispose();
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
      ..lpszClassName = PWSTR(_className);
    final Win32Result(:value, :error) = RegisterClass(wc);
    if (value == 0) throw WindowsException(error.toHRESULT());
  });

  HWND _createWindow() => using((arena) {
    final dpi = GetDpiForSystem();
    final rect = arena<RECT>();
    rect.ref
      ..left = 0
      ..top = 0
      ..right = (game.boardWidth + Canvas.sidePanelWidth) * Canvas.cellSize
      ..bottom = game.boardHeight * Canvas.cellSize;

    final style = WS_CAPTION | WS_SYSMENU | WS_MINIMIZEBOX;
    const exStyle = WS_EX_LEFT;

    AdjustWindowRectExForDpi(rect, style, false, exStyle, dpi);
    final RECT(:left, :top, :right, :bottom) = rect.ref;

    final Win32Result(value: hWnd, :error) = CreateWindowEx(
      exStyle,
      _className,
      arena.pcwstr(title),
      style,
      CW_USEDEFAULT,
      CW_USEDEFAULT,
      right - left,
      bottom - top,
      null,
      null,
      _hInstance,
      null,
    );
    if (hWnd.isNull) throw WindowsException(error.toHRESULT());
    return hWnd;
  });
}

int _windowProc(Pointer hWnd, int uMsg, int wParam, int lParam) {
  final hwnd = HWND(hWnd);
  switch (uMsg) {
    case WM_CLOSE:
      final window = Win32Window._windowRegistry[hwnd]!;
      window._timer.stop();
      window._destroyBackBuffer();
      DestroyWindow(hwnd);
      return 0;

    case WM_DESTROY:
      PostQuitMessage(0);
      return 0;

    case WM_TIMER:
      final Win32Window(:game) = Win32Window._windowRegistry[hwnd]!;
      game.tick();
      InvalidateRect(hwnd, null, false);
      return 0;

    case WM_KEYDOWN:
      final Win32Window(:game) = Win32Window._windowRegistry[hwnd]!;
      if (mapVirtualKey(wParam) case final key?) {
        switch (key) {
          case GameKey.up:
            game.setDirection(Direction.up);

          case GameKey.down:
            game.setDirection(Direction.down);

          case GameKey.left:
            game.setDirection(Direction.left);

          case GameKey.right:
            game.setDirection(Direction.right);

          case GameKey.pause:
            if (game.isPaused) {
              game.resumeGame();
            } else {
              game.pauseGame();
            }

          case GameKey.enter:
            if (game.isGameOver) {
              game.restart();
            }
        }

        InvalidateRect(hwnd, null, false);
      }
      return 0;

    case WM_PAINT:
      final window = Win32Window._windowRegistry[hwnd]!;
      using((arena) {
        final ps = arena<PAINTSTRUCT>();
        final hdc = BeginPaint(hwnd, ps);
        window._canvas.repaint(window.game);
        BitBlt(
          hdc,
          0,
          0,
          window._width,
          window._height,
          window._memDC,
          0,
          0,
          SRCCOPY,
        );
        EndPaint(hwnd, ps);
      });
      return 0;
  }

  return DefWindowProc(hwnd, uMsg, .new(wParam), .new(lParam));
}

HICON _loadIcon() {
  var iconPath = _iconPath;
  if (!File(iconPath).existsSync()) {
    iconPath = iconPath.replaceFirst('dart.ico', r'resources\dart.ico');
  }
  return HICON(
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
