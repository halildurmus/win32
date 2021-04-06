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
  test('Struct ACCEL is the right size', () {
    expect(sizeOf<ACCEL>(), equals(6));
  });
  test('Struct ACTCTX is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<ACTCTX>(), equals(56));
    } else {
      expect(sizeOf<ACTCTX>(), equals(32));
    }
  });
  test('Struct BIND_OPTS is the right size', () {
    expect(sizeOf<BIND_OPTS>(), equals(16));
  });
  test('Struct BITMAP is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<BITMAP>(), equals(32));
    } else {
      expect(sizeOf<BITMAP>(), equals(24));
    }
  });
  test('Struct BITMAPFILEHEADER is the right size', () {
    expect(sizeOf<BITMAPFILEHEADER>(), equals(14));
  });
  test('Struct BITMAPINFO is the right size', () {
    expect(sizeOf<BITMAPINFO>(), equals(44));
  });
  test('Struct BITMAPINFOHEADER is the right size', () {
    expect(sizeOf<BITMAPINFOHEADER>(), equals(40));
  });
  test('Struct BLENDFUNCTION is the right size', () {
    expect(sizeOf<BLENDFUNCTION>(), equals(4));
  });
  test('Struct BLUETOOTH_ADDRESS is the right size', () {
    expect(sizeOf<BLUETOOTH_ADDRESS>(), equals(8));
  });
  test('Struct BLUETOOTH_AUTHENTICATION_CALLBACK_PARAMS is the right size', () {
    expect(sizeOf<BLUETOOTH_AUTHENTICATION_CALLBACK_PARAMS>(), equals(576));
  });
  test('Struct BLUETOOTH_DEVICE_INFO is the right size', () {
    expect(sizeOf<BLUETOOTH_DEVICE_INFO>(), equals(560));
  });
  test('Struct BLUETOOTH_DEVICE_SEARCH_PARAMS is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<BLUETOOTH_DEVICE_SEARCH_PARAMS>(), equals(40));
    } else {
      expect(sizeOf<BLUETOOTH_DEVICE_SEARCH_PARAMS>(), equals(32));
    }
  });
  test('Struct BLUETOOTH_FIND_RADIO_PARAMS is the right size', () {
    expect(sizeOf<BLUETOOTH_FIND_RADIO_PARAMS>(), equals(4));
  });
  test('Struct BLUETOOTH_OOB_DATA_INFO is the right size', () {
    expect(sizeOf<BLUETOOTH_OOB_DATA_INFO>(), equals(32));
  });
  test('Struct BLUETOOTH_PIN_INFO is the right size', () {
    expect(sizeOf<BLUETOOTH_PIN_INFO>(), equals(17));
  });
  test('Struct BLUETOOTH_RADIO_INFO is the right size', () {
    expect(sizeOf<BLUETOOTH_RADIO_INFO>(), equals(520));
  });
  test('Struct CHAR_INFO is the right size', () {
    expect(sizeOf<CHAR_INFO>(), equals(4));
  });
  test('Struct CHOOSECOLOR is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<CHOOSECOLOR>(), equals(72));
    } else {
      expect(sizeOf<CHOOSECOLOR>(), equals(36));
    }
  });
  test('Struct CHOOSEFONT is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<CHOOSEFONT>(), equals(104));
    } else {
      expect(sizeOf<CHOOSEFONT>(), equals(60));
    }
  });
  test('Struct COLORADJUSTMENT is the right size', () {
    expect(sizeOf<COLORADJUSTMENT>(), equals(24));
  });
  test('Struct COMDLG_FILTERSPEC is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<COMDLG_FILTERSPEC>(), equals(16));
    } else {
      expect(sizeOf<COMDLG_FILTERSPEC>(), equals(8));
    }
  });
  test('Struct CONSOLE_CURSOR_INFO is the right size', () {
    expect(sizeOf<CONSOLE_CURSOR_INFO>(), equals(8));
  });
  test('Struct CONSOLE_SCREEN_BUFFER_INFO is the right size', () {
    expect(sizeOf<CONSOLE_SCREEN_BUFFER_INFO>(), equals(22));
  });
  test('Struct CONSOLE_SELECTION_INFO is the right size', () {
    expect(sizeOf<CONSOLE_SELECTION_INFO>(), equals(16));
  });
  test('Struct COORD is the right size', () {
    expect(sizeOf<COORD>(), equals(4));
  });
  test('Struct COR_FIELD_OFFSET is the right size', () {
    expect(sizeOf<COR_FIELD_OFFSET>(), equals(8));
  });
  test('Struct CREATESTRUCT is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<CREATESTRUCT>(), equals(80));
    } else {
      expect(sizeOf<CREATESTRUCT>(), equals(48));
    }
  });
  test('Struct CREDENTIAL is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<CREDENTIAL>(), equals(80));
    } else {
      expect(sizeOf<CREDENTIAL>(), equals(52));
    }
  });
  test('Struct CREDENTIAL_ATTRIBUTE is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<CREDENTIAL_ATTRIBUTE>(), equals(24));
    } else {
      expect(sizeOf<CREDENTIAL_ATTRIBUTE>(), equals(16));
    }
  });
  test('Struct DESIGNVECTOR is the right size', () {
    expect(sizeOf<DESIGNVECTOR>(), equals(72));
  });
  test('Struct DIBSECTION is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<DIBSECTION>(), equals(104));
    } else {
      expect(sizeOf<DIBSECTION>(), equals(84));
    }
  });
  test('Struct DISPPARAMS is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<DISPPARAMS>(), equals(24));
    } else {
      expect(sizeOf<DISPPARAMS>(), equals(16));
    }
  });
  test('Struct DLGITEMTEMPLATE is the right size', () {
    expect(sizeOf<DLGITEMTEMPLATE>(), equals(18));
  });
  test('Struct DLGTEMPLATE is the right size', () {
    expect(sizeOf<DLGTEMPLATE>(), equals(18));
  });
  test('Struct DLLVERSIONINFO is the right size', () {
    expect(sizeOf<DLLVERSIONINFO>(), equals(20));
  });
  test('Struct DRAWTEXTPARAMS is the right size', () {
    expect(sizeOf<DRAWTEXTPARAMS>(), equals(20));
  });
  test('Struct ENUMLOGFONTEX is the right size', () {
    expect(sizeOf<ENUMLOGFONTEX>(), equals(348));
  });
  test('Struct EXCEPINFO is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<EXCEPINFO>(), equals(64));
    } else {
      expect(sizeOf<EXCEPINFO>(), equals(32));
    }
  });
  test('Struct FILETIME is the right size', () {
    expect(sizeOf<FILETIME>(), equals(8));
  });
  test('Struct FINDREPLACE is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<FINDREPLACE>(), equals(80));
    } else {
      expect(sizeOf<FINDREPLACE>(), equals(40));
    }
  });
  test('Struct GUID is the right size', () {
    expect(sizeOf<GUID>(), equals(16));
  });
  test('Struct GUITHREADINFO is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<GUITHREADINFO>(), equals(72));
    } else {
      expect(sizeOf<GUITHREADINFO>(), equals(48));
    }
  });
  test('Struct IDLDESC is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<IDLDESC>(), equals(16));
    } else {
      expect(sizeOf<IDLDESC>(), equals(8));
    }
  });
  test('Struct INITCOMMONCONTROLSEX is the right size', () {
    expect(sizeOf<INITCOMMONCONTROLSEX>(), equals(8));
  });
  test('Struct INPUT is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<INPUT>(), equals(40));
    } else {
      expect(sizeOf<INPUT>(), equals(28));
    }
  });
  test('Struct KNOWNFOLDER_DEFINITION is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<KNOWNFOLDER_DEFINITION>(), equals(112));
    } else {
      expect(sizeOf<KNOWNFOLDER_DEFINITION>(), equals(76));
    }
  });
  test('Struct LASTINPUTINFO is the right size', () {
    expect(sizeOf<LASTINPUTINFO>(), equals(8));
  });
  test('Struct LOGBRUSH is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<LOGBRUSH>(), equals(16));
    } else {
      expect(sizeOf<LOGBRUSH>(), equals(12));
    }
  });
  test('Struct LOGFONT is the right size', () {
    expect(sizeOf<LOGFONT>(), equals(92));
  });
  test('Struct LOGPALETTE is the right size', () {
    expect(sizeOf<LOGPALETTE>(), equals(8));
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
  test('Struct METAFILEPICT is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<METAFILEPICT>(), equals(24));
    } else {
      expect(sizeOf<METAFILEPICT>(), equals(16));
    }
  });
  test('Struct MIDIEVENT is the right size', () {
    expect(sizeOf<MIDIEVENT>(), equals(16));
  });
  test('Struct MIDIHDR is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<MIDIHDR>(), equals(112));
    } else {
      expect(sizeOf<MIDIHDR>(), equals(64));
    }
  });
  test('Struct MIDIINCAPS is the right size', () {
    expect(sizeOf<MIDIINCAPS>(), equals(76));
  });
  test('Struct MIDIOUTCAPS is the right size', () {
    expect(sizeOf<MIDIOUTCAPS>(), equals(84));
  });
  test('Struct MIDIPROPTEMPO is the right size', () {
    expect(sizeOf<MIDIPROPTEMPO>(), equals(8));
  });
  test('Struct MIDIPROPTIMEDIV is the right size', () {
    expect(sizeOf<MIDIPROPTIMEDIV>(), equals(8));
  });
  test('Struct MIDISTRMBUFFVER is the right size', () {
    expect(sizeOf<MIDISTRMBUFFVER>(), equals(12));
  });
  test('Struct MINMAXINFO is the right size', () {
    expect(sizeOf<MINMAXINFO>(), equals(40));
  });
  test('Struct MMTIME is the right size', () {
    expect(sizeOf<MMTIME>(), equals(12));
  });
  test('Struct MONITORINFO is the right size', () {
    expect(sizeOf<MONITORINFO>(), equals(40));
  });
  test('Struct MOUSEMOVEPOINT is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<MOUSEMOVEPOINT>(), equals(24));
    } else {
      expect(sizeOf<MOUSEMOVEPOINT>(), equals(16));
    }
  });
  test('Struct MSG is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<MSG>(), equals(48));
    } else {
      expect(sizeOf<MSG>(), equals(28));
    }
  });
  test('Struct NEWTEXTMETRIC is the right size', () {
    expect(sizeOf<NEWTEXTMETRIC>(), equals(76));
  });
  test('Struct NLM_SIMULATED_PROFILE_INFO is the right size', () {
    expect(sizeOf<NLM_SIMULATED_PROFILE_INFO>(), equals(524));
  });
  test('Struct NONCLIENTMETRICS is the right size', () {
    expect(sizeOf<NONCLIENTMETRICS>(), equals(504));
  });
  test('Struct NOTIFYICONDATA is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<NOTIFYICONDATA>(), equals(976));
    } else {
      expect(sizeOf<NOTIFYICONDATA>(), equals(956));
    }
  });
  test('Struct OPENFILENAME is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<OPENFILENAME>(), equals(152));
    } else {
      expect(sizeOf<OPENFILENAME>(), equals(88));
    }
  });
  test('Struct OSVERSIONINFO is the right size', () {
    expect(sizeOf<OSVERSIONINFO>(), equals(276));
  });
  test('Struct OVERLAPPED is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<OVERLAPPED>(), equals(32));
    } else {
      expect(sizeOf<OVERLAPPED>(), equals(20));
    }
  });
  test('Struct PAINTSTRUCT is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<PAINTSTRUCT>(), equals(72));
    } else {
      expect(sizeOf<PAINTSTRUCT>(), equals(64));
    }
  });
  test('Struct PALETTEENTRY is the right size', () {
    expect(sizeOf<PALETTEENTRY>(), equals(4));
  });
  test('Struct PHYSICAL_MONITOR is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<PHYSICAL_MONITOR>(), equals(264));
    } else {
      expect(sizeOf<PHYSICAL_MONITOR>(), equals(260));
    }
  });
  test('Struct POINT is the right size', () {
    expect(sizeOf<POINT>(), equals(8));
  });
  test('Struct POLYTEXT is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<POLYTEXT>(), equals(56));
    } else {
      expect(sizeOf<POLYTEXT>(), equals(40));
    }
  });
  test('Struct POWERBROADCAST_SETTING is the right size', () {
    expect(sizeOf<POWERBROADCAST_SETTING>(), equals(24));
  });
  test('Struct PROCESS_INFORMATION is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<PROCESS_INFORMATION>(), equals(24));
    } else {
      expect(sizeOf<PROCESS_INFORMATION>(), equals(16));
    }
  });
  test('Struct PROPERTYKEY is the right size', () {
    expect(sizeOf<PROPERTYKEY>(), equals(20));
  });
  test('Struct PROPVARIANT is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<PROPVARIANT>(), equals(24));
    } else {
      expect(sizeOf<PROPVARIANT>(), equals(16));
    }
  });
  test('Struct RECT is the right size', () {
    expect(sizeOf<RECT>(), equals(16));
  });
  test('Struct RGBQUAD is the right size', () {
    expect(sizeOf<RGBQUAD>(), equals(4));
  });
  test('Struct SAFEARRAY is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<SAFEARRAY>(), equals(32));
    } else {
      expect(sizeOf<SAFEARRAY>(), equals(24));
    }
  });
  test('Struct SCROLLINFO is the right size', () {
    expect(sizeOf<SCROLLINFO>(), equals(28));
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
  test('Struct SHELLEXECUTEINFO is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<SHELLEXECUTEINFO>(), equals(112));
    } else {
      expect(sizeOf<SHELLEXECUTEINFO>(), equals(60));
    }
  });
  test('Struct SHITEMID is the right size', () {
    expect(sizeOf<SHITEMID>(), equals(3));
  });
  test('Struct SHQUERYRBINFO is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<SHQUERYRBINFO>(), equals(24));
    } else {
      expect(sizeOf<SHQUERYRBINFO>(), equals(20));
    }
  });
  test('Struct SIZE is the right size', () {
    expect(sizeOf<SIZE>(), equals(8));
  });
  test('Struct SMALL_RECT is the right size', () {
    expect(sizeOf<SMALL_RECT>(), equals(8));
  });
  test('Struct SOLE_AUTHENTICATION_SERVICE is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<SOLE_AUTHENTICATION_SERVICE>(), equals(24));
    } else {
      expect(sizeOf<SOLE_AUTHENTICATION_SERVICE>(), equals(16));
    }
  });
  test('Struct STARTUPINFO is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<STARTUPINFO>(), equals(104));
    } else {
      expect(sizeOf<STARTUPINFO>(), equals(68));
    }
  });
  test('Struct STARTUPINFOEX is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<STARTUPINFOEX>(), equals(112));
    } else {
      expect(sizeOf<STARTUPINFOEX>(), equals(72));
    }
  });
  test('Struct STATSTG is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<STATSTG>(), equals(80));
    } else {
      expect(sizeOf<STATSTG>(), equals(72));
    }
  });
  test('Struct STYLESTRUCT is the right size', () {
    expect(sizeOf<STYLESTRUCT>(), equals(8));
  });
  test('Struct SYMBOL_INFO is the right size', () {
    expect(sizeOf<SYMBOL_INFO>(), equals(88));
  });
  test('Struct SYSTEMTIME is the right size', () {
    expect(sizeOf<SYSTEMTIME>(), equals(16));
  });
  test('Struct SYSTEM_BATTERY_STATE is the right size', () {
    expect(sizeOf<SYSTEM_BATTERY_STATE>(), equals(32));
  });
  test('Struct SYSTEM_INFO is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<SYSTEM_INFO>(), equals(48));
    } else {
      expect(sizeOf<SYSTEM_INFO>(), equals(36));
    }
  });
  test('Struct SYSTEM_POWER_STATUS is the right size', () {
    expect(sizeOf<SYSTEM_POWER_STATUS>(), equals(12));
  });
  test('Struct TASKDIALOGCONFIG is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<TASKDIALOGCONFIG>(), equals(160));
    } else {
      expect(sizeOf<TASKDIALOGCONFIG>(), equals(96));
    }
  });
  test('Struct TASKDIALOG_BUTTON is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<TASKDIALOG_BUTTON>(), equals(12));
    } else {
      expect(sizeOf<TASKDIALOG_BUTTON>(), equals(8));
    }
  });
  test('Struct TEXTMETRIC is the right size', () {
    expect(sizeOf<TEXTMETRIC>(), equals(60));
  });
  test('Struct TITLEBARINFO is the right size', () {
    expect(sizeOf<TITLEBARINFO>(), equals(44));
  });
  test('Struct TITLEBARINFOEX is the right size', () {
    expect(sizeOf<TITLEBARINFOEX>(), equals(140));
  });
  test('Struct TPMPARAMS is the right size', () {
    expect(sizeOf<TPMPARAMS>(), equals(20));
  });
  test('Struct TYPEATTR is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<TYPEATTR>(), equals(96));
    } else {
      expect(sizeOf<TYPEATTR>(), equals(76));
    }
  });
  test('Struct TYPEDESC is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<TYPEDESC>(), equals(16));
    } else {
      expect(sizeOf<TYPEDESC>(), equals(8));
    }
  });
  test('Struct UPDATELAYEREDWINDOWINFO is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<UPDATELAYEREDWINDOWINFO>(), equals(80));
    } else {
      expect(sizeOf<UPDATELAYEREDWINDOWINFO>(), equals(40));
    }
  });
  test('Struct VALENT is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<VALENT>(), equals(32));
    } else {
      expect(sizeOf<VALENT>(), equals(16));
    }
  });
  test('Struct VARIANT is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<VARIANT>(), equals(24));
    } else {
      expect(sizeOf<VARIANT>(), equals(16));
    }
  });
  test('Struct VS_FIXEDFILEINFO is the right size', () {
    expect(sizeOf<VS_FIXEDFILEINFO>(), equals(52));
  });
  test('Struct WAVEFORMATEX is the right size', () {
    expect(sizeOf<WAVEFORMATEX>(), equals(18));
  });
  test('Struct WAVEHDR is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<WAVEHDR>(), equals(48));
    } else {
      expect(sizeOf<WAVEHDR>(), equals(32));
    }
  });
  test('Struct WAVEOUTCAPS is the right size', () {
    expect(sizeOf<WAVEOUTCAPS>(), equals(84));
  });
  test('Struct WIN32_FIND_DATA is the right size', () {
    expect(sizeOf<WIN32_FIND_DATA>(), equals(592));
  });
  test('Struct WINDOWINFO is the right size', () {
    expect(sizeOf<WINDOWINFO>(), equals(60));
  });
  test('Struct WINDOWPLACEMENT is the right size', () {
    expect(sizeOf<WINDOWPLACEMENT>(), equals(44));
  });
  test('Struct WNDCLASS is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<WNDCLASS>(), equals(72));
    } else {
      expect(sizeOf<WNDCLASS>(), equals(40));
    }
  });
  test('Struct WNDCLASSEX is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<WNDCLASSEX>(), equals(80));
    } else {
      expect(sizeOf<WNDCLASSEX>(), equals(48));
    }
  });
  test('Struct XFORM is the right size', () {
    expect(sizeOf<XFORM>(), equals(24));
  });
}
