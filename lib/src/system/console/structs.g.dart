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
import '../../combase.dart';
import '../../guid.dart';
import '../../foundation/structs.g.dart';
import '../../system/console/structs.g.dart';

/// {@category Struct}
class CHAR_INFO extends Struct {
  external _CHAR_INFO__Char_e__Union Char;

  @Uint16()
  external int Attributes;
}

/// {@category Struct}
class _CHAR_INFO__Char_e__Union extends Union {
  @Uint16()
  external int UnicodeChar;

  @Uint8()
  external int AsciiChar;
}

extension CHAR_INFO_Extension on CHAR_INFO {
  int get UnicodeChar => this.Char.UnicodeChar;
  set UnicodeChar(int value) => this.Char.UnicodeChar = value;

  int get AsciiChar => this.Char.AsciiChar;
  set AsciiChar(int value) => this.Char.AsciiChar = value;
}

/// {@category Struct}
class CONSOLE_CURSOR_INFO extends Struct {
  @Uint32()
  external int dwSize;

  @Int32()
  external int bVisible;
}

/// {@category Struct}
class CONSOLE_FONT_INFO extends Struct {
  @Uint32()
  external int nFont;

  external COORD dwFontSize;
}

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
class CONSOLE_SCREEN_BUFFER_INFO extends Struct {
  external COORD dwSize;

  external COORD dwCursorPosition;

  @Uint16()
  external int wAttributes;

  external SMALL_RECT srWindow;

  external COORD dwMaximumWindowSize;
}

/// {@category Struct}
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

/// {@category Struct}
class CONSOLE_SELECTION_INFO extends Struct {
  @Uint32()
  external int dwFlags;

  external COORD dwSelectionAnchor;

  external SMALL_RECT srSelection;
}

/// {@category Struct}
class COORD extends Struct {
  @Int16()
  external int X;

  @Int16()
  external int Y;
}

/// {@category Struct}
class FOCUS_EVENT_RECORD extends Struct {
  @Int32()
  external int bSetFocus;
}

/// {@category Struct}
class INPUT_RECORD extends Struct {
  @Uint16()
  external int EventType;

  external _INPUT_RECORD__Event_e__Union Event;
}

/// {@category Struct}
class _INPUT_RECORD__Event_e__Union extends Union {
  external KEY_EVENT_RECORD KeyEvent;

  external MOUSE_EVENT_RECORD MouseEvent;

  external WINDOW_BUFFER_SIZE_RECORD WindowBufferSizeEvent;

  external MENU_EVENT_RECORD MenuEvent;

  external FOCUS_EVENT_RECORD FocusEvent;
}

extension INPUT_RECORD_Extension on INPUT_RECORD {
  KEY_EVENT_RECORD get KeyEvent => this.Event.KeyEvent;
  set KeyEvent(KEY_EVENT_RECORD value) => this.Event.KeyEvent = value;

  MOUSE_EVENT_RECORD get MouseEvent => this.Event.MouseEvent;
  set MouseEvent(MOUSE_EVENT_RECORD value) => this.Event.MouseEvent = value;

  WINDOW_BUFFER_SIZE_RECORD get WindowBufferSizeEvent =>
      this.Event.WindowBufferSizeEvent;
  set WindowBufferSizeEvent(WINDOW_BUFFER_SIZE_RECORD value) =>
      this.Event.WindowBufferSizeEvent = value;

  MENU_EVENT_RECORD get MenuEvent => this.Event.MenuEvent;
  set MenuEvent(MENU_EVENT_RECORD value) => this.Event.MenuEvent = value;

  FOCUS_EVENT_RECORD get FocusEvent => this.Event.FocusEvent;
  set FocusEvent(FOCUS_EVENT_RECORD value) => this.Event.FocusEvent = value;
}

/// {@category Struct}
class KEY_EVENT_RECORD extends Struct {
  @Int32()
  external int bKeyDown;

  @Uint16()
  external int wRepeatCount;

  @Uint16()
  external int wVirtualKeyCode;

  @Uint16()
  external int wVirtualScanCode;

  external _KEY_EVENT_RECORD__uChar_e__Union uChar;

  @Uint32()
  external int dwControlKeyState;
}

/// {@category Struct}
class _KEY_EVENT_RECORD__uChar_e__Union extends Union {
  @Uint16()
  external int UnicodeChar;

  @Uint8()
  external int AsciiChar;
}

extension KEY_EVENT_RECORD_Extension on KEY_EVENT_RECORD {
  int get UnicodeChar => this.uChar.UnicodeChar;
  set UnicodeChar(int value) => this.uChar.UnicodeChar = value;

  int get AsciiChar => this.uChar.AsciiChar;
  set AsciiChar(int value) => this.uChar.AsciiChar = value;
}

/// {@category Struct}
class MENU_EVENT_RECORD extends Struct {
  @Uint32()
  external int dwCommandId;
}

/// {@category Struct}
class MOUSE_EVENT_RECORD extends Struct {
  external COORD dwMousePosition;

  @Uint32()
  external int dwButtonState;

  @Uint32()
  external int dwControlKeyState;

  @Uint32()
  external int dwEventFlags;
}

/// {@category Struct}
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

/// {@category Struct}
class WINDOW_BUFFER_SIZE_RECORD extends Struct {
  external COORD dwSize;
}
