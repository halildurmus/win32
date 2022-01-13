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
import '../../storage/vhd/structs.g.dart';
import '../../security/structs.g.dart';
import '../../specialTypes.dart'; // -----------------------------------------------------------------------

// virtdisk.dll
// -----------------------------------------------------------------------
final _virtdisk = DynamicLibrary.open('virtdisk.dll');

int AddVirtualDiskParent(
  int VirtualDiskHandle,
  Pointer<Utf16> ParentPath,
) =>
    _AddVirtualDiskParent(
      VirtualDiskHandle,
      ParentPath,
    );

late final _AddVirtualDiskParent = _virtdisk.lookupFunction<
    Uint32 Function(
  IntPtr VirtualDiskHandle,
  Pointer<Utf16> ParentPath,
),
    int Function(
  int VirtualDiskHandle,
  Pointer<Utf16> ParentPath,
)>('AddVirtualDiskParent');

int ApplySnapshotVhdSet(
  int VirtualDiskHandle,
  Pointer<APPLY_SNAPSHOT_VHDSET_PARAMETERS> Parameters,
  int Flags,
) =>
    _ApplySnapshotVhdSet(
      VirtualDiskHandle,
      Parameters,
      Flags,
    );

late final _ApplySnapshotVhdSet = _virtdisk.lookupFunction<
    Uint32 Function(
  IntPtr VirtualDiskHandle,
  Pointer<APPLY_SNAPSHOT_VHDSET_PARAMETERS> Parameters,
  Uint32 Flags,
),
    int Function(
  int VirtualDiskHandle,
  Pointer<APPLY_SNAPSHOT_VHDSET_PARAMETERS> Parameters,
  int Flags,
)>('ApplySnapshotVhdSet');

int AttachVirtualDisk(
  int VirtualDiskHandle,
  Pointer<SECURITY_DESCRIPTOR> SecurityDescriptor,
  int Flags,
  int ProviderSpecificFlags,
  Pointer<ATTACH_VIRTUAL_DISK_PARAMETERS> Parameters,
  Pointer<OVERLAPPED> Overlapped,
) =>
    _AttachVirtualDisk(
      VirtualDiskHandle,
      SecurityDescriptor,
      Flags,
      ProviderSpecificFlags,
      Parameters,
      Overlapped,
    );

late final _AttachVirtualDisk = _virtdisk.lookupFunction<
    Uint32 Function(
  IntPtr VirtualDiskHandle,
  Pointer<SECURITY_DESCRIPTOR> SecurityDescriptor,
  Uint32 Flags,
  Uint32 ProviderSpecificFlags,
  Pointer<ATTACH_VIRTUAL_DISK_PARAMETERS> Parameters,
  Pointer<OVERLAPPED> Overlapped,
),
    int Function(
  int VirtualDiskHandle,
  Pointer<SECURITY_DESCRIPTOR> SecurityDescriptor,
  int Flags,
  int ProviderSpecificFlags,
  Pointer<ATTACH_VIRTUAL_DISK_PARAMETERS> Parameters,
  Pointer<OVERLAPPED> Overlapped,
)>('AttachVirtualDisk');

int BreakMirrorVirtualDisk(
  int VirtualDiskHandle,
) =>
    _BreakMirrorVirtualDisk(
      VirtualDiskHandle,
    );

late final _BreakMirrorVirtualDisk = _virtdisk.lookupFunction<
    Uint32 Function(
  IntPtr VirtualDiskHandle,
),
    int Function(
  int VirtualDiskHandle,
)>('BreakMirrorVirtualDisk');

int CompactVirtualDisk(
  int VirtualDiskHandle,
  int Flags,
  Pointer<COMPACT_VIRTUAL_DISK_PARAMETERS> Parameters,
  Pointer<OVERLAPPED> Overlapped,
) =>
    _CompactVirtualDisk(
      VirtualDiskHandle,
      Flags,
      Parameters,
      Overlapped,
    );

late final _CompactVirtualDisk = _virtdisk.lookupFunction<
    Uint32 Function(
  IntPtr VirtualDiskHandle,
  Uint32 Flags,
  Pointer<COMPACT_VIRTUAL_DISK_PARAMETERS> Parameters,
  Pointer<OVERLAPPED> Overlapped,
),
    int Function(
  int VirtualDiskHandle,
  int Flags,
  Pointer<COMPACT_VIRTUAL_DISK_PARAMETERS> Parameters,
  Pointer<OVERLAPPED> Overlapped,
)>('CompactVirtualDisk');

