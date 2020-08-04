// constants.cpp

// Development utility to confirm the width of various Win32 objects.

// This code not used by the package itself, but is just a helper to inspect
// widths across x86 and x64 architectures.

// Compile with cl constants.cpp

#include <stdlib.h>
#include <windows.h>
#include <stdio.h>
#include <ShlObj_core.h>
#include <wbemidl.h>
#include <netlistmgr.h>
#include <highlevelmonitorconfigurationapi.h>
#include <bluetoothapis.h>
#include <VersionHelpers.h>
#include <wincred.h>

void main()
{
    printf("On this platform:\n");
    printf("sizeof(int) is %zu\n", sizeof(int));
    printf("sizeof(long) is %zu\n", sizeof(long));
    printf("sizeof(short) is %zu\n", sizeof(short));
    printf("sizeof(char) is %zu\n", sizeof(char));

    printf("sizeof(LPCSTR) is %zu\n", sizeof(LPCSTR));
    printf("sizeof(LPCWSTR) is %zu\n", sizeof(LPCWSTR));

    printf("sizeof(HANDLE) is %zu\n", sizeof(HANDLE));
    printf("sizeof(HINSTANCE) is %zu\n", sizeof(HINSTANCE));
    printf("sizeof(HWND) is %zu\n", sizeof(HWND));
    printf("sizeof(HRESULT) is %zu\n", sizeof(HRESULT));
    printf("sizeof(HDC) is %zu\n", sizeof(HDC));
    printf("sizeof(HBRUSH) is %zu\n", sizeof(HBRUSH));

    printf("sizeof(ATOM) is %zu\n", sizeof(ATOM));
    printf("sizeof(WPARAM) is %zu\n", sizeof(WPARAM));
    printf("sizeof(LPARAM) is %zu\n", sizeof(LPARAM));
    printf("sizeof(LRESULT) is %zu\n", sizeof(LRESULT));

    printf("sizeof(BITMAPINFO) is %zu\n", sizeof(BITMAPINFO));
    printf("sizeof(BLUETOOTH_DEVICE_INFO_STRUCT) is %zu\n", sizeof(BLUETOOTH_DEVICE_INFO_STRUCT));
    printf("sizeof(WNDCLASS) is %zu\n", sizeof(WNDCLASS));
    printf("sizeof(WNDPROC) is %zu\n", sizeof(WNDPROC));
    printf("sizeof(POINT) is %zu\n", sizeof(POINT));
    printf("sizeof(RECT) is %zu\n", sizeof(RECT));
    printf("sizeof(COLORREF) is %zu\n", sizeof(COLORREF));
    printf("sizeof(TASKDIALOGCONFIG) is %zu\n", sizeof(TASKDIALOGCONFIG));
    printf("sizeof(FINDREPLACE) is %zu\n", sizeof(FINDREPLACE));
    printf("sizeof(LOGFONTW) is %zu\n", sizeof(LOGFONTW));
    printf("sizeof(CHOOSEFONT) is %zu\n", sizeof(CHOOSEFONTW));
    printf("sizeof(KEYBDINPUT) is %zu\n", sizeof(KEYBDINPUT));
    printf("sizeof(CHOOSECOLORW) is %zu\n", sizeof(CHOOSECOLORW));
    printf("sizeof(MSG) is %zu\n", sizeof(MSG));
    printf("sizeof(SIZE_T) is %zu\n", sizeof(SIZE_T));
    printf("sizeof(OSVERSIONINFOW) is %zu\n", sizeof(OSVERSIONINFOW));
    printf("sizeof(LSTATUS) is %zu\n", sizeof(LSTATUS));

    printf("sizeof(WCHAR) is %zu\n", sizeof(WCHAR));
    printf("sizeof(TCHAR) is %zu\n", sizeof(TCHAR));
    printf("sizeof(UINT) is %zu\n", sizeof(UINT));
    printf("sizeof(DWORD) is %zu\n", sizeof(DWORD));
    printf("sizeof(WORD) is %zu\n", sizeof(WORD));
    printf("sizeof(INT) is %zu\n", sizeof(INT));
    printf("sizeof(SHORT) is %zu\n", sizeof(SHORT));
    printf("sizeof(LONG) is %zu\n", sizeof(LONG));
    printf("sizeof(BYTE) is %zu\n", sizeof(BYTE));
    printf("sizeof(BOOL) is %zu\n", sizeof(BOOL));
    printf("sizeof(BOOLEAN) is %zu\n", sizeof(BOOLEAN));

    printf("sizeof(COORD) is %zu\n", sizeof(COORD));
    printf("sizeof(SMALL_RECT) is %zu\n", sizeof(SMALL_RECT));
    printf("sizeof(UINT_PTR) is %zu\n", sizeof(UINT_PTR));
    printf("sizeof(DWORD_PTR) is %zu\n", sizeof(DWORD_PTR));
}
