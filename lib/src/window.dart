// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:ffi';
import 'dart:math';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide Rectangle;
import 'package:win32_registry/win32_registry.dart';

/// Represents a Win32 window and provides methods for creating and managing it.
class Window {
  /// Creates an instance of the [Window] with the given window handle [hwnd].
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
    required Pointer<NativeFunction<WindowProc>> windowProc,
    int? hInstance,
    Rectangle<int>? dimensions,
    String? iconPath,
  }) {
    if (iconPath != null && !iconPath.endsWith('.ico')) {
      throw ArgumentError.value(
          iconPath, 'iconPath', 'Must be an icon file (.ico)');
    }

    final classNamePtr = className.toNativeUtf16();
    final windowCaptionPtr = windowCaption.toNativeUtf16();
    final iconPathPtr = iconPath?.toNativeUtf16();

    final wc = calloc<WNDCLASS>();
    wc.ref
      ..hbrBackground = GetStockObject(WHITE_BRUSH)
      ..hCursor = LoadCursor(NULL, IDC_ARROW)
      ..hInstance = hInstance ?? GetModuleHandle(nullptr)
      ..lpfnWndProc = windowProc
      ..lpszClassName = classNamePtr
      ..style = CS_HREDRAW | CS_VREDRAW;
    if (iconPathPtr != null) {
      wc.ref.hIcon = LoadImage(NULL, iconPathPtr, IMAGE_ICON, NULL, NULL,
          LR_DEFAULTSIZE | LR_LOADFROMFILE);
    }

    RegisterClass(wc);
    if (iconPathPtr != null) {
      free(iconPathPtr);
    }
    free(wc);

    final scaleFactor =
        dimensions != null ? scaleFactorForOrigin(dimensions) : 1.0;

    final hwnd = CreateWindowEx(
      0, // Optional window styles.
      classNamePtr, // Window class
      windowCaptionPtr, // Window caption
      WS_OVERLAPPEDWINDOW | WS_VISIBLE, // Window style
      dimensions != null ? scale(dimensions.left, scaleFactor) : CW_USEDEFAULT,
      dimensions != null ? scale(dimensions.top, scaleFactor) : CW_USEDEFAULT,
      dimensions != null ? scale(dimensions.width, scaleFactor) : CW_USEDEFAULT,
      dimensions != null
          ? scale(dimensions.height, scaleFactor)
          : CW_USEDEFAULT,
      NULL, // Parent window
      NULL, // Menu
      hInstance ?? GetModuleHandle(nullptr), // Instance handle
      nullptr, // Additional application data
    );

    if (hwnd == FALSE) throw Exception('Unable to create top-level window.');

    free(windowCaptionPtr);
    free(classNamePtr);

    return Window(hwnd);
  }

  /// The handle to the window.
  final int hwnd;

  /// The dimensions of the current window.
  Rectangle<int> get dimensions {
    final rect = calloc<RECT>();
    GetClientRect(hwnd, rect);
    final windowRect = Rectangle<int>(rect.ref.left, rect.ref.top,
        rect.ref.right - rect.ref.left, rect.ref.bottom - rect.ref.top);
    free(rect);
    return windowRect;
  }

  /// Moves and resizes the current window to the specified [newDimensions].
  ///
  /// [repaintWindow] indicates whether the window should be repainted after the
  /// move (defaults to `true`).
  void move(Rectangle<int> newDimensions, {bool repaintWindow = true}) =>
      MoveWindow(
        hwnd,
        newDimensions.left,
        newDimensions.top,
        newDimensions.width,
        newDimensions.height,
        repaintWindow ? TRUE : FALSE,
      );

  /// Runs the Windows message loop for this window.
  ///
  /// This method continuously processes and dispatches Windows messages until
  /// the window is closed.
  void runMessageLoop() {
    // Run the message loop.
    final msg = calloc<MSG>();
    while (GetMessage(msg, NULL, 0, 0) != FALSE) {
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
  static double scaleFactorForOrigin(Rectangle<int> dimensions) {
    final point = calloc<POINT>()
      ..ref.x = dimensions.left
      ..ref.y = dimensions.top;
    final dpiX = calloc<UINT>();
    final dpiY = calloc<UINT>();

    final hmonitor = MonitorFromPoint(point.ref, MONITOR_DEFAULTTONEAREST);
    GetDpiForMonitor(hmonitor, MONITOR_DPI_TYPE.MDT_EFFECTIVE_DPI, dpiX, dpiY);
    final dpi = dpiX.value;

    free(point);
    free(dpiX);
    free(dpiY);

    return dpi / 96.0;
  }

  /// Sets the keyboard focus to the current window.
  void setFocus() => SetFocus(hwnd);

  /// Changes the parent window of the current window to the specified [parent].
  void setParent(Window parent) => SetParent(hwnd, parent.hwnd);

  /// Updates the theme of the current window.
  void updateTheme() {
    const keyPath =
        r'Software\Microsoft\Windows\CurrentVersion\Themes\Personalize';
    final key = Registry.openPath(RegistryHive.currentUser, path: keyPath);

    // A value of 0 indicates apps should use dark mode. A non-zero or missing
    // value indicates apps should use light mode.
    final appsUseLightMode = key.getValueAsInt('AppsUseLightTheme');
    if (appsUseLightMode != null) {
      final enableDarkMode = appsUseLightMode == FALSE;
      final pvAttribute = calloc<BOOL>()..value = enableDarkMode ? TRUE : FALSE;
      DwmSetWindowAttribute(
        hwnd,
        DWMWINDOWATTRIBUTE.DWMWA_USE_IMMERSIVE_DARK_MODE,
        pvAttribute,
        sizeOf<BOOL>(),
      );
      free(pvAttribute);
    }

    key.close();
  }
}
