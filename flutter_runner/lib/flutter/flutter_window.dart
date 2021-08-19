import 'package:meta/meta.dart';

import 'bundle.dart';
import 'flutter_api.dart';
import 'flutter_engine.dart';
import '../win_api_gui_wrapper/hwnd.dart';
import '../win_api_gui_wrapper/native_window.dart';

class FlutterWindow extends NativeWindow {
  FlutterEngine? engine;
  late Function() _createEngine;

  FlutterWindow(Bundle bundle, FlutterApi flutterApi) : super() {
    _createEngine = () {
      engine = FlutterEngine(size, bundle, flutterApi);
      childContent = Hwnd.fomHandle(engine!.view.nativeWindow);
    };
  }

  @override
  @protected
  void onShow() {
    if (engine == null) {
      _createEngine();
    }
  }

  @override
  @protected
  void onDestroy() {
    engine?.controller.destroy();
    super.onDestroy();
  }

  @override
  @protected
  void onFontChange() {
    engine?.reloadSystemFonts();
    super.onFontChange();
  }

  @override
  @protected
  int wndProc(int hWnd, int uMsg, int wParam, int lParam) {
    final flutterResult =
        engine?.controller.wndProc(hWnd, uMsg, wParam, lParam);

    if (flutterResult != null && flutterResult != 0) {
      return flutterResult;
    }

    return super.wndProc(hWnd, uMsg, wParam, lParam);
  }
}
