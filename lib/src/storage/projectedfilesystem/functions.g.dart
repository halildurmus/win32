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
import '../../storage/projectedfilesystem/structs.g.dart';
import '../../foundation/structs.g.dart'; // -----------------------------------------------------------------------

// projectedfslib.dll
// -----------------------------------------------------------------------
final _projectedfslib = DynamicLibrary.open('projectedfslib.dll');

Pointer PrjAllocateAlignedBuffer(
  int namespaceVirtualizationContext,
  int size,
) =>
    _PrjAllocateAlignedBuffer(
      namespaceVirtualizationContext,
      size,
    );

late final _PrjAllocateAlignedBuffer = _projectedfslib.lookupFunction<
    Pointer Function(
  IntPtr namespaceVirtualizationContext,
  IntPtr size,
),
    Pointer Function(
  int namespaceVirtualizationContext,
  int size,
)>('PrjAllocateAlignedBuffer');

int PrjClearNegativePathCache(
  int namespaceVirtualizationContext,
  Pointer<Uint32> totalEntryNumber,
) =>
    _PrjClearNegativePathCache(
      namespaceVirtualizationContext,
      totalEntryNumber,
    );

late final _PrjClearNegativePathCache = _projectedfslib.lookupFunction<
    Int32 Function(
  IntPtr namespaceVirtualizationContext,
  Pointer<Uint32> totalEntryNumber,
),
    int Function(
  int namespaceVirtualizationContext,
  Pointer<Uint32> totalEntryNumber,
)>('PrjClearNegativePathCache');

int PrjCompleteCommand(
  int namespaceVirtualizationContext,
  int commandId,
  int completionResult,
  Pointer<PRJ_COMPLETE_COMMAND_EXTENDED_PARAMETERS> extendedParameters,
) =>
    _PrjCompleteCommand(
      namespaceVirtualizationContext,
      commandId,
      completionResult,
      extendedParameters,
    );

late final _PrjCompleteCommand = _projectedfslib.lookupFunction<
    Int32 Function(
  IntPtr namespaceVirtualizationContext,
  Int32 commandId,
  Int32 completionResult,
  Pointer<PRJ_COMPLETE_COMMAND_EXTENDED_PARAMETERS> extendedParameters,
),
    int Function(
  int namespaceVirtualizationContext,
  int commandId,
  int completionResult,
  Pointer<PRJ_COMPLETE_COMMAND_EXTENDED_PARAMETERS> extendedParameters,
)>('PrjCompleteCommand');

int PrjDeleteFile(
  int namespaceVirtualizationContext,
  Pointer<Utf16> destinationFileName,
  int updateFlags,
  Pointer<Uint32> failureReason,
) =>
    _PrjDeleteFile(
      namespaceVirtualizationContext,
      destinationFileName,
      updateFlags,
      failureReason,
    );

late final _PrjDeleteFile = _projectedfslib.lookupFunction<
    Int32 Function(
  IntPtr namespaceVirtualizationContext,
  Pointer<Utf16> destinationFileName,
  Uint32 updateFlags,
  Pointer<Uint32> failureReason,
),
    int Function(
  int namespaceVirtualizationContext,
  Pointer<Utf16> destinationFileName,
  int updateFlags,
  Pointer<Uint32> failureReason,
)>('PrjDeleteFile');

int PrjDoesNameContainWildCards(
  Pointer<Utf16> fileName,
) =>
    _PrjDoesNameContainWildCards(
      fileName,
    );

late final _PrjDoesNameContainWildCards = _projectedfslib.lookupFunction<
    Uint8 Function(
  Pointer<Utf16> fileName,
),
    int Function(
  Pointer<Utf16> fileName,
)>('PrjDoesNameContainWildCards');

int PrjFileNameCompare(
  Pointer<Utf16> fileName1,
  Pointer<Utf16> fileName2,
) =>
    _PrjFileNameCompare(
      fileName1,
      fileName2,
    );

