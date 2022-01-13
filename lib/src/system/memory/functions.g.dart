// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';

import '../../combase.dart';
import '../../guid.dart';
import '../../system/memory/callbacks.g.dart';
import '../../foundation/structs.g.dart';
import '../../security/structs.g.dart';
import '../../system/memory/structs.g.dart';
import '../../foundation/callbacks.g.dart'; // -----------------------------------------------------------------------

// kernel32.dll
// -----------------------------------------------------------------------
final _kernel32 = DynamicLibrary.open('kernel32.dll');

int AddSecureMemoryCacheCallback(
  Pointer<NativeFunction<PSECURE_MEMORY_CACHE_CALLBACK>> pfnCallBack,
) =>
    _AddSecureMemoryCacheCallback(
      pfnCallBack,
    );

late final _AddSecureMemoryCacheCallback = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<NativeFunction<PSECURE_MEMORY_CACHE_CALLBACK>> pfnCallBack,
),
    int Function(
  Pointer<NativeFunction<PSECURE_MEMORY_CACHE_CALLBACK>> pfnCallBack,
)>('AddSecureMemoryCacheCallback');

int AllocateUserPhysicalPages(
  int hProcess,
  Pointer<IntPtr> NumberOfPages,
  Pointer<IntPtr> PageArray,
) =>
    _AllocateUserPhysicalPages(
      hProcess,
      NumberOfPages,
      PageArray,
    );

late final _AllocateUserPhysicalPages = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Pointer<IntPtr> NumberOfPages,
  Pointer<IntPtr> PageArray,
),
    int Function(
  int hProcess,
  Pointer<IntPtr> NumberOfPages,
  Pointer<IntPtr> PageArray,
)>('AllocateUserPhysicalPages');

int AllocateUserPhysicalPagesNuma(
  int hProcess,
  Pointer<IntPtr> NumberOfPages,
  Pointer<IntPtr> PageArray,
  int nndPreferred,
) =>
    _AllocateUserPhysicalPagesNuma(
      hProcess,
      NumberOfPages,
      PageArray,
      nndPreferred,
    );

late final _AllocateUserPhysicalPagesNuma = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Pointer<IntPtr> NumberOfPages,
  Pointer<IntPtr> PageArray,
  Uint32 nndPreferred,
),
    int Function(
  int hProcess,
  Pointer<IntPtr> NumberOfPages,
  Pointer<IntPtr> PageArray,
  int nndPreferred,
)>('AllocateUserPhysicalPagesNuma');

int CreateFileMappingFromApp(
  int hFile,
  Pointer<SECURITY_ATTRIBUTES> SecurityAttributes,
  int PageProtection,
  int MaximumSize,
  Pointer<Utf16> Name,
) =>
    _CreateFileMappingFromApp(
      hFile,
      SecurityAttributes,
      PageProtection,
      MaximumSize,
      Name,
    );

late final _CreateFileMappingFromApp = _kernel32.lookupFunction<
    IntPtr Function(
  IntPtr hFile,
  Pointer<SECURITY_ATTRIBUTES> SecurityAttributes,
  Uint32 PageProtection,
  Uint64 MaximumSize,
  Pointer<Utf16> Name,
),
    int Function(
  int hFile,
  Pointer<SECURITY_ATTRIBUTES> SecurityAttributes,
  int PageProtection,
  int MaximumSize,
  Pointer<Utf16> Name,
)>('CreateFileMappingFromApp');

int CreateFileMappingNuma(
  int hFile,
  Pointer<SECURITY_ATTRIBUTES> lpFileMappingAttributes,
  int flProtect,
  int dwMaximumSizeHigh,
  int dwMaximumSizeLow,
  Pointer<Utf16> lpName,
  int nndPreferred,
) =>
    _CreateFileMappingNuma(
      hFile,
      lpFileMappingAttributes,
      flProtect,
      dwMaximumSizeHigh,
      dwMaximumSizeLow,
      lpName,
      nndPreferred,
    );

late final _CreateFileMappingNuma = _kernel32.lookupFunction<
    IntPtr Function(
  IntPtr hFile,
  Pointer<SECURITY_ATTRIBUTES> lpFileMappingAttributes,
  Uint32 flProtect,
  Uint32 dwMaximumSizeHigh,
  Uint32 dwMaximumSizeLow,
  Pointer<Utf16> lpName,
  Uint32 nndPreferred,
),
    int Function(
  int hFile,
  Pointer<SECURITY_ATTRIBUTES> lpFileMappingAttributes,
  int flProtect,
  int dwMaximumSizeHigh,
  int dwMaximumSizeLow,
  Pointer<Utf16> lpName,
  int nndPreferred,
)>('CreateFileMappingNumaW');

int CreateFileMapping(
  int hFile,
  Pointer<SECURITY_ATTRIBUTES> lpFileMappingAttributes,
  int flProtect,
  int dwMaximumSizeHigh,
  int dwMaximumSizeLow,
  Pointer<Utf16> lpName,
) =>
    _CreateFileMapping(
      hFile,
      lpFileMappingAttributes,
      flProtect,
      dwMaximumSizeHigh,
      dwMaximumSizeLow,
      lpName,
    );

late final _CreateFileMapping = _kernel32.lookupFunction<
    IntPtr Function(
  IntPtr hFile,
  Pointer<SECURITY_ATTRIBUTES> lpFileMappingAttributes,
  Uint32 flProtect,
  Uint32 dwMaximumSizeHigh,
  Uint32 dwMaximumSizeLow,
  Pointer<Utf16> lpName,
),
    int Function(
  int hFile,
  Pointer<SECURITY_ATTRIBUTES> lpFileMappingAttributes,
  int flProtect,
  int dwMaximumSizeHigh,
  int dwMaximumSizeLow,
  Pointer<Utf16> lpName,
)>('CreateFileMappingW');

int CreateMemoryResourceNotification(
  int NotificationType,
) =>
    _CreateMemoryResourceNotification(
      NotificationType,
    );

late final _CreateMemoryResourceNotification = _kernel32.lookupFunction<
    IntPtr Function(
  Int32 NotificationType,
),
    int Function(
  int NotificationType,
)>('CreateMemoryResourceNotification');

int DiscardVirtualMemory(
  Pointer VirtualAddress,
  int Size,
) =>
    _DiscardVirtualMemory(
      VirtualAddress,
      Size,
    );

late final _DiscardVirtualMemory = _kernel32.lookupFunction<
    Uint32 Function(
  Pointer VirtualAddress,
  IntPtr Size,
),
    int Function(
  Pointer VirtualAddress,
  int Size,
)>('DiscardVirtualMemory');

int FlushViewOfFile(
  Pointer lpBaseAddress,
  int dwNumberOfBytesToFlush,
) =>
    _FlushViewOfFile(
      lpBaseAddress,
      dwNumberOfBytesToFlush,
    );

late final _FlushViewOfFile = _kernel32.lookupFunction<
    Int32 Function(
  Pointer lpBaseAddress,
  IntPtr dwNumberOfBytesToFlush,
),
    int Function(
  Pointer lpBaseAddress,
  int dwNumberOfBytesToFlush,
)>('FlushViewOfFile');

int FreeUserPhysicalPages(
  int hProcess,
  Pointer<IntPtr> NumberOfPages,
  Pointer<IntPtr> PageArray,
) =>
    _FreeUserPhysicalPages(
      hProcess,
      NumberOfPages,
      PageArray,
    );

late final _FreeUserPhysicalPages = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Pointer<IntPtr> NumberOfPages,
  Pointer<IntPtr> PageArray,
),
    int Function(
  int hProcess,
  Pointer<IntPtr> NumberOfPages,
  Pointer<IntPtr> PageArray,
)>('FreeUserPhysicalPages');

int GetLargePageMinimum() => _GetLargePageMinimum();

late final _GetLargePageMinimum = _kernel32
    .lookupFunction<IntPtr Function(), int Function()>('GetLargePageMinimum');

int GetMemoryErrorHandlingCapabilities(
  Pointer<Uint32> Capabilities,
) =>
    _GetMemoryErrorHandlingCapabilities(
      Capabilities,
    );

