// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.

#include "win32.h"

MYLIB_EXPORT Win32Result CommitTransaction_Wrapper(HANDLE transactionHandle);

MYLIB_EXPORT Win32Result CreateTransaction_Wrapper(SECURITY_ATTRIBUTES* lpTransactionAttributes, GUID* uOW, unsigned long createOptions, unsigned long isolationLevel, unsigned long isolationFlags, unsigned long timeout, PCWSTR description);

MYLIB_EXPORT Win32Result RollbackTransaction_Wrapper(HANDLE transactionHandle);
