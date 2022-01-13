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
import '../../system/errorreporting/structs.g.dart';
import '../../system/diagnostics/debug/structs.g.dart'; // -----------------------------------------------------------------------

// wer.dll
// -----------------------------------------------------------------------
final _wer = DynamicLibrary.open('wer.dll');

int WerAddExcludedApplication(
  Pointer<Utf16> pwzExeName,
  int bAllUsers,
) =>
    _WerAddExcludedApplication(
      pwzExeName,
      bAllUsers,
    );

late final _WerAddExcludedApplication = _wer.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwzExeName,
  Int32 bAllUsers,
),
    int Function(
  Pointer<Utf16> pwzExeName,
  int bAllUsers,
)>('WerAddExcludedApplication');

void WerFreeString(
  Pointer<Utf16> pwszStr,
) =>
    _WerFreeString(
      pwszStr,
    );

late final _WerFreeString = _wer.lookupFunction<
    Void Function(
  Pointer<Utf16> pwszStr,
),
    void Function(
  Pointer<Utf16> pwszStr,
)>('WerFreeString');

int WerRemoveExcludedApplication(
  Pointer<Utf16> pwzExeName,
  int bAllUsers,
) =>
    _WerRemoveExcludedApplication(
      pwzExeName,
      bAllUsers,
    );

late final _WerRemoveExcludedApplication = _wer.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwzExeName,
  Int32 bAllUsers,
),
    int Function(
  Pointer<Utf16> pwzExeName,
  int bAllUsers,
)>('WerRemoveExcludedApplication');

int WerReportAddDump(
  int hReportHandle,
  int hProcess,
  int hThread,
  int dumpType,
  Pointer<WER_EXCEPTION_INFORMATION> pExceptionParam,
  Pointer<WER_DUMP_CUSTOM_OPTIONS> pDumpCustomOptions,
  int dwFlags,
) =>
    _WerReportAddDump(
      hReportHandle,
      hProcess,
      hThread,
      dumpType,
      pExceptionParam,
      pDumpCustomOptions,
      dwFlags,
    );

late final _WerReportAddDump = _wer.lookupFunction<
    Int32 Function(
  IntPtr hReportHandle,
  IntPtr hProcess,
  IntPtr hThread,
  Int32 dumpType,
  Pointer<WER_EXCEPTION_INFORMATION> pExceptionParam,
  Pointer<WER_DUMP_CUSTOM_OPTIONS> pDumpCustomOptions,
  Uint32 dwFlags,
),
    int Function(
  int hReportHandle,
  int hProcess,
  int hThread,
  int dumpType,
  Pointer<WER_EXCEPTION_INFORMATION> pExceptionParam,
  Pointer<WER_DUMP_CUSTOM_OPTIONS> pDumpCustomOptions,
  int dwFlags,
)>('WerReportAddDump');

int WerReportAddFile(
  int hReportHandle,
  Pointer<Utf16> pwzPath,
  int repFileType,
  int dwFileFlags,
) =>
    _WerReportAddFile(
      hReportHandle,
      pwzPath,
      repFileType,
      dwFileFlags,
    );

late final _WerReportAddFile = _wer.lookupFunction<
    Int32 Function(
  IntPtr hReportHandle,
  Pointer<Utf16> pwzPath,
  Int32 repFileType,
  Uint32 dwFileFlags,
),
    int Function(
  int hReportHandle,
  Pointer<Utf16> pwzPath,
  int repFileType,
  int dwFileFlags,
)>('WerReportAddFile');

int WerReportCloseHandle(
  int hReportHandle,
) =>
    _WerReportCloseHandle(
      hReportHandle,
    );

late final _WerReportCloseHandle = _wer.lookupFunction<
    Int32 Function(
  IntPtr hReportHandle,
),
    int Function(
  int hReportHandle,
)>('WerReportCloseHandle');

int WerReportCreate(
  Pointer<Utf16> pwzEventType,
  int repType,
  Pointer<WER_REPORT_INFORMATION> pReportInformation,
  Pointer<IntPtr> phReportHandle,
) =>
    _WerReportCreate(
      pwzEventType,
      repType,
      pReportInformation,
      phReportHandle,
    );

