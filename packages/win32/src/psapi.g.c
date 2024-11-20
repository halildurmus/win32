// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

#include "psapi.g.h"

BOOL EmptyWorkingSet_Wrapper(HANDLE hProcess) {
  trace_print("Calling EmptyWorkingSet\n");
  BOOL result_ = EmptyWorkingSet(hProcess);
  trace_print("EmptyWorkingSet returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL EnumDeviceDrivers_Wrapper(void** lpImageBase, unsigned long cb, unsigned long* lpcbNeeded) {
  trace_print("Calling EnumDeviceDrivers\n");
  BOOL result_ = EnumDeviceDrivers(lpImageBase, cb, lpcbNeeded);
  trace_print("EnumDeviceDrivers returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL EnumPageFilesW_Wrapper(PENUM_PAGE_FILE_CALLBACKW pCallBackRoutine, void* pContext) {
  trace_print("Calling EnumPageFilesW\n");
  BOOL result_ = EnumPageFilesW(pCallBackRoutine, pContext);
  trace_print("EnumPageFilesW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL EnumProcesses_Wrapper(unsigned long* lpidProcess, unsigned long cb, unsigned long* lpcbNeeded) {
  trace_print("Calling EnumProcesses\n");
  BOOL result_ = EnumProcesses(lpidProcess, cb, lpcbNeeded);
  trace_print("EnumProcesses returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL EnumProcessModules_Wrapper(HANDLE hProcess, HMODULE* lphModule, unsigned long cb, unsigned long* lpcbNeeded) {
  trace_print("Calling EnumProcessModules\n");
  BOOL result_ = EnumProcessModules(hProcess, lphModule, cb, lpcbNeeded);
  trace_print("EnumProcessModules returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL EnumProcessModulesEx_Wrapper(HANDLE hProcess, HMODULE* lphModule, unsigned long cb, unsigned long* lpcbNeeded, DWORD dwFilterFlag) {
  trace_print("Calling EnumProcessModulesEx\n");
  BOOL result_ = EnumProcessModulesEx(hProcess, lphModule, cb, lpcbNeeded, dwFilterFlag);
  trace_print("EnumProcessModulesEx returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

unsigned long GetDeviceDriverBaseNameW_Wrapper(void* imageBase, PWSTR lpBaseName, unsigned long nSize) {
  trace_print("Calling GetDeviceDriverBaseNameW\n");
  unsigned long result_ = GetDeviceDriverBaseNameW(imageBase, lpBaseName, nSize);
  trace_print("GetDeviceDriverBaseNameW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

unsigned long GetDeviceDriverFileNameW_Wrapper(void* imageBase, PWSTR lpFilename, unsigned long nSize) {
  trace_print("Calling GetDeviceDriverFileNameW\n");
  unsigned long result_ = GetDeviceDriverFileNameW(imageBase, lpFilename, nSize);
  trace_print("GetDeviceDriverFileNameW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

unsigned long GetMappedFileNameW_Wrapper(HANDLE hProcess, void* lpv, PWSTR lpFilename, unsigned long nSize) {
  trace_print("Calling GetMappedFileNameW\n");
  unsigned long result_ = GetMappedFileNameW(hProcess, lpv, lpFilename, nSize);
  trace_print("GetMappedFileNameW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

unsigned long GetModuleBaseNameW_Wrapper(HANDLE hProcess, HMODULE hModule, PWSTR lpBaseName, unsigned long nSize) {
  trace_print("Calling GetModuleBaseNameW\n");
  unsigned long result_ = GetModuleBaseNameW(hProcess, hModule, lpBaseName, nSize);
  trace_print("GetModuleBaseNameW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

unsigned long GetModuleFileNameExW_Wrapper(HANDLE hProcess, HMODULE hModule, PWSTR lpFilename, unsigned long nSize) {
  trace_print("Calling GetModuleFileNameExW\n");
  unsigned long result_ = GetModuleFileNameExW(hProcess, hModule, lpFilename, nSize);
  trace_print("GetModuleFileNameExW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetModuleInformation_Wrapper(HANDLE hProcess, HMODULE hModule, MODULEINFO* lpmodinfo, unsigned long cb) {
  trace_print("Calling GetModuleInformation\n");
  BOOL result_ = GetModuleInformation(hProcess, hModule, lpmodinfo, cb);
  trace_print("GetModuleInformation returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL GetPerformanceInfo_Wrapper(PERFORMANCE_INFORMATION* pPerformanceInformation, unsigned long cb) {
  trace_print("Calling GetPerformanceInfo\n");
  BOOL result_ = GetPerformanceInfo(pPerformanceInformation, cb);
  trace_print("GetPerformanceInfo returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

unsigned long GetProcessImageFileNameW_Wrapper(HANDLE hProcess, PWSTR lpImageFileName, unsigned long nSize) {
  trace_print("Calling GetProcessImageFileNameW\n");
  unsigned long result_ = GetProcessImageFileNameW(hProcess, lpImageFileName, nSize);
  trace_print("GetProcessImageFileNameW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}
