/**
 * Copyright (c) 2020 the Dart project authors. All rights reserved.
 * Use of this source code is governed by a BSD-style
 * license that can be found in the LICENSE file.
 */

// struct_sizes.cpp

// Development utility to confirm the width of various Win32 structs.

// This code is not used by the package itself, but is just a helper to inspect
// widths across x86 and x64 architectures. The results are pasted into
// tool\generator\lib\src\inputs\struct_sizes.dart as input to the test harness.

// Compile with something like the following (replace xxxxx with Windows SDK
// build installed):
//   cl /I "C:\Program Files (x86)\Windows Kits\10\Include\10.0.xxxxx.0\winrt" \
//     tool\struct_sizes\struct_sizes.cpp

#include <stdlib.h>
#include <stdio.h>

// winsock2.h should be before windows.h, since otherwise the older winsock.h
// will be brought in by windows.h
#include <winsock2.h>
#include <windows.h>

#include <AppxPackaging.h>
#include <bluetoothapis.h>
#include <bluetoothleapis.h>
#include <DbgHelp.h>
#include <dwmapi.h>
#include <iphlpapi.h>
#include <magnification.h>
#include <mmreg.h>
#include <netlistmgr.h>
#include <psapi.h>
#include <physicalmonitorenumerationapi.h>
#include <sapi53.h>
#include <SetupAPI.h>
#include <ShellScalingApi.h>
#include <ShlObj_core.h>
#include <Shlwapi.h>
#include <wincred.h>
#include <wlanapi.h>
#include <Xinput.h>

