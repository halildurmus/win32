#include "win32.h"

__declspec(thread) DWORD lastError = 0;

MYLIB_EXPORT DWORD getLastError()
{
  return lastError;
}

MYLIB_EXPORT void setLastError(DWORD dwErrCode)
{
  lastError = dwErrCode;
}

void coTaskMemFree(PVOID ptr)
{
  trace_print("Freeing the memory at %p.\n", ptr);
#ifdef DEBUG
  unregisterAllocation(ptr);
#endif
  CoTaskMemFree(ptr);
}

void deleteBSTR(BSTR bstr)
{
  trace_print("Deleting BSTR %p.\n", bstr);
  SysFreeString(bstr);
}

void deleteHSTRING(HSTRING string)
{
  trace_print("Deleting HSTRING %lld.\n", (long long)string);
  HRESULT hr = WindowsDeleteString(string);
#ifdef DEBUG
  if (FAILED(hr))
  {
    debug_print("WindowsDeleteString failed with HRESULT: 0x%08X\n", hr);
  }
#endif
  trace_print("Deleted HSTRING.\n");
}

void freePROPVARIANT(PROPVARIANT *propVariant)
{
  trace_print("Clearing the PROPVARIANT at %p.\n", propVariant);
  HRESULT hr = PropVariantClear(propVariant);
#ifdef DEBUG
  if (FAILED(hr))
  {
    debug_print("PropVariantClear failed with HRESULT: 0x%08X\n", hr);
  }
#endif
  trace_print("Freeing the PROPVARIANT memory at %p.\n", propVariant);
#ifdef DEBUG
  unregisterAllocation(propVariant);
#endif
  CoTaskMemFree(propVariant);
}

void freeVARIANT(VARIANTARG *variant)
{
  trace_print("Clearing the VARIANT at %p.\n", variant);
  HRESULT hr = VariantClear(variant);
#ifdef DEBUG
  if (FAILED(hr))
  {
    debug_print("VariantClear failed with HRESULT: 0x%08X\n", hr);
  }
#endif
  trace_print("Freeing the VARIANT memory at %p.\n", variant);
#ifdef DEBUG
  unregisterAllocation(variant);
#endif
  CoTaskMemFree(variant);
}

void releaseIUnknown(IUnknown *obj)
{
  if (obj == NULL)
  {
    trace_print("The object is NULL.\n");
    return;
  }

  trace_print("Releasing the object %p.\n", obj);
  ULONG result = obj->lpVtbl->Release(obj);
  trace_print("Released the object %p, ref count: %d\n", obj, result);
}

static Allocation *head = NULL;
static CRITICAL_SECTION lock;

void initializeMemoryTracker()
{
  trace_print("Initializing...\n");
  InitializeCriticalSection(&lock); // Lock initialization.
}

void cleanupMemoryTracker()
{
  trace_print("Cleaning up...\n");
  // Validate allocations before exiting.
  validateAllocations();

  // Clean up the allocated memory.
  Allocation *current = head;
  while (current)
  {
    Allocation *to_free = current;
    current = current->next;
    CoTaskMemFree(to_free);
  }

  // Clean up the lock.
  DeleteCriticalSection(&lock);
}

void registerAllocation(void *ptr, size_t size)
{
#ifdef DEBUG
  if (ptr == NULL)
  {
    debug_print("Invalid arguments passed.\n");
    return;
  }

  trace_print("Registering allocation at %p (size: %d)\n", ptr, size);
  EnterCriticalSection(&lock);

  Allocation *allocation = (Allocation *)malloc(sizeof(Allocation));
  if (allocation == NULL)
  {
    debug_print("Failed to allocate memory for tracking.\n");
    LeaveCriticalSection(&lock);
    return;
  }

  allocation->ptr = ptr;
  allocation->size = size;
  allocation->next = head;
  head = allocation;

  LeaveCriticalSection(&lock);
#endif
}

void unregisterAllocation(void *ptr)
{
#ifdef DEBUG
  if (!ptr)
  {
    debug_print("Warning: Attempted to unregister NULL pointer.\n");
    return;
  }

  trace_print("Unregistering memory at %p.\n", ptr);
  EnterCriticalSection(&lock);

  Allocation **current = &head;
  while (*current)
  {
    if ((*current)->ptr == ptr)
    {
      Allocation *to_free = *current;
      *current = (*current)->next;
      free(to_free);
      LeaveCriticalSection(&lock);
      return;
    }
    current = &(*current)->next;
  }

  debug_print("Warning: Attempted to unregister a non-tracked pointer.\n");
  LeaveCriticalSection(&lock);
#endif
}

void validateAllocations()
{
#ifdef DEBUG
  trace_print("Validating memory allocations...\n");
  EnterCriticalSection(&lock);

  Allocation *current = head;
  size_t leakCount = 0;
  if (current)
  {
    debug_print("Memory leaks detected:\n");
    while (current)
    {
      debug_print("Leak #%zu:\n  Address: %p\n  Size: %zu bytes\n", ++leakCount, current->ptr, current->size);
      current = current->next;
    }
    debug_print("Validation completed. Total memory leaks: %zu\n", leakCount);
  }
  else
  {
    trace_print("No memory leaks detected.\n");
  }

  LeaveCriticalSection(&lock);
#endif
}

BOOL APIENTRY DllMain(HMODULE hModule, DWORD ul_reason_for_call, LPVOID lpReserved)
{
#ifdef DEBUG
  switch (ul_reason_for_call)
  {
  case DLL_PROCESS_ATTACH:
    trace_print("DLL_PROCESS_ATTACH\n");
    // Initialize memory tracker when the DLL is loaded.
    initializeMemoryTracker();
    break;
  case DLL_PROCESS_DETACH:
    trace_print("DLL_PROCESS_DETACH\n");
    // Clean up memory tracker when the DLL is unloaded.
    cleanupMemoryTracker();
    break;
  default:
    break;
  }
#endif
  return TRUE;
}
