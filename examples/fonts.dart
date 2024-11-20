// Enumerate the fonts installed on this system.

import 'dart:collection';
import 'dart:ffi';

import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';
import 'package:win32/win32.dart';

void main() {
  final hDC = GetDC(null);
  final searchFont = adaptiveCalloc<LOGFONT>()..ref.lfCharSet = ANSI_CHARSET;

  final fontNames = SplayTreeSet<String>();

  int enumerateFonts(
    Pointer<LOGFONT> logFont,
    Pointer<TEXTMETRIC> _,
    int _,
    int _,
  ) {
    final logFontEx = logFont.cast<ENUMLOGFONTEX>();
    fontNames.add(logFontEx.ref.elfFullName);
    return TRUE; // continue enumeration
  }

  final lpProc = NativeCallable<FONTENUMPROC>.isolateLocal(
    enumerateFonts,
    exceptionalReturn: 0,
  );

  EnumFontFamiliesEx(
    hDC,
    searchFont,
    lpProc.nativeFunction,
    const LPARAM(0),
    0,
  );
  lpProc.close();

  print('${fontNames.length} font families discovered.');
  for (final font in fontNames) {
    print(font);
  }

  free(searchFont);
}