late final _WerReportCreate = _wer.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwzEventType,
  Int32 repType,
  Pointer<WER_REPORT_INFORMATION> pReportInformation,
  Pointer<IntPtr> phReportHandle,
),
    int Function(
  Pointer<Utf16> pwzEventType,
  int repType,
  Pointer<WER_REPORT_INFORMATION> pReportInformation,
  Pointer<IntPtr> phReportHandle,
)>('WerReportCreate');

int WerReportSetParameter(
  int hReportHandle,
  int dwparamID,
  Pointer<Utf16> pwzName,
  Pointer<Utf16> pwzValue,
) =>
    _WerReportSetParameter(
      hReportHandle,
      dwparamID,
      pwzName,
      pwzValue,
    );

late final _WerReportSetParameter = _wer.lookupFunction<
    Int32 Function(
  IntPtr hReportHandle,
  Uint32 dwparamID,
  Pointer<Utf16> pwzName,
  Pointer<Utf16> pwzValue,
),
    int Function(
  int hReportHandle,
  int dwparamID,
  Pointer<Utf16> pwzName,
  Pointer<Utf16> pwzValue,
)>('WerReportSetParameter');

int WerReportSetUIOption(
  int hReportHandle,
  int repUITypeID,
  Pointer<Utf16> pwzValue,
) =>
    _WerReportSetUIOption(
      hReportHandle,
      repUITypeID,
      pwzValue,
    );

late final _WerReportSetUIOption = _wer.lookupFunction<
    Int32 Function(
  IntPtr hReportHandle,
  Int32 repUITypeID,
  Pointer<Utf16> pwzValue,
),
    int Function(
  int hReportHandle,
  int repUITypeID,
  Pointer<Utf16> pwzValue,
)>('WerReportSetUIOption');

int WerReportSubmit(
  int hReportHandle,
  int consent,
  int dwFlags,
  Pointer<Int32> pSubmitResult,
) =>
    _WerReportSubmit(
      hReportHandle,
      consent,
      dwFlags,
      pSubmitResult,
    );

late final _WerReportSubmit = _wer.lookupFunction<
    Int32 Function(
  IntPtr hReportHandle,
  Int32 consent,
  Uint32 dwFlags,
  Pointer<Int32> pSubmitResult,
),
    int Function(
  int hReportHandle,
  int consent,
  int dwFlags,
  Pointer<Int32> pSubmitResult,
)>('WerReportSubmit');

void WerStoreClose(
  int hReportStore,
) =>
    _WerStoreClose(
      hReportStore,
    );

late final _WerStoreClose = _wer.lookupFunction<
    Void Function(
  IntPtr hReportStore,
),
    void Function(
  int hReportStore,
)>('WerStoreClose');

int WerStoreGetFirstReportKey(
  int hReportStore,
  Pointer<Pointer<Utf16>> ppszReportKey,
) =>
    _WerStoreGetFirstReportKey(
      hReportStore,
      ppszReportKey,
    );

late final _WerStoreGetFirstReportKey = _wer.lookupFunction<
    Int32 Function(
  IntPtr hReportStore,
  Pointer<Pointer<Utf16>> ppszReportKey,
),
    int Function(
  int hReportStore,
  Pointer<Pointer<Utf16>> ppszReportKey,
)>('WerStoreGetFirstReportKey');

int WerStoreGetNextReportKey(
  int hReportStore,
  Pointer<Pointer<Utf16>> ppszReportKey,
) =>
    _WerStoreGetNextReportKey(
      hReportStore,
      ppszReportKey,
    );

late final _WerStoreGetNextReportKey = _wer.lookupFunction<
    Int32 Function(
  IntPtr hReportStore,
  Pointer<Pointer<Utf16>> ppszReportKey,
),
    int Function(
  int hReportStore,
  Pointer<Pointer<Utf16>> ppszReportKey,
)>('WerStoreGetNextReportKey');

int WerStoreGetReportCount(
  int hReportStore,
  Pointer<Uint32> pdwReportCount,
) =>
    _WerStoreGetReportCount(
      hReportStore,
      pdwReportCount,
    );

late final _WerStoreGetReportCount = _wer.lookupFunction<
    Int32 Function(
  IntPtr hReportStore,
  Pointer<Uint32> pdwReportCount,
),
    int Function(
  int hReportStore,
  Pointer<Uint32> pdwReportCount,
)>('WerStoreGetReportCount');

