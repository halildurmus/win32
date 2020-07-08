// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Enumerate the fonts installed on this system

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

final fontNames = <String>[];

int EnumerateFont(Pointer<LOGFONT> logFontPtr,
    Pointer<TEXTMETRIC> textMetricPtr, int FontType, int lParam) {
  final logFont = logFontPtr.cast<ENUMLOGFONTEX>().ref;

  fontNames.add(logFont.elfFullName);
  return TRUE; // continue enumeration
}

void main() {
  final hDC = GetDC(NULL);
  final searchFont = LOGFONT.allocate();
  final callback = Pointer.fromFunction<EnumFontFamExProc>(EnumerateFont, 0);

  searchFont.lfCharSet = ANSI_CHARSET;
  EnumFontFamiliesEx(hDC, searchFont.addressOf, callback, 0, 0);
  fontNames.sort();

  print('${fontNames.length} font families discovered.');
  for (var font in fontNames) {
    print(font);
  }

  free(searchFont.addressOf);
}
