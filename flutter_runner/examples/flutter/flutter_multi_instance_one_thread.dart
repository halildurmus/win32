import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'package:win32/win32.dart';

import '../../lib/flutter_runner.dart';

Future main() async {
  final bundlePath = FlutterFinder.searchBundleFolder('bundle');
  final flutterDllPath = FlutterFinder.searchDllFile();

  final bundle = Bundle.fromSourceDir(bundlePath);
  final flutterApi = FlutterApi.load(flutterDllPath);

  for (var rect in generateScreenGrid(3)) {
    FlutterWindow(bundle, flutterApi)
      ..text = 'Flutter dart runner'
      ..rect = rect
      ..show();
  }
  NativeApp.run();
}

Iterable<Rect> generateScreenGrid(int gridLen) sync* {
  final screen = screenRect;
  final cellWidth = screen.width ~/ gridLen;
  final cellHeight = screen.height ~/ gridLen;

  for (var x = 0; x < gridLen; x++) {
    for (var y = 0; y < gridLen; y++) {
      yield Rect.fromXYWH(
        screen.left + x * cellWidth,
        screen.top + y * cellHeight,
        cellWidth,
        cellHeight,
      );
    }
  }
}

Rect get screenRect {
  final pRect = calloc<RECT>();
  try {
    if (SystemParametersInfo(SPI_GETWORKAREA, 0, pRect, 0) == 0) {
      throw 'SystemParametersInfo error';
    }
    return Rect.fromPRect(pRect);
  } finally {
    free(pRect);
  }
}
