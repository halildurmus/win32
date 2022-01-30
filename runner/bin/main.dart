import 'dart:ffi';

import 'package:win32/win32.dart';

import 'engine/dart_project.dart';
import 'engine/engine.dart';
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

    final hostWindow = Window.create(
        hInstance: hInstance,
        windowCaption: 'Dart Native Win32 window',
        className: 'FLUTTER_RUNNER_WIN32_WINDOW',
        windowProc: Pointer.fromFunction<WindowProc>(mainWindowProc, 0));

    final project = DartProject.fromPath(
        r'C:\scratch\runner_app\build\windows\runner\Release\data');

    // Set up Flutter view controller. The size must match the window dimensions
    // to avoid unnecessary surface creation / destruction in the startup path.
    final hostSize = hostWindow.dimensions;
    engine = FlutterEngine(hostSize.width, hostSize.height, project);

    Window(engine.hwnd)
      ..setParent(hostWindow)
      ..move(hostSize, true)
      ..setFocus()
      ..runMessageLoop();

    CoUninitialize();
  }
}
