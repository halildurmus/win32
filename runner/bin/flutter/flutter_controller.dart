import '../app/tools.dart';
import 'bundle.dart';
import 'flutter_api.dart';
import 'flutter_engine.dart';
import 'flutter_view.dart';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

class FlutterViewController {
  final FlutterApi _flutterApi;
  late final FlutterEngine engine;
  late final FlutterView view;

  ViewControllerRef _controllerRef = nullptr;

  FlutterViewController(Size size, Bundle bundle, this._flutterApi) {
    final engineRef = _flutterApi.createEngine(bundle);
    final controllerRef = _flutterApi.createController(size, engineRef);
    final viewRef = _flutterApi.getView(controllerRef);

    print('engine: 0x${engineRef.value.toRadixString(16)}');
    print('controller: 0x${controllerRef.value.toRadixString(16)}');
    print('view: 0x${viewRef.value.toRadixString(16)}');

    _controllerRef = controllerRef;
    engine = FlutterEngine(engineRef, _flutterApi);
    view = FlutterView(viewRef, _flutterApi);

    // todo: check created refs
    // if (_controllerRef == nullptr) {
    // throw 'Create flutter controller error';
    //}
  }

  int wndProc(int hWnd, int uMsg, int wParam, int lParam){
    final resultCallBack = calloc<IntPtr>();
    try {

      final handled = _flutterApi.controllerWndProc(
        _controllerRef, hWnd,  uMsg, wParam, lParam, resultCallBack,
      );
      final returns = handled == 1 ? resultCallBack.value : 0;
      // todo: transfer to main proc
      return returns;
    } finally {
      free(resultCallBack);
    }
  }

  void release() {
    if (_controllerRef == nullptr) {
      return;
    }
    _flutterApi.controllerDestroy(_controllerRef);
    _controllerRef = nullptr;
  }
}
