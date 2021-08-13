import 'app/native_app.dart';
import 'app/throw_unimplemented.dart';
import 'flutter/flutter_window.dart';
import 'flutter/flutter_wrappers.dart';

void main() {
  ThrowUnimplemented.off();

  final dartProject = DartProject('!!! path directory !!!');
  FlutterWindow(dartProject)
    ..title = 'New Window'
    ..show();

  NativeApp.run();
}
