import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import '../win_api_gui_wrapper/tools.dart';
import 'flutter_api.dart';
import 'flutter_engine.dart';
import 'flutter_view.dart';

class FlutterController {
  final FlutterApi _flutterApi;
  late final FlutterEngine engine;
  late final FlutterView view;

  ViewControllerRef _controllerRef = nullptr;

  FlutterController(Size size, this._controllerRef, this._flutterApi);

  int wndProc(int hWnd, int uMsg, int wParam, int lParam) {
    final resultCallBack = calloc<IntPtr>();
    try {
      final handled = _flutterApi.controllerWndProc(
        _controllerRef,
        hWnd,
        uMsg,
        wParam,
        lParam,
        resultCallBack,
      );
      return handled == 0 ? 0 : resultCallBack.value;
    } finally {
      free(resultCallBack);
    }
  }

  void destroy() {
    if (_controllerRef == nullptr) {
      return;
    }
    _flutterApi.controllerDestroy(_controllerRef);
    _controllerRef = nullptr;
  }
}
