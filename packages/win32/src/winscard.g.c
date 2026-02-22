// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.

#include "winscard.g.h"

Win32Result SCardAccessStartedEvent_Wrapper() {
  HANDLE value_ = SCardAccessStartedEvent();
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}
