import 'package:meta/meta.dart';

import '../app/native_app.dart';
import 'flutter_wrappers.dart';

class FlutterWindow extends NativeWindow {
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

  @protected
  @override
  void onFontChange() {
    _flutterController.engine.reloadSystemFonts();
  }

  @override
  @protected
  bool wndProc(int hWnd, int uMsg, int wParam, int lParam) {
    //final flutterResult =
    _flutterController.wndProc(hWnd, uMsg, wParam, lParam);
    // todo: return result if
    // if (flutterResult) {
    // return *flutterResult;
    // }

    return super.wndProc(hWnd, uMsg, wParam, lParam);
  }
}
