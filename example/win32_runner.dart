// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:ffi';
import 'dart:io';
import 'dart:math' show Rectangle;

import 'package:args/args.dart';
import 'package:win32/win32.dart' hide Rectangle;
import 'package:win32_runner/win32_runner.dart';

void main() => initApp(Application.winMain);

class Application {
  static late FlutterEmbedder engine;
  static bool engineInitialized = false;

  static int mainWindowProc(int hwnd, int msg, int wParam, int lParam) {
    // Give Flutter an opportunity to handle window messages.
    if (engineInitialized) {
      final result = engine.handleTopLevelWindowProc(hwnd, msg, wParam, lParam);
      if (result != FALSE) {
        return result;
      }
    }

    // Otherwise, we address host window messages.
    switch (msg) {
      case WM_NCCREATE:
        EnableNonClientDpiScaling(hwnd);
        break;
      case WM_DESTROY:
        PostQuitMessage(0);
        return 0;
      case WM_FONTCHANGE:
        engine.reloadSystemFonts();
        return 0;
      case WM_SIZE:
        final hostWindow = Window(hwnd);
        Window(engine.hwnd).move(hostWindow.dimensions);
        return 0;
      case WM_ACTIVATE:
        Window(engine.hwnd).setFocus();
        return 0;
    }
    return DefWindowProc(hwnd, msg, wParam, lParam);
  }

  static String parseArgs(List<String> args) {
    final parser = ArgParser()
      ..addOption('path',
          abbr: 'p',
          help: 'Relative or absolute path to a Flutter app. ',
          defaultsTo: '.')
      ..addFlag('help', abbr: 'h', help: 'Shows usage information.');
    final results = parser.parse(args);

    if (results['help'] as bool) {
      print('Runs a Flutter app.\n\nSyntax:\n${parser.usage}');
      exit(0);
    }

    final appPath = results['path'] as String;
    return Directory(appPath).absolute.path;
  }

  static void winMain(int hInstance, List<String> args, int nShowCmd) {
    final appPath = parseArgs(args);

    CoInitializeEx(nullptr, COINIT_APARTMENTTHREADED);
    SetThreadDpiAwarenessContext(DPI_AWARENESS_CONTEXT_PER_MONITOR_AWARE_V2);

    final hostWindow = Window.create(
        hInstance: hInstance,
        windowCaption: 'Dart Native Win32 window',
        className: 'FLUTTER_RUNNER_WIN32_WINDOW',
        windowProc: Pointer.fromFunction<WindowProc>(mainWindowProc, 0),
        dimensions: const Rectangle<int>(10, 10, 1280, 720));

    final project = DartProject.fromRoot(appPath);
    final flutterLibrary =
        '$appPath\\windows\\flutter\\ephemeral\\flutter_windows.dll';

    // Set up Flutter view controller. The size must match the window dimensions
    // to avoid unnecessary surface creation / destruction in the startup path.
    engine = FlutterEmbedder(hostWindow.dimensions, project, flutterLibrary);
    engineInitialized = true;

    Window(engine.hwnd)
      ..setParent(hostWindow)
      ..move(hostWindow.dimensions)
      ..setFocus()
      ..runMessageLoop();

    CoUninitialize();
  }
}
