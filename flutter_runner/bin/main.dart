import 'dart:async';

import '../lib/flutter_runner.dart';

Future main() async {
  ThrowUnimplemented.off();

  const flutterDllPath =
      r'c:\Users\ilopX\fvm\default\bin\cache\artifacts\engine\windows-x64-release\flutter_windows.dll';
  const bundlePath = r'd:\downloads\Release\data';

  final flutterApi = FlutterApi.load(flutterDllPath);
  final bundle = Bundle.fromSourceDir(bundlePath);

  FlutterWindow(bundle, flutterApi)
    ..title = 'Flutter dart runner'
    ..size = Size(400, 500)
    ..show();

  NativeApp.run();
}
