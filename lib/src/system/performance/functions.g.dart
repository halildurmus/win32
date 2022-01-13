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
import '../../system/performance/structs.g.dart';
import '../../system/performance/callbacks.g.dart'; // -----------------------------------------------------------------------

// kernel32.dll
// -----------------------------------------------------------------------
final _kernel32 = DynamicLibrary.open('kernel32.dll');

int QueryPerformanceCounter(
  Pointer<Int64> lpPerformanceCount,
) =>
    _QueryPerformanceCounter(
      lpPerformanceCount,
    );

late final _QueryPerformanceCounter = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Int64> lpPerformanceCount,
),
    int Function(
  Pointer<Int64> lpPerformanceCount,
)>('QueryPerformanceCounter');

int QueryPerformanceFrequency(
  Pointer<Int64> lpFrequency,
) =>
    _QueryPerformanceFrequency(
      lpFrequency,
    );

late final _QueryPerformanceFrequency = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Int64> lpFrequency,
),
    int Function(
  Pointer<Int64> lpFrequency,
)>('QueryPerformanceFrequency');

// -----------------------------------------------------------------------
// loadperf.dll
// -----------------------------------------------------------------------
final _loadperf = DynamicLibrary.open('loadperf.dll');

int BackupPerfRegistryToFile(
  Pointer<Utf16> szFileName,
  Pointer<Utf16> szCommentString,
) =>
    _BackupPerfRegistryToFile(
      szFileName,
      szCommentString,
    );

late final _BackupPerfRegistryToFile = _loadperf.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> szFileName,
  Pointer<Utf16> szCommentString,
),
    int Function(
  Pointer<Utf16> szFileName,
  Pointer<Utf16> szCommentString,
)>('BackupPerfRegistryToFileW');

int InstallPerfDll(
  Pointer<Utf16> szComputerName,
  Pointer<Utf16> lpIniFile,
  int dwFlags,
) =>
    _InstallPerfDll(
      szComputerName,
      lpIniFile,
      dwFlags,
    );

late final _InstallPerfDll = _loadperf.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> szComputerName,
  Pointer<Utf16> lpIniFile,
  IntPtr dwFlags,
),
    int Function(
  Pointer<Utf16> szComputerName,
  Pointer<Utf16> lpIniFile,
  int dwFlags,
)>('InstallPerfDllW');

int LoadPerfCounterTextStrings(
  Pointer<Utf16> lpCommandLine,
  int bQuietModeArg,
) =>
    _LoadPerfCounterTextStrings(
      lpCommandLine,
      bQuietModeArg,
    );

late final _LoadPerfCounterTextStrings = _loadperf.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> lpCommandLine,
  Int32 bQuietModeArg,
),
    int Function(
  Pointer<Utf16> lpCommandLine,
  int bQuietModeArg,
)>('LoadPerfCounterTextStringsW');

int RestorePerfRegistryFromFile(
  Pointer<Utf16> szFileName,
  Pointer<Utf16> szLangId,
) =>
    _RestorePerfRegistryFromFile(
      szFileName,
      szLangId,
    );

late final _RestorePerfRegistryFromFile = _loadperf.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> szFileName,
  Pointer<Utf16> szLangId,
),
    int Function(
  Pointer<Utf16> szFileName,
  Pointer<Utf16> szLangId,
)>('RestorePerfRegistryFromFileW');

int SetServiceAsTrusted(
  Pointer<Utf16> szReserved,
  Pointer<Utf16> szServiceName,
) =>
    _SetServiceAsTrusted(
      szReserved,
      szServiceName,
    );

late final _SetServiceAsTrusted = _loadperf.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> szReserved,
  Pointer<Utf16> szServiceName,
),
    int Function(
  Pointer<Utf16> szReserved,
  Pointer<Utf16> szServiceName,
)>('SetServiceAsTrustedW');

int UnloadPerfCounterTextStrings(
  Pointer<Utf16> lpCommandLine,
  int bQuietModeArg,
) =>
    _UnloadPerfCounterTextStrings(
      lpCommandLine,
      bQuietModeArg,
    );

late final _UnloadPerfCounterTextStrings = _loadperf.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> lpCommandLine,
  Int32 bQuietModeArg,
),
    int Function(
  Pointer<Utf16> lpCommandLine,
  int bQuietModeArg,
)>('UnloadPerfCounterTextStringsW');

int UpdatePerfNameFiles(
  Pointer<Utf16> szNewCtrFilePath,
  Pointer<Utf16> szNewHlpFilePath,
  Pointer<Utf16> szLanguageID,
  int dwFlags,
) =>
    _UpdatePerfNameFiles(
      szNewCtrFilePath,
      szNewHlpFilePath,
      szLanguageID,
      dwFlags,
    );

late final _UpdatePerfNameFiles = _loadperf.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> szNewCtrFilePath,
  Pointer<Utf16> szNewHlpFilePath,
  Pointer<Utf16> szLanguageID,
  IntPtr dwFlags,
),
    int Function(
  Pointer<Utf16> szNewCtrFilePath,
  Pointer<Utf16> szNewHlpFilePath,
  Pointer<Utf16> szLanguageID,
  int dwFlags,
)>('UpdatePerfNameFilesW');

// -----------------------------------------------------------------------
// advapi32.dll
// -----------------------------------------------------------------------
final _advapi32 = DynamicLibrary.open('advapi32.dll');

int PerfAddCounters(
  int hQuery,
  Pointer<PERF_COUNTER_IDENTIFIER> pCounters,
  int cbCounters,
) =>
    _PerfAddCounters(
      hQuery,
      pCounters,
      cbCounters,
    );

late final _PerfAddCounters = _advapi32.lookupFunction<
    Uint32 Function(
  IntPtr hQuery,
  Pointer<PERF_COUNTER_IDENTIFIER> pCounters,
  Uint32 cbCounters,
),
    int Function(
  int hQuery,
  Pointer<PERF_COUNTER_IDENTIFIER> pCounters,
  int cbCounters,
)>('PerfAddCounters');

int PerfCloseQueryHandle(
  int hQuery,
) =>
    _PerfCloseQueryHandle(
      hQuery,
    );

late final _PerfCloseQueryHandle = _advapi32.lookupFunction<
    Uint32 Function(
  IntPtr hQuery,
),
    int Function(
  int hQuery,
)>('PerfCloseQueryHandle');

Pointer<PERF_COUNTERSET_INSTANCE> PerfCreateInstance(
  int ProviderHandle,
  Pointer<GUID> CounterSetGuid,
  Pointer<Utf16> Name,
  int Id,
) =>
    _PerfCreateInstance(
      ProviderHandle,
      CounterSetGuid,
      Name,
      Id,
    );

late final _PerfCreateInstance = _advapi32.lookupFunction<
    Pointer<PERF_COUNTERSET_INSTANCE> Function(
  IntPtr ProviderHandle,
  Pointer<GUID> CounterSetGuid,
  Pointer<Utf16> Name,
  Uint32 Id,
),
    Pointer<PERF_COUNTERSET_INSTANCE> Function(
  int ProviderHandle,
  Pointer<GUID> CounterSetGuid,
  Pointer<Utf16> Name,
  int Id,
)>('PerfCreateInstance');

int PerfDecrementULongCounterValue(
  int Provider,
  Pointer<PERF_COUNTERSET_INSTANCE> Instance,
  int CounterId,
  int Value,
) =>
    _PerfDecrementULongCounterValue(
      Provider,
      Instance,
      CounterId,
      Value,
    );

late final _PerfDecrementULongCounterValue = _advapi32.lookupFunction<
    Uint32 Function(
  IntPtr Provider,
  Pointer<PERF_COUNTERSET_INSTANCE> Instance,
  Uint32 CounterId,
  Uint32 Value,
),
    int Function(
  int Provider,
  Pointer<PERF_COUNTERSET_INSTANCE> Instance,
  int CounterId,
  int Value,
)>('PerfDecrementULongCounterValue');

int PerfDecrementULongLongCounterValue(
  int Provider,
  Pointer<PERF_COUNTERSET_INSTANCE> Instance,
  int CounterId,
  int Value,
) =>
    _PerfDecrementULongLongCounterValue(
      Provider,
      Instance,
      CounterId,
      Value,
    );

late final _PerfDecrementULongLongCounterValue = _advapi32.lookupFunction<
    Uint32 Function(
  IntPtr Provider,
  Pointer<PERF_COUNTERSET_INSTANCE> Instance,
  Uint32 CounterId,
  Uint64 Value,
),
    int Function(
  int Provider,
  Pointer<PERF_COUNTERSET_INSTANCE> Instance,
  int CounterId,
  int Value,
)>('PerfDecrementULongLongCounterValue');

