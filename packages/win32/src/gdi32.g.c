// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.

#include "gdi32.g.h"

Win32Result BitBlt_Wrapper(HDC hdc, int x, int y, int cx, int cy, HDC hdcSrc, int x1, int y1, DWORD rop) {
  BOOL value_ = BitBlt(hdc, x, y, cx, cy, hdcSrc, x1, y1, rop);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result CreateDIBSection_Wrapper(HDC hdc, BITMAPINFO* pbmi, DWORD usage, void** ppvBits, HANDLE hSection, unsigned long offset) {
  HBITMAP value_ = CreateDIBSection(hdc, pbmi, usage, ppvBits, hSection, offset);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}