late final _GetMemoryErrorHandlingCapabilities = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Uint32> Capabilities,
),
    int Function(
  Pointer<Uint32> Capabilities,
)>('GetMemoryErrorHandlingCapabilities');

int GetProcessHeap() => _GetProcessHeap();

late final _GetProcessHeap = _kernel32
    .lookupFunction<IntPtr Function(), int Function()>('GetProcessHeap');

int GetProcessHeaps(
  int NumberOfHeaps,
  Pointer<IntPtr> ProcessHeaps,
) =>
    _GetProcessHeaps(
      NumberOfHeaps,
      ProcessHeaps,
    );

late final _GetProcessHeaps = _kernel32.lookupFunction<
    Uint32 Function(
  Uint32 NumberOfHeaps,
  Pointer<IntPtr> ProcessHeaps,
),
    int Function(
  int NumberOfHeaps,
  Pointer<IntPtr> ProcessHeaps,
)>('GetProcessHeaps');

int GetProcessWorkingSetSizeEx(
  int hProcess,
  Pointer<IntPtr> lpMinimumWorkingSetSize,
  Pointer<IntPtr> lpMaximumWorkingSetSize,
  Pointer<Uint32> Flags,
) =>
    _GetProcessWorkingSetSizeEx(
      hProcess,
      lpMinimumWorkingSetSize,
      lpMaximumWorkingSetSize,
      Flags,
    );

late final _GetProcessWorkingSetSizeEx = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Pointer<IntPtr> lpMinimumWorkingSetSize,
  Pointer<IntPtr> lpMaximumWorkingSetSize,
  Pointer<Uint32> Flags,
),
    int Function(
  int hProcess,
  Pointer<IntPtr> lpMinimumWorkingSetSize,
  Pointer<IntPtr> lpMaximumWorkingSetSize,
  Pointer<Uint32> Flags,
)>('GetProcessWorkingSetSizeEx');

int GetSystemFileCacheSize(
  Pointer<IntPtr> lpMinimumFileCacheSize,
  Pointer<IntPtr> lpMaximumFileCacheSize,
  Pointer<Uint32> lpFlags,
) =>
    _GetSystemFileCacheSize(
      lpMinimumFileCacheSize,
      lpMaximumFileCacheSize,
      lpFlags,
    );

late final _GetSystemFileCacheSize = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<IntPtr> lpMinimumFileCacheSize,
  Pointer<IntPtr> lpMaximumFileCacheSize,
  Pointer<Uint32> lpFlags,
),
    int Function(
  Pointer<IntPtr> lpMinimumFileCacheSize,
  Pointer<IntPtr> lpMaximumFileCacheSize,
  Pointer<Uint32> lpFlags,
)>('GetSystemFileCacheSize');

int GetWriteWatch(
  int dwFlags,
  Pointer lpBaseAddress,
  int dwRegionSize,
  Pointer<Pointer> lpAddresses,
  Pointer<IntPtr> lpdwCount,
  Pointer<Uint32> lpdwGranularity,
) =>
    _GetWriteWatch(
      dwFlags,
      lpBaseAddress,
      dwRegionSize,
      lpAddresses,
      lpdwCount,
      lpdwGranularity,
    );

late final _GetWriteWatch = _kernel32.lookupFunction<
    Uint32 Function(
  Uint32 dwFlags,
  Pointer lpBaseAddress,
  IntPtr dwRegionSize,
  Pointer<Pointer> lpAddresses,
  Pointer<IntPtr> lpdwCount,
  Pointer<Uint32> lpdwGranularity,
),
    int Function(
  int dwFlags,
  Pointer lpBaseAddress,
  int dwRegionSize,
  Pointer<Pointer> lpAddresses,
  Pointer<IntPtr> lpdwCount,
  Pointer<Uint32> lpdwGranularity,
)>('GetWriteWatch');

int GlobalAlloc(
  int uFlags,
  int dwBytes,
) =>
    _GlobalAlloc(
      uFlags,
      dwBytes,
    );

late final _GlobalAlloc = _kernel32.lookupFunction<
    IntPtr Function(
  Uint32 uFlags,
  IntPtr dwBytes,
),
    int Function(
  int uFlags,
  int dwBytes,
)>('GlobalAlloc');

int GlobalFlags(
  int hMem,
) =>
    _GlobalFlags(
      hMem,
    );

late final _GlobalFlags = _kernel32.lookupFunction<
    Uint32 Function(
  IntPtr hMem,
),
    int Function(
  int hMem,
)>('GlobalFlags');

int GlobalFree(
  int hMem,
) =>
    _GlobalFree(
      hMem,
    );

late final _GlobalFree = _kernel32.lookupFunction<
    IntPtr Function(
  IntPtr hMem,
),
    int Function(
  int hMem,
)>('GlobalFree');

int GlobalHandle(
  Pointer pMem,
) =>
    _GlobalHandle(
      pMem,
    );

late final _GlobalHandle = _kernel32.lookupFunction<
    IntPtr Function(
  Pointer pMem,
),
    int Function(
  Pointer pMem,
)>('GlobalHandle');

Pointer GlobalLock(
  int hMem,
) =>
    _GlobalLock(
      hMem,
    );

late final _GlobalLock = _kernel32.lookupFunction<
    Pointer Function(
  IntPtr hMem,
),
    Pointer Function(
  int hMem,
)>('GlobalLock');

int GlobalReAlloc(
  int hMem,
  int dwBytes,
  int uFlags,
) =>
    _GlobalReAlloc(
      hMem,
      dwBytes,
      uFlags,
    );

late final _GlobalReAlloc = _kernel32.lookupFunction<
    IntPtr Function(
  IntPtr hMem,
  IntPtr dwBytes,
  Uint32 uFlags,
),
    int Function(
  int hMem,
  int dwBytes,
  int uFlags,
)>('GlobalReAlloc');

int GlobalSize(
  int hMem,
) =>
    _GlobalSize(
      hMem,
    );

late final _GlobalSize = _kernel32.lookupFunction<
    IntPtr Function(
  IntPtr hMem,
),
    int Function(
  int hMem,
)>('GlobalSize');

int GlobalUnlock(
  int hMem,
) =>
    _GlobalUnlock(
      hMem,
    );

late final _GlobalUnlock = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hMem,
),
    int Function(
  int hMem,
)>('GlobalUnlock');

Pointer HeapAlloc(
  int hHeap,
  int dwFlags,
  int dwBytes,
) =>
    _HeapAlloc(
      hHeap,
      dwFlags,
      dwBytes,
    );

late final _HeapAlloc = _kernel32.lookupFunction<
    Pointer Function(
  IntPtr hHeap,
  Uint32 dwFlags,
  IntPtr dwBytes,
),
    Pointer Function(
  int hHeap,
  int dwFlags,
  int dwBytes,
)>('HeapAlloc');

int HeapCompact(
  int hHeap,
  int dwFlags,
) =>
    _HeapCompact(
      hHeap,
      dwFlags,
    );

late final _HeapCompact = _kernel32.lookupFunction<
    IntPtr Function(
  IntPtr hHeap,
  Uint32 dwFlags,
),
    int Function(
  int hHeap,
  int dwFlags,
)>('HeapCompact');

int HeapCreate(
  int flOptions,
  int dwInitialSize,
  int dwMaximumSize,
) =>
    _HeapCreate(
      flOptions,
      dwInitialSize,
      dwMaximumSize,
    );

late final _HeapCreate = _kernel32.lookupFunction<
    IntPtr Function(
  Uint32 flOptions,
  IntPtr dwInitialSize,
  IntPtr dwMaximumSize,
),
    int Function(
  int flOptions,
  int dwInitialSize,
  int dwMaximumSize,
)>('HeapCreate');

int HeapDestroy(
  int hHeap,
) =>
    _HeapDestroy(
      hHeap,
    );

late final _HeapDestroy = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hHeap,
),
    int Function(
  int hHeap,
)>('HeapDestroy');