int PerfDeleteCounters(
  int hQuery,
  Pointer<PERF_COUNTER_IDENTIFIER> pCounters,
  int cbCounters,
) =>
    _PerfDeleteCounters(
      hQuery,
      pCounters,
      cbCounters,
    );

late final _PerfDeleteCounters = _advapi32.lookupFunction<
    Uint32 Function(
  IntPtr hQuery,
  Pointer<PERF_COUNTER_IDENTIFIER> pCounters,
  Uint32 cbCounters,
),
    int Function(
  int hQuery,
  Pointer<PERF_COUNTER_IDENTIFIER> pCounters,
  int cbCounters,
)>('PerfDeleteCounters');

int PerfDeleteInstance(
  int Provider,
  Pointer<PERF_COUNTERSET_INSTANCE> InstanceBlock,
) =>
    _PerfDeleteInstance(
      Provider,
      InstanceBlock,
    );

late final _PerfDeleteInstance = _advapi32.lookupFunction<
    Uint32 Function(
  IntPtr Provider,
  Pointer<PERF_COUNTERSET_INSTANCE> InstanceBlock,
),
    int Function(
  int Provider,
  Pointer<PERF_COUNTERSET_INSTANCE> InstanceBlock,
)>('PerfDeleteInstance');

int PerfEnumerateCounterSet(
  Pointer<Utf16> szMachine,
  Pointer<GUID> pCounterSetIds,
  int cCounterSetIds,
  Pointer<Uint32> pcCounterSetIdsActual,
) =>
    _PerfEnumerateCounterSet(
      szMachine,
      pCounterSetIds,
      cCounterSetIds,
      pcCounterSetIdsActual,
    );

late final _PerfEnumerateCounterSet = _advapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> szMachine,
  Pointer<GUID> pCounterSetIds,
  Uint32 cCounterSetIds,
  Pointer<Uint32> pcCounterSetIdsActual,
),
    int Function(
  Pointer<Utf16> szMachine,
  Pointer<GUID> pCounterSetIds,
  int cCounterSetIds,
  Pointer<Uint32> pcCounterSetIdsActual,
)>('PerfEnumerateCounterSet');

int PerfEnumerateCounterSetInstances(
  Pointer<Utf16> szMachine,
  Pointer<GUID> pCounterSetId,
  Pointer<PERF_INSTANCE_HEADER> pInstances,
  int cbInstances,
  Pointer<Uint32> pcbInstancesActual,
) =>
    _PerfEnumerateCounterSetInstances(
      szMachine,
      pCounterSetId,
      pInstances,
      cbInstances,
      pcbInstancesActual,
    );

late final _PerfEnumerateCounterSetInstances = _advapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> szMachine,
  Pointer<GUID> pCounterSetId,
  Pointer<PERF_INSTANCE_HEADER> pInstances,
  Uint32 cbInstances,
  Pointer<Uint32> pcbInstancesActual,
),
    int Function(
  Pointer<Utf16> szMachine,
  Pointer<GUID> pCounterSetId,
  Pointer<PERF_INSTANCE_HEADER> pInstances,
  int cbInstances,
  Pointer<Uint32> pcbInstancesActual,
)>('PerfEnumerateCounterSetInstances');

int PerfIncrementULongCounterValue(
  int Provider,
  Pointer<PERF_COUNTERSET_INSTANCE> Instance,
  int CounterId,
  int Value,
) =>
    _PerfIncrementULongCounterValue(
      Provider,
      Instance,
      CounterId,
      Value,
    );

late final _PerfIncrementULongCounterValue = _advapi32.lookupFunction<
    Uint32 Function(
  IntPtr Provider,
  Pointer<PERF_COUNTERSET_INSTANCE> Instance,
  Uint32 CounterId,
  Uint32 Value,
),
    int Function(
  int Provider,
  Pointer<PERF_COUNTERSET_INSTANCE> Instance,
  int CounterId,
  int Value,
)>('PerfIncrementULongCounterValue');

int PerfIncrementULongLongCounterValue(
  int Provider,
  Pointer<PERF_COUNTERSET_INSTANCE> Instance,
  int CounterId,
  int Value,
) =>
    _PerfIncrementULongLongCounterValue(
      Provider,
      Instance,
      CounterId,
      Value,
    );

late final _PerfIncrementULongLongCounterValue = _advapi32.lookupFunction<
    Uint32 Function(
  IntPtr Provider,
  Pointer<PERF_COUNTERSET_INSTANCE> Instance,
  Uint32 CounterId,
  Uint64 Value,
),
    int Function(
  int Provider,
  Pointer<PERF_COUNTERSET_INSTANCE> Instance,
  int CounterId,
  int Value,
)>('PerfIncrementULongLongCounterValue');

int PerfOpenQueryHandle(
  Pointer<Utf16> szMachine,
  Pointer<IntPtr> phQuery,
) =>
    _PerfOpenQueryHandle(
      szMachine,
      phQuery,
    );

late final _PerfOpenQueryHandle = _advapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> szMachine,
  Pointer<IntPtr> phQuery,
),
    int Function(
  Pointer<Utf16> szMachine,
  Pointer<IntPtr> phQuery,
)>('PerfOpenQueryHandle');

int PerfQueryCounterData(
  int hQuery,
  Pointer<PERF_DATA_HEADER> pCounterBlock,
  int cbCounterBlock,
  Pointer<Uint32> pcbCounterBlockActual,
) =>
    _PerfQueryCounterData(
      hQuery,
      pCounterBlock,
      cbCounterBlock,
      pcbCounterBlockActual,
    );

late final _PerfQueryCounterData = _advapi32.lookupFunction<
    Uint32 Function(
  IntPtr hQuery,
  Pointer<PERF_DATA_HEADER> pCounterBlock,
  Uint32 cbCounterBlock,
  Pointer<Uint32> pcbCounterBlockActual,
),
    int Function(
  int hQuery,
  Pointer<PERF_DATA_HEADER> pCounterBlock,
  int cbCounterBlock,
  Pointer<Uint32> pcbCounterBlockActual,
)>('PerfQueryCounterData');

int PerfQueryCounterInfo(
  int hQuery,
  Pointer<PERF_COUNTER_IDENTIFIER> pCounters,
  int cbCounters,
  Pointer<Uint32> pcbCountersActual,
) =>
    _PerfQueryCounterInfo(
      hQuery,
      pCounters,
      cbCounters,
      pcbCountersActual,
    );

late final _PerfQueryCounterInfo = _advapi32.lookupFunction<
    Uint32 Function(
  IntPtr hQuery,
  Pointer<PERF_COUNTER_IDENTIFIER> pCounters,
  Uint32 cbCounters,
  Pointer<Uint32> pcbCountersActual,
),
    int Function(
  int hQuery,
  Pointer<PERF_COUNTER_IDENTIFIER> pCounters,
  int cbCounters,
  Pointer<Uint32> pcbCountersActual,
)>('PerfQueryCounterInfo');

int PerfQueryCounterSetRegistrationInfo(
  Pointer<Utf16> szMachine,
  Pointer<GUID> pCounterSetId,
  int requestCode,
  int requestLangId,
  Pointer<Uint8> pbRegInfo,
  int cbRegInfo,
  Pointer<Uint32> pcbRegInfoActual,
) =>
    _PerfQueryCounterSetRegistrationInfo(
      szMachine,
      pCounterSetId,
      requestCode,
      requestLangId,
      pbRegInfo,
      cbRegInfo,
      pcbRegInfoActual,
    );

late final _PerfQueryCounterSetRegistrationInfo = _advapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> szMachine,
  Pointer<GUID> pCounterSetId,
  Int32 requestCode,
  Uint32 requestLangId,
  Pointer<Uint8> pbRegInfo,
  Uint32 cbRegInfo,
  Pointer<Uint32> pcbRegInfoActual,
),
    int Function(
  Pointer<Utf16> szMachine,
  Pointer<GUID> pCounterSetId,
  int requestCode,
  int requestLangId,
  Pointer<Uint8> pbRegInfo,
  int cbRegInfo,
  Pointer<Uint32> pcbRegInfoActual,
)>('PerfQueryCounterSetRegistrationInfo');

Pointer<PERF_COUNTERSET_INSTANCE> PerfQueryInstance(
  int ProviderHandle,
  Pointer<GUID> CounterSetGuid,
  Pointer<Utf16> Name,
  int Id,
) =>
    _PerfQueryInstance(
      ProviderHandle,
      CounterSetGuid,
      Name,
      Id,
    );

