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
import '../../foundation/structs.g.dart';
import '../../system/processstatus/callbacks.g.dart';
import '../../system/processstatus/structs.g.dart'; // -----------------------------------------------------------------------

// kernel32.dll
// -----------------------------------------------------------------------
final _kernel32 = DynamicLibrary.open('kernel32.dll');

int EmptyWorkingSet(
  int hProcess,
) =>
    _K32EmptyWorkingSet(
      hProcess,
    );

late final _K32EmptyWorkingSet = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
),
    int Function(
  int hProcess,
)>('K32EmptyWorkingSet');

int EnumDeviceDrivers(
  Pointer<Pointer> lpImageBase,
  int cb,
  Pointer<Uint32> lpcbNeeded,
) =>
    _K32EnumDeviceDrivers(
      lpImageBase,
      cb,
      lpcbNeeded,
    );

late final _K32EnumDeviceDrivers = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Pointer> lpImageBase,
  Uint32 cb,
  Pointer<Uint32> lpcbNeeded,
),
    int Function(
  Pointer<Pointer> lpImageBase,
  int cb,
  Pointer<Uint32> lpcbNeeded,
)>('K32EnumDeviceDrivers');

int EnumPageFiles(
  Pointer<NativeFunction<PENUM_PAGE_FILE_CALLBACKW>> pCallBackRoutine,
  Pointer pContext,
) =>
    _K32EnumPageFiles(
      pCallBackRoutine,
      pContext,
    );

late final _K32EnumPageFiles = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<NativeFunction<PENUM_PAGE_FILE_CALLBACKW>> pCallBackRoutine,
  Pointer pContext,
),
    int Function(
  Pointer<NativeFunction<PENUM_PAGE_FILE_CALLBACKW>> pCallBackRoutine,
  Pointer pContext,
)>('K32EnumPageFilesW');

int EnumProcessModules(
  int hProcess,
  Pointer<IntPtr> lphModule,
  int cb,
  Pointer<Uint32> lpcbNeeded,
) =>
    _K32EnumProcessModules(
      hProcess,
      lphModule,
      cb,
      lpcbNeeded,
    );

late final _K32EnumProcessModules = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Pointer<IntPtr> lphModule,
  Uint32 cb,
  Pointer<Uint32> lpcbNeeded,
),
    int Function(
  int hProcess,
  Pointer<IntPtr> lphModule,
  int cb,
  Pointer<Uint32> lpcbNeeded,
)>('K32EnumProcessModules');

int EnumProcessModulesEx(
  int hProcess,
  Pointer<IntPtr> lphModule,
  int cb,
  Pointer<Uint32> lpcbNeeded,
  int dwFilterFlag,
) =>
    _K32EnumProcessModulesEx(
      hProcess,
      lphModule,
      cb,
      lpcbNeeded,
      dwFilterFlag,
    );

late final _K32EnumProcessModulesEx = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Pointer<IntPtr> lphModule,
  Uint32 cb,
  Pointer<Uint32> lpcbNeeded,
  Uint32 dwFilterFlag,
),
    int Function(
  int hProcess,
  Pointer<IntPtr> lphModule,
  int cb,
  Pointer<Uint32> lpcbNeeded,
  int dwFilterFlag,
)>('K32EnumProcessModulesEx');

int EnumProcesses(
  Pointer<Uint32> lpidProcess,
  int cb,
  Pointer<Uint32> lpcbNeeded,
) =>
    _K32EnumProcesses(
      lpidProcess,
      cb,
      lpcbNeeded,
    );

late final _K32EnumProcesses = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Uint32> lpidProcess,
  Uint32 cb,
  Pointer<Uint32> lpcbNeeded,
),
    int Function(
  Pointer<Uint32> lpidProcess,
  int cb,
  Pointer<Uint32> lpcbNeeded,
)>('K32EnumProcesses');