int CompleteForkVirtualDisk(
  int VirtualDiskHandle,
) =>
    _CompleteForkVirtualDisk(
      VirtualDiskHandle,
    );

late final _CompleteForkVirtualDisk = _virtdisk.lookupFunction<
    Uint32 Function(
  IntPtr VirtualDiskHandle,
),
    int Function(
  int VirtualDiskHandle,
)>('CompleteForkVirtualDisk');

int CreateVirtualDisk(
  Pointer<VIRTUAL_STORAGE_TYPE> VirtualStorageType,
  Pointer<Utf16> Path,
  int VirtualDiskAccessMask,
  Pointer<SECURITY_DESCRIPTOR> SecurityDescriptor,
  int Flags,
  int ProviderSpecificFlags,
  Pointer<CREATE_VIRTUAL_DISK_PARAMETERS> Parameters,
  Pointer<OVERLAPPED> Overlapped,
  Pointer<IntPtr> $Handle,
) =>
    _CreateVirtualDisk(
      VirtualStorageType,
      Path,
      VirtualDiskAccessMask,
      SecurityDescriptor,
      Flags,
      ProviderSpecificFlags,
      Parameters,
      Overlapped,
      $Handle,
    );

late final _CreateVirtualDisk = _virtdisk.lookupFunction<
    Uint32 Function(
  Pointer<VIRTUAL_STORAGE_TYPE> VirtualStorageType,
  Pointer<Utf16> Path,
  Uint32 VirtualDiskAccessMask,
  Pointer<SECURITY_DESCRIPTOR> SecurityDescriptor,
  Uint32 Flags,
  Uint32 ProviderSpecificFlags,
  Pointer<CREATE_VIRTUAL_DISK_PARAMETERS> Parameters,
  Pointer<OVERLAPPED> Overlapped,
  Pointer<IntPtr> $Handle,
),
    int Function(
  Pointer<VIRTUAL_STORAGE_TYPE> VirtualStorageType,
  Pointer<Utf16> Path,
  int VirtualDiskAccessMask,
  Pointer<SECURITY_DESCRIPTOR> SecurityDescriptor,
  int Flags,
  int ProviderSpecificFlags,
  Pointer<CREATE_VIRTUAL_DISK_PARAMETERS> Parameters,
  Pointer<OVERLAPPED> Overlapped,
  Pointer<IntPtr> $Handle,
)>('CreateVirtualDisk');

int DeleteSnapshotVhdSet(
  int VirtualDiskHandle,
  Pointer<DELETE_SNAPSHOT_VHDSET_PARAMETERS> Parameters,
  int Flags,
) =>
    _DeleteSnapshotVhdSet(
      VirtualDiskHandle,
      Parameters,
      Flags,
    );

late final _DeleteSnapshotVhdSet = _virtdisk.lookupFunction<
    Uint32 Function(
  IntPtr VirtualDiskHandle,
  Pointer<DELETE_SNAPSHOT_VHDSET_PARAMETERS> Parameters,
  Uint32 Flags,
),
    int Function(
  int VirtualDiskHandle,
  Pointer<DELETE_SNAPSHOT_VHDSET_PARAMETERS> Parameters,
  int Flags,
)>('DeleteSnapshotVhdSet');

int DeleteVirtualDiskMetadata(
  int VirtualDiskHandle,
  Pointer<GUID> Item,
) =>
    _DeleteVirtualDiskMetadata(
      VirtualDiskHandle,
      Item,
    );

late final _DeleteVirtualDiskMetadata = _virtdisk.lookupFunction<
    Uint32 Function(
  IntPtr VirtualDiskHandle,
  Pointer<GUID> Item,
),
    int Function(
  int VirtualDiskHandle,
  Pointer<GUID> Item,
)>('DeleteVirtualDiskMetadata');

int DetachVirtualDisk(
  int VirtualDiskHandle,
  int Flags,
  int ProviderSpecificFlags,
) =>
    _DetachVirtualDisk(
      VirtualDiskHandle,
      Flags,
      ProviderSpecificFlags,
    );

late final _DetachVirtualDisk = _virtdisk.lookupFunction<
    Uint32 Function(
  IntPtr VirtualDiskHandle,
  Uint32 Flags,
  Uint32 ProviderSpecificFlags,
),
    int Function(
  int VirtualDiskHandle,
  int Flags,
  int ProviderSpecificFlags,
)>('DetachVirtualDisk');