late final _PerfQueryInstance = _advapi32.lookupFunction<
    Pointer<PERF_COUNTERSET_INSTANCE> Function(
  IntPtr ProviderHandle,
  Pointer<GUID> CounterSetGuid,
  Pointer<Utf16> Name,
  Uint32 Id,
),
    Pointer<PERF_COUNTERSET_INSTANCE> Function(
  int ProviderHandle,
  Pointer<GUID> CounterSetGuid,
  Pointer<Utf16> Name,
  int Id,
)>('PerfQueryInstance');

int PerfSetCounterRefValue(
  int Provider,
  Pointer<PERF_COUNTERSET_INSTANCE> Instance,
  int CounterId,
  Pointer Address,
) =>
    _PerfSetCounterRefValue(
      Provider,
      Instance,
      CounterId,
      Address,
    );

late final _PerfSetCounterRefValue = _advapi32.lookupFunction<
    Uint32 Function(
  IntPtr Provider,
  Pointer<PERF_COUNTERSET_INSTANCE> Instance,
  Uint32 CounterId,
  Pointer Address,
),
    int Function(
  int Provider,
  Pointer<PERF_COUNTERSET_INSTANCE> Instance,
  int CounterId,
  Pointer Address,
)>('PerfSetCounterRefValue');

int PerfSetCounterSetInfo(
  int ProviderHandle,
  Pointer<PERF_COUNTERSET_INFO> Template,
  int TemplateSize,
) =>
    _PerfSetCounterSetInfo(
      ProviderHandle,
      Template,
      TemplateSize,
    );

late final _PerfSetCounterSetInfo = _advapi32.lookupFunction<
    Uint32 Function(
  IntPtr ProviderHandle,
  Pointer<PERF_COUNTERSET_INFO> Template,
  Uint32 TemplateSize,
),
    int Function(
  int ProviderHandle,
  Pointer<PERF_COUNTERSET_INFO> Template,
  int TemplateSize,
)>('PerfSetCounterSetInfo');

int PerfSetULongCounterValue(
  int Provider,
  Pointer<PERF_COUNTERSET_INSTANCE> Instance,
  int CounterId,
  int Value,
) =>
    _PerfSetULongCounterValue(
      Provider,
      Instance,
      CounterId,
      Value,
    );

late final _PerfSetULongCounterValue = _advapi32.lookupFunction<
    Uint32 Function(
  IntPtr Provider,
  Pointer<PERF_COUNTERSET_INSTANCE> Instance,
  Uint32 CounterId,
  Uint32 Value,
),
    int Function(
  int Provider,
  Pointer<PERF_COUNTERSET_INSTANCE> Instance,
  int CounterId,
  int Value,
)>('PerfSetULongCounterValue');

int PerfSetULongLongCounterValue(
  int Provider,
  Pointer<PERF_COUNTERSET_INSTANCE> Instance,
  int CounterId,
  int Value,
) =>
    _PerfSetULongLongCounterValue(
      Provider,
      Instance,
      CounterId,
      Value,
    );

late final _PerfSetULongLongCounterValue = _advapi32.lookupFunction<
    Uint32 Function(
  IntPtr Provider,
  Pointer<PERF_COUNTERSET_INSTANCE> Instance,
  Uint32 CounterId,
  Uint64 Value,
),
    int Function(
  int Provider,
  Pointer<PERF_COUNTERSET_INSTANCE> Instance,
  int CounterId,
  int Value,
)>('PerfSetULongLongCounterValue');

int PerfStartProvider(
  Pointer<GUID> ProviderGuid,
  Pointer<NativeFunction<PERFLIBREQUEST>> ControlCallback,
  Pointer<IntPtr> phProvider,
) =>
    _PerfStartProvider(
      ProviderGuid,
      ControlCallback,
      phProvider,
    );

late final _PerfStartProvider = _advapi32.lookupFunction<
    Uint32 Function(
  Pointer<GUID> ProviderGuid,
  Pointer<NativeFunction<PERFLIBREQUEST>> ControlCallback,
  Pointer<IntPtr> phProvider,
),
    int Function(
  Pointer<GUID> ProviderGuid,
  Pointer<NativeFunction<PERFLIBREQUEST>> ControlCallback,
  Pointer<IntPtr> phProvider,
)>('PerfStartProvider');

int PerfStartProviderEx(
  Pointer<GUID> ProviderGuid,
  Pointer<PERF_PROVIDER_CONTEXT> ProviderContext,
  Pointer<IntPtr> Provider,
) =>
    _PerfStartProviderEx(
      ProviderGuid,
      ProviderContext,
      Provider,
    );

late final _PerfStartProviderEx = _advapi32.lookupFunction<
    Uint32 Function(
  Pointer<GUID> ProviderGuid,
  Pointer<PERF_PROVIDER_CONTEXT> ProviderContext,
  Pointer<IntPtr> Provider,
),
    int Function(
  Pointer<GUID> ProviderGuid,
  Pointer<PERF_PROVIDER_CONTEXT> ProviderContext,
  Pointer<IntPtr> Provider,
)>('PerfStartProviderEx');

int PerfStopProvider(
  int ProviderHandle,
) =>
    _PerfStopProvider(
      ProviderHandle,
    );

late final _PerfStopProvider = _advapi32.lookupFunction<
    Uint32 Function(
  IntPtr ProviderHandle,
),
    int Function(
  int ProviderHandle,
)>('PerfStopProvider');

// -----------------------------------------------------------------------
// pdh.dll
// -----------------------------------------------------------------------
final _pdh = DynamicLibrary.open('pdh.dll');

int PdhAddCounter(
  int hQuery,
  Pointer<Utf16> szFullCounterPath,
  int dwUserData,
  Pointer<IntPtr> phCounter,
) =>
    _PdhAddCounter(
      hQuery,
      szFullCounterPath,
      dwUserData,
      phCounter,
    );

late final _PdhAddCounter = _pdh.lookupFunction<
    Int32 Function(
  IntPtr hQuery,
  Pointer<Utf16> szFullCounterPath,
  IntPtr dwUserData,
  Pointer<IntPtr> phCounter,
),
    int Function(
  int hQuery,
  Pointer<Utf16> szFullCounterPath,
  int dwUserData,
  Pointer<IntPtr> phCounter,
)>('PdhAddCounterW');

int PdhAddEnglishCounter(
  int hQuery,
  Pointer<Utf16> szFullCounterPath,
  int dwUserData,
  Pointer<IntPtr> phCounter,
) =>
    _PdhAddEnglishCounter(
      hQuery,
      szFullCounterPath,
      dwUserData,
      phCounter,
    );

late final _PdhAddEnglishCounter = _pdh.lookupFunction<
    Int32 Function(
  IntPtr hQuery,
  Pointer<Utf16> szFullCounterPath,
  IntPtr dwUserData,
  Pointer<IntPtr> phCounter,
),
    int Function(
  int hQuery,
  Pointer<Utf16> szFullCounterPath,
  int dwUserData,
  Pointer<IntPtr> phCounter,
)>('PdhAddEnglishCounterW');

int PdhBindInputDataSource(
  Pointer<IntPtr> phDataSource,
  Pointer<Utf16> LogFileNameList,
) =>
    _PdhBindInputDataSource(
      phDataSource,
      LogFileNameList,
    );

late final _PdhBindInputDataSource = _pdh.lookupFunction<
    Int32 Function(
  Pointer<IntPtr> phDataSource,
  Pointer<Utf16> LogFileNameList,
),
    int Function(
  Pointer<IntPtr> phDataSource,
  Pointer<Utf16> LogFileNameList,
)>('PdhBindInputDataSourceW');

int PdhBrowseCountersH(
  Pointer<PDH_BROWSE_DLG_CONFIG_H> pBrowseDlgData,
) =>
    _PdhBrowseCountersH(
      pBrowseDlgData,
    );

late final _PdhBrowseCountersH = _pdh.lookupFunction<
    Int32 Function(
  Pointer<PDH_BROWSE_DLG_CONFIG_H> pBrowseDlgData,
),
    int Function(
  Pointer<PDH_BROWSE_DLG_CONFIG_H> pBrowseDlgData,
)>('PdhBrowseCountersHW');

int PdhBrowseCounters(
  Pointer<PDH_BROWSE_DLG_CONFIG_> pBrowseDlgData,
) =>
    _PdhBrowseCounters(
      pBrowseDlgData,
    );

late final _PdhBrowseCounters = _pdh.lookupFunction<
    Int32 Function(
  Pointer<PDH_BROWSE_DLG_CONFIG_> pBrowseDlgData,
),
    int Function(
  Pointer<PDH_BROWSE_DLG_CONFIG_> pBrowseDlgData,
)>('PdhBrowseCountersW');

