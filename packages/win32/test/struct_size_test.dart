// Tests that Win32 structs are the right size.

@TestOn('windows')
library;

import 'dart:ffi';

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';
import 'package:win32/winsock2.dart';

void main() {
  group('Struct sizeOf', () {
    // Handwritten structs.
    test('ACCENT_POLICY', () {
      check(sizeOf<ACCENT_POLICY>()).equals(16);
    });
    test('GUID', () {
      check(sizeOf<GUID>()).equals(16);
    });
    test('WINDOWCOMPOSITIONATTRIBDATA ', () {
      check(sizeOf<WINDOWCOMPOSITIONATTRIBDATA>()).equals(24);
    });

    // Automatically generated structs.
    test('ACCEL', () {
      check(sizeOf<ACCEL>()).equals(6);
    });
    test('ACL', () {
      check(sizeOf<ACL>()).equals(8);
    });
    test('ACTCTX', () {
      check(sizeOf<ACTCTX>()).equals(56);
    });
    test('ADDJOB_INFO_1', () {
      check(sizeOf<ADDJOB_INFO_1>()).equals(16);
    });
    test('ADDRINFO', () {
      check(sizeOf<ADDRINFO>()).equals(48);
    });
    test('ALTTABINFO', () {
      check(sizeOf<ALTTABINFO>()).equals(40);
    });
    test('APPX_PACKAGE_SETTINGS', () {
      check(sizeOf<APPX_PACKAGE_SETTINGS>()).equals(16);
    });
    test('ARRAYDESC', () {
      check(sizeOf<ARRAYDESC>()).equals(32);
    });
    test('ASSEMBLYMETADATA', () {
      check(sizeOf<ASSEMBLYMETADATA>()).equals(56);
    });
    test('AudioClientProperties', () {
      check(sizeOf<AudioClientProperties>()).equals(16);
    });
    test('BIND_OPTS', () {
      check(sizeOf<BIND_OPTS>()).equals(16);
    });
    test('BITMAP', () {
      check(sizeOf<BITMAP>()).equals(32);
    });
    test('BITMAPFILEHEADER', () {
      check(sizeOf<BITMAPFILEHEADER>()).equals(14);
    });
    test('BITMAPINFO', () {
      check(sizeOf<BITMAPINFO>()).equals(44);
    });
    test('BITMAPINFOHEADER', () {
      check(sizeOf<BITMAPINFOHEADER>()).equals(40);
    });
    test('BLENDFUNCTION', () {
      check(sizeOf<BLENDFUNCTION>()).equals(4);
    });
    test('BLUETOOTH_ADDRESS', () {
      check(sizeOf<BLUETOOTH_ADDRESS>()).equals(8);
    });
    test('BLUETOOTH_AUTHENTICATE_RESPONSE', () {
      check(sizeOf<BLUETOOTH_AUTHENTICATE_RESPONSE>()).equals(48);
    });
    test('BLUETOOTH_AUTHENTICATION_CALLBACK_PARAMS', () {
      check(sizeOf<BLUETOOTH_AUTHENTICATION_CALLBACK_PARAMS>()).equals(576);
    });
    test('BLUETOOTH_COD_PAIRS', () {
      check(sizeOf<BLUETOOTH_COD_PAIRS>()).equals(16);
    });
    test('BLUETOOTH_DEVICE_INFO', () {
      check(sizeOf<BLUETOOTH_DEVICE_INFO>()).equals(560);
    });
    test('BLUETOOTH_DEVICE_SEARCH_PARAMS', () {
      check(sizeOf<BLUETOOTH_DEVICE_SEARCH_PARAMS>()).equals(40);
    });
    test('BLUETOOTH_FIND_RADIO_PARAMS', () {
      check(sizeOf<BLUETOOTH_FIND_RADIO_PARAMS>()).equals(4);
    });
    test('BLUETOOTH_GATT_VALUE_CHANGED_EVENT', () {
      check(sizeOf<BLUETOOTH_GATT_VALUE_CHANGED_EVENT>()).equals(24);
    });
    test('Struct BLUETOOTH_GATT_VALUE_CHANGED_EVENT_REGISTRATION', () {
      check(
        sizeOf<BLUETOOTH_GATT_VALUE_CHANGED_EVENT_REGISTRATION>(),
      ).equals(40);
    });
    test('BLUETOOTH_NUMERIC_COMPARISON_INFO', () {
      check(sizeOf<BLUETOOTH_NUMERIC_COMPARISON_INFO>()).equals(4);
    });
    test('BLUETOOTH_OOB_DATA_INFO', () {
      check(sizeOf<BLUETOOTH_OOB_DATA_INFO>()).equals(32);
    });
    test('BLUETOOTH_PASSKEY_INFO', () {
      check(sizeOf<BLUETOOTH_PASSKEY_INFO>()).equals(4);
    });
    test('BLUETOOTH_PIN_INFO', () {
      check(sizeOf<BLUETOOTH_PIN_INFO>()).equals(17);
    });
    test('BLUETOOTH_RADIO_INFO', () {
      check(sizeOf<BLUETOOTH_RADIO_INFO>()).equals(520);
    });
    test('BLUETOOTH_SELECT_DEVICE_PARAMS', () {
      check(sizeOf<BLUETOOTH_SELECT_DEVICE_PARAMS>()).equals(88);
    });
    test('BSMINFO', () {
      check(sizeOf<BSMINFO>()).equals(32);
    });
    test('BTH_DEVICE_INFO', () {
      check(sizeOf<BTH_DEVICE_INFO>()).equals(272);
    });
    test('BTH_HCI_EVENT_INFO', () {
      check(sizeOf<BTH_HCI_EVENT_INFO>()).equals(16);
    });
    test('BTH_L2CAP_EVENT_INFO', () {
      check(sizeOf<BTH_L2CAP_EVENT_INFO>()).equals(16);
    });
    test('BTH_LE_GATT_CHARACTERISTIC', () {
      check(sizeOf<BTH_LE_GATT_CHARACTERISTIC>()).equals(36);
    });
    test('BTH_LE_GATT_CHARACTERISTIC_VALUE', () {
      check(sizeOf<BTH_LE_GATT_CHARACTERISTIC_VALUE>()).equals(8);
    });
    test('BTH_LE_GATT_DESCRIPTOR', () {
      check(sizeOf<BTH_LE_GATT_DESCRIPTOR>()).equals(32);
    });
    test('BTH_LE_GATT_DESCRIPTOR_VALUE', () {
      check(sizeOf<BTH_LE_GATT_DESCRIPTOR_VALUE>()).equals(80);
    });
    test('BTH_LE_GATT_SERVICE', () {
      check(sizeOf<BTH_LE_GATT_SERVICE>()).equals(24);
    });
    test('BTH_LE_UUID', () {
      check(sizeOf<BTH_LE_UUID>()).equals(20);
    });
    test('BTH_QUERY_DEVICE', () {
      check(sizeOf<BTH_QUERY_DEVICE>()).equals(5);
    });
    test('BTH_QUERY_SERVICE', () {
      check(sizeOf<BTH_QUERY_SERVICE>()).equals(256);
    });
    test('BTH_RADIO_IN_RANGE', () {
      check(sizeOf<BTH_RADIO_IN_RANGE>()).equals(280);
    });
    test('BTH_SET_SERVICE', () {
      check(sizeOf<BTH_SET_SERVICE>()).equals(45);
    });
    test('BY_HANDLE_FILE_INFORMATION', () {
      check(sizeOf<BY_HANDLE_FILE_INFORMATION>()).equals(52);
    });
    test('CACHE_DESCRIPTOR', () {
      check(sizeOf<CACHE_DESCRIPTOR>()).equals(12);
    });
    test('CBTACTIVATESTRUCT', () {
      check(sizeOf<CBTACTIVATESTRUCT>()).equals(16);
    });
    test('CBT_CREATEWND', () {
      check(sizeOf<CBT_CREATEWND>()).equals(16);
    });
    test('CERT_CONTEXT', () {
      check(sizeOf<CERT_CONTEXT>()).equals(40);
    });
    test('CERT_EXTENSION', () {
      check(sizeOf<CERT_EXTENSION>()).equals(32);
    });
    test('CERT_INFO', () {
      check(sizeOf<CERT_INFO>()).equals(208);
    });
    test('CERT_PUBLIC_KEY_INFO', () {
      check(sizeOf<CERT_PUBLIC_KEY_INFO>()).equals(48);
    });
    test('CHANGEFILTERSTRUCT', () {
      check(sizeOf<CHANGEFILTERSTRUCT>()).equals(8);
    });
    test('CHAR_INFO', () {
      check(sizeOf<CHAR_INFO>()).equals(4);
    });
    test('CHOOSECOLOR', () {
      check(sizeOf<CHOOSECOLOR>()).equals(72);
    });
    test('CHOOSEFONT', () {
      check(sizeOf<CHOOSEFONT>()).equals(104);
    });
    test('CLIENT_ID', () {
      check(sizeOf<CLIENT_ID>()).equals(16);
    });
    test('COLORADJUSTMENT', () {
      check(sizeOf<COLORADJUSTMENT>()).equals(24);
    });
    test('COMDLG_FILTERSPEC', () {
      check(sizeOf<COMDLG_FILTERSPEC>()).equals(16);
    });
    test('COMMCONFIG', () {
      check(sizeOf<COMMCONFIG>()).equals(52);
    });
    test('COMMPROP', () {
      check(sizeOf<COMMPROP>()).equals(64);
    });
    test('COMMTIMEOUTS', () {
      check(sizeOf<COMMTIMEOUTS>()).equals(20);
    });
    test('COMSTAT', () {
      check(sizeOf<COMSTAT>()).equals(12);
    });
    test('CONSOLE_CURSOR_INFO', () {
      check(sizeOf<CONSOLE_CURSOR_INFO>()).equals(8);
    });
    test('CONSOLE_READCONSOLE_CONTROL', () {
      check(sizeOf<CONSOLE_READCONSOLE_CONTROL>()).equals(16);
    });
    test('CONSOLE_SCREEN_BUFFER_INFO', () {
      check(sizeOf<CONSOLE_SCREEN_BUFFER_INFO>()).equals(22);
    });
    test('CONSOLE_SELECTION_INFO', () {
      check(sizeOf<CONSOLE_SELECTION_INFO>()).equals(16);
    });
    test('COORD', () {
      check(sizeOf<COORD>()).equals(4);
    });
    test('COR_FIELD_OFFSET', () {
      check(sizeOf<COR_FIELD_OFFSET>()).equals(8);
    });
    test('CREATEFILE2_EXTENDED_PARAMETERS', () {
      check(sizeOf<CREATEFILE2_EXTENDED_PARAMETERS>()).equals(32);
    });
    test('CREATESTRUCT', () {
      check(sizeOf<CREATESTRUCT>()).equals(80);
    });
    test('CREDENTIAL', () {
      check(sizeOf<CREDENTIAL>()).equals(80);
    });
    test('CREDENTIAL_ATTRIBUTE', () {
      check(sizeOf<CREDENTIAL_ATTRIBUTE>()).equals(24);
    });
    test('CRYPTPROTECT_PROMPTSTRUCT', () {
      check(sizeOf<CRYPTPROTECT_PROMPTSTRUCT>()).equals(24);
    });
    test('CRYPT_ALGORITHM_IDENTIFIER', () {
      check(sizeOf<CRYPT_ALGORITHM_IDENTIFIER>()).equals(24);
    });
    test('CRYPT_BIT_BLOB', () {
      check(sizeOf<CRYPT_BIT_BLOB>()).equals(24);
    });
    test('CRYPT_INTEGER_BLOB', () {
      check(sizeOf<CRYPT_INTEGER_BLOB>()).equals(16);
    });
    test('CURSORINFO', () {
      check(sizeOf<CURSORINFO>()).equals(24);
    });
    test('CWPRETSTRUCT', () {
      check(sizeOf<CWPRETSTRUCT>()).equals(40);
    });
    test('CWPSTRUCT', () {
      check(sizeOf<CWPSTRUCT>()).equals(32);
    });
    test('CY', () {
      check(sizeOf<CY>()).equals(8);
    });
    test('DCB', () {
      check(sizeOf<DCB>()).equals(28);
    });
    test('DEBUGHOOKINFO', () {
      check(sizeOf<DEBUGHOOKINFO>()).equals(32);
    });
    test('DECIMAL', () {
      check(sizeOf<DECIMAL>()).equals(16);
    });
    test('DESIGNVECTOR', () {
      check(sizeOf<DESIGNVECTOR>()).equals(72);
    });
    test('DEVMODE', () {
      check(sizeOf<DEVMODE>()).equals(220);
    });
    test('DIBSECTION', () {
      check(sizeOf<DIBSECTION>()).equals(104);
    });
    test('DISK_EXTENT', () {
      check(sizeOf<DISK_EXTENT>()).equals(24);
    });
    test('DISK_GEOMETRY', () {
      check(sizeOf<DISK_GEOMETRY>()).equals(24);
    });
    test('DISK_GEOMETRY_EX', () {
      check(sizeOf<DISK_GEOMETRY_EX>()).equals(40);
    });
    test('DISPLAYCONFIG_2DREGION', () {
      check(sizeOf<DISPLAYCONFIG_2DREGION>()).equals(8);
    });
    test('DISPLAYCONFIG_DESKTOP_IMAGE_INFO', () {
      check(sizeOf<DISPLAYCONFIG_DESKTOP_IMAGE_INFO>()).equals(40);
    });
    test('DISPLAYCONFIG_DEVICE_INFO_HEADER', () {
      check(sizeOf<DISPLAYCONFIG_DEVICE_INFO_HEADER>()).equals(20);
    });
    test('DISPLAYCONFIG_MODE_INFO', () {
      check(sizeOf<DISPLAYCONFIG_MODE_INFO>()).equals(64);
    });
    test('DISPLAYCONFIG_PATH_INFO', () {
      check(sizeOf<DISPLAYCONFIG_PATH_INFO>()).equals(72);
    });
    test('DISPLAYCONFIG_PATH_SOURCE_INFO', () {
      check(sizeOf<DISPLAYCONFIG_PATH_SOURCE_INFO>()).equals(20);
    });
    test('DISPLAYCONFIG_PATH_TARGET_INFO', () {
      check(sizeOf<DISPLAYCONFIG_PATH_TARGET_INFO>()).equals(48);
    });
    test('DISPLAYCONFIG_RATIONAL', () {
      check(sizeOf<DISPLAYCONFIG_RATIONAL>()).equals(8);
    });
    test('DISPLAYCONFIG_SOURCE_MODE', () {
      check(sizeOf<DISPLAYCONFIG_SOURCE_MODE>()).equals(20);
    });
    test('DISPLAYCONFIG_TARGET_MODE', () {
      check(sizeOf<DISPLAYCONFIG_TARGET_MODE>()).equals(48);
    });
    test('DISPLAYCONFIG_VIDEO_SIGNAL_INFO', () {
      check(sizeOf<DISPLAYCONFIG_VIDEO_SIGNAL_INFO>()).equals(48);
    });
    test('DISPLAY_DEVICE', () {
      check(sizeOf<DISPLAY_DEVICE>()).equals(840);
    });
    test('DISPPARAMS', () {
      check(sizeOf<DISPPARAMS>()).equals(24);
    });
    test('DLGITEMTEMPLATE', () {
      check(sizeOf<DLGITEMTEMPLATE>()).equals(18);
    });
    test('DLGTEMPLATE', () {
      check(sizeOf<DLGTEMPLATE>()).equals(18);
    });
    test('DLLVERSIONINFO', () {
      check(sizeOf<DLLVERSIONINFO>()).equals(20);
    });
    test('DOC_INFO_1', () {
      check(sizeOf<DOC_INFO_1>()).equals(24);
    });
    test('DOT11_AUTH_CIPHER_PAIR', () {
      check(sizeOf<DOT11_AUTH_CIPHER_PAIR>()).equals(8);
    });
    test('DOT11_BSSID_LIST', () {
      check(sizeOf<DOT11_BSSID_LIST>()).equals(20);
    });
    test('DOT11_NETWORK', () {
      check(sizeOf<DOT11_NETWORK>()).equals(40);
    });
    test('DOT11_NETWORK_LIST', () {
      check(sizeOf<DOT11_NETWORK_LIST>()).equals(48);
    });
    test('DOT11_SSID', () {
      check(sizeOf<DOT11_SSID>()).equals(36);
    });
    test('DRAWTEXTPARAMS', () {
      check(sizeOf<DRAWTEXTPARAMS>()).equals(20);
    });
    test('DSREG_JOIN_INFO', () {
      check(sizeOf<DSREG_JOIN_INFO>()).equals(96);
    });
    test('DSREG_USER_INFO', () {
      check(sizeOf<DSREG_USER_INFO>()).equals(24);
    });
    test('DTBGOPTS', () {
      check(sizeOf<DTBGOPTS>()).equals(24);
    });
    test('DTTOPTS', () {
      check(sizeOf<DTTOPTS>()).equals(72);
    });
    test('DWM_BLURBEHIND', () {
      check(sizeOf<DWM_BLURBEHIND>()).equals(20);
    });
    test('EAP_METHOD_TYPE', () {
      check(sizeOf<EAP_METHOD_TYPE>()).equals(16);
    });
    test('EAP_TYPE', () {
      check(sizeOf<EAP_TYPE>()).equals(12);
    });
    test('ELEMDESC', () {
      check(sizeOf<ELEMDESC>()).equals(32);
    });
    test('ENUMLOGFONTEX', () {
      check(sizeOf<ENUMLOGFONTEX>()).equals(348);
    });
    test('ENUM_PAGE_FILE_INFORMATION', () {
      check(sizeOf<ENUM_PAGE_FILE_INFORMATION>()).equals(32);
    });
    test('ENUM_SERVICE_STATUS', () {
      check(sizeOf<ENUM_SERVICE_STATUS>()).equals(48);
    });
    test('ENUM_SERVICE_STATUS_PROCESS', () {
      check(sizeOf<ENUM_SERVICE_STATUS_PROCESS>()).equals(56);
    });
    test('EVENTMSG', () {
      check(sizeOf<EVENTMSG>()).equals(24);
    });
    test('EXCEPINFO', () {
      check(sizeOf<EXCEPINFO>()).equals(64);
    });
    test('ExtendedProperty', () {
      check(sizeOf<ExtendedProperty>()).equals(16);
    });
    test('FD_SET', () {
      check(sizeOf<FD_SET>()).equals(520);
    });
    test('FILETIME', () {
      check(sizeOf<FILETIME>()).equals(8);
    });
    test('FILE_SEGMENT_ELEMENT', () {
      check(sizeOf<FILE_SEGMENT_ELEMENT>()).equals(8);
    });
    test('FINDREPLACE', () {
      check(sizeOf<FINDREPLACE>()).equals(80);
    });
    test('FOCUS_EVENT_RECORD', () {
      check(sizeOf<FOCUS_EVENT_RECORD>()).equals(4);
    });
    test('FUNCDESC', () {
      check(sizeOf<FUNCDESC>()).equals(88);
    });
    test('GESTURECONFIG', () {
      check(sizeOf<GESTURECONFIG>()).equals(12);
    });
    test('GESTUREINFO', () {
      check(sizeOf<GESTUREINFO>()).equals(56);
    });
    test('GESTURENOTIFYSTRUCT', () {
      check(sizeOf<GESTURENOTIFYSTRUCT>()).equals(24);
    });
    test('GUITHREADINFO', () {
      check(sizeOf<GUITHREADINFO>()).equals(72);
    });
    test('HARDWAREINPUT', () {
      check(sizeOf<HARDWAREINPUT>()).equals(8);
    });
    test('HOSTENT', () {
      check(sizeOf<HOSTENT>()).equals(32);
    });
    test('HWAVEIN', () {
      check(sizeOf<HWAVEIN>()).equals(8);
    });
    test('ICONINFO', () {
      check(sizeOf<ICONINFO>()).equals(32);
    });
    test('ICONINFOEX', () {
      check(sizeOf<ICONINFOEX>()).equals(1080);
    });
    test('IDLDESC', () {
      check(sizeOf<IDLDESC>()).equals(16);
    });
    test('INITCOMMONCONTROLSEX', () {
      check(sizeOf<INITCOMMONCONTROLSEX>()).equals(8);
    });
    test('INPUT', () {
      check(sizeOf<INPUT>()).equals(40);
    });
    test('INPUT_RECORD', () {
      check(sizeOf<INPUT_RECORD>()).equals(20);
    });
    test('INPUT_TRANSFORM', () {
      check(sizeOf<INPUT_TRANSFORM>()).equals(64);
    });
    test('IN_ADDR', () {
      check(sizeOf<IN_ADDR>()).equals(4);
    });
    test('IP_ADAPTER_ADDRESSES_LH', () {
      check(sizeOf<IP_ADAPTER_ADDRESSES_LH>()).equals(448);
    });
    test('IP_ADAPTER_ANYCAST_ADDRESS_XP', () {
      check(sizeOf<IP_ADAPTER_ANYCAST_ADDRESS_XP>()).equals(32);
    });
    test('IP_ADAPTER_DNS_SERVER_ADDRESS_XP', () {
      check(sizeOf<IP_ADAPTER_DNS_SERVER_ADDRESS_XP>()).equals(32);
    });
    test('IP_ADAPTER_DNS_SUFFIX', () {
      check(sizeOf<IP_ADAPTER_DNS_SUFFIX>()).equals(520);
    });
    test('IP_ADAPTER_GATEWAY_ADDRESS_LH', () {
      check(sizeOf<IP_ADAPTER_GATEWAY_ADDRESS_LH>()).equals(32);
    });
    test('IP_ADAPTER_INDEX_MAP', () {
      check(sizeOf<IP_ADAPTER_INDEX_MAP>()).equals(260);
    });
    test('IP_ADAPTER_MULTICAST_ADDRESS_XP', () {
      check(sizeOf<IP_ADAPTER_MULTICAST_ADDRESS_XP>()).equals(32);
    });
    test('IP_ADAPTER_PREFIX_XP', () {
      check(sizeOf<IP_ADAPTER_PREFIX_XP>()).equals(40);
    });
    test('IP_ADAPTER_UNICAST_ADDRESS_LH', () {
      check(sizeOf<IP_ADAPTER_UNICAST_ADDRESS_LH>()).equals(64);
    });
    test('IP_ADAPTER_WINS_SERVER_ADDRESS_LH', () {
      check(sizeOf<IP_ADAPTER_WINS_SERVER_ADDRESS_LH>()).equals(32);
    });
    test('IP_ADDRESS_STRING', () {
      check(sizeOf<IP_ADDRESS_STRING>()).equals(16);
    });
    test('IP_ADDR_STRING', () {
      check(sizeOf<IP_ADDR_STRING>()).equals(48);
    });
    test('IP_INTERFACE_INFO', () {
      check(sizeOf<IP_INTERFACE_INFO>()).equals(264);
    });
    test('IP_PER_ADAPTER_INFO_W2KSP1', () {
      check(sizeOf<IP_PER_ADAPTER_INFO_W2KSP1>()).equals(64);
    });
    test('ITEMIDLIST', () {
      check(sizeOf<ITEMIDLIST>()).equals(3);
    });
    test('JOBOBJECT_IO_RATE_CONTROL_INFORMATION', () {
      check(sizeOf<JOBOBJECT_IO_RATE_CONTROL_INFORMATION>()).equals(40);
    });
    test('JOB_INFO_1', () {
      check(sizeOf<JOB_INFO_1>()).equals(96);
    });
    test('KBDLLHOOKSTRUCT', () {
      check(sizeOf<KBDLLHOOKSTRUCT>()).equals(24);
    });
    test('KEYBDINPUT', () {
      check(sizeOf<KEYBDINPUT>()).equals(24);
    });
    test('KEY_EVENT_RECORD', () {
      check(sizeOf<KEY_EVENT_RECORD>()).equals(16);
    });
    test('KNOWNFOLDER_DEFINITION', () {
      check(sizeOf<KNOWNFOLDER_DEFINITION>()).equals(112);
    });
    test('L2_NOTIFICATION_DATA', () {
      check(sizeOf<L2_NOTIFICATION_DATA>()).equals(40);
    });
    test('LASTINPUTINFO', () {
      check(sizeOf<LASTINPUTINFO>()).equals(8);
    });
    test('LOGBRUSH', () {
      check(sizeOf<LOGBRUSH>()).equals(16);
    });
    test('LOGFONT', () {
      check(sizeOf<LOGFONT>()).equals(92);
    });
    test('LOGPALETTE', () {
      check(sizeOf<LOGPALETTE>()).equals(8);
    });
    test('LUID', () {
      check(sizeOf<LUID>()).equals(8);
    });
    test('MAGCOLOREFFECT', () {
      check(sizeOf<MAGCOLOREFFECT>()).equals(100);
    });
    test('MAGIMAGEHEADER', () {
      check(sizeOf<MAGIMAGEHEADER>()).equals(40);
    });
    test('MAGTRANSFORM', () {
      check(sizeOf<MAGTRANSFORM>()).equals(36);
    });
    test('MARGINS', () {
      check(sizeOf<MARGINS>()).equals(16);
    });
    test('MCI_OPEN_PARMS', () {
      check(sizeOf<MCI_OPEN_PARMS>()).equals(36);
    });
    test('MCI_PLAY_PARMS', () {
      check(sizeOf<MCI_PLAY_PARMS>()).equals(16);
    });
    test('MCI_SEEK_PARMS', () {
      check(sizeOf<MCI_SEEK_PARMS>()).equals(12);
    });
    test('MCI_STATUS_PARMS', () {
      check(sizeOf<MCI_STATUS_PARMS>()).equals(24);
    });
    test('MEMORYSTATUSEX', () {
      check(sizeOf<MEMORYSTATUSEX>()).equals(64);
    });
    test('MEMORY_BASIC_INFORMATION', () {
      check(sizeOf<MEMORY_BASIC_INFORMATION>()).equals(48);
    });
    test('MENUBARINFO', () {
      check(sizeOf<MENUBARINFO>()).equals(48);
    });
    test('MENUINFO', () {
      check(sizeOf<MENUINFO>()).equals(40);
    });
    test('MENUITEMINFO', () {
      check(sizeOf<MENUITEMINFO>()).equals(80);
    });
    test('MENUITEMTEMPLATE', () {
      check(sizeOf<MENUITEMTEMPLATE>()).equals(6);
    });
    test('MENUITEMTEMPLATEHEADER', () {
      check(sizeOf<MENUITEMTEMPLATEHEADER>()).equals(4);
    });
    test('MENU_EVENT_RECORD', () {
      check(sizeOf<MENU_EVENT_RECORD>()).equals(4);
    });
    test('METAFILEPICT', () {
      check(sizeOf<METAFILEPICT>()).equals(24);
    });
    test('MIDIEVENT', () {
      check(sizeOf<MIDIEVENT>()).equals(16);
    });
    test('MIDIHDR', () {
      check(sizeOf<MIDIHDR>()).equals(112);
    });
    test('MIDIINCAPS', () {
      check(sizeOf<MIDIINCAPS>()).equals(76);
    });
    test('MIDIOUTCAPS', () {
      check(sizeOf<MIDIOUTCAPS>()).equals(84);
    });
    test('MIDIPROPTEMPO', () {
      check(sizeOf<MIDIPROPTEMPO>()).equals(8);
    });
    test('MIDIPROPTIMEDIV', () {
      check(sizeOf<MIDIPROPTIMEDIV>()).equals(8);
    });
    test('MIDISTRMBUFFVER', () {
      check(sizeOf<MIDISTRMBUFFVER>()).equals(12);
    });
    test('MINMAXINFO', () {
      check(sizeOf<MINMAXINFO>()).equals(40);
    });
    test('MMTIME', () {
      check(sizeOf<MMTIME>()).equals(12);
    });
    test('MODEMDEVCAPS', () {
      check(sizeOf<MODEMDEVCAPS>()).equals(80);
    });
    test('MODEMSETTINGS', () {
      check(sizeOf<MODEMSETTINGS>()).equals(48);
    });
    test('MODLOAD_DATA', () {
      check(sizeOf<MODLOAD_DATA>()).equals(24);
    });
    test('MODULEINFO', () {
      check(sizeOf<MODULEINFO>()).equals(24);
    });
    test('MONITORINFO', () {
      check(sizeOf<MONITORINFO>()).equals(40);
    });
    test('MONITORINFOEX', () {
      check(sizeOf<MONITORINFOEX>()).equals(104);
    });
    test('MOUSEHOOKSTRUCT', () {
      check(sizeOf<MOUSEHOOKSTRUCT>()).equals(32);
    });
    test('MOUSEHOOKSTRUCTEX', () {
      check(sizeOf<MOUSEHOOKSTRUCTEX>()).equals(40);
    });
    test('MOUSEINPUT', () {
      check(sizeOf<MOUSEINPUT>()).equals(32);
    });
    test('MOUSEMOVEPOINT', () {
      check(sizeOf<MOUSEMOVEPOINT>()).equals(24);
    });
    test('MOUSE_EVENT_RECORD', () {
      check(sizeOf<MOUSE_EVENT_RECORD>()).equals(16);
    });
    test('MSG', () {
      check(sizeOf<MSG>()).equals(48);
    });
    test('MSLLHOOKSTRUCT', () {
      check(sizeOf<MSLLHOOKSTRUCT>()).equals(32);
    });
    test('NCCALCSIZE_PARAMS', () {
      check(sizeOf<NCCALCSIZE_PARAMS>()).equals(56);
    });
    test('NDIS_OBJECT_HEADER', () {
      check(sizeOf<NDIS_OBJECT_HEADER>()).equals(4);
    });
    test('NET_LUID_LH', () {
      check(sizeOf<NET_LUID_LH>()).equals(8);
    });
    test('NEWTEXTMETRIC', () {
      check(sizeOf<NEWTEXTMETRIC>()).equals(76);
    });
    test('NLM_SIMULATED_PROFILE_INFO', () {
      check(sizeOf<NLM_SIMULATED_PROFILE_INFO>()).equals(524);
    });
    test('NONCLIENTMETRICS', () {
      check(sizeOf<NONCLIENTMETRICS>()).equals(504);
    });
    test('NOTIFYICONDATA', () {
      check(sizeOf<NOTIFYICONDATA>()).equals(976);
    });
    test('OPENCARDNAME', () {
      check(sizeOf<OPENCARDNAME>()).equals(176);
    });
    test('OPENCARDNAME_EX', () {
      check(sizeOf<OPENCARDNAME_EX>()).equals(128);
    });
    test('OPENCARD_SEARCH_CRITERIA', () {
      check(sizeOf<OPENCARD_SEARCH_CRITERIA>()).equals(96);
    });
    test('OPENFILENAME', () {
      check(sizeOf<OPENFILENAME>()).equals(152);
    });
    test('OSINFO', () {
      check(sizeOf<OSINFO>()).equals(12);
    });
    test('OSVERSIONINFOEX', () {
      check(sizeOf<OSVERSIONINFOEX>()).equals(284);
    });
    test('OSVERSIONINFO', () {
      check(sizeOf<OSVERSIONINFO>()).equals(276);
    });
    test('OVERLAPPED', () {
      check(sizeOf<OVERLAPPED>()).equals(32);
    });
    test('OVERLAPPED_ENTRY', () {
      check(sizeOf<OVERLAPPED_ENTRY>()).equals(32);
    });
    test('PAINTSTRUCT', () {
      check(sizeOf<PAINTSTRUCT>()).equals(72);
    });
    test('PALETTEENTRY', () {
      check(sizeOf<PALETTEENTRY>()).equals(4);
    });
    test('PARAMDESC', () {
      check(sizeOf<PARAMDESC>()).equals(16);
    });
    test('PARAMDESCEX', () {
      check(sizeOf<PARAMDESCEX>()).equals(32);
    });
    test('PERFORMANCE_INFORMATION', () {
      check(sizeOf<PERFORMANCE_INFORMATION>()).equals(104);
    });
    test('PHYSICAL_MONITOR', () {
      check(sizeOf<PHYSICAL_MONITOR>()).equals(264);
    });
    test('POINT', () {
      check(sizeOf<POINT>()).equals(8);
    });
    test('POINTER_INFO', () {
      check(sizeOf<POINTER_INFO>()).equals(96);
    });
    test('POINTER_PEN_INFO', () {
      check(sizeOf<POINTER_PEN_INFO>()).equals(120);
    });
    test('POINTER_TOUCH_INFO', () {
      check(sizeOf<POINTER_TOUCH_INFO>()).equals(144);
    });
    test('POINTL', () {
      check(sizeOf<POINTL>()).equals(8);
    });
    test('POINTS', () {
      check(sizeOf<POINTS>()).equals(4);
    });
    test('POLYTEXT', () {
      check(sizeOf<POLYTEXT>()).equals(56);
    });
    test('PORT_INFO_1', () {
      check(sizeOf<PORT_INFO_1>()).equals(8);
    });
    test('PORT_INFO_2', () {
      check(sizeOf<PORT_INFO_2>()).equals(32);
    });
    test('POWERBROADCAST_SETTING', () {
      check(sizeOf<POWERBROADCAST_SETTING>()).equals(24);
    });
    test('PRINTER_DEFAULTS', () {
      check(sizeOf<PRINTER_DEFAULTS>()).equals(24);
    });
    test('PRINTER_INFO_1', () {
      check(sizeOf<PRINTER_INFO_1>()).equals(32);
    });
    test('PRINTER_INFO_2', () {
      check(sizeOf<PRINTER_INFO_2>()).equals(136);
    });
    test('PRINTER_INFO_3', () {
      check(sizeOf<PRINTER_INFO_3>()).equals(8);
    });
    test('PRINTER_INFO_4', () {
      check(sizeOf<PRINTER_INFO_4>()).equals(24);
    });
    test('PRINTER_INFO_5', () {
      check(sizeOf<PRINTER_INFO_5>()).equals(32);
    });
    test('PRINTER_INFO_6', () {
      check(sizeOf<PRINTER_INFO_6>()).equals(4);
    });
    test('PRINTER_NOTIFY_INFO', () {
      check(sizeOf<PRINTER_NOTIFY_INFO>()).equals(48);
    });
    test('PRINTER_NOTIFY_INFO_DATA', () {
      check(sizeOf<PRINTER_NOTIFY_INFO_DATA>()).equals(32);
    });
    test('PRINTER_OPTIONS', () {
      check(sizeOf<PRINTER_OPTIONS>()).equals(8);
    });
    test('PRINT_EXECUTION_DATA', () {
      check(sizeOf<PRINT_EXECUTION_DATA>()).equals(8);
    });
    test('PROCESS_HEAP_ENTRY', () {
      check(sizeOf<PROCESS_HEAP_ENTRY>()).equals(40);
    });
    test('PROCESS_INFORMATION', () {
      check(sizeOf<PROCESS_INFORMATION>()).equals(24);
    });
    test('PROPERTYKEY', () {
      check(sizeOf<PROPERTYKEY>()).equals(20);
    });
    test('PROPSPEC', () {
      check(sizeOf<PROPSPEC>()).equals(16);
    });
    test('PROPVARIANT', () {
      check(sizeOf<PROPVARIANT>()).equals(24);
    });
    test('PROTOENT', () {
      check(sizeOf<PROTOENT>()).equals(24);
    });
    test('QUERY_SERVICE_CONFIG', () {
      check(sizeOf<QUERY_SERVICE_CONFIG>()).equals(64);
    });
    test('QUERY_SERVICE_LOCK_STATUS', () {
      check(sizeOf<QUERY_SERVICE_LOCK_STATUS>()).equals(24);
    });
    test('RAWHID', () {
      check(sizeOf<RAWHID>()).equals(12);
    });
    test('RAWINPUT', () {
      check(sizeOf<RAWINPUT>()).equals(48);
    });
    test('RAWINPUTDEVICE', () {
      check(sizeOf<RAWINPUTDEVICE>()).equals(16);
    });
    test('RAWINPUTDEVICELIST', () {
      check(sizeOf<RAWINPUTDEVICELIST>()).equals(16);
    });
    test('RAWINPUTHEADER', () {
      check(sizeOf<RAWINPUTHEADER>()).equals(24);
    });
    test('RAWKEYBOARD', () {
      check(sizeOf<RAWKEYBOARD>()).equals(16);
    });
    test('RAWMOUSE', () {
      check(sizeOf<RAWMOUSE>()).equals(24);
    });
    test('RECT', () {
      check(sizeOf<RECT>()).equals(16);
    });
    test('RECTL', () {
      check(sizeOf<RECTL>()).equals(16);
    });
    test('RGBQUAD', () {
      check(sizeOf<RGBQUAD>()).equals(4);
    });
    test('SAFEARRAY', () {
      check(sizeOf<SAFEARRAY>()).equals(32);
    });
    test('SAFEARRAYBOUND', () {
      check(sizeOf<SAFEARRAYBOUND>()).equals(8);
    });
    test('SCARD_ATRMASK', () {
      check(sizeOf<SCARD_ATRMASK>()).equals(76);
    });
    test('SCARD_IO_REQUEST', () {
      check(sizeOf<SCARD_IO_REQUEST>()).equals(8);
    });
    test('SCARD_READERSTATE', () {
      check(sizeOf<SCARD_READERSTATE>()).equals(64);
    });
    test('SCROLLBARINFO', () {
      check(sizeOf<SCROLLBARINFO>()).equals(60);
    });
    test('SCROLLINFO', () {
      check(sizeOf<SCROLLINFO>()).equals(28);
    });
    test('SC_ACTION', () {
      check(sizeOf<SC_ACTION>()).equals(8);
    });
    test('SDP_ELEMENT_DATA', () {
      check(sizeOf<SDP_ELEMENT_DATA>()).equals(24);
    });
    test('SDP_LARGE_INTEGER_16', () {
      check(sizeOf<SDP_LARGE_INTEGER_16>()).equals(16);
    });
    test('SDP_STRING_TYPE_DATA', () {
      check(sizeOf<SDP_STRING_TYPE_DATA>()).equals(6);
    });
    test('SDP_ULARGE_INTEGER_16', () {
      check(sizeOf<SDP_ULARGE_INTEGER_16>()).equals(16);
    });
    test('SECURITY_ATTRIBUTES', () {
      check(sizeOf<SECURITY_ATTRIBUTES>()).equals(24);
    });
    test('SECURITY_DESCRIPTOR', () {
      check(sizeOf<SECURITY_DESCRIPTOR>()).equals(40);
    });
    test('SERVENT', () {
      check(sizeOf<SERVENT>()).equals(32);
    });
    test('SERVICE_CONTROL_STATUS_REASON_PARAMS', () {
      check(sizeOf<SERVICE_CONTROL_STATUS_REASON_PARAMS>()).equals(56);
    });
    test('SERVICE_DELAYED_AUTO_START_INFO', () {
      check(sizeOf<SERVICE_DELAYED_AUTO_START_INFO>()).equals(4);
    });
    test('SERVICE_DESCRIPTION', () {
      check(sizeOf<SERVICE_DESCRIPTION>()).equals(8);
    });
    test('SERVICE_FAILURE_ACTIONS', () {
      check(sizeOf<SERVICE_FAILURE_ACTIONS>()).equals(40);
    });
    test('SERVICE_FAILURE_ACTIONS_FLAG', () {
      check(sizeOf<SERVICE_FAILURE_ACTIONS_FLAG>()).equals(4);
    });
    test('SERVICE_LAUNCH_PROTECTED_INFO', () {
      check(sizeOf<SERVICE_LAUNCH_PROTECTED_INFO>()).equals(4);
    });
    test('SERVICE_NOTIFY_2', () {
      check(sizeOf<SERVICE_NOTIFY_2>()).equals(80);
    });
    test('SERVICE_PREFERRED_NODE_INFO', () {
      check(sizeOf<SERVICE_PREFERRED_NODE_INFO>()).equals(4);
    });
    test('SERVICE_PRESHUTDOWN_INFO', () {
      check(sizeOf<SERVICE_PRESHUTDOWN_INFO>()).equals(4);
    });
    test('SERVICE_REQUIRED_PRIVILEGES_INFO', () {
      check(sizeOf<SERVICE_REQUIRED_PRIVILEGES_INFO>()).equals(8);
    });
    test('SERVICE_SID_INFO', () {
      check(sizeOf<SERVICE_SID_INFO>()).equals(4);
    });
    test('SERVICE_STATUS', () {
      check(sizeOf<SERVICE_STATUS>()).equals(28);
    });
    test('SERVICE_STATUS_PROCESS', () {
      check(sizeOf<SERVICE_STATUS_PROCESS>()).equals(36);
    });
    test('SERVICE_TABLE_ENTRY', () {
      check(sizeOf<SERVICE_TABLE_ENTRY>()).equals(16);
    });
    test('SERVICE_TIMECHANGE_INFO', () {
      check(sizeOf<SERVICE_TIMECHANGE_INFO>()).equals(16);
    });
    test('SERVICE_TRIGGER', () {
      check(sizeOf<SERVICE_TRIGGER>()).equals(32);
    });
    test('SERVICE_TRIGGER_INFO', () {
      check(sizeOf<SERVICE_TRIGGER_INFO>()).equals(24);
    });
    test('SERVICE_TRIGGER_SPECIFIC_DATA_ITEM', () {
      check(sizeOf<SERVICE_TRIGGER_SPECIFIC_DATA_ITEM>()).equals(16);
    });
    test('SHELLEXECUTEINFO', () {
      check(sizeOf<SHELLEXECUTEINFO>()).equals(112);
    });
    test('SHELL_ITEM_RESOURCE', () {
      check(sizeOf<SHELL_ITEM_RESOURCE>()).equals(536);
    });
    test('SHFILEINFO', () {
      check(sizeOf<SHFILEINFO>()).equals(696);
    });
    test('SHFILEOPSTRUCT', () {
      check(sizeOf<SHFILEOPSTRUCT>()).equals(56);
    });
    test('SHITEMID', () {
      check(sizeOf<SHITEMID>()).equals(3);
    });
    test('SHQUERYRBINFO', () {
      check(sizeOf<SHQUERYRBINFO>()).equals(24);
    });
    test('SIZE', () {
      check(sizeOf<SIZE>()).equals(8);
    });
    test('SMALL_RECT', () {
      check(sizeOf<SMALL_RECT>()).equals(8);
    });
    test('SOCKADDR', () {
      check(sizeOf<SOCKADDR>()).equals(16);
    });
    test('SOCKADDR_BTH', () {
      check(sizeOf<SOCKADDR_BTH>()).equals(30);
    });
    test('SOCKET_ADDRESS', () {
      check(sizeOf<SOCKET_ADDRESS>()).equals(16);
    });
    test('SOLE_AUTHENTICATION_SERVICE', () {
      check(sizeOf<SOLE_AUTHENTICATION_SERVICE>()).equals(24);
    });
    test('SPEVENT', () {
      check(sizeOf<SPEVENT>()).equals(32);
    });
    test('SPEVENTSOURCEINFO', () {
      check(sizeOf<SPEVENTSOURCEINFO>()).equals(24);
    });
    test('SPVOICESTATUS', () {
      check(sizeOf<SPVOICESTATUS>()).equals(52);
    });
    test('SP_DEVICE_INTERFACE_DATA', () {
      check(sizeOf<SP_DEVICE_INTERFACE_DATA>()).equals(32);
    });
    test('SP_DEVICE_INTERFACE_DETAIL_DATA', () {
      check(sizeOf<SP_DEVICE_INTERFACE_DETAIL_DATA>()).equals(8);
    });
    test('SP_DEVINFO_DATA', () {
      check(sizeOf<SP_DEVINFO_DATA>()).equals(32);
    });
    test('STARTUPINFOEX', () {
      check(sizeOf<STARTUPINFOEX>()).equals(112);
    });
    test('STARTUPINFO', () {
      check(sizeOf<STARTUPINFO>()).equals(104);
    });
    test('STATPROPSETSTG', () {
      check(sizeOf<STATPROPSETSTG>()).equals(64);
    });
    test('STATPROPSTG', () {
      check(sizeOf<STATPROPSTG>()).equals(16);
    });
    test('STATSTG', () {
      check(sizeOf<STATSTG>()).equals(80);
    });
    test('STORAGE_DEVICE_NUMBER', () {
      check(sizeOf<STORAGE_DEVICE_NUMBER>()).equals(12);
    });
    test('STRRET', () {
      check(sizeOf<STRRET>()).equals(272);
    });
    test('STYLESTRUCT', () {
      check(sizeOf<STYLESTRUCT>()).equals(8);
    });
    test('SYMBOL_INFO', () {
      check(sizeOf<SYMBOL_INFO>()).equals(88);
    });
    test('SYSTEMTIME', () {
      check(sizeOf<SYSTEMTIME>()).equals(16);
    });
    test('SYSTEM_BASIC_INFORMATION', () {
      check(sizeOf<SYSTEM_BASIC_INFORMATION>()).equals(64);
    });
    test('SYSTEM_BATTERY_STATE', () {
      check(sizeOf<SYSTEM_BATTERY_STATE>()).equals(32);
    });
    test('SYSTEM_CODEINTEGRITY_INFORMATION', () {
      check(sizeOf<SYSTEM_CODEINTEGRITY_INFORMATION>()).equals(8);
    });
    test('SYSTEM_EXCEPTION_INFORMATION', () {
      check(sizeOf<SYSTEM_EXCEPTION_INFORMATION>()).equals(16);
    });
    test('SYSTEM_INFO', () {
      check(sizeOf<SYSTEM_INFO>()).equals(48);
    });
    test('SYSTEM_INTERRUPT_INFORMATION', () {
      check(sizeOf<SYSTEM_INTERRUPT_INFORMATION>()).equals(24);
    });
    test('SYSTEM_LOGICAL_PROCESSOR_INFORMATION', () {
      check(sizeOf<SYSTEM_LOGICAL_PROCESSOR_INFORMATION>()).equals(32);
    });
    test('SYSTEM_LOOKASIDE_INFORMATION', () {
      check(sizeOf<SYSTEM_LOOKASIDE_INFORMATION>()).equals(32);
    });
    test('SYSTEM_PERFORMANCE_INFORMATION', () {
      check(sizeOf<SYSTEM_PERFORMANCE_INFORMATION>()).equals(312);
    });
    test('SYSTEM_POLICY_INFORMATION', () {
      check(sizeOf<SYSTEM_POLICY_INFORMATION>()).equals(32);
    });
    test('SYSTEM_POWER_STATUS', () {
      check(sizeOf<SYSTEM_POWER_STATUS>()).equals(12);
    });
    test('SYSTEM_PROCESSOR_PERFORMANCE_INFORMATION', () {
      check(sizeOf<SYSTEM_PROCESSOR_PERFORMANCE_INFORMATION>()).equals(48);
    });
    test('SYSTEM_PROCESS_INFORMATION', () {
      check(sizeOf<SYSTEM_PROCESS_INFORMATION>()).equals(256);
    });
    test('SYSTEM_REGISTRY_QUOTA_INFORMATION', () {
      check(sizeOf<SYSTEM_REGISTRY_QUOTA_INFORMATION>()).equals(16);
    });
    test('SYSTEM_THREAD_INFORMATION', () {
      check(sizeOf<SYSTEM_THREAD_INFORMATION>()).equals(80);
    });
    test('SYSTEM_TIMEOFDAY_INFORMATION', () {
      check(sizeOf<SYSTEM_TIMEOFDAY_INFORMATION>()).equals(48);
    });
    test('SdpAttributeRange', () {
      check(sizeOf<SdpAttributeRange>()).equals(4);
    });
    test('SdpQueryUuid', () {
      check(sizeOf<SdpQueryUuid>()).equals(20);
    });
    test('SdpQueryUuidUnion', () {
      check(sizeOf<SdpQueryUuidUnion>()).equals(16);
    });
    test('TASKDIALOGCONFIG', () {
      check(sizeOf<TASKDIALOGCONFIG>()).equals(160);
    });
    test('TASKDIALOG_BUTTON', () {
      check(sizeOf<TASKDIALOG_BUTTON>()).equals(12);
    });
    test('TEXTMETRIC', () {
      check(sizeOf<TEXTMETRIC>()).equals(60);
    });
    test('TIMEVAL', () {
      check(sizeOf<TIMEVAL>()).equals(8);
    });
    test('TITLEBARINFO', () {
      check(sizeOf<TITLEBARINFO>()).equals(44);
    });
    test('TITLEBARINFOEX', () {
      check(sizeOf<TITLEBARINFOEX>()).equals(140);
    });
    test('TOKEN_APPCONTAINER_INFORMATION', () {
      check(sizeOf<TOKEN_APPCONTAINER_INFORMATION>()).equals(8);
    });
    test('TOUCHINPUT', () {
      check(sizeOf<TOUCHINPUT>()).equals(48);
    });
    test('TOUCHPREDICTIONPARAMETERS', () {
      check(sizeOf<TOUCHPREDICTIONPARAMETERS>()).equals(16);
    });
    test('TPMPARAMS', () {
      check(sizeOf<TPMPARAMS>()).equals(20);
    });
    test('TYPEATTR', () {
      check(sizeOf<TYPEATTR>()).equals(96);
    });
    test('TYPEDESC', () {
      check(sizeOf<TYPEDESC>()).equals(16);
    });
    test('UNICODE_STRING', () {
      check(sizeOf<UNICODE_STRING>()).equals(16);
    });
    test('UNSIGNED_RATIO', () {
      check(sizeOf<UNSIGNED_RATIO>()).equals(8);
    });
    test('UPDATELAYEREDWINDOWINFO', () {
      check(sizeOf<UPDATELAYEREDWINDOWINFO>()).equals(80);
    });
    test('VALENT', () {
      check(sizeOf<VALENT>()).equals(32);
    });
    test('VARDESC', () {
      check(sizeOf<VARDESC>()).equals(64);
    });
    test('VARIANT', () {
      check(sizeOf<VARIANT>()).equals(24);
    });
    test('VOLUME_DISK_EXTENTS', () {
      check(sizeOf<VOLUME_DISK_EXTENTS>()).equals(32);
    });
    test('VS_FIXEDFILEINFO', () {
      check(sizeOf<VS_FIXEDFILEINFO>()).equals(52);
    });
    test('WAVEFORMATEX', () {
      check(sizeOf<WAVEFORMATEX>()).equals(18);
    });
    test('WAVEFORMATEXTENSIBLE', () {
      check(sizeOf<WAVEFORMATEXTENSIBLE>()).equals(40);
    });
    test('WAVEHDR', () {
      check(sizeOf<WAVEHDR>()).equals(48);
    });
    test('WAVEINCAPS', () {
      check(sizeOf<WAVEINCAPS>()).equals(80);
    });
    test('WAVEOUTCAPS', () {
      check(sizeOf<WAVEOUTCAPS>()).equals(84);
    });
    test('WIN32_FIND_DATA', () {
      check(sizeOf<WIN32_FIND_DATA>()).equals(592);
    });
    test('WINDOWINFO', () {
      check(sizeOf<WINDOWINFO>()).equals(60);
    });
    test('WINDOWPLACEMENT', () {
      check(sizeOf<WINDOWPLACEMENT>()).equals(44);
    });
    test('WINDOWPOS', () {
      check(sizeOf<WINDOWPOS>()).equals(40);
    });
    test('WINDOW_BUFFER_SIZE_RECORD', () {
      check(sizeOf<WINDOW_BUFFER_SIZE_RECORD>()).equals(4);
    });
    test('WLAN_ASSOCIATION_ATTRIBUTES', () {
      check(sizeOf<WLAN_ASSOCIATION_ATTRIBUTES>()).equals(68);
    });
    test('WLAN_AUTH_CIPHER_PAIR_LIST', () {
      check(sizeOf<WLAN_AUTH_CIPHER_PAIR_LIST>()).equals(12);
    });
    test('WLAN_AVAILABLE_NETWORK', () {
      check(sizeOf<WLAN_AVAILABLE_NETWORK>()).equals(628);
    });
    test('WLAN_AVAILABLE_NETWORK_LIST', () {
      check(sizeOf<WLAN_AVAILABLE_NETWORK_LIST>()).equals(636);
    });
    test('WLAN_BSS_ENTRY', () {
      check(sizeOf<WLAN_BSS_ENTRY>()).equals(360);
    });
    test('WLAN_BSS_LIST', () {
      check(sizeOf<WLAN_BSS_LIST>()).equals(368);
    });
    test('WLAN_CONNECTION_ATTRIBUTES', () {
      check(sizeOf<WLAN_CONNECTION_ATTRIBUTES>()).equals(604);
    });
    test('WLAN_CONNECTION_NOTIFICATION_DATA', () {
      check(sizeOf<WLAN_CONNECTION_NOTIFICATION_DATA>()).equals(572);
    });
    test('WLAN_CONNECTION_PARAMETERS', () {
      check(sizeOf<WLAN_CONNECTION_PARAMETERS>()).equals(40);
    });
    test('WLAN_COUNTRY_OR_REGION_STRING_LIST', () {
      check(sizeOf<WLAN_COUNTRY_OR_REGION_STRING_LIST>()).equals(8);
    });
    test('WLAN_DEVICE_SERVICE_GUID_LIST', () {
      check(sizeOf<WLAN_DEVICE_SERVICE_GUID_LIST>()).equals(24);
    });
    test('WLAN_DEVICE_SERVICE_NOTIFICATION_DATA', () {
      check(sizeOf<WLAN_DEVICE_SERVICE_NOTIFICATION_DATA>()).equals(28);
    });
    test('WLAN_HOSTED_NETWORK_CONNECTION_SETTINGS', () {
      check(sizeOf<WLAN_HOSTED_NETWORK_CONNECTION_SETTINGS>()).equals(40);
    });
    test('WLAN_HOSTED_NETWORK_DATA_PEER_STATE_CHANGE', () {
      check(sizeOf<WLAN_HOSTED_NETWORK_DATA_PEER_STATE_CHANGE>()).equals(28);
    });
    test('WLAN_HOSTED_NETWORK_PEER_STATE', () {
      check(sizeOf<WLAN_HOSTED_NETWORK_PEER_STATE>()).equals(12);
    });
    test('WLAN_HOSTED_NETWORK_RADIO_STATE', () {
      check(sizeOf<WLAN_HOSTED_NETWORK_RADIO_STATE>()).equals(8);
    });
    test('WLAN_HOSTED_NETWORK_SECURITY_SETTINGS', () {
      check(sizeOf<WLAN_HOSTED_NETWORK_SECURITY_SETTINGS>()).equals(8);
    });
    test('WLAN_HOSTED_NETWORK_STATE_CHANGE', () {
      check(sizeOf<WLAN_HOSTED_NETWORK_STATE_CHANGE>()).equals(12);
    });
    test('WLAN_HOSTED_NETWORK_STATUS', () {
      check(sizeOf<WLAN_HOSTED_NETWORK_STATUS>()).equals(52);
    });
    test('WLAN_INTERFACE_CAPABILITY', () {
      check(sizeOf<WLAN_INTERFACE_CAPABILITY>()).equals(276);
    });
    test('WLAN_INTERFACE_INFO', () {
      check(sizeOf<WLAN_INTERFACE_INFO>()).equals(532);
    });
    test('WLAN_INTERFACE_INFO_LIST', () {
      check(sizeOf<WLAN_INTERFACE_INFO_LIST>()).equals(540);
    });
    test('WLAN_MAC_FRAME_STATISTICS', () {
      check(sizeOf<WLAN_MAC_FRAME_STATISTICS>()).equals(96);
    });
    test('WLAN_MSM_NOTIFICATION_DATA', () {
      check(sizeOf<WLAN_MSM_NOTIFICATION_DATA>()).equals(580);
    });
    test('WLAN_PHY_FRAME_STATISTICS', () {
      check(sizeOf<WLAN_PHY_FRAME_STATISTICS>()).equals(144);
    });
    test('WLAN_PHY_RADIO_STATE', () {
      check(sizeOf<WLAN_PHY_RADIO_STATE>()).equals(12);
    });
    test('WLAN_PROFILE_INFO', () {
      check(sizeOf<WLAN_PROFILE_INFO>()).equals(516);
    });
    test('WLAN_PROFILE_INFO_LIST', () {
      check(sizeOf<WLAN_PROFILE_INFO_LIST>()).equals(524);
    });
    test('WLAN_RADIO_STATE', () {
      check(sizeOf<WLAN_RADIO_STATE>()).equals(772);
    });
    test('WLAN_RATE_SET', () {
      check(sizeOf<WLAN_RATE_SET>()).equals(256);
    });
    test('WLAN_RAW_DATA', () {
      check(sizeOf<WLAN_RAW_DATA>()).equals(8);
    });
    test('WLAN_RAW_DATA_LIST', () {
      check(sizeOf<WLAN_RAW_DATA_LIST>()).equals(16);
    });
    test('WLAN_SECURITY_ATTRIBUTES', () {
      check(sizeOf<WLAN_SECURITY_ATTRIBUTES>()).equals(16);
    });
    test('WLAN_STATISTICS', () {
      check(sizeOf<WLAN_STATISTICS>()).equals(368);
    });
    test('WNDCLASSEX', () {
      check(sizeOf<WNDCLASSEX>()).equals(80);
    });
    test('WNDCLASS', () {
      check(sizeOf<WNDCLASS>()).equals(72);
    });
    test('WTA_OPTIONS', () {
      check(sizeOf<WTA_OPTIONS>()).equals(8);
    });
    test('XFORM', () {
      check(sizeOf<XFORM>()).equals(24);
    });
    test('XINPUT_BATTERY_INFORMATION', () {
      check(sizeOf<XINPUT_BATTERY_INFORMATION>()).equals(2);
    });
    test('XINPUT_CAPABILITIES', () {
      check(sizeOf<XINPUT_CAPABILITIES>()).equals(20);
    });
    test('XINPUT_GAMEPAD', () {
      check(sizeOf<XINPUT_GAMEPAD>()).equals(12);
    });
    test('XINPUT_KEYSTROKE', () {
      check(sizeOf<XINPUT_KEYSTROKE>()).equals(8);
    });
    test('XINPUT_STATE', () {
      check(sizeOf<XINPUT_STATE>()).equals(16);
    });
    test('XINPUT_VIBRATION', () {
      check(sizeOf<XINPUT_VIBRATION>()).equals(4);
    });
  });
}
