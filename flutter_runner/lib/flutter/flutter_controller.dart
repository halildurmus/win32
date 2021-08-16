import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import '../win_api_gui_wrapper/tools.dart';
import 'flutter_api.dart';
import 'flutter_view.dart';

class FlutterController {
  final FlutterApi _flutterApi;
  late final FlutterView view;

  ControllerRef _controllerRef = nullptr;

  FlutterController(Size size, this._controllerRef, this._flutterApi);

  int wndProc(int hWnd, int uMsg, int wParam, int lParam) {
    final resultCallBack = calloc<IntPtr>();
    try {
      final result = _flutterApi.controllerWndProc(
        _controllerRef,
        hWnd,
        uMsg,
        wParam,
        lParam,
        resultCallBack,
      );
      return result == 0 ? 0 : resultCallBack.value;
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