int PdhCalculateCounterFromRawValue(
  int hCounter,
  int dwFormat,
  Pointer<PDH_RAW_COUNTER> rawValue1,
  Pointer<PDH_RAW_COUNTER> rawValue2,
  Pointer<PDH_FMT_COUNTERVALUE> fmtValue,
) =>
    _PdhCalculateCounterFromRawValue(
      hCounter,
      dwFormat,
      rawValue1,
      rawValue2,
      fmtValue,
    );

late final _PdhCalculateCounterFromRawValue = _pdh.lookupFunction<
    Int32 Function(
  IntPtr hCounter,
  Uint32 dwFormat,
  Pointer<PDH_RAW_COUNTER> rawValue1,
  Pointer<PDH_RAW_COUNTER> rawValue2,
  Pointer<PDH_FMT_COUNTERVALUE> fmtValue,
),
    int Function(
  int hCounter,
  int dwFormat,
  Pointer<PDH_RAW_COUNTER> rawValue1,
  Pointer<PDH_RAW_COUNTER> rawValue2,
  Pointer<PDH_FMT_COUNTERVALUE> fmtValue,
)>('PdhCalculateCounterFromRawValue');

int PdhCloseLog(
  int hLog,
  int dwFlags,
) =>
    _PdhCloseLog(
      hLog,
      dwFlags,
    );

late final _PdhCloseLog = _pdh.lookupFunction<
    Int32 Function(
  IntPtr hLog,
  Uint32 dwFlags,
),
    int Function(
  int hLog,
  int dwFlags,
)>('PdhCloseLog');

int PdhCloseQuery(
  int hQuery,
) =>
    _PdhCloseQuery(
      hQuery,
    );

late final _PdhCloseQuery = _pdh.lookupFunction<
    Int32 Function(
  IntPtr hQuery,
),
    int Function(
  int hQuery,
)>('PdhCloseQuery');

int PdhCollectQueryData(
  int hQuery,
) =>
    _PdhCollectQueryData(
      hQuery,
    );

late final _PdhCollectQueryData = _pdh.lookupFunction<
    Int32 Function(
  IntPtr hQuery,
),
    int Function(
  int hQuery,
)>('PdhCollectQueryData');

int PdhCollectQueryDataEx(
  int hQuery,
  int dwIntervalTime,
  int hNewDataEvent,
) =>
    _PdhCollectQueryDataEx(
      hQuery,
      dwIntervalTime,
      hNewDataEvent,
    );

late final _PdhCollectQueryDataEx = _pdh.lookupFunction<
    Int32 Function(
  IntPtr hQuery,
  Uint32 dwIntervalTime,
  IntPtr hNewDataEvent,
),
    int Function(
  int hQuery,
  int dwIntervalTime,
  int hNewDataEvent,
)>('PdhCollectQueryDataEx');

int PdhCollectQueryDataWithTime(
  int hQuery,
  Pointer<Int64> pllTimeStamp,
) =>
    _PdhCollectQueryDataWithTime(
      hQuery,
      pllTimeStamp,
    );

late final _PdhCollectQueryDataWithTime = _pdh.lookupFunction<
    Int32 Function(
  IntPtr hQuery,
  Pointer<Int64> pllTimeStamp,
),
    int Function(
  int hQuery,
  Pointer<Int64> pllTimeStamp,
)>('PdhCollectQueryDataWithTime');

int PdhComputeCounterStatistics(
  int hCounter,
  int dwFormat,
  int dwFirstEntry,
  int dwNumEntries,
  Pointer<PDH_RAW_COUNTER> lpRawValueArray,
  Pointer<PDH_STATISTICS> data,
) =>
    _PdhComputeCounterStatistics(
      hCounter,
      dwFormat,
      dwFirstEntry,
      dwNumEntries,
      lpRawValueArray,
      data,
    );

late final _PdhComputeCounterStatistics = _pdh.lookupFunction<
    Int32 Function(
  IntPtr hCounter,
  Uint32 dwFormat,
  Uint32 dwFirstEntry,
  Uint32 dwNumEntries,
  Pointer<PDH_RAW_COUNTER> lpRawValueArray,
  Pointer<PDH_STATISTICS> data,
),
    int Function(
  int hCounter,
  int dwFormat,
  int dwFirstEntry,
  int dwNumEntries,
  Pointer<PDH_RAW_COUNTER> lpRawValueArray,
  Pointer<PDH_STATISTICS> data,
)>('PdhComputeCounterStatistics');

int PdhConnectMachine(
  Pointer<Utf16> szMachineName,
) =>
    _PdhConnectMachine(
      szMachineName,
    );

late final _PdhConnectMachine = _pdh.lookupFunction<
    Int32 Function(
  Pointer<Utf16> szMachineName,
),
    int Function(
  Pointer<Utf16> szMachineName,
)>('PdhConnectMachineW');

int PdhCreateSQLTables(
  Pointer<Utf16> szDataSource,
) =>
    _PdhCreateSQLTables(
      szDataSource,
    );

late final _PdhCreateSQLTables = _pdh.lookupFunction<
    Int32 Function(
  Pointer<Utf16> szDataSource,
),
    int Function(
  Pointer<Utf16> szDataSource,
)>('PdhCreateSQLTablesW');

int PdhEnumLogSetNames(
  Pointer<Utf16> szDataSource,
  Pointer<Utf16> mszDataSetNameList,
  Pointer<Uint32> pcchBufferLength,
) =>
    _PdhEnumLogSetNames(
      szDataSource,
      mszDataSetNameList,
      pcchBufferLength,
    );

late final _PdhEnumLogSetNames = _pdh.lookupFunction<
    Int32 Function(
  Pointer<Utf16> szDataSource,
  Pointer<Utf16> mszDataSetNameList,
  Pointer<Uint32> pcchBufferLength,
),
    int Function(
  Pointer<Utf16> szDataSource,
  Pointer<Utf16> mszDataSetNameList,
  Pointer<Uint32> pcchBufferLength,
)>('PdhEnumLogSetNamesW');

int PdhEnumMachinesH(
  int hDataSource,
  Pointer<Utf16> mszMachineList,
  Pointer<Uint32> pcchBufferSize,
) =>
    _PdhEnumMachinesH(
      hDataSource,
      mszMachineList,
      pcchBufferSize,
    );

late final _PdhEnumMachinesH = _pdh.lookupFunction<
    Int32 Function(
  IntPtr hDataSource,
  Pointer<Utf16> mszMachineList,
  Pointer<Uint32> pcchBufferSize,
),
    int Function(
  int hDataSource,
  Pointer<Utf16> mszMachineList,
  Pointer<Uint32> pcchBufferSize,
)>('PdhEnumMachinesHW');

int PdhEnumMachines(
  Pointer<Utf16> szDataSource,
  Pointer<Utf16> mszMachineList,
  Pointer<Uint32> pcchBufferSize,
) =>
    _PdhEnumMachines(
      szDataSource,
      mszMachineList,
      pcchBufferSize,
    );

late final _PdhEnumMachines = _pdh.lookupFunction<
    Int32 Function(
  Pointer<Utf16> szDataSource,
  Pointer<Utf16> mszMachineList,
  Pointer<Uint32> pcchBufferSize,
),
    int Function(
  Pointer<Utf16> szDataSource,
  Pointer<Utf16> mszMachineList,
  Pointer<Uint32> pcchBufferSize,
)>('PdhEnumMachinesW');

int PdhEnumObjectItemsH(
  int hDataSource,
  Pointer<Utf16> szMachineName,
  Pointer<Utf16> szObjectName,
  Pointer<Utf16> mszCounterList,
  Pointer<Uint32> pcchCounterListLength,
  Pointer<Utf16> mszInstanceList,
  Pointer<Uint32> pcchInstanceListLength,
  int dwDetailLevel,
  int dwFlags,
) =>
    _PdhEnumObjectItemsH(
      hDataSource,
      szMachineName,
      szObjectName,
      mszCounterList,
      pcchCounterListLength,
      mszInstanceList,
      pcchInstanceListLength,
      dwDetailLevel,
      dwFlags,
    );

late final _PdhEnumObjectItemsH = _pdh.lookupFunction<
    Int32 Function(
  IntPtr hDataSource,
  Pointer<Utf16> szMachineName,
  Pointer<Utf16> szObjectName,
  Pointer<Utf16> mszCounterList,
  Pointer<Uint32> pcchCounterListLength,
  Pointer<Utf16> mszInstanceList,
  Pointer<Uint32> pcchInstanceListLength,
  Uint32 dwDetailLevel,
  Uint32 dwFlags,
),
    int Function(
  int hDataSource,
  Pointer<Utf16> szMachineName,
  Pointer<Utf16> szObjectName,
  Pointer<Utf16> mszCounterList,
  Pointer<Uint32> pcchCounterListLength,
  Pointer<Utf16> mszInstanceList,
  Pointer<Uint32> pcchInstanceListLength,
  int dwDetailLevel,
  int dwFlags,
)>('PdhEnumObjectItemsHW');

