import 'app/native_app.dart';
import 'app/throw_unimplemented.dart';
import 'flutter/flutter_window.dart';

Future main() async {
  ThrowUnimplemented.off();

  final flutterDllPath = r'c:\Users\ilopX\fvm\default\bin\cache\artifacts\engine\windows-x64-release\flutter_windows.dll';
  final dartProject =  r'd:\downloads\Release\data';

  FlutterWindow(flutterDllPath, dartProject)
    ..title = 'Flutter dart runner'
    ..show();

   NativeApp.run();
}
