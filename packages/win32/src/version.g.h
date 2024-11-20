// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.

#include "win32.h"

MYLIB_EXPORT Win32Result GetFileVersionInfoW_Wrapper(PCWSTR lptstrFilename, unsigned long dwHandle, unsigned long dwLen, void* lpData);

MYLIB_EXPORT Win32Result GetFileVersionInfoExW_Wrapper(DWORD dwFlags, PCWSTR lpwstrFilename, unsigned long dwHandle, unsigned long dwLen, void* lpData);

MYLIB_EXPORT Win32Result GetFileVersionInfoSizeW_Wrapper(PCWSTR lptstrFilename, unsigned long* lpdwHandle);

MYLIB_EXPORT Win32Result GetFileVersionInfoSizeExW_Wrapper(DWORD dwFlags, PCWSTR lpwstrFilename, unsigned long* lpdwHandle);