int PdhEnumObjectItems(
  Pointer<Utf16> szDataSource,
  Pointer<Utf16> szMachineName,
  Pointer<Utf16> szObjectName,
  Pointer<Utf16> mszCounterList,
  Pointer<Uint32> pcchCounterListLength,
  Pointer<Utf16> mszInstanceList,
  Pointer<Uint32> pcchInstanceListLength,
  int dwDetailLevel,
  int dwFlags,
) =>
    _PdhEnumObjectItems(
      szDataSource,
      szMachineName,
      szObjectName,
      mszCounterList,
      pcchCounterListLength,
      mszInstanceList,
      pcchInstanceListLength,
      dwDetailLevel,
      dwFlags,
    );

late final _PdhEnumObjectItems = _pdh.lookupFunction<
    Int32 Function(
  Pointer<Utf16> szDataSource,
  Pointer<Utf16> szMachineName,
  Pointer<Utf16> szObjectName,
  Pointer<Utf16> mszCounterList,
  Pointer<Uint32> pcchCounterListLength,
  Pointer<Utf16> mszInstanceList,
  Pointer<Uint32> pcchInstanceListLength,
  Uint32 dwDetailLevel,
  Uint32 dwFlags,
),
    int Function(
  Pointer<Utf16> szDataSource,
  Pointer<Utf16> szMachineName,
  Pointer<Utf16> szObjectName,
  Pointer<Utf16> mszCounterList,
  Pointer<Uint32> pcchCounterListLength,
  Pointer<Utf16> mszInstanceList,
  Pointer<Uint32> pcchInstanceListLength,
  int dwDetailLevel,
  int dwFlags,
)>('PdhEnumObjectItemsW');

int PdhEnumObjectsH(
  int hDataSource,
  Pointer<Utf16> szMachineName,
  Pointer<Utf16> mszObjectList,
  Pointer<Uint32> pcchBufferSize,
  int dwDetailLevel,
  int bRefresh,
) =>
    _PdhEnumObjectsH(
      hDataSource,
      szMachineName,
      mszObjectList,
      pcchBufferSize,
      dwDetailLevel,
      bRefresh,
    );

late final _PdhEnumObjectsH = _pdh.lookupFunction<
    Int32 Function(
  IntPtr hDataSource,
  Pointer<Utf16> szMachineName,
  Pointer<Utf16> mszObjectList,
  Pointer<Uint32> pcchBufferSize,
  Uint32 dwDetailLevel,
  Int32 bRefresh,
),
    int Function(
  int hDataSource,
  Pointer<Utf16> szMachineName,
  Pointer<Utf16> mszObjectList,
  Pointer<Uint32> pcchBufferSize,
  int dwDetailLevel,
  int bRefresh,
)>('PdhEnumObjectsHW');

int PdhEnumObjects(
  Pointer<Utf16> szDataSource,
  Pointer<Utf16> szMachineName,
  Pointer<Utf16> mszObjectList,
  Pointer<Uint32> pcchBufferSize,
  int dwDetailLevel,
  int bRefresh,
) =>
    _PdhEnumObjects(
      szDataSource,
      szMachineName,
      mszObjectList,
      pcchBufferSize,
      dwDetailLevel,
      bRefresh,
    );

late final _PdhEnumObjects = _pdh.lookupFunction<
    Int32 Function(
  Pointer<Utf16> szDataSource,
  Pointer<Utf16> szMachineName,
  Pointer<Utf16> mszObjectList,
  Pointer<Uint32> pcchBufferSize,
  Uint32 dwDetailLevel,
  Int32 bRefresh,
),
    int Function(
  Pointer<Utf16> szDataSource,
  Pointer<Utf16> szMachineName,
  Pointer<Utf16> mszObjectList,
  Pointer<Uint32> pcchBufferSize,
  int dwDetailLevel,
  int bRefresh,
)>('PdhEnumObjectsW');

int PdhExpandCounterPath(
  Pointer<Utf16> szWildCardPath,
  Pointer<Utf16> mszExpandedPathList,
  Pointer<Uint32> pcchPathListLength,
) =>
    _PdhExpandCounterPath(
      szWildCardPath,
      mszExpandedPathList,
      pcchPathListLength,
    );

late final _PdhExpandCounterPath = _pdh.lookupFunction<
    Int32 Function(
  Pointer<Utf16> szWildCardPath,
  Pointer<Utf16> mszExpandedPathList,
  Pointer<Uint32> pcchPathListLength,
),
    int Function(
  Pointer<Utf16> szWildCardPath,
  Pointer<Utf16> mszExpandedPathList,
  Pointer<Uint32> pcchPathListLength,
)>('PdhExpandCounterPathW');

int PdhExpandWildCardPathH(
  int hDataSource,
  Pointer<Utf16> szWildCardPath,
  Pointer<Utf16> mszExpandedPathList,
  Pointer<Uint32> pcchPathListLength,
  int dwFlags,
) =>
    _PdhExpandWildCardPathH(
      hDataSource,
      szWildCardPath,
      mszExpandedPathList,
      pcchPathListLength,
      dwFlags,
    );

late final _PdhExpandWildCardPathH = _pdh.lookupFunction<
    Int32 Function(
  IntPtr hDataSource,
  Pointer<Utf16> szWildCardPath,
  Pointer<Utf16> mszExpandedPathList,
  Pointer<Uint32> pcchPathListLength,
  Uint32 dwFlags,
),
    int Function(
  int hDataSource,
  Pointer<Utf16> szWildCardPath,
  Pointer<Utf16> mszExpandedPathList,
  Pointer<Uint32> pcchPathListLength,
  int dwFlags,
)>('PdhExpandWildCardPathHW');

int PdhExpandWildCardPath(
  Pointer<Utf16> szDataSource,
  Pointer<Utf16> szWildCardPath,
  Pointer<Utf16> mszExpandedPathList,
  Pointer<Uint32> pcchPathListLength,
  int dwFlags,
) =>
    _PdhExpandWildCardPath(
      szDataSource,
      szWildCardPath,
      mszExpandedPathList,
      pcchPathListLength,
      dwFlags,
    );

late final _PdhExpandWildCardPath = _pdh.lookupFunction<
    Int32 Function(
  Pointer<Utf16> szDataSource,
  Pointer<Utf16> szWildCardPath,
  Pointer<Utf16> mszExpandedPathList,
  Pointer<Uint32> pcchPathListLength,
  Uint32 dwFlags,
),
    int Function(
  Pointer<Utf16> szDataSource,
  Pointer<Utf16> szWildCardPath,
  Pointer<Utf16> mszExpandedPathList,
  Pointer<Uint32> pcchPathListLength,
  int dwFlags,
)>('PdhExpandWildCardPathW');

int PdhFormatFromRawValue(
  int dwCounterType,
  int dwFormat,
  Pointer<Int64> pTimeBase,
  Pointer<PDH_RAW_COUNTER> pRawValue1,
  Pointer<PDH_RAW_COUNTER> pRawValue2,
  Pointer<PDH_FMT_COUNTERVALUE> pFmtValue,
) =>
    _PdhFormatFromRawValue(
      dwCounterType,
      dwFormat,
      pTimeBase,
      pRawValue1,
      pRawValue2,
      pFmtValue,
    );

late final _PdhFormatFromRawValue = _pdh.lookupFunction<
    Int32 Function(
  Uint32 dwCounterType,
  Uint32 dwFormat,
  Pointer<Int64> pTimeBase,
  Pointer<PDH_RAW_COUNTER> pRawValue1,
  Pointer<PDH_RAW_COUNTER> pRawValue2,
  Pointer<PDH_FMT_COUNTERVALUE> pFmtValue,
),
    int Function(
  int dwCounterType,
  int dwFormat,
  Pointer<Int64> pTimeBase,
  Pointer<PDH_RAW_COUNTER> pRawValue1,
  Pointer<PDH_RAW_COUNTER> pRawValue2,
  Pointer<PDH_FMT_COUNTERVALUE> pFmtValue,
)>('PdhFormatFromRawValue');

int PdhGetCounterInfo(
  int hCounter,
  int bRetrieveExplainText,
  Pointer<Uint32> pdwBufferSize,
  Pointer<PDH_COUNTER_INFO_> lpBuffer,
) =>
    _PdhGetCounterInfo(
      hCounter,
      bRetrieveExplainText,
      pdwBufferSize,
      lpBuffer,
    );

