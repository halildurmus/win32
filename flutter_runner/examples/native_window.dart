import 'dart:async';
import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import '../lib/flutter_runner.dart';

Future main() async {
  Process.start('notepad', []);
  NativeWindow()
    ..childContent = await findNotepadWindow()
    ..text = 'Dart native window example'
    ..size = Size(640, 480)
    ..center()
    ..show();
  NativeApp.run();
}

Future<Hwnd> findNotepadWindow() async {
  final completer = Completer<Hwnd>();

  Timer.periodic(Duration(milliseconds: 1), (timer) {
    final notepadHWnd = FindWindow('notepad'.toNativeUtf16(), nullptr);
    if (notepadHWnd != 0) {
      timer.cancel();
      completer.complete(Hwnd.fomHandle(notepadHWnd));
    }
  });

  final hWnd = await completer.future;

  SetWindowLongPtr(
    hWnd.handle,
    GWL_STYLE,
    WS_CHILD | WS_POPUPWINDOW,
  );

  return hWnd;
}