int WerStoreGetSizeOnDisk(
  int hReportStore,
  Pointer<Uint64> pqwSizeInBytes,
) =>
    _WerStoreGetSizeOnDisk(
      hReportStore,
      pqwSizeInBytes,
    );

late final _WerStoreGetSizeOnDisk = _wer.lookupFunction<
    Int32 Function(
  IntPtr hReportStore,
  Pointer<Uint64> pqwSizeInBytes,
),
    int Function(
  int hReportStore,
  Pointer<Uint64> pqwSizeInBytes,
)>('WerStoreGetSizeOnDisk');

int WerStoreOpen(
  int repStoreType,
  Pointer<IntPtr> phReportStore,
) =>
    _WerStoreOpen(
      repStoreType,
      phReportStore,
    );

late final _WerStoreOpen = _wer.lookupFunction<
    Int32 Function(
  Int32 repStoreType,
  Pointer<IntPtr> phReportStore,
),
    int Function(
  int repStoreType,
  Pointer<IntPtr> phReportStore,
)>('WerStoreOpen');

int WerStorePurge() => _WerStorePurge();

late final _WerStorePurge =
    _wer.lookupFunction<Int32 Function(), int Function()>('WerStorePurge');

int WerStoreQueryReportMetadataV1(
  int hReportStore,
  Pointer<Utf16> pszReportKey,
  Pointer<WER_REPORT_METADATA_V1> pReportMetadata,
) =>
    _WerStoreQueryReportMetadataV1(
      hReportStore,
      pszReportKey,
      pReportMetadata,
    );

late final _WerStoreQueryReportMetadataV1 = _wer.lookupFunction<
    Int32 Function(
  IntPtr hReportStore,
  Pointer<Utf16> pszReportKey,
  Pointer<WER_REPORT_METADATA_V1> pReportMetadata,
),
    int Function(
  int hReportStore,
  Pointer<Utf16> pszReportKey,
  Pointer<WER_REPORT_METADATA_V1> pReportMetadata,
)>('WerStoreQueryReportMetadataV1');

int WerStoreQueryReportMetadataV2(
  int hReportStore,
  Pointer<Utf16> pszReportKey,
  Pointer<WER_REPORT_METADATA_V2> pReportMetadata,
) =>
    _WerStoreQueryReportMetadataV2(
      hReportStore,
      pszReportKey,
      pReportMetadata,
    );

late final _WerStoreQueryReportMetadataV2 = _wer.lookupFunction<
    Int32 Function(
  IntPtr hReportStore,
  Pointer<Utf16> pszReportKey,
  Pointer<WER_REPORT_METADATA_V2> pReportMetadata,
),
    int Function(
  int hReportStore,
  Pointer<Utf16> pszReportKey,
  Pointer<WER_REPORT_METADATA_V2> pReportMetadata,
)>('WerStoreQueryReportMetadataV2');

int WerStoreQueryReportMetadataV3(
  int hReportStore,
  Pointer<Utf16> pszReportKey,
  Pointer<WER_REPORT_METADATA_V3> pReportMetadata,
) =>
    _WerStoreQueryReportMetadataV3(
      hReportStore,
      pszReportKey,
      pReportMetadata,
    );

late final _WerStoreQueryReportMetadataV3 = _wer.lookupFunction<
    Int32 Function(
  IntPtr hReportStore,
  Pointer<Utf16> pszReportKey,
  Pointer<WER_REPORT_METADATA_V3> pReportMetadata,
),
    int Function(
  int hReportStore,
  Pointer<Utf16> pszReportKey,
  Pointer<WER_REPORT_METADATA_V3> pReportMetadata,
)>('WerStoreQueryReportMetadataV3');

int WerStoreUploadReport(
  int hReportStore,
  Pointer<Utf16> pszReportKey,
  int dwFlags,
  Pointer<Int32> pSubmitResult,
) =>
    _WerStoreUploadReport(
      hReportStore,
      pszReportKey,
      dwFlags,
      pSubmitResult,
    );

