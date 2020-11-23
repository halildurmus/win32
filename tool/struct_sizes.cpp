// struct_sizes.cpp

// Development utility to confirm the width of various Win32 structs.

// This code not used by the package itself, but is just a helper to inspect
// widths across x86 and x64 architectures.

// Compile with cl struct_sizes.cpp

#include <stdlib.h>
#include <windows.h>
#include <stdio.h>
#include <ShlObj_core.h>
#include <netlistmgr.h>
#include <bluetoothapis.h>
#include <wincred.h>
#include <Shlwapi.h>
#include <CorHdr.h>

void main()
{
    printf("On this platform:\n");

    printf("'WNDCLASS': %zu,\n", sizeof(WNDCLASS));
    printf("'SYSTEM_INFO': %zu,\n", sizeof(SYSTEM_INFO));
    printf("'PROCESS_INFORMATION': %zu,\n", sizeof(PROCESS_INFORMATION));
    printf("'STARTUPINFO': %zu,\n", sizeof(STARTUPINFO));
    printf("'BIND_OPTS': %zu,\n", sizeof(BIND_OPTS));
    printf("'SYSTEM_POWER_STATUS': %zu,\n", sizeof(SYSTEM_POWER_STATUS));
    printf("'SYSTEM_BATTERY_STATE': %zu,\n", sizeof(SYSTEM_BATTERY_STATE));
    printf("'STARTUPINFOEX': %zu,\n", sizeof(STARTUPINFOEX));
    printf("'SECURITY_ATTRIBUTES': %zu,\n", sizeof(SECURITY_ATTRIBUTES));
    printf("'SECURITY_DESCRIPTOR': %zu,\n", sizeof(SECURITY_DESCRIPTOR));
    printf("'SOLE_AUTHENTICATION_SERVICE': %zu,\n", sizeof(SOLE_AUTHENTICATION_SERVICE));
    printf("'VARIANT': %zu,\n", sizeof(VARIANT));
    printf("'COMDLG_FILTERSPEC': %zu,\n", sizeof(COMDLG_FILTERSPEC));
    printf("'ACCEL': %zu,\n", sizeof(ACCEL));
    printf("'MONITORINFO': %zu,\n", sizeof(MONITORINFO));
    printf("'CHOOSECOLOR': %zu,\n", sizeof(CHOOSECOLOR));
    printf("'FINDREPLACE': %zu,\n", sizeof(FINDREPLACE));
    printf("'CHOOSEFONT': %zu,\n", sizeof(CHOOSEFONT));
    printf("'OPENFILENAME': %zu,\n", sizeof(OPENFILENAME));
    printf("'LOGFONTW': %zu,\n", sizeof(LOGFONTW));
    printf("'ENUMLOGFONTEXW': %zu,\n", sizeof(ENUMLOGFONTEXW));
    printf("'CREATESTRUCT': %zu,\n", sizeof(CREATESTRUCT));
    printf("'MENUINFO': %zu,\n", sizeof(MENUINFO));
    printf("'MENUITEMINFO': %zu,\n", sizeof(MENUITEMINFO));
    printf("'MSG': %zu,\n", sizeof(MSG));
    printf("'SIZE': %zu,\n", sizeof(SIZE));
    printf("'MINMAXINFO': %zu,\n", sizeof(MINMAXINFO));
    printf("'POINT': %zu,\n", sizeof(POINT));
    printf("'PAINTSTRUCT': %zu,\n", sizeof(PAINTSTRUCT));
    printf("'RECT': %zu,\n", sizeof(RECT));
    printf("'INPUT': %zu,\n", sizeof(INPUT));
    printf("'MOUSEINPUT': %zu,\n", sizeof(MOUSEINPUT));
    printf("'KEYBDINPUT': %zu,\n", sizeof(KEYBDINPUT));
    printf("'HARDWAREINPUT': %zu,\n", sizeof(HARDWAREINPUT));
    printf("'TEXTMETRICW': %zu,\n", sizeof(TEXTMETRICW));
    printf("'SCROLLINFO': %zu,\n", sizeof(SCROLLINFO));
    printf("'SHELLEXECUTEINFO': %zu,\n", sizeof(SHELLEXECUTEINFO));
    printf("'SHQUERYRBINFO': %zu,\n", sizeof(SHQUERYRBINFO));
    printf("'GUID': %zu,\n", sizeof(GUID));
    printf("'CREDENTIAL_ATTRIBUTE': %zu,\n", sizeof(CREDENTIAL_ATTRIBUTE));
    printf("'CREDENTIAL': %zu,\n", sizeof(CREDENTIAL));
    printf("'BITMAPINFO': %zu,\n", sizeof(BITMAPINFO));
    printf("'FILETIME': %zu,\n", sizeof(FILETIME));
    printf("'KNOWNFOLDER_DEFINITION': %zu,\n", sizeof(KNOWNFOLDER_DEFINITION));
    printf("'SHITEMID': %zu,\n", sizeof(SHITEMID));
    printf("'DISPPARAMS': %zu,\n", sizeof(DISPPARAMS));
    printf("'CONSOLE_CURSOR_INFO': %zu,\n", sizeof(CONSOLE_CURSOR_INFO));
    printf("'CONSOLE_SCREEN_BUFFER_INFO': %zu,\n", sizeof(CONSOLE_SCREEN_BUFFER_INFO));
    printf("'CONSOLE_SELECTION_INFO': %zu,\n", sizeof(CONSOLE_SELECTION_INFO));
    printf("'COORD': %zu,\n", sizeof(COORD));
    printf("'CHAR_INFO': %zu,\n", sizeof(CHAR_INFO));
    printf("'SMALL_RECT': %zu,\n", sizeof(SMALL_RECT));
    printf("'INITCOMMONCONTROLSEX': %zu,\n", sizeof(INITCOMMONCONTROLSEX));
    printf("'DLGTEMPLATE': %zu,\n", sizeof(DLGTEMPLATE));
    printf("'DLGITEMTEMPLATE': %zu,\n", sizeof(DLGITEMTEMPLATE));
    printf("'TASKDIALOGCONFIG': %zu,\n", sizeof(TASKDIALOGCONFIG));
    printf("'TASKDIALOG_BUTTON': %zu,\n", sizeof(TASKDIALOG_BUTTON));
    printf("'DLLVERSIONINFO': %zu,\n", sizeof(DLLVERSIONINFO));
    printf("'OSVERSIONINFOW': %zu,\n", sizeof(OSVERSIONINFOW));
    printf("'BLUETOOTH_DEVICE_INFO': %zu,\n", sizeof(BLUETOOTH_DEVICE_INFO));
    printf("'BLUETOOTH_DEVICE_SEARCH_PARAMS': %zu,\n", sizeof(BLUETOOTH_DEVICE_SEARCH_PARAMS));
    printf("'BLUETOOTH_FIND_RADIO_PARAMS': %zu,\n", sizeof(BLUETOOTH_FIND_RADIO_PARAMS));
    printf("'BLUETOOTH_PIN_INFO': %zu,\n", sizeof(BLUETOOTH_PIN_INFO));
    printf("'COR_FIELD_OFFSET': %zu,\n", sizeof(COR_FIELD_OFFSET));
    printf("'VS_FIXEDFILEINFO': %zu,\n", sizeof(VS_FIXEDFILEINFO));
    printf("'MCI_OPEN_PARMS': %zu,\n", sizeof(MCI_OPEN_PARMS));
    printf("'MCI_PLAY_PARMS': %zu,\n", sizeof(MCI_PLAY_PARMS));
    printf("'MCI_SEEK_PARMS': %zu,\n", sizeof(MCI_SEEK_PARMS));
    printf("'MCI_STATUS_PARMS': %zu,\n", sizeof(MCI_STATUS_PARMS));
    printf("'LOGBRUSH': %zu,\n", sizeof(LOGBRUSH));
    printf("'EXCEPINFO': %zu,\n", sizeof(EXCEPINFO));
    printf("'PROPERTYKEY': %zu,\n", sizeof(PROPERTYKEY));
    printf("'PROPVARIANT': %zu,\n", sizeof(PROPVARIANT));
    printf("'SAFEARRAY': %zu,\n", sizeof(SAFEARRAY));
    printf("'CLSID': %zu,\n", sizeof(CLSID));
    printf("'STATSTG': %zu,\n", sizeof(STATSTG));
    printf("'NLM_SIMULATED_PROFILE_INFO': %zu,\n", sizeof(NLM_SIMULATED_PROFILE_INFO));
}
