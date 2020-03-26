#include <stdlib.h>
#include <windows.h>
#include <stdio.h>

void main()
{
    printf("On this platform:\n");
    printf("sizeof(int) is %lu\n", sizeof(int));
    printf("sizeof(LPCSTR) is %lu\n", sizeof(LPCSTR));
    printf("sizeof(HINSTANCE) is %lu\n", sizeof(HINSTANCE));
    printf("sizeof(HBRUSH) is %lu\n", sizeof(HBRUSH));
    printf("sizeof(WPARAM) is %lu\n", sizeof(WPARAM));
    printf("sizeof(LPARAM) is %lu\n", sizeof(LPARAM));


    printf("sizeof(TCHAR) is %lu\n", sizeof(TCHAR));
    printf("sizeof(UINT) is %lu\n", sizeof(UINT));
    printf("sizeof(DWORD) is %lu\n", sizeof(DWORD));
    printf("sizeof(WORD) is %lu\n", sizeof(WORD));
    printf("sizeof(SHORT) is %lu\n", sizeof(SHORT));
    printf("sizeof(BOOL) is %lu\n", sizeof(BOOL));
}