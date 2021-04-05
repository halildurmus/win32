/**
 * Copyright (c) 2020 the Dart project authors. All rights reserved.
 * Use of this source code is governed by a BSD-style
 * license that can be found in the LICENSE file.
 */

// struct_sizes.cpp

// Development utility to confirm the width of various Win32 structs.

// This code not used by the package itself, but is just a helper to inspect
// widths across x86 and x64 architectures. The results are pasted into
// win32\struct_sizes.dart as input to the test harness.

// Compile with cl struct_sizes.cpp /Fe:structs64.exe

#include <stdlib.h>
#include <windows.h>
#include <stdio.h>
#include <ShlObj_core.h>
#include <netlistmgr.h>
#include <bluetoothapis.h>
#include <wincred.h>
#include <Shlwapi.h>
#include <physicalmonitorenumerationapi.h>
#include <CorHdr.h>
#include <DbgHelp.h>
#include <ShellScalingApi.h>

void main()
{
    printf("  const structSizeXX = {\n");
    printf("  'ACCEL': %zu,\n", sizeof(ACCEL));
    printf("  'ACTCTX': %zu,\n", sizeof(ACTCTX));
    printf("  'BIND_OPTS': %zu,\n", sizeof(BIND_OPTS));
    printf("  'BITMAP': %zu,\n", sizeof(BITMAP));
    printf("  'BITMAPFILEHEADER': %zu,\n", sizeof(BITMAPFILEHEADER));
    printf("  'BITMAPINFO': %zu,\n", sizeof(BITMAPINFO));
    printf("  'BITMAPINFOHEADER': %zu,\n", sizeof(BITMAPINFOHEADER));
    printf("  'BLENDFUNCTION': %zu,\n", sizeof(BLENDFUNCTION));
    printf("  'BLUETOOTH_ADDRESS': %zu,\n", sizeof(BLUETOOTH_ADDRESS));
    printf("  'BLUETOOTH_AUTHENTICATION_CALLBACK_PARAMS': %zu,\n", sizeof(BLUETOOTH_AUTHENTICATION_CALLBACK_PARAMS));
    printf("  'BLUETOOTH_DEVICE_INFO': %zu,\n", sizeof(BLUETOOTH_DEVICE_INFO));
    printf("  'BLUETOOTH_DEVICE_SEARCH_PARAMS': %zu,\n", sizeof(BLUETOOTH_DEVICE_SEARCH_PARAMS));
    printf("  'BLUETOOTH_FIND_RADIO_PARAMS': %zu,\n", sizeof(BLUETOOTH_FIND_RADIO_PARAMS));
    printf("  'BLUETOOTH_OOB_DATA_INFO': %zu,\n", sizeof(BLUETOOTH_OOB_DATA_INFO));
    printf("  'BLUETOOTH_PIN_INFO': %zu,\n", sizeof(BLUETOOTH_PIN_INFO));
    printf("  'BLUETOOTH_RADIO_INFO': %zu,\n", sizeof(BLUETOOTH_RADIO_INFO));
    printf("  'CHAR_INFO': %zu,\n", sizeof(CHAR_INFO));
    printf("  'CHOOSECOLOR': %zu,\n", sizeof(CHOOSECOLOR));
    printf("  'CHOOSEFONT': %zu,\n", sizeof(CHOOSEFONT));
    printf("  'COLORADJUSTMENT': %zu,\n", sizeof(COLORADJUSTMENT));
    printf("  'COMDLG_FILTERSPEC': %zu,\n", sizeof(COMDLG_FILTERSPEC));
    printf("  'CONSOLE_CURSOR_INFO': %zu,\n", sizeof(CONSOLE_CURSOR_INFO));
    printf("  'CONSOLE_SCREEN_BUFFER_INFO': %zu,\n", sizeof(CONSOLE_SCREEN_BUFFER_INFO));
    printf("  'CONSOLE_SELECTION_INFO': %zu,\n", sizeof(CONSOLE_SELECTION_INFO));
    printf("  'COORD': %zu,\n", sizeof(COORD));
    printf("  'COR_FIELD_OFFSET': %zu,\n", sizeof(COR_FIELD_OFFSET));
    printf("  'CREATESTRUCT': %zu,\n", sizeof(CREATESTRUCT));
    printf("  'CREDENTIAL': %zu,\n", sizeof(CREDENTIAL));
    printf("  'CREDENTIAL_ATTRIBUTE': %zu,\n", sizeof(CREDENTIAL_ATTRIBUTE));
    printf("  'DESIGNVECTOR': %zu,\n", sizeof(DESIGNVECTOR));
    printf("  'DIBSECTION': %zu,\n", sizeof(DIBSECTION));
    printf("  'DISPPARAMS': %zu,\n", sizeof(DISPPARAMS));
    printf("  'DLGITEMTEMPLATE': %zu,\n", sizeof(DLGITEMTEMPLATE));
    printf("  'DLGTEMPLATE': %zu,\n", sizeof(DLGTEMPLATE));
    printf("  'DLLVERSIONINFO': %zu,\n", sizeof(DLLVERSIONINFO));
    printf("  'DRAWTEXTPARAMS': %zu,\n", sizeof(DRAWTEXTPARAMS));
    printf("  'ENUMLOGFONTEX': %zu,\n", sizeof(ENUMLOGFONTEXW));
    printf("  'EXCEPINFO': %zu,\n", sizeof(EXCEPINFO));
    printf("  'FILETIME': %zu,\n", sizeof(FILETIME));
    printf("  'FINDREPLACE': %zu,\n", sizeof(FINDREPLACE));
    printf("  'GUID': %zu,\n", sizeof(GUID));
    printf("  'GUITHREADINFO': %zu,\n", sizeof(GUITHREADINFO));
    printf("  'IDLDESC': %zu,\n", sizeof(IDLDESC));
    printf("  'INITCOMMONCONTROLSEX': %zu,\n", sizeof(INITCOMMONCONTROLSEX));
    printf("  'INPUT': %zu,\n", sizeof(INPUT));
    printf("  'KNOWNFOLDER_DEFINITION': %zu,\n", sizeof(KNOWNFOLDER_DEFINITION));
    printf("  'LASTINPUTINFO': %zu,\n", sizeof(LASTINPUTINFO));
    printf("  'LOGBRUSH': %zu,\n", sizeof(LOGBRUSH));
    printf("  'LOGFONT': %zu,\n", sizeof(LOGFONTW));
    printf("  'LOGPALETTE': %zu,\n", sizeof(LOGPALETTE));
    printf("  'MCI_OPEN_PARMS': %zu,\n", sizeof(MCI_OPEN_PARMS));
    printf("  'MCI_PLAY_PARMS': %zu,\n", sizeof(MCI_PLAY_PARMS));
    printf("  'MCI_SEEK_PARMS': %zu,\n", sizeof(MCI_SEEK_PARMS));
    printf("  'MCI_STATUS_PARMS': %zu,\n", sizeof(MCI_STATUS_PARMS));
    printf("  'MENUINFO': %zu,\n", sizeof(MENUINFO));
    printf("  'MENUITEMINFO': %zu,\n", sizeof(MENUITEMINFO));
    printf("  'METAFILEPICT': %zu,\n", sizeof(METAFILEPICT));
    printf("  'MINMAXINFO': %zu,\n", sizeof(MINMAXINFO));
    printf("  'MMTIME': %zu,\n", sizeof(MMTIME));
    printf("  'MONITORINFO': %zu,\n", sizeof(MONITORINFO));
    printf("  'MOUSEMOVEPOINT': %zu,\n", sizeof(MOUSEMOVEPOINT));
    printf("  'MSG': %zu,\n", sizeof(MSG));
    printf("  'NEWTEXTMETRIC': %zu,\n", sizeof(NEWTEXTMETRICW));
    printf("  'NLM_SIMULATED_PROFILE_INFO': %zu,\n", sizeof(NLM_SIMULATED_PROFILE_INFO));
    printf("  'NONCLIENTMETRICS': %zu,\n", sizeof(NONCLIENTMETRICSW));
    printf("  'NOTIFYICONDATA': %zu,\n", sizeof(NOTIFYICONDATAW));
    printf("  'OPENFILENAME': %zu,\n", sizeof(OPENFILENAME));
    printf("  'OSVERSIONINFO': %zu,\n", sizeof(OSVERSIONINFOW));
    printf("  'OVERLAPPED': %zu,\n", sizeof(OVERLAPPED));
    printf("  'PAINTSTRUCT': %zu,\n", sizeof(PAINTSTRUCT));
    printf("  'PALETTEENTRY': %zu,\n", sizeof(PALETTEENTRY));
    printf("  'PHYSICAL_MONITOR': %zu,\n", sizeof(PHYSICAL_MONITOR));
    printf("  'POINT': %zu,\n", sizeof(POINT));
    printf("  'POLYTEXT': %zu,\n", sizeof(POLYTEXTW));
    printf("  'POWERBROADCAST_SETTING': %zu,\n", sizeof(POWERBROADCAST_SETTING));
    printf("  'PROCESS_INFORMATION': %zu,\n", sizeof(PROCESS_INFORMATION));
    printf("  'PROPERTYKEY': %zu,\n", sizeof(PROPERTYKEY));
    printf("  'PROPVARIANT': %zu,\n", sizeof(PROPVARIANT));
    printf("  'RECT': %zu,\n", sizeof(RECT));
    printf("  'RGBQUAD': %zu,\n", sizeof(RGBQUAD));
    printf("  'SAFEARRAY': %zu,\n", sizeof(SAFEARRAY));
    printf("  'SCROLLINFO': %zu,\n", sizeof(SCROLLINFO));
    printf("  'SECURITY_ATTRIBUTES': %zu,\n", sizeof(SECURITY_ATTRIBUTES));
    printf("  'SECURITY_DESCRIPTOR': %zu,\n", sizeof(SECURITY_DESCRIPTOR));
    printf("  'SHELLEXECUTEINFO': %zu,\n", sizeof(SHELLEXECUTEINFO));
    printf("  'SHITEMID': %zu,\n", sizeof(SHITEMID));
    printf("  'SHQUERYRBINFO': %zu,\n", sizeof(SHQUERYRBINFO));
    printf("  'SIZE': %zu,\n", sizeof(SIZE));
    printf("  'SMALL_RECT': %zu,\n", sizeof(SMALL_RECT));
    printf("  'SOLE_AUTHENTICATION_SERVICE': %zu,\n", sizeof(SOLE_AUTHENTICATION_SERVICE));
    printf("  'STARTUPINFO': %zu,\n", sizeof(STARTUPINFO));
    printf("  'STARTUPINFOEX': %zu,\n", sizeof(STARTUPINFOEX));
    printf("  'STATSTG': %zu,\n", sizeof(STATSTG));
    printf("  'STYLESTRUCT': %zu,\n", sizeof(STYLESTRUCT));
    printf("  'SYMBOL_INFO': %zu,\n", sizeof(SYMBOL_INFO));
    printf("  'SYSTEMTIME': %zu,\n", sizeof(SYSTEMTIME));
    printf("  'SYSTEM_BATTERY_STATE': %zu,\n", sizeof(SYSTEM_BATTERY_STATE));
    printf("  'SYSTEM_INFO': %zu,\n", sizeof(SYSTEM_INFO));
    printf("  'SYSTEM_POWER_STATUS': %zu,\n", sizeof(SYSTEM_POWER_STATUS));
    printf("  'TASKDIALOGCONFIG': %zu,\n", sizeof(TASKDIALOGCONFIG));
    printf("  'TASKDIALOG_BUTTON': %zu,\n", sizeof(TASKDIALOG_BUTTON));
    printf("  'TEXTMETRIC': %zu,\n", sizeof(TEXTMETRICW));
    printf("  'TITLEBARINFO': %zu,\n", sizeof(TITLEBARINFO));
    printf("  'TITLEBARINFOEX': %zu,\n", sizeof(TITLEBARINFOEX));
    printf("  'TPMPARAMS': %zu,\n", sizeof(TPMPARAMS));
    printf("  'TYPEATTR': %zu,\n", sizeof(TYPEATTR));
    printf("  'TYPEDESC': %zu,\n", sizeof(TYPEDESC));
    printf("  'UPDATELAYEREDWINDOWINFO': %zu,\n", sizeof(UPDATELAYEREDWINDOWINFO));
    printf("  'VALENT': %zu,\n", sizeof(VALENTW));
    printf("  'VARIANT': %zu,\n", sizeof(VARIANT));
    printf("  'VS_FIXEDFILEINFO': %zu,\n", sizeof(VS_FIXEDFILEINFO));
    printf("  'WAVEFORMATEX': %zu,\n", sizeof(WAVEFORMATEX));
    printf("  'WAVEHDR': %zu,\n", sizeof(WAVEHDR));
    printf("  'WAVEOUTCAPS': %zu,\n", sizeof(WAVEOUTCAPSW));
    printf("  'WIN32_FIND_DATA': %zu,\n", sizeof(WIN32_FIND_DATAW));
    printf("  'WINDOWINFO': %zu,\n", sizeof(WINDOWINFO));
    printf("  'WINDOWPLACEMENT': %zu,\n", sizeof(WINDOWPLACEMENT));
    printf("  'WNDCLASS': %zu,\n", sizeof(WNDCLASS));
    printf("  'WNDCLASSEX': %zu,\n", sizeof(WNDCLASSEXW));
    printf("  'XFORM': %zu,\n", sizeof(XFORM));
    printf("};\n");
}