int HeapFree(
  int hHeap,
  int dwFlags,
  Pointer lpMem,
) =>
    _HeapFree(
      hHeap,
      dwFlags,
      lpMem,
    );

late final _HeapFree = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hHeap,
  Uint32 dwFlags,
  Pointer lpMem,
),
    int Function(
  int hHeap,
  int dwFlags,
  Pointer lpMem,
)>('HeapFree');

int HeapLock(
  int hHeap,
) =>
    _HeapLock(
      hHeap,
    );

late final _HeapLock = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hHeap,
),
    int Function(
  int hHeap,
)>('HeapLock');

int HeapQueryInformation(
  int HeapHandle,
  int HeapInformationClass,
  Pointer HeapInformation,
  int HeapInformationLength,
  Pointer<IntPtr> ReturnLength,
) =>
    _HeapQueryInformation(
      HeapHandle,
      HeapInformationClass,
      HeapInformation,
      HeapInformationLength,
      ReturnLength,
    );

late final _HeapQueryInformation = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr HeapHandle,
  Int32 HeapInformationClass,
  Pointer HeapInformation,
  IntPtr HeapInformationLength,
  Pointer<IntPtr> ReturnLength,
),
    int Function(
  int HeapHandle,
  int HeapInformationClass,
  Pointer HeapInformation,
  int HeapInformationLength,
  Pointer<IntPtr> ReturnLength,
)>('HeapQueryInformation');

Pointer HeapReAlloc(
  int hHeap,
  int dwFlags,
  Pointer lpMem,
  int dwBytes,
) =>
    _HeapReAlloc(
      hHeap,
      dwFlags,
      lpMem,
      dwBytes,
    );

late final _HeapReAlloc = _kernel32.lookupFunction<
    Pointer Function(
  IntPtr hHeap,
  Uint32 dwFlags,
  Pointer lpMem,
  IntPtr dwBytes,
),
    Pointer Function(
  int hHeap,
  int dwFlags,
  Pointer lpMem,
  int dwBytes,
)>('HeapReAlloc');

int HeapSetInformation(
  int HeapHandle,
  int HeapInformationClass,
  Pointer HeapInformation,
  int HeapInformationLength,
) =>
    _HeapSetInformation(
      HeapHandle,
      HeapInformationClass,
      HeapInformation,
      HeapInformationLength,
    );

late final _HeapSetInformation = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr HeapHandle,
  Int32 HeapInformationClass,
  Pointer HeapInformation,
  IntPtr HeapInformationLength,
),
    int Function(
  int HeapHandle,
  int HeapInformationClass,
  Pointer HeapInformation,
  int HeapInformationLength,
)>('HeapSetInformation');

int HeapSize(
  int hHeap,
  int dwFlags,
  Pointer lpMem,
) =>
    _HeapSize(
      hHeap,
      dwFlags,
      lpMem,
    );

late final _HeapSize = _kernel32.lookupFunction<
    IntPtr Function(
  IntPtr hHeap,
  Uint32 dwFlags,
  Pointer lpMem,
),
    int Function(
  int hHeap,
  int dwFlags,
  Pointer lpMem,
)>('HeapSize');

int HeapSummary(
  int hHeap,
  int dwFlags,
  Pointer<HEAP_SUMMARY> lpSummary,
) =>
    _HeapSummary(
      hHeap,
      dwFlags,
      lpSummary,
    );

late final _HeapSummary = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hHeap,
  Uint32 dwFlags,
  Pointer<HEAP_SUMMARY> lpSummary,
),
    int Function(
  int hHeap,
  int dwFlags,
  Pointer<HEAP_SUMMARY> lpSummary,
)>('HeapSummary');

int HeapUnlock(
  int hHeap,
) =>
    _HeapUnlock(
      hHeap,
    );

late final _HeapUnlock = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hHeap,
),
    int Function(
  int hHeap,
)>('HeapUnlock');

int HeapValidate(
  int hHeap,
  int dwFlags,
  Pointer lpMem,
) =>
    _HeapValidate(
      hHeap,
      dwFlags,
      lpMem,
    );

late final _HeapValidate = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hHeap,
  Uint32 dwFlags,
  Pointer lpMem,
),
    int Function(
  int hHeap,
  int dwFlags,
  Pointer lpMem,
)>('HeapValidate');

int HeapWalk(
  int hHeap,
  Pointer<PROCESS_HEAP_ENTRY> lpEntry,
) =>
    _HeapWalk(
      hHeap,
      lpEntry,
    );

late final _HeapWalk = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hHeap,
  Pointer<PROCESS_HEAP_ENTRY> lpEntry,
),
    int Function(
  int hHeap,
  Pointer<PROCESS_HEAP_ENTRY> lpEntry,
)>('HeapWalk');

int IsBadCodePtr(
  Pointer lpfn,
) =>
    _IsBadCodePtr(
      lpfn,
    );

late final _IsBadCodePtr = _kernel32.lookupFunction<
    Int32 Function(
  Pointer lpfn,
),
    int Function(
  Pointer lpfn,
)>('IsBadCodePtr');

int IsBadReadPtr(
  Pointer lp,
  int ucb,
) =>
    _IsBadReadPtr(
      lp,
      ucb,
    );

late final _IsBadReadPtr = _kernel32.lookupFunction<
    Int32 Function(
  Pointer lp,
  IntPtr ucb,
),
    int Function(
  Pointer lp,
  int ucb,
)>('IsBadReadPtr');

int IsBadStringPtr(
  Pointer<Utf16> lpsz,
  int ucchMax,
) =>
    _IsBadStringPtr(
      lpsz,
      ucchMax,
    );

late final _IsBadStringPtr = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpsz,
  IntPtr ucchMax,
),
    int Function(
  Pointer<Utf16> lpsz,
  int ucchMax,
)>('IsBadStringPtrW');

int IsBadWritePtr(
  Pointer lp,
  int ucb,
) =>
    _IsBadWritePtr(
      lp,
      ucb,
    );

late final _IsBadWritePtr = _kernel32.lookupFunction<
    Int32 Function(
  Pointer lp,
  IntPtr ucb,
),
    int Function(
  Pointer lp,
  int ucb,
)>('IsBadWritePtr');

int LocalAlloc(
  int uFlags,
  int uBytes,
) =>
    _LocalAlloc(
      uFlags,
      uBytes,
    );

late final _LocalAlloc = _kernel32.lookupFunction<
    IntPtr Function(
  Uint32 uFlags,
  IntPtr uBytes,
),
    int Function(
  int uFlags,
  int uBytes,
)>('LocalAlloc');

int LocalFlags(
  int hMem,
) =>
    _LocalFlags(
      hMem,
    );

late final _LocalFlags = _kernel32.lookupFunction<
    Uint32 Function(
  IntPtr hMem,
),
    int Function(
  int hMem,
)>('LocalFlags');

int LocalFree(
  int hMem,
) =>
    _LocalFree(
      hMem,
    );

late final _LocalFree = _kernel32.lookupFunction<
    IntPtr Function(
  IntPtr hMem,
),
    int Function(
  int hMem,
)>('LocalFree');

int LocalHandle(
  Pointer pMem,
) =>
    _LocalHandle(
      pMem,
    );

late final _LocalHandle = _kernel32.lookupFunction<
    IntPtr Function(
  Pointer pMem,
),
    int Function(
  Pointer pMem,
)>('LocalHandle');

Pointer LocalLock(
  int hMem,
) =>
    _LocalLock(
      hMem,
    );

late final _LocalLock = _kernel32.lookupFunction<
    Pointer Function(
  IntPtr hMem,
),
    Pointer Function(
  int hMem,
)>('LocalLock');

int LocalReAlloc(
  int hMem,
  int uBytes,
  int uFlags,
) =>
    _LocalReAlloc(
      hMem,
      uBytes,
      uFlags,
    );

late final _LocalReAlloc = _kernel32.lookupFunction<
    IntPtr Function(
  IntPtr hMem,
  IntPtr uBytes,
  Uint32 uFlags,
),
    int Function(
  int hMem,
  int uBytes,
  int uFlags,
)>('LocalReAlloc');

