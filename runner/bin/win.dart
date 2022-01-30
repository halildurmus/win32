import 'dart:ffi';
import 'dart:io';
import 'package:ffi/ffi.dart';

import 'package:win32/win32.dart';

import 'dart_project.dart';
import 'engine_wrapper/engine.dart';
import 'window.dart';

void main() => initApp(Application.winMain);

class Application {
  static int hwnd = 0;
  static late FlutterEngine engine;

  static int mainWindowProc(int hWnd, int uMsg, int wParam, int lParam) {
    switch (uMsg) {
      case WM_DESTROY:
        PostQuitMessage(0);
        return 0;
      case WM_FONTCHANGE:
        engine.reloadSystemFonts();
        break;
    }
    return DefWindowProc(hWnd, uMsg, wParam, lParam);
  }

  static void winMain(int hInstance, List<String> args, int nShowCmd) {
    CoInitializeEx(nullptr, COINIT_APARTMENTTHREADED);

    // Register the window class.
    final className = 'FLUTTER_RUNNER_WIN32_WINDOW'.toNativeUtf16();
    final wc = calloc<WNDCLASS>()
      ..ref.style = CS_HREDRAW | CS_VREDRAW
      ..ref.lpfnWndProc = Pointer.fromFunction<WindowProc>(mainWindowProc, 0)
      ..ref.hInstance = hInstance
      ..ref.lpszClassName = className
      ..ref.hCursor = LoadCursor(NULL, IDC_ARROW)
      ..ref.hbrBackground = GetStockObject(WHITE_BRUSH);
    RegisterClass(wc);
    free(wc);

    // Create the window.
    final windowCaption = TEXT('Dart Native Win32 window');
    hwnd = CreateWindowEx(
        0, // Optional window styles.
        className, // Window class
        windowCaption, // Window caption
        WS_OVERLAPPEDWINDOW | WS_VISIBLE, // Window style

        // Size and position
        CW_USEDEFAULT,
        CW_USEDEFAULT,
        CW_USEDEFAULT,
        CW_USEDEFAULT,
        NULL, // Parent window
        NULL, // Menu
        hInstance, // Instance handle
        nullptr // Additional application data
        );
    free(windowCaption);
    free(className);

    if (hwnd == 0) {
      stderr.writeln('Fatal error: unable to create top-level window.');
      exit(1);
    }

    final project = DartProject.fromPath(
        r'C:\scratch\runner_app\build\windows\runner\Release\data');

    // Set up Flutter view controller
    final frame = Window(hwnd).dimensions;

    // The size here must match the window dimensions to avoid unnecessary
    // surface creation / destruction in the startup path.
    engine = FlutterEngine(
        frame.right - frame.left, frame.bottom - frame.top, project);
    if (engine.view == nullptr) {
      stderr.writeln('Fatal error: unable to create Flutter view controller.');
      exit(1);
    }

    SetParent(engine.hwnd, hwnd);
    MoveWindow(engine.hwnd, 0, 0, frame.right - frame.left,
        frame.bottom - frame.top, TRUE);
    SetFocus(engine.hwnd);

    // Run the message loop.
    final msg = calloc<MSG>();
    while (GetMessage(msg, NULL, 0, 0) != FALSE) {
      TranslateMessage(msg);
      DispatchMessage(msg);
    }

    free(msg);
    CoUninitialize();
  }
}
