// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

#include "version.g.h"

BOOL GetFileVersionInfoW_Wrapper(PCWSTR lptstrFilename, unsigned long dwHandle, unsigned long dwLen, void* lpData) {
  trace_print("Calling GetFileVersionInfoW\n");
  BOOL result_ = GetFileVersionInfoW(lptstrFilename, dwHandle, dwLen, lpData);
  trace_print("GetFileVersionInfoW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetFileVersionInfoExW_Wrapper(DWORD dwFlags, PCWSTR lpwstrFilename, unsigned long dwHandle, unsigned long dwLen, void* lpData) {
  trace_print("Calling GetFileVersionInfoExW\n");
  BOOL result_ = GetFileVersionInfoExW(dwFlags, lpwstrFilename, dwHandle, dwLen, lpData);
  trace_print("GetFileVersionInfoExW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

unsigned long GetFileVersionInfoSizeW_Wrapper(PCWSTR lptstrFilename, unsigned long* lpdwHandle) {
  trace_print("Calling GetFileVersionInfoSizeW\n");
  unsigned long result_ = GetFileVersionInfoSizeW(lptstrFilename, lpdwHandle);
  trace_print("GetFileVersionInfoSizeW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

unsigned long GetFileVersionInfoSizeExW_Wrapper(DWORD dwFlags, PCWSTR lpwstrFilename, unsigned long* lpdwHandle) {
  trace_print("Calling GetFileVersionInfoSizeExW\n");
  unsigned long result_ = GetFileVersionInfoSizeExW(dwFlags, lpwstrFilename, lpdwHandle);
  trace_print("GetFileVersionInfoSizeExW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}