int LocalSize(
  int hMem,
) =>
    _LocalSize(
      hMem,
    );

late final _LocalSize = _kernel32.lookupFunction<
    IntPtr Function(
  IntPtr hMem,
),
    int Function(
  int hMem,
)>('LocalSize');

int LocalUnlock(
  int hMem,
) =>
    _LocalUnlock(
      hMem,
    );

late final _LocalUnlock = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hMem,
),
    int Function(
  int hMem,
)>('LocalUnlock');

int MapUserPhysicalPages(
  Pointer VirtualAddress,
  int NumberOfPages,
  Pointer<IntPtr> PageArray,
) =>
    _MapUserPhysicalPages(
      VirtualAddress,
      NumberOfPages,
      PageArray,
    );

late final _MapUserPhysicalPages = _kernel32.lookupFunction<
    Int32 Function(
  Pointer VirtualAddress,
  IntPtr NumberOfPages,
  Pointer<IntPtr> PageArray,
),
    int Function(
  Pointer VirtualAddress,
  int NumberOfPages,
  Pointer<IntPtr> PageArray,
)>('MapUserPhysicalPages');

int MapUserPhysicalPagesScatter(
  Pointer<Pointer> VirtualAddresses,
  int NumberOfPages,
  Pointer<IntPtr> PageArray,
) =>
    _MapUserPhysicalPagesScatter(
      VirtualAddresses,
      NumberOfPages,
      PageArray,
    );

late final _MapUserPhysicalPagesScatter = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Pointer> VirtualAddresses,
  IntPtr NumberOfPages,
  Pointer<IntPtr> PageArray,
),
    int Function(
  Pointer<Pointer> VirtualAddresses,
  int NumberOfPages,
  Pointer<IntPtr> PageArray,
)>('MapUserPhysicalPagesScatter');

Pointer MapViewOfFile(
  int hFileMappingObject,
  int dwDesiredAccess,
  int dwFileOffsetHigh,
  int dwFileOffsetLow,
  int dwNumberOfBytesToMap,
) =>
    _MapViewOfFile(
      hFileMappingObject,
      dwDesiredAccess,
      dwFileOffsetHigh,
      dwFileOffsetLow,
      dwNumberOfBytesToMap,
    );

late final _MapViewOfFile = _kernel32.lookupFunction<
    Pointer Function(
  IntPtr hFileMappingObject,
  Uint32 dwDesiredAccess,
  Uint32 dwFileOffsetHigh,
  Uint32 dwFileOffsetLow,
  IntPtr dwNumberOfBytesToMap,
),
    Pointer Function(
  int hFileMappingObject,
  int dwDesiredAccess,
  int dwFileOffsetHigh,
  int dwFileOffsetLow,
  int dwNumberOfBytesToMap,
)>('MapViewOfFile');

Pointer MapViewOfFileEx(
  int hFileMappingObject,
  int dwDesiredAccess,
  int dwFileOffsetHigh,
  int dwFileOffsetLow,
  int dwNumberOfBytesToMap,
  Pointer lpBaseAddress,
) =>
    _MapViewOfFileEx(
      hFileMappingObject,
      dwDesiredAccess,
      dwFileOffsetHigh,
      dwFileOffsetLow,
      dwNumberOfBytesToMap,
      lpBaseAddress,
    );

late final _MapViewOfFileEx = _kernel32.lookupFunction<
    Pointer Function(
  IntPtr hFileMappingObject,
  Uint32 dwDesiredAccess,
  Uint32 dwFileOffsetHigh,
  Uint32 dwFileOffsetLow,
  IntPtr dwNumberOfBytesToMap,
  Pointer lpBaseAddress,
),
    Pointer Function(
  int hFileMappingObject,
  int dwDesiredAccess,
  int dwFileOffsetHigh,
  int dwFileOffsetLow,
  int dwNumberOfBytesToMap,
  Pointer lpBaseAddress,
)>('MapViewOfFileEx');

Pointer MapViewOfFileExNuma(
  int hFileMappingObject,
  int dwDesiredAccess,
  int dwFileOffsetHigh,
  int dwFileOffsetLow,
  int dwNumberOfBytesToMap,
  Pointer lpBaseAddress,
  int nndPreferred,
) =>
    _MapViewOfFileExNuma(
      hFileMappingObject,
      dwDesiredAccess,
      dwFileOffsetHigh,
      dwFileOffsetLow,
      dwNumberOfBytesToMap,
      lpBaseAddress,
      nndPreferred,
    );

late final _MapViewOfFileExNuma = _kernel32.lookupFunction<
    Pointer Function(
  IntPtr hFileMappingObject,
  Uint32 dwDesiredAccess,
  Uint32 dwFileOffsetHigh,
  Uint32 dwFileOffsetLow,
  IntPtr dwNumberOfBytesToMap,
  Pointer lpBaseAddress,
  Uint32 nndPreferred,
),
    Pointer Function(
  int hFileMappingObject,
  int dwDesiredAccess,
  int dwFileOffsetHigh,
  int dwFileOffsetLow,
  int dwNumberOfBytesToMap,
  Pointer lpBaseAddress,
  int nndPreferred,
)>('MapViewOfFileExNuma');

Pointer MapViewOfFileFromApp(
  int hFileMappingObject,
  int DesiredAccess,
  int FileOffset,
  int NumberOfBytesToMap,
) =>
    _MapViewOfFileFromApp(
      hFileMappingObject,
      DesiredAccess,
      FileOffset,
      NumberOfBytesToMap,
    );

late final _MapViewOfFileFromApp = _kernel32.lookupFunction<
    Pointer Function(
  IntPtr hFileMappingObject,
  Uint32 DesiredAccess,
  Uint64 FileOffset,
  IntPtr NumberOfBytesToMap,
),
    Pointer Function(
  int hFileMappingObject,
  int DesiredAccess,
  int FileOffset,
  int NumberOfBytesToMap,
)>('MapViewOfFileFromApp');

int OfferVirtualMemory(
  Pointer VirtualAddress,
  int Size,
  int Priority,
) =>
    _OfferVirtualMemory(
      VirtualAddress,
      Size,
      Priority,
    );

late final _OfferVirtualMemory = _kernel32.lookupFunction<
    Uint32 Function(
  Pointer VirtualAddress,
  IntPtr Size,
  Int32 Priority,
),
    int Function(
  Pointer VirtualAddress,
  int Size,
  int Priority,
)>('OfferVirtualMemory');

int OpenFileMapping(
  int dwDesiredAccess,
  int bInheritHandle,
  Pointer<Utf16> lpName,
) =>
    _OpenFileMapping(
      dwDesiredAccess,
      bInheritHandle,
      lpName,
    );

late final _OpenFileMapping = _kernel32.lookupFunction<
    IntPtr Function(
  Uint32 dwDesiredAccess,
  Int32 bInheritHandle,
  Pointer<Utf16> lpName,
),
    int Function(
  int dwDesiredAccess,
  int bInheritHandle,
  Pointer<Utf16> lpName,
)>('OpenFileMappingW');

int PrefetchVirtualMemory(
  int hProcess,
  int NumberOfEntries,
  Pointer<WIN32_MEMORY_RANGE_ENTRY> VirtualAddresses,
  int Flags,
) =>
    _PrefetchVirtualMemory(
      hProcess,
      NumberOfEntries,
      VirtualAddresses,
      Flags,
    );

late final _PrefetchVirtualMemory = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  IntPtr NumberOfEntries,
  Pointer<WIN32_MEMORY_RANGE_ENTRY> VirtualAddresses,
  Uint32 Flags,
),
    int Function(
  int hProcess,
  int NumberOfEntries,
  Pointer<WIN32_MEMORY_RANGE_ENTRY> VirtualAddresses,
  int Flags,
)>('PrefetchVirtualMemory');

int QueryMemoryResourceNotification(
  int ResourceNotificationHandle,
  Pointer<Int32> ResourceState,
) =>
    _QueryMemoryResourceNotification(
      ResourceNotificationHandle,
      ResourceState,
    );

