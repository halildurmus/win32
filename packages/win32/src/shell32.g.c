// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

#include "shell32.g.h"

PWSTR* CommandLineToArgvW_Wrapper(PCWSTR lpCmdLine, int* pNumArgs) {
  trace_print("Calling CommandLineToArgvW\n");
  PWSTR* result_ = CommandLineToArgvW(lpCmdLine, pNumArgs);
  trace_print("CommandLineToArgvW returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL ShellExecuteExW_Wrapper(SHELLEXECUTEINFOW* pExecInfo) {
  trace_print("Calling ShellExecuteExW\n");
  BOOL result_ = ShellExecuteExW(pExecInfo);
  trace_print("ShellExecuteExW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

int SHFileOperationW_Wrapper(SHFILEOPSTRUCTW* lpFileOp) {
  trace_print("Calling SHFileOperationW\n");
  int result_ = SHFileOperationW(lpFileOp);
  trace_print("SHFileOperationW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}
