// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.

#include "ktmw32.g.h"

Win32Result CommitTransaction_Wrapper(HANDLE transactionHandle) {
  BOOL value_ = CommitTransaction(transactionHandle);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result CreateTransaction_Wrapper(SECURITY_ATTRIBUTES* lpTransactionAttributes, GUID* uOW, unsigned long createOptions, unsigned long isolationLevel, unsigned long isolationFlags, unsigned long timeout, PCWSTR description) {
  HANDLE value_ = CreateTransaction(lpTransactionAttributes, uOW, createOptions, isolationLevel, isolationFlags, timeout, description);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result RollbackTransaction_Wrapper(HANDLE transactionHandle) {
  BOOL value_ = RollbackTransaction(transactionHandle);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}
