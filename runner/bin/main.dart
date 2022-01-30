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

    const className = 'FLUTTER_RUNNER_WIN32_WINDOW';
    final classNamePtr = className.toNativeUtf16();
    final wc = calloc<WNDCLASS>()
      ..ref.style = CS_HREDRAW | CS_VREDRAW
      ..ref.lpfnWndProc = Pointer.fromFunction<WindowProc>(mainWindowProc, 0)
      ..ref.hInstance = hInstance
      ..ref.lpszClassName = classNamePtr
      ..ref.hCursor = LoadCursor(NULL, IDC_ARROW)
      ..ref.hbrBackground = GetStockObject(WHITE_BRUSH);
    RegisterClass(wc);
    free(classNamePtr);
    free(wc);

    final hostWindow = Window.create(
        hInstance: hInstance,
        windowCaption: 'Dart Native Win32 window',
        className: 'FLUTTER_RUNNER_WIN32_WINDOW');

    final project = DartProject.fromPath(
        r'C:\scratch\runner_app\build\windows\runner\Release\data');

    // Set up Flutter view controller
    final hostSize = hostWindow.dimensions;

    // The size here must match the window dimensions to avoid unnecessary
    // surface creation / destruction in the startup path.
    engine = FlutterEngine(hostSize.width, hostSize.height, project);
    if (engine.view == nullptr) {
      stderr.writeln('Fatal error: unable to create Flutter view controller.');
      exit(1);
    }

    final flutterWindow = Window(engine.hwnd);
    flutterWindow.setParent(hostWindow);
    MoveWindow(engine.hwnd, 0, 0, hostSize.width, hostSize.height, TRUE);
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