int EnumerateVirtualDiskMetadata(
  int VirtualDiskHandle,
  Pointer<Uint32> NumberOfItems,
  Pointer<GUID> Items,
) =>
    _EnumerateVirtualDiskMetadata(
      VirtualDiskHandle,
      NumberOfItems,
      Items,
    );

late final _EnumerateVirtualDiskMetadata = _virtdisk.lookupFunction<
    Uint32 Function(
  IntPtr VirtualDiskHandle,
  Pointer<Uint32> NumberOfItems,
  Pointer<GUID> Items,
),
    int Function(
  int VirtualDiskHandle,
  Pointer<Uint32> NumberOfItems,
  Pointer<GUID> Items,
)>('EnumerateVirtualDiskMetadata');

int ExpandVirtualDisk(
  int VirtualDiskHandle,
  int Flags,
  Pointer<EXPAND_VIRTUAL_DISK_PARAMETERS> Parameters,
  Pointer<OVERLAPPED> Overlapped,
) =>
    _ExpandVirtualDisk(
      VirtualDiskHandle,
      Flags,
      Parameters,
      Overlapped,
    );

late final _ExpandVirtualDisk = _virtdisk.lookupFunction<
    Uint32 Function(
  IntPtr VirtualDiskHandle,
  Uint32 Flags,
  Pointer<EXPAND_VIRTUAL_DISK_PARAMETERS> Parameters,
  Pointer<OVERLAPPED> Overlapped,
),
    int Function(
  int VirtualDiskHandle,
  int Flags,
  Pointer<EXPAND_VIRTUAL_DISK_PARAMETERS> Parameters,
  Pointer<OVERLAPPED> Overlapped,
)>('ExpandVirtualDisk');

int ForkVirtualDisk(
  int VirtualDiskHandle,
  int Flags,
  Pointer<FORK_VIRTUAL_DISK_PARAMETERS> Parameters,
  Pointer<OVERLAPPED> Overlapped,
) =>
    _ForkVirtualDisk(
      VirtualDiskHandle,
      Flags,
      Parameters,
      Overlapped,
    );

late final _ForkVirtualDisk = _virtdisk.lookupFunction<
    Uint32 Function(
  IntPtr VirtualDiskHandle,
  Uint32 Flags,
  Pointer<FORK_VIRTUAL_DISK_PARAMETERS> Parameters,
  Pointer<OVERLAPPED> Overlapped,
),
    int Function(
  int VirtualDiskHandle,
  int Flags,
  Pointer<FORK_VIRTUAL_DISK_PARAMETERS> Parameters,
  Pointer<OVERLAPPED> Overlapped,
)>('ForkVirtualDisk');

int GetAllAttachedVirtualDiskPhysicalPaths(
  Pointer<Uint32> PathsBufferSizeInBytes,
  Pointer<Utf16> PathsBuffer,
) =>
    _GetAllAttachedVirtualDiskPhysicalPaths(
      PathsBufferSizeInBytes,
      PathsBuffer,
    );

late final _GetAllAttachedVirtualDiskPhysicalPaths = _virtdisk.lookupFunction<
    Uint32 Function(
  Pointer<Uint32> PathsBufferSizeInBytes,
  Pointer<Utf16> PathsBuffer,
),
    int Function(
  Pointer<Uint32> PathsBufferSizeInBytes,
  Pointer<Utf16> PathsBuffer,
)>('GetAllAttachedVirtualDiskPhysicalPaths');

int GetStorageDependencyInformation(
  int ObjectHandle,
  int Flags,
  int StorageDependencyInfoSize,
  Pointer<STORAGE_DEPENDENCY_INFO> StorageDependencyInfo,
  Pointer<Uint32> SizeUsed,
) =>
    _GetStorageDependencyInformation(
      ObjectHandle,
      Flags,
      StorageDependencyInfoSize,
      StorageDependencyInfo,
      SizeUsed,
    );

late final _GetStorageDependencyInformation = _virtdisk.lookupFunction<
    Uint32 Function(
  IntPtr ObjectHandle,
  Uint32 Flags,
  Uint32 StorageDependencyInfoSize,
  Pointer<STORAGE_DEPENDENCY_INFO> StorageDependencyInfo,
  Pointer<Uint32> SizeUsed,
),
    int Function(
  int ObjectHandle,
  int Flags,
  int StorageDependencyInfoSize,
  Pointer<STORAGE_DEPENDENCY_INFO> StorageDependencyInfo,
  Pointer<Uint32> SizeUsed,
)>('GetStorageDependencyInformation');

