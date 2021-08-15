import 'dart:async';

import 'flutter/bundle.dart';
import 'flutter/flutter_api.dart';
import 'flutter/flutter_window.dart';
import 'win_api_gui_wrapper/native_app.dart';
import 'win_api_gui_wrapper/throw_unimplemented.dart';
import 'win_api_gui_wrapper/tools.dart';

Future main() async {
  ThrowUnimplemented.off();

  final flutterDllPath = r'c:\Users\ilopX\fvm\default\bin\cache\artifacts\engine\windows-x64-release\flutter_windows.dll';
  final bundlePath =  r'd:\downloads\Release\data';

  final flutterApi = FlutterApi.load(flutterDllPath);
  final bundle = Bundle.fromSourceDir(bundlePath);

  FlutterWindow(bundle, flutterApi)
    ..title = 'Flutter dart runner'
    // todo: after changing the new dimensions, the flutter is not updated on the first launch
    ..size = Size(300, 680)
    //..centredOfScreen()
    ..show();

   NativeApp.run();
}
