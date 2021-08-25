import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import '../../lib/flutter_runner.dart';

Future main() async {
  final notepad = await startNotepad();
  NativeWindow()
    ..childContent = notepad
    ..text = 'Dart native window example'
    ..size = Size(640, 480)
    ..center()
    ..show();
  NativeApp.run();
}

Future<Hwnd> startNotepad() {
  final pNotepad = 'notepad'.toNativeUtf16();
  final pStartup = calloc<STARTUPINFO>()
    ..ref.cb = sizeOf<STARTUPINFO>()
    ..ref.dwFlags = STARTF_USESHOWWINDOW
    ..ref.wShowWindow = SW_HIDE;
  final pProcessInfo = calloc<PROCESS_INFORMATION>();
  try {
    CreateProcess(
      nullptr,
      pNotepad,
      nullptr,
      nullptr,
      FALSE,
      CREATE_NO_WINDOW,
      nullptr,
      nullptr,
      pStartup,
      pProcessInfo,
    );
  } finally {
    free(pNotepad);
    free(pStartup);
    free(pProcessInfo);
  }

  return findNotepadWindow();
}

Future<Hwnd> findNotepadWindow() async {
  final completer = Completer<Hwnd>();
  final pNotepad = 'notepad'.toNativeUtf16();
  try {
    Timer.periodic(Duration(milliseconds: 1), (timer) {
      final notepadHWnd = FindWindow(pNotepad, nullptr);
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
  } finally {
    free(pNotepad);
  }
}
