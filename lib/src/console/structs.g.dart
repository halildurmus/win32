// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';

import '../foundation/structs.g.dart';
import '../console/structs.g.dart';

class CHAR_INFO extends Struct {
  @Uint32()
  external int Char;
  @Uint16()
  external int Attributes;
}

class CONSOLE_CURSOR_INFO extends Struct {
  @Uint32()
  external int dwSize;
  @Int32()
  external int bVisible;
}

class CONSOLE_FONT_INFO extends Struct {
  @Uint32()
  external int nFont;
  external COORD dwFontSize;
}

class CONSOLE_FONT_INFOEX extends Struct {
  @Uint32()
  external int cbSize;
  @Uint32()
  external int nFont;
  external COORD dwFontSize;
  @Uint32()
  external int FontFamily;
  @Uint32()
  external int FontWeight;
  @Array(32)
  external Array<Uint16> _FaceName;

  String get FaceName {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      charCodes.add(_FaceName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set FaceName(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _FaceName[i] = stringToStore.codeUnitAt(i);
    }
  }
}

class CONSOLE_HISTORY_INFO extends Struct {
  @Uint32()
  external int cbSize;
  @Uint32()
  external int HistoryBufferSize;
  @Uint32()
  external int NumberOfHistoryBuffers;
  @Uint32()
  external int dwFlags;
}

class CONSOLE_READCONSOLE_CONTROL extends Struct {
  @Uint32()
  external int nLength;
  @Uint32()
  external int nInitialChars;
  @Uint32()
  external int dwCtrlWakeupMask;
  @Uint32()
  external int dwControlKeyState;
}

class CONSOLE_SCREEN_BUFFER_INFO extends Struct {
  external COORD dwSize;
  external COORD dwCursorPosition;
  @Uint16()
  external int wAttributes;
  external SMALL_RECT srWindow;
  external COORD dwMaximumWindowSize;
}

class CONSOLE_SCREEN_BUFFER_INFOEX extends Struct {
  @Uint32()
  external int cbSize;
  external COORD dwSize;
  external COORD dwCursorPosition;
  @Uint16()
  external int wAttributes;
  external SMALL_RECT srWindow;
  external COORD dwMaximumWindowSize;
  @Uint16()
  external int wPopupAttributes;
  @Int32()
  external int bFullscreenSupported;
  @Array(16)
  external Array<Uint32> ColorTable;
}

class CONSOLE_SELECTION_INFO extends Struct {
  @Uint32()
  external int dwFlags;
  external COORD dwSelectionAnchor;
  external SMALL_RECT srSelection;
}

class COORD extends Struct {
  @Int16()
  external int X;
  @Int16()
  external int Y;
}

class FOCUS_EVENT_RECORD extends Struct {
  @Int32()
  external int bSetFocus;
}

class INPUT_RECORD extends Struct {
  @Uint16()
  external int EventType;
  @Uint32()
  external int Event;
}

class KEY_EVENT_RECORD extends Struct {
  @Int32()
  external int bKeyDown;
  @Uint16()
  external int wRepeatCount;
  @Uint16()
  external int wVirtualKeyCode;
  @Uint16()
  external int wVirtualScanCode;
  @Uint32()
  external int uChar;
  @Uint32()
  external int dwControlKeyState;
}

class MENU_EVENT_RECORD extends Struct {
  @Uint32()
  external int dwCommandId;
}

class MOUSE_EVENT_RECORD extends Struct {
  external COORD dwMousePosition;
  @Uint32()
  external int dwButtonState;
  @Uint32()
  external int dwControlKeyState;
  @Uint32()
  external int dwEventFlags;
}

class SMALL_RECT extends Struct {
  @Int16()
  external int Left;
  @Int16()
  external int Top;
  @Int16()
  external int Right;
  @Int16()
  external int Bottom;
}

class WINDOW_BUFFER_SIZE_RECORD extends Struct {
  external COORD dwSize;
}
