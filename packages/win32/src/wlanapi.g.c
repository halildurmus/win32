// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.

#include "wlanapi.g.h"

Win32Result WlanAllocateMemory_Wrapper(unsigned long dwMemorySize) {
  void* value_ = WlanAllocateMemory(dwMemorySize);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}
