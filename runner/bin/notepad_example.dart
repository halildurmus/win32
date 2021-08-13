import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'app/native_app.dart';

Future main() async {
  Process.run('notepad', []);

  await Future<void>.delayed(const Duration(microseconds: 1));
  final notePadWnd = FindWindow('notepad'.toNativeUtf16(), nullptr);
  SetWindowLongPtr(notePadWnd, GWL_STYLE, WS_CHILD | WS_POPUPWINDOW | WS_VISIBLE);

  NativeWindow()
    ..childContent = notePadWnd
    ..show();

  NativeApp.run();
}
