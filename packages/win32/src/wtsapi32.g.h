// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.

#include "win32.h"
#include <wtsapi32.h>

MYLIB_EXPORT Win32Result WTSRegisterSessionNotification_Wrapper(HWND hWnd, unsigned long dwFlags);

MYLIB_EXPORT Win32Result WTSUnRegisterSessionNotification_Wrapper(HWND hWnd);
