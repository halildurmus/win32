// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.

#include "psapi.g.h"

Win32Result EmptyWorkingSet_Wrapper(HANDLE hProcess) {
  BOOL value_ = EmptyWorkingSet(hProcess);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result EnumDeviceDrivers_Wrapper(void** lpImageBase, unsigned long cb, unsigned long* lpcbNeeded) {
  BOOL value_ = EnumDeviceDrivers(lpImageBase, cb, lpcbNeeded);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result EnumPageFilesW_Wrapper(PENUM_PAGE_FILE_CALLBACKW pCallBackRoutine, void* pContext) {
  BOOL value_ = EnumPageFilesW(pCallBackRoutine, pContext);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result EnumProcesses_Wrapper(unsigned long* lpidProcess, unsigned long cb, unsigned long* lpcbNeeded) {
  BOOL value_ = EnumProcesses(lpidProcess, cb, lpcbNeeded);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result EnumProcessModules_Wrapper(HANDLE hProcess, HMODULE* lphModule, unsigned long cb, unsigned long* lpcbNeeded) {
  BOOL value_ = EnumProcessModules(hProcess, lphModule, cb, lpcbNeeded);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result EnumProcessModulesEx_Wrapper(HANDLE hProcess, HMODULE* lphModule, unsigned long cb, unsigned long* lpcbNeeded, DWORD dwFilterFlag) {
  BOOL value_ = EnumProcessModulesEx(hProcess, lphModule, cb, lpcbNeeded, dwFilterFlag);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetDeviceDriverBaseNameW_Wrapper(void* imageBase, PWSTR lpBaseName, unsigned long nSize) {
  unsigned long value_ = GetDeviceDriverBaseNameW(imageBase, lpBaseName, nSize);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.u32 = value_}};
}

Win32Result GetDeviceDriverFileNameW_Wrapper(void* imageBase, PWSTR lpFilename, unsigned long nSize) {
  unsigned long value_ = GetDeviceDriverFileNameW(imageBase, lpFilename, nSize);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.u32 = value_}};
}

Win32Result GetMappedFileNameW_Wrapper(HANDLE hProcess, void* lpv, PWSTR lpFilename, unsigned long nSize) {
  unsigned long value_ = GetMappedFileNameW(hProcess, lpv, lpFilename, nSize);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.u32 = value_}};
}

Win32Result GetModuleBaseNameW_Wrapper(HANDLE hProcess, HMODULE hModule, PWSTR lpBaseName, unsigned long nSize) {
  unsigned long value_ = GetModuleBaseNameW(hProcess, hModule, lpBaseName, nSize);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.u32 = value_}};
}

Win32Result GetModuleFileNameExW_Wrapper(HANDLE hProcess, HMODULE hModule, PWSTR lpFilename, unsigned long nSize) {
  unsigned long value_ = GetModuleFileNameExW(hProcess, hModule, lpFilename, nSize);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.u32 = value_}};
}

Win32Result GetModuleInformation_Wrapper(HANDLE hProcess, HMODULE hModule, MODULEINFO* lpmodinfo, unsigned long cb) {
  BOOL value_ = GetModuleInformation(hProcess, hModule, lpmodinfo, cb);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetPerformanceInfo_Wrapper(PERFORMANCE_INFORMATION* pPerformanceInformation, unsigned long cb) {
  BOOL value_ = GetPerformanceInfo(pPerformanceInformation, cb);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result GetProcessImageFileNameW_Wrapper(HANDLE hProcess, PWSTR lpImageFileName, unsigned long nSize) {
  unsigned long value_ = GetProcessImageFileNameW(hProcess, lpImageFileName, nSize);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.u32 = value_}};
}

Win32Result GetProcessMemoryInfo_Wrapper(HANDLE process, PROCESS_MEMORY_COUNTERS* ppsmemCounters, unsigned long cb) {
  BOOL value_ = GetProcessMemoryInfo(process, ppsmemCounters, cb);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}
