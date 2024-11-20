// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

#include "winscard.g.h"

HANDLE SCardAccessStartedEvent_Wrapper() {
  trace_print("Calling SCardAccessStartedEvent\n");
  HANDLE result_ = SCardAccessStartedEvent();
  trace_print("SCardAccessStartedEvent returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}
