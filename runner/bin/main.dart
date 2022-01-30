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
    // Give Flutter an opportunity to handle window messages.
    // final result = engine.handleTopLevelWindowProc(hWnd, uMsg, wParam, lParam);
    // if (result != FALSE) {
    //   return result;
    // }

    // Otherwise, we address host window messages.
    switch (uMsg) {
      case WM_NCCREATE:
        EnableNonClientDpiScaling(hWnd);
        break;
      case WM_DESTROY:
        PostQuitMessage(0);
        return 0;
      case WM_FONTCHANGE:
        engine.reloadSystemFonts();
        return 0;
      case WM_SIZE:
        print('resizing');
        final hostWindow = Window(hwnd);
        Window(engine.hwnd).move(hostWindow.dimensions);
        return 0;
      case WM_ACTIVATE:
        Window(engine.hwnd).setFocus();
        return 0;
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
    engine = FlutterEngine(hostWindow.dimensions, project);

    Window(engine.hwnd)
      ..setParent(hostWindow)
      ..move(hostWindow.dimensions)
      ..setFocus()
      ..runMessageLoop();

    CoUninitialize();
  }
}
