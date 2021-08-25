# Flutter funner

## Terminal

```flutter_runner --bandle c:\proj\data --dll=c:\some_path\flutter_windows.dll```

```dart
import 'dart:ffi';

import 'package:flutter_runner/flutter_runner.dart';

void main(List<String> args) {
  final bundlePath = FlutterFinder.searchBundleFolder('bundle');
  final flutterDllPath = FlutterFinder.searchDllFile();

  final bundle = Bundle.fromSourceDir(bundlePath);
  final flutterApi = FlutterApi.load(flutterDllPath);

    FlutterWindow(bundle, flutterApi)
      ..text = 'Flutter dart runner'
      ..rect = rect
      ..show();

  NativeApp.run();
}
```
