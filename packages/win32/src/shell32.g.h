// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.

#include "win32.h"

MYLIB_EXPORT Win32Result CommandLineToArgvW_Wrapper(PCWSTR lpCmdLine, int* pNumArgs);

MYLIB_EXPORT Win32Result ShellExecuteExW_Wrapper(SHELLEXECUTEINFOW* pExecInfo);

MYLIB_EXPORT Win32Result SHFileOperationW_Wrapper(SHFILEOPSTRUCTW* lpFileOp);
