import 'package:meta/meta.dart';
import '../app/native_app.dart';
import 'flutter_engine.dart';

class FlutterWindow extends NativeWindow {
  late final FlutterEngine _engine;

  FlutterWindow(String flutterDllPath, String flutterBundlePath) : super() {
    _engine = FlutterEngine.fromFilePaths(
      size,
      flutterBundlePath,
      flutterDllPath,
    );

    // registerPlugins(_engine);
    childContent = _engine.view.nativeWindow;
  }

  @protected
  @override
  void onFontChange() {
    _engine.reloadSystemFonts();
  }

  @override
  @protected
  bool wndProc(int hWnd, int uMsg, int wParam, int lParam) {
    //final flutterResult =
    //_engine.controller.wndProc(hWnd, uMsg, wParam, lParam);
    _engine.controller.wndProc(hWnd, uMsg, wParam, lParam);
    // todo: return result if
    // if (flutterResult) {
    // return *flutterResult;
    // }

    return super.wndProc(hWnd, uMsg, wParam, lParam);
  }
}
