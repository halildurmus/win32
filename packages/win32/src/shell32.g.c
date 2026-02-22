// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.

#include "shell32.g.h"

Win32Result CommandLineToArgvW_Wrapper(PCWSTR lpCmdLine, int* pNumArgs) {
  PWSTR* value_ = CommandLineToArgvW(lpCmdLine, pNumArgs);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result ShellExecuteExW_Wrapper(SHELLEXECUTEINFOW* pExecInfo) {
  BOOL value_ = ShellExecuteExW(pExecInfo);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SHFileOperationW_Wrapper(SHFILEOPSTRUCTW* lpFileOp) {
  int value_ = SHFileOperationW(lpFileOp);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}