void main()
{
    // Manually generated structs
    printf("  'GUID': %zu,\n", sizeof(GUID));
    printf("  'PROPVARIANT': %zu,\n", sizeof(PROPVARIANT));
    printf("  'VARIANT': %zu,\n", sizeof(VARIANT));

    // Automatically generated structs
    printf("  'ACCEL': %zu,\n", sizeof(ACCEL));
    printf("  'ACL': %zu,\n", sizeof(ACL));
    printf("  'ACTCTX': %zu,\n", sizeof(ACTCTXW));
    printf("  'ADDJOB_INFO_1': %zu,\n", sizeof(ADDJOB_INFO_1W));
    printf("  'ADDRINFO': %zu,\n", sizeof(ADDRINFOW));
    printf("  'ALTTABINFO': %zu,\n", sizeof(ALTTABINFO));
    printf("  'APPX_PACKAGE_SETTINGS': %zu,\n", sizeof(APPX_PACKAGE_SETTINGS));
    printf("  'ARRAYDESC': %zu,\n", sizeof(ARRAYDESC));
    printf("  'BIND_OPTS': %zu,\n", sizeof(BIND_OPTS));
    printf("  'BITMAP': %zu,\n", sizeof(BITMAP));
    printf("  'BITMAPFILEHEADER': %zu,\n", sizeof(BITMAPFILEHEADER));
    printf("  'BITMAPINFO': %zu,\n", sizeof(BITMAPINFO));
    printf("  'BITMAPINFOHEADER': %zu,\n", sizeof(BITMAPINFOHEADER));
    printf("  'BLENDFUNCTION': %zu,\n", sizeof(BLENDFUNCTION));
    printf("  'BLUETOOTH_ADDRESS': %zu,\n", sizeof(BLUETOOTH_ADDRESS));
    printf("  'BLUETOOTH_AUTHENTICATE_RESPONSE': %zu,\n", sizeof(BLUETOOTH_AUTHENTICATE_RESPONSE));
    printf("  'BLUETOOTH_AUTHENTICATION_CALLBACK_PARAMS': %zu,\n", sizeof(BLUETOOTH_AUTHENTICATION_CALLBACK_PARAMS));
    printf("  'BLUETOOTH_COD_PAIRS': %zu,\n", sizeof(BLUETOOTH_COD_PAIRS));
    printf("  'BLUETOOTH_DEVICE_INFO': %zu,\n", sizeof(BLUETOOTH_DEVICE_INFO));
    printf("  'BLUETOOTH_DEVICE_SEARCH_PARAMS': %zu,\n", sizeof(BLUETOOTH_DEVICE_SEARCH_PARAMS));
    printf("  'BLUETOOTH_FIND_RADIO_PARAMS': %zu,\n", sizeof(BLUETOOTH_FIND_RADIO_PARAMS));
    printf("  'BLUETOOTH_GATT_VALUE_CHANGED_EVENT': %zu,\n", sizeof(BLUETOOTH_GATT_VALUE_CHANGED_EVENT));
    printf("  'BLUETOOTH_GATT_VALUE_CHANGED_EVENT_REGISTRATION': %zu,\n", sizeof(BLUETOOTH_GATT_VALUE_CHANGED_EVENT_REGISTRATION));
    printf("  'BLUETOOTH_NUMERIC_COMPARISON_INFO': %zu,\n", sizeof(BLUETOOTH_NUMERIC_COMPARISON_INFO));
    printf("  'BLUETOOTH_OOB_DATA_INFO': %zu,\n", sizeof(BLUETOOTH_OOB_DATA_INFO));
    printf("  'BLUETOOTH_PASSKEY_INFO': %zu,\n", sizeof(BLUETOOTH_PASSKEY_INFO));
    printf("  'BLUETOOTH_PIN_INFO': %zu,\n", sizeof(BLUETOOTH_PIN_INFO));
    printf("  'BLUETOOTH_RADIO_INFO': %zu,\n", sizeof(BLUETOOTH_RADIO_INFO));
    printf("  'BLUETOOTH_SELECT_DEVICE_PARAMS': %zu,\n", sizeof(BLUETOOTH_SELECT_DEVICE_PARAMS));
    printf("  'BSMINFO': %zu,\n", sizeof(BSMINFO));
    printf("  'BTH_DEVICE_INFO': %zu,\n", sizeof(BTH_DEVICE_INFO));
    printf("  'BTH_HCI_EVENT_INFO': %zu,\n", sizeof(BTH_HCI_EVENT_INFO));
    printf("  'BTH_L2CAP_EVENT_INFO': %zu,\n", sizeof(BTH_L2CAP_EVENT_INFO));
    printf("  'BTH_LE_GATT_CHARACTERISTIC': %zu,\n", sizeof(BTH_LE_GATT_CHARACTERISTIC));
    printf("  'BTH_LE_GATT_CHARACTERISTIC_VALUE': %zu,\n", sizeof(BTH_LE_GATT_CHARACTERISTIC_VALUE));
    printf("  'BTH_LE_GATT_DESCRIPTOR': %zu,\n", sizeof(BTH_LE_GATT_DESCRIPTOR));
    printf("  'BTH_LE_GATT_DESCRIPTOR_VALUE': %zu,\n", sizeof(BTH_LE_GATT_DESCRIPTOR_VALUE));
    printf("  'BTH_LE_GATT_SERVICE': %zu,\n", sizeof(BTH_LE_GATT_SERVICE));
    printf("  'BTH_LE_UUID': %zu,\n", sizeof(BTH_LE_UUID));
    printf("  'BTH_QUERY_DEVICE': %zu,\n", sizeof(BTH_QUERY_DEVICE));
    printf("  'BTH_QUERY_SERVICE': %zu,\n", sizeof(BTH_QUERY_SERVICE));
    printf("  'BTH_RADIO_IN_RANGE': %zu,\n", sizeof(BTH_RADIO_IN_RANGE));
    printf("  'BTH_SET_SERVICE': %zu,\n", sizeof(BTH_SET_SERVICE));
    printf("  'BY_HANDLE_FILE_INFORMATION': %zu,\n", sizeof(BY_HANDLE_FILE_INFORMATION));
    printf("  'CACHE_DESCRIPTOR': %zu,\n", sizeof(CACHE_DESCRIPTOR));
    printf("  'CBTACTIVATESTRUCT': %zu,\n", sizeof(CBTACTIVATESTRUCT));
    printf("  'CBT_CREATEWND': %zu,\n", sizeof(CBT_CREATEWNDW));
    printf("  'CHANGEFILTERSTRUCT': %zu,\n", sizeof(CHANGEFILTERSTRUCT));
    printf("  'CHAR_INFO': %zu,\n", sizeof(CHAR_INFO));
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
    printf("  'CREATEFILE2_EXTENDED_PARAMETERS': %zu,\n", sizeof(CREATEFILE2_EXTENDED_PARAMETERS));
    printf("  'CREATESTRUCT': %zu,\n", sizeof(CREATESTRUCTW));
    printf("  'CREDENTIAL': %zu,\n", sizeof(CREDENTIALW));
    printf("  'CREDENTIAL_ATTRIBUTE': %zu,\n", sizeof(CREDENTIAL_ATTRIBUTEW));
    printf("  'CRYPTPROTECT_PROMPTSTRUCT': %zu,\n", sizeof(CRYPTPROTECT_PROMPTSTRUCT));
    printf("  'CRYPT_INTEGER_BLOB': %zu,\n", sizeof(CRYPT_INTEGER_BLOB));
    printf("  'CURSORINFO': %zu,\n", sizeof(CURSORINFO));
    printf("  'CWPRETSTRUCT': %zu,\n", sizeof(CWPRETSTRUCT));
    printf("  'CWPSTRUCT': %zu,\n", sizeof(CWPSTRUCT));
    printf("  'CY': %zu,\n", sizeof(CY));
    printf("  'DCB': %zu,\n", sizeof(DCB));
    printf("  'DEBUGHOOKINFO': %zu,\n", sizeof(DEBUGHOOKINFO));
    printf("  'DECIMAL': %zu,\n", sizeof(DECIMAL));
    printf("  'DESIGNVECTOR': %zu,\n", sizeof(DESIGNVECTOR));
    printf("  'DEVMODE': %zu,\n", sizeof(DEVMODEW));
    printf("  'DIBSECTION': %zu,\n", sizeof(DIBSECTION));
    printf("  'DISK_EXTENT': %zu,\n", sizeof(DISK_EXTENT));
    printf("  'DISK_GEOMETRY': %zu,\n", sizeof(DISK_GEOMETRY));
    printf("  'DISK_GEOMETRY_EX': %zu,\n", sizeof(DISK_GEOMETRY_EX));
    printf("  'DISPLAYCONFIG_2DREGION': %zu,\n", sizeof(DISPLAYCONFIG_2DREGION));
    printf("  'DISPLAYCONFIG_DESKTOP_IMAGE_INFO': %zu,\n", sizeof(DISPLAYCONFIG_DESKTOP_IMAGE_INFO));
    printf("  'DISPLAYCONFIG_DEVICE_INFO_HEADER': %zu,\n", sizeof(DISPLAYCONFIG_DEVICE_INFO_HEADER));
    printf("  'DISPLAYCONFIG_MODE_INFO': %zu,\n", sizeof(DISPLAYCONFIG_MODE_INFO));
    printf("  'DISPLAYCONFIG_PATH_INFO': %zu,\n", sizeof(DISPLAYCONFIG_PATH_INFO));
    printf("  'DISPLAYCONFIG_PATH_SOURCE_INFO': %zu,\n", sizeof(DISPLAYCONFIG_PATH_SOURCE_INFO));
    printf("  'DISPLAYCONFIG_PATH_TARGET_INFO': %zu,\n", sizeof(DISPLAYCONFIG_PATH_TARGET_INFO));
    printf("  'DISPLAYCONFIG_RATIONAL': %zu,\n", sizeof(DISPLAYCONFIG_RATIONAL));
    printf("  'DISPLAYCONFIG_SOURCE_MODE': %zu,\n", sizeof(DISPLAYCONFIG_SOURCE_MODE));
    printf("  'DISPLAYCONFIG_TARGET_MODE': %zu,\n", sizeof(DISPLAYCONFIG_TARGET_MODE));
    printf("  'DISPLAYCONFIG_VIDEO_SIGNAL_INFO': %zu,\n", sizeof(DISPLAYCONFIG_VIDEO_SIGNAL_INFO));
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
    printf("  'ELEMDESC': %zu,\n", sizeof(ELEMDESC));
    printf("  'ENUMLOGFONTEX': %zu,\n", sizeof(ENUMLOGFONTEXW));
    printf("  'ENUM_PAGE_FILE_INFORMATION': %zu,\n", sizeof(ENUM_PAGE_FILE_INFORMATION));
    printf("  'EVENTMSG': %zu,\n", sizeof(EVENTMSG));
    printf("  'EXCEPINFO': %zu,\n", sizeof(EXCEPINFO));
    printf("  'FD_SET': %zu,\n", sizeof(FD_SET));
    printf("  'FILETIME': %zu,\n", sizeof(FILETIME));
    printf("  'FILE_SEGMENT_ELEMENT': %zu,\n", sizeof(FILE_SEGMENT_ELEMENT));
    printf("  'FINDREPLACE': %zu,\n", sizeof(FINDREPLACEW));
    printf("  'FOCUS_EVENT_RECORD': %zu,\n", sizeof(FOCUS_EVENT_RECORD));
    printf("  'FUNCDESC': %zu,\n", sizeof(FUNCDESC));
    printf("  'GESTURECONFIG': %zu,\n", sizeof(GESTURECONFIG));
    printf("  'GESTUREINFO': %zu,\n", sizeof(GESTUREINFO));
    printf("  'GESTURENOTIFYSTRUCT': %zu,\n", sizeof(GESTURENOTIFYSTRUCT));
    printf("  'GUITHREADINFO': %zu,\n", sizeof(GUITHREADINFO));
    printf("  'HARDWAREINPUT': %zu,\n", sizeof(HARDWAREINPUT));
    printf("  'HOSTENT': %zu,\n", sizeof(HOSTENT));
    printf("  'ICONINFO': %zu,\n", sizeof(ICONINFO));
    printf("  'ICONINFOEX': %zu,\n", sizeof(ICONINFOEXW));
    printf("  'IDLDESC': %zu,\n", sizeof(IDLDESC));
    printf("  'INITCOMMONCONTROLSEX': %zu,\n", sizeof(INITCOMMONCONTROLSEX));
    printf("  'INPUT': %zu,\n", sizeof(INPUT));
    printf("  'INPUT_RECORD': %zu,\n", sizeof(INPUT_RECORD));
    printf("  'INPUT_TRANSFORM': %zu,\n", sizeof(INPUT_TRANSFORM));
    printf("  'IN_ADDR': %zu,\n", sizeof(IN_ADDR));
    printf("  'IP_ADAPTER_ADDRESSES_LH': %zu,\n", sizeof(IP_ADAPTER_ADDRESSES_LH));
    printf("  'IP_ADAPTER_ANYCAST_ADDRESS_XP': %zu,\n", sizeof(IP_ADAPTER_ANYCAST_ADDRESS_XP));
    printf("  'IP_ADAPTER_DNS_SERVER_ADDRESS_XP': %zu,\n", sizeof(IP_ADAPTER_DNS_SERVER_ADDRESS_XP));
    printf("  'IP_ADAPTER_DNS_SUFFIX': %zu,\n", sizeof(IP_ADAPTER_DNS_SUFFIX));
    printf("  'IP_ADAPTER_GATEWAY_ADDRESS_LH': %zu,\n", sizeof(IP_ADAPTER_GATEWAY_ADDRESS_LH));
    printf("  'IP_ADAPTER_INDEX_MAP': %zu,\n", sizeof(IP_ADAPTER_INDEX_MAP));
    printf("  'IP_ADAPTER_MULTICAST_ADDRESS_XP': %zu,\n", sizeof(IP_ADAPTER_MULTICAST_ADDRESS_XP));
    printf("  'IP_ADAPTER_PREFIX_XP': %zu,\n", sizeof(IP_ADAPTER_PREFIX_XP));
    printf("  'IP_ADAPTER_UNICAST_ADDRESS_LH': %zu,\n", sizeof(IP_ADAPTER_UNICAST_ADDRESS_LH));
    printf("  'IP_ADAPTER_WINS_SERVER_ADDRESS_LH': %zu,\n", sizeof(IP_ADAPTER_WINS_SERVER_ADDRESS_LH));
    printf("  'IP_ADDRESS_STRING': %zu,\n", sizeof(IP_ADDRESS_STRING));
    printf("  'IP_ADDR_STRING': %zu,\n", sizeof(IP_ADDR_STRING));
    printf("  'IP_INTERFACE_INFO': %zu,\n", sizeof(IP_INTERFACE_INFO));
    printf("  'IP_PER_ADAPTER_INFO_W2KSP1': %zu,\n", sizeof(IP_PER_ADAPTER_INFO_W2KSP1));
    printf("  'ITEMIDLIST': %zu,\n", sizeof(ITEMIDLIST));
    printf("  'JOB_INFO_1': %zu,\n", sizeof(JOB_INFO_1W));
    printf("  'KBDLLHOOKSTRUCT': %zu,\n", sizeof(KBDLLHOOKSTRUCT));
    printf("  'KEYBDINPUT': %zu,\n", sizeof(KEYBDINPUT));
    printf("  'KEY_EVENT_RECORD': %zu,\n", sizeof(KEY_EVENT_RECORD));
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
    printf("  'MEMORYSTATUSEX': %zu,\n", sizeof(MEMORYSTATUSEX));
    printf("  'MEMORY_BASIC_INFORMATION': %zu,\n", sizeof(MEMORY_BASIC_INFORMATION));
    printf("  'MENUINFO': %zu,\n", sizeof(MENUINFO));
    printf("  'MENUITEMINFO': %zu,\n", sizeof(MENUITEMINFOW));
    printf("  'MENUITEMTEMPLATE': %zu,\n", sizeof(MENUITEMTEMPLATE));
    printf("  'MENUITEMTEMPLATEHEADER': %zu,\n", sizeof(MENUITEMTEMPLATEHEADER));
    printf("  'MENU_EVENT_RECORD': %zu,\n", sizeof(MENU_EVENT_RECORD));
    printf("  'METAFILEPICT': %zu,\n", sizeof(METAFILEPICT));
    printf("  'MIDIEVENT': %zu,\n", sizeof(MIDIEVENT));
    printf("  'MIDIHDR': %zu,\n", sizeof(MIDIHDR));
    printf("  'MIDIINCAPS': %zu,\n", sizeof(MIDIINCAPSW));
    printf("  'MIDIOUTCAPS': %zu,\n", sizeof(MIDIOUTCAPSW));
    printf("  'MIDIPROPTEMPO': %zu,\n", sizeof(MIDIPROPTEMPO));
    printf("  'MIDIPROPTIMEDIV': %zu,\n", sizeof(MIDIPROPTIMEDIV));
    printf("  'MIDISTRMBUFFVER': %zu,\n", sizeof(MIDISTRMBUFFVER));
    printf("  'MINMAXINFO': %zu,\n", sizeof(MINMAXINFO));
    printf("  'MMTIME': %zu,\n", sizeof(MMTIME));
    printf("  'MODEMDEVCAPS': %zu,\n", sizeof(MODEMDEVCAPS));
    printf("  'MODEMSETTINGS': %zu,\n", sizeof(MODEMSETTINGS));
    printf("  'MODLOAD_DATA': %zu,\n", sizeof(MODLOAD_DATA));
    printf("  'MODULEINFO': %zu,\n", sizeof(MODULEINFO));
    printf("  'MONITORINFO': %zu,\n", sizeof(MONITORINFO));
    printf("  'MOUSEHOOKSTRUCT': %zu,\n", sizeof(MOUSEHOOKSTRUCT));
    printf("  'MOUSEHOOKSTRUCTEX': %zu,\n", sizeof(MOUSEHOOKSTRUCTEX));
    printf("  'MOUSEINPUT': %zu,\n", sizeof(MOUSEINPUT));
    printf("  'MOUSEMOVEPOINT': %zu,\n", sizeof(MOUSEMOVEPOINT));
    printf("  'MOUSE_EVENT_RECORD': %zu,\n", sizeof(MOUSE_EVENT_RECORD));
    printf("  'MSG': %zu,\n", sizeof(MSG));
    printf("  'MSLLHOOKSTRUCT': %zu,\n", sizeof(MSLLHOOKSTRUCT));
    printf("  'NCCALCSIZE_PARAMS': %zu,\n", sizeof(NCCALCSIZE_PARAMS));
    printf("  'NDIS_OBJECT_HEADER': %zu,\n", sizeof(NDIS_OBJECT_HEADER));
    printf("  'NET_LUID_LH': %zu,\n", sizeof(NET_LUID_LH));
    printf("  'NEWTEXTMETRIC': %zu,\n", sizeof(NEWTEXTMETRICW));
    printf("  'NLM_SIMULATED_PROFILE_INFO': %zu,\n", sizeof(NLM_SIMULATED_PROFILE_INFO));
    printf("  'NONCLIENTMETRICS': %zu,\n", sizeof(NONCLIENTMETRICSW));
    printf("  'NOTIFYICONDATA': %zu,\n", sizeof(NOTIFYICONDATAW));
    printf("  'OPENCARDNAME': %zu,\n", sizeof(OPENCARDNAMEW));
    printf("  'OPENCARDNAME_EX': %zu,\n", sizeof(OPENCARDNAME_EXW));
    printf("  'OPENCARD_SEARCH_CRITERIA': %zu,\n", sizeof(OPENCARD_SEARCH_CRITERIAW));
    printf("  'OPENFILENAME': %zu,\n", sizeof(OPENFILENAMEW));
    printf("  'OSVERSIONINFOEX': %zu,\n", sizeof(OSVERSIONINFOEXW));
    printf("  'OSVERSIONINFO': %zu,\n", sizeof(OSVERSIONINFOW));
    printf("  'OVERLAPPED': %zu,\n", sizeof(OVERLAPPED));
    printf("  'OVERLAPPED_ENTRY': %zu,\n", sizeof(OVERLAPPED_ENTRY));
    printf("  'PAINTSTRUCT': %zu,\n", sizeof(PAINTSTRUCT));
    printf("  'PALETTEENTRY': %zu,\n", sizeof(PALETTEENTRY));
    printf("  'PARAMDESC': %zu,\n", sizeof(PARAMDESC));
    printf("  'PARAMDESCEX': %zu,\n", sizeof(PARAMDESCEX));
    printf("  'PERFORMANCE_INFORMATION': %zu,\n", sizeof(PERFORMANCE_INFORMATION));
    printf("  'PHYSICAL_MONITOR': %zu,\n", sizeof(PHYSICAL_MONITOR));
    printf("  'POINT': %zu,\n", sizeof(POINT));
    printf("  'POINTER_INFO': %zu,\n", sizeof(POINTER_INFO));
    printf("  'POINTER_PEN_INFO': %zu,\n", sizeof(POINTER_PEN_INFO));
    printf("  'POINTER_TOUCH_INFO': %zu,\n", sizeof(POINTER_TOUCH_INFO));
    printf("  'POINTL': %zu,\n", sizeof(POINTL));
    printf("  'POINTS': %zu,\n", sizeof(POINTS));
    printf("  'POLYTEXT': %zu,\n", sizeof(POLYTEXTW));
    printf("  'PORT_INFO_1': %zu,\n", sizeof(PORT_INFO_1W));
    printf("  'PORT_INFO_2': %zu,\n", sizeof(PORT_INFO_2W));
    printf("  'POWERBROADCAST_SETTING': %zu,\n", sizeof(POWERBROADCAST_SETTING));
    printf("  'PRINTER_DEFAULTS': %zu,\n", sizeof(PRINTER_DEFAULTSW));
    printf("  'PRINTER_INFO_1': %zu,\n", sizeof(PRINTER_INFO_1W));
    printf("  'PRINTER_INFO_2': %zu,\n", sizeof(PRINTER_INFO_2W));
    printf("  'PRINTER_INFO_3': %zu,\n", sizeof(PRINTER_INFO_3));
    printf("  'PRINTER_INFO_4': %zu,\n", sizeof(PRINTER_INFO_4W));
    printf("  'PRINTER_INFO_5': %zu,\n", sizeof(PRINTER_INFO_5W));
    printf("  'PRINTER_INFO_6': %zu,\n", sizeof(PRINTER_INFO_6));
    printf("  'PRINTER_NOTIFY_INFO': %zu,\n", sizeof(PRINTER_NOTIFY_INFO));
    printf("  'PRINTER_NOTIFY_INFO_DATA': %zu,\n", sizeof(PRINTER_NOTIFY_INFO_DATA));
    printf("  'PRINTER_OPTIONS': %zu,\n", sizeof(PRINTER_OPTIONSW));
    printf("  'PRINT_EXECUTION_DATA': %zu,\n", sizeof(PRINT_EXECUTION_DATA));
    printf("  'PROCESS_HEAP_ENTRY': %zu,\n", sizeof(PROCESS_HEAP_ENTRY));
    printf("  'PROCESS_INFORMATION': %zu,\n", sizeof(PROCESS_INFORMATION));
    printf("  'PROPERTYKEY': %zu,\n", sizeof(PROPERTYKEY));
    printf("  'PROPSPEC': %zu,\n", sizeof(PROPSPEC));
    printf("  'PROTOENT': %zu,\n", sizeof(PROTOENT));
    printf("  'RAWHID': %zu,\n", sizeof(RAWHID));
    printf("  'RAWINPUT': %zu,\n", sizeof(RAWINPUT));
    printf("  'RAWINPUTDEVICE': %zu,\n", sizeof(RAWINPUTDEVICE));
    printf("  'RAWINPUTDEVICELIST': %zu,\n", sizeof(RAWINPUTDEVICELIST));
    printf("  'RAWINPUTHEADER': %zu,\n", sizeof(RAWINPUTHEADER));
    printf("  'RAWKEYBOARD': %zu,\n", sizeof(RAWKEYBOARD));
    printf("  'RAWMOUSE': %zu,\n", sizeof(RAWMOUSE));
    printf("  'RECT': %zu,\n", sizeof(RECT));
    printf("  'RECTL': %zu,\n", sizeof(RECTL));
    printf("  'RGBQUAD': %zu,\n", sizeof(RGBQUAD));
    printf("  'SAFEARRAY': %zu,\n", sizeof(SAFEARRAY));
    printf("  'SAFEARRAYBOUND': %zu,\n", sizeof(SAFEARRAYBOUND));
    printf("  'SCARD_ATRMASK': %zu,\n", sizeof(SCARD_ATRMASK));
    printf("  'SCARD_IO_REQUEST': %zu,\n", sizeof(SCARD_IO_REQUEST));
    printf("  'SCARD_READERSTATE': %zu,\n", sizeof(SCARD_READERSTATEW));
    printf("  'SCROLLBARINFO': %zu,\n", sizeof(SCROLLBARINFO));
    printf("  'SCROLLINFO': %zu,\n", sizeof(SCROLLINFO));
    printf("  'SDP_ELEMENT_DATA': %zu,\n", sizeof(SDP_ELEMENT_DATA));
    printf("  'SDP_LARGE_INTEGER_16': %zu,\n", sizeof(SDP_LARGE_INTEGER_16));
    printf("  'SDP_STRING_TYPE_DATA': %zu,\n", sizeof(SDP_STRING_TYPE_DATA));
    printf("  'SDP_ULARGE_INTEGER_16': %zu,\n", sizeof(SDP_ULARGE_INTEGER_16));
    printf("  'SECURITY_ATTRIBUTES': %zu,\n", sizeof(SECURITY_ATTRIBUTES));
    printf("  'SECURITY_DESCRIPTOR': %zu,\n", sizeof(SECURITY_DESCRIPTOR));
    printf("  'SERVENT': %zu,\n", sizeof(SERVENT));
    printf("  'SHELLEXECUTEINFO': %zu,\n", sizeof(SHELLEXECUTEINFOW));
    printf("  'SHELL_ITEM_RESOURCE': %zu,\n", sizeof(SHELL_ITEM_RESOURCE));
    printf("  'SHFILEINFO': %zu,\n", sizeof(SHFILEINFOW));
    printf("  'SHFILEOPSTRUCT': %zu,\n", sizeof(SHFILEOPSTRUCTW));
    printf("  'SHITEMID': %zu,\n", sizeof(SHITEMID));
    printf("  'SHQUERYRBINFO': %zu,\n", sizeof(SHQUERYRBINFO));
    printf("  'SIZE': %zu,\n", sizeof(SIZE));
    printf("  'SMALL_RECT': %zu,\n", sizeof(SMALL_RECT));
    printf("  'SOCKADDR': %zu,\n", sizeof(SOCKADDR));
    printf("  'SOCKADDR_BTH': %zu,\n", sizeof(SOCKADDR_BTH));
    printf("  'SOCKET_ADDRESS': %zu,\n", sizeof(SOCKET_ADDRESS));
    printf("  'SOLE_AUTHENTICATION_SERVICE': %zu,\n", sizeof(SOLE_AUTHENTICATION_SERVICE));
    printf("  'SPEVENT': %zu,\n", sizeof(SPEVENT));
    printf("  'SPEVENTSOURCEINFO': %zu,\n", sizeof(SPEVENTSOURCEINFO));
    printf("  'SPVOICESTATUS': %zu,\n", sizeof(SPVOICESTATUS));
    printf("  'SP_DEVICE_INTERFACE_DATA': %zu,\n", sizeof(SP_DEVICE_INTERFACE_DATA));
    printf("  'SP_DEVICE_INTERFACE_DETAIL_DATA_': %zu,\n", sizeof(SP_DEVICE_INTERFACE_DETAIL_DATA_W));
    printf("  'SP_DEVINFO_DATA': %zu,\n", sizeof(SP_DEVINFO_DATA));
    printf("  'STARTUPINFOEX': %zu,\n", sizeof(STARTUPINFOEXW));
    printf("  'STARTUPINFO': %zu,\n", sizeof(STARTUPINFOW));
    printf("  'STATPROPSETSTG': %zu,\n", sizeof(STATPROPSETSTG));
    printf("  'STATPROPSTG': %zu,\n", sizeof(STATPROPSTG));
    printf("  'STATSTG': %zu,\n", sizeof(STATSTG));
    printf("  'STORAGE_DEVICE_NUMBER': %zu,\n", sizeof(STORAGE_DEVICE_NUMBER));
    printf("  'STRRET': %zu,\n", sizeof(STRRET));
    printf("  'STYLESTRUCT': %zu,\n", sizeof(STYLESTRUCT));
    printf("  'SYMBOL_INFO': %zu,\n", sizeof(SYMBOL_INFOW));
    printf("  'SYSTEMTIME': %zu,\n", sizeof(SYSTEMTIME));
    printf("  'SYSTEM_BATTERY_STATE': %zu,\n", sizeof(SYSTEM_BATTERY_STATE));
    printf("  'SYSTEM_INFO': %zu,\n", sizeof(SYSTEM_INFO));
    printf("  'SYSTEM_LOGICAL_PROCESSOR_INFORMATION': %zu,\n", sizeof(SYSTEM_LOGICAL_PROCESSOR_INFORMATION));
    printf("  'SYSTEM_POWER_STATUS': %zu,\n", sizeof(SYSTEM_POWER_STATUS));
    printf("  'SdpAttributeRange': %zu,\n", sizeof(SdpAttributeRange));
    printf("  'SdpQueryUuid': %zu,\n", sizeof(SdpQueryUuid));
    printf("  'SdpQueryUuidUnion': %zu,\n", sizeof(SdpQueryUuidUnion));
    printf("  'TASKDIALOGCONFIG': %zu,\n", sizeof(TASKDIALOGCONFIG));
    printf("  'TASKDIALOG_BUTTON': %zu,\n", sizeof(TASKDIALOG_BUTTON));
    printf("  'TEXTMETRIC': %zu,\n", sizeof(TEXTMETRICW));
    printf("  'TIMEVAL': %zu,\n", sizeof(TIMEVAL));
    printf("  'TITLEBARINFO': %zu,\n", sizeof(TITLEBARINFO));
    printf("  'TITLEBARINFOEX': %zu,\n", sizeof(TITLEBARINFOEX));
    printf("  'TOKEN_APPCONTAINER_INFORMATION': %zu,\n", sizeof(TOKEN_APPCONTAINER_INFORMATION));
    printf("  'TOUCHINPUT': %zu,\n", sizeof(TOUCHINPUT));
    printf("  'TOUCHPREDICTIONPARAMETERS': %zu,\n", sizeof(TOUCHPREDICTIONPARAMETERS));
    printf("  'TPMPARAMS': %zu,\n", sizeof(TPMPARAMS));
    printf("  'TYPEATTR': %zu,\n", sizeof(TYPEATTR));
    printf("  'TYPEDESC': %zu,\n", sizeof(TYPEDESC));
    printf("  'UNSIGNED_RATIO': %zu,\n", sizeof(UNSIGNED_RATIO));
    printf("  'UPDATELAYEREDWINDOWINFO': %zu,\n", sizeof(UPDATELAYEREDWINDOWINFO));
    printf("  'VALENT': %zu,\n", sizeof(VALENTW));
    printf("  'VARDESC': %zu,\n", sizeof(VARDESC));
    printf("  'VOLUME_DISK_EXTENTS': %zu,\n", sizeof(VOLUME_DISK_EXTENTS));
    printf("  'VS_FIXEDFILEINFO': %zu,\n", sizeof(VS_FIXEDFILEINFO));
    printf("  'WAVEFORMATEX': %zu,\n", sizeof(WAVEFORMATEX));
    printf("  'WAVEFORMATEXTENSIBLE': %zu,\n", sizeof(WAVEFORMATEXTENSIBLE));
    printf("  'WAVEHDR': %zu,\n", sizeof(WAVEHDR));
    printf("  'WAVEOUTCAPS': %zu,\n", sizeof(WAVEOUTCAPSW));
    printf("  'WIN32_FIND_DATA': %zu,\n", sizeof(WIN32_FIND_DATAW));
    printf("  'WINDOWINFO': %zu,\n", sizeof(WINDOWINFO));
    printf("  'WINDOWPLACEMENT': %zu,\n", sizeof(WINDOWPLACEMENT));
    printf("  'WINDOWPOS': %zu,\n", sizeof(WINDOWPOS));
    printf("  'WINDOW_BUFFER_SIZE_RECORD': %zu,\n", sizeof(WINDOW_BUFFER_SIZE_RECORD));
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
    printf("  'WLAN_RAW_DATA_LIST': %zu,\n", sizeof(WLAN_RAW_DATA_LIST));
    printf("  'WLAN_SECURITY_ATTRIBUTES': %zu,\n", sizeof(WLAN_SECURITY_ATTRIBUTES));
    printf("  'WLAN_STATISTICS': %zu,\n", sizeof(WLAN_STATISTICS));
    printf("  'WNDCLASSEX': %zu,\n", sizeof(WNDCLASSEXW));
    printf("  'WNDCLASS': %zu,\n", sizeof(WNDCLASSW));
    printf("  'WTA_OPTIONS': %zu,\n", sizeof(WTA_OPTIONS));
    printf("  'XFORM': %zu,\n", sizeof(XFORM));
    printf("  'XINPUT_BATTERY_INFORMATION': %zu,\n", sizeof(XINPUT_BATTERY_INFORMATION));
    printf("  'XINPUT_CAPABILITIES': %zu,\n", sizeof(XINPUT_CAPABILITIES));
    printf("  'XINPUT_GAMEPAD': %zu,\n", sizeof(XINPUT_GAMEPAD));
    printf("  'XINPUT_KEYSTROKE': %zu,\n", sizeof(XINPUT_KEYSTROKE));
    printf("  'XINPUT_STATE': %zu,\n", sizeof(XINPUT_STATE));
    printf("  'XINPUT_VIBRATION': %zu,\n", sizeof(XINPUT_VIBRATION));
}