late final _PdhGetCounterInfo = _pdh.lookupFunction<
    Int32 Function(
  IntPtr hCounter,
  Uint8 bRetrieveExplainText,
  Pointer<Uint32> pdwBufferSize,
  Pointer<PDH_COUNTER_INFO_> lpBuffer,
),
    int Function(
  int hCounter,
  int bRetrieveExplainText,
  Pointer<Uint32> pdwBufferSize,
  Pointer<PDH_COUNTER_INFO_> lpBuffer,
)>('PdhGetCounterInfoW');

int PdhGetCounterTimeBase(
  int hCounter,
  Pointer<Int64> pTimeBase,
) =>
    _PdhGetCounterTimeBase(
      hCounter,
      pTimeBase,
    );

late final _PdhGetCounterTimeBase = _pdh.lookupFunction<
    Int32 Function(
  IntPtr hCounter,
  Pointer<Int64> pTimeBase,
),
    int Function(
  int hCounter,
  Pointer<Int64> pTimeBase,
)>('PdhGetCounterTimeBase');

int PdhGetDataSourceTimeRangeH(
  int hDataSource,
  Pointer<Uint32> pdwNumEntries,
  Pointer<PDH_TIME_INFO> pInfo,
  Pointer<Uint32> pdwBufferSize,
) =>
    _PdhGetDataSourceTimeRangeH(
      hDataSource,
      pdwNumEntries,
      pInfo,
      pdwBufferSize,
    );

late final _PdhGetDataSourceTimeRangeH = _pdh.lookupFunction<
    Int32 Function(
  IntPtr hDataSource,
  Pointer<Uint32> pdwNumEntries,
  Pointer<PDH_TIME_INFO> pInfo,
  Pointer<Uint32> pdwBufferSize,
),
    int Function(
  int hDataSource,
  Pointer<Uint32> pdwNumEntries,
  Pointer<PDH_TIME_INFO> pInfo,
  Pointer<Uint32> pdwBufferSize,
)>('PdhGetDataSourceTimeRangeH');

int PdhGetDataSourceTimeRange(
  Pointer<Utf16> szDataSource,
  Pointer<Uint32> pdwNumEntries,
  Pointer<PDH_TIME_INFO> pInfo,
  Pointer<Uint32> pdwBufferSize,
) =>
    _PdhGetDataSourceTimeRange(
      szDataSource,
      pdwNumEntries,
      pInfo,
      pdwBufferSize,
    );

late final _PdhGetDataSourceTimeRange = _pdh.lookupFunction<
    Int32 Function(
  Pointer<Utf16> szDataSource,
  Pointer<Uint32> pdwNumEntries,
  Pointer<PDH_TIME_INFO> pInfo,
  Pointer<Uint32> pdwBufferSize,
),
    int Function(
  Pointer<Utf16> szDataSource,
  Pointer<Uint32> pdwNumEntries,
  Pointer<PDH_TIME_INFO> pInfo,
  Pointer<Uint32> pdwBufferSize,
)>('PdhGetDataSourceTimeRangeW');

int PdhGetDefaultPerfCounterH(
  int hDataSource,
  Pointer<Utf16> szMachineName,
  Pointer<Utf16> szObjectName,
  Pointer<Utf16> szDefaultCounterName,
  Pointer<Uint32> pcchBufferSize,
) =>
    _PdhGetDefaultPerfCounterH(
      hDataSource,
      szMachineName,
      szObjectName,
      szDefaultCounterName,
      pcchBufferSize,
    );

late final _PdhGetDefaultPerfCounterH = _pdh.lookupFunction<
    Int32 Function(
  IntPtr hDataSource,
  Pointer<Utf16> szMachineName,
  Pointer<Utf16> szObjectName,
  Pointer<Utf16> szDefaultCounterName,
  Pointer<Uint32> pcchBufferSize,
),
    int Function(
  int hDataSource,
  Pointer<Utf16> szMachineName,
  Pointer<Utf16> szObjectName,
  Pointer<Utf16> szDefaultCounterName,
  Pointer<Uint32> pcchBufferSize,
)>('PdhGetDefaultPerfCounterHW');

int PdhGetDefaultPerfCounter(
  Pointer<Utf16> szDataSource,
  Pointer<Utf16> szMachineName,
  Pointer<Utf16> szObjectName,
  Pointer<Utf16> szDefaultCounterName,
  Pointer<Uint32> pcchBufferSize,
) =>
    _PdhGetDefaultPerfCounter(
      szDataSource,
      szMachineName,
      szObjectName,
      szDefaultCounterName,
      pcchBufferSize,
    );

late final _PdhGetDefaultPerfCounter = _pdh.lookupFunction<
    Int32 Function(
  Pointer<Utf16> szDataSource,
  Pointer<Utf16> szMachineName,
  Pointer<Utf16> szObjectName,
  Pointer<Utf16> szDefaultCounterName,
  Pointer<Uint32> pcchBufferSize,
),
    int Function(
  Pointer<Utf16> szDataSource,
  Pointer<Utf16> szMachineName,
  Pointer<Utf16> szObjectName,
  Pointer<Utf16> szDefaultCounterName,
  Pointer<Uint32> pcchBufferSize,
)>('PdhGetDefaultPerfCounterW');

int PdhGetDefaultPerfObjectH(
  int hDataSource,
  Pointer<Utf16> szMachineName,
  Pointer<Utf16> szDefaultObjectName,
  Pointer<Uint32> pcchBufferSize,
) =>
    _PdhGetDefaultPerfObjectH(
      hDataSource,
      szMachineName,
      szDefaultObjectName,
      pcchBufferSize,
    );

late final _PdhGetDefaultPerfObjectH = _pdh.lookupFunction<
    Int32 Function(
  IntPtr hDataSource,
  Pointer<Utf16> szMachineName,
  Pointer<Utf16> szDefaultObjectName,
  Pointer<Uint32> pcchBufferSize,
),
    int Function(
  int hDataSource,
  Pointer<Utf16> szMachineName,
  Pointer<Utf16> szDefaultObjectName,
  Pointer<Uint32> pcchBufferSize,
)>('PdhGetDefaultPerfObjectHW');

int PdhGetDefaultPerfObject(
  Pointer<Utf16> szDataSource,
  Pointer<Utf16> szMachineName,
  Pointer<Utf16> szDefaultObjectName,
  Pointer<Uint32> pcchBufferSize,
) =>
    _PdhGetDefaultPerfObject(
      szDataSource,
      szMachineName,
      szDefaultObjectName,
      pcchBufferSize,
    );

late final _PdhGetDefaultPerfObject = _pdh.lookupFunction<
    Int32 Function(
  Pointer<Utf16> szDataSource,
  Pointer<Utf16> szMachineName,
  Pointer<Utf16> szDefaultObjectName,
  Pointer<Uint32> pcchBufferSize,
),
    int Function(
  Pointer<Utf16> szDataSource,
  Pointer<Utf16> szMachineName,
  Pointer<Utf16> szDefaultObjectName,
  Pointer<Uint32> pcchBufferSize,
)>('PdhGetDefaultPerfObjectW');

int PdhGetDllVersion(
  Pointer<Uint32> lpdwVersion,
) =>
    _PdhGetDllVersion(
      lpdwVersion,
    );

late final _PdhGetDllVersion = _pdh.lookupFunction<
    Int32 Function(
  Pointer<Uint32> lpdwVersion,
),
    int Function(
  Pointer<Uint32> lpdwVersion,
)>('PdhGetDllVersion');

int PdhGetFormattedCounterArray(
  int hCounter,
  int dwFormat,
  Pointer<Uint32> lpdwBufferSize,
  Pointer<Uint32> lpdwItemCount,
  Pointer<PDH_FMT_COUNTERVALUE_ITEM_> ItemBuffer,
) =>
    _PdhGetFormattedCounterArray(
      hCounter,
      dwFormat,
      lpdwBufferSize,
      lpdwItemCount,
      ItemBuffer,
    );

late final _PdhGetFormattedCounterArray = _pdh.lookupFunction<
    Int32 Function(
  IntPtr hCounter,
  Uint32 dwFormat,
  Pointer<Uint32> lpdwBufferSize,
  Pointer<Uint32> lpdwItemCount,
  Pointer<PDH_FMT_COUNTERVALUE_ITEM_> ItemBuffer,
),
    int Function(
  int hCounter,
  int dwFormat,
  Pointer<Uint32> lpdwBufferSize,
  Pointer<Uint32> lpdwItemCount,
  Pointer<PDH_FMT_COUNTERVALUE_ITEM_> ItemBuffer,
)>('PdhGetFormattedCounterArrayW');