late final _QueryMemoryResourceNotification = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr ResourceNotificationHandle,
  Pointer<Int32> ResourceState,
),
    int Function(
  int ResourceNotificationHandle,
  Pointer<Int32> ResourceState,
)>('QueryMemoryResourceNotification');

int ReclaimVirtualMemory(
  Pointer VirtualAddress,
  int Size,
) =>
    _ReclaimVirtualMemory(
      VirtualAddress,
      Size,
    );

late final _ReclaimVirtualMemory = _kernel32.lookupFunction<
    Uint32 Function(
  Pointer VirtualAddress,
  IntPtr Size,
),
    int Function(
  Pointer VirtualAddress,
  int Size,
)>('ReclaimVirtualMemory');

Pointer RegisterBadMemoryNotification(
  Pointer<NativeFunction<PBAD_MEMORY_CALLBACK_ROUTINE>> Callback,
) =>
    _RegisterBadMemoryNotification(
      Callback,
    );

late final _RegisterBadMemoryNotification = _kernel32.lookupFunction<
    Pointer Function(
  Pointer<NativeFunction<PBAD_MEMORY_CALLBACK_ROUTINE>> Callback,
),
    Pointer Function(
  Pointer<NativeFunction<PBAD_MEMORY_CALLBACK_ROUTINE>> Callback,
)>('RegisterBadMemoryNotification');

int RemoveSecureMemoryCacheCallback(
  Pointer<NativeFunction<PSECURE_MEMORY_CACHE_CALLBACK>> pfnCallBack,
) =>
    _RemoveSecureMemoryCacheCallback(
      pfnCallBack,
    );

late final _RemoveSecureMemoryCacheCallback = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<NativeFunction<PSECURE_MEMORY_CACHE_CALLBACK>> pfnCallBack,
),
    int Function(
  Pointer<NativeFunction<PSECURE_MEMORY_CACHE_CALLBACK>> pfnCallBack,
)>('RemoveSecureMemoryCacheCallback');

int ResetWriteWatch(
  Pointer lpBaseAddress,
  int dwRegionSize,
) =>
    _ResetWriteWatch(
      lpBaseAddress,
      dwRegionSize,
    );

late final _ResetWriteWatch = _kernel32.lookupFunction<
    Uint32 Function(
  Pointer lpBaseAddress,
  IntPtr dwRegionSize,
),
    int Function(
  Pointer lpBaseAddress,
  int dwRegionSize,
)>('ResetWriteWatch');

int RtlCompareMemory(
  Pointer Source1,
  Pointer Source2,
  int Length,
) =>
    _RtlCompareMemory(
      Source1,
      Source2,
      Length,
    );

late final _RtlCompareMemory = _kernel32.lookupFunction<
    IntPtr Function(
  Pointer Source1,
  Pointer Source2,
  IntPtr Length,
),
    int Function(
  Pointer Source1,
  Pointer Source2,
  int Length,
)>('RtlCompareMemory');

int SetProcessWorkingSetSizeEx(
  int hProcess,
  int dwMinimumWorkingSetSize,
  int dwMaximumWorkingSetSize,
  int Flags,
) =>
    _SetProcessWorkingSetSizeEx(
      hProcess,
      dwMinimumWorkingSetSize,
      dwMaximumWorkingSetSize,
      Flags,
    );

late final _SetProcessWorkingSetSizeEx = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  IntPtr dwMinimumWorkingSetSize,
  IntPtr dwMaximumWorkingSetSize,
  Uint32 Flags,
),
    int Function(
  int hProcess,
  int dwMinimumWorkingSetSize,
  int dwMaximumWorkingSetSize,
  int Flags,
)>('SetProcessWorkingSetSizeEx');

int SetSystemFileCacheSize(
  int MinimumFileCacheSize,
  int MaximumFileCacheSize,
  int Flags,
) =>
    _SetSystemFileCacheSize(
      MinimumFileCacheSize,
      MaximumFileCacheSize,
      Flags,
    );

late final _SetSystemFileCacheSize = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr MinimumFileCacheSize,
  IntPtr MaximumFileCacheSize,
  Uint32 Flags,
),
    int Function(
  int MinimumFileCacheSize,
  int MaximumFileCacheSize,
  int Flags,
)>('SetSystemFileCacheSize');

int UnmapViewOfFile(
  Pointer lpBaseAddress,
) =>
    _UnmapViewOfFile(
      lpBaseAddress,
    );

late final _UnmapViewOfFile = _kernel32.lookupFunction<
    Int32 Function(
  Pointer lpBaseAddress,
),
    int Function(
  Pointer lpBaseAddress,
)>('UnmapViewOfFile');

int UnmapViewOfFileEx(
  Pointer BaseAddress,
  int UnmapFlags,
) =>
    _UnmapViewOfFileEx(
      BaseAddress,
      UnmapFlags,
    );

late final _UnmapViewOfFileEx = _kernel32.lookupFunction<
    Int32 Function(
  Pointer BaseAddress,
  Uint32 UnmapFlags,
),
    int Function(
  Pointer BaseAddress,
  int UnmapFlags,
)>('UnmapViewOfFileEx');

int UnregisterBadMemoryNotification(
  Pointer RegistrationHandle,
) =>
    _UnregisterBadMemoryNotification(
      RegistrationHandle,
    );

late final _UnregisterBadMemoryNotification = _kernel32.lookupFunction<
    Int32 Function(
  Pointer RegistrationHandle,
),
    int Function(
  Pointer RegistrationHandle,
)>('UnregisterBadMemoryNotification');

Pointer VirtualAlloc(
  Pointer lpAddress,
  int dwSize,
  int flAllocationType,
  int flProtect,
) =>
    _VirtualAlloc(
      lpAddress,
      dwSize,
      flAllocationType,
      flProtect,
    );

late final _VirtualAlloc = _kernel32.lookupFunction<
    Pointer Function(
  Pointer lpAddress,
  IntPtr dwSize,
  Uint32 flAllocationType,
  Uint32 flProtect,
),
    Pointer Function(
  Pointer lpAddress,
  int dwSize,
  int flAllocationType,
  int flProtect,
)>('VirtualAlloc');

Pointer VirtualAllocEx(
  int hProcess,
  Pointer lpAddress,
  int dwSize,
  int flAllocationType,
  int flProtect,
) =>
    _VirtualAllocEx(
      hProcess,
      lpAddress,
      dwSize,
      flAllocationType,
      flProtect,
    );

late final _VirtualAllocEx = _kernel32.lookupFunction<
    Pointer Function(
  IntPtr hProcess,
  Pointer lpAddress,
  IntPtr dwSize,
  Uint32 flAllocationType,
  Uint32 flProtect,
),
    Pointer Function(
  int hProcess,
  Pointer lpAddress,
  int dwSize,
  int flAllocationType,
  int flProtect,
)>('VirtualAllocEx');

Pointer VirtualAllocExNuma(
  int hProcess,
  Pointer lpAddress,
  int dwSize,
  int flAllocationType,
  int flProtect,
  int nndPreferred,
) =>
    _VirtualAllocExNuma(
      hProcess,
      lpAddress,
      dwSize,
      flAllocationType,
      flProtect,
      nndPreferred,
    );

late final _VirtualAllocExNuma = _kernel32.lookupFunction<
    Pointer Function(
  IntPtr hProcess,
  Pointer lpAddress,
  IntPtr dwSize,
  Uint32 flAllocationType,
  Uint32 flProtect,
  Uint32 nndPreferred,
),
    Pointer Function(
  int hProcess,
  Pointer lpAddress,
  int dwSize,
  int flAllocationType,
  int flProtect,
  int nndPreferred,
)>('VirtualAllocExNuma');

int VirtualFree(
  Pointer lpAddress,
  int dwSize,
  int dwFreeType,
) =>
    _VirtualFree(
      lpAddress,
      dwSize,
      dwFreeType,
    );

late final _VirtualFree = _kernel32.lookupFunction<
    Int32 Function(
  Pointer lpAddress,
  IntPtr dwSize,
  Uint32 dwFreeType,
),
    int Function(
  Pointer lpAddress,
  int dwSize,
  int dwFreeType,
)>('VirtualFree');

