import 'dart:ffi';
import 'dart:io';
import 'dart:math' as math;

import 'package:args/args.dart';
import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';
import 'package:win32_runner/win32_runner.dart';

void main() => initApp(Application.winMain);

class Application {
  static late FlutterEmbedder engine;
  static bool engineInitialized = false;

  static int mainWindowProc(int hwnd, int msg, int wParam, int lParam) {
    // Give Flutter an opportunity to handle window messages.
    if (engineInitialized) {
      final result = engine.handleTopLevelWindowProc(hwnd, msg, wParam, lParam);
      if (result != FALSE) return result;
    }

    // Otherwise, we address host window messages.
    switch (msg) {
      case WM_NCCREATE:
        EnableNonClientDpiScaling(hwnd);
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
      case WM_SETTINGCHANGE:
        if (wParam == 0 && lParam != 0) {
          final lParamString =
              Pointer.fromAddress(lParam).cast<Utf16>().toDartString();
          if (lParamString == 'ImmersiveColorSet') {
            Window(hwnd).updateTheme();
          }
        }
        return 0;
      case WM_DWMCOLORIZATIONCOLORCHANGED:
        Window(hwnd).updateTheme();
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
    final iconPath = '$appPath\\windows\\runner\\resources\\app_icon.ico';
    if (!File(iconPath).existsSync()) {
      print('Icon file not found at "$iconPath".');
      exit(WIN32_ERROR.ERROR_FILE_NOT_FOUND);
    }

    CoInitializeEx(nullptr, COINIT.COINIT_APARTMENTTHREADED);
    SetThreadDpiAwarenessContext(DPI_AWARENESS_CONTEXT_PER_MONITOR_AWARE_V2);

    final windowProc = NativeCallable<WNDPROC>.isolateLocal(
      mainWindowProc,
      exceptionalReturn: 0,
    );
    final hostWindow = Window.create(
      hInstance: hInstance,
      windowCaption: 'Dart Native Win32 Window',
      className: 'FLUTTER_RUNNER_WIN32_WINDOW',
      windowProc: windowProc.nativeFunction,
      dimensions: const math.Rectangle<int>(10, 10, 1280, 720),
      iconPath: iconPath,
    )..updateTheme();

    final project = DartProject.fromRoot(appPath);
    final flutterLibrary =
        '$appPath\\windows\\flutter\\ephemeral\\flutter_windows.dll';
    if (!File(flutterLibrary).existsSync()) {
      print('`flutter_windows.dll` file not found at "$flutterLibrary".');
      exit(WIN32_ERROR.ERROR_FILE_NOT_FOUND);
    }

    // Set up Flutter view controller. The size must match the window dimensions
    // to avoid unnecessary surface creation / destruction in the startup path.
    engine = FlutterEmbedder(hostWindow.dimensions, project, flutterLibrary);
    engineInitialized = true;

    Window(engine.hwnd)
      ..setParent(hostWindow)
      ..move(hostWindow.dimensions)
      ..setFocus()
      ..runMessageLoop();

    windowProc.close();
    CoUninitialize();
  }
}
