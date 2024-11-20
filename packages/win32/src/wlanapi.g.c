// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

#include "wlanapi.g.h"

void* WlanAllocateMemory_Wrapper(unsigned long dwMemorySize) {
  trace_print("Calling WlanAllocateMemory\n");
  void* result_ = WlanAllocateMemory(dwMemorySize);
  trace_print("WlanAllocateMemory returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}