int VirtualFreeEx(
  int hProcess,
  Pointer lpAddress,
  int dwSize,
  int dwFreeType,
) =>
    _VirtualFreeEx(
      hProcess,
      lpAddress,
      dwSize,
      dwFreeType,
    );

late final _VirtualFreeEx = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Pointer lpAddress,
  IntPtr dwSize,
  Uint32 dwFreeType,
),
    int Function(
  int hProcess,
  Pointer lpAddress,
  int dwSize,
  int dwFreeType,
)>('VirtualFreeEx');

int VirtualLock(
  Pointer lpAddress,
  int dwSize,
) =>
    _VirtualLock(
      lpAddress,
      dwSize,
    );

late final _VirtualLock = _kernel32.lookupFunction<
    Int32 Function(
  Pointer lpAddress,
  IntPtr dwSize,
),
    int Function(
  Pointer lpAddress,
  int dwSize,
)>('VirtualLock');

int VirtualProtect(
  Pointer lpAddress,
  int dwSize,
  int flNewProtect,
  Pointer<Uint32> lpflOldProtect,
) =>
    _VirtualProtect(
      lpAddress,
      dwSize,
      flNewProtect,
      lpflOldProtect,
    );

late final _VirtualProtect = _kernel32.lookupFunction<
    Int32 Function(
  Pointer lpAddress,
  IntPtr dwSize,
  Uint32 flNewProtect,
  Pointer<Uint32> lpflOldProtect,
),
    int Function(
  Pointer lpAddress,
  int dwSize,
  int flNewProtect,
  Pointer<Uint32> lpflOldProtect,
)>('VirtualProtect');

int VirtualProtectEx(
  int hProcess,
  Pointer lpAddress,
  int dwSize,
  int flNewProtect,
  Pointer<Uint32> lpflOldProtect,
) =>
    _VirtualProtectEx(
      hProcess,
      lpAddress,
      dwSize,
      flNewProtect,
      lpflOldProtect,
    );

late final _VirtualProtectEx = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Pointer lpAddress,
  IntPtr dwSize,
  Uint32 flNewProtect,
  Pointer<Uint32> lpflOldProtect,
),
    int Function(
  int hProcess,
  Pointer lpAddress,
  int dwSize,
  int flNewProtect,
  Pointer<Uint32> lpflOldProtect,
)>('VirtualProtectEx');

int VirtualQuery(
  Pointer lpAddress,
  Pointer<MEMORY_BASIC_INFORMATION> lpBuffer,
  int dwLength,
) =>
    _VirtualQuery(
      lpAddress,
      lpBuffer,
      dwLength,
    );

late final _VirtualQuery = _kernel32.lookupFunction<
    IntPtr Function(
  Pointer lpAddress,
  Pointer<MEMORY_BASIC_INFORMATION> lpBuffer,
  IntPtr dwLength,
),
    int Function(
  Pointer lpAddress,
  Pointer<MEMORY_BASIC_INFORMATION> lpBuffer,
  int dwLength,
)>('VirtualQuery');

int VirtualQueryEx(
  int hProcess,
  Pointer lpAddress,
  Pointer<MEMORY_BASIC_INFORMATION> lpBuffer,
  int dwLength,
) =>
    _VirtualQueryEx(
      hProcess,
      lpAddress,
      lpBuffer,
      dwLength,
    );

late final _VirtualQueryEx = _kernel32.lookupFunction<
    IntPtr Function(
  IntPtr hProcess,
  Pointer lpAddress,
  Pointer<MEMORY_BASIC_INFORMATION> lpBuffer,
  IntPtr dwLength,
),
    int Function(
  int hProcess,
  Pointer lpAddress,
  Pointer<MEMORY_BASIC_INFORMATION> lpBuffer,
  int dwLength,
)>('VirtualQueryEx');

int VirtualUnlock(
  Pointer lpAddress,
  int dwSize,
) =>
    _VirtualUnlock(
      lpAddress,
      dwSize,
    );

late final _VirtualUnlock = _kernel32.lookupFunction<
    Int32 Function(
  Pointer lpAddress,
  IntPtr dwSize,
),
    int Function(
  Pointer lpAddress,
  int dwSize,
)>('VirtualUnlock');

// -----------------------------------------------------------------------
// api-ms-win-core-memory-l1-1-3.dll
// -----------------------------------------------------------------------
final _api_ms_win_core_memory_l1_1_3 =
    DynamicLibrary.open('api-ms-win-core-memory-l1-1-3.dll');

int OpenFileMappingFromApp(
  int DesiredAccess,
  int InheritHandle,
  Pointer<Utf16> Name,
) =>
    _OpenFileMappingFromApp(
      DesiredAccess,
      InheritHandle,
      Name,
    );

late final _OpenFileMappingFromApp =
    _api_ms_win_core_memory_l1_1_3.lookupFunction<
        IntPtr Function(
  Uint32 DesiredAccess,
  Int32 InheritHandle,
  Pointer<Utf16> Name,
),
        int Function(
  int DesiredAccess,
  int InheritHandle,
  Pointer<Utf16> Name,
)>('OpenFileMappingFromApp');

int SetProcessValidCallTargets(
  int hProcess,
  Pointer VirtualAddress,
  int RegionSize,
  int NumberOfOffsets,
  Pointer<CFG_CALL_TARGET_INFO> OffsetInformation,
) =>
    _SetProcessValidCallTargets(
      hProcess,
      VirtualAddress,
      RegionSize,
      NumberOfOffsets,
      OffsetInformation,
    );

late final _SetProcessValidCallTargets =
    _api_ms_win_core_memory_l1_1_3.lookupFunction<
        Int32 Function(
  IntPtr hProcess,
  Pointer VirtualAddress,
  IntPtr RegionSize,
  Uint32 NumberOfOffsets,
  Pointer<CFG_CALL_TARGET_INFO> OffsetInformation,
),
        int Function(
  int hProcess,
  Pointer VirtualAddress,
  int RegionSize,
  int NumberOfOffsets,
  Pointer<CFG_CALL_TARGET_INFO> OffsetInformation,
)>('SetProcessValidCallTargets');

Pointer VirtualAllocFromApp(
  Pointer BaseAddress,
  int Size,
  int AllocationType,
  int Protection,
) =>
    _VirtualAllocFromApp(
      BaseAddress,
      Size,
      AllocationType,
      Protection,
    );

late final _VirtualAllocFromApp = _api_ms_win_core_memory_l1_1_3.lookupFunction<
    Pointer Function(
  Pointer BaseAddress,
  IntPtr Size,
  Uint32 AllocationType,
  Uint32 Protection,
),
    Pointer Function(
  Pointer BaseAddress,
  int Size,
  int AllocationType,
  int Protection,
)>('VirtualAllocFromApp');

int VirtualProtectFromApp(
  Pointer Address,
  int Size,
  int NewProtection,
  Pointer<Uint32> OldProtection,
) =>
    _VirtualProtectFromApp(
      Address,
      Size,
      NewProtection,
      OldProtection,
    );

late final _VirtualProtectFromApp =
    _api_ms_win_core_memory_l1_1_3.lookupFunction<
        Int32 Function(
  Pointer Address,
  IntPtr Size,
  Uint32 NewProtection,
  Pointer<Uint32> OldProtection,
),
        int Function(
  Pointer Address,
  int Size,
  int NewProtection,
  Pointer<Uint32> OldProtection,
)>('VirtualProtectFromApp');

// -----------------------------------------------------------------------
// api-ms-win-core-memory-l1-1-7.dll
// -----------------------------------------------------------------------
final _api_ms_win_core_memory_l1_1_7 =
    DynamicLibrary.open('api-ms-win-core-memory-l1-1-7.dll');

