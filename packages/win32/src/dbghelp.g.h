// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.

#include "win32.h"
#include <dbghelp.h>

MYLIB_EXPORT Win32Result SymCleanup_Wrapper(HANDLE hProcess);

MYLIB_EXPORT Win32Result SymEnumSymbolsW_Wrapper(HANDLE hProcess, unsigned long long baseOfDll, PCWSTR mask, PSYM_ENUMERATESYMBOLS_CALLBACKW enumSymbolsCallback, void* userContext);

MYLIB_EXPORT Win32Result SymFromAddrW_Wrapper(HANDLE hProcess, unsigned long long address, unsigned long long* displacement, SYMBOL_INFOW* symbol);

MYLIB_EXPORT Win32Result SymFromTokenW_Wrapper(HANDLE hProcess, unsigned long long base, unsigned long token, SYMBOL_INFOW* symbol);

MYLIB_EXPORT Win32Result SymInitializeW_Wrapper(HANDLE hProcess, PCWSTR userSearchPath, BOOL fInvadeProcess);

MYLIB_EXPORT Win32Result SymLoadModuleExW_Wrapper(HANDLE hProcess, HANDLE hFile, PCWSTR imageName, PCWSTR moduleName, unsigned long long baseOfDll, unsigned long dllSize, MODLOAD_DATA* data, DWORD flags);

MYLIB_EXPORT Win32Result SymSetParentWindow_Wrapper(HWND hwnd);

MYLIB_EXPORT Win32Result SymSetScopeFromAddr_Wrapper(HANDLE hProcess, unsigned long long address);

MYLIB_EXPORT Win32Result SymSetScopeFromIndex_Wrapper(HANDLE hProcess, unsigned long long baseOfDll, unsigned long index);

MYLIB_EXPORT Win32Result SymSetScopeFromInlineContext_Wrapper(HANDLE hProcess, unsigned long long address, unsigned long inlineContext);

MYLIB_EXPORT Win32Result SymSetSearchPathW_Wrapper(HANDLE hProcess, PCWSTR searchPathA);

MYLIB_EXPORT Win32Result SymUnloadModule_Wrapper(HANDLE hProcess, unsigned long baseOfDll);

MYLIB_EXPORT Win32Result SymUnloadModule64_Wrapper(HANDLE hProcess, unsigned long long baseOfDll);

MYLIB_EXPORT Win32Result UnDecorateSymbolNameW_Wrapper(PCWSTR name, PWSTR outputString, unsigned long maxStringLength, unsigned long flags);
