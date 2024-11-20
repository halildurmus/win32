// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.

#include "crypt32.g.h"

Win32Result CryptProtectData_Wrapper(CRYPT_INTEGER_BLOB* pDataIn, PCWSTR szDataDescr, CRYPT_INTEGER_BLOB* pOptionalEntropy, void* pvReserved, CRYPTPROTECT_PROMPTSTRUCT* pPromptStruct, unsigned long dwFlags, CRYPT_INTEGER_BLOB* pDataOut) {
  BOOL value_ = CryptProtectData(pDataIn, szDataDescr, pOptionalEntropy, pvReserved, pPromptStruct, dwFlags, pDataOut);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result CryptProtectMemory_Wrapper(void* pDataIn, unsigned long cbDataIn, unsigned long dwFlags) {
  BOOL value_ = CryptProtectMemory(pDataIn, cbDataIn, dwFlags);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result CryptUnprotectData_Wrapper(CRYPT_INTEGER_BLOB* pDataIn, PWSTR* ppszDataDescr, CRYPT_INTEGER_BLOB* pOptionalEntropy, void* pvReserved, CRYPTPROTECT_PROMPTSTRUCT* pPromptStruct, unsigned long dwFlags, CRYPT_INTEGER_BLOB* pDataOut) {
  BOOL value_ = CryptUnprotectData(pDataIn, ppszDataDescr, pOptionalEntropy, pvReserved, pPromptStruct, dwFlags, pDataOut);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result CryptUnprotectMemory_Wrapper(void* pDataIn, unsigned long cbDataIn, unsigned long dwFlags) {
  BOOL value_ = CryptUnprotectMemory(pDataIn, cbDataIn, dwFlags);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result CryptUpdateProtectedState_Wrapper(PSID pOldSid, PCWSTR pwszOldPassword, unsigned long dwFlags, unsigned long* pdwSuccessCount, unsigned long* pdwFailureCount) {
  BOOL value_ = CryptUpdateProtectedState(pOldSid, pwszOldPassword, dwFlags, pdwSuccessCount, pdwFailureCount);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}
