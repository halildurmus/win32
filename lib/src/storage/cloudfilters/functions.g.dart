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
import '../../storage/cloudfilters/structs.g.dart';
import '../../specialTypes.dart';
import '../../system/correlationvector/structs.g.dart';
import '../../storage/filesystem/structs.g.dart'; // -----------------------------------------------------------------------

// cldapi.dll
// -----------------------------------------------------------------------
final _cldapi = DynamicLibrary.open('cldapi.dll');

void CfCloseHandle(
  int FileHandle,
) =>
    _CfCloseHandle(
      FileHandle,
    );

late final _CfCloseHandle = _cldapi.lookupFunction<
    Void Function(
  IntPtr FileHandle,
),
    void Function(
  int FileHandle,
)>('CfCloseHandle');

int CfConnectSyncRoot(
  Pointer<Utf16> SyncRootPath,
  Pointer<CF_CALLBACK_REGISTRATION> CallbackTable,
  Pointer CallbackContext,
  int ConnectFlags,
  Pointer<IntPtr> ConnectionKey,
) =>
    _CfConnectSyncRoot(
      SyncRootPath,
      CallbackTable,
      CallbackContext,
      ConnectFlags,
      ConnectionKey,
    );

late final _CfConnectSyncRoot = _cldapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> SyncRootPath,
  Pointer<CF_CALLBACK_REGISTRATION> CallbackTable,
  Pointer CallbackContext,
  Uint32 ConnectFlags,
  Pointer<IntPtr> ConnectionKey,
),
    int Function(
  Pointer<Utf16> SyncRootPath,
  Pointer<CF_CALLBACK_REGISTRATION> CallbackTable,
  Pointer CallbackContext,
  int ConnectFlags,
  Pointer<IntPtr> ConnectionKey,
)>('CfConnectSyncRoot');

int CfConvertToPlaceholder(
  int FileHandle,
  Pointer FileIdentity,
  int FileIdentityLength,
  int ConvertFlags,
  Pointer<Int64> ConvertUsn,
  Pointer<OVERLAPPED> Overlapped,
) =>
    _CfConvertToPlaceholder(
      FileHandle,
      FileIdentity,
      FileIdentityLength,
      ConvertFlags,
      ConvertUsn,
      Overlapped,
    );

late final _CfConvertToPlaceholder = _cldapi.lookupFunction<
    Int32 Function(
  IntPtr FileHandle,
  Pointer FileIdentity,
  Uint32 FileIdentityLength,
  Uint32 ConvertFlags,
  Pointer<Int64> ConvertUsn,
  Pointer<OVERLAPPED> Overlapped,
),
    int Function(
  int FileHandle,
  Pointer FileIdentity,
  int FileIdentityLength,
  int ConvertFlags,
  Pointer<Int64> ConvertUsn,
  Pointer<OVERLAPPED> Overlapped,
)>('CfConvertToPlaceholder');

int CfCreatePlaceholders(
  Pointer<Utf16> BaseDirectoryPath,
  Pointer<CF_PLACEHOLDER_CREATE_INFO> PlaceholderArray,
  int PlaceholderCount,
  int CreateFlags,
  Pointer<Uint32> EntriesProcessed,
) =>
    _CfCreatePlaceholders(
      BaseDirectoryPath,
      PlaceholderArray,
      PlaceholderCount,
      CreateFlags,
      EntriesProcessed,
    );

late final _CfCreatePlaceholders = _cldapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> BaseDirectoryPath,
  Pointer<CF_PLACEHOLDER_CREATE_INFO> PlaceholderArray,
  Uint32 PlaceholderCount,
  Uint32 CreateFlags,
  Pointer<Uint32> EntriesProcessed,
),
    int Function(
  Pointer<Utf16> BaseDirectoryPath,
  Pointer<CF_PLACEHOLDER_CREATE_INFO> PlaceholderArray,
  int PlaceholderCount,
  int CreateFlags,
  Pointer<Uint32> EntriesProcessed,
)>('CfCreatePlaceholders');

