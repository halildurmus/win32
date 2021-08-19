import '../win_api_gui_wrapper/tools.dart';
import 'bundle.dart';
import 'flutter_api.dart';
import 'flutter_controller.dart';
import 'flutter_view.dart';

class FlutterEngine {
  final FlutterApi _flutterApi;

  late final EngineRef _engineRef;

  late final FlutterController controller;
  late final FlutterView view;

  FlutterEngine(Size size, Bundle bundle, this._flutterApi) {
    _engineRef = _flutterApi.createEngine(bundle);
    final controllerRef = _flutterApi.createController(size, _engineRef);
    final viewRef = _flutterApi.getView(controllerRef);

    controller = FlutterController(size, controllerRef, _flutterApi);
    view = FlutterView(viewRef, _flutterApi);
  }

  void reloadSystemFonts() {}
}
