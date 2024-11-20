// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

#include "win32.h"
#include <Psapi.h>

MYLIB_EXPORT BOOL EmptyWorkingSet_Wrapper(HANDLE hProcess);

MYLIB_EXPORT BOOL EnumDeviceDrivers_Wrapper(void** lpImageBase, unsigned long cb, unsigned long* lpcbNeeded);

MYLIB_EXPORT BOOL EnumPageFilesW_Wrapper(PENUM_PAGE_FILE_CALLBACKW pCallBackRoutine, void* pContext);

MYLIB_EXPORT BOOL EnumProcesses_Wrapper(unsigned long* lpidProcess, unsigned long cb, unsigned long* lpcbNeeded);

MYLIB_EXPORT BOOL EnumProcessModules_Wrapper(HANDLE hProcess, HMODULE* lphModule, unsigned long cb, unsigned long* lpcbNeeded);

MYLIB_EXPORT BOOL EnumProcessModulesEx_Wrapper(HANDLE hProcess, HMODULE* lphModule, unsigned long cb, unsigned long* lpcbNeeded, DWORD dwFilterFlag);

MYLIB_EXPORT unsigned long GetDeviceDriverBaseNameW_Wrapper(void* imageBase, PWSTR lpBaseName, unsigned long nSize);

MYLIB_EXPORT unsigned long GetDeviceDriverFileNameW_Wrapper(void* imageBase, PWSTR lpFilename, unsigned long nSize);

MYLIB_EXPORT unsigned long GetMappedFileNameW_Wrapper(HANDLE hProcess, void* lpv, PWSTR lpFilename, unsigned long nSize);

MYLIB_EXPORT unsigned long GetModuleBaseNameW_Wrapper(HANDLE hProcess, HMODULE hModule, PWSTR lpBaseName, unsigned long nSize);

MYLIB_EXPORT unsigned long GetModuleFileNameExW_Wrapper(HANDLE hProcess, HMODULE hModule, PWSTR lpFilename, unsigned long nSize);

MYLIB_EXPORT BOOL GetModuleInformation_Wrapper(HANDLE hProcess, HMODULE hModule, MODULEINFO* lpmodinfo, unsigned long cb);

MYLIB_EXPORT BOOL GetPerformanceInfo_Wrapper(PERFORMANCE_INFORMATION* pPerformanceInformation, unsigned long cb);

MYLIB_EXPORT unsigned long GetProcessImageFileNameW_Wrapper(HANDLE hProcess, PWSTR lpImageFileName, unsigned long nSize);