int CfDehydratePlaceholder(
  int FileHandle,
  int StartingOffset,
  int Length,
  int DehydrateFlags,
  Pointer<OVERLAPPED> Overlapped,
) =>
    _CfDehydratePlaceholder(
      FileHandle,
      StartingOffset,
      Length,
      DehydrateFlags,
      Overlapped,
    );

late final _CfDehydratePlaceholder = _cldapi.lookupFunction<
    Int32 Function(
  IntPtr FileHandle,
  Int64 StartingOffset,
  Int64 Length,
  Uint32 DehydrateFlags,
  Pointer<OVERLAPPED> Overlapped,
),
    int Function(
  int FileHandle,
  int StartingOffset,
  int Length,
  int DehydrateFlags,
  Pointer<OVERLAPPED> Overlapped,
)>('CfDehydratePlaceholder');

int CfDisconnectSyncRoot(
  int ConnectionKey,
) =>
    _CfDisconnectSyncRoot(
      ConnectionKey,
    );

late final _CfDisconnectSyncRoot = _cldapi.lookupFunction<
    Int32 Function(
  IntPtr ConnectionKey,
),
    int Function(
  int ConnectionKey,
)>('CfDisconnectSyncRoot');

int CfExecute(
  Pointer<CF_OPERATION_INFO> OpInfo,
  Pointer<CF_OPERATION_PARAMETERS> OpParams,
) =>
    _CfExecute(
      OpInfo,
      OpParams,
    );

late final _CfExecute = _cldapi.lookupFunction<
    Int32 Function(
  Pointer<CF_OPERATION_INFO> OpInfo,
  Pointer<CF_OPERATION_PARAMETERS> OpParams,
),
    int Function(
  Pointer<CF_OPERATION_INFO> OpInfo,
  Pointer<CF_OPERATION_PARAMETERS> OpParams,
)>('CfExecute');

int CfGetCorrelationVector(
  int FileHandle,
  Pointer<CORRELATION_VECTOR> CorrelationVector,
) =>
    _CfGetCorrelationVector(
      FileHandle,
      CorrelationVector,
    );

late final _CfGetCorrelationVector = _cldapi.lookupFunction<
    Int32 Function(
  IntPtr FileHandle,
  Pointer<CORRELATION_VECTOR> CorrelationVector,
),
    int Function(
  int FileHandle,
  Pointer<CORRELATION_VECTOR> CorrelationVector,
)>('CfGetCorrelationVector');

int CfGetPlaceholderInfo(
  int FileHandle,
  int InfoClass,
  Pointer InfoBuffer,
  int InfoBufferLength,
  Pointer<Uint32> ReturnedLength,
) =>
    _CfGetPlaceholderInfo(
      FileHandle,
      InfoClass,
      InfoBuffer,
      InfoBufferLength,
      ReturnedLength,
    );

late final _CfGetPlaceholderInfo = _cldapi.lookupFunction<
    Int32 Function(
  IntPtr FileHandle,
  Int32 InfoClass,
  Pointer InfoBuffer,
  Uint32 InfoBufferLength,
  Pointer<Uint32> ReturnedLength,
),
    int Function(
  int FileHandle,
  int InfoClass,
  Pointer InfoBuffer,
  int InfoBufferLength,
  Pointer<Uint32> ReturnedLength,
)>('CfGetPlaceholderInfo');

int CfGetPlaceholderRangeInfo(
  int FileHandle,
  int InfoClass,
  int StartingOffset,
  int Length,
  Pointer InfoBuffer,
  int InfoBufferLength,
  Pointer<Uint32> ReturnedLength,
) =>
    _CfGetPlaceholderRangeInfo(
      FileHandle,
      InfoClass,
      StartingOffset,
      Length,
      InfoBuffer,
      InfoBufferLength,
      ReturnedLength,
    );

late final _CfGetPlaceholderRangeInfo = _cldapi.lookupFunction<
    Int32 Function(
  IntPtr FileHandle,
  Int32 InfoClass,
  Int64 StartingOffset,
  Int64 Length,
  Pointer InfoBuffer,
  Uint32 InfoBufferLength,
  Pointer<Uint32> ReturnedLength,
),
    int Function(
  int FileHandle,
  int InfoClass,
  int StartingOffset,
  int Length,
  Pointer InfoBuffer,
  int InfoBufferLength,
  Pointer<Uint32> ReturnedLength,
)>('CfGetPlaceholderRangeInfo');

