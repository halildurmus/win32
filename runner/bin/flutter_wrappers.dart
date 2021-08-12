
class DartProject {
  final String sourceDir;

  DartProject(this.sourceDir);
}

void registerPlugins(FlutterEngine engine) {
  throw UnimplementedError();
}

class FlutterEngine {
  void reloadSystemFonts() {
    throw UnimplementedError();
  }
}
class FlutterView {
  int get nativeWindow => throw UnimplementedError();
}

class FlutterViewController {
  final int width;
  final int height;
  late final DartProject _project;
  late final FlutterEngine engine;
  late final FlutterView view;

  FlutterViewController(this.width, this.height, this._project) {
    // todo: this must generate errors if not create
    engine = FlutterEngine();
    // todo: this must generate errors if not create
    view = FlutterView();
  }

  int wndProc(int hWnd, int uMsg, int wParam, int lParam){
    throw UnimplementedError();
  }
}
