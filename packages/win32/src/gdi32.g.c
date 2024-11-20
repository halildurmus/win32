// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

#include "gdi32.g.h"

BOOL BitBlt_Wrapper(HDC hdc, int x, int y, int cx, int cy, HDC hdcSrc, int x1, int y1, DWORD rop) {
  trace_print("Calling BitBlt\n");
  BOOL result_ = BitBlt(hdc, x, y, cx, cy, hdcSrc, x1, y1, rop);
  trace_print("BitBlt returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

HBITMAP CreateDIBSection_Wrapper(HDC hdc, BITMAPINFO* pbmi, DWORD usage, void** ppvBits, HANDLE hSection, unsigned long offset) {
  trace_print("Calling CreateDIBSection\n");
  HBITMAP result_ = CreateDIBSection(hdc, pbmi, usage, ppvBits, hSection, offset);
  trace_print("CreateDIBSection returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}