int CfGetPlaceholderStateFromAttributeTag(
  int FileAttributes,
  int ReparseTag,
) =>
    _CfGetPlaceholderStateFromAttributeTag(
      FileAttributes,
      ReparseTag,
    );

late final _CfGetPlaceholderStateFromAttributeTag = _cldapi.lookupFunction<
    Uint32 Function(
  Uint32 FileAttributes,
  Uint32 ReparseTag,
),
    int Function(
  int FileAttributes,
  int ReparseTag,
)>('CfGetPlaceholderStateFromAttributeTag');

int CfGetPlaceholderStateFromFileInfo(
  Pointer InfoBuffer,
  int InfoClass,
) =>
    _CfGetPlaceholderStateFromFileInfo(
      InfoBuffer,
      InfoClass,
    );

late final _CfGetPlaceholderStateFromFileInfo = _cldapi.lookupFunction<
    Uint32 Function(
  Pointer InfoBuffer,
  Int32 InfoClass,
),
    int Function(
  Pointer InfoBuffer,
  int InfoClass,
)>('CfGetPlaceholderStateFromFileInfo');

int CfGetPlaceholderStateFromFindData(
  Pointer<WIN32_FIND_DATA> FindData,
) =>
    _CfGetPlaceholderStateFromFindData(
      FindData,
    );

late final _CfGetPlaceholderStateFromFindData = _cldapi.lookupFunction<
    Uint32 Function(
  Pointer<WIN32_FIND_DATA> FindData,
),
    int Function(
  Pointer<WIN32_FIND_DATA> FindData,
)>('CfGetPlaceholderStateFromFindData');

int CfGetPlatformInfo(
  Pointer<CF_PLATFORM_INFO> PlatformVersion,
) =>
    _CfGetPlatformInfo(
      PlatformVersion,
    );

late final _CfGetPlatformInfo = _cldapi.lookupFunction<
    Int32 Function(
  Pointer<CF_PLATFORM_INFO> PlatformVersion,
),
    int Function(
  Pointer<CF_PLATFORM_INFO> PlatformVersion,
)>('CfGetPlatformInfo');

int CfGetSyncRootInfoByHandle(
  int FileHandle,
  int InfoClass,
  Pointer InfoBuffer,
  int InfoBufferLength,
  Pointer<Uint32> ReturnedLength,
) =>
    _CfGetSyncRootInfoByHandle(
      FileHandle,
      InfoClass,
      InfoBuffer,
      InfoBufferLength,
      ReturnedLength,
    );

late final _CfGetSyncRootInfoByHandle = _cldapi.lookupFunction<
    Int32 Function(
  IntPtr FileHandle,
  Int32 InfoClass,
  Pointer InfoBuffer,
  Uint32 InfoBufferLength,
  Pointer<Uint32> ReturnedLength,
),
    int Function(
  int FileHandle,
  int InfoClass,
  Pointer InfoBuffer,
  int InfoBufferLength,
  Pointer<Uint32> ReturnedLength,
)>('CfGetSyncRootInfoByHandle');

int CfGetSyncRootInfoByPath(
  Pointer<Utf16> FilePath,
  int InfoClass,
  Pointer InfoBuffer,
  int InfoBufferLength,
  Pointer<Uint32> ReturnedLength,
) =>
    _CfGetSyncRootInfoByPath(
      FilePath,
      InfoClass,
      InfoBuffer,
      InfoBufferLength,
      ReturnedLength,
    );

late final _CfGetSyncRootInfoByPath = _cldapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> FilePath,
  Int32 InfoClass,
  Pointer InfoBuffer,
  Uint32 InfoBufferLength,
  Pointer<Uint32> ReturnedLength,
),
    int Function(
  Pointer<Utf16> FilePath,
  int InfoClass,
  Pointer InfoBuffer,
  int InfoBufferLength,
  Pointer<Uint32> ReturnedLength,
)>('CfGetSyncRootInfoByPath');

int CfGetTransferKey(
  int FileHandle,
  Pointer<Int64> TransferKey,
) =>
    _CfGetTransferKey(
      FileHandle,
      TransferKey,
    );

