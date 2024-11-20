// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

#include "wtsapi32.g.h"

BOOL WTSRegisterSessionNotification_Wrapper(HWND hWnd, unsigned long dwFlags) {
  trace_print("Calling WTSRegisterSessionNotification\n");
  BOOL result_ = WTSRegisterSessionNotification(hWnd, dwFlags);
  trace_print("WTSRegisterSessionNotification returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL WTSUnRegisterSessionNotification_Wrapper(HWND hWnd) {
  trace_print("Calling WTSUnRegisterSessionNotification\n");
  BOOL result_ = WTSUnRegisterSessionNotification(hWnd);
  trace_print("WTSUnRegisterSessionNotification returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}