int GetDeviceDriverBaseName(
  Pointer ImageBase,
  Pointer<Utf16> lpBaseName,
  int nSize,
) =>
    _K32GetDeviceDriverBaseName(
      ImageBase,
      lpBaseName,
      nSize,
    );

late final _K32GetDeviceDriverBaseName = _kernel32.lookupFunction<
    Uint32 Function(
  Pointer ImageBase,
  Pointer<Utf16> lpBaseName,
  Uint32 nSize,
),
    int Function(
  Pointer ImageBase,
  Pointer<Utf16> lpBaseName,
  int nSize,
)>('K32GetDeviceDriverBaseNameW');

int GetDeviceDriverFileName(
  Pointer ImageBase,
  Pointer<Utf16> lpFilename,
  int nSize,
) =>
    _K32GetDeviceDriverFileName(
      ImageBase,
      lpFilename,
      nSize,
    );

late final _K32GetDeviceDriverFileName = _kernel32.lookupFunction<
    Uint32 Function(
  Pointer ImageBase,
  Pointer<Utf16> lpFilename,
  Uint32 nSize,
),
    int Function(
  Pointer ImageBase,
  Pointer<Utf16> lpFilename,
  int nSize,
)>('K32GetDeviceDriverFileNameW');

int GetMappedFileName(
  int hProcess,
  Pointer lpv,
  Pointer<Utf16> lpFilename,
  int nSize,
) =>
    _K32GetMappedFileName(
      hProcess,
      lpv,
      lpFilename,
      nSize,
    );

late final _K32GetMappedFileName = _kernel32.lookupFunction<
    Uint32 Function(
  IntPtr hProcess,
  Pointer lpv,
  Pointer<Utf16> lpFilename,
  Uint32 nSize,
),
    int Function(
  int hProcess,
  Pointer lpv,
  Pointer<Utf16> lpFilename,
  int nSize,
)>('K32GetMappedFileNameW');

int GetModuleBaseName(
  int hProcess,
  int hModule,
  Pointer<Utf16> lpBaseName,
  int nSize,
) =>
    _K32GetModuleBaseName(
      hProcess,
      hModule,
      lpBaseName,
      nSize,
    );

late final _K32GetModuleBaseName = _kernel32.lookupFunction<
    Uint32 Function(
  IntPtr hProcess,
  IntPtr hModule,
  Pointer<Utf16> lpBaseName,
  Uint32 nSize,
),
    int Function(
  int hProcess,
  int hModule,
  Pointer<Utf16> lpBaseName,
  int nSize,
)>('K32GetModuleBaseNameW');

int GetModuleFileNameEx(
  int hProcess,
  int hModule,
  Pointer<Utf16> lpFilename,
  int nSize,
) =>
    _K32GetModuleFileNameEx(
      hProcess,
      hModule,
      lpFilename,
      nSize,
    );

late final _K32GetModuleFileNameEx = _kernel32.lookupFunction<
    Uint32 Function(
  IntPtr hProcess,
  IntPtr hModule,
  Pointer<Utf16> lpFilename,
  Uint32 nSize,
),
    int Function(
  int hProcess,
  int hModule,
  Pointer<Utf16> lpFilename,
  int nSize,
)>('K32GetModuleFileNameExW');

int GetModuleInformation(
  int hProcess,
  int hModule,
  Pointer<MODULEINFO> lpmodinfo,
  int cb,
) =>
    _K32GetModuleInformation(
      hProcess,
      hModule,
      lpmodinfo,
      cb,
    );

late final _K32GetModuleInformation = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  IntPtr hModule,
  Pointer<MODULEINFO> lpmodinfo,
  Uint32 cb,
),
    int Function(
  int hProcess,
  int hModule,
  Pointer<MODULEINFO> lpmodinfo,
  int cb,
)>('K32GetModuleInformation');

int GetPerformanceInfo(
  Pointer<PERFORMANCE_INFORMATION> pPerformanceInformation,
  int cb,
) =>
    _K32GetPerformanceInfo(
      pPerformanceInformation,
      cb,
    );