late final _CfGetTransferKey = _cldapi.lookupFunction<
    Int32 Function(
  IntPtr FileHandle,
  Pointer<Int64> TransferKey,
),
    int Function(
  int FileHandle,
  Pointer<Int64> TransferKey,
)>('CfGetTransferKey');

int CfGetWin32HandleFromProtectedHandle(
  int ProtectedHandle,
) =>
    _CfGetWin32HandleFromProtectedHandle(
      ProtectedHandle,
    );

late final _CfGetWin32HandleFromProtectedHandle = _cldapi.lookupFunction<
    IntPtr Function(
  IntPtr ProtectedHandle,
),
    int Function(
  int ProtectedHandle,
)>('CfGetWin32HandleFromProtectedHandle');

int CfHydratePlaceholder(
  int FileHandle,
  int StartingOffset,
  int Length,
  int HydrateFlags,
  Pointer<OVERLAPPED> Overlapped,
) =>
    _CfHydratePlaceholder(
      FileHandle,
      StartingOffset,
      Length,
      HydrateFlags,
      Overlapped,
    );

late final _CfHydratePlaceholder = _cldapi.lookupFunction<
    Int32 Function(
  IntPtr FileHandle,
  Int64 StartingOffset,
  Int64 Length,
  Uint32 HydrateFlags,
  Pointer<OVERLAPPED> Overlapped,
),
    int Function(
  int FileHandle,
  int StartingOffset,
  int Length,
  int HydrateFlags,
  Pointer<OVERLAPPED> Overlapped,
)>('CfHydratePlaceholder');

int CfOpenFileWithOplock(
  Pointer<Utf16> FilePath,
  int Flags,
  Pointer<IntPtr> ProtectedHandle,
) =>
    _CfOpenFileWithOplock(
      FilePath,
      Flags,
      ProtectedHandle,
    );

late final _CfOpenFileWithOplock = _cldapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> FilePath,
  Uint32 Flags,
  Pointer<IntPtr> ProtectedHandle,
),
    int Function(
  Pointer<Utf16> FilePath,
  int Flags,
  Pointer<IntPtr> ProtectedHandle,
)>('CfOpenFileWithOplock');

int CfQuerySyncProviderStatus(
  int ConnectionKey,
  Pointer<Uint32> ProviderStatus,
) =>
    _CfQuerySyncProviderStatus(
      ConnectionKey,
      ProviderStatus,
    );

late final _CfQuerySyncProviderStatus = _cldapi.lookupFunction<
    Int32 Function(
  IntPtr ConnectionKey,
  Pointer<Uint32> ProviderStatus,
),
    int Function(
  int ConnectionKey,
  Pointer<Uint32> ProviderStatus,
)>('CfQuerySyncProviderStatus');

int CfReferenceProtectedHandle(
  int ProtectedHandle,
) =>
    _CfReferenceProtectedHandle(
      ProtectedHandle,
    );

late final _CfReferenceProtectedHandle = _cldapi.lookupFunction<
    Uint8 Function(
  IntPtr ProtectedHandle,
),
    int Function(
  int ProtectedHandle,
)>('CfReferenceProtectedHandle');

int CfRegisterSyncRoot(
  Pointer<Utf16> SyncRootPath,
  Pointer<CF_SYNC_REGISTRATION> Registration,
  Pointer<CF_SYNC_POLICIES> Policies,
  int RegisterFlags,
) =>
    _CfRegisterSyncRoot(
      SyncRootPath,
      Registration,
      Policies,
      RegisterFlags,
    );

late final _CfRegisterSyncRoot = _cldapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> SyncRootPath,
  Pointer<CF_SYNC_REGISTRATION> Registration,
  Pointer<CF_SYNC_POLICIES> Policies,
  Uint32 RegisterFlags,
),
    int Function(
  Pointer<Utf16> SyncRootPath,
  Pointer<CF_SYNC_REGISTRATION> Registration,
  Pointer<CF_SYNC_POLICIES> Policies,
  int RegisterFlags,
)>('CfRegisterSyncRoot');

