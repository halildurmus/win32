// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.

#include "version.g.h"

Win32Result GetFileVersionInfoW_Wrapper(PCWSTR lptstrFilename, unsigned long dwHandle, unsigned long dwLen, void* lpData) {
  BOOL value_ = GetFileVersionInfoW(lptstrFilename, dwHandle, dwLen, lpData);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetFileVersionInfoExW_Wrapper(DWORD dwFlags, PCWSTR lpwstrFilename, unsigned long dwHandle, unsigned long dwLen, void* lpData) {
  BOOL value_ = GetFileVersionInfoExW(dwFlags, lpwstrFilename, dwHandle, dwLen, lpData);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetFileVersionInfoSizeW_Wrapper(PCWSTR lptstrFilename, unsigned long* lpdwHandle) {
  unsigned long value_ = GetFileVersionInfoSizeW(lptstrFilename, lpdwHandle);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.u32 = value_}};
}

Win32Result GetFileVersionInfoSizeExW_Wrapper(DWORD dwFlags, PCWSTR lpwstrFilename, unsigned long* lpdwHandle) {
  unsigned long value_ = GetFileVersionInfoSizeExW(dwFlags, lpwstrFilename, lpdwHandle);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.u32 = value_}};
}
