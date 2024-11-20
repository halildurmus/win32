// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

#include "dbghelp.g.h"

BOOL SymCleanup_Wrapper(HANDLE hProcess) {
  trace_print("Calling SymCleanup\n");
  BOOL result_ = SymCleanup(hProcess);
  trace_print("SymCleanup returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SymEnumSymbolsW_Wrapper(HANDLE hProcess, unsigned long long baseOfDll, PCWSTR mask, PSYM_ENUMERATESYMBOLS_CALLBACKW enumSymbolsCallback, void* userContext) {
  trace_print("Calling SymEnumSymbolsW\n");
  BOOL result_ = SymEnumSymbolsW(hProcess, baseOfDll, mask, enumSymbolsCallback, userContext);
  trace_print("SymEnumSymbolsW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SymFromAddrW_Wrapper(HANDLE hProcess, unsigned long long address, unsigned long long* displacement, SYMBOL_INFOW* symbol) {
  trace_print("Calling SymFromAddrW\n");
  BOOL result_ = SymFromAddrW(hProcess, address, displacement, symbol);
  trace_print("SymFromAddrW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SymFromTokenW_Wrapper(HANDLE hProcess, unsigned long long base, unsigned long token, SYMBOL_INFOW* symbol) {
  trace_print("Calling SymFromTokenW\n");
  BOOL result_ = SymFromTokenW(hProcess, base, token, symbol);
  trace_print("SymFromTokenW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SymInitializeW_Wrapper(HANDLE hProcess, PCWSTR userSearchPath, BOOL fInvadeProcess) {
  trace_print("Calling SymInitializeW\n");
  BOOL result_ = SymInitializeW(hProcess, userSearchPath, fInvadeProcess);
  trace_print("SymInitializeW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

unsigned long long SymLoadModuleExW_Wrapper(HANDLE hProcess, HANDLE hFile, PCWSTR imageName, PCWSTR moduleName, unsigned long long baseOfDll, unsigned long dllSize, MODLOAD_DATA* data, DWORD flags) {
  trace_print("Calling SymLoadModuleExW\n");
  unsigned long long result_ = SymLoadModuleExW(hProcess, hFile, imageName, moduleName, baseOfDll, dllSize, data, flags);
  trace_print("SymLoadModuleExW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SymSetParentWindow_Wrapper(HWND hwnd) {
  trace_print("Calling SymSetParentWindow\n");
  BOOL result_ = SymSetParentWindow(hwnd);
  trace_print("SymSetParentWindow returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SymSetScopeFromAddr_Wrapper(HANDLE hProcess, unsigned long long address) {
  trace_print("Calling SymSetScopeFromAddr\n");
  BOOL result_ = SymSetScopeFromAddr(hProcess, address);
  trace_print("SymSetScopeFromAddr returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SymSetScopeFromIndex_Wrapper(HANDLE hProcess, unsigned long long baseOfDll, unsigned long index) {
  trace_print("Calling SymSetScopeFromIndex\n");
  BOOL result_ = SymSetScopeFromIndex(hProcess, baseOfDll, index);
  trace_print("SymSetScopeFromIndex returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SymSetScopeFromInlineContext_Wrapper(HANDLE hProcess, unsigned long long address, unsigned long inlineContext) {
  trace_print("Calling SymSetScopeFromInlineContext\n");
  BOOL result_ = SymSetScopeFromInlineContext(hProcess, address, inlineContext);
  trace_print("SymSetScopeFromInlineContext returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SymSetSearchPathW_Wrapper(HANDLE hProcess, PCWSTR searchPathA) {
  trace_print("Calling SymSetSearchPathW\n");
  BOOL result_ = SymSetSearchPathW(hProcess, searchPathA);
  trace_print("SymSetSearchPathW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SymUnloadModule_Wrapper(HANDLE hProcess, unsigned long baseOfDll) {
  trace_print("Calling SymUnloadModule\n");
  BOOL result_ = SymUnloadModule(hProcess, baseOfDll);
  trace_print("SymUnloadModule returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL SymUnloadModule64_Wrapper(HANDLE hProcess, unsigned long long baseOfDll) {
  trace_print("Calling SymUnloadModule64\n");
  BOOL result_ = SymUnloadModule64(hProcess, baseOfDll);
  trace_print("SymUnloadModule64 returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

unsigned long UnDecorateSymbolNameW_Wrapper(PCWSTR name, PWSTR outputString, unsigned long maxStringLength, unsigned long flags) {
  trace_print("Calling UnDecorateSymbolNameW\n");
  unsigned long result_ = UnDecorateSymbolNameW(name, outputString, maxStringLength, flags);
  trace_print("UnDecorateSymbolNameW returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}