void CfReleaseProtectedHandle(
  int ProtectedHandle,
) =>
    _CfReleaseProtectedHandle(
      ProtectedHandle,
    );

late final _CfReleaseProtectedHandle = _cldapi.lookupFunction<
    Void Function(
  IntPtr ProtectedHandle,
),
    void Function(
  int ProtectedHandle,
)>('CfReleaseProtectedHandle');

void CfReleaseTransferKey(
  int FileHandle,
  Pointer<Int64> TransferKey,
) =>
    _CfReleaseTransferKey(
      FileHandle,
      TransferKey,
    );

late final _CfReleaseTransferKey = _cldapi.lookupFunction<
    Void Function(
  IntPtr FileHandle,
  Pointer<Int64> TransferKey,
),
    void Function(
  int FileHandle,
  Pointer<Int64> TransferKey,
)>('CfReleaseTransferKey');

int CfReportProviderProgress(
  int ConnectionKey,
  int TransferKey,
  int ProviderProgressTotal,
  int ProviderProgressCompleted,
) =>
    _CfReportProviderProgress(
      ConnectionKey,
      TransferKey,
      ProviderProgressTotal,
      ProviderProgressCompleted,
    );

late final _CfReportProviderProgress = _cldapi.lookupFunction<
    Int32 Function(
  IntPtr ConnectionKey,
  Int64 TransferKey,
  Int64 ProviderProgressTotal,
  Int64 ProviderProgressCompleted,
),
    int Function(
  int ConnectionKey,
  int TransferKey,
  int ProviderProgressTotal,
  int ProviderProgressCompleted,
)>('CfReportProviderProgress');

int CfReportProviderProgress2(
  int ConnectionKey,
  int TransferKey,
  int RequestKey,
  int ProviderProgressTotal,
  int ProviderProgressCompleted,
  int TargetSessionId,
) =>
    _CfReportProviderProgress2(
      ConnectionKey,
      TransferKey,
      RequestKey,
      ProviderProgressTotal,
      ProviderProgressCompleted,
      TargetSessionId,
    );

late final _CfReportProviderProgress2 = _cldapi.lookupFunction<
    Int32 Function(
  IntPtr ConnectionKey,
  Int64 TransferKey,
  Int64 RequestKey,
  Int64 ProviderProgressTotal,
  Int64 ProviderProgressCompleted,
  Uint32 TargetSessionId,
),
    int Function(
  int ConnectionKey,
  int TransferKey,
  int RequestKey,
  int ProviderProgressTotal,
  int ProviderProgressCompleted,
  int TargetSessionId,
)>('CfReportProviderProgress2');

int CfReportSyncStatus(
  Pointer<Utf16> SyncRootPath,
  Pointer<CF_SYNC_STATUS> SyncStatus,
) =>
    _CfReportSyncStatus(
      SyncRootPath,
      SyncStatus,
    );

late final _CfReportSyncStatus = _cldapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> SyncRootPath,
  Pointer<CF_SYNC_STATUS> SyncStatus,
),
    int Function(
  Pointer<Utf16> SyncRootPath,
  Pointer<CF_SYNC_STATUS> SyncStatus,
)>('CfReportSyncStatus');

int CfRevertPlaceholder(
  int FileHandle,
  int RevertFlags,
  Pointer<OVERLAPPED> Overlapped,
) =>
    _CfRevertPlaceholder(
      FileHandle,
      RevertFlags,
      Overlapped,
    );

late final _CfRevertPlaceholder = _cldapi.lookupFunction<
    Int32 Function(
  IntPtr FileHandle,
  Uint32 RevertFlags,
  Pointer<OVERLAPPED> Overlapped,
),
    int Function(
  int FileHandle,
  int RevertFlags,
  Pointer<OVERLAPPED> Overlapped,
)>('CfRevertPlaceholder');

int CfSetCorrelationVector(
  int FileHandle,
  Pointer<CORRELATION_VECTOR> CorrelationVector,
) =>
    _CfSetCorrelationVector(
      FileHandle,
      CorrelationVector,
    );