late final _PrjFileNameCompare = _projectedfslib.lookupFunction<
    Int32 Function(
  Pointer<Utf16> fileName1,
  Pointer<Utf16> fileName2,
),
    int Function(
  Pointer<Utf16> fileName1,
  Pointer<Utf16> fileName2,
)>('PrjFileNameCompare');

int PrjFileNameMatch(
  Pointer<Utf16> fileNameToCheck,
  Pointer<Utf16> pattern,
) =>
    _PrjFileNameMatch(
      fileNameToCheck,
      pattern,
    );

late final _PrjFileNameMatch = _projectedfslib.lookupFunction<
    Uint8 Function(
  Pointer<Utf16> fileNameToCheck,
  Pointer<Utf16> pattern,
),
    int Function(
  Pointer<Utf16> fileNameToCheck,
  Pointer<Utf16> pattern,
)>('PrjFileNameMatch');

int PrjFillDirEntryBuffer(
  Pointer<Utf16> fileName,
  Pointer<PRJ_FILE_BASIC_INFO> fileBasicInfo,
  int dirEntryBufferHandle,
) =>
    _PrjFillDirEntryBuffer(
      fileName,
      fileBasicInfo,
      dirEntryBufferHandle,
    );

late final _PrjFillDirEntryBuffer = _projectedfslib.lookupFunction<
    Int32 Function(
  Pointer<Utf16> fileName,
  Pointer<PRJ_FILE_BASIC_INFO> fileBasicInfo,
  IntPtr dirEntryBufferHandle,
),
    int Function(
  Pointer<Utf16> fileName,
  Pointer<PRJ_FILE_BASIC_INFO> fileBasicInfo,
  int dirEntryBufferHandle,
)>('PrjFillDirEntryBuffer');

int PrjFillDirEntryBuffer2(
  int dirEntryBufferHandle,
  Pointer<Utf16> fileName,
  Pointer<PRJ_FILE_BASIC_INFO> fileBasicInfo,
  Pointer<PRJ_EXTENDED_INFO> extendedInfo,
) =>
    _PrjFillDirEntryBuffer2(
      dirEntryBufferHandle,
      fileName,
      fileBasicInfo,
      extendedInfo,
    );

late final _PrjFillDirEntryBuffer2 = _projectedfslib.lookupFunction<
    Int32 Function(
  IntPtr dirEntryBufferHandle,
  Pointer<Utf16> fileName,
  Pointer<PRJ_FILE_BASIC_INFO> fileBasicInfo,
  Pointer<PRJ_EXTENDED_INFO> extendedInfo,
),
    int Function(
  int dirEntryBufferHandle,
  Pointer<Utf16> fileName,
  Pointer<PRJ_FILE_BASIC_INFO> fileBasicInfo,
  Pointer<PRJ_EXTENDED_INFO> extendedInfo,
)>('PrjFillDirEntryBuffer2');

void PrjFreeAlignedBuffer(
  Pointer buffer,
) =>
    _PrjFreeAlignedBuffer(
      buffer,
    );

late final _PrjFreeAlignedBuffer = _projectedfslib.lookupFunction<
    Void Function(
  Pointer buffer,
),
    void Function(
  Pointer buffer,
)>('PrjFreeAlignedBuffer');

int PrjGetOnDiskFileState(
  Pointer<Utf16> destinationFileName,
  Pointer<Uint32> fileState,
) =>
    _PrjGetOnDiskFileState(
      destinationFileName,
      fileState,
    );

late final _PrjGetOnDiskFileState = _projectedfslib.lookupFunction<
    Int32 Function(
  Pointer<Utf16> destinationFileName,
  Pointer<Uint32> fileState,
),
    int Function(
  Pointer<Utf16> destinationFileName,
  Pointer<Uint32> fileState,
)>('PrjGetOnDiskFileState');

int PrjGetVirtualizationInstanceInfo(
  int namespaceVirtualizationContext,
  Pointer<PRJ_VIRTUALIZATION_INSTANCE_INFO> virtualizationInstanceInfo,
) =>
    _PrjGetVirtualizationInstanceInfo(
      namespaceVirtualizationContext,
      virtualizationInstanceInfo,
    );

