// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

#include "win32.h"

MYLIB_EXPORT BOOL GetFileVersionInfoW_Wrapper(PCWSTR lptstrFilename, unsigned long dwHandle, unsigned long dwLen, void* lpData);

MYLIB_EXPORT BOOL GetFileVersionInfoExW_Wrapper(DWORD dwFlags, PCWSTR lpwstrFilename, unsigned long dwHandle, unsigned long dwLen, void* lpData);

MYLIB_EXPORT unsigned long GetFileVersionInfoSizeW_Wrapper(PCWSTR lptstrFilename, unsigned long* lpdwHandle);

MYLIB_EXPORT unsigned long GetFileVersionInfoSizeExW_Wrapper(DWORD dwFlags, PCWSTR lpwstrFilename, unsigned long* lpdwHandle);
