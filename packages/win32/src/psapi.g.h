// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.

#include "win32.h"
#include <psapi.h>

MYLIB_EXPORT Win32Result EmptyWorkingSet_Wrapper(HANDLE hProcess);

MYLIB_EXPORT Win32Result EnumDeviceDrivers_Wrapper(void** lpImageBase, unsigned long cb, unsigned long* lpcbNeeded);

MYLIB_EXPORT Win32Result EnumPageFilesW_Wrapper(PENUM_PAGE_FILE_CALLBACKW pCallBackRoutine, void* pContext);

MYLIB_EXPORT Win32Result EnumProcesses_Wrapper(unsigned long* lpidProcess, unsigned long cb, unsigned long* lpcbNeeded);

MYLIB_EXPORT Win32Result EnumProcessModules_Wrapper(HANDLE hProcess, HMODULE* lphModule, unsigned long cb, unsigned long* lpcbNeeded);

MYLIB_EXPORT Win32Result EnumProcessModulesEx_Wrapper(HANDLE hProcess, HMODULE* lphModule, unsigned long cb, unsigned long* lpcbNeeded, DWORD dwFilterFlag);

MYLIB_EXPORT Win32Result GetDeviceDriverBaseNameW_Wrapper(void* imageBase, PWSTR lpBaseName, unsigned long nSize);

MYLIB_EXPORT Win32Result GetDeviceDriverFileNameW_Wrapper(void* imageBase, PWSTR lpFilename, unsigned long nSize);

MYLIB_EXPORT Win32Result GetMappedFileNameW_Wrapper(HANDLE hProcess, void* lpv, PWSTR lpFilename, unsigned long nSize);

MYLIB_EXPORT Win32Result GetModuleBaseNameW_Wrapper(HANDLE hProcess, HMODULE hModule, PWSTR lpBaseName, unsigned long nSize);

MYLIB_EXPORT Win32Result GetModuleFileNameExW_Wrapper(HANDLE hProcess, HMODULE hModule, PWSTR lpFilename, unsigned long nSize);

MYLIB_EXPORT Win32Result GetModuleInformation_Wrapper(HANDLE hProcess, HMODULE hModule, MODULEINFO* lpmodinfo, unsigned long cb);

MYLIB_EXPORT Win32Result GetPerformanceInfo_Wrapper(PERFORMANCE_INFORMATION* pPerformanceInformation, unsigned long cb);

MYLIB_EXPORT Win32Result GetProcessImageFileNameW_Wrapper(HANDLE hProcess, PWSTR lpImageFileName, unsigned long nSize);

MYLIB_EXPORT Win32Result GetProcessMemoryInfo_Wrapper(HANDLE process, PROCESS_MEMORY_COUNTERS* ppsmemCounters, unsigned long cb);
