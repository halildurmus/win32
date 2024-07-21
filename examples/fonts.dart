// Enumerate the fonts installed on this system.

import 'dart:collection';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

void main() {
  final hDC = GetDC(NULL);
  final searchFont = calloc<LOGFONT>()
    ..ref.lfCharSet = FONT_CHARSET.ANSI_CHARSET;

  final fontNames = SplayTreeSet<String>();

  int enumerateFonts(
      Pointer<LOGFONT> logFont, Pointer<TEXTMETRIC> _, int __, int ___) {
    // Get extended information from the font
    final logFontEx = logFont.cast<ENUMLOGFONTEX>();
    fontNames.add(logFontEx.ref.elfFullName);
    return TRUE; // continue enumeration
  }

  final lpProc = NativeCallable<FONTENUMPROC>.isolateLocal(
    enumerateFonts,
    exceptionalReturn: 0,
  );

  EnumFontFamiliesEx(hDC, searchFont, lpProc.nativeFunction, 0, 0);
  lpProc.close();

  print('${fontNames.length} font families discovered.');
  for (final font in fontNames) {
    print(font);
  }

  free(searchFont);
  print('Done.');
}
