// Tests that Win32 structs are the right size.

@TestOn('windows')
library;

import 'dart:ffi';

import 'package:test/test.dart';
import 'package:win32/win32.dart';
import 'package:win32/winsock2.dart';

void main() {
  group('Struct sizeOf', () {
    test('ACCENT_POLICY', () {
      expect(sizeOf<ACCENT_POLICY>(), equals(16));
    });
    test('GUID', () {
      expect(sizeOf<GUID>(), equals(16));
    });
    test('WINDOWCOMPOSITIONATTRIBDATA ', () {
      expect(sizeOf<WINDOWCOMPOSITIONATTRIBDATA>(), equals(24));
    });
    test('ACCEL', () {
      expect(sizeOf<ACCEL>(), equals(6));
    });
    test('ACL', () {
      expect(sizeOf<ACL>(), equals(8));
    });
    test('ACTCTX', () {
      expect(sizeOf<ACTCTX>(), equals(56));
    });
    test('ADDJOB_INFO_1', () {
      expect(sizeOf<ADDJOB_INFO_1>(), equals(16));
    });
    test('ADDRINFO', () {
      expect(sizeOf<ADDRINFO>(), equals(48));
    });
    test('ALTTABINFO', () {
      expect(sizeOf<ALTTABINFO>(), equals(40));
    });
    test('APPX_PACKAGE_SETTINGS', () {
      expect(sizeOf<APPX_PACKAGE_SETTINGS>(), equals(16));
    });
    test('ARRAYDESC', () {
      expect(sizeOf<ARRAYDESC>(), equals(32));
    });
    test('ASSEMBLYMETADATA', () {
      expect(sizeOf<ASSEMBLYMETADATA>(), equals(56));
    });
    test('AudioClientProperties', () {
      expect(sizeOf<AudioClientProperties>(), equals(16));
    });
    test('BIND_OPTS', () {
      expect(sizeOf<BIND_OPTS>(), equals(16));
    });
    test('BITMAP', () {
      expect(sizeOf<BITMAP>(), equals(32));
    });
    test('BITMAPFILEHEADER', () {
      expect(sizeOf<BITMAPFILEHEADER>(), equals(14));
    });
    test('BITMAPINFO', () {
      expect(sizeOf<BITMAPINFO>(), equals(44));
    });
    test('BITMAPINFOHEADER', () {
      expect(sizeOf<BITMAPINFOHEADER>(), equals(40));
    });
    test('BLENDFUNCTION', () {
      expect(sizeOf<BLENDFUNCTION>(), equals(4));
    });
    test('BLUETOOTH_ADDRESS', () {
      expect(sizeOf<BLUETOOTH_ADDRESS>(), equals(8));
    });
    test('BLUETOOTH_AUTHENTICATE_RESPONSE', () {
      expect(sizeOf<BLUETOOTH_AUTHENTICATE_RESPONSE>(), equals(48));
    });
    test('BLUETOOTH_AUTHENTICATION_CALLBACK_PARAMS', () {
      expect(sizeOf<BLUETOOTH_AUTHENTICATION_CALLBACK_PARAMS>(), equals(576));
    });
    test('BLUETOOTH_COD_PAIRS', () {
      expect(sizeOf<BLUETOOTH_COD_PAIRS>(), equals(16));
    });
    test('BLUETOOTH_DEVICE_INFO', () {
      expect(sizeOf<BLUETOOTH_DEVICE_INFO>(), equals(560));
    });
    test('BLUETOOTH_DEVICE_SEARCH_PARAMS', () {
      expect(sizeOf<BLUETOOTH_DEVICE_SEARCH_PARAMS>(), equals(40));
    });
    test('BLUETOOTH_FIND_RADIO_PARAMS', () {
      expect(sizeOf<BLUETOOTH_FIND_RADIO_PARAMS>(), equals(4));
    });
    test('BLUETOOTH_GATT_VALUE_CHANGED_EVENT', () {
      expect(sizeOf<BLUETOOTH_GATT_VALUE_CHANGED_EVENT>(), equals(24));
    });
    test('Struct BLUETOOTH_GATT_VALUE_CHANGED_EVENT_REGISTRATION', () {
      expect(
        sizeOf<BLUETOOTH_GATT_VALUE_CHANGED_EVENT_REGISTRATION>(),
        equals(40),
      );
    });
    test('BLUETOOTH_NUMERIC_COMPARISON_INFO', () {
      expect(sizeOf<BLUETOOTH_NUMERIC_COMPARISON_INFO>(), equals(4));
    });
    test('BLUETOOTH_OOB_DATA_INFO', () {
      expect(sizeOf<BLUETOOTH_OOB_DATA_INFO>(), equals(32));
    });
    test('BLUETOOTH_PASSKEY_INFO', () {
      expect(sizeOf<BLUETOOTH_PASSKEY_INFO>(), equals(4));
    });
    test('BLUETOOTH_PIN_INFO', () {
      expect(sizeOf<BLUETOOTH_PIN_INFO>(), equals(17));
    });
    test('BLUETOOTH_RADIO_INFO', () {
      expect(sizeOf<BLUETOOTH_RADIO_INFO>(), equals(520));
    });
    test('BLUETOOTH_SELECT_DEVICE_PARAMS', () {
      expect(sizeOf<BLUETOOTH_SELECT_DEVICE_PARAMS>(), equals(88));
    });
    test('BSMINFO', () {
      expect(sizeOf<BSMINFO>(), equals(32));
    });
    test('BTH_DEVICE_INFO', () {
      expect(sizeOf<BTH_DEVICE_INFO>(), equals(272));
    });
    test('BTH_HCI_EVENT_INFO', () {
      expect(sizeOf<BTH_HCI_EVENT_INFO>(), equals(16));
    });
    test('BTH_L2CAP_EVENT_INFO', () {
      expect(sizeOf<BTH_L2CAP_EVENT_INFO>(), equals(16));
    });
    test('BTH_LE_GATT_CHARACTERISTIC', () {
      expect(sizeOf<BTH_LE_GATT_CHARACTERISTIC>(), equals(36));
    });
    test('BTH_LE_GATT_CHARACTERISTIC_VALUE', () {
      expect(sizeOf<BTH_LE_GATT_CHARACTERISTIC_VALUE>(), equals(8));
    });
    test('BTH_LE_GATT_DESCRIPTOR', () {
      expect(sizeOf<BTH_LE_GATT_DESCRIPTOR>(), equals(32));
    });
    test('BTH_LE_GATT_DESCRIPTOR_VALUE', () {
      expect(sizeOf<BTH_LE_GATT_DESCRIPTOR_VALUE>(), equals(80));
    });
    test('BTH_LE_GATT_SERVICE', () {
      expect(sizeOf<BTH_LE_GATT_SERVICE>(), equals(24));
    });
    test('BTH_LE_UUID', () {
      expect(sizeOf<BTH_LE_UUID>(), equals(20));
    });
    test('BTH_QUERY_DEVICE', () {
      expect(sizeOf<BTH_QUERY_DEVICE>(), equals(5));
    });
    test('BTH_QUERY_SERVICE', () {
      expect(sizeOf<BTH_QUERY_SERVICE>(), equals(256));
    });
    test('BTH_RADIO_IN_RANGE', () {
      expect(sizeOf<BTH_RADIO_IN_RANGE>(), equals(280));
    });
    test('BTH_SET_SERVICE', () {
      expect(sizeOf<BTH_SET_SERVICE>(), equals(45));
    });
    test('BY_HANDLE_FILE_INFORMATION', () {
      expect(sizeOf<BY_HANDLE_FILE_INFORMATION>(), equals(52));
    });
    test('CACHE_DESCRIPTOR', () {
      expect(sizeOf<CACHE_DESCRIPTOR>(), equals(12));
    });
    test('CBTACTIVATESTRUCT', () {
      expect(sizeOf<CBTACTIVATESTRUCT>(), equals(16));
    });
    test('CBT_CREATEWND', () {
      expect(sizeOf<CBT_CREATEWND>(), equals(16));
    });
    test('CERT_CONTEXT', () {
      expect(sizeOf<CERT_CONTEXT>(), equals(40));
    });
    test('CERT_EXTENSION', () {
      expect(sizeOf<CERT_EXTENSION>(), equals(32));
    });
    test('CERT_INFO', () {
      expect(sizeOf<CERT_INFO>(), equals(208));
    });
    test('CERT_PUBLIC_KEY_INFO', () {
      expect(sizeOf<CERT_PUBLIC_KEY_INFO>(), equals(48));
    });
    test('CHANGEFILTERSTRUCT', () {
      expect(sizeOf<CHANGEFILTERSTRUCT>(), equals(8));
    });
    test('CHAR_INFO', () {
      expect(sizeOf<CHAR_INFO>(), equals(4));
    });
    test('CHOOSECOLOR', () {
      expect(sizeOf<CHOOSECOLOR>(), equals(72));
    });
    test('CHOOSEFONT', () {
      expect(sizeOf<CHOOSEFONT>(), equals(104));
    });
    test('CLIENT_ID', () {
      expect(sizeOf<CLIENT_ID>(), equals(16));
    });
    test('COLORADJUSTMENT', () {
      expect(sizeOf<COLORADJUSTMENT>(), equals(24));
    });
    test('COMDLG_FILTERSPEC', () {
      expect(sizeOf<COMDLG_FILTERSPEC>(), equals(16));
    });
    test('COMMCONFIG', () {
      expect(sizeOf<COMMCONFIG>(), equals(52));
    });
    test('COMMPROP', () {
      expect(sizeOf<COMMPROP>(), equals(64));
    });
    test('COMMTIMEOUTS', () {
      expect(sizeOf<COMMTIMEOUTS>(), equals(20));
    });
    test('COMSTAT', () {
      expect(sizeOf<COMSTAT>(), equals(12));
    });
    test('CONSOLE_CURSOR_INFO', () {
      expect(sizeOf<CONSOLE_CURSOR_INFO>(), equals(8));
    });
    test('CONSOLE_READCONSOLE_CONTROL', () {
      expect(sizeOf<CONSOLE_READCONSOLE_CONTROL>(), equals(16));
    });
    test('CONSOLE_SCREEN_BUFFER_INFO', () {
      expect(sizeOf<CONSOLE_SCREEN_BUFFER_INFO>(), equals(22));
    });
    test('CONSOLE_SELECTION_INFO', () {
      expect(sizeOf<CONSOLE_SELECTION_INFO>(), equals(16));
    });
    test('COORD', () {
      expect(sizeOf<COORD>(), equals(4));
    });
    test('COR_FIELD_OFFSET', () {
      expect(sizeOf<COR_FIELD_OFFSET>(), equals(8));
    });
    test('CREATEFILE2_EXTENDED_PARAMETERS', () {
      expect(sizeOf<CREATEFILE2_EXTENDED_PARAMETERS>(), equals(32));
    });
    test('CREATESTRUCT', () {
      expect(sizeOf<CREATESTRUCT>(), equals(80));
    });
    test('CREDENTIAL', () {
      expect(sizeOf<CREDENTIAL>(), equals(80));
    });
    test('CREDENTIAL_ATTRIBUTE', () {
      expect(sizeOf<CREDENTIAL_ATTRIBUTE>(), equals(24));
    });
    test('CRYPTPROTECT_PROMPTSTRUCT', () {
      expect(sizeOf<CRYPTPROTECT_PROMPTSTRUCT>(), equals(24));
    });
    test('CRYPT_ALGORITHM_IDENTIFIER', () {
      expect(sizeOf<CRYPT_ALGORITHM_IDENTIFIER>(), equals(24));
    });
    test('CRYPT_BIT_BLOB', () {
      expect(sizeOf<CRYPT_BIT_BLOB>(), equals(24));
    });
    test('CRYPT_INTEGER_BLOB', () {
      expect(sizeOf<CRYPT_INTEGER_BLOB>(), equals(16));
    });
    test('CURSORINFO', () {
      expect(sizeOf<CURSORINFO>(), equals(24));
    });
    test('CWPRETSTRUCT', () {
      expect(sizeOf<CWPRETSTRUCT>(), equals(40));
    });
    test('CWPSTRUCT', () {
      expect(sizeOf<CWPSTRUCT>(), equals(32));
    });
    test('CY', () {
      expect(sizeOf<CY>(), equals(8));
    });
    test('DCB', () {
      expect(sizeOf<DCB>(), equals(28));
    });
    test('DEBUGHOOKINFO', () {
      expect(sizeOf<DEBUGHOOKINFO>(), equals(32));
    });
    test('DECIMAL', () {
      expect(sizeOf<DECIMAL>(), equals(16));
    });
    test('DESIGNVECTOR', () {
      expect(sizeOf<DESIGNVECTOR>(), equals(72));
    });
    test('DEVMODE', () {
      expect(sizeOf<DEVMODE>(), equals(220));
    });
    test('DIBSECTION', () {
      expect(sizeOf<DIBSECTION>(), equals(104));
    });
    test('DISK_EXTENT', () {
      expect(sizeOf<DISK_EXTENT>(), equals(24));
    });
    test('DISK_GEOMETRY', () {
      expect(sizeOf<DISK_GEOMETRY>(), equals(24));
    });
    test('DISK_GEOMETRY_EX', () {
      expect(sizeOf<DISK_GEOMETRY_EX>(), equals(40));
    });
    test('DISPLAYCONFIG_2DREGION', () {
      expect(sizeOf<DISPLAYCONFIG_2DREGION>(), equals(8));
    });
    test('DISPLAYCONFIG_DESKTOP_IMAGE_INFO', () {
      expect(sizeOf<DISPLAYCONFIG_DESKTOP_IMAGE_INFO>(), equals(40));
    });
    test('DISPLAYCONFIG_DEVICE_INFO_HEADER', () {
      expect(sizeOf<DISPLAYCONFIG_DEVICE_INFO_HEADER>(), equals(20));
    });
    test('DISPLAYCONFIG_MODE_INFO', () {
      expect(sizeOf<DISPLAYCONFIG_MODE_INFO>(), equals(64));
    });
    test('DISPLAYCONFIG_PATH_INFO', () {
      expect(sizeOf<DISPLAYCONFIG_PATH_INFO>(), equals(72));
    });
    test('DISPLAYCONFIG_PATH_SOURCE_INFO', () {
      expect(sizeOf<DISPLAYCONFIG_PATH_SOURCE_INFO>(), equals(20));
    });
    test('DISPLAYCONFIG_PATH_TARGET_INFO', () {
      expect(sizeOf<DISPLAYCONFIG_PATH_TARGET_INFO>(), equals(48));
    });
    test('DISPLAYCONFIG_RATIONAL', () {
      expect(sizeOf<DISPLAYCONFIG_RATIONAL>(), equals(8));
    });
    test('DISPLAYCONFIG_SOURCE_MODE', () {
      expect(sizeOf<DISPLAYCONFIG_SOURCE_MODE>(), equals(20));
    });
    test('DISPLAYCONFIG_TARGET_MODE', () {
      expect(sizeOf<DISPLAYCONFIG_TARGET_MODE>(), equals(48));
    });
    test('DISPLAYCONFIG_VIDEO_SIGNAL_INFO', () {
      expect(sizeOf<DISPLAYCONFIG_VIDEO_SIGNAL_INFO>(), equals(48));
    });
    test('DISPLAY_DEVICE', () {
      expect(sizeOf<DISPLAY_DEVICE>(), equals(840));
    });
    test('DISPPARAMS', () {
      expect(sizeOf<DISPPARAMS>(), equals(24));
    });
    test('DLGITEMTEMPLATE', () {
      expect(sizeOf<DLGITEMTEMPLATE>(), equals(18));
    });
    test('DLGTEMPLATE', () {
      expect(sizeOf<DLGTEMPLATE>(), equals(18));
    });
    test('DLLVERSIONINFO', () {
      expect(sizeOf<DLLVERSIONINFO>(), equals(20));
    });
    test('DOC_INFO_1', () {
      expect(sizeOf<DOC_INFO_1>(), equals(24));
    });
    test('DOT11_AUTH_CIPHER_PAIR', () {
      expect(sizeOf<DOT11_AUTH_CIPHER_PAIR>(), equals(8));
    });
    test('DOT11_BSSID_LIST', () {
      expect(sizeOf<DOT11_BSSID_LIST>(), equals(20));
    });
    test('DOT11_NETWORK', () {
      expect(sizeOf<DOT11_NETWORK>(), equals(40));
    });
    test('DOT11_NETWORK_LIST', () {
      expect(sizeOf<DOT11_NETWORK_LIST>(), equals(48));
    });
    test('DOT11_SSID', () {
      expect(sizeOf<DOT11_SSID>(), equals(36));
    });
    test('DRAWTEXTPARAMS', () {
      expect(sizeOf<DRAWTEXTPARAMS>(), equals(20));
    });
    test('DSREG_JOIN_INFO', () {
      expect(sizeOf<DSREG_JOIN_INFO>(), equals(96));
    });
    test('DSREG_USER_INFO', () {
      expect(sizeOf<DSREG_USER_INFO>(), equals(24));
    });
    test('DTBGOPTS', () {
      expect(sizeOf<DTBGOPTS>(), equals(24));
    });
    test('DTTOPTS', () {
      expect(sizeOf<DTTOPTS>(), equals(72));
    });
    test('DWM_BLURBEHIND', () {
      expect(sizeOf<DWM_BLURBEHIND>(), equals(20));
    });
    test('EAP_METHOD_TYPE', () {
      expect(sizeOf<EAP_METHOD_TYPE>(), equals(16));
    });
    test('EAP_TYPE', () {
      expect(sizeOf<EAP_TYPE>(), equals(12));
    });
    test('ELEMDESC', () {
      expect(sizeOf<ELEMDESC>(), equals(32));
    });
    test('ENUMLOGFONTEX', () {
      expect(sizeOf<ENUMLOGFONTEX>(), equals(348));
    });
    test('ENUM_PAGE_FILE_INFORMATION', () {
      expect(sizeOf<ENUM_PAGE_FILE_INFORMATION>(), equals(32));
    });
    test('ENUM_SERVICE_STATUS', () {
      expect(sizeOf<ENUM_SERVICE_STATUS>(), equals(48));
    });
    test('ENUM_SERVICE_STATUS_PROCESS', () {
      expect(sizeOf<ENUM_SERVICE_STATUS_PROCESS>(), equals(56));
    });
    test('EVENTMSG', () {
      expect(sizeOf<EVENTMSG>(), equals(24));
    });
    test('EXCEPINFO', () {
      expect(sizeOf<EXCEPINFO>(), equals(64));
    });
    test('ExtendedProperty', () {
      expect(sizeOf<ExtendedProperty>(), equals(16));
    });
    test('FD_SET', () {
      expect(sizeOf<FD_SET>(), equals(520));
    });
    test('FILETIME', () {
      expect(sizeOf<FILETIME>(), equals(8));
    });
    test('FILE_SEGMENT_ELEMENT', () {
      expect(sizeOf<FILE_SEGMENT_ELEMENT>(), equals(8));
    });
    test('FINDREPLACE', () {
      expect(sizeOf<FINDREPLACE>(), equals(80));
    });
    test('FOCUS_EVENT_RECORD', () {
      expect(sizeOf<FOCUS_EVENT_RECORD>(), equals(4));
    });
    test('FUNCDESC', () {
      expect(sizeOf<FUNCDESC>(), equals(88));
    });
    test('GESTURECONFIG', () {
      expect(sizeOf<GESTURECONFIG>(), equals(12));
    });
    test('GESTUREINFO', () {
      expect(sizeOf<GESTUREINFO>(), equals(56));
    });
    test('GESTURENOTIFYSTRUCT', () {
      expect(sizeOf<GESTURENOTIFYSTRUCT>(), equals(24));
    });
    test('GUITHREADINFO', () {
      expect(sizeOf<GUITHREADINFO>(), equals(72));
    });
    test('HARDWAREINPUT', () {
      expect(sizeOf<HARDWAREINPUT>(), equals(8));
    });
    test('HOSTENT', () {
      expect(sizeOf<HOSTENT>(), equals(32));
    });
    test('HWAVEIN', () {
      expect(sizeOf<HWAVEIN>(), equals(8));
    });
    test('ICONINFO', () {
      expect(sizeOf<ICONINFO>(), equals(32));
    });
    test('ICONINFOEX', () {
      expect(sizeOf<ICONINFOEX>(), equals(1080));
    });
    test('IDLDESC', () {
      expect(sizeOf<IDLDESC>(), equals(16));
    });
    test('INITCOMMONCONTROLSEX', () {
      expect(sizeOf<INITCOMMONCONTROLSEX>(), equals(8));
    });
    test('INPUT', () {
      expect(sizeOf<INPUT>(), equals(40));
    });
    test('INPUT_RECORD', () {
      expect(sizeOf<INPUT_RECORD>(), equals(20));
    });
    test('INPUT_TRANSFORM', () {
      expect(sizeOf<INPUT_TRANSFORM>(), equals(64));
    });
    test('IN_ADDR', () {
      expect(sizeOf<IN_ADDR>(), equals(4));
    });
    test('IP_ADAPTER_ADDRESSES_LH', () {
      expect(sizeOf<IP_ADAPTER_ADDRESSES_LH>(), equals(448));
    });
    test('IP_ADAPTER_ANYCAST_ADDRESS_XP', () {
      expect(sizeOf<IP_ADAPTER_ANYCAST_ADDRESS_XP>(), equals(32));
    });
    test('IP_ADAPTER_DNS_SERVER_ADDRESS_XP', () {
      expect(sizeOf<IP_ADAPTER_DNS_SERVER_ADDRESS_XP>(), equals(32));
    });
    test('IP_ADAPTER_DNS_SUFFIX', () {
      expect(sizeOf<IP_ADAPTER_DNS_SUFFIX>(), equals(520));
    });
    test('IP_ADAPTER_GATEWAY_ADDRESS_LH', () {
      expect(sizeOf<IP_ADAPTER_GATEWAY_ADDRESS_LH>(), equals(32));
    });
    test('IP_ADAPTER_INDEX_MAP', () {
      expect(sizeOf<IP_ADAPTER_INDEX_MAP>(), equals(260));
    });
    test('IP_ADAPTER_MULTICAST_ADDRESS_XP', () {
      expect(sizeOf<IP_ADAPTER_MULTICAST_ADDRESS_XP>(), equals(32));
    });
    test('IP_ADAPTER_PREFIX_XP', () {
      expect(sizeOf<IP_ADAPTER_PREFIX_XP>(), equals(40));
    });
    test('IP_ADAPTER_UNICAST_ADDRESS_LH', () {
      expect(sizeOf<IP_ADAPTER_UNICAST_ADDRESS_LH>(), equals(64));
    });
    test('IP_ADAPTER_WINS_SERVER_ADDRESS_LH', () {
      expect(sizeOf<IP_ADAPTER_WINS_SERVER_ADDRESS_LH>(), equals(32));
    });
    test('IP_ADDRESS_STRING', () {
      expect(sizeOf<IP_ADDRESS_STRING>(), equals(16));
    });
    test('IP_ADDR_STRING', () {
      expect(sizeOf<IP_ADDR_STRING>(), equals(48));
    });
    test('IP_INTERFACE_INFO', () {
      expect(sizeOf<IP_INTERFACE_INFO>(), equals(264));
    });
    test('IP_PER_ADAPTER_INFO_W2KSP1', () {
      expect(sizeOf<IP_PER_ADAPTER_INFO_W2KSP1>(), equals(64));
    });
    test('ITEMIDLIST', () {
      expect(sizeOf<ITEMIDLIST>(), equals(3));
    });
    test('JOBOBJECT_IO_RATE_CONTROL_INFORMATION', () {
      expect(sizeOf<JOBOBJECT_IO_RATE_CONTROL_INFORMATION>(), equals(40));
    });
    test('JOB_INFO_1', () {
      expect(sizeOf<JOB_INFO_1>(), equals(96));
    });
    test('KBDLLHOOKSTRUCT', () {
      expect(sizeOf<KBDLLHOOKSTRUCT>(), equals(24));
    });
    test('KEYBDINPUT', () {
      expect(sizeOf<KEYBDINPUT>(), equals(24));
    });
    test('KEY_EVENT_RECORD', () {
      expect(sizeOf<KEY_EVENT_RECORD>(), equals(16));
    });
    test('KNOWNFOLDER_DEFINITION', () {
      expect(sizeOf<KNOWNFOLDER_DEFINITION>(), equals(112));
    });
    test('L2_NOTIFICATION_DATA', () {
      expect(sizeOf<L2_NOTIFICATION_DATA>(), equals(40));
    });
    test('LASTINPUTINFO', () {
      expect(sizeOf<LASTINPUTINFO>(), equals(8));
    });
    test('LOGBRUSH', () {
      expect(sizeOf<LOGBRUSH>(), equals(16));
    });
    test('LOGFONT', () {
      expect(sizeOf<LOGFONT>(), equals(92));
    });
    test('LOGPALETTE', () {
      expect(sizeOf<LOGPALETTE>(), equals(8));
    });
    test('LUID', () {
      expect(sizeOf<LUID>(), equals(8));
    });
    test('MAGCOLOREFFECT', () {
      expect(sizeOf<MAGCOLOREFFECT>(), equals(100));
    });
    test('MAGIMAGEHEADER', () {
      expect(sizeOf<MAGIMAGEHEADER>(), equals(40));
    });
    test('MAGTRANSFORM', () {
      expect(sizeOf<MAGTRANSFORM>(), equals(36));
    });
    test('MARGINS', () {
      expect(sizeOf<MARGINS>(), equals(16));
    });
    test('MCI_OPEN_PARMS', () {
      expect(sizeOf<MCI_OPEN_PARMS>(), equals(36));
    });
    test('MCI_PLAY_PARMS', () {
      expect(sizeOf<MCI_PLAY_PARMS>(), equals(16));
    });
    test('MCI_SEEK_PARMS', () {
      expect(sizeOf<MCI_SEEK_PARMS>(), equals(12));
    });
    test('MCI_STATUS_PARMS', () {
      expect(sizeOf<MCI_STATUS_PARMS>(), equals(24));
    });
    test('MEMORYSTATUSEX', () {
      expect(sizeOf<MEMORYSTATUSEX>(), equals(64));
    });
    test('MEMORY_BASIC_INFORMATION', () {
      expect(sizeOf<MEMORY_BASIC_INFORMATION>(), equals(48));
    });
    test('MENUBARINFO', () {
      expect(sizeOf<MENUBARINFO>(), equals(48));
    });
    test('MENUINFO', () {
      expect(sizeOf<MENUINFO>(), equals(40));
    });
    test('MENUITEMINFO', () {
      expect(sizeOf<MENUITEMINFO>(), equals(80));
    });
    test('MENUITEMTEMPLATE', () {
      expect(sizeOf<MENUITEMTEMPLATE>(), equals(6));
    });
    test('MENUITEMTEMPLATEHEADER', () {
      expect(sizeOf<MENUITEMTEMPLATEHEADER>(), equals(4));
    });
    test('MENU_EVENT_RECORD', () {
      expect(sizeOf<MENU_EVENT_RECORD>(), equals(4));
    });
    test('METAFILEPICT', () {
      expect(sizeOf<METAFILEPICT>(), equals(24));
    });
    test('MIDIEVENT', () {
      expect(sizeOf<MIDIEVENT>(), equals(16));
    });
    test('MIDIHDR', () {
      expect(sizeOf<MIDIHDR>(), equals(112));
    });
    test('MIDIINCAPS', () {
      expect(sizeOf<MIDIINCAPS>(), equals(76));
    });
    test('MIDIOUTCAPS', () {
      expect(sizeOf<MIDIOUTCAPS>(), equals(84));
    });
    test('MIDIPROPTEMPO', () {
      expect(sizeOf<MIDIPROPTEMPO>(), equals(8));
    });
    test('MIDIPROPTIMEDIV', () {
      expect(sizeOf<MIDIPROPTIMEDIV>(), equals(8));
    });
    test('MIDISTRMBUFFVER', () {
      expect(sizeOf<MIDISTRMBUFFVER>(), equals(12));
    });
    test('MINMAXINFO', () {
      expect(sizeOf<MINMAXINFO>(), equals(40));
    });
    test('MMTIME', () {
      expect(sizeOf<MMTIME>(), equals(12));
    });
    test('MODEMDEVCAPS', () {
      expect(sizeOf<MODEMDEVCAPS>(), equals(80));
    });
    test('MODEMSETTINGS', () {
      expect(sizeOf<MODEMSETTINGS>(), equals(48));
    });
    test('MODLOAD_DATA', () {
      expect(sizeOf<MODLOAD_DATA>(), equals(24));
    });
    test('MODULEINFO', () {
      expect(sizeOf<MODULEINFO>(), equals(24));
    });
    test('MONITORINFO', () {
      expect(sizeOf<MONITORINFO>(), equals(40));
    });
    test('MONITORINFOEX', () {
      expect(sizeOf<MONITORINFOEX>(), equals(104));
    });
    test('MOUSEHOOKSTRUCT', () {
      expect(sizeOf<MOUSEHOOKSTRUCT>(), equals(32));
    });
    test('MOUSEHOOKSTRUCTEX', () {
      expect(sizeOf<MOUSEHOOKSTRUCTEX>(), equals(40));
    });
    test('MOUSEINPUT', () {
      expect(sizeOf<MOUSEINPUT>(), equals(32));
    });
    test('MOUSEMOVEPOINT', () {
      expect(sizeOf<MOUSEMOVEPOINT>(), equals(24));
    });
    test('MOUSE_EVENT_RECORD', () {
      expect(sizeOf<MOUSE_EVENT_RECORD>(), equals(16));
    });
    test('MSG', () {
      expect(sizeOf<MSG>(), equals(48));
    });
    test('MSLLHOOKSTRUCT', () {
      expect(sizeOf<MSLLHOOKSTRUCT>(), equals(32));
    });
    test('NCCALCSIZE_PARAMS', () {
      expect(sizeOf<NCCALCSIZE_PARAMS>(), equals(56));
    });
    test('NDIS_OBJECT_HEADER', () {
      expect(sizeOf<NDIS_OBJECT_HEADER>(), equals(4));
    });
    test('NET_LUID_LH', () {
      expect(sizeOf<NET_LUID_LH>(), equals(8));
    });
    test('NEWTEXTMETRIC', () {
      expect(sizeOf<NEWTEXTMETRIC>(), equals(76));
    });
    test('NLM_SIMULATED_PROFILE_INFO', () {
      expect(sizeOf<NLM_SIMULATED_PROFILE_INFO>(), equals(524));
    });
    test('NONCLIENTMETRICS', () {
      expect(sizeOf<NONCLIENTMETRICS>(), equals(504));
    });
    test('NOTIFYICONDATA', () {
      expect(sizeOf<NOTIFYICONDATA>(), equals(976));
    });
    test('OPENCARDNAME', () {
      expect(sizeOf<OPENCARDNAME>(), equals(176));
    });
    test('OPENCARDNAME_EX', () {
      expect(sizeOf<OPENCARDNAME_EX>(), equals(128));
    });
    test('OPENCARD_SEARCH_CRITERIA', () {
      expect(sizeOf<OPENCARD_SEARCH_CRITERIA>(), equals(96));
    });
    test('OPENFILENAME', () {
      expect(sizeOf<OPENFILENAME>(), equals(152));
    });
    test('OSINFO', () {
      expect(sizeOf<OSINFO>(), equals(12));
    });
    test('OSVERSIONINFOEX', () {
      expect(sizeOf<OSVERSIONINFOEX>(), equals(284));
    });
    test('OSVERSIONINFO', () {
      expect(sizeOf<OSVERSIONINFO>(), equals(276));
    });
    test('OVERLAPPED', () {
      expect(sizeOf<OVERLAPPED>(), equals(32));
    });
    test('OVERLAPPED_ENTRY', () {
      expect(sizeOf<OVERLAPPED_ENTRY>(), equals(32));
    });
    test('PAINTSTRUCT', () {
      expect(sizeOf<PAINTSTRUCT>(), equals(72));
    });
    test('PALETTEENTRY', () {
      expect(sizeOf<PALETTEENTRY>(), equals(4));
    });
    test('PARAMDESC', () {
      expect(sizeOf<PARAMDESC>(), equals(16));
    });
    test('PARAMDESCEX', () {
      expect(sizeOf<PARAMDESCEX>(), equals(32));
    });
    test('PERFORMANCE_INFORMATION', () {
      expect(sizeOf<PERFORMANCE_INFORMATION>(), equals(104));
    });
    test('PHYSICAL_MONITOR', () {
      expect(sizeOf<PHYSICAL_MONITOR>(), equals(264));
    });
    test('POINT', () {
      expect(sizeOf<POINT>(), equals(8));
    });
    test('POINTER_INFO', () {
      expect(sizeOf<POINTER_INFO>(), equals(96));
    });
    test('POINTER_PEN_INFO', () {
      expect(sizeOf<POINTER_PEN_INFO>(), equals(120));
    });
    test('POINTER_TOUCH_INFO', () {
      expect(sizeOf<POINTER_TOUCH_INFO>(), equals(144));
    });
    test('POINTL', () {
      expect(sizeOf<POINTL>(), equals(8));
    });
    test('POINTS', () {
      expect(sizeOf<POINTS>(), equals(4));
    });
    test('POLYTEXT', () {
      expect(sizeOf<POLYTEXT>(), equals(56));
    });
    test('PORT_INFO_1', () {
      expect(sizeOf<PORT_INFO_1>(), equals(8));
    });
    test('PORT_INFO_2', () {
      expect(sizeOf<PORT_INFO_2>(), equals(32));
    });
    test('POWERBROADCAST_SETTING', () {
      expect(sizeOf<POWERBROADCAST_SETTING>(), equals(24));
    });
    test('PRINTER_DEFAULTS', () {
      expect(sizeOf<PRINTER_DEFAULTS>(), equals(24));
    });
    test('PRINTER_INFO_1', () {
      expect(sizeOf<PRINTER_INFO_1>(), equals(32));
    });
    test('PRINTER_INFO_2', () {
      expect(sizeOf<PRINTER_INFO_2>(), equals(136));
    });
    test('PRINTER_INFO_3', () {
      expect(sizeOf<PRINTER_INFO_3>(), equals(8));
    });
    test('PRINTER_INFO_4', () {
      expect(sizeOf<PRINTER_INFO_4>(), equals(24));
    });
    test('PRINTER_INFO_5', () {
      expect(sizeOf<PRINTER_INFO_5>(), equals(32));
    });
    test('PRINTER_INFO_6', () {
      expect(sizeOf<PRINTER_INFO_6>(), equals(4));
    });
    test('PRINTER_NOTIFY_INFO', () {
      expect(sizeOf<PRINTER_NOTIFY_INFO>(), equals(48));
    });
    test('PRINTER_NOTIFY_INFO_DATA', () {
      expect(sizeOf<PRINTER_NOTIFY_INFO_DATA>(), equals(32));
    });
    test('PRINTER_OPTIONS', () {
      expect(sizeOf<PRINTER_OPTIONS>(), equals(8));
    });
    test('PRINT_EXECUTION_DATA', () {
      expect(sizeOf<PRINT_EXECUTION_DATA>(), equals(8));
    });
    test('PROCESS_HEAP_ENTRY', () {
      expect(sizeOf<PROCESS_HEAP_ENTRY>(), equals(40));
    });
    test('PROCESS_INFORMATION', () {
      expect(sizeOf<PROCESS_INFORMATION>(), equals(24));
    });
    test('PROPERTYKEY', () {
      expect(sizeOf<PROPERTYKEY>(), equals(20));
    });
    test('PROPSPEC', () {
      expect(sizeOf<PROPSPEC>(), equals(16));
    });
    test('PROPVARIANT', () {
      expect(sizeOf<PROPVARIANT>(), equals(24));
    });
    test('PROTOENT', () {
      expect(sizeOf<PROTOENT>(), equals(24));
    });
    test('QUERY_SERVICE_CONFIG', () {
      expect(sizeOf<QUERY_SERVICE_CONFIG>(), equals(64));
    });
    test('QUERY_SERVICE_LOCK_STATUS', () {
      expect(sizeOf<QUERY_SERVICE_LOCK_STATUS>(), equals(24));
    });
    test('RAWHID', () {
      expect(sizeOf<RAWHID>(), equals(12));
    });
    test('RAWINPUT', () {
      expect(sizeOf<RAWINPUT>(), equals(48));
    });
    test('RAWINPUTDEVICE', () {
      expect(sizeOf<RAWINPUTDEVICE>(), equals(16));
    });
    test('RAWINPUTDEVICELIST', () {
      expect(sizeOf<RAWINPUTDEVICELIST>(), equals(16));
    });
    test('RAWINPUTHEADER', () {
      expect(sizeOf<RAWINPUTHEADER>(), equals(24));
    });
    test('RAWKEYBOARD', () {
      expect(sizeOf<RAWKEYBOARD>(), equals(16));
    });
    test('RAWMOUSE', () {
      expect(sizeOf<RAWMOUSE>(), equals(24));
    });
    test('RECT', () {
      expect(sizeOf<RECT>(), equals(16));
    });
    test('RECTL', () {
      expect(sizeOf<RECTL>(), equals(16));
    });
    test('RGBQUAD', () {
      expect(sizeOf<RGBQUAD>(), equals(4));
    });
    test('SAFEARRAY', () {
      expect(sizeOf<SAFEARRAY>(), equals(32));
    });
    test('SAFEARRAYBOUND', () {
      expect(sizeOf<SAFEARRAYBOUND>(), equals(8));
    });
    test('SCARD_ATRMASK', () {
      expect(sizeOf<SCARD_ATRMASK>(), equals(76));
    });
    test('SCARD_IO_REQUEST', () {
      expect(sizeOf<SCARD_IO_REQUEST>(), equals(8));
    });
    test('SCARD_READERSTATE', () {
      expect(sizeOf<SCARD_READERSTATE>(), equals(64));
    });
    test('SCROLLBARINFO', () {
      expect(sizeOf<SCROLLBARINFO>(), equals(60));
    });
    test('SCROLLINFO', () {
      expect(sizeOf<SCROLLINFO>(), equals(28));
    });
    test('SC_ACTION', () {
      expect(sizeOf<SC_ACTION>(), equals(8));
    });
    test('SDP_ELEMENT_DATA', () {
      expect(sizeOf<SDP_ELEMENT_DATA>(), equals(24));
    });
    test('SDP_LARGE_INTEGER_16', () {
      expect(sizeOf<SDP_LARGE_INTEGER_16>(), equals(16));
    });
    test('SDP_STRING_TYPE_DATA', () {
      expect(sizeOf<SDP_STRING_TYPE_DATA>(), equals(6));
    });
    test('SDP_ULARGE_INTEGER_16', () {
      expect(sizeOf<SDP_ULARGE_INTEGER_16>(), equals(16));
    });
    test('SECURITY_ATTRIBUTES', () {
      expect(sizeOf<SECURITY_ATTRIBUTES>(), equals(24));
    });
    test('SECURITY_DESCRIPTOR', () {
      expect(sizeOf<SECURITY_DESCRIPTOR>(), equals(40));
    });
    test('SERVENT', () {
      expect(sizeOf<SERVENT>(), equals(32));
    });
    test('SERVICE_CONTROL_STATUS_REASON_PARAMS', () {
      expect(sizeOf<SERVICE_CONTROL_STATUS_REASON_PARAMS>(), equals(56));
    });
    test('SERVICE_DELAYED_AUTO_START_INFO', () {
      expect(sizeOf<SERVICE_DELAYED_AUTO_START_INFO>(), equals(4));
    });
    test('SERVICE_DESCRIPTION', () {
      expect(sizeOf<SERVICE_DESCRIPTION>(), equals(8));
    });
    test('SERVICE_FAILURE_ACTIONS', () {
      expect(sizeOf<SERVICE_FAILURE_ACTIONS>(), equals(40));
    });
    test('SERVICE_FAILURE_ACTIONS_FLAG', () {
      expect(sizeOf<SERVICE_FAILURE_ACTIONS_FLAG>(), equals(4));
    });
    test('SERVICE_LAUNCH_PROTECTED_INFO', () {
      expect(sizeOf<SERVICE_LAUNCH_PROTECTED_INFO>(), equals(4));
    });
    test('SERVICE_NOTIFY_2', () {
      expect(sizeOf<SERVICE_NOTIFY_2>(), equals(80));
    });
    test('SERVICE_PREFERRED_NODE_INFO', () {
      expect(sizeOf<SERVICE_PREFERRED_NODE_INFO>(), equals(4));
    });
    test('SERVICE_PRESHUTDOWN_INFO', () {
      expect(sizeOf<SERVICE_PRESHUTDOWN_INFO>(), equals(4));
    });
    test('SERVICE_REQUIRED_PRIVILEGES_INFO', () {
      expect(sizeOf<SERVICE_REQUIRED_PRIVILEGES_INFO>(), equals(8));
    });
    test('SERVICE_SID_INFO', () {
      expect(sizeOf<SERVICE_SID_INFO>(), equals(4));
    });
    test('SERVICE_STATUS', () {
      expect(sizeOf<SERVICE_STATUS>(), equals(28));
    });
    test('SERVICE_STATUS_PROCESS', () {
      expect(sizeOf<SERVICE_STATUS_PROCESS>(), equals(36));
    });
    test('SERVICE_TABLE_ENTRY', () {
      expect(sizeOf<SERVICE_TABLE_ENTRY>(), equals(16));
    });
    test('SERVICE_TIMECHANGE_INFO', () {
      expect(sizeOf<SERVICE_TIMECHANGE_INFO>(), equals(16));
    });
    test('SERVICE_TRIGGER', () {
      expect(sizeOf<SERVICE_TRIGGER>(), equals(32));
    });
    test('SERVICE_TRIGGER_INFO', () {
      expect(sizeOf<SERVICE_TRIGGER_INFO>(), equals(24));
    });
    test('SERVICE_TRIGGER_SPECIFIC_DATA_ITEM', () {
      expect(sizeOf<SERVICE_TRIGGER_SPECIFIC_DATA_ITEM>(), equals(16));
    });
    test('SHELLEXECUTEINFO', () {
      expect(sizeOf<SHELLEXECUTEINFO>(), equals(112));
    });
    test('SHELL_ITEM_RESOURCE', () {
      expect(sizeOf<SHELL_ITEM_RESOURCE>(), equals(536));
    });
    test('SHFILEINFO', () {
      expect(sizeOf<SHFILEINFO>(), equals(696));
    });
    test('SHFILEOPSTRUCT', () {
      expect(sizeOf<SHFILEOPSTRUCT>(), equals(56));
    });
    test('SHITEMID', () {
      expect(sizeOf<SHITEMID>(), equals(3));
    });
    test('SHQUERYRBINFO', () {
      expect(sizeOf<SHQUERYRBINFO>(), equals(24));
    });
    test('SIZE', () {
      expect(sizeOf<SIZE>(), equals(8));
    });
    test('SMALL_RECT', () {
      expect(sizeOf<SMALL_RECT>(), equals(8));
    });
    test('SOCKADDR', () {
      expect(sizeOf<SOCKADDR>(), equals(16));
    });
    test('SOCKADDR_BTH', () {
      expect(sizeOf<SOCKADDR_BTH>(), equals(30));
    });
    test('SOCKET_ADDRESS', () {
      expect(sizeOf<SOCKET_ADDRESS>(), equals(16));
    });
    test('SOLE_AUTHENTICATION_SERVICE', () {
      expect(sizeOf<SOLE_AUTHENTICATION_SERVICE>(), equals(24));
    });
    test('SPEVENT', () {
      expect(sizeOf<SPEVENT>(), equals(32));
    });
    test('SPEVENTSOURCEINFO', () {
      expect(sizeOf<SPEVENTSOURCEINFO>(), equals(24));
    });
    test('SPVOICESTATUS', () {
      expect(sizeOf<SPVOICESTATUS>(), equals(52));
    });
    test('SP_DEVICE_INTERFACE_DATA', () {
      expect(sizeOf<SP_DEVICE_INTERFACE_DATA>(), equals(32));
    });
    test('SP_DEVICE_INTERFACE_DETAIL_DATA_', () {
      expect(sizeOf<SP_DEVICE_INTERFACE_DETAIL_DATA_>(), equals(8));
    });
    test('SP_DEVINFO_DATA', () {
      expect(sizeOf<SP_DEVINFO_DATA>(), equals(32));
    });
    test('STARTUPINFOEX', () {
      expect(sizeOf<STARTUPINFOEX>(), equals(112));
    });
    test('STARTUPINFO', () {
      expect(sizeOf<STARTUPINFO>(), equals(104));
    });
    test('STATPROPSETSTG', () {
      expect(sizeOf<STATPROPSETSTG>(), equals(64));
    });
    test('STATPROPSTG', () {
      expect(sizeOf<STATPROPSTG>(), equals(16));
    });
    test('STATSTG', () {
      expect(sizeOf<STATSTG>(), equals(80));
    });
    test('STORAGE_DEVICE_NUMBER', () {
      expect(sizeOf<STORAGE_DEVICE_NUMBER>(), equals(12));
    });
    test('STRRET', () {
      expect(sizeOf<STRRET>(), equals(272));
    });
    test('STYLESTRUCT', () {
      expect(sizeOf<STYLESTRUCT>(), equals(8));
    });
    test('SYMBOL_INFO', () {
      expect(sizeOf<SYMBOL_INFO>(), equals(88));
    });
    test('SYSTEMTIME', () {
      expect(sizeOf<SYSTEMTIME>(), equals(16));
    });
    test('SYSTEM_BASIC_INFORMATION', () {
      expect(sizeOf<SYSTEM_BASIC_INFORMATION>(), equals(64));
    });
    test('SYSTEM_BATTERY_STATE', () {
      expect(sizeOf<SYSTEM_BATTERY_STATE>(), equals(32));
    });
    test('SYSTEM_CODEINTEGRITY_INFORMATION', () {
      expect(sizeOf<SYSTEM_CODEINTEGRITY_INFORMATION>(), equals(8));
    });
    test('SYSTEM_EXCEPTION_INFORMATION', () {
      expect(sizeOf<SYSTEM_EXCEPTION_INFORMATION>(), equals(16));
    });
    test('SYSTEM_INFO', () {
      expect(sizeOf<SYSTEM_INFO>(), equals(48));
    });
    test('SYSTEM_INTERRUPT_INFORMATION', () {
      expect(sizeOf<SYSTEM_INTERRUPT_INFORMATION>(), equals(24));
    });
    test('SYSTEM_LOGICAL_PROCESSOR_INFORMATION', () {
      expect(sizeOf<SYSTEM_LOGICAL_PROCESSOR_INFORMATION>(), equals(32));
    });
    test('SYSTEM_LOOKASIDE_INFORMATION', () {
      expect(sizeOf<SYSTEM_LOOKASIDE_INFORMATION>(), equals(32));
    });
    test('SYSTEM_PERFORMANCE_INFORMATION', () {
      expect(sizeOf<SYSTEM_PERFORMANCE_INFORMATION>(), equals(312));
    });
    test('SYSTEM_POLICY_INFORMATION', () {
      expect(sizeOf<SYSTEM_POLICY_INFORMATION>(), equals(32));
    });
    test('SYSTEM_POWER_STATUS', () {
      expect(sizeOf<SYSTEM_POWER_STATUS>(), equals(12));
    });
    test('SYSTEM_PROCESSOR_PERFORMANCE_INFORMATION', () {
      expect(sizeOf<SYSTEM_PROCESSOR_PERFORMANCE_INFORMATION>(), equals(48));
    });
    test('SYSTEM_PROCESS_INFORMATION', () {
      expect(sizeOf<SYSTEM_PROCESS_INFORMATION>(), equals(256));
    });
    test('SYSTEM_REGISTRY_QUOTA_INFORMATION', () {
      expect(sizeOf<SYSTEM_REGISTRY_QUOTA_INFORMATION>(), equals(16));
    });
    test('SYSTEM_THREAD_INFORMATION', () {
      expect(sizeOf<SYSTEM_THREAD_INFORMATION>(), equals(80));
    });
    test('SYSTEM_TIMEOFDAY_INFORMATION', () {
      expect(sizeOf<SYSTEM_TIMEOFDAY_INFORMATION>(), equals(48));
    });
    test('SdpAttributeRange', () {
      expect(sizeOf<SdpAttributeRange>(), equals(4));
    });
    test('SdpQueryUuid', () {
      expect(sizeOf<SdpQueryUuid>(), equals(20));
    });
    test('SdpQueryUuidUnion', () {
      expect(sizeOf<SdpQueryUuidUnion>(), equals(16));
    });
    test('TASKDIALOGCONFIG', () {
      expect(sizeOf<TASKDIALOGCONFIG>(), equals(160));
    });
    test('TASKDIALOG_BUTTON', () {
      expect(sizeOf<TASKDIALOG_BUTTON>(), equals(12));
    });
    test('TEXTMETRIC', () {
      expect(sizeOf<TEXTMETRIC>(), equals(60));
    });
    test('TIMEVAL', () {
      expect(sizeOf<TIMEVAL>(), equals(8));
    });
    test('TITLEBARINFO', () {
      expect(sizeOf<TITLEBARINFO>(), equals(44));
    });
    test('TITLEBARINFOEX', () {
      expect(sizeOf<TITLEBARINFOEX>(), equals(140));
    });
    test('TOKEN_APPCONTAINER_INFORMATION', () {
      expect(sizeOf<TOKEN_APPCONTAINER_INFORMATION>(), equals(8));
    });
    test('TOUCHINPUT', () {
      expect(sizeOf<TOUCHINPUT>(), equals(48));
    });
    test('TOUCHPREDICTIONPARAMETERS', () {
      expect(sizeOf<TOUCHPREDICTIONPARAMETERS>(), equals(16));
    });
    test('TPMPARAMS', () {
      expect(sizeOf<TPMPARAMS>(), equals(20));
    });
    test('TYPEATTR', () {
      expect(sizeOf<TYPEATTR>(), equals(96));
    });
    test('TYPEDESC', () {
      expect(sizeOf<TYPEDESC>(), equals(16));
    });
    test('UNICODE_STRING', () {
      expect(sizeOf<UNICODE_STRING>(), equals(16));
    });
    test('UNSIGNED_RATIO', () {
      expect(sizeOf<UNSIGNED_RATIO>(), equals(8));
    });
    test('UPDATELAYEREDWINDOWINFO', () {
      expect(sizeOf<UPDATELAYEREDWINDOWINFO>(), equals(80));
    });
    test('VALENT', () {
      expect(sizeOf<VALENT>(), equals(32));
    });
    test('VARDESC', () {
      expect(sizeOf<VARDESC>(), equals(64));
    });
    test('VARIANT', () {
      expect(sizeOf<VARIANT>(), equals(24));
    });
    test('VOLUME_DISK_EXTENTS', () {
      expect(sizeOf<VOLUME_DISK_EXTENTS>(), equals(32));
    });
    test('VS_FIXEDFILEINFO', () {
      expect(sizeOf<VS_FIXEDFILEINFO>(), equals(52));
    });
    test('WAVEFORMATEX', () {
      expect(sizeOf<WAVEFORMATEX>(), equals(18));
    });
    test('WAVEFORMATEXTENSIBLE', () {
      expect(sizeOf<WAVEFORMATEXTENSIBLE>(), equals(40));
    });
    test('WAVEHDR', () {
      expect(sizeOf<WAVEHDR>(), equals(48));
    });
    test('WAVEINCAPS', () {
      expect(sizeOf<WAVEINCAPS>(), equals(80));
    });
    test('WAVEOUTCAPS', () {
      expect(sizeOf<WAVEOUTCAPS>(), equals(84));
    });
    test('WIN32_FIND_DATA', () {
      expect(sizeOf<WIN32_FIND_DATA>(), equals(592));
    });
    test('WINDOWINFO', () {
      expect(sizeOf<WINDOWINFO>(), equals(60));
    });
    test('WINDOWPLACEMENT', () {
      expect(sizeOf<WINDOWPLACEMENT>(), equals(44));
    });
    test('WINDOWPOS', () {
      expect(sizeOf<WINDOWPOS>(), equals(40));
    });
    test('WINDOW_BUFFER_SIZE_RECORD', () {
      expect(sizeOf<WINDOW_BUFFER_SIZE_RECORD>(), equals(4));
    });
    test('WLAN_ASSOCIATION_ATTRIBUTES', () {
      expect(sizeOf<WLAN_ASSOCIATION_ATTRIBUTES>(), equals(68));
    });
    test('WLAN_AUTH_CIPHER_PAIR_LIST', () {
      expect(sizeOf<WLAN_AUTH_CIPHER_PAIR_LIST>(), equals(12));
    });
    test('WLAN_AVAILABLE_NETWORK', () {
      expect(sizeOf<WLAN_AVAILABLE_NETWORK>(), equals(628));
    });
    test('WLAN_AVAILABLE_NETWORK_LIST', () {
      expect(sizeOf<WLAN_AVAILABLE_NETWORK_LIST>(), equals(636));
    });
    test('WLAN_BSS_ENTRY', () {
      expect(sizeOf<WLAN_BSS_ENTRY>(), equals(360));
    });
    test('WLAN_BSS_LIST', () {
      expect(sizeOf<WLAN_BSS_LIST>(), equals(368));
    });
    test('WLAN_CONNECTION_ATTRIBUTES', () {
      expect(sizeOf<WLAN_CONNECTION_ATTRIBUTES>(), equals(604));
    });
    test('WLAN_CONNECTION_NOTIFICATION_DATA', () {
      expect(sizeOf<WLAN_CONNECTION_NOTIFICATION_DATA>(), equals(572));
    });
    test('WLAN_CONNECTION_PARAMETERS', () {
      expect(sizeOf<WLAN_CONNECTION_PARAMETERS>(), equals(40));
    });
    test('WLAN_COUNTRY_OR_REGION_STRING_LIST', () {
      expect(sizeOf<WLAN_COUNTRY_OR_REGION_STRING_LIST>(), equals(8));
    });
    test('WLAN_DEVICE_SERVICE_GUID_LIST', () {
      expect(sizeOf<WLAN_DEVICE_SERVICE_GUID_LIST>(), equals(24));
    });
    test('WLAN_DEVICE_SERVICE_NOTIFICATION_DATA', () {
      expect(sizeOf<WLAN_DEVICE_SERVICE_NOTIFICATION_DATA>(), equals(28));
    });
    test('WLAN_HOSTED_NETWORK_CONNECTION_SETTINGS', () {
      expect(sizeOf<WLAN_HOSTED_NETWORK_CONNECTION_SETTINGS>(), equals(40));
    });
    test('WLAN_HOSTED_NETWORK_DATA_PEER_STATE_CHANGE', () {
      expect(sizeOf<WLAN_HOSTED_NETWORK_DATA_PEER_STATE_CHANGE>(), equals(28));
    });
    test('WLAN_HOSTED_NETWORK_PEER_STATE', () {
      expect(sizeOf<WLAN_HOSTED_NETWORK_PEER_STATE>(), equals(12));
    });
    test('WLAN_HOSTED_NETWORK_RADIO_STATE', () {
      expect(sizeOf<WLAN_HOSTED_NETWORK_RADIO_STATE>(), equals(8));
    });
    test('WLAN_HOSTED_NETWORK_SECURITY_SETTINGS', () {
      expect(sizeOf<WLAN_HOSTED_NETWORK_SECURITY_SETTINGS>(), equals(8));
    });
    test('WLAN_HOSTED_NETWORK_STATE_CHANGE', () {
      expect(sizeOf<WLAN_HOSTED_NETWORK_STATE_CHANGE>(), equals(12));
    });
    test('WLAN_HOSTED_NETWORK_STATUS', () {
      expect(sizeOf<WLAN_HOSTED_NETWORK_STATUS>(), equals(52));
    });
    test('WLAN_INTERFACE_CAPABILITY', () {
      expect(sizeOf<WLAN_INTERFACE_CAPABILITY>(), equals(276));
    });
    test('WLAN_INTERFACE_INFO', () {
      expect(sizeOf<WLAN_INTERFACE_INFO>(), equals(532));
    });
    test('WLAN_INTERFACE_INFO_LIST', () {
      expect(sizeOf<WLAN_INTERFACE_INFO_LIST>(), equals(540));
    });
    test('WLAN_MAC_FRAME_STATISTICS', () {
      expect(sizeOf<WLAN_MAC_FRAME_STATISTICS>(), equals(96));
    });
    test('WLAN_MSM_NOTIFICATION_DATA', () {
      expect(sizeOf<WLAN_MSM_NOTIFICATION_DATA>(), equals(580));
    });
    test('WLAN_PHY_FRAME_STATISTICS', () {
      expect(sizeOf<WLAN_PHY_FRAME_STATISTICS>(), equals(144));
    });
    test('WLAN_PHY_RADIO_STATE', () {
      expect(sizeOf<WLAN_PHY_RADIO_STATE>(), equals(12));
    });
    test('WLAN_PROFILE_INFO', () {
      expect(sizeOf<WLAN_PROFILE_INFO>(), equals(516));
    });
    test('WLAN_PROFILE_INFO_LIST', () {
      expect(sizeOf<WLAN_PROFILE_INFO_LIST>(), equals(524));
    });
    test('WLAN_RADIO_STATE', () {
      expect(sizeOf<WLAN_RADIO_STATE>(), equals(772));
    });
    test('WLAN_RATE_SET', () {
      expect(sizeOf<WLAN_RATE_SET>(), equals(256));
    });
    test('WLAN_RAW_DATA', () {
      expect(sizeOf<WLAN_RAW_DATA>(), equals(8));
    });
    test('WLAN_RAW_DATA_LIST', () {
      expect(sizeOf<WLAN_RAW_DATA_LIST>(), equals(16));
    });
    test('WLAN_SECURITY_ATTRIBUTES', () {
      expect(sizeOf<WLAN_SECURITY_ATTRIBUTES>(), equals(16));
    });
    test('WLAN_STATISTICS', () {
      expect(sizeOf<WLAN_STATISTICS>(), equals(368));
    });
    test('WNDCLASSEX', () {
      expect(sizeOf<WNDCLASSEX>(), equals(80));
    });
    test('WNDCLASS', () {
      expect(sizeOf<WNDCLASS>(), equals(72));
    });
    test('WTA_OPTIONS', () {
      expect(sizeOf<WTA_OPTIONS>(), equals(8));
    });
    test('XFORM', () {
      expect(sizeOf<XFORM>(), equals(24));
    });
    test('XINPUT_BATTERY_INFORMATION', () {
      expect(sizeOf<XINPUT_BATTERY_INFORMATION>(), equals(2));
    });
    test('XINPUT_CAPABILITIES', () {
      expect(sizeOf<XINPUT_CAPABILITIES>(), equals(20));
    });
    test('XINPUT_GAMEPAD', () {
      expect(sizeOf<XINPUT_GAMEPAD>(), equals(12));
    });
    test('XINPUT_KEYSTROKE', () {
      expect(sizeOf<XINPUT_KEYSTROKE>(), equals(8));
    });
    test('XINPUT_STATE', () {
      expect(sizeOf<XINPUT_STATE>(), equals(16));
    });
    test('XINPUT_VIBRATION', () {
      expect(sizeOf<XINPUT_VIBRATION>(), equals(4));
    });
  });
}