late final _K32GetPerformanceInfo = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<PERFORMANCE_INFORMATION> pPerformanceInformation,
  Uint32 cb,
),
    int Function(
  Pointer<PERFORMANCE_INFORMATION> pPerformanceInformation,
  int cb,
)>('K32GetPerformanceInfo');

int GetProcessImageFileName(
  int hProcess,
  Pointer<Utf16> lpImageFileName,
  int nSize,
) =>
    _K32GetProcessImageFileName(
      hProcess,
      lpImageFileName,
      nSize,
    );

late final _K32GetProcessImageFileName = _kernel32.lookupFunction<
    Uint32 Function(
  IntPtr hProcess,
  Pointer<Utf16> lpImageFileName,
  Uint32 nSize,
),
    int Function(
  int hProcess,
  Pointer<Utf16> lpImageFileName,
  int nSize,
)>('K32GetProcessImageFileNameW');

int GetProcessMemoryInfo(
  int Process,
  Pointer<PROCESS_MEMORY_COUNTERS> ppsmemCounters,
  int cb,
) =>
    _K32GetProcessMemoryInfo(
      Process,
      ppsmemCounters,
      cb,
    );

late final _K32GetProcessMemoryInfo = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr Process,
  Pointer<PROCESS_MEMORY_COUNTERS> ppsmemCounters,
  Uint32 cb,
),
    int Function(
  int Process,
  Pointer<PROCESS_MEMORY_COUNTERS> ppsmemCounters,
  int cb,
)>('K32GetProcessMemoryInfo');

int GetWsChanges(
  int hProcess,
  Pointer<PSAPI_WS_WATCH_INFORMATION> lpWatchInfo,
  int cb,
) =>
    _K32GetWsChanges(
      hProcess,
      lpWatchInfo,
      cb,
    );

late final _K32GetWsChanges = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Pointer<PSAPI_WS_WATCH_INFORMATION> lpWatchInfo,
  Uint32 cb,
),
    int Function(
  int hProcess,
  Pointer<PSAPI_WS_WATCH_INFORMATION> lpWatchInfo,
  int cb,
)>('K32GetWsChanges');

int GetWsChangesEx(
  int hProcess,
  Pointer<PSAPI_WS_WATCH_INFORMATION_EX> lpWatchInfoEx,
  Pointer<Uint32> cb,
) =>
    _K32GetWsChangesEx(
      hProcess,
      lpWatchInfoEx,
      cb,
    );

late final _K32GetWsChangesEx = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Pointer<PSAPI_WS_WATCH_INFORMATION_EX> lpWatchInfoEx,
  Pointer<Uint32> cb,
),
    int Function(
  int hProcess,
  Pointer<PSAPI_WS_WATCH_INFORMATION_EX> lpWatchInfoEx,
  Pointer<Uint32> cb,
)>('K32GetWsChangesEx');

int InitializeProcessForWsWatch(
  int hProcess,
) =>
    _K32InitializeProcessForWsWatch(
      hProcess,
    );

late final _K32InitializeProcessForWsWatch = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
),
    int Function(
  int hProcess,
)>('K32InitializeProcessForWsWatch');

int QueryWorkingSet(
  int hProcess,
  Pointer pv,
  int cb,
) =>
    _K32QueryWorkingSet(
      hProcess,
      pv,
      cb,
    );

late final _K32QueryWorkingSet = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Pointer pv,
  Uint32 cb,
),
    int Function(
  int hProcess,
  Pointer pv,
  int cb,
)>('K32QueryWorkingSet');

int QueryWorkingSetEx(
  int hProcess,
  Pointer pv,
  int cb,
) =>
    _K32QueryWorkingSetEx(
      hProcess,
      pv,
      cb,
    );

late final _K32QueryWorkingSetEx = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Pointer pv,
  Uint32 cb,
),
    int Function(
  int hProcess,
  Pointer pv,
  int cb,
)>('K32QueryWorkingSetEx');