late final _WerStoreUploadReport = _wer.lookupFunction<
    Int32 Function(
  IntPtr hReportStore,
  Pointer<Utf16> pszReportKey,
  Uint32 dwFlags,
  Pointer<Int32> pSubmitResult,
),
    int Function(
  int hReportStore,
  Pointer<Utf16> pszReportKey,
  int dwFlags,
  Pointer<Int32> pSubmitResult,
)>('WerStoreUploadReport');

// -----------------------------------------------------------------------
// kernel32.dll
// -----------------------------------------------------------------------
final _kernel32 = DynamicLibrary.open('kernel32.dll');

int WerGetFlags(
  int hProcess,
  Pointer<Uint32> pdwFlags,
) =>
    _WerGetFlags(
      hProcess,
      pdwFlags,
    );

late final _WerGetFlags = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Pointer<Uint32> pdwFlags,
),
    int Function(
  int hProcess,
  Pointer<Uint32> pdwFlags,
)>('WerGetFlags');

int WerRegisterAdditionalProcess(
  int processId,
  int captureExtraInfoForThreadId,
) =>
    _WerRegisterAdditionalProcess(
      processId,
      captureExtraInfoForThreadId,
    );

late final _WerRegisterAdditionalProcess = _kernel32.lookupFunction<
    Int32 Function(
  Uint32 processId,
  Uint32 captureExtraInfoForThreadId,
),
    int Function(
  int processId,
  int captureExtraInfoForThreadId,
)>('WerRegisterAdditionalProcess');

int WerRegisterAppLocalDump(
  Pointer<Utf16> localAppDataRelativePath,
) =>
    _WerRegisterAppLocalDump(
      localAppDataRelativePath,
    );

late final _WerRegisterAppLocalDump = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> localAppDataRelativePath,
),
    int Function(
  Pointer<Utf16> localAppDataRelativePath,
)>('WerRegisterAppLocalDump');

int WerRegisterCustomMetadata(
  Pointer<Utf16> key,
  Pointer<Utf16> value,
) =>
    _WerRegisterCustomMetadata(
      key,
      value,
    );

late final _WerRegisterCustomMetadata = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> key,
  Pointer<Utf16> value,
),
    int Function(
  Pointer<Utf16> key,
  Pointer<Utf16> value,
)>('WerRegisterCustomMetadata');

int WerRegisterExcludedMemoryBlock(
  Pointer address,
  int size,
) =>
    _WerRegisterExcludedMemoryBlock(
      address,
      size,
    );

late final _WerRegisterExcludedMemoryBlock = _kernel32.lookupFunction<
    Int32 Function(
  Pointer address,
  Uint32 size,
),
    int Function(
  Pointer address,
  int size,
)>('WerRegisterExcludedMemoryBlock');

int WerRegisterFile(
  Pointer<Utf16> pwzFile,
  int regFileType,
  int dwFlags,
) =>
    _WerRegisterFile(
      pwzFile,
      regFileType,
      dwFlags,
    );

late final _WerRegisterFile = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwzFile,
  Int32 regFileType,
  Uint32 dwFlags,
),
    int Function(
  Pointer<Utf16> pwzFile,
  int regFileType,
  int dwFlags,
)>('WerRegisterFile');

int WerRegisterMemoryBlock(
  Pointer pvAddress,
  int dwSize,
) =>
    _WerRegisterMemoryBlock(
      pvAddress,
      dwSize,
    );

late final _WerRegisterMemoryBlock = _kernel32.lookupFunction<
    Int32 Function(
  Pointer pvAddress,
  Uint32 dwSize,
),
    int Function(
  Pointer pvAddress,
  int dwSize,
)>('WerRegisterMemoryBlock');

int WerRegisterRuntimeExceptionModule(
  Pointer<Utf16> pwszOutOfProcessCallbackDll,
  Pointer pContext,
) =>
    _WerRegisterRuntimeExceptionModule(
      pwszOutOfProcessCallbackDll,
      pContext,
    );

late final _WerRegisterRuntimeExceptionModule = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwszOutOfProcessCallbackDll,
  Pointer pContext,
),
    int Function(
  Pointer<Utf16> pwszOutOfProcessCallbackDll,
  Pointer pContext,
)>('WerRegisterRuntimeExceptionModule');

int WerSetFlags(
  int dwFlags,
) =>
    _WerSetFlags(
      dwFlags,
    );