int PdhGetFormattedCounterValue(
  int hCounter,
  int dwFormat,
  Pointer<Uint32> lpdwType,
  Pointer<PDH_FMT_COUNTERVALUE> pValue,
) =>
    _PdhGetFormattedCounterValue(
      hCounter,
      dwFormat,
      lpdwType,
      pValue,
    );

late final _PdhGetFormattedCounterValue = _pdh.lookupFunction<
    Int32 Function(
  IntPtr hCounter,
  Uint32 dwFormat,
  Pointer<Uint32> lpdwType,
  Pointer<PDH_FMT_COUNTERVALUE> pValue,
),
    int Function(
  int hCounter,
  int dwFormat,
  Pointer<Uint32> lpdwType,
  Pointer<PDH_FMT_COUNTERVALUE> pValue,
)>('PdhGetFormattedCounterValue');

int PdhGetLogFileSize(
  int hLog,
  Pointer<Int64> llSize,
) =>
    _PdhGetLogFileSize(
      hLog,
      llSize,
    );

late final _PdhGetLogFileSize = _pdh.lookupFunction<
    Int32 Function(
  IntPtr hLog,
  Pointer<Int64> llSize,
),
    int Function(
  int hLog,
  Pointer<Int64> llSize,
)>('PdhGetLogFileSize');

int PdhGetLogSetGUID(
  int hLog,
  Pointer<GUID> pGuid,
  Pointer<Int32> pRunId,
) =>
    _PdhGetLogSetGUID(
      hLog,
      pGuid,
      pRunId,
    );

late final _PdhGetLogSetGUID = _pdh.lookupFunction<
    Int32 Function(
  IntPtr hLog,
  Pointer<GUID> pGuid,
  Pointer<Int32> pRunId,
),
    int Function(
  int hLog,
  Pointer<GUID> pGuid,
  Pointer<Int32> pRunId,
)>('PdhGetLogSetGUID');

int PdhGetRawCounterArray(
  int hCounter,
  Pointer<Uint32> lpdwBufferSize,
  Pointer<Uint32> lpdwItemCount,
  Pointer<PDH_RAW_COUNTER_ITEM_> ItemBuffer,
) =>
    _PdhGetRawCounterArray(
      hCounter,
      lpdwBufferSize,
      lpdwItemCount,
      ItemBuffer,
    );

late final _PdhGetRawCounterArray = _pdh.lookupFunction<
    Int32 Function(
  IntPtr hCounter,
  Pointer<Uint32> lpdwBufferSize,
  Pointer<Uint32> lpdwItemCount,
  Pointer<PDH_RAW_COUNTER_ITEM_> ItemBuffer,
),
    int Function(
  int hCounter,
  Pointer<Uint32> lpdwBufferSize,
  Pointer<Uint32> lpdwItemCount,
  Pointer<PDH_RAW_COUNTER_ITEM_> ItemBuffer,
)>('PdhGetRawCounterArrayW');

int PdhGetRawCounterValue(
  int hCounter,
  Pointer<Uint32> lpdwType,
  Pointer<PDH_RAW_COUNTER> pValue,
) =>
    _PdhGetRawCounterValue(
      hCounter,
      lpdwType,
      pValue,
    );

late final _PdhGetRawCounterValue = _pdh.lookupFunction<
    Int32 Function(
  IntPtr hCounter,
  Pointer<Uint32> lpdwType,
  Pointer<PDH_RAW_COUNTER> pValue,
),
    int Function(
  int hCounter,
  Pointer<Uint32> lpdwType,
  Pointer<PDH_RAW_COUNTER> pValue,
)>('PdhGetRawCounterValue');

int PdhIsRealTimeQuery(
  int hQuery,
) =>
    _PdhIsRealTimeQuery(
      hQuery,
    );

late final _PdhIsRealTimeQuery = _pdh.lookupFunction<
    Int32 Function(
  IntPtr hQuery,
),
    int Function(
  int hQuery,
)>('PdhIsRealTimeQuery');

int PdhLookupPerfIndexByName(
  Pointer<Utf16> szMachineName,
  Pointer<Utf16> szNameBuffer,
  Pointer<Uint32> pdwIndex,
) =>
    _PdhLookupPerfIndexByName(
      szMachineName,
      szNameBuffer,
      pdwIndex,
    );

late final _PdhLookupPerfIndexByName = _pdh.lookupFunction<
    Int32 Function(
  Pointer<Utf16> szMachineName,
  Pointer<Utf16> szNameBuffer,
  Pointer<Uint32> pdwIndex,
),
    int Function(
  Pointer<Utf16> szMachineName,
  Pointer<Utf16> szNameBuffer,
  Pointer<Uint32> pdwIndex,
)>('PdhLookupPerfIndexByNameW');

int PdhLookupPerfNameByIndex(
  Pointer<Utf16> szMachineName,
  int dwNameIndex,
  Pointer<Utf16> szNameBuffer,
  Pointer<Uint32> pcchNameBufferSize,
) =>
    _PdhLookupPerfNameByIndex(
      szMachineName,
      dwNameIndex,
      szNameBuffer,
      pcchNameBufferSize,
    );

late final _PdhLookupPerfNameByIndex = _pdh.lookupFunction<
    Int32 Function(
  Pointer<Utf16> szMachineName,
  Uint32 dwNameIndex,
  Pointer<Utf16> szNameBuffer,
  Pointer<Uint32> pcchNameBufferSize,
),
    int Function(
  Pointer<Utf16> szMachineName,
  int dwNameIndex,
  Pointer<Utf16> szNameBuffer,
  Pointer<Uint32> pcchNameBufferSize,
)>('PdhLookupPerfNameByIndexW');

int PdhMakeCounterPath(
  Pointer<PDH_COUNTER_PATH_ELEMENTS_> pCounterPathElements,
  Pointer<Utf16> szFullPathBuffer,
  Pointer<Uint32> pcchBufferSize,
  int dwFlags,
) =>
    _PdhMakeCounterPath(
      pCounterPathElements,
      szFullPathBuffer,
      pcchBufferSize,
      dwFlags,
    );

late final _PdhMakeCounterPath = _pdh.lookupFunction<
    Int32 Function(
  Pointer<PDH_COUNTER_PATH_ELEMENTS_> pCounterPathElements,
  Pointer<Utf16> szFullPathBuffer,
  Pointer<Uint32> pcchBufferSize,
  Uint32 dwFlags,
),
    int Function(
  Pointer<PDH_COUNTER_PATH_ELEMENTS_> pCounterPathElements,
  Pointer<Utf16> szFullPathBuffer,
  Pointer<Uint32> pcchBufferSize,
  int dwFlags,
)>('PdhMakeCounterPathW');

int PdhOpenLog(
  Pointer<Utf16> szLogFileName,
  int dwAccessFlags,
  Pointer<Uint32> lpdwLogType,
  int hQuery,
  int dwMaxSize,
  Pointer<Utf16> szUserCaption,
  Pointer<IntPtr> phLog,
) =>
    _PdhOpenLog(
      szLogFileName,
      dwAccessFlags,
      lpdwLogType,
      hQuery,
      dwMaxSize,
      szUserCaption,
      phLog,
    );

late final _PdhOpenLog = _pdh.lookupFunction<
    Int32 Function(
  Pointer<Utf16> szLogFileName,
  Uint32 dwAccessFlags,
  Pointer<Uint32> lpdwLogType,
  IntPtr hQuery,
  Uint32 dwMaxSize,
  Pointer<Utf16> szUserCaption,
  Pointer<IntPtr> phLog,
),
    int Function(
  Pointer<Utf16> szLogFileName,
  int dwAccessFlags,
  Pointer<Uint32> lpdwLogType,
  int hQuery,
  int dwMaxSize,
  Pointer<Utf16> szUserCaption,
  Pointer<IntPtr> phLog,
)>('PdhOpenLogW');

int PdhOpenQueryH(
  int hDataSource,
  int dwUserData,
  Pointer<IntPtr> phQuery,
) =>
    _PdhOpenQueryH(
      hDataSource,
      dwUserData,
      phQuery,
    );

late final _PdhOpenQueryH = _pdh.lookupFunction<
    Int32 Function(
  IntPtr hDataSource,
  IntPtr dwUserData,
  Pointer<IntPtr> phQuery,
),
    int Function(
  int hDataSource,
  int dwUserData,
  Pointer<IntPtr> phQuery,
)>('PdhOpenQueryH');

int PdhOpenQuery(
  Pointer<Utf16> szDataSource,
  int dwUserData,
  Pointer<IntPtr> phQuery,
) =>
    _PdhOpenQuery(
      szDataSource,
      dwUserData,
      phQuery,
    );