late final _PrjGetVirtualizationInstanceInfo = _projectedfslib.lookupFunction<
    Int32 Function(
  IntPtr namespaceVirtualizationContext,
  Pointer<PRJ_VIRTUALIZATION_INSTANCE_INFO> virtualizationInstanceInfo,
),
    int Function(
  int namespaceVirtualizationContext,
  Pointer<PRJ_VIRTUALIZATION_INSTANCE_INFO> virtualizationInstanceInfo,
)>('PrjGetVirtualizationInstanceInfo');

int PrjMarkDirectoryAsPlaceholder(
  Pointer<Utf16> rootPathName,
  Pointer<Utf16> targetPathName,
  Pointer<PRJ_PLACEHOLDER_VERSION_INFO> versionInfo,
  Pointer<GUID> virtualizationInstanceID,
) =>
    _PrjMarkDirectoryAsPlaceholder(
      rootPathName,
      targetPathName,
      versionInfo,
      virtualizationInstanceID,
    );

late final _PrjMarkDirectoryAsPlaceholder = _projectedfslib.lookupFunction<
    Int32 Function(
  Pointer<Utf16> rootPathName,
  Pointer<Utf16> targetPathName,
  Pointer<PRJ_PLACEHOLDER_VERSION_INFO> versionInfo,
  Pointer<GUID> virtualizationInstanceID,
),
    int Function(
  Pointer<Utf16> rootPathName,
  Pointer<Utf16> targetPathName,
  Pointer<PRJ_PLACEHOLDER_VERSION_INFO> versionInfo,
  Pointer<GUID> virtualizationInstanceID,
)>('PrjMarkDirectoryAsPlaceholder');

int PrjStartVirtualizing(
  Pointer<Utf16> virtualizationRootPath,
  Pointer<PRJ_CALLBACKS> callbacks,
  Pointer instanceContext,
  Pointer<PRJ_STARTVIRTUALIZING_OPTIONS> options,
  Pointer<IntPtr> namespaceVirtualizationContext,
) =>
    _PrjStartVirtualizing(
      virtualizationRootPath,
      callbacks,
      instanceContext,
      options,
      namespaceVirtualizationContext,
    );

late final _PrjStartVirtualizing = _projectedfslib.lookupFunction<
    Int32 Function(
  Pointer<Utf16> virtualizationRootPath,
  Pointer<PRJ_CALLBACKS> callbacks,
  Pointer instanceContext,
  Pointer<PRJ_STARTVIRTUALIZING_OPTIONS> options,
  Pointer<IntPtr> namespaceVirtualizationContext,
),
    int Function(
  Pointer<Utf16> virtualizationRootPath,
  Pointer<PRJ_CALLBACKS> callbacks,
  Pointer instanceContext,
  Pointer<PRJ_STARTVIRTUALIZING_OPTIONS> options,
  Pointer<IntPtr> namespaceVirtualizationContext,
)>('PrjStartVirtualizing');

void PrjStopVirtualizing(
  int namespaceVirtualizationContext,
) =>
    _PrjStopVirtualizing(
      namespaceVirtualizationContext,
    );

late final _PrjStopVirtualizing = _projectedfslib.lookupFunction<
    Void Function(
  IntPtr namespaceVirtualizationContext,
),
    void Function(
  int namespaceVirtualizationContext,
)>('PrjStopVirtualizing');

int PrjUpdateFileIfNeeded(
  int namespaceVirtualizationContext,
  Pointer<Utf16> destinationFileName,
  Pointer<PRJ_PLACEHOLDER_INFO> placeholderInfo,
  int placeholderInfoSize,
  int updateFlags,
  Pointer<Uint32> failureReason,
) =>
    _PrjUpdateFileIfNeeded(
      namespaceVirtualizationContext,
      destinationFileName,
      placeholderInfo,
      placeholderInfoSize,
      updateFlags,
      failureReason,
    );