late final _WerSetFlags = _kernel32.lookupFunction<
    Int32 Function(
  Uint32 dwFlags,
),
    int Function(
  int dwFlags,
)>('WerSetFlags');

int WerUnregisterAdditionalProcess(
  int processId,
) =>
    _WerUnregisterAdditionalProcess(
      processId,
    );

late final _WerUnregisterAdditionalProcess = _kernel32.lookupFunction<
    Int32 Function(
  Uint32 processId,
),
    int Function(
  int processId,
)>('WerUnregisterAdditionalProcess');

int WerUnregisterAppLocalDump() => _WerUnregisterAppLocalDump();

late final _WerUnregisterAppLocalDump =
    _kernel32.lookupFunction<Int32 Function(), int Function()>(
        'WerUnregisterAppLocalDump');

int WerUnregisterCustomMetadata(
  Pointer<Utf16> key,
) =>
    _WerUnregisterCustomMetadata(
      key,
    );

late final _WerUnregisterCustomMetadata = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> key,
),
    int Function(
  Pointer<Utf16> key,
)>('WerUnregisterCustomMetadata');

int WerUnregisterExcludedMemoryBlock(
  Pointer address,
) =>
    _WerUnregisterExcludedMemoryBlock(
      address,
    );

late final _WerUnregisterExcludedMemoryBlock = _kernel32.lookupFunction<
    Int32 Function(
  Pointer address,
),
    int Function(
  Pointer address,
)>('WerUnregisterExcludedMemoryBlock');

int WerUnregisterFile(
  Pointer<Utf16> pwzFilePath,
) =>
    _WerUnregisterFile(
      pwzFilePath,
    );

late final _WerUnregisterFile = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwzFilePath,
),
    int Function(
  Pointer<Utf16> pwzFilePath,
)>('WerUnregisterFile');

int WerUnregisterMemoryBlock(
  Pointer pvAddress,
) =>
    _WerUnregisterMemoryBlock(
      pvAddress,
    );

late final _WerUnregisterMemoryBlock = _kernel32.lookupFunction<
    Int32 Function(
  Pointer pvAddress,
),
    int Function(
  Pointer pvAddress,
)>('WerUnregisterMemoryBlock');

int WerUnregisterRuntimeExceptionModule(
  Pointer<Utf16> pwszOutOfProcessCallbackDll,
  Pointer pContext,
) =>
    _WerUnregisterRuntimeExceptionModule(
      pwszOutOfProcessCallbackDll,
      pContext,
    );

late final _WerUnregisterRuntimeExceptionModule = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwszOutOfProcessCallbackDll,
  Pointer pContext,
),
    int Function(
  Pointer<Utf16> pwszOutOfProcessCallbackDll,
  Pointer pContext,
)>('WerUnregisterRuntimeExceptionModule');

// -----------------------------------------------------------------------
// faultrep.dll
// -----------------------------------------------------------------------
final _faultrep = DynamicLibrary.open('faultrep.dll');

int AddERExcludedApplication(
  Pointer<Utf16> wszApplication,
) =>
    _AddERExcludedApplication(
      wszApplication,
    );

late final _AddERExcludedApplication = _faultrep.lookupFunction<
    Int32 Function(
  Pointer<Utf16> wszApplication,
),
    int Function(
  Pointer<Utf16> wszApplication,
)>('AddERExcludedApplicationW');

int ReportFault(
  Pointer<EXCEPTION_POINTERS> pep,
  int dwOpt,
) =>
    _ReportFault(
      pep,
      dwOpt,
    );

late final _ReportFault = _faultrep.lookupFunction<
    Int32 Function(
  Pointer<EXCEPTION_POINTERS> pep,
  Uint32 dwOpt,
),
    int Function(
  Pointer<EXCEPTION_POINTERS> pep,
  int dwOpt,
)>('ReportFault');

int WerReportHang(
  int hwndHungApp,
  Pointer<Utf16> pwzHungApplicationName,
) =>
    _WerReportHang(
      hwndHungApp,
      pwzHungApplicationName,
    );

late final _WerReportHang = _faultrep.lookupFunction<
    Int32 Function(
  IntPtr hwndHungApp,
  Pointer<Utf16> pwzHungApplicationName,
),
    int Function(
  int hwndHungApp,
  Pointer<Utf16> pwzHungApplicationName,
)>('WerReportHang');
