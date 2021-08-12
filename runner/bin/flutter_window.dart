import 'package:win32/win32.dart';

import 'flutter_wrappers.dart';
import 'window.dart';

class FlutterWindow extends Window {
  final DartProject _dartProject;
  late final FlutterViewController _flutterController;

  FlutterWindow(this._dartProject) : super() {
    _flutterController = FlutterViewController(
      size.width,
      size.height,
      _dartProject,
    );

    registerPlugins(_flutterController.engine);
    childContent = _flutterController.view.nativeWindow;
  }

  @override
  bool wndProc(int hWnd, int uMsg, int wParam, int lParam) {
    final flutterResult = _flutterController.wndProc(hWnd, uMsg, wParam, lParam);
    // if (flutterResult) {
    // return *flutterResult;
    // }

    switch(uMsg) {
      case WM_FONTCHANGE:
        _flutterController.engine.reloadSystemFonts();
        break;
    }

    return super.wndProc(hWnd, uMsg, wParam, lParam);
  }
}
