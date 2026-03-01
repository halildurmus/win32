import 'dart:ffi';
import 'dart:math' as math;

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';
import 'package:win32_registry/win32_registry.dart';

/// Represents a Win32 window and provides methods for creating and managing it.
class Window {
  /// Creates an instance of the `Window` with the given window handle [hwnd].
  const Window(this.hwnd);

  /// Creates a new [Window] with the specified parameters.
  ///
  /// - `windowCaption`: The caption/title of the window.
  /// - `className`: The window class name.
  /// - `windowProc`: The window procedure callback function.
  /// - `hInstance`: The instance handle (defaults to
  ///   `GetModuleHandle(nullptr)`).
  /// - `dimensions`: The initial dimensions of the window (optional).
  /// - `iconPath`: The path to the icon file (.ico) (optional).
  ///
  /// Throws an [Exception] if window creation fails.
  factory Window.create({
    required String windowCaption,
    required String className,
    required Pointer<NativeFunction<WNDPROC>> windowProc,
    HINSTANCE? hInstance,
    math.Rectangle<int>? dimensions,
    String? iconPath,
  }) {
    if (iconPath != null && !iconPath.endsWith('.ico')) {
      throw ArgumentError.value(
        iconPath,
        'iconPath',
        'Must be an icon file (.ico)',
      );
    }

    return using((arena) {
      final classNamePtr = arena.pcwstr(className);
      final iconPathPtr = iconPath != null ? arena.pcwstr(iconPath) : null;
      final wc = arena<WNDCLASS>();
      wc.ref
        ..hbrBackground = .new(GetStockObject(WHITE_BRUSH))
        ..hCursor = LoadCursor(null, IDC_ARROW).value
        ..hInstance = hInstance ?? .new(GetModuleHandle(null).value)
        ..lpfnWndProc = windowProc
        ..lpszClassName = .new(classNamePtr)
        ..style = CS_HREDRAW | CS_VREDRAW;
      if (iconPathPtr != null) {
        wc.ref.hIcon = .new(
          LoadImage(
            null,
            iconPathPtr,
            IMAGE_ICON,
            NULL,
            NULL,
            LR_DEFAULTSIZE | LR_LOADFROMFILE,
          ).value,
        );
      }
      final result = RegisterClass(wc);
      if (result.value == 0) throw WindowsException(result.error.toHRESULT());

      final scaleFactor = dimensions != null
          ? scaleFactorForOrigin(dimensions)
          : 1.0;
      final Win32Result(value: hwnd, :error) = CreateWindowEx(
        WS_EX_LEFT, // Optional window styles.
        classNamePtr, // Window class
        arena.pcwstr(windowCaption), // Window caption
        WS_OVERLAPPEDWINDOW | WS_VISIBLE, // Window style
        dimensions != null
            ? scale(dimensions.left, scaleFactor)
            : CW_USEDEFAULT,
        dimensions != null ? scale(dimensions.top, scaleFactor) : CW_USEDEFAULT,
        dimensions != null
            ? scale(dimensions.width, scaleFactor)
            : CW_USEDEFAULT,
        dimensions != null
            ? scale(dimensions.height, scaleFactor)
            : CW_USEDEFAULT,
        null, // Parent window
        null, // Menu
        hInstance ?? .new(GetModuleHandle(null).value), // Instance handle
        null, // Additional application data
      );
      if (hwnd.isNull) throw WindowsException(error.toHRESULT());
      return .new(hwnd);
    });
  }

  /// The handle to the window.
  final HWND hwnd;

  /// The dimensions of the current window.
  math.Rectangle<int> get dimensions => using((arena) {
    final rect = arena<RECT>();
    GetClientRect(hwnd, rect);
    final RECT(:left, :top, :right, :bottom) = rect.ref;
    return .new(left, top, right - left, bottom - top);
  });

  /// Moves and resizes the current window to the specified [newDimensions].
  ///
  /// [repaintWindow] indicates whether the window should be repainted after the
  /// move (defaults to `true`).
  void move(math.Rectangle<int> newDimensions, {bool repaintWindow = true}) =>
      MoveWindow(
        hwnd,
        newDimensions.left,
        newDimensions.top,
        newDimensions.width,
        newDimensions.height,
        repaintWindow,
      );

  /// Runs the Windows message loop for this window.
  ///
  /// This method continuously processes and dispatches Windows messages until
  /// the window is closed.
  void runMessageLoop() {
    final msg = calloc<MSG>();
    while (GetMessage(msg, null, 0, 0).value) {
      TranslateMessage(msg);
      DispatchMessage(msg);
    }
    free(msg);
  }

  /// Converts logical scalar values to physical using the provided
  /// [scaleFactor].
  static int scale(int source, double scaleFactor) =>
      (source * scaleFactor).floor();

  /// Calculates the DPI scale factor for the specified window [dimensions].
  static double scaleFactorForOrigin(math.Rectangle<int> dimensions) =>
      using((arena) {
        final point = arena<POINT>();
        point.ref
          ..x = dimensions.left
          ..y = dimensions.top;
        final dpiX = arena<UINT>();
        final dpiY = arena<UINT>();
        final hmonitor = MonitorFromPoint(point.ref, MONITOR_DEFAULTTONEAREST);
        GetDpiForMonitor(hmonitor, MDT_EFFECTIVE_DPI, dpiX, dpiY);
        return dpiX.value / 96.0;
      });

  /// Sets the keyboard focus to the current window.
  void setFocus() => SetFocus(hwnd);

  /// Changes the parent window of the current window to the specified [parent].
  void setParent(Window parent) => SetParent(hwnd, parent.hwnd);

  /// Updates the theme of the current window.
  void updateTheme() {
    final key = CURRENT_USER.open(
      r'Software\Microsoft\Windows\CurrentVersion\Themes\Personalize',
    );

    try {
      // A value of 0 indicates apps should use dark mode. A non-zero or missing
      // value indicates apps should use light mode.
      final appsUseLightMode = key.getInt('AppsUseLightTheme');
      if (appsUseLightMode != null) {
        final enableDarkMode = appsUseLightMode == FALSE;
        final pvAttribute = calloc<Int32>()
          ..value = enableDarkMode ? TRUE : FALSE;
        try {
          DwmSetWindowAttribute(
            hwnd,
            DWMWA_USE_IMMERSIVE_DARK_MODE,
            pvAttribute,
            sizeOf<Int32>(),
          );
        } finally {
          free(pvAttribute);
        }
      }
    } finally {
      key.close();
    }
  }
}
