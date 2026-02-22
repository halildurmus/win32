// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.

#include "wtsapi32.g.h"

Win32Result WTSRegisterSessionNotification_Wrapper(HWND hWnd, unsigned long dwFlags) {
  BOOL value_ = WTSRegisterSessionNotification(hWnd, dwFlags);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result WTSUnRegisterSessionNotification_Wrapper(HWND hWnd) {
  BOOL value_ = WTSUnRegisterSessionNotification(hWnd);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}
