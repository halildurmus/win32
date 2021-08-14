import 'dart:ffi';

import '../app/throw_unimplemented.dart';
import '../app/tools.dart';

import 'bundle.dart';
import 'flutter_api.dart';
import 'flutter_controller.dart';
import 'flutter_view.dart';

class FlutterEngine {
  final FlutterApi _flutterApi;

  late final EngineRef _engineRef;

  late final FlutterViewController controller;
  late final FlutterView view;
  //late final BinaryMessenger _binaryMessenger;

  FlutterEngine(Size size, Bundle bundle, this._flutterApi) {
    _engineRef = _flutterApi.createEngine(bundle);
    final controllerRef = _flutterApi.createController(size, _engineRef);
    final viewRef = _flutterApi.getView(controllerRef);

    print('engine: 0x${_engineRef.value.toRadixString(16)}');
    print('controller: 0x${controllerRef.value.toRadixString(16)}');
    print('view: 0x${viewRef.value.toRadixString(16)}');

    controller = FlutterViewController(size, controllerRef, _flutterApi);
    view = FlutterView(viewRef, _flutterApi);

    // todo: add support flutter messages
    // _binaryMessenger = BinaryMessenger(
    //     FlutterDesktopEngineGetMessenger(_engineRef)
    // );
  }

  factory FlutterEngine.fromFilePaths(Size size, String bundlePath, String flutterDllPath) {
    final flutterApi = FlutterApi.load(flutterDllPath);
    final bundle = Bundle.fromSourceDir(bundlePath);
    return FlutterEngine(size, bundle, flutterApi);
  }

  void reloadSystemFonts() {
    ThrowUnimplemented.throwIfOn();
  }
}
