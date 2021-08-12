import 'flutter_window.dart';
import 'flutter_wrappers.dart';
import 'native_app.dart';

void main() {
  final dartProject = DartProject('!!! path directory !!!');
  final wnd = FlutterWindow(dartProject)
    ..title = 'New Window'
    ..show();

  NativeApp.run();
}
