import 'dart:io';

import '../lib/cmd_tool/flutter_finder.dart';
import '../lib/cmd_tool/args.dart';
import '../lib/flutter_runner.dart';

void main(List<String> args) {
  final arg = Args.parse(args);
  try {
    final bundlePath = FlutterFinder.searchBundleFolder(arg.bundlePath);
    final dllPath = FlutterFinder.searchDllFile(arg.dllPath);

    print('bundle: ${bundlePath}');
    print('flutter_dll: ${dllPath}');

    final bundle = Bundle.fromSourceDir(bundlePath);
    final flutterApi = FlutterApi.load(dllPath);

    FlutterWindow(bundle, flutterApi)
      ..text = 'Flutter dart runner'
      ..size = Size(400, 500)
      ..center()
      ..show();
  } catch (e) {
    stderr.writeln(e);
    exit(-1);
  }

  NativeApp.run();
}