int GetVirtualDiskInformation(
  int VirtualDiskHandle,
  Pointer<Uint32> VirtualDiskInfoSize,
  Pointer<GET_VIRTUAL_DISK_INFO> VirtualDiskInfo,
  Pointer<Uint32> SizeUsed,
) =>
    _GetVirtualDiskInformation(
      VirtualDiskHandle,
      VirtualDiskInfoSize,
      VirtualDiskInfo,
      SizeUsed,
    );

late final _GetVirtualDiskInformation = _virtdisk.lookupFunction<
    Uint32 Function(
  IntPtr VirtualDiskHandle,
  Pointer<Uint32> VirtualDiskInfoSize,
  Pointer<GET_VIRTUAL_DISK_INFO> VirtualDiskInfo,
  Pointer<Uint32> SizeUsed,
),
    int Function(
  int VirtualDiskHandle,
  Pointer<Uint32> VirtualDiskInfoSize,
  Pointer<GET_VIRTUAL_DISK_INFO> VirtualDiskInfo,
  Pointer<Uint32> SizeUsed,
)>('GetVirtualDiskInformation');

int GetVirtualDiskMetadata(
  int VirtualDiskHandle,
  Pointer<GUID> Item,
  Pointer<Uint32> MetaDataSize,
  Pointer MetaData,
) =>
    _GetVirtualDiskMetadata(
      VirtualDiskHandle,
      Item,
      MetaDataSize,
      MetaData,
    );

late final _GetVirtualDiskMetadata = _virtdisk.lookupFunction<
    Uint32 Function(
  IntPtr VirtualDiskHandle,
  Pointer<GUID> Item,
  Pointer<Uint32> MetaDataSize,
  Pointer MetaData,
),
    int Function(
  int VirtualDiskHandle,
  Pointer<GUID> Item,
  Pointer<Uint32> MetaDataSize,
  Pointer MetaData,
)>('GetVirtualDiskMetadata');

int GetVirtualDiskOperationProgress(
  int VirtualDiskHandle,
  Pointer<OVERLAPPED> Overlapped,
  Pointer<VIRTUAL_DISK_PROGRESS> Progress,
) =>
    _GetVirtualDiskOperationProgress(
      VirtualDiskHandle,
      Overlapped,
      Progress,
    );

late final _GetVirtualDiskOperationProgress = _virtdisk.lookupFunction<
    Uint32 Function(
  IntPtr VirtualDiskHandle,
  Pointer<OVERLAPPED> Overlapped,
  Pointer<VIRTUAL_DISK_PROGRESS> Progress,
),
    int Function(
  int VirtualDiskHandle,
  Pointer<OVERLAPPED> Overlapped,
  Pointer<VIRTUAL_DISK_PROGRESS> Progress,
)>('GetVirtualDiskOperationProgress');

int GetVirtualDiskPhysicalPath(
  int VirtualDiskHandle,
  Pointer<Uint32> DiskPathSizeInBytes,
  Pointer<Utf16> DiskPath,
) =>
    _GetVirtualDiskPhysicalPath(
      VirtualDiskHandle,
      DiskPathSizeInBytes,
      DiskPath,
    );

late final _GetVirtualDiskPhysicalPath = _virtdisk.lookupFunction<
    Uint32 Function(
  IntPtr VirtualDiskHandle,
  Pointer<Uint32> DiskPathSizeInBytes,
  Pointer<Utf16> DiskPath,
),
    int Function(
  int VirtualDiskHandle,
  Pointer<Uint32> DiskPathSizeInBytes,
  Pointer<Utf16> DiskPath,
)>('GetVirtualDiskPhysicalPath');

int MergeVirtualDisk(
  int VirtualDiskHandle,
  int Flags,
  Pointer<MERGE_VIRTUAL_DISK_PARAMETERS> Parameters,
  Pointer<OVERLAPPED> Overlapped,
) =>
    _MergeVirtualDisk(
      VirtualDiskHandle,
      Flags,
      Parameters,
      Overlapped,
    );

late final _MergeVirtualDisk = _virtdisk.lookupFunction<
    Uint32 Function(
  IntPtr VirtualDiskHandle,
  Uint32 Flags,
  Pointer<MERGE_VIRTUAL_DISK_PARAMETERS> Parameters,
  Pointer<OVERLAPPED> Overlapped,
),
    int Function(
  int VirtualDiskHandle,
  int Flags,
  Pointer<MERGE_VIRTUAL_DISK_PARAMETERS> Parameters,
  Pointer<OVERLAPPED> Overlapped,
)>('MergeVirtualDisk');

