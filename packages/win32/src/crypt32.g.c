// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

#include "crypt32.g.h"

BOOL CryptProtectData_Wrapper(CRYPT_INTEGER_BLOB* pDataIn, PCWSTR szDataDescr, CRYPT_INTEGER_BLOB* pOptionalEntropy, void* pvReserved, CRYPTPROTECT_PROMPTSTRUCT* pPromptStruct, unsigned long dwFlags, CRYPT_INTEGER_BLOB* pDataOut) {
  trace_print("Calling CryptProtectData\n");
  BOOL result_ = CryptProtectData(pDataIn, szDataDescr, pOptionalEntropy, pvReserved, pPromptStruct, dwFlags, pDataOut);
  trace_print("CryptProtectData returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL CryptProtectMemory_Wrapper(void* pDataIn, unsigned long cbDataIn, unsigned long dwFlags) {
  trace_print("Calling CryptProtectMemory\n");
  BOOL result_ = CryptProtectMemory(pDataIn, cbDataIn, dwFlags);
  trace_print("CryptProtectMemory returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL CryptUnprotectData_Wrapper(CRYPT_INTEGER_BLOB* pDataIn, PWSTR* ppszDataDescr, CRYPT_INTEGER_BLOB* pOptionalEntropy, void* pvReserved, CRYPTPROTECT_PROMPTSTRUCT* pPromptStruct, unsigned long dwFlags, CRYPT_INTEGER_BLOB* pDataOut) {
  trace_print("Calling CryptUnprotectData\n");
  BOOL result_ = CryptUnprotectData(pDataIn, ppszDataDescr, pOptionalEntropy, pvReserved, pPromptStruct, dwFlags, pDataOut);
  trace_print("CryptUnprotectData returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL CryptUnprotectMemory_Wrapper(void* pDataIn, unsigned long cbDataIn, unsigned long dwFlags) {
  trace_print("Calling CryptUnprotectMemory\n");
  BOOL result_ = CryptUnprotectMemory(pDataIn, cbDataIn, dwFlags);
  trace_print("CryptUnprotectMemory returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

BOOL CryptUpdateProtectedState_Wrapper(PSID pOldSid, PCWSTR pwszOldPassword, unsigned long dwFlags, unsigned long* pdwSuccessCount, unsigned long* pdwFailureCount) {
  trace_print("Calling CryptUpdateProtectedState\n");
  BOOL result_ = CryptUpdateProtectedState(pOldSid, pwszOldPassword, dwFlags, pdwSuccessCount, pdwFailureCount);
  trace_print("CryptUpdateProtectedState returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}
