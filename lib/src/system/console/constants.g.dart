// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// -----------------------------------------------------------------------------
// Linter exceptions
// -----------------------------------------------------------------------------
// ignore_for_file: camel_case_types
// ignore_for_file: camel_case_extensions
//
// Why? The linter defaults to throw a warning for types not named as camel
// case. We deliberately break this convention to match the Win32 underlying
// types.
//
//
// ignore_for_file: unused_field
//
// Why? The linter complains about unused fields (e.g. a class that contains
// underscore-prefixed members that are not used in the library. In this class,
// we use this feature to ensure that sizeOf<STRUCT_NAME> returns a size at
// least as large as the underlying native struct. See, for example,
// ENUMLOGFONTEX.
//
//
// ignore_for_file: unnecessary_getters_setters
//
// Why? In structs like VARIANT, we're using getters and setters to project the
// same underlying data property to various union types. The trivial overhead is
// outweighed by readability.
//
//
// ignore_for_file: unused_import
//
// Why? We speculatively include some imports that we might generate a
// requirement for.
// -----------------------------------------------------------------------------

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';

const ENABLE_EXTENDED_FLAGS = 0x80;
const ENABLE_AUTO_POSITION = 0x100;
const CTRL_C_EVENT = 0x0;
const CTRL_BREAK_EVENT = 0x1;
const CTRL_CLOSE_EVENT = 0x2;
const CTRL_LOGOFF_EVENT = 0x5;
const CTRL_SHUTDOWN_EVENT = 0x6;
const PSEUDOCONSOLE_INHERIT_CURSOR = 0x1;
const FOREGROUND_BLUE = 0x1;
const FOREGROUND_GREEN = 0x2;
const FOREGROUND_RED = 0x4;
const FOREGROUND_INTENSITY = 0x8;
const BACKGROUND_BLUE = 0x10;
const BACKGROUND_GREEN = 0x20;
const BACKGROUND_RED = 0x40;
const BACKGROUND_INTENSITY = 0x80;
const COMMON_LVB_LEADING_BYTE = 0x100;
const COMMON_LVB_TRAILING_BYTE = 0x200;
const COMMON_LVB_GRID_HORIZONTAL = 0x400;
const COMMON_LVB_GRID_LVERTICAL = 0x800;
const COMMON_LVB_GRID_RVERTICAL = 0x1000;
const COMMON_LVB_REVERSE_VIDEO = 0x4000;
const COMMON_LVB_UNDERSCORE = 0x8000;
const COMMON_LVB_SBCSDBCS = 0x300;
const CONSOLE_NO_SELECTION = 0x0;
const CONSOLE_SELECTION_IN_PROGRESS = 0x1;
const CONSOLE_SELECTION_NOT_EMPTY = 0x2;
const CONSOLE_MOUSE_SELECTION = 0x4;
const CONSOLE_MOUSE_DOWN = 0x8;
const HISTORY_NO_DUP_FLAG = 0x1;
const CONSOLE_FULLSCREEN = 0x1;
const CONSOLE_FULLSCREEN_HARDWARE = 0x2;
const CONSOLE_FULLSCREEN_MODE = 0x1;
const CONSOLE_WINDOWED_MODE = 0x2;
const RIGHT_ALT_PRESSED = 0x1;
const LEFT_ALT_PRESSED = 0x2;
const RIGHT_CTRL_PRESSED = 0x4;
const LEFT_CTRL_PRESSED = 0x8;
const SHIFT_PRESSED = 0x10;
const NUMLOCK_ON = 0x20;
const SCROLLLOCK_ON = 0x40;
const CAPSLOCK_ON = 0x80;
const ENHANCED_KEY = 0x100;
const NLS_DBCSCHAR = 0x10000;
const NLS_ALPHANUMERIC = 0x0;
const NLS_KATAKANA = 0x20000;
const NLS_HIRAGANA = 0x40000;
const NLS_ROMAN = 0x400000;
const NLS_IME_CONVERSION = 0x800000;
const ALTNUMPAD_BIT = 0x4000000;
const NLS_IME_DISABLE = 0x20000000;
const FROM_LEFT_1ST_BUTTON_PRESSED = 0x1;
const RIGHTMOST_BUTTON_PRESSED = 0x2;
const FROM_LEFT_2ND_BUTTON_PRESSED = 0x4;
const FROM_LEFT_3RD_BUTTON_PRESSED = 0x8;
const FROM_LEFT_4TH_BUTTON_PRESSED = 0x10;
const MOUSE_MOVED = 0x1;
const DOUBLE_CLICK = 0x2;
const MOUSE_WHEELED = 0x4;
const MOUSE_HWHEELED = 0x8;
const KEY_EVENT = 0x1;
const MOUSE_EVENT = 0x2;
const WINDOW_BUFFER_SIZE_EVENT = 0x4;
const MENU_EVENT = 0x8;
const FOCUS_EVENT = 0x10;
