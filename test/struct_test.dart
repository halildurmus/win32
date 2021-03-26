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
  final is64bitOS = sizeOf<IntPtr>() == 8;
  test('Struct WNDCLASS is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<WNDCLASS>(), equals(72));
    } else {
      expect(sizeOf<WNDCLASS>(), equals(40));
    }
  });
  test('Struct SYSTEM_INFO is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<SYSTEM_INFO>(), equals(48));
    } else {
      expect(sizeOf<SYSTEM_INFO>(), equals(36));
    }
  });
  test('Struct PROCESS_INFORMATION is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<PROCESS_INFORMATION>(), equals(24));
    } else {
      expect(sizeOf<PROCESS_INFORMATION>(), equals(16));
    }
  });
  test('Struct STARTUPINFO is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<STARTUPINFO>(), equals(104));
    } else {
      expect(sizeOf<STARTUPINFO>(), equals(68));
    }
  });
  test('Struct BIND_OPTS is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<BIND_OPTS>(), equals(16));
    } else {
      expect(sizeOf<BIND_OPTS>(), equals(16));
    }
  });
  test('Struct VALENT is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<VALENT>(), equals(32));
    } else {
      expect(sizeOf<VALENT>(), equals(16));
    }
  });
  test('Struct POWERBROADCAST_SETTING is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<POWERBROADCAST_SETTING>(), equals(24));
    } else {
      expect(sizeOf<POWERBROADCAST_SETTING>(), equals(24));
    }
  });
  test('Struct SYSTEM_POWER_STATUS is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<SYSTEM_POWER_STATUS>(), equals(12));
    } else {
      expect(sizeOf<SYSTEM_POWER_STATUS>(), equals(12));
    }
  });
  test('Struct SYSTEM_BATTERY_STATE is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<SYSTEM_BATTERY_STATE>(), equals(32));
    } else {
      expect(sizeOf<SYSTEM_BATTERY_STATE>(), equals(32));
    }
  });
  test('Struct STARTUPINFOEX is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<STARTUPINFOEX>(), equals(112));
    } else {
      expect(sizeOf<STARTUPINFOEX>(), equals(72));
    }
  });
  test('Struct SECURITY_ATTRIBUTES is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<SECURITY_ATTRIBUTES>(), equals(24));
    } else {
      expect(sizeOf<SECURITY_ATTRIBUTES>(), equals(12));
    }
  });
  test('Struct SECURITY_DESCRIPTOR is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<SECURITY_DESCRIPTOR>(), equals(40));
    } else {
      expect(sizeOf<SECURITY_DESCRIPTOR>(), equals(20));
    }
  });
  test('Struct SOLE_AUTHENTICATION_SERVICE is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<SOLE_AUTHENTICATION_SERVICE>(), equals(24));
    } else {
      expect(sizeOf<SOLE_AUTHENTICATION_SERVICE>(), equals(16));
    }
  });
  test('Struct VARIANT is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<VARIANT>(), equals(24));
    } else {
      expect(sizeOf<VARIANT>(), equals(16));
    }
  });
  test('Struct COMDLG_FILTERSPEC is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<COMDLG_FILTERSPEC>(), equals(16));
    } else {
      expect(sizeOf<COMDLG_FILTERSPEC>(), equals(8));
    }
  });
  test('Struct ACCEL is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<ACCEL>(), equals(6));
    } else {
      expect(sizeOf<ACCEL>(), equals(6));
    }
  });
  test('Struct LASTINPUTINFO is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<LASTINPUTINFO>(), equals(8));
    } else {
      expect(sizeOf<LASTINPUTINFO>(), equals(8));
    }
  });
  test('Struct MOUSEMOVEPOINT is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<MOUSEMOVEPOINT>(), equals(24));
    } else {
      expect(sizeOf<MOUSEMOVEPOINT>(), equals(16));
    }
  });
  test('Struct MONITORINFO is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<MONITORINFO>(), equals(40));
    } else {
      expect(sizeOf<MONITORINFO>(), equals(40));
    }
  });
  test('Struct PHYSICAL_MONITOR is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<PHYSICAL_MONITOR>(), equals(264));
    } else {
      expect(sizeOf<PHYSICAL_MONITOR>(), equals(260));
    }
  });
  test('Struct CHOOSECOLOR is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<CHOOSECOLOR>(), equals(72));
    } else {
      expect(sizeOf<CHOOSECOLOR>(), equals(36));
    }
  });
  test('Struct FINDREPLACE is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<FINDREPLACE>(), equals(80));
    } else {
      expect(sizeOf<FINDREPLACE>(), equals(40));
    }
  });
  test('Struct CHOOSEFONT is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<CHOOSEFONT>(), equals(104));
    } else {
      expect(sizeOf<CHOOSEFONT>(), equals(60));
    }
  });
  test('Struct OPENFILENAME is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<OPENFILENAME>(), equals(152));
    } else {
      expect(sizeOf<OPENFILENAME>(), equals(88));
    }
  });
  test('Struct LOGFONT is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<LOGFONT>(), equals(92));
    } else {
      expect(sizeOf<LOGFONT>(), equals(92));
    }
  });
  test('Struct ENUMLOGFONTEX is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<ENUMLOGFONTEX>(), equals(348));
    } else {
      expect(sizeOf<ENUMLOGFONTEX>(), equals(348));
    }
  });
  test('Struct CREATESTRUCT is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<CREATESTRUCT>(), equals(80));
    } else {
      expect(sizeOf<CREATESTRUCT>(), equals(48));
    }
  });
  test('Struct MENUINFO is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<MENUINFO>(), equals(40));
    } else {
      expect(sizeOf<MENUINFO>(), equals(28));
    }
  });
  test('Struct MENUITEMINFO is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<MENUITEMINFO>(), equals(80));
    } else {
      expect(sizeOf<MENUITEMINFO>(), equals(48));
    }
  });
  test('Struct MSG is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<MSG>(), equals(48));
    } else {
      expect(sizeOf<MSG>(), equals(28));
    }
  });
  test('Struct SIZE is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<SIZE>(), equals(8));
    } else {
      expect(sizeOf<SIZE>(), equals(8));
    }
  });
  test('Struct MINMAXINFO is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<MINMAXINFO>(), equals(40));
    } else {
      expect(sizeOf<MINMAXINFO>(), equals(40));
    }
  });
  test('Struct POINT is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<POINT>(), equals(8));
    } else {
      expect(sizeOf<POINT>(), equals(8));
    }
  });
  test('Struct PAINTSTRUCT is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<PAINTSTRUCT>(), equals(72));
    } else {
      expect(sizeOf<PAINTSTRUCT>(), equals(64));
    }
  });
  test('Struct RECT is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<RECT>(), equals(16));
    } else {
      expect(sizeOf<RECT>(), equals(16));
    }
  });
  test('Struct INPUT is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<INPUT>(), equals(40));
    } else {
      expect(sizeOf<INPUT>(), equals(28));
    }
  });
  test('Struct TEXTMETRIC is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<TEXTMETRIC>(), equals(60));
    } else {
      expect(sizeOf<TEXTMETRIC>(), equals(60));
    }
  });
  test('Struct SCROLLINFO is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<SCROLLINFO>(), equals(28));
    } else {
      expect(sizeOf<SCROLLINFO>(), equals(28));
    }
  });
  test('Struct SHELLEXECUTEINFO is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<SHELLEXECUTEINFO>(), equals(112));
    } else {
      expect(sizeOf<SHELLEXECUTEINFO>(), equals(60));
    }
  });
  test('Struct SHQUERYRBINFO is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<SHQUERYRBINFO>(), equals(24));
    } else {
      expect(sizeOf<SHQUERYRBINFO>(), equals(20));
    }
  });
  test('Struct GUID is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<GUID>(), equals(16));
    } else {
      expect(sizeOf<GUID>(), equals(16));
    }
  });
  test('Struct CREDENTIAL_ATTRIBUTE is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<CREDENTIAL_ATTRIBUTE>(), equals(24));
    } else {
      expect(sizeOf<CREDENTIAL_ATTRIBUTE>(), equals(16));
    }
  });
  test('Struct CREDENTIAL is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<CREDENTIAL>(), equals(80));
    } else {
      expect(sizeOf<CREDENTIAL>(), equals(52));
    }
  });
  test('Struct WINDOWINFO is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<WINDOWINFO>(), equals(60));
    } else {
      expect(sizeOf<WINDOWINFO>(), equals(60));
    }
  });
  test('Struct BITMAPINFO is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<BITMAPINFO>(), equals(44));
    } else {
      expect(sizeOf<BITMAPINFO>(), equals(44));
    }
  });
  test('Struct RGBQUAD is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<RGBQUAD>(), equals(4));
    } else {
      expect(sizeOf<RGBQUAD>(), equals(4));
    }
  });
  test('Struct BITMAP is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<BITMAP>(), equals(32));
    } else {
      expect(sizeOf<BITMAP>(), equals(24));
    }
  });
  test('Struct BITMAPFILEHEADER is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<BITMAPFILEHEADER>(), equals(14));
    } else {
      expect(sizeOf<BITMAPFILEHEADER>(), equals(14));
    }
  });
  test('Struct BITMAPINFOHEADER is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<BITMAPINFOHEADER>(), equals(40));
    } else {
      expect(sizeOf<BITMAPINFOHEADER>(), equals(40));
    }
  });
  test('Struct PALETTEENTRY is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<PALETTEENTRY>(), equals(4));
    } else {
      expect(sizeOf<PALETTEENTRY>(), equals(4));
    }
  });
  test('Struct DRAWTEXTPARAMS is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<DRAWTEXTPARAMS>(), equals(20));
    } else {
      expect(sizeOf<DRAWTEXTPARAMS>(), equals(20));
    }
  });
  test('Struct FILETIME is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<FILETIME>(), equals(8));
    } else {
      expect(sizeOf<FILETIME>(), equals(8));
    }
  });
  test('Struct KNOWNFOLDER_DEFINITION is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<KNOWNFOLDER_DEFINITION>(), equals(112));
    } else {
      expect(sizeOf<KNOWNFOLDER_DEFINITION>(), equals(76));
    }
  });
  test('Struct SHITEMID is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<SHITEMID>(), equals(3));
    } else {
      expect(sizeOf<SHITEMID>(), equals(3));
    }
  });
  test('Struct DISPPARAMS is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<DISPPARAMS>(), equals(24));
    } else {
      expect(sizeOf<DISPPARAMS>(), equals(16));
    }
  });
  test('Struct CONSOLE_CURSOR_INFO is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<CONSOLE_CURSOR_INFO>(), equals(8));
    } else {
      expect(sizeOf<CONSOLE_CURSOR_INFO>(), equals(8));
    }
  });
  test('Struct CONSOLE_SCREEN_BUFFER_INFO is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<CONSOLE_SCREEN_BUFFER_INFO>(), equals(22));
    } else {
      expect(sizeOf<CONSOLE_SCREEN_BUFFER_INFO>(), equals(22));
    }
  });
  test('Struct CONSOLE_SELECTION_INFO is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<CONSOLE_SELECTION_INFO>(), equals(16));
    } else {
      expect(sizeOf<CONSOLE_SELECTION_INFO>(), equals(16));
    }
  });
  test('Struct COORD is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<COORD>(), equals(4));
    } else {
      expect(sizeOf<COORD>(), equals(4));
    }
  });
  test('Struct CHAR_INFO is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<CHAR_INFO>(), equals(4));
    } else {
      expect(sizeOf<CHAR_INFO>(), equals(4));
    }
  });
  test('Struct SMALL_RECT is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<SMALL_RECT>(), equals(8));
    } else {
      expect(sizeOf<SMALL_RECT>(), equals(8));
    }
  });
  test('Struct INITCOMMONCONTROLSEX is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<INITCOMMONCONTROLSEX>(), equals(8));
    } else {
      expect(sizeOf<INITCOMMONCONTROLSEX>(), equals(8));
    }
  });
  test('Struct DLGTEMPLATE is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<DLGTEMPLATE>(), equals(18));
    } else {
      expect(sizeOf<DLGTEMPLATE>(), equals(18));
    }
  });
  test('Struct DLGITEMTEMPLATE is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<DLGITEMTEMPLATE>(), equals(18));
    } else {
      expect(sizeOf<DLGITEMTEMPLATE>(), equals(18));
    }
  });
  test('Struct DLLVERSIONINFO is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<DLLVERSIONINFO>(), equals(20));
    } else {
      expect(sizeOf<DLLVERSIONINFO>(), equals(20));
    }
  });
  test('Struct OSVERSIONINFO is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<OSVERSIONINFO>(), equals(276));
    } else {
      expect(sizeOf<OSVERSIONINFO>(), equals(276));
    }
  });
  test('Struct SYSTEMTIME is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<SYSTEMTIME>(), equals(16));
    } else {
      expect(sizeOf<SYSTEMTIME>(), equals(16));
    }
  });
  test('Struct BLUETOOTH_AUTHENTICATION_CALLBACK_PARAMS is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<BLUETOOTH_AUTHENTICATION_CALLBACK_PARAMS>(), equals(576));
    } else {
      expect(sizeOf<BLUETOOTH_AUTHENTICATION_CALLBACK_PARAMS>(), equals(576));
    }
  });
  test('Struct BLUETOOTH_DEVICE_INFO is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<BLUETOOTH_DEVICE_INFO>(), equals(560));
    } else {
      expect(sizeOf<BLUETOOTH_DEVICE_INFO>(), equals(560));
    }
  });
  test('Struct BLUETOOTH_DEVICE_SEARCH_PARAMS is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<BLUETOOTH_DEVICE_SEARCH_PARAMS>(), equals(40));
    } else {
      expect(sizeOf<BLUETOOTH_DEVICE_SEARCH_PARAMS>(), equals(32));
    }
  });
  test('Struct BLUETOOTH_FIND_RADIO_PARAMS is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<BLUETOOTH_FIND_RADIO_PARAMS>(), equals(4));
    } else {
      expect(sizeOf<BLUETOOTH_FIND_RADIO_PARAMS>(), equals(4));
    }
  });
  test('Struct BLUETOOTH_ADDRESS is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<BLUETOOTH_ADDRESS>(), equals(8));
    } else {
      expect(sizeOf<BLUETOOTH_ADDRESS>(), equals(8));
    }
  });
  test('Struct BLUETOOTH_RADIO_INFO is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<BLUETOOTH_RADIO_INFO>(), equals(520));
    } else {
      expect(sizeOf<BLUETOOTH_RADIO_INFO>(), equals(520));
    }
  });
  test('Struct BLUETOOTH_PIN_INFO is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<BLUETOOTH_PIN_INFO>(), equals(17));
    } else {
      expect(sizeOf<BLUETOOTH_PIN_INFO>(), equals(17));
    }
  });
  test('Struct BLUETOOTH_OOB_DATA_INFO is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<BLUETOOTH_OOB_DATA_INFO>(), equals(32));
    } else {
      expect(sizeOf<BLUETOOTH_OOB_DATA_INFO>(), equals(32));
    }
  });
  test('Struct COR_FIELD_OFFSET is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<COR_FIELD_OFFSET>(), equals(8));
    } else {
      expect(sizeOf<COR_FIELD_OFFSET>(), equals(8));
    }
  });
  test('Struct VS_FIXEDFILEINFO is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<VS_FIXEDFILEINFO>(), equals(52));
    } else {
      expect(sizeOf<VS_FIXEDFILEINFO>(), equals(52));
    }
  });
  test('Struct MCI_OPEN_PARMS is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<MCI_OPEN_PARMS>(), equals(36));
    } else {
      expect(sizeOf<MCI_OPEN_PARMS>(), equals(20));
    }
  });
  test('Struct MCI_PLAY_PARMS is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<MCI_PLAY_PARMS>(), equals(16));
    } else {
      expect(sizeOf<MCI_PLAY_PARMS>(), equals(12));
    }
  });
  test('Struct MCI_SEEK_PARMS is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<MCI_SEEK_PARMS>(), equals(12));
    } else {
      expect(sizeOf<MCI_SEEK_PARMS>(), equals(8));
    }
  });
  test('Struct MCI_STATUS_PARMS is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<MCI_STATUS_PARMS>(), equals(24));
    } else {
      expect(sizeOf<MCI_STATUS_PARMS>(), equals(16));
    }
  });
  test('Struct LOGBRUSH is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<LOGBRUSH>(), equals(16));
    } else {
      expect(sizeOf<LOGBRUSH>(), equals(12));
    }
  });
  test('Struct OVERLAPPED is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<OVERLAPPED>(), equals(32));
    } else {
      expect(sizeOf<OVERLAPPED>(), equals(20));
    }
  });
  test('Struct ACTCTX is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<ACTCTX>(), equals(56));
    } else {
      expect(sizeOf<ACTCTX>(), equals(32));
    }
  });
  test('Struct WIN32_FIND_DATA is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<WIN32_FIND_DATA>(), equals(592));
    } else {
      expect(sizeOf<WIN32_FIND_DATA>(), equals(592));
    }
  });
  test('Struct WAVEOUTCAPS is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<WAVEOUTCAPS>(), equals(84));
    } else {
      expect(sizeOf<WAVEOUTCAPS>(), equals(84));
    }
  });
  test('Struct WAVEFORMATEX is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<WAVEFORMATEX>(), equals(18));
    } else {
      expect(sizeOf<WAVEFORMATEX>(), equals(18));
    }
  });
  test('Struct WAVEHDR is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<WAVEHDR>(), equals(48));
    } else {
      expect(sizeOf<WAVEHDR>(), equals(32));
    }
  });
  test('Struct MMTIME is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<MMTIME>(), equals(12));
    } else {
      expect(sizeOf<MMTIME>(), equals(12));
    }
  });
  test('Struct SAFEARRAY is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<SAFEARRAY>(), equals(32));
    } else {
      expect(sizeOf<SAFEARRAY>(), equals(24));
    }
  });
  test('Struct STATSTG is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<STATSTG>(), equals(80));
    } else {
      expect(sizeOf<STATSTG>(), equals(72));
    }
  });
  test('Struct NOTIFYICONDATA is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<NOTIFYICONDATA>(), equals(976));
    } else {
      expect(sizeOf<NOTIFYICONDATA>(), equals(956));
    }
  });
  test('Struct TPMPARAMS is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<TPMPARAMS>(), equals(20));
    } else {
      expect(sizeOf<TPMPARAMS>(), equals(20));
    }
  });
}