late final _CfSetCorrelationVector = _cldapi.lookupFunction<
    Int32 Function(
  IntPtr FileHandle,
  Pointer<CORRELATION_VECTOR> CorrelationVector,
),
    int Function(
  int FileHandle,
  Pointer<CORRELATION_VECTOR> CorrelationVector,
)>('CfSetCorrelationVector');

int CfSetInSyncState(
  int FileHandle,
  int InSyncState,
  int InSyncFlags,
  Pointer<Int64> InSyncUsn,
) =>
    _CfSetInSyncState(
      FileHandle,
      InSyncState,
      InSyncFlags,
      InSyncUsn,
    );

late final _CfSetInSyncState = _cldapi.lookupFunction<
    Int32 Function(
  IntPtr FileHandle,
  Int32 InSyncState,
  Uint32 InSyncFlags,
  Pointer<Int64> InSyncUsn,
),
    int Function(
  int FileHandle,
  int InSyncState,
  int InSyncFlags,
  Pointer<Int64> InSyncUsn,
)>('CfSetInSyncState');

int CfSetPinState(
  int FileHandle,
  int PinState,
  int PinFlags,
  Pointer<OVERLAPPED> Overlapped,
) =>
    _CfSetPinState(
      FileHandle,
      PinState,
      PinFlags,
      Overlapped,
    );

late final _CfSetPinState = _cldapi.lookupFunction<
    Int32 Function(
  IntPtr FileHandle,
  Int32 PinState,
  Uint32 PinFlags,
  Pointer<OVERLAPPED> Overlapped,
),
    int Function(
  int FileHandle,
  int PinState,
  int PinFlags,
  Pointer<OVERLAPPED> Overlapped,
)>('CfSetPinState');

int CfUnregisterSyncRoot(
  Pointer<Utf16> SyncRootPath,
) =>
    _CfUnregisterSyncRoot(
      SyncRootPath,
    );

late final _CfUnregisterSyncRoot = _cldapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> SyncRootPath,
),
    int Function(
  Pointer<Utf16> SyncRootPath,
)>('CfUnregisterSyncRoot');

int CfUpdatePlaceholder(
  int FileHandle,
  Pointer<CF_FS_METADATA> FsMetadata,
  Pointer FileIdentity,
  int FileIdentityLength,
  Pointer<CF_FILE_RANGE> DehydrateRangeArray,
  int DehydrateRangeCount,
  int UpdateFlags,
  Pointer<Int64> UpdateUsn,
  Pointer<OVERLAPPED> Overlapped,
) =>
    _CfUpdatePlaceholder(
      FileHandle,
      FsMetadata,
      FileIdentity,
      FileIdentityLength,
      DehydrateRangeArray,
      DehydrateRangeCount,
      UpdateFlags,
      UpdateUsn,
      Overlapped,
    );

late final _CfUpdatePlaceholder = _cldapi.lookupFunction<
    Int32 Function(
  IntPtr FileHandle,
  Pointer<CF_FS_METADATA> FsMetadata,
  Pointer FileIdentity,
  Uint32 FileIdentityLength,
  Pointer<CF_FILE_RANGE> DehydrateRangeArray,
  Uint32 DehydrateRangeCount,
  Uint32 UpdateFlags,
  Pointer<Int64> UpdateUsn,
  Pointer<OVERLAPPED> Overlapped,
),
    int Function(
  int FileHandle,
  Pointer<CF_FS_METADATA> FsMetadata,
  Pointer FileIdentity,
  int FileIdentityLength,
  Pointer<CF_FILE_RANGE> DehydrateRangeArray,
  int DehydrateRangeCount,
  int UpdateFlags,
  Pointer<Int64> UpdateUsn,
  Pointer<OVERLAPPED> Overlapped,
)>('CfUpdatePlaceholder');

int CfUpdateSyncProviderStatus(
  int ConnectionKey,
  int ProviderStatus,
) =>
    _CfUpdateSyncProviderStatus(
      ConnectionKey,
      ProviderStatus,
    );

late final _CfUpdateSyncProviderStatus = _cldapi.lookupFunction<
    Int32 Function(
  IntPtr ConnectionKey,
  Uint32 ProviderStatus,
),
    int Function(
  int ConnectionKey,
  int ProviderStatus,
)>('CfUpdateSyncProviderStatus');
