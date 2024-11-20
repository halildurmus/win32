// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

#include "win32.h"
#include <DbgHelp.h>

MYLIB_EXPORT BOOL SymCleanup_Wrapper(HANDLE hProcess);

MYLIB_EXPORT BOOL SymEnumSymbolsW_Wrapper(HANDLE hProcess, unsigned long long baseOfDll, PCWSTR mask, PSYM_ENUMERATESYMBOLS_CALLBACKW enumSymbolsCallback, void* userContext);

MYLIB_EXPORT BOOL SymFromAddrW_Wrapper(HANDLE hProcess, unsigned long long address, unsigned long long* displacement, SYMBOL_INFOW* symbol);

MYLIB_EXPORT BOOL SymFromTokenW_Wrapper(HANDLE hProcess, unsigned long long base, unsigned long token, SYMBOL_INFOW* symbol);

MYLIB_EXPORT BOOL SymInitializeW_Wrapper(HANDLE hProcess, PCWSTR userSearchPath, BOOL fInvadeProcess);

MYLIB_EXPORT unsigned long long SymLoadModuleExW_Wrapper(HANDLE hProcess, HANDLE hFile, PCWSTR imageName, PCWSTR moduleName, unsigned long long baseOfDll, unsigned long dllSize, MODLOAD_DATA* data, DWORD flags);

MYLIB_EXPORT BOOL SymSetParentWindow_Wrapper(HWND hwnd);

MYLIB_EXPORT BOOL SymSetScopeFromAddr_Wrapper(HANDLE hProcess, unsigned long long address);

MYLIB_EXPORT BOOL SymSetScopeFromIndex_Wrapper(HANDLE hProcess, unsigned long long baseOfDll, unsigned long index);

MYLIB_EXPORT BOOL SymSetScopeFromInlineContext_Wrapper(HANDLE hProcess, unsigned long long address, unsigned long inlineContext);

MYLIB_EXPORT BOOL SymSetSearchPathW_Wrapper(HANDLE hProcess, PCWSTR searchPathA);

MYLIB_EXPORT BOOL SymUnloadModule_Wrapper(HANDLE hProcess, unsigned long baseOfDll);

MYLIB_EXPORT BOOL SymUnloadModule64_Wrapper(HANDLE hProcess, unsigned long long baseOfDll);

MYLIB_EXPORT unsigned long UnDecorateSymbolNameW_Wrapper(PCWSTR name, PWSTR outputString, unsigned long maxStringLength, unsigned long flags);
