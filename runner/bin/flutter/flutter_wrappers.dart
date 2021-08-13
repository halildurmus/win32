
import '../app/throw_unimplemented.dart';

void registerPlugins(FlutterEngine engine) {
  ThrowUnimplemented.throwIfOn();
}

class DartProject {
  final String sourceDir;

  DartProject(this.sourceDir);
}

class FlutterEngine {
  void reloadSystemFonts() {
    throw UnimplementedError();
  }
}
class FlutterView {
  int get nativeWindow {
    ThrowUnimplemented.throwIfOn();
    return 0;
  }
}

class FlutterViewController {
  final int width;
  final int height;
  late final DartProject project;
  late final FlutterEngine engine;
  late final FlutterView view;

  FlutterViewController(this.width, this.height, this.project) {
    // todo: this must generate errors if not create
    engine = FlutterEngine();
    // todo: this must generate errors if not create
    view = FlutterView();
  }

  int wndProc(int hWnd, int uMsg, int wParam, int lParam){
    ThrowUnimplemented.throwIfOn();
    return 0;
  }
}
