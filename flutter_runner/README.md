## Pre-launch Checklist
- [X] Add winApi OOP wrapper, for create window more simple
- [X] Add working flutter loader
- [ ] Add flutter bundle for demonstrate flutter loader
- [ ] Add: 'CreateAndAttachConsole'
- [ ] Add support dpi
- [ ] Add command line tool `flutter_runner --bandle=c:\proj\data --dll=c:\some\flutter_windows.dll`
- [ ] Impl FlutterMessage
- [ ] Add plugin registry
- [ ] Fix error: `Failed to init NativeSymbolResolver (SymInitialize 87)`

Current working code:
```dart
import 'dart:async';

import 'package:flutter_runner/flutter_runner.dart';

Future main() async {
  ThrowUnimplemented.off();

  final flutterDllPath = r'c:\Users\ilopX\fvm\default\bin\cache\artifacts\engine\windows-x64-release\flutter_windows.dll';
  final bundlePath =  r'd:\downloads\Release\data';

  final flutterApi = FlutterApi.load(flutterDllPath);
  final bundle = Bundle.fromSourceDir(bundlePath);

  FlutterWindow(bundle, flutterApi)
    ..title = 'Flutter dart runner'
    ..size = Size(400, 500)
    ..show();

   NativeApp.run();
}
```