late final _PrjUpdateFileIfNeeded = _projectedfslib.lookupFunction<
    Int32 Function(
  IntPtr namespaceVirtualizationContext,
  Pointer<Utf16> destinationFileName,
  Pointer<PRJ_PLACEHOLDER_INFO> placeholderInfo,
  Uint32 placeholderInfoSize,
  Uint32 updateFlags,
  Pointer<Uint32> failureReason,
),
    int Function(
  int namespaceVirtualizationContext,
  Pointer<Utf16> destinationFileName,
  Pointer<PRJ_PLACEHOLDER_INFO> placeholderInfo,
  int placeholderInfoSize,
  int updateFlags,
  Pointer<Uint32> failureReason,
)>('PrjUpdateFileIfNeeded');

int PrjWriteFileData(
  int namespaceVirtualizationContext,
  Pointer<GUID> dataStreamId,
  Pointer buffer,
  int byteOffset,
  int length,
) =>
    _PrjWriteFileData(
      namespaceVirtualizationContext,
      dataStreamId,
      buffer,
      byteOffset,
      length,
    );

late final _PrjWriteFileData = _projectedfslib.lookupFunction<
    Int32 Function(
  IntPtr namespaceVirtualizationContext,
  Pointer<GUID> dataStreamId,
  Pointer buffer,
  Uint64 byteOffset,
  Uint32 length,
),
    int Function(
  int namespaceVirtualizationContext,
  Pointer<GUID> dataStreamId,
  Pointer buffer,
  int byteOffset,
  int length,
)>('PrjWriteFileData');

int PrjWritePlaceholderInfo(
  int namespaceVirtualizationContext,
  Pointer<Utf16> destinationFileName,
  Pointer<PRJ_PLACEHOLDER_INFO> placeholderInfo,
  int placeholderInfoSize,
) =>
    _PrjWritePlaceholderInfo(
      namespaceVirtualizationContext,
      destinationFileName,
      placeholderInfo,
      placeholderInfoSize,
    );

late final _PrjWritePlaceholderInfo = _projectedfslib.lookupFunction<
    Int32 Function(
  IntPtr namespaceVirtualizationContext,
  Pointer<Utf16> destinationFileName,
  Pointer<PRJ_PLACEHOLDER_INFO> placeholderInfo,
  Uint32 placeholderInfoSize,
),
    int Function(
  int namespaceVirtualizationContext,
  Pointer<Utf16> destinationFileName,
  Pointer<PRJ_PLACEHOLDER_INFO> placeholderInfo,
  int placeholderInfoSize,
)>('PrjWritePlaceholderInfo');

int PrjWritePlaceholderInfo2(
  int namespaceVirtualizationContext,
  Pointer<Utf16> destinationFileName,
  Pointer<PRJ_PLACEHOLDER_INFO> placeholderInfo,
  int placeholderInfoSize,
  Pointer<PRJ_EXTENDED_INFO> ExtendedInfo,
) =>
    _PrjWritePlaceholderInfo2(
      namespaceVirtualizationContext,
      destinationFileName,
      placeholderInfo,
      placeholderInfoSize,
      ExtendedInfo,
    );

late final _PrjWritePlaceholderInfo2 = _projectedfslib.lookupFunction<
    Int32 Function(
  IntPtr namespaceVirtualizationContext,
  Pointer<Utf16> destinationFileName,
  Pointer<PRJ_PLACEHOLDER_INFO> placeholderInfo,
  Uint32 placeholderInfoSize,
  Pointer<PRJ_EXTENDED_INFO> ExtendedInfo,
),
    int Function(
  int namespaceVirtualizationContext,
  Pointer<Utf16> destinationFileName,
  Pointer<PRJ_PLACEHOLDER_INFO> placeholderInfo,
  int placeholderInfoSize,
  Pointer<PRJ_EXTENDED_INFO> ExtendedInfo,
)>('PrjWritePlaceholderInfo2');
