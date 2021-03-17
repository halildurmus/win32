// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// -----------------------------------------------------------------------------
// Linter exceptions
// -----------------------------------------------------------------------------
// ignore_for_file: camel_case_types ignore_for_file: camel_case_extensions
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

class HRAWINPUT extends Struct {
  @IntPtr() external int Value;
}

class MOUSEMOVEPOINT extends Struct {
  @Int32() external int x;
  @Int32() external int y;
  @Uint32() external int time;
  @IntPtr() external int dwExtraInfo;
}

class TRACKMOUSEEVENT extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int dwFlags;
  @IntPtr() external int hwndTrack;
  @Uint32() external int dwHoverTime;
}

class MOUSEINPUT extends Struct {
  @Int32() external int dx;
  @Int32() external int dy;
  @Uint32() external int mouseData;
  @Uint32() external int dwFlags;
  @Uint32() external int time;
  @IntPtr() external int dwExtraInfo;
}

class KEYBDINPUT extends Struct {
  @Uint16() external int wVk;
  @Uint16() external int wScan;
  @Uint32() external int dwFlags;
  @Uint32() external int time;
  @IntPtr() external int dwExtraInfo;
}

class HARDWAREINPUT extends Struct {
  @Uint32() external int uMsg;
  @Uint16() external int wParamL;
  @Uint16() external int wParamH;
}

class LASTINPUTINFO extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int dwTime;
}

class RAWINPUTHEADER extends Struct {
  @Uint32() external int dwType;
  @Uint32() external int dwSize;
  @IntPtr() external int hDevice;
  @IntPtr() external int wParam;
}

class RAWKEYBOARD extends Struct {
  @Uint16() external int MakeCode;
  @Uint16() external int Flags;
  @Uint16() external int Reserved;
  @Uint16() external int VKey;
  @Uint32() external int Message;
  @Uint32() external int ExtraInformation;
}

class RAWHID extends Struct {
  @Uint32() external int dwSizeHid;
  @Uint32() external int dwCount;
  external __ubyte__ bRawData;
}

class RID_DEVICE_INFO_MOUSE extends Struct {
  @Uint32() external int dwId;
  @Uint32() external int dwNumberOfButtons;
  @Uint32() external int dwSampleRate;
  @Int32() external int fHasHorizontalWheel;
}

class RID_DEVICE_INFO_KEYBOARD extends Struct {
  @Uint32() external int dwType;
  @Uint32() external int dwSubType;
  @Uint32() external int dwKeyboardMode;
  @Uint32() external int dwNumberOfFunctionKeys;
  @Uint32() external int dwNumberOfIndicators;
  @Uint32() external int dwNumberOfKeysTotal;
}

class RID_DEVICE_INFO_HID extends Struct {
  @Uint32() external int dwVendorId;
  @Uint32() external int dwProductId;
  @Uint32() external int dwVersionNumber;
  @Uint16() external int usUsagePage;
  @Uint16() external int usUsage;
}

class RAWINPUTDEVICE extends Struct {
  @Uint16() external int usUsagePage;
  @Uint16() external int usUsage;
  @Uint32() external int dwFlags;
  @IntPtr() external int hwndTarget;
}

class RAWINPUTDEVICELIST extends Struct {
  @IntPtr() external int hDevice;
  @Uint32() external int dwType;
}