int MirrorVirtualDisk(
  int VirtualDiskHandle,
  int Flags,
  Pointer<MIRROR_VIRTUAL_DISK_PARAMETERS> Parameters,
  Pointer<OVERLAPPED> Overlapped,
) =>
    _MirrorVirtualDisk(
      VirtualDiskHandle,
      Flags,
      Parameters,
      Overlapped,
    );

late final _MirrorVirtualDisk = _virtdisk.lookupFunction<
    Uint32 Function(
  IntPtr VirtualDiskHandle,
  Uint32 Flags,
  Pointer<MIRROR_VIRTUAL_DISK_PARAMETERS> Parameters,
  Pointer<OVERLAPPED> Overlapped,
),
    int Function(
  int VirtualDiskHandle,
  int Flags,
  Pointer<MIRROR_VIRTUAL_DISK_PARAMETERS> Parameters,
  Pointer<OVERLAPPED> Overlapped,
)>('MirrorVirtualDisk');

int ModifyVhdSet(
  int VirtualDiskHandle,
  Pointer<MODIFY_VHDSET_PARAMETERS> Parameters,
  int Flags,
) =>
    _ModifyVhdSet(
      VirtualDiskHandle,
      Parameters,
      Flags,
    );

late final _ModifyVhdSet = _virtdisk.lookupFunction<
    Uint32 Function(
  IntPtr VirtualDiskHandle,
  Pointer<MODIFY_VHDSET_PARAMETERS> Parameters,
  Uint32 Flags,
),
    int Function(
  int VirtualDiskHandle,
  Pointer<MODIFY_VHDSET_PARAMETERS> Parameters,
  int Flags,
)>('ModifyVhdSet');

int OpenVirtualDisk(
  Pointer<VIRTUAL_STORAGE_TYPE> VirtualStorageType,
  Pointer<Utf16> Path,
  int VirtualDiskAccessMask,
  int Flags,
  Pointer<OPEN_VIRTUAL_DISK_PARAMETERS> Parameters,
  Pointer<IntPtr> $Handle,
) =>
    _OpenVirtualDisk(
      VirtualStorageType,
      Path,
      VirtualDiskAccessMask,
      Flags,
      Parameters,
      $Handle,
    );

late final _OpenVirtualDisk = _virtdisk.lookupFunction<
    Uint32 Function(
  Pointer<VIRTUAL_STORAGE_TYPE> VirtualStorageType,
  Pointer<Utf16> Path,
  Uint32 VirtualDiskAccessMask,
  Uint32 Flags,
  Pointer<OPEN_VIRTUAL_DISK_PARAMETERS> Parameters,
  Pointer<IntPtr> $Handle,
),
    int Function(
  Pointer<VIRTUAL_STORAGE_TYPE> VirtualStorageType,
  Pointer<Utf16> Path,
  int VirtualDiskAccessMask,
  int Flags,
  Pointer<OPEN_VIRTUAL_DISK_PARAMETERS> Parameters,
  Pointer<IntPtr> $Handle,
)>('OpenVirtualDisk');

int QueryChangesVirtualDisk(
  int VirtualDiskHandle,
  Pointer<Utf16> ChangeTrackingId,
  int ByteOffset,
  int ByteLength,
  int Flags,
  Pointer<QUERY_CHANGES_VIRTUAL_DISK_RANGE> Ranges,
  Pointer<Uint32> RangeCount,
  Pointer<Uint64> ProcessedLength,
) =>
    _QueryChangesVirtualDisk(
      VirtualDiskHandle,
      ChangeTrackingId,
      ByteOffset,
      ByteLength,
      Flags,
      Ranges,
      RangeCount,
      ProcessedLength,
    );

late final _QueryChangesVirtualDisk = _virtdisk.lookupFunction<
    Uint32 Function(
  IntPtr VirtualDiskHandle,
  Pointer<Utf16> ChangeTrackingId,
  Uint64 ByteOffset,
  Uint64 ByteLength,
  Uint32 Flags,
  Pointer<QUERY_CHANGES_VIRTUAL_DISK_RANGE> Ranges,
  Pointer<Uint32> RangeCount,
  Pointer<Uint64> ProcessedLength,
),
    int Function(
  int VirtualDiskHandle,
  Pointer<Utf16> ChangeTrackingId,
  int ByteOffset,
  int ByteLength,
  int Flags,
  Pointer<QUERY_CHANGES_VIRTUAL_DISK_RANGE> Ranges,
  Pointer<Uint32> RangeCount,
  Pointer<Uint64> ProcessedLength,
)>('QueryChangesVirtualDisk');