int CreateFileMapping2(
  int File,
  Pointer<SECURITY_ATTRIBUTES> SecurityAttributes,
  int DesiredAccess,
  int PageProtection,
  int AllocationAttributes,
  int MaximumSize,
  Pointer<Utf16> Name,
  Pointer<MEM_EXTENDED_PARAMETER> ExtendedParameters,
  int ParameterCount,
) =>
    _CreateFileMapping2(
      File,
      SecurityAttributes,
      DesiredAccess,
      PageProtection,
      AllocationAttributes,
      MaximumSize,
      Name,
      ExtendedParameters,
      ParameterCount,
    );

late final _CreateFileMapping2 = _api_ms_win_core_memory_l1_1_7.lookupFunction<
    IntPtr Function(
  IntPtr File,
  Pointer<SECURITY_ATTRIBUTES> SecurityAttributes,
  Uint32 DesiredAccess,
  Uint32 PageProtection,
  Uint32 AllocationAttributes,
  Uint64 MaximumSize,
  Pointer<Utf16> Name,
  Pointer<MEM_EXTENDED_PARAMETER> ExtendedParameters,
  Uint32 ParameterCount,
),
    int Function(
  int File,
  Pointer<SECURITY_ATTRIBUTES> SecurityAttributes,
  int DesiredAccess,
  int PageProtection,
  int AllocationAttributes,
  int MaximumSize,
  Pointer<Utf16> Name,
  Pointer<MEM_EXTENDED_PARAMETER> ExtendedParameters,
  int ParameterCount,
)>('CreateFileMapping2');

int SetProcessValidCallTargetsForMappedView(
  int Process,
  Pointer VirtualAddress,
  int RegionSize,
  int NumberOfOffsets,
  Pointer<CFG_CALL_TARGET_INFO> OffsetInformation,
  int Section,
  int ExpectedFileOffset,
) =>
    _SetProcessValidCallTargetsForMappedView(
      Process,
      VirtualAddress,
      RegionSize,
      NumberOfOffsets,
      OffsetInformation,
      Section,
      ExpectedFileOffset,
    );

late final _SetProcessValidCallTargetsForMappedView =
    _api_ms_win_core_memory_l1_1_7.lookupFunction<
        Int32 Function(
  IntPtr Process,
  Pointer VirtualAddress,
  IntPtr RegionSize,
  Uint32 NumberOfOffsets,
  Pointer<CFG_CALL_TARGET_INFO> OffsetInformation,
  IntPtr Section,
  Uint64 ExpectedFileOffset,
),
        int Function(
  int Process,
  Pointer VirtualAddress,
  int RegionSize,
  int NumberOfOffsets,
  Pointer<CFG_CALL_TARGET_INFO> OffsetInformation,
  int Section,
  int ExpectedFileOffset,
)>('SetProcessValidCallTargetsForMappedView');

// -----------------------------------------------------------------------
// api-ms-win-core-memory-l1-1-4.dll
// -----------------------------------------------------------------------
final _api_ms_win_core_memory_l1_1_4 =
    DynamicLibrary.open('api-ms-win-core-memory-l1-1-4.dll');

int QueryVirtualMemoryInformation(
  int Process,
  Pointer VirtualAddress,
  int MemoryInformationClass,
  Pointer MemoryInformation,
  int MemoryInformationSize,
  Pointer<IntPtr> ReturnSize,
) =>
    _QueryVirtualMemoryInformation(
      Process,
      VirtualAddress,
      MemoryInformationClass,
      MemoryInformation,
      MemoryInformationSize,
      ReturnSize,
    );

late final _QueryVirtualMemoryInformation =
    _api_ms_win_core_memory_l1_1_4.lookupFunction<
        Int32 Function(
  IntPtr Process,
  Pointer VirtualAddress,
  Int32 MemoryInformationClass,
  Pointer MemoryInformation,
  IntPtr MemoryInformationSize,
  Pointer<IntPtr> ReturnSize,
),
        int Function(
  int Process,
  Pointer VirtualAddress,
  int MemoryInformationClass,
  Pointer MemoryInformation,
  int MemoryInformationSize,
  Pointer<IntPtr> ReturnSize,
)>('QueryVirtualMemoryInformation');

// -----------------------------------------------------------------------
// api-ms-win-core-memory-l1-1-5.dll
// -----------------------------------------------------------------------
final _api_ms_win_core_memory_l1_1_5 =
    DynamicLibrary.open('api-ms-win-core-memory-l1-1-5.dll');

Pointer MapViewOfFileNuma2(
  int FileMappingHandle,
  int ProcessHandle,
  int Offset,
  Pointer BaseAddress,
  int ViewSize,
  int AllocationType,
  int PageProtection,
  int PreferredNode,
) =>
    _MapViewOfFileNuma2(
      FileMappingHandle,
      ProcessHandle,
      Offset,
      BaseAddress,
      ViewSize,
      AllocationType,
      PageProtection,
      PreferredNode,
    );

late final _MapViewOfFileNuma2 = _api_ms_win_core_memory_l1_1_5.lookupFunction<
    Pointer Function(
  IntPtr FileMappingHandle,
  IntPtr ProcessHandle,
  Uint64 Offset,
  Pointer BaseAddress,
  IntPtr ViewSize,
  Uint32 AllocationType,
  Uint32 PageProtection,
  Uint32 PreferredNode,
),
    Pointer Function(
  int FileMappingHandle,
  int ProcessHandle,
  int Offset,
  Pointer BaseAddress,
  int ViewSize,
  int AllocationType,
  int PageProtection,
  int PreferredNode,
)>('MapViewOfFileNuma2');

int UnmapViewOfFile2(
  int Process,
  Pointer BaseAddress,
  int UnmapFlags,
) =>
    _UnmapViewOfFile2(
      Process,
      BaseAddress,
      UnmapFlags,
    );

late final _UnmapViewOfFile2 = _api_ms_win_core_memory_l1_1_5.lookupFunction<
    Int32 Function(
  IntPtr Process,
  Pointer BaseAddress,
  Uint32 UnmapFlags,
),
    int Function(
  int Process,
  Pointer BaseAddress,
  int UnmapFlags,
)>('UnmapViewOfFile2');

int VirtualUnlockEx(
  int Process,
  Pointer Address,
  int Size,
) =>
    _VirtualUnlockEx(
      Process,
      Address,
      Size,
    );

late final _VirtualUnlockEx = _api_ms_win_core_memory_l1_1_5.lookupFunction<
    Int32 Function(
  IntPtr Process,
  Pointer Address,
  IntPtr Size,
),
    int Function(
  int Process,
  Pointer Address,
  int Size,
)>('VirtualUnlockEx');

// -----------------------------------------------------------------------
// api-ms-win-core-memory-l1-1-6.dll
// -----------------------------------------------------------------------
final _api_ms_win_core_memory_l1_1_6 =
    DynamicLibrary.open('api-ms-win-core-memory-l1-1-6.dll');

Pointer MapViewOfFile3(
  int FileMapping,
  int Process,
  Pointer BaseAddress,
  int Offset,
  int ViewSize,
  int AllocationType,
  int PageProtection,
  Pointer<MEM_EXTENDED_PARAMETER> ExtendedParameters,
  int ParameterCount,
) =>
    _MapViewOfFile3(
      FileMapping,
      Process,
      BaseAddress,
      Offset,
      ViewSize,
      AllocationType,
      PageProtection,
      ExtendedParameters,
      ParameterCount,
    );

late final _MapViewOfFile3 = _api_ms_win_core_memory_l1_1_6.lookupFunction<
    Pointer Function(
  IntPtr FileMapping,
  IntPtr Process,
  Pointer BaseAddress,
  Uint64 Offset,
  IntPtr ViewSize,
  Uint32 AllocationType,
  Uint32 PageProtection,
  Pointer<MEM_EXTENDED_PARAMETER> ExtendedParameters,
  Uint32 ParameterCount,
),
    Pointer Function(
  int FileMapping,
  int Process,
  Pointer BaseAddress,
  int Offset,
  int ViewSize,
  int AllocationType,
  int PageProtection,
  Pointer<MEM_EXTENDED_PARAMETER> ExtendedParameters,
  int ParameterCount,
)>('MapViewOfFile3');

