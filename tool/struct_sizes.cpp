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

// Compile with cl tool\struct_sizes.cpp /link ws2_32.lib

#include <stdlib.h>
#include <winsock2.h>
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
#include <AppxPackaging.h>
#include <dwmapi.h>
#include <wlanapi.h>
#include <SetupAPI.h>
#include <magnification.h>

void main()
{
    printf("  const structSizeXX = {\n");

    // Manually generated structs
    printf("  'APPX_PACKAGE_SETTINGS': %zu,\n", sizeof(APPX_PACKAGE_SETTINGS));
    printf("  'BLUETOOTH_ADDRESS': %zu,\n", sizeof(BLUETOOTH_ADDRESS));
    printf("  'BLUETOOTH_AUTHENTICATION_CALLBACK_PARAMS': %zu,\n", sizeof(BLUETOOTH_AUTHENTICATION_CALLBACK_PARAMS));
    printf("  'BLUETOOTH_PIN_INFO': %zu,\n", sizeof(BLUETOOTH_PIN_INFO));
    printf("  'CHAR_INFO': %zu,\n", sizeof(CHAR_INFO));
    printf("  'COR_FIELD_OFFSET': %zu,\n", sizeof(COR_FIELD_OFFSET));
    printf("  'DECIMAL': %zu,\n", sizeof(DECIMAL));
    printf("  'DEVMODE': %zu,\n", sizeof(DEVMODEW));
    printf("  'GUID': %zu,\n", sizeof(GUID));
    printf("  'INPUT': %zu,\n", sizeof(INPUT));
    printf("  'MMTIME': %zu,\n", sizeof(MMTIME));
    printf("  'NOTIFYICONDATA': %zu,\n", sizeof(NOTIFYICONDATAW));
    printf("  'OVERLAPPED': %zu,\n", sizeof(OVERLAPPED));
    printf("  'PRINTER_NOTIFY_INFO_DATA': %zu,\n", sizeof(PRINTER_NOTIFY_INFO_DATA));
    printf("  'PROCESS_HEAP_ENTRY': %zu,\n", sizeof(PROCESS_HEAP_ENTRY));
    printf("  'PROPSPEC': %zu,\n", sizeof(PROPSPEC));
    printf("  'PROPVARIANT': %zu,\n", sizeof(PROPVARIANT));
    printf("  'SHELLEXECUTEINFO': %zu,\n", sizeof(SHELLEXECUTEINFO));
    printf("  'STARTUPINFOEX': %zu,\n", sizeof(STARTUPINFOEX));
    printf("  'STRRET': %zu,\n", sizeof(STRRET));
    printf("  'SYSTEM_INFO': %zu,\n", sizeof(SYSTEM_INFO));
    printf("  'TASKDIALOGCONFIG': %zu,\n", sizeof(TASKDIALOGCONFIG));
    printf("  'TYPEDESC': %zu,\n", sizeof(TYPEDESC));
    printf("  'VARIANT': %zu,\n", sizeof(VARIANT));
    printf("  'WLAN_RAW_DATA_LIST': %zu,\n", sizeof(WLAN_RAW_DATA_LIST));

    // Automatically generated structs
    printf("  'ACCEL': %zu,\n", sizeof(ACCEL));
    printf("  'ACL': %zu,\n", sizeof(ACL));
    printf("  'ACTCTX': %zu,\n", sizeof(ACTCTXW));
    printf("  'ADDJOB_INFO_1': %zu,\n", sizeof(ADDJOB_INFO_1W));
    printf("  'addrinfo': %zu,\n", sizeof(addrinfoW));
    printf("  'BIND_OPTS': %zu,\n", sizeof(BIND_OPTS));
    printf("  'BITMAP': %zu,\n", sizeof(BITMAP));
    printf("  'BITMAPFILEHEADER': %zu,\n", sizeof(BITMAPFILEHEADER));
    printf("  'BITMAPINFO': %zu,\n", sizeof(BITMAPINFO));
    printf("  'BITMAPINFOHEADER': %zu,\n", sizeof(BITMAPINFOHEADER));
    printf("  'BLENDFUNCTION': %zu,\n", sizeof(BLENDFUNCTION));
    printf("  'BLUETOOTH_DEVICE_INFO': %zu,\n", sizeof(BLUETOOTH_DEVICE_INFO));
    printf("  'BLUETOOTH_DEVICE_SEARCH_PARAMS': %zu,\n", sizeof(BLUETOOTH_DEVICE_SEARCH_PARAMS));
    printf("  'BLUETOOTH_FIND_RADIO_PARAMS': %zu,\n", sizeof(BLUETOOTH_FIND_RADIO_PARAMS));
    printf("  'BLUETOOTH_OOB_DATA_INFO': %zu,\n", sizeof(BLUETOOTH_OOB_DATA_INFO));
    printf("  'BLUETOOTH_RADIO_INFO': %zu,\n", sizeof(BLUETOOTH_RADIO_INFO));
    printf("  'BSMINFO': %zu,\n", sizeof(BSMINFO));
    printf("  'BY_HANDLE_FILE_INFORMATION': %zu,\n", sizeof(BY_HANDLE_FILE_INFORMATION));
    printf("  'CHANGEFILTERSTRUCT': %zu,\n", sizeof(CHANGEFILTERSTRUCT));
    printf("  'CHOOSECOLOR': %zu,\n", sizeof(CHOOSECOLORW));
    printf("  'CHOOSEFONT': %zu,\n", sizeof(CHOOSEFONTW));
    printf("  'COLORADJUSTMENT': %zu,\n", sizeof(COLORADJUSTMENT));
    printf("  'COMDLG_FILTERSPEC': %zu,\n", sizeof(COMDLG_FILTERSPEC));
    printf("  'COMMCONFIG': %zu,\n", sizeof(COMMCONFIG));
    printf("  'COMMPROP': %zu,\n", sizeof(COMMPROP));
    printf("  'COMMTIMEOUTS': %zu,\n", sizeof(COMMTIMEOUTS));
    printf("  'COMSTAT': %zu,\n", sizeof(COMSTAT));
    printf("  'CONSOLE_CURSOR_INFO': %zu,\n", sizeof(CONSOLE_CURSOR_INFO));
    printf("  'CONSOLE_READCONSOLE_CONTROL': %zu,\n", sizeof(CONSOLE_READCONSOLE_CONTROL));
    printf("  'CONSOLE_SCREEN_BUFFER_INFO': %zu,\n", sizeof(CONSOLE_SCREEN_BUFFER_INFO));
    printf("  'CONSOLE_SELECTION_INFO': %zu,\n", sizeof(CONSOLE_SELECTION_INFO));
    printf("  'COORD': %zu,\n", sizeof(COORD));
    printf("  'CREATESTRUCT': %zu,\n", sizeof(CREATESTRUCTW));
    printf("  'CREDENTIAL': %zu,\n", sizeof(CREDENTIALW));
    printf("  'CREDENTIAL_ATTRIBUTE': %zu,\n", sizeof(CREDENTIAL_ATTRIBUTEW));
    printf("  'CURSORINFO': %zu,\n", sizeof(CURSORINFO));
    printf("  'DCB': %zu,\n", sizeof(DCB));
    printf("  'DESIGNVECTOR': %zu,\n", sizeof(DESIGNVECTOR));
    printf("  'DIBSECTION': %zu,\n", sizeof(DIBSECTION));
    printf("  'DISK_GEOMETRY': %zu,\n", sizeof(DISK_GEOMETRY));
    printf("  'DISK_GEOMETRY_EX': %zu,\n", sizeof(DISK_GEOMETRY_EX));
    printf("  'DISPPARAMS': %zu,\n", sizeof(DISPPARAMS));
    printf("  'DLGITEMTEMPLATE': %zu,\n", sizeof(DLGITEMTEMPLATE));
    printf("  'DLGTEMPLATE': %zu,\n", sizeof(DLGTEMPLATE));
    printf("  'DLLVERSIONINFO': %zu,\n", sizeof(DLLVERSIONINFO));
    printf("  'DOC_INFO_1': %zu,\n", sizeof(DOC_INFO_1W));
    printf("  'DOT11_AUTH_CIPHER_PAIR': %zu,\n", sizeof(DOT11_AUTH_CIPHER_PAIR));
    printf("  'DOT11_BSSID_LIST': %zu,\n", sizeof(DOT11_BSSID_LIST));
    printf("  'DOT11_NETWORK': %zu,\n", sizeof(DOT11_NETWORK));
    printf("  'DOT11_NETWORK_LIST': %zu,\n", sizeof(DOT11_NETWORK_LIST));
    printf("  'DOT11_SSID': %zu,\n", sizeof(DOT11_SSID));
    printf("  'DRAWTEXTPARAMS': %zu,\n", sizeof(DRAWTEXTPARAMS));
    printf("  'DTBGOPTS': %zu,\n", sizeof(DTBGOPTS));
    printf("  'DTTOPTS': %zu,\n", sizeof(DTTOPTS));
    printf("  'DWM_BLURBEHIND': %zu,\n", sizeof(DWM_BLURBEHIND));
    printf("  'EAP_METHOD_TYPE': %zu,\n", sizeof(EAP_METHOD_TYPE));
    printf("  'EAP_TYPE': %zu,\n", sizeof(EAP_TYPE));
    printf("  'ENUMLOGFONTEX': %zu,\n", sizeof(ENUMLOGFONTEXW));
    printf("  'EXCEPINFO': %zu,\n", sizeof(EXCEPINFO));
    printf("  'fd_set': %zu,\n", sizeof(fd_set));
    printf("  'FILETIME': %zu,\n", sizeof(FILETIME));
    printf("  'FINDREPLACE': %zu,\n", sizeof(FINDREPLACEW));
    printf("  'FUNCDESC': %zu,\n", sizeof(FUNCDESC));
    printf("  'GESTURECONFIG': %zu,\n", sizeof(GESTURECONFIG));
    printf("  'GESTUREINFO': %zu,\n", sizeof(GESTUREINFO));
    printf("  'GESTURENOTIFYSTRUCT': %zu,\n", sizeof(GESTURENOTIFYSTRUCT));
    printf("  'GUITHREADINFO': %zu,\n", sizeof(GUITHREADINFO));
    printf("  'HARDWAREINPUT': %zu,\n", sizeof(HARDWAREINPUT));
    printf("  'hostent': %zu,\n", sizeof(hostent));
    printf("  'ICONINFO': %zu,\n", sizeof(ICONINFO));
    printf("  'ICONINFOEX': %zu,\n", sizeof(ICONINFOEXW));
    printf("  'IDLDESC': %zu,\n", sizeof(IDLDESC));
    printf("  'INITCOMMONCONTROLSEX': %zu,\n", sizeof(INITCOMMONCONTROLSEX));
    printf("  'ITEMIDLIST': %zu,\n", sizeof(ITEMIDLIST));
    printf("  'JOB_INFO_1': %zu,\n", sizeof(JOB_INFO_1W));
    printf("  'KEYBDINPUT': %zu,\n", sizeof(KEYBDINPUT));
    printf("  'KNOWNFOLDER_DEFINITION': %zu,\n", sizeof(KNOWNFOLDER_DEFINITION));
    printf("  'L2_NOTIFICATION_DATA': %zu,\n", sizeof(L2_NOTIFICATION_DATA));
    printf("  'LASTINPUTINFO': %zu,\n", sizeof(LASTINPUTINFO));
    printf("  'LOGBRUSH': %zu,\n", sizeof(LOGBRUSH));
    printf("  'LOGFONT': %zu,\n", sizeof(LOGFONTW));
    printf("  'LOGPALETTE': %zu,\n", sizeof(LOGPALETTE));
    printf("  'LUID': %zu,\n", sizeof(LUID));
    printf("  'MAGCOLOREFFECT': %zu,\n", sizeof(MAGCOLOREFFECT));
    printf("  'MAGIMAGEHEADER': %zu,\n", sizeof(MAGIMAGEHEADER));
    printf("  'MAGTRANSFORM': %zu,\n", sizeof(MAGTRANSFORM));
    printf("  'MARGINS': %zu,\n", sizeof(MARGINS));
    printf("  'MCI_OPEN_PARMS': %zu,\n", sizeof(MCI_OPEN_PARMSW));
    printf("  'MCI_PLAY_PARMS': %zu,\n", sizeof(MCI_PLAY_PARMS));
    printf("  'MCI_SEEK_PARMS': %zu,\n", sizeof(MCI_SEEK_PARMS));
    printf("  'MCI_STATUS_PARMS': %zu,\n", sizeof(MCI_STATUS_PARMS));
    printf("  'MENUINFO': %zu,\n", sizeof(MENUINFO));
    printf("  'MENUITEMINFO': %zu,\n", sizeof(MENUITEMINFOW));
    printf("  'MENUITEMTEMPLATE': %zu,\n", sizeof(MENUITEMTEMPLATE));
    printf("  'MENUITEMTEMPLATEHEADER': %zu,\n", sizeof(MENUITEMTEMPLATEHEADER));
    printf("  'METAFILEPICT': %zu,\n", sizeof(METAFILEPICT));
    printf("  'MIDIEVENT': %zu,\n", sizeof(MIDIEVENT));
    printf("  'MIDIHDR': %zu,\n", sizeof(MIDIHDR));
    printf("  'MIDIINCAPS': %zu,\n", sizeof(MIDIINCAPSW));
    printf("  'MIDIOUTCAPS': %zu,\n", sizeof(MIDIOUTCAPSW));
    printf("  'MIDIPROPTEMPO': %zu,\n", sizeof(MIDIPROPTEMPO));
    printf("  'MIDIPROPTIMEDIV': %zu,\n", sizeof(MIDIPROPTIMEDIV));
    printf("  'MIDISTRMBUFFVER': %zu,\n", sizeof(MIDISTRMBUFFVER));
    printf("  'MINMAXINFO': %zu,\n", sizeof(MINMAXINFO));
    printf("  'MODEMDEVCAPS': %zu,\n", sizeof(MODEMDEVCAPS));
    printf("  'MODEMSETTINGS': %zu,\n", sizeof(MODEMSETTINGS));
    printf("  'MODLOAD_DATA': %zu,\n", sizeof(MODLOAD_DATA));
    printf("  'MONITORINFO': %zu,\n", sizeof(MONITORINFO));
    printf("  'MOUSEINPUT': %zu,\n", sizeof(MOUSEINPUT));
    printf("  'MOUSEMOVEPOINT': %zu,\n", sizeof(MOUSEMOVEPOINT));
    printf("  'MSG': %zu,\n", sizeof(MSG));
    printf("  'NDIS_OBJECT_HEADER': %zu,\n", sizeof(NDIS_OBJECT_HEADER));
    printf("  'NEWTEXTMETRIC': %zu,\n", sizeof(NEWTEXTMETRICW));
    printf("  'NLM_SIMULATED_PROFILE_INFO': %zu,\n", sizeof(NLM_SIMULATED_PROFILE_INFO));
    printf("  'NONCLIENTMETRICS': %zu,\n", sizeof(NONCLIENTMETRICSW));
    printf("  'OPENCARD_SEARCH_CRITERIA': %zu,\n", sizeof(OPENCARD_SEARCH_CRITERIAW));
    printf("  'OPENCARDNAME': %zu,\n", sizeof(OPENCARDNAMEW));
    printf("  'OPENCARDNAME_EX': %zu,\n", sizeof(OPENCARDNAME_EXW));
    printf("  'OPENFILENAME': %zu,\n", sizeof(OPENFILENAMEW));
    printf("  'OSVERSIONINFO': %zu,\n", sizeof(OSVERSIONINFOW));
    printf("  'OSVERSIONINFOEXW': %zu,\n", sizeof(OSVERSIONINFOEXW));
    printf("  'OVERLAPPED_ENTRY': %zu,\n", sizeof(OVERLAPPED_ENTRY));
    printf("  'PAINTSTRUCT': %zu,\n", sizeof(PAINTSTRUCT));
    printf("  'PALETTEENTRY': %zu,\n", sizeof(PALETTEENTRY));
    printf("  'PARAMDESC': %zu,\n", sizeof(PARAMDESC));
    printf("  'PARAMDESCEX': %zu,\n", sizeof(PARAMDESCEX));
    printf("  'PHYSICAL_MONITOR': %zu,\n", sizeof(PHYSICAL_MONITOR));
    printf("  'POINT': %zu,\n", sizeof(POINT));
    printf("  'POINTS': %zu,\n", sizeof(POINTS));
    printf("  'POLYTEXT': %zu,\n", sizeof(POLYTEXTW));
    printf("  'PORT_INFO_1': %zu,\n", sizeof(PORT_INFO_1W));
    printf("  'PORT_INFO_2': %zu,\n", sizeof(PORT_INFO_2W));
    printf("  'POWERBROADCAST_SETTING': %zu,\n", sizeof(POWERBROADCAST_SETTING));
    printf("  'PRINT_EXECUTION_DATA': %zu,\n", sizeof(PRINT_EXECUTION_DATA));
    printf("  'PRINTER_DEFAULTS': %zu,\n", sizeof(PRINTER_DEFAULTSW));
    printf("  'PRINTER_INFO_1': %zu,\n", sizeof(PRINTER_INFO_1W));
    printf("  'PRINTER_INFO_2': %zu,\n", sizeof(PRINTER_INFO_2W));
    printf("  'PRINTER_INFO_3': %zu,\n", sizeof(PRINTER_INFO_3));
    printf("  'PRINTER_INFO_4': %zu,\n", sizeof(PRINTER_INFO_4W));
    printf("  'PRINTER_INFO_5': %zu,\n", sizeof(PRINTER_INFO_5W));
    printf("  'PRINTER_INFO_6': %zu,\n", sizeof(PRINTER_INFO_6));
    printf("  'PRINTER_NOTIFY_INFO': %zu,\n", sizeof(PRINTER_NOTIFY_INFO));
    printf("  'PRINTER_OPTIONS': %zu,\n", sizeof(PRINTER_OPTIONSW));
    printf("  'PROCESS_INFORMATION': %zu,\n", sizeof(PROCESS_INFORMATION));
    printf("  'PROPERTYKEY': %zu,\n", sizeof(PROPERTYKEY));
    printf("  'protoent': %zu,\n", sizeof(protoent));
    printf("  'RAWHID': %zu,\n", sizeof(RAWHID));
    printf("  'RAWINPUTDEVICE': %zu,\n", sizeof(RAWINPUTDEVICE));
    printf("  'RAWINPUTDEVICELIST': %zu,\n", sizeof(RAWINPUTDEVICELIST));
    printf("  'RAWINPUTHEADER': %zu,\n", sizeof(RAWINPUTHEADER));
    printf("  'RAWKEYBOARD': %zu,\n", sizeof(RAWKEYBOARD));
    printf("  'RECT': %zu,\n", sizeof(RECT));
    printf("  'RGBQUAD': %zu,\n", sizeof(RGBQUAD));
    printf("  'SAFEARRAY': %zu,\n", sizeof(SAFEARRAY));
    printf("  'SAFEARRAYBOUND': %zu,\n", sizeof(SAFEARRAYBOUND));
    printf("  'SCARD_ATRMASK': %zu,\n", sizeof(SCARD_ATRMASK));
    printf("  'SCARD_IO_REQUEST': %zu,\n", sizeof(SCARD_IO_REQUEST));
    printf("  'SCARD_READERSTATE': %zu,\n", sizeof(SCARD_READERSTATEW));
    printf("  'SCROLLBARINFO': %zu,\n", sizeof(SCROLLBARINFO));
    printf("  'SCROLLINFO': %zu,\n", sizeof(SCROLLINFO));
    printf("  'SECURITY_ATTRIBUTES': %zu,\n", sizeof(SECURITY_ATTRIBUTES));
    printf("  'SECURITY_DESCRIPTOR': %zu,\n", sizeof(SECURITY_DESCRIPTOR));
    printf("  'servent': %zu,\n", sizeof(servent));
    printf("  'SHELL_ITEM_RESOURCE': %zu,\n", sizeof(SHELL_ITEM_RESOURCE));
    printf("  'SHITEMID': %zu,\n", sizeof(SHITEMID));
    printf("  'SHQUERYRBINFO': %zu,\n", sizeof(SHQUERYRBINFO));
    printf("  'SIZE': %zu,\n", sizeof(SIZE));
    printf("  'SMALL_RECT': %zu,\n", sizeof(SMALL_RECT));
    printf("  'SOCKADDR': %zu,\n", sizeof(SOCKADDR));
    printf("  'SOLE_AUTHENTICATION_SERVICE': %zu,\n", sizeof(SOLE_AUTHENTICATION_SERVICE));
    printf("  'SP_DEVINFO_DATA': %zu,\n", sizeof(SP_DEVINFO_DATA));
    printf("  'STARTUPINFO': %zu,\n", sizeof(STARTUPINFOW));
    printf("  'STATPROPSETSTG': %zu,\n", sizeof(STATPROPSETSTG));
    printf("  'STATPROPSTG': %zu,\n", sizeof(STATPROPSTG));
    printf("  'STATSTG': %zu,\n", sizeof(STATSTG));
    printf("  'STYLESTRUCT': %zu,\n", sizeof(STYLESTRUCT));
    printf("  'SYMBOL_INFO': %zu,\n", sizeof(SYMBOL_INFOW));
    printf("  'SYSTEM_BATTERY_STATE': %zu,\n", sizeof(SYSTEM_BATTERY_STATE));
    printf("  'SYSTEM_POWER_STATUS': %zu,\n", sizeof(SYSTEM_POWER_STATUS));
    printf("  'SYSTEMTIME': %zu,\n", sizeof(SYSTEMTIME));
    printf("  'TASKDIALOG_BUTTON': %zu,\n", sizeof(TASKDIALOG_BUTTON));
    printf("  'TEXTMETRIC': %zu,\n", sizeof(TEXTMETRICW));
    printf("  'timeval': %zu,\n", sizeof(timeval));
    printf("  'TITLEBARINFO': %zu,\n", sizeof(TITLEBARINFO));
    printf("  'TITLEBARINFOEX': %zu,\n", sizeof(TITLEBARINFOEX));
    printf("  'TOKEN_APPCONTAINER_INFORMATION': %zu,\n", sizeof(TOKEN_APPCONTAINER_INFORMATION));
    printf("  'TOUCHINPUT': %zu,\n", sizeof(TOUCHINPUT));
    printf("  'TPMPARAMS': %zu,\n", sizeof(TPMPARAMS));
    printf("  'TYPEATTR': %zu,\n", sizeof(TYPEATTR));
    printf("  'UNSIGNED_RATIO': %zu,\n", sizeof(UNSIGNED_RATIO));
    printf("  'UPDATELAYEREDWINDOWINFO': %zu,\n", sizeof(UPDATELAYEREDWINDOWINFO));
    printf("  'VALENT': %zu,\n", sizeof(VALENTW));
    printf("  'VS_FIXEDFILEINFO': %zu,\n", sizeof(VS_FIXEDFILEINFO));
    printf("  'WAVEFORMATEX': %zu,\n", sizeof(WAVEFORMATEX));
    printf("  'WAVEHDR': %zu,\n", sizeof(WAVEHDR));
    printf("  'WAVEOUTCAPS': %zu,\n", sizeof(WAVEOUTCAPSW));
    printf("  'WIN32_FIND_DATA': %zu,\n", sizeof(WIN32_FIND_DATAW));
    printf("  'WINDOWINFO': %zu,\n", sizeof(WINDOWINFO));
    printf("  'WINDOWPLACEMENT': %zu,\n", sizeof(WINDOWPLACEMENT));
    printf("  'WLAN_ASSOCIATION_ATTRIBUTES': %zu,\n", sizeof(WLAN_ASSOCIATION_ATTRIBUTES));
    printf("  'WLAN_AUTH_CIPHER_PAIR_LIST': %zu,\n", sizeof(WLAN_AUTH_CIPHER_PAIR_LIST));
    printf("  'WLAN_AVAILABLE_NETWORK': %zu,\n", sizeof(WLAN_AVAILABLE_NETWORK));
    printf("  'WLAN_AVAILABLE_NETWORK_LIST': %zu,\n", sizeof(WLAN_AVAILABLE_NETWORK_LIST));
    printf("  'WLAN_BSS_ENTRY': %zu,\n", sizeof(WLAN_BSS_ENTRY));
    printf("  'WLAN_BSS_LIST': %zu,\n", sizeof(WLAN_BSS_LIST));
    printf("  'WLAN_CONNECTION_ATTRIBUTES': %zu,\n", sizeof(WLAN_CONNECTION_ATTRIBUTES));
    printf("  'WLAN_CONNECTION_NOTIFICATION_DATA': %zu,\n", sizeof(WLAN_CONNECTION_NOTIFICATION_DATA));
    printf("  'WLAN_CONNECTION_PARAMETERS': %zu,\n", sizeof(WLAN_CONNECTION_PARAMETERS));
    printf("  'WLAN_COUNTRY_OR_REGION_STRING_LIST': %zu,\n", sizeof(WLAN_COUNTRY_OR_REGION_STRING_LIST));
    printf("  'WLAN_DEVICE_SERVICE_GUID_LIST': %zu,\n", sizeof(WLAN_DEVICE_SERVICE_GUID_LIST));
    printf("  'WLAN_DEVICE_SERVICE_NOTIFICATION_DATA': %zu,\n", sizeof(WLAN_DEVICE_SERVICE_NOTIFICATION_DATA));
    printf("  'WLAN_HOSTED_NETWORK_CONNECTION_SETTINGS': %zu,\n", sizeof(WLAN_HOSTED_NETWORK_CONNECTION_SETTINGS));
    printf("  'WLAN_HOSTED_NETWORK_DATA_PEER_STATE_CHANGE': %zu,\n", sizeof(WLAN_HOSTED_NETWORK_DATA_PEER_STATE_CHANGE));
    printf("  'WLAN_HOSTED_NETWORK_PEER_STATE': %zu,\n", sizeof(WLAN_HOSTED_NETWORK_PEER_STATE));
    printf("  'WLAN_HOSTED_NETWORK_RADIO_STATE': %zu,\n", sizeof(WLAN_HOSTED_NETWORK_RADIO_STATE));
    printf("  'WLAN_HOSTED_NETWORK_SECURITY_SETTINGS': %zu,\n", sizeof(WLAN_HOSTED_NETWORK_SECURITY_SETTINGS));
    printf("  'WLAN_HOSTED_NETWORK_STATE_CHANGE': %zu,\n", sizeof(WLAN_HOSTED_NETWORK_STATE_CHANGE));
    printf("  'WLAN_HOSTED_NETWORK_STATUS': %zu,\n", sizeof(WLAN_HOSTED_NETWORK_STATUS));
    printf("  'WLAN_INTERFACE_CAPABILITY': %zu,\n", sizeof(WLAN_INTERFACE_CAPABILITY));
    printf("  'WLAN_INTERFACE_INFO': %zu,\n", sizeof(WLAN_INTERFACE_INFO));
    printf("  'WLAN_INTERFACE_INFO_LIST': %zu,\n", sizeof(WLAN_INTERFACE_INFO_LIST));
    printf("  'WLAN_MAC_FRAME_STATISTICS': %zu,\n", sizeof(WLAN_MAC_FRAME_STATISTICS));
    printf("  'WLAN_MSM_NOTIFICATION_DATA': %zu,\n", sizeof(WLAN_MSM_NOTIFICATION_DATA));
    printf("  'WLAN_PHY_FRAME_STATISTICS': %zu,\n", sizeof(WLAN_PHY_FRAME_STATISTICS));
    printf("  'WLAN_PHY_RADIO_STATE': %zu,\n", sizeof(WLAN_PHY_RADIO_STATE));
    printf("  'WLAN_PROFILE_INFO': %zu,\n", sizeof(WLAN_PROFILE_INFO));
    printf("  'WLAN_PROFILE_INFO_LIST': %zu,\n", sizeof(WLAN_PROFILE_INFO_LIST));
    printf("  'WLAN_RADIO_STATE': %zu,\n", sizeof(WLAN_RADIO_STATE));
    printf("  'WLAN_RATE_SET': %zu,\n", sizeof(WLAN_RATE_SET));
    printf("  'WLAN_RAW_DATA': %zu,\n", sizeof(WLAN_RAW_DATA));
    printf("  'WLAN_SECURITY_ATTRIBUTES': %zu,\n", sizeof(WLAN_SECURITY_ATTRIBUTES));
    printf("  'WLAN_STATISTICS': %zu,\n", sizeof(WLAN_STATISTICS));
    printf("  'WNDCLASS': %zu,\n", sizeof(WNDCLASSW));
    printf("  'WNDCLASSEX': %zu,\n", sizeof(WNDCLASSEXW));
    printf("  'WTA_OPTIONS': %zu,\n", sizeof(WTA_OPTIONS));
    printf("  'XFORM': %zu,\n", sizeof(XFORM));
    printf("};\n");
}
