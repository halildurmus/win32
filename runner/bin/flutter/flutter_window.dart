import 'package:meta/meta.dart';
import '../app/native_app.dart';
import 'bundle.dart';
import 'flutter_api.dart';
import 'flutter_controller.dart';

class FlutterWindow extends NativeWindow {
  late final FlutterViewController _flutterController;

  FlutterWindow(String flutterDllPath, String flutterBundlePath) : super() {
    final flutterApi = FlutterApi.load(flutterDllPath);
    final bundle = Bundle.fromSourceDir(flutterBundlePath);
    _flutterController = FlutterViewController(size, bundle, flutterApi);

    // registerPlugins(_flutterController.engine);
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
