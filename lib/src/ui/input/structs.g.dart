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
import '../../ui/input/structs.g.dart';
import '../../foundation/structs.g.dart';

/// {@category Struct}
class INPUT_MESSAGE_SOURCE extends Struct {
  @Int32()
  external int deviceType;

  @Int32()
  external int originId;
}

/// {@category Struct}
class RAWHID extends Struct {
  @Uint32()
  external int dwSizeHid;

  @Uint32()
  external int dwCount;

  @Array(1)
  external Array<Uint8> bRawData;
}

/// {@category Struct}
class RAWINPUT extends Struct {
  external RAWINPUTHEADER header;

  external _RAWINPUT__data_e__Union data;
}

/// {@category Struct}
class _RAWINPUT__data_e__Union extends Union {
  external RAWMOUSE mouse;

  external RAWKEYBOARD keyboard;

  external RAWHID hid;
}

extension RAWINPUT_Extension on RAWINPUT {
  RAWMOUSE get mouse => this.data.mouse;
  set mouse(RAWMOUSE value) => this.data.mouse = value;

  RAWKEYBOARD get keyboard => this.data.keyboard;
  set keyboard(RAWKEYBOARD value) => this.data.keyboard = value;

  RAWHID get hid => this.data.hid;
  set hid(RAWHID value) => this.data.hid = value;
}

/// {@category Struct}
class RAWINPUTDEVICE extends Struct {
  @Uint16()
  external int usUsagePage;

  @Uint16()
  external int usUsage;

  @Uint32()
  external int dwFlags;

  @IntPtr()
  external int hwndTarget;
}

/// {@category Struct}
class RAWINPUTDEVICELIST extends Struct {
  @IntPtr()
  external int hDevice;

  @Uint32()
  external int dwType;
}

/// {@category Struct}
class RAWINPUTHEADER extends Struct {
  @Uint32()
  external int dwType;

  @Uint32()
  external int dwSize;

  @IntPtr()
  external int hDevice;

  @IntPtr()
  external int wParam;
}

/// {@category Struct}
class RAWKEYBOARD extends Struct {
  @Uint16()
  external int MakeCode;

  @Uint16()
  external int Flags;

  @Uint16()
  external int Reserved;

  @Uint16()
  external int VKey;

  @Uint32()
  external int Message;

  @Uint32()
  external int ExtraInformation;
}

/// {@category Struct}
class RAWMOUSE extends Struct {
  @Uint16()
  external int usFlags;

  external _RAWMOUSE__Anonymous_e__Union Anonymous;

  @Uint32()
  external int ulRawButtons;

  @Int32()
  external int lLastX;

  @Int32()
  external int lLastY;

  @Uint32()
  external int ulExtraInformation;
}

/// {@category Struct}
class _RAWMOUSE__Anonymous_e__Union extends Union {
  @Uint32()
  external int ulButtons;

  external _RAWMOUSE__Anonymous_e__Union__Anonymous_e__Struct Anonymous;
}

/// {@category Struct}
class _RAWMOUSE__Anonymous_e__Union__Anonymous_e__Struct extends Struct {
  @Uint16()
  external int usButtonFlags;

  @Uint16()
  external int usButtonData;
}

extension RAWMOUSE__Anonymous_e__Union_Extension on RAWMOUSE {
  int get usButtonFlags => this.Anonymous.Anonymous.usButtonFlags;
  set usButtonFlags(int value) =>
      this.Anonymous.Anonymous.usButtonFlags = value;

  int get usButtonData => this.Anonymous.Anonymous.usButtonData;
  set usButtonData(int value) => this.Anonymous.Anonymous.usButtonData = value;
}

extension RAWMOUSE_Extension on RAWMOUSE {
  int get ulButtons => this.Anonymous.ulButtons;
  set ulButtons(int value) => this.Anonymous.ulButtons = value;

  _RAWMOUSE__Anonymous_e__Union__Anonymous_e__Struct get Anonymous =>
      this.Anonymous.Anonymous;
  set Anonymous(_RAWMOUSE__Anonymous_e__Union__Anonymous_e__Struct value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category Struct}
class RID_DEVICE_INFO extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwType;

  external _RID_DEVICE_INFO__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _RID_DEVICE_INFO__Anonymous_e__Union extends Union {
  external RID_DEVICE_INFO_MOUSE mouse;

  external RID_DEVICE_INFO_KEYBOARD keyboard;

  external RID_DEVICE_INFO_HID hid;
}

extension RID_DEVICE_INFO_Extension on RID_DEVICE_INFO {
  RID_DEVICE_INFO_MOUSE get mouse => this.Anonymous.mouse;
  set mouse(RID_DEVICE_INFO_MOUSE value) => this.Anonymous.mouse = value;

  RID_DEVICE_INFO_KEYBOARD get keyboard => this.Anonymous.keyboard;
  set keyboard(RID_DEVICE_INFO_KEYBOARD value) =>
      this.Anonymous.keyboard = value;

  RID_DEVICE_INFO_HID get hid => this.Anonymous.hid;
  set hid(RID_DEVICE_INFO_HID value) => this.Anonymous.hid = value;
}

/// {@category Struct}
class RID_DEVICE_INFO_HID extends Struct {
  @Uint32()
  external int dwVendorId;

  @Uint32()
  external int dwProductId;

  @Uint32()
  external int dwVersionNumber;

  @Uint16()
  external int usUsagePage;

  @Uint16()
  external int usUsage;
}

/// {@category Struct}
class RID_DEVICE_INFO_KEYBOARD extends Struct {
  @Uint32()
  external int dwType;

  @Uint32()
  external int dwSubType;

  @Uint32()
  external int dwKeyboardMode;

  @Uint32()
  external int dwNumberOfFunctionKeys;

  @Uint32()
  external int dwNumberOfIndicators;

  @Uint32()
  external int dwNumberOfKeysTotal;
}

/// {@category Struct}
class RID_DEVICE_INFO_MOUSE extends Struct {
  @Uint32()
  external int dwId;

  @Uint32()
  external int dwNumberOfButtons;

  @Uint32()
  external int dwSampleRate;

  @Int32()
  external int fHasHorizontalWheel;
}
