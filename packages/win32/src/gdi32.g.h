// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

#include "win32.h"

MYLIB_EXPORT BOOL BitBlt_Wrapper(HDC hdc, int x, int y, int cx, int cy, HDC hdcSrc, int x1, int y1, DWORD rop);

MYLIB_EXPORT HBITMAP CreateDIBSection_Wrapper(HDC hdc, BITMAPINFO* pbmi, DWORD usage, void** ppvBits, HANDLE hSection, unsigned long offset);