late final _PdhOpenQuery = _pdh.lookupFunction<
    Int32 Function(
  Pointer<Utf16> szDataSource,
  IntPtr dwUserData,
  Pointer<IntPtr> phQuery,
),
    int Function(
  Pointer<Utf16> szDataSource,
  int dwUserData,
  Pointer<IntPtr> phQuery,
)>('PdhOpenQueryW');

int PdhParseCounterPath(
  Pointer<Utf16> szFullPathBuffer,
  Pointer<PDH_COUNTER_PATH_ELEMENTS_> pCounterPathElements,
  Pointer<Uint32> pdwBufferSize,
  int dwFlags,
) =>
    _PdhParseCounterPath(
      szFullPathBuffer,
      pCounterPathElements,
      pdwBufferSize,
      dwFlags,
    );

late final _PdhParseCounterPath = _pdh.lookupFunction<
    Int32 Function(
  Pointer<Utf16> szFullPathBuffer,
  Pointer<PDH_COUNTER_PATH_ELEMENTS_> pCounterPathElements,
  Pointer<Uint32> pdwBufferSize,
  Uint32 dwFlags,
),
    int Function(
  Pointer<Utf16> szFullPathBuffer,
  Pointer<PDH_COUNTER_PATH_ELEMENTS_> pCounterPathElements,
  Pointer<Uint32> pdwBufferSize,
  int dwFlags,
)>('PdhParseCounterPathW');

int PdhParseInstanceName(
  Pointer<Utf16> szInstanceString,
  Pointer<Utf16> szInstanceName,
  Pointer<Uint32> pcchInstanceNameLength,
  Pointer<Utf16> szParentName,
  Pointer<Uint32> pcchParentNameLength,
  Pointer<Uint32> lpIndex,
) =>
    _PdhParseInstanceName(
      szInstanceString,
      szInstanceName,
      pcchInstanceNameLength,
      szParentName,
      pcchParentNameLength,
      lpIndex,
    );

late final _PdhParseInstanceName = _pdh.lookupFunction<
    Int32 Function(
  Pointer<Utf16> szInstanceString,
  Pointer<Utf16> szInstanceName,
  Pointer<Uint32> pcchInstanceNameLength,
  Pointer<Utf16> szParentName,
  Pointer<Uint32> pcchParentNameLength,
  Pointer<Uint32> lpIndex,
),
    int Function(
  Pointer<Utf16> szInstanceString,
  Pointer<Utf16> szInstanceName,
  Pointer<Uint32> pcchInstanceNameLength,
  Pointer<Utf16> szParentName,
  Pointer<Uint32> pcchParentNameLength,
  Pointer<Uint32> lpIndex,
)>('PdhParseInstanceNameW');

int PdhReadRawLogRecord(
  int hLog,
  FILETIME ftRecord,
  Pointer<PDH_RAW_LOG_RECORD> pRawLogRecord,
  Pointer<Uint32> pdwBufferLength,
) =>
    _PdhReadRawLogRecord(
      hLog,
      ftRecord,
      pRawLogRecord,
      pdwBufferLength,
    );

late final _PdhReadRawLogRecord = _pdh.lookupFunction<
    Int32 Function(
  IntPtr hLog,
  FILETIME ftRecord,
  Pointer<PDH_RAW_LOG_RECORD> pRawLogRecord,
  Pointer<Uint32> pdwBufferLength,
),
    int Function(
  int hLog,
  FILETIME ftRecord,
  Pointer<PDH_RAW_LOG_RECORD> pRawLogRecord,
  Pointer<Uint32> pdwBufferLength,
)>('PdhReadRawLogRecord');

int PdhRemoveCounter(
  int hCounter,
) =>
    _PdhRemoveCounter(
      hCounter,
    );

late final _PdhRemoveCounter = _pdh.lookupFunction<
    Int32 Function(
  IntPtr hCounter,
),
    int Function(
  int hCounter,
)>('PdhRemoveCounter');

int PdhSelectDataSource(
  int hWndOwner,
  int dwFlags,
  Pointer<Utf16> szDataSource,
  Pointer<Uint32> pcchBufferLength,
) =>
    _PdhSelectDataSource(
      hWndOwner,
      dwFlags,
      szDataSource,
      pcchBufferLength,
    );

late final _PdhSelectDataSource = _pdh.lookupFunction<
    Int32 Function(
  IntPtr hWndOwner,
  Uint32 dwFlags,
  Pointer<Utf16> szDataSource,
  Pointer<Uint32> pcchBufferLength,
),
    int Function(
  int hWndOwner,
  int dwFlags,
  Pointer<Utf16> szDataSource,
  Pointer<Uint32> pcchBufferLength,
)>('PdhSelectDataSourceW');

int PdhSetCounterScaleFactor(
  int hCounter,
  int lFactor,
) =>
    _PdhSetCounterScaleFactor(
      hCounter,
      lFactor,
    );

late final _PdhSetCounterScaleFactor = _pdh.lookupFunction<
    Int32 Function(
  IntPtr hCounter,
  Int32 lFactor,
),
    int Function(
  int hCounter,
  int lFactor,
)>('PdhSetCounterScaleFactor');

int PdhSetDefaultRealTimeDataSource(
  int dwDataSourceId,
) =>
    _PdhSetDefaultRealTimeDataSource(
      dwDataSourceId,
    );

late final _PdhSetDefaultRealTimeDataSource = _pdh.lookupFunction<
    Int32 Function(
  Uint32 dwDataSourceId,
),
    int Function(
  int dwDataSourceId,
)>('PdhSetDefaultRealTimeDataSource');

int PdhSetLogSetRunID(
  int hLog,
  int RunId,
) =>
    _PdhSetLogSetRunID(
      hLog,
      RunId,
    );

late final _PdhSetLogSetRunID = _pdh.lookupFunction<
    Int32 Function(
  IntPtr hLog,
  Int32 RunId,
),
    int Function(
  int hLog,
  int RunId,
)>('PdhSetLogSetRunID');

int PdhSetQueryTimeRange(
  int hQuery,
  Pointer<PDH_TIME_INFO> pInfo,
) =>
    _PdhSetQueryTimeRange(
      hQuery,
      pInfo,
    );

late final _PdhSetQueryTimeRange = _pdh.lookupFunction<
    Int32 Function(
  IntPtr hQuery,
  Pointer<PDH_TIME_INFO> pInfo,
),
    int Function(
  int hQuery,
  Pointer<PDH_TIME_INFO> pInfo,
)>('PdhSetQueryTimeRange');

int PdhUpdateLogFileCatalog(
  int hLog,
) =>
    _PdhUpdateLogFileCatalog(
      hLog,
    );

late final _PdhUpdateLogFileCatalog = _pdh.lookupFunction<
    Int32 Function(
  IntPtr hLog,
),
    int Function(
  int hLog,
)>('PdhUpdateLogFileCatalog');

int PdhUpdateLog(
  int hLog,
  Pointer<Utf16> szUserString,
) =>
    _PdhUpdateLog(
      hLog,
      szUserString,
    );

late final _PdhUpdateLog = _pdh.lookupFunction<
    Int32 Function(
  IntPtr hLog,
  Pointer<Utf16> szUserString,
),
    int Function(
  int hLog,
  Pointer<Utf16> szUserString,
)>('PdhUpdateLogW');

int PdhValidatePathEx(
  int hDataSource,
  Pointer<Utf16> szFullPathBuffer,
) =>
    _PdhValidatePathEx(
      hDataSource,
      szFullPathBuffer,
    );

late final _PdhValidatePathEx = _pdh.lookupFunction<
    Int32 Function(
  IntPtr hDataSource,
  Pointer<Utf16> szFullPathBuffer,
),
    int Function(
  int hDataSource,
  Pointer<Utf16> szFullPathBuffer,
)>('PdhValidatePathExW');

int PdhValidatePath(
  Pointer<Utf16> szFullPathBuffer,
) =>
    _PdhValidatePath(
      szFullPathBuffer,
    );

late final _PdhValidatePath = _pdh.lookupFunction<
    Int32 Function(
  Pointer<Utf16> szFullPathBuffer,
),
    int Function(
  Pointer<Utf16> szFullPathBuffer,
)>('PdhValidatePathW');

int PdhVerifySQLDB(
  Pointer<Utf16> szDataSource,
) =>
    _PdhVerifySQLDB(
      szDataSource,
    );

late final _PdhVerifySQLDB = _pdh.lookupFunction<
    Int32 Function(
  Pointer<Utf16> szDataSource,
),
    int Function(
  Pointer<Utf16> szDataSource,
)>('PdhVerifySQLDBW');