int RawSCSIVirtualDisk(
  int VirtualDiskHandle,
  Pointer<RAW_SCSI_VIRTUAL_DISK_PARAMETERS> Parameters,
  int Flags,
  Pointer<RAW_SCSI_VIRTUAL_DISK_RESPONSE> Response,
) =>
    _RawSCSIVirtualDisk(
      VirtualDiskHandle,
      Parameters,
      Flags,
      Response,
    );

late final _RawSCSIVirtualDisk = _virtdisk.lookupFunction<
    Uint32 Function(
  IntPtr VirtualDiskHandle,
  Pointer<RAW_SCSI_VIRTUAL_DISK_PARAMETERS> Parameters,
  Uint32 Flags,
  Pointer<RAW_SCSI_VIRTUAL_DISK_RESPONSE> Response,
),
    int Function(
  int VirtualDiskHandle,
  Pointer<RAW_SCSI_VIRTUAL_DISK_PARAMETERS> Parameters,
  int Flags,
  Pointer<RAW_SCSI_VIRTUAL_DISK_RESPONSE> Response,
)>('RawSCSIVirtualDisk');

int ResizeVirtualDisk(
  int VirtualDiskHandle,
  int Flags,
  Pointer<RESIZE_VIRTUAL_DISK_PARAMETERS> Parameters,
  Pointer<OVERLAPPED> Overlapped,
) =>
    _ResizeVirtualDisk(
      VirtualDiskHandle,
      Flags,
      Parameters,
      Overlapped,
    );

late final _ResizeVirtualDisk = _virtdisk.lookupFunction<
    Uint32 Function(
  IntPtr VirtualDiskHandle,
  Uint32 Flags,
  Pointer<RESIZE_VIRTUAL_DISK_PARAMETERS> Parameters,
  Pointer<OVERLAPPED> Overlapped,
),
    int Function(
  int VirtualDiskHandle,
  int Flags,
  Pointer<RESIZE_VIRTUAL_DISK_PARAMETERS> Parameters,
  Pointer<OVERLAPPED> Overlapped,
)>('ResizeVirtualDisk');

int SetVirtualDiskInformation(
  int VirtualDiskHandle,
  Pointer<SET_VIRTUAL_DISK_INFO> VirtualDiskInfo,
) =>
    _SetVirtualDiskInformation(
      VirtualDiskHandle,
      VirtualDiskInfo,
    );

late final _SetVirtualDiskInformation = _virtdisk.lookupFunction<
    Uint32 Function(
  IntPtr VirtualDiskHandle,
  Pointer<SET_VIRTUAL_DISK_INFO> VirtualDiskInfo,
),
    int Function(
  int VirtualDiskHandle,
  Pointer<SET_VIRTUAL_DISK_INFO> VirtualDiskInfo,
)>('SetVirtualDiskInformation');

int SetVirtualDiskMetadata(
  int VirtualDiskHandle,
  Pointer<GUID> Item,
  int MetaDataSize,
  Pointer MetaData,
) =>
    _SetVirtualDiskMetadata(
      VirtualDiskHandle,
      Item,
      MetaDataSize,
      MetaData,
    );

late final _SetVirtualDiskMetadata = _virtdisk.lookupFunction<
    Uint32 Function(
  IntPtr VirtualDiskHandle,
  Pointer<GUID> Item,
  Uint32 MetaDataSize,
  Pointer MetaData,
),
    int Function(
  int VirtualDiskHandle,
  Pointer<GUID> Item,
  int MetaDataSize,
  Pointer MetaData,
)>('SetVirtualDiskMetadata');

int TakeSnapshotVhdSet(
  int VirtualDiskHandle,
  Pointer<TAKE_SNAPSHOT_VHDSET_PARAMETERS> Parameters,
  int Flags,
) =>
    _TakeSnapshotVhdSet(
      VirtualDiskHandle,
      Parameters,
      Flags,
    );

late final _TakeSnapshotVhdSet = _virtdisk.lookupFunction<
    Uint32 Function(
  IntPtr VirtualDiskHandle,
  Pointer<TAKE_SNAPSHOT_VHDSET_PARAMETERS> Parameters,
  Uint32 Flags,
),
    int Function(
  int VirtualDiskHandle,
  Pointer<TAKE_SNAPSHOT_VHDSET_PARAMETERS> Parameters,
  int Flags,
)>('TakeSnapshotVhdSet');
