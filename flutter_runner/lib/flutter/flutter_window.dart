import 'package:meta/meta.dart';
import 'bundle.dart';

import 'flutter_api.dart';
import 'flutter_engine.dart';
import '../win_api_gui_wrapper/hwnd.dart';
import '../win_api_gui_wrapper/native_window.dart';

class FlutterWindow extends NativeWindow {
  late final FlutterEngine engine;

  FlutterWindow(Bundle bundle, FlutterApi flutterApi) : super() {
    engine = FlutterEngine(size, bundle, flutterApi);
    childContent = Hwnd.fomHandle(engine.view.nativeWindow);
  }

  @override
  @protected
  void onDestroy() {
    engine.controller.destroy();
  }

  @override
  @protected
  void onFontChange() {
    engine.reloadSystemFonts();
  }

  @override
  @protected
  int wndProc(int hWnd, int uMsg, int wParam, int lParam) {
    final flutterResult = engine.controller.wndProc(hWnd, uMsg, wParam, lParam);

    if (flutterResult != 0) {
      return flutterResult;
    }

    return super.wndProc(hWnd, uMsg, wParam, lParam);
  }
}
