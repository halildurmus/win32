// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Tests that Win32 structs are the right size.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

@TestOn('windows')

import 'dart:ffi';

import 'package:test/test.dart';
import 'package:win32/win32.dart';

void main() {
  test('Struct WNDCLASS is the right size', () {
    if (sizeOf<IntPtr>() == 8) {
      expect(sizeOf<WNDCLASS>(), equals(72));
    }
    else {
      expect(sizeOf<WNDCLASS>(), equals(40));
    }
  });
  test('Struct SYSTEM_INFO is the right size', () {
    if (sizeOf<IntPtr>() == 8) {
      expect(sizeOf<SYSTEM_INFO>(), equals(48));
    }
    else {
      expect(sizeOf<SYSTEM_INFO>(), equals(36));
    }
  });
  test('Struct PROCESS_INFORMATION is the right size', () {
    if (sizeOf<IntPtr>() == 8) {
      expect(sizeOf<PROCESS_INFORMATION>(), equals(24));
    }
    else {
      expect(sizeOf<PROCESS_INFORMATION>(), equals(16));
    }
  });
  test('Struct STARTUPINFO is the right size', () {
    if (sizeOf<IntPtr>() == 8) {
      expect(sizeOf<STARTUPINFO>(), equals(104));
    }
    else {
      expect(sizeOf<STARTUPINFO>(), equals(68));
    }
  });
  test('Struct BIND_OPTS is the right size', () {
    if (sizeOf<IntPtr>() == 8) {
      expect(sizeOf<BIND_OPTS>(), equals(16));
    }
    else {
      expect(sizeOf<BIND_OPTS>(), equals(16));
    }
  });
  test('Struct SYSTEM_POWER_STATUS is the right size', () {
    if (sizeOf<IntPtr>() == 8) {
      expect(sizeOf<SYSTEM_POWER_STATUS>(), equals(12));
    }
    else {
      expect(sizeOf<SYSTEM_POWER_STATUS>(), equals(12));
    }
  });
  test('Struct SYSTEM_BATTERY_STATE is the right size', () {
    if (sizeOf<IntPtr>() == 8) {
      expect(sizeOf<SYSTEM_BATTERY_STATE>(), equals(32));
    }
    else {
      expect(sizeOf<SYSTEM_BATTERY_STATE>(), equals(32));
    }
  });
  test('Struct STARTUPINFOEX is the right size', () {
    if (sizeOf<IntPtr>() == 8) {
      expect(sizeOf<STARTUPINFOEX>(), equals(112));
    }
    else {
      expect(sizeOf<STARTUPINFOEX>(), equals(72));
    }
  });
  test('Struct SECURITY_ATTRIBUTES is the right size', () {
    if (sizeOf<IntPtr>() == 8) {
      expect(sizeOf<SECURITY_ATTRIBUTES>(), equals(24));
    }
    else {
      expect(sizeOf<SECURITY_ATTRIBUTES>(), equals(12));
    }
  });
  test('Struct SECURITY_DESCRIPTOR is the right size', () {
    if (sizeOf<IntPtr>() == 8) {
      expect(sizeOf<SECURITY_DESCRIPTOR>(), equals(40));
    }
    else {
      expect(sizeOf<SECURITY_DESCRIPTOR>(), equals(20));
    }
  });
  test('Struct SOLE_AUTHENTICATION_SERVICE is the right size', () {
    if (sizeOf<IntPtr>() == 8) {
      expect(sizeOf<SOLE_AUTHENTICATION_SERVICE>(), equals(24));
    }
    else {
      expect(sizeOf<SOLE_AUTHENTICATION_SERVICE>(), equals(16));
    }
  });
  test('Struct VARIANT is the right size', () {
    if (sizeOf<IntPtr>() == 8) {
      expect(sizeOf<VARIANT>(), equals(24));
    }
    else {
      expect(sizeOf<VARIANT>(), equals(16));
    }
  });
  test('Struct COMDLG_FILTERSPEC is the right size', () {
    if (sizeOf<IntPtr>() == 8) {
      expect(sizeOf<COMDLG_FILTERSPEC>(), equals(16));
    }
    else {
      expect(sizeOf<COMDLG_FILTERSPEC>(), equals(8));
    }
  });
  test('Struct ACCEL is the right size', () {
    if (sizeOf<IntPtr>() == 8) {
      expect(sizeOf<ACCEL>(), equals(6));
    }
    else {
      expect(sizeOf<ACCEL>(), equals(6));
    }
  });
  test('Struct MONITORINFO is the right size', () {
    if (sizeOf<IntPtr>() == 8) {
      expect(sizeOf<MONITORINFO>(), equals(40));
    }
    else {
      expect(sizeOf<MONITORINFO>(), equals(40));
    }
  });
  test('Struct CHOOSECOLOR is the right size', () {
    if (sizeOf<IntPtr>() == 8) {
      expect(sizeOf<CHOOSECOLOR>(), equals(72));
    }
    else {
      expect(sizeOf<CHOOSECOLOR>(), equals(36));
    }
  });
  test('Struct FINDREPLACE is the right size', () {
    if (sizeOf<IntPtr>() == 8) {
      expect(sizeOf<FINDREPLACE>(), equals(80));
    }
    else {
      expect(sizeOf<FINDREPLACE>(), equals(40));
    }
  });
  test('Struct CHOOSEFONT is the right size', () {
    if (sizeOf<IntPtr>() == 8) {
      expect(sizeOf<CHOOSEFONT>(), equals(104));
    }
    else {
      expect(sizeOf<CHOOSEFONT>(), equals(60));
    }
  });
  test('Struct OPENFILENAME is the right size', () {
    if (sizeOf<IntPtr>() == 8) {
      expect(sizeOf<OPENFILENAME>(), equals(152));
    }
    else {
      expect(sizeOf<OPENFILENAME>(), equals(88));
    }
  });
  test('Struct LOGFONT is the right size', () {
    if (sizeOf<IntPtr>() == 8) {
      expect(sizeOf<LOGFONT>(), equals(60));
    }
    else {
      expect(sizeOf<LOGFONT>(), equals(60));
    }
  }, skip: 'This struct is known to have an incorrect sizeOf.');
  test('Struct ENUMLOGFONTEX is the right size', () {
    if (sizeOf<IntPtr>() == 8) {
      expect(sizeOf<ENUMLOGFONTEX>(), equals(188));
    }
    else {
      expect(sizeOf<ENUMLOGFONTEX>(), equals(188));
    }
  }, skip: 'This struct is known to have an incorrect sizeOf.');
  test('Struct CREATESTRUCT is the right size', () {
    if (sizeOf<IntPtr>() == 8) {
      expect(sizeOf<CREATESTRUCT>(), equals(80));
    }
    else {
      expect(sizeOf<CREATESTRUCT>(), equals(48));
    }
  });
  test('Struct MENUINFO is the right size', () {
    if (sizeOf<IntPtr>() == 8) {
      expect(sizeOf<MENUINFO>(), equals(40));
    }
    else {
      expect(sizeOf<MENUINFO>(), equals(28));
    }
  });
  test('Struct MENUITEMINFO is the right size', () {
    if (sizeOf<IntPtr>() == 8) {
      expect(sizeOf<MENUITEMINFO>(), equals(80));
    }
    else {
      expect(sizeOf<MENUITEMINFO>(), equals(48));
    }
  });
  test('Struct MSG is the right size', () {
    if (sizeOf<IntPtr>() == 8) {
      expect(sizeOf<MSG>(), equals(48));
    }
    else {
      expect(sizeOf<MSG>(), equals(28));
    }
  });
  test('Struct SIZE is the right size', () {
    if (sizeOf<IntPtr>() == 8) {
      expect(sizeOf<SIZE>(), equals(8));
    }
    else {
      expect(sizeOf<SIZE>(), equals(8));
    }
  });
  test('Struct MINMAXINFO is the right size', () {
    if (sizeOf<IntPtr>() == 8) {
      expect(sizeOf<MINMAXINFO>(), equals(40));
    }
    else {
      expect(sizeOf<MINMAXINFO>(), equals(40));
    }
  });
  test('Struct POINT is the right size', () {
    if (sizeOf<IntPtr>() == 8) {
      expect(sizeOf<POINT>(), equals(8));
    }
    else {
      expect(sizeOf<POINT>(), equals(8));
    }
  });
  test('Struct PAINTSTRUCT is the right size', () {
    if (sizeOf<IntPtr>() == 8) {
      expect(sizeOf<PAINTSTRUCT>(), equals(72));
    }
    else {
      expect(sizeOf<PAINTSTRUCT>(), equals(64));
    }
  });
  test('Struct RECT is the right size', () {
    if (sizeOf<IntPtr>() == 8) {
      expect(sizeOf<RECT>(), equals(16));
    }
    else {
      expect(sizeOf<RECT>(), equals(16));
    }
  });
  test('Struct MOUSEINPUT is the right size', () {
    if (sizeOf<IntPtr>() == 8) {
      expect(sizeOf<MOUSEINPUT>(), equals(32));
    }
    else {
      expect(sizeOf<MOUSEINPUT>(), equals(24));
    }
  }, skip: 'This struct is known to have an incorrect sizeOf.');
  test('Struct KEYBDINPUT is the right size', () {
    if (sizeOf<IntPtr>() == 8) {
      expect(sizeOf<KEYBDINPUT>(), equals(24));
    }
    else {
      expect(sizeOf<KEYBDINPUT>(), equals(16));
    }
  }, skip: 'This struct is known to have an incorrect sizeOf.');
  test('Struct HARDWAREINPUT is the right size', () {
    if (sizeOf<IntPtr>() == 8) {
      expect(sizeOf<HARDWAREINPUT>(), equals(8));
    }
    else {
      expect(sizeOf<HARDWAREINPUT>(), equals(8));
    }
  }, skip: 'This struct is known to have an incorrect sizeOf.');
  test('Struct TEXTMETRIC is the right size', () {
    if (sizeOf<IntPtr>() == 8) {
      expect(sizeOf<TEXTMETRIC>(), equals(56));
    }
    else {
      expect(sizeOf<TEXTMETRIC>(), equals(56));
    }
  }, skip: 'This struct is known to have an incorrect sizeOf.');
  test('Struct SCROLLINFO is the right size', () {
    if (sizeOf<IntPtr>() == 8) {
      expect(sizeOf<SCROLLINFO>(), equals(28));
    }
    else {
      expect(sizeOf<SCROLLINFO>(), equals(28));
    }
  });
  test('Struct SHELLEXECUTEINFO is the right size', () {
    if (sizeOf<IntPtr>() == 8) {
      expect(sizeOf<SHELLEXECUTEINFO>(), equals(112));
    }
    else {
      expect(sizeOf<SHELLEXECUTEINFO>(), equals(60));
    }
  });
  test('Struct SHQUERYRBINFO is the right size', () {
    if (sizeOf<IntPtr>() == 8) {
      expect(sizeOf<SHQUERYRBINFO>(), equals(24));
    }
    else {
      expect(sizeOf<SHQUERYRBINFO>(), equals(20));
    }
  });
  test('Struct GUID is the right size', () {
    if (sizeOf<IntPtr>() == 8) {
      expect(sizeOf<GUID>(), equals(16));
    }
    else {
      expect(sizeOf<GUID>(), equals(16));
    }
  });
  test('Struct CREDENTIAL_ATTRIBUTE is the right size', () {
    if (sizeOf<IntPtr>() == 8) {
      expect(sizeOf<CREDENTIAL_ATTRIBUTE>(), equals(24));
    }
    else {
      expect(sizeOf<CREDENTIAL_ATTRIBUTE>(), equals(16));
    }
  });
  test('Struct CREDENTIAL is the right size', () {
    if (sizeOf<IntPtr>() == 8) {
      expect(sizeOf<CREDENTIAL>(), equals(80));
    }
    else {
      expect(sizeOf<CREDENTIAL>(), equals(52));
    }
  });
  test('Struct BITMAPINFO is the right size', () {
    if (sizeOf<IntPtr>() == 8) {
      expect(sizeOf<BITMAPINFO>(), equals(44));
    }
    else {
      expect(sizeOf<BITMAPINFO>(), equals(44));
    }
  });
  test('Struct FILETIME is the right size', () {
    if (sizeOf<IntPtr>() == 8) {
      expect(sizeOf<FILETIME>(), equals(8));
    }
    else {
      expect(sizeOf<FILETIME>(), equals(8));
    }
  });
  test('Struct KNOWNFOLDER_DEFINITION is the right size', () {
    if (sizeOf<IntPtr>() == 8) {
      expect(sizeOf<KNOWNFOLDER_DEFINITION>(), equals(112));
    }
    else {
      expect(sizeOf<KNOWNFOLDER_DEFINITION>(), equals(76));
    }
  });
  test('Struct SHITEMID is the right size', () {
    if (sizeOf<IntPtr>() == 8) {
      expect(sizeOf<SHITEMID>(), equals(3));
    }
    else {
      expect(sizeOf<SHITEMID>(), equals(3));
    }
  }, skip: 'This struct is known to have an incorrect sizeOf.');
  test('Struct DISPPARAMS is the right size', () {
    if (sizeOf<IntPtr>() == 8) {
      expect(sizeOf<DISPPARAMS>(), equals(24));
    }
    else {
      expect(sizeOf<DISPPARAMS>(), equals(16));
    }
  });
  test('Struct CONSOLE_CURSOR_INFO is the right size', () {
    if (sizeOf<IntPtr>() == 8) {
      expect(sizeOf<CONSOLE_CURSOR_INFO>(), equals(8));
    }
    else {
      expect(sizeOf<CONSOLE_CURSOR_INFO>(), equals(8));
    }
  });
  test('Struct CONSOLE_SCREEN_BUFFER_INFO is the right size', () {
    if (sizeOf<IntPtr>() == 8) {
      expect(sizeOf<CONSOLE_SCREEN_BUFFER_INFO>(), equals(22));
    }
    else {
      expect(sizeOf<CONSOLE_SCREEN_BUFFER_INFO>(), equals(22));
    }
  });
  test('Struct CONSOLE_SELECTION_INFO is the right size', () {
    if (sizeOf<IntPtr>() == 8) {
      expect(sizeOf<CONSOLE_SELECTION_INFO>(), equals(16));
    }
    else {
      expect(sizeOf<CONSOLE_SELECTION_INFO>(), equals(16));
    }
  });
  test('Struct COORD is the right size', () {
    if (sizeOf<IntPtr>() == 8) {
      expect(sizeOf<COORD>(), equals(4));
    }
    else {
      expect(sizeOf<COORD>(), equals(4));
    }
  });
  test('Struct CHAR_INFO is the right size', () {
    if (sizeOf<IntPtr>() == 8) {
      expect(sizeOf<CHAR_INFO>(), equals(4));
    }
    else {
      expect(sizeOf<CHAR_INFO>(), equals(4));
    }
  });
  test('Struct SMALL_RECT is the right size', () {
    if (sizeOf<IntPtr>() == 8) {
      expect(sizeOf<SMALL_RECT>(), equals(8));
    }
    else {
      expect(sizeOf<SMALL_RECT>(), equals(8));
    }
  });
  test('Struct INITCOMMONCONTROLSEX is the right size', () {
    if (sizeOf<IntPtr>() == 8) {
      expect(sizeOf<INITCOMMONCONTROLSEX>(), equals(8));
    }
    else {
      expect(sizeOf<INITCOMMONCONTROLSEX>(), equals(8));
    }
  });
  test('Struct TASKDIALOGCONFIG is the right size', () {
    if (sizeOf<IntPtr>() == 8) {
      expect(sizeOf<TASKDIALOGCONFIG>(), equals(160));
    }
    else {
      expect(sizeOf<TASKDIALOGCONFIG>(), equals(96));
    }
  }, skip: 'This struct is known to have an incorrect sizeOf.');
  test('Struct TASKDIALOG_BUTTON is the right size', () {
    if (sizeOf<IntPtr>() == 8) {
      expect(sizeOf<TASKDIALOG_BUTTON>(), equals(12));
    }
    else {
      expect(sizeOf<TASKDIALOG_BUTTON>(), equals(8));
    }
  }, skip: 'This struct is known to have an incorrect sizeOf.');
  test('Struct DLLVERSIONINFO is the right size', () {
    if (sizeOf<IntPtr>() == 8) {
      expect(sizeOf<DLLVERSIONINFO>(), equals(20));
    }
    else {
      expect(sizeOf<DLLVERSIONINFO>(), equals(20));
    }
  });
  test('Struct OSVERSIONINFO is the right size', () {
    if (sizeOf<IntPtr>() == 8) {
      expect(sizeOf<OSVERSIONINFO>(), equals(148));
    }
    else {
      expect(sizeOf<OSVERSIONINFO>(), equals(148));
    }
  }, skip: 'This struct is known to have an incorrect sizeOf.');
  test('Struct BLUETOOTH_DEVICE_INFO is the right size', () {
    if (sizeOf<IntPtr>() == 8) {
      expect(sizeOf<BLUETOOTH_DEVICE_INFO>(), equals(560));
    }
    else {
      expect(sizeOf<BLUETOOTH_DEVICE_INFO>(), equals(560));
    }
  }, skip: 'This struct is known to have an incorrect sizeOf.');
  test('Struct BLUETOOTH_DEVICE_SEARCH_PARAMS is the right size', () {
    if (sizeOf<IntPtr>() == 8) {
      expect(sizeOf<BLUETOOTH_DEVICE_SEARCH_PARAMS>(), equals(40));
    }
    else {
      expect(sizeOf<BLUETOOTH_DEVICE_SEARCH_PARAMS>(), equals(32));
    }
  });
  test('Struct BLUETOOTH_FIND_RADIO_PARAMS is the right size', () {
    if (sizeOf<IntPtr>() == 8) {
      expect(sizeOf<BLUETOOTH_FIND_RADIO_PARAMS>(), equals(4));
    }
    else {
      expect(sizeOf<BLUETOOTH_FIND_RADIO_PARAMS>(), equals(4));
    }
  });
  test('Struct BLUETOOTH_PIN_INFO is the right size', () {
    if (sizeOf<IntPtr>() == 8) {
      expect(sizeOf<BLUETOOTH_PIN_INFO>(), equals(17));
    }
    else {
      expect(sizeOf<BLUETOOTH_PIN_INFO>(), equals(17));
    }
  }, skip: 'This struct is known to have an incorrect sizeOf.');
  test('Struct COR_FIELD_OFFSET is the right size', () {
    if (sizeOf<IntPtr>() == 8) {
      expect(sizeOf<COR_FIELD_OFFSET>(), equals(8));
    }
    else {
      expect(sizeOf<COR_FIELD_OFFSET>(), equals(8));
    }
  });
  test('Struct VS_FIXEDFILEINFO is the right size', () {
    if (sizeOf<IntPtr>() == 8) {
      expect(sizeOf<VS_FIXEDFILEINFO>(), equals(52));
    }
    else {
      expect(sizeOf<VS_FIXEDFILEINFO>(), equals(52));
    }
  });
  test('Struct MCI_OPEN_PARMS is the right size', () {
    if (sizeOf<IntPtr>() == 8) {
      expect(sizeOf<MCI_OPEN_PARMS>(), equals(36));
    }
    else {
      expect(sizeOf<MCI_OPEN_PARMS>(), equals(20));
    }
  }, skip: 'This struct is known to have an incorrect sizeOf.');
  test('Struct MCI_PLAY_PARMS is the right size', () {
    if (sizeOf<IntPtr>() == 8) {
      expect(sizeOf<MCI_PLAY_PARMS>(), equals(16));
    }
    else {
      expect(sizeOf<MCI_PLAY_PARMS>(), equals(12));
    }
  });
  test('Struct MCI_SEEK_PARMS is the right size', () {
    if (sizeOf<IntPtr>() == 8) {
      expect(sizeOf<MCI_SEEK_PARMS>(), equals(12));
    }
    else {
      expect(sizeOf<MCI_SEEK_PARMS>(), equals(8));
    }
  }, skip: 'This struct is known to have an incorrect sizeOf.');
  test('Struct MCI_STATUS_PARMS is the right size', () {
    if (sizeOf<IntPtr>() == 8) {
      expect(sizeOf<MCI_STATUS_PARMS>(), equals(24));
    }
    else {
      expect(sizeOf<MCI_STATUS_PARMS>(), equals(16));
    }
  });
  test('Struct EXCEPINFO is the right size', () {
    if (sizeOf<IntPtr>() == 8) {
      expect(sizeOf<EXCEPINFO>(), equals(64));
    }
    else {
      expect(sizeOf<EXCEPINFO>(), equals(32));
    }
  }, skip: 'This struct is known to have an incorrect sizeOf.');
  test('Struct PROPERTYKEY is the right size', () {
    if (sizeOf<IntPtr>() == 8) {
      expect(sizeOf<PROPERTYKEY>(), equals(20));
    }
    else {
      expect(sizeOf<PROPERTYKEY>(), equals(20));
    }
  }, skip: 'This struct is known to have an incorrect sizeOf.');
  test('Struct PROPVARIANT is the right size', () {
    if (sizeOf<IntPtr>() == 8) {
      expect(sizeOf<PROPVARIANT>(), equals(24));
    }
    else {
      expect(sizeOf<PROPVARIANT>(), equals(16));
    }
  }, skip: 'This struct is known to have an incorrect sizeOf.');
  test('Struct SAFEARRAY is the right size', () {
    if (sizeOf<IntPtr>() == 8) {
      expect(sizeOf<SAFEARRAY>(), equals(32));
    }
    else {
      expect(sizeOf<SAFEARRAY>(), equals(24));
    }
  }, skip: 'This struct is known to have an incorrect sizeOf.');
  test('Struct CLSID is the right size', () {
    if (sizeOf<IntPtr>() == 8) {
      expect(sizeOf<CLSID>(), equals(16));
    }
    else {
      expect(sizeOf<CLSID>(), equals(16));
    }
  }, skip: 'This struct is known to have an incorrect sizeOf.');
  test('Struct STATSTG is the right size', () {
    if (sizeOf<IntPtr>() == 8) {
      expect(sizeOf<STATSTG>(), equals(80));
    }
    else {
      expect(sizeOf<STATSTG>(), equals(72));
    }
  }, skip: 'This struct is known to have an incorrect sizeOf.');
  test('Struct NLM_SIMULATED_PROFILE_INFO is the right size', () {
    if (sizeOf<IntPtr>() == 8) {
      expect(sizeOf<NLM_SIMULATED_PROFILE_INFO>(), equals(524));
    }
    else {
      expect(sizeOf<NLM_SIMULATED_PROFILE_INFO>(), equals(524));
    }
  }, skip: 'This struct is known to have an incorrect sizeOf.');
}