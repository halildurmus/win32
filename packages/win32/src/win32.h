#include <windows.h>
#include <winevt.h>
#include <winstring.h>

#if _WIN32
#define MYLIB_EXPORT __declspec(dllexport)
#else
#define MYLIB_EXPORT
#endif

#ifdef DEBUG
#include <stdio.h>
#define debug_print(fmt, ...) \
  printf("[DEBUG] %s - " fmt, __FUNCTION__, __VA_ARGS__)
#ifdef TRACE
#define trace_print(fmt, ...) \
  printf("[TRACE] %s - " fmt, __FUNCTION__, __VA_ARGS__)
#else
#define trace_print(fmt, ...) (void)0
#endif
#else
#define debug_print(fmt, ...) (void)0
#define trace_print(fmt, ...) (void)0
#endif

extern __declspec(thread) DWORD lastError;

MYLIB_EXPORT DWORD getLastError();

MYLIB_EXPORT void setLastError(DWORD dwErrCode);

MYLIB_EXPORT void coTaskMemFree(PVOID ptr);

MYLIB_EXPORT void deleteBSTR(BSTR bstr);

MYLIB_EXPORT void deleteHSTRING(HSTRING string);

MYLIB_EXPORT void freePROPVARIANT(PROPVARIANT *propVariant);

MYLIB_EXPORT void freeVARIANT(VARIANTARG *variant);

MYLIB_EXPORT void releaseIUnknown(IUnknown *obj);

MYLIB_EXPORT void registerAllocation(void *ptr, size_t size);

MYLIB_EXPORT void unregisterAllocation(void *ptr);

typedef struct Allocation
{
  void *ptr;
  size_t size;
  struct Allocation *next;
} Allocation;

MYLIB_EXPORT void validateAllocations();

typedef HANDLE HBLUETOOTH_AUTHENTICATION_REGISTRATION;

typedef HANDLE PRINTER_HANDLE;
