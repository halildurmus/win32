#include <stdlib.h>
#include <windows.h>
#include <stdio.h>

void main()
{
    printf("On this platform:\n");
    printf("sizeof(int) is %zu\n", sizeof(int));

    printf("sizeof(LPCSTR) is %zu\n", sizeof(LPCSTR));
    printf("sizeof(LPCWSTR) is %zu\n", sizeof(LPCWSTR));
    printf("sizeof(HINSTANCE) is %zu\n", sizeof(HINSTANCE));
    printf("sizeof(HWND) is %zu\n", sizeof(HWND));
    printf("sizeof(HDC) is %zu\n", sizeof(HDC));
    printf("sizeof(HBRUSH) is %zu\n", sizeof(HBRUSH));
    printf("sizeof(ATOM) is %zu\n", sizeof(ATOM));
    printf("sizeof(WPARAM) is %zu\n", sizeof(WPARAM));
    printf("sizeof(LPARAM) is %zu\n", sizeof(LPARAM));
    printf("sizeof(LRESULT) is %zu\n", sizeof(LRESULT));

    printf("sizeof(WNDCLASS) is %zu\n", sizeof(WNDCLASS));
    printf("sizeof(WNDPROC) is %zu\n", sizeof(WNDPROC));
    printf("sizeof(POINT) is %zu\n", sizeof(POINT));
    printf("sizeof(RECT) is %zu\n", sizeof(RECT));
    printf("sizeof(MSG) is %zu\n", sizeof(MSG));

    printf("sizeof(TCHAR) is %zu\n", sizeof(TCHAR));
    printf("sizeof(UINT) is %zu\n", sizeof(UINT));
    printf("sizeof(DWORD) is %zu\n", sizeof(DWORD));
    printf("sizeof(WORD) is %zu\n", sizeof(WORD));
    printf("sizeof(SHORT) is %zu\n", sizeof(SHORT));
    printf("sizeof(LONG) is %zu\n", sizeof(LONG));
    printf("sizeof(BYTE) is %zu\n", sizeof(BYTE));
    printf("sizeof(BOOL) is %zu\n", sizeof(BOOL));

    printf("CW_USEDEFAULT is 0x%x\n", CW_USEDEFAULT);
    printf("NULL is 0x%x\n", NULL);
}