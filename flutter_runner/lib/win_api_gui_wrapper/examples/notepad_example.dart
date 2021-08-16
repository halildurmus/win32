import 'dart:async';
import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import '../hwnd.dart';
import '../native_app.dart';
import '../native_window.dart';

Future main() async {
  final win = NativeWindow()..show();

  Process.start('notepad', []);
  final completter = Completer<int>();

  Timer.periodic(Duration(milliseconds: 1), (timer) {
    final notepadHWnd = FindWindow('notepad'.toNativeUtf16(), nullptr);
    if (notepadHWnd != 0) {
      timer.cancel();
      completter.complete(notepadHWnd);
    }
  });

  final notepadHWnd = await completter.future;

  SetWindowLongPtr(
    notepadHWnd,
    GWL_STYLE,
    WS_CHILD | WS_POPUPWINDOW | WS_VISIBLE,
  );
  win.childContent = Hwnd.fomHandle(notepadHWnd);

  NativeApp.run();
}
