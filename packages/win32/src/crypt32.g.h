// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

#include "win32.h"

MYLIB_EXPORT BOOL CryptProtectData_Wrapper(CRYPT_INTEGER_BLOB* pDataIn, PCWSTR szDataDescr, CRYPT_INTEGER_BLOB* pOptionalEntropy, void* pvReserved, CRYPTPROTECT_PROMPTSTRUCT* pPromptStruct, unsigned long dwFlags, CRYPT_INTEGER_BLOB* pDataOut);

MYLIB_EXPORT BOOL CryptProtectMemory_Wrapper(void* pDataIn, unsigned long cbDataIn, unsigned long dwFlags);

MYLIB_EXPORT BOOL CryptUnprotectData_Wrapper(CRYPT_INTEGER_BLOB* pDataIn, PWSTR* ppszDataDescr, CRYPT_INTEGER_BLOB* pOptionalEntropy, void* pvReserved, CRYPTPROTECT_PROMPTSTRUCT* pPromptStruct, unsigned long dwFlags, CRYPT_INTEGER_BLOB* pDataOut);

MYLIB_EXPORT BOOL CryptUnprotectMemory_Wrapper(void* pDataIn, unsigned long cbDataIn, unsigned long dwFlags);

MYLIB_EXPORT BOOL CryptUpdateProtectedState_Wrapper(PSID pOldSid, PCWSTR pwszOldPassword, unsigned long dwFlags, unsigned long* pdwSuccessCount, unsigned long* pdwFailureCount);
