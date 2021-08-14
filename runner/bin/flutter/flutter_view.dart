import 'flutter_api.dart';

class FlutterView {
  final FlutterApi _flutterApi;
  final ViewRef _refView;

  FlutterView(this._refView, this._flutterApi);

  int get nativeWindow {
    return _flutterApi.viewGetHWND(_refView);
  }
}
