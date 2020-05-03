// Development utility to confirm the width of various Win32 objects.

// This is the only C++ code in the repo, and is not used by the
// package itself.

// Compile with cl constants.cpp

#include <stdlib.h>
#include <windows.h>
#include <stdio.h>

void main()
{
    int test = VK_UP;

    printf("On this platform:\n");
    printf("sizeof(int) is %zu\n", sizeof(int));

    printf("sizeof(LPCSTR) is %zu\n", sizeof(LPCSTR));
    printf("sizeof(LPCWSTR) is %zu\n", sizeof(LPCWSTR));

    printf("sizeof(HANDLE) is %zu\n", sizeof(HANDLE));
    printf("sizeof(HINSTANCE) is %zu\n", sizeof(HINSTANCE));
    printf("sizeof(HWND) is %zu\n", sizeof(HWND));
    printf("sizeof(HDC) is %zu\n", sizeof(HDC));
    printf("sizeof(HBRUSH) is %zu\n", sizeof(HBRUSH));

    printf("sizeof(ATOM) is %zu\n", sizeof(ATOM));
    printf("sizeof(WPARAM) is %zu\n", sizeof(WPARAM));
    printf("sizeof(LPARAM) is %zu\n", sizeof(LPARAM));
    printf("sizeof(LRESULT) is %zu\n", sizeof(LRESULT));

    printf("sizeof(BITMAPINFO) is %zu\n", sizeof(BITMAPINFO));
    printf("sizeof(WNDCLASS) is %zu\n", sizeof(WNDCLASS));
    printf("sizeof(WNDPROC) is %zu\n", sizeof(WNDPROC));
    printf("sizeof(POINT) is %zu\n", sizeof(POINT));
    printf("sizeof(RECT) is %zu\n", sizeof(RECT));
    printf("sizeof(COLORREF) is %zu\n", sizeof(COLORREF));
    printf("sizeof(MSG) is %zu\n", sizeof(MSG));

    printf("sizeof(TCHAR) is %zu\n", sizeof(TCHAR));
    printf("sizeof(UINT) is %zu\n", sizeof(UINT));
    printf("sizeof(DWORD) is %zu\n", sizeof(DWORD));
    printf("sizeof(WORD) is %zu\n", sizeof(WORD));
    printf("sizeof(SHORT) is %zu\n", sizeof(SHORT));
    printf("sizeof(LONG) is %zu\n", sizeof(LONG));
    printf("sizeof(BYTE) is %zu\n", sizeof(BYTE));
    printf("sizeof(BOOL) is %zu\n", sizeof(BOOL));

    printf("sizeof(COORD) is %zu\n", sizeof(COORD));
    printf("sizeof(SMALL_RECT) is %zu\n", sizeof(SMALL_RECT));
    printf("sizeof(SIZE_T) is %zu\n", sizeof(SIZE_T));
}
