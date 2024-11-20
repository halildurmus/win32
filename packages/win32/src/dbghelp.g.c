// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.

#include "dbghelp.g.h"

Win32Result SymCleanup_Wrapper(HANDLE hProcess) {
  BOOL value_ = SymCleanup(hProcess);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SymEnumSymbolsW_Wrapper(HANDLE hProcess, unsigned long long baseOfDll, PCWSTR mask, PSYM_ENUMERATESYMBOLS_CALLBACKW enumSymbolsCallback, void* userContext) {
  BOOL value_ = SymEnumSymbolsW(hProcess, baseOfDll, mask, enumSymbolsCallback, userContext);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SymFromAddrW_Wrapper(HANDLE hProcess, unsigned long long address, unsigned long long* displacement, SYMBOL_INFOW* symbol) {
  BOOL value_ = SymFromAddrW(hProcess, address, displacement, symbol);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SymFromTokenW_Wrapper(HANDLE hProcess, unsigned long long base, unsigned long token, SYMBOL_INFOW* symbol) {
  BOOL value_ = SymFromTokenW(hProcess, base, token, symbol);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SymInitializeW_Wrapper(HANDLE hProcess, PCWSTR userSearchPath, BOOL fInvadeProcess) {
  BOOL value_ = SymInitializeW(hProcess, userSearchPath, fInvadeProcess);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SymLoadModuleExW_Wrapper(HANDLE hProcess, HANDLE hFile, PCWSTR imageName, PCWSTR moduleName, unsigned long long baseOfDll, unsigned long dllSize, MODLOAD_DATA* data, DWORD flags) {
  unsigned long long value_ = SymLoadModuleExW(hProcess, hFile, imageName, moduleName, baseOfDll, dllSize, data, flags);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.u64 = value_}};
}

Win32Result SymSetParentWindow_Wrapper(HWND hwnd) {
  BOOL value_ = SymSetParentWindow(hwnd);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SymSetScopeFromAddr_Wrapper(HANDLE hProcess, unsigned long long address) {
  BOOL value_ = SymSetScopeFromAddr(hProcess, address);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SymSetScopeFromIndex_Wrapper(HANDLE hProcess, unsigned long long baseOfDll, unsigned long index) {
  BOOL value_ = SymSetScopeFromIndex(hProcess, baseOfDll, index);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SymSetScopeFromInlineContext_Wrapper(HANDLE hProcess, unsigned long long address, unsigned long inlineContext) {
  BOOL value_ = SymSetScopeFromInlineContext(hProcess, address, inlineContext);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SymSetSearchPathW_Wrapper(HANDLE hProcess, PCWSTR searchPathA) {
  BOOL value_ = SymSetSearchPathW(hProcess, searchPathA);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SymUnloadModule_Wrapper(HANDLE hProcess, unsigned long baseOfDll) {
  BOOL value_ = SymUnloadModule(hProcess, baseOfDll);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result SymUnloadModule64_Wrapper(HANDLE hProcess, unsigned long long baseOfDll) {
  BOOL value_ = SymUnloadModule64(hProcess, baseOfDll);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result UnDecorateSymbolNameW_Wrapper(PCWSTR name, PWSTR outputString, unsigned long maxStringLength, unsigned long flags) {
  unsigned long value_ = UnDecorateSymbolNameW(name, outputString, maxStringLength, flags);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.u32 = value_}};
}
