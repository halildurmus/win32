import 'dart:async';

import '../lib/flutter_runner.dart';

Future main() async {
  ThrowUnimplemented.off();

  const bundlePath = r'd:\downloads\Release\data';
  const flutterDllPath =
      r'c:\Users\ilopX\fvm\default\bin\cache\artifacts\engine\windows-x64-release\flutter_windows.dll';

  final bundle = Bundle.fromSourceDir(bundlePath);
  final flutterApi = FlutterApi.load(flutterDllPath);

  FlutterWindow(bundle, flutterApi)
    ..text = 'Flutter dart runner'
    ..size = Size(400, 500)
    ..center()
    ..show();

  NativeApp.run();
}