Pointer MapViewOfFile3FromApp(
  int FileMapping,
  int Process,
  Pointer BaseAddress,
  int Offset,
  int ViewSize,
  int AllocationType,
  int PageProtection,
  Pointer<MEM_EXTENDED_PARAMETER> ExtendedParameters,
  int ParameterCount,
) =>
    _MapViewOfFile3FromApp(
      FileMapping,
      Process,
      BaseAddress,
      Offset,
      ViewSize,
      AllocationType,
      PageProtection,
      ExtendedParameters,
      ParameterCount,
    );

late final _MapViewOfFile3FromApp =
    _api_ms_win_core_memory_l1_1_6.lookupFunction<
        Pointer Function(
  IntPtr FileMapping,
  IntPtr Process,
  Pointer BaseAddress,
  Uint64 Offset,
  IntPtr ViewSize,
  Uint32 AllocationType,
  Uint32 PageProtection,
  Pointer<MEM_EXTENDED_PARAMETER> ExtendedParameters,
  Uint32 ParameterCount,
),
        Pointer Function(
  int FileMapping,
  int Process,
  Pointer BaseAddress,
  int Offset,
  int ViewSize,
  int AllocationType,
  int PageProtection,
  Pointer<MEM_EXTENDED_PARAMETER> ExtendedParameters,
  int ParameterCount,
)>('MapViewOfFile3FromApp');

Pointer VirtualAlloc2(
  int Process,
  Pointer BaseAddress,
  int Size,
  int AllocationType,
  int PageProtection,
  Pointer<MEM_EXTENDED_PARAMETER> ExtendedParameters,
  int ParameterCount,
) =>
    _VirtualAlloc2(
      Process,
      BaseAddress,
      Size,
      AllocationType,
      PageProtection,
      ExtendedParameters,
      ParameterCount,
    );

late final _VirtualAlloc2 = _api_ms_win_core_memory_l1_1_6.lookupFunction<
    Pointer Function(
  IntPtr Process,
  Pointer BaseAddress,
  IntPtr Size,
  Uint32 AllocationType,
  Uint32 PageProtection,
  Pointer<MEM_EXTENDED_PARAMETER> ExtendedParameters,
  Uint32 ParameterCount,
),
    Pointer Function(
  int Process,
  Pointer BaseAddress,
  int Size,
  int AllocationType,
  int PageProtection,
  Pointer<MEM_EXTENDED_PARAMETER> ExtendedParameters,
  int ParameterCount,
)>('VirtualAlloc2');

Pointer VirtualAlloc2FromApp(
  int Process,
  Pointer BaseAddress,
  int Size,
  int AllocationType,
  int PageProtection,
  Pointer<MEM_EXTENDED_PARAMETER> ExtendedParameters,
  int ParameterCount,
) =>
    _VirtualAlloc2FromApp(
      Process,
      BaseAddress,
      Size,
      AllocationType,
      PageProtection,
      ExtendedParameters,
      ParameterCount,
    );

late final _VirtualAlloc2FromApp =
    _api_ms_win_core_memory_l1_1_6.lookupFunction<
        Pointer Function(
  IntPtr Process,
  Pointer BaseAddress,
  IntPtr Size,
  Uint32 AllocationType,
  Uint32 PageProtection,
  Pointer<MEM_EXTENDED_PARAMETER> ExtendedParameters,
  Uint32 ParameterCount,
),
        Pointer Function(
  int Process,
  Pointer BaseAddress,
  int Size,
  int AllocationType,
  int PageProtection,
  Pointer<MEM_EXTENDED_PARAMETER> ExtendedParameters,
  int ParameterCount,
)>('VirtualAlloc2FromApp');

// -----------------------------------------------------------------------
// api-ms-win-core-memory-l1-1-8.dll
// -----------------------------------------------------------------------
final _api_ms_win_core_memory_l1_1_8 =
    DynamicLibrary.open('api-ms-win-core-memory-l1-1-8.dll');

int AllocateUserPhysicalPages2(
  int ObjectHandle,
  Pointer<IntPtr> NumberOfPages,
  Pointer<IntPtr> PageArray,
  Pointer<MEM_EXTENDED_PARAMETER> ExtendedParameters,
  int ExtendedParameterCount,
) =>
    _AllocateUserPhysicalPages2(
      ObjectHandle,
      NumberOfPages,
      PageArray,
      ExtendedParameters,
      ExtendedParameterCount,
    );

late final _AllocateUserPhysicalPages2 =
    _api_ms_win_core_memory_l1_1_8.lookupFunction<
        Int32 Function(
  IntPtr ObjectHandle,
  Pointer<IntPtr> NumberOfPages,
  Pointer<IntPtr> PageArray,
  Pointer<MEM_EXTENDED_PARAMETER> ExtendedParameters,
  Uint32 ExtendedParameterCount,
),
        int Function(
  int ObjectHandle,
  Pointer<IntPtr> NumberOfPages,
  Pointer<IntPtr> PageArray,
  Pointer<MEM_EXTENDED_PARAMETER> ExtendedParameters,
  int ExtendedParameterCount,
)>('AllocateUserPhysicalPages2');

int OpenDedicatedMemoryPartition(
  int Partition,
  int DedicatedMemoryTypeId,
  int DesiredAccess,
  int InheritHandle,
) =>
    _OpenDedicatedMemoryPartition(
      Partition,
      DedicatedMemoryTypeId,
      DesiredAccess,
      InheritHandle,
    );

late final _OpenDedicatedMemoryPartition =
    _api_ms_win_core_memory_l1_1_8.lookupFunction<
        IntPtr Function(
  IntPtr Partition,
  Uint64 DedicatedMemoryTypeId,
  Uint32 DesiredAccess,
  Int32 InheritHandle,
),
        int Function(
  int Partition,
  int DedicatedMemoryTypeId,
  int DesiredAccess,
  int InheritHandle,
)>('OpenDedicatedMemoryPartition');

int QueryPartitionInformation(
  int Partition,
  int PartitionInformationClass,
  Pointer PartitionInformation,
  int PartitionInformationLength,
) =>
    _QueryPartitionInformation(
      Partition,
      PartitionInformationClass,
      PartitionInformation,
      PartitionInformationLength,
    );

late final _QueryPartitionInformation =
    _api_ms_win_core_memory_l1_1_8.lookupFunction<
        Int32 Function(
  IntPtr Partition,
  Int32 PartitionInformationClass,
  Pointer PartitionInformation,
  Uint32 PartitionInformationLength,
),
        int Function(
  int Partition,
  int PartitionInformationClass,
  Pointer PartitionInformation,
  int PartitionInformationLength,
)>('QueryPartitionInformation');

// -----------------------------------------------------------------------
// ntdll.dll
// -----------------------------------------------------------------------
final _ntdll = DynamicLibrary.open('ntdll.dll');

int RtlCrc32(
  Pointer Buffer,
  int Size,
  int InitialCrc,
) =>
    _RtlCrc32(
      Buffer,
      Size,
      InitialCrc,
    );

late final _RtlCrc32 = _ntdll.lookupFunction<
    Uint32 Function(
  Pointer Buffer,
  IntPtr Size,
  Uint32 InitialCrc,
),
    int Function(
  Pointer Buffer,
  int Size,
  int InitialCrc,
)>('RtlCrc32');

int RtlCrc64(
  Pointer Buffer,
  int Size,
  int InitialCrc,
) =>
    _RtlCrc64(
      Buffer,
      Size,
      InitialCrc,
    );

late final _RtlCrc64 = _ntdll.lookupFunction<
    Uint64 Function(
  Pointer Buffer,
  IntPtr Size,
  Uint64 InitialCrc,
),
    int Function(
  Pointer Buffer,
  int Size,
  int InitialCrc,
)>('RtlCrc64');

int RtlIsZeroMemory(
  Pointer Buffer,
  int Length,
) =>
    _RtlIsZeroMemory(
      Buffer,
      Length,
    );

late final _RtlIsZeroMemory = _ntdll.lookupFunction<
    Uint8 Function(
  Pointer Buffer,
  IntPtr Length,
),
    int Function(
  Pointer Buffer,
  int Length,
)>('RtlIsZeroMemory');
