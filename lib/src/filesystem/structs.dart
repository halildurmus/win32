// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// -----------------------------------------------------------------------------
// Linter exceptions
// -----------------------------------------------------------------------------
// ignore_for_file: camel_case_types ignore_for_file: camel_case_extensions
//
// Why? The linter defaults to throw a warning for types not named as camel
// case. We deliberately break this convention to match the Win32 underlying
// types.
//
//
// ignore_for_file: unused_field
//
// Why? The linter complains about unused fields (e.g. a class that contains
// underscore-prefixed members that are not used in the library. In this class,
// we use this feature to ensure that sizeOf<STRUCT_NAME> returns a size at
// least as large as the underlying native struct. See, for example,
// ENUMLOGFONTEX.
//
//
// ignore_for_file: unnecessary_getters_setters
//
// Why? In structs like VARIANT, we're using getters and setters to project the
// same underlying data property to various union types. The trivial overhead is
// outweighed by readability.
//
//
// ignore_for_file: unused_import
//
// Why? We speculatively include some imports that we might generate a
// requirement for.
// -----------------------------------------------------------------------------

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';

class FindFileHandle extends Struct {
  @IntPtr()
  external int Value;
}

class FindFileNameHandle extends Struct {
  @IntPtr()
  external int Value;
}

class FindStreamHandle extends Struct {
  @IntPtr()
  external int Value;
}

class FindChangeNotificationHandle extends Struct {
  @IntPtr()
  external int Value;
}

class FindVolumeHandle extends Struct {
  @IntPtr()
  external int Value;
}

class FindVolumeMointPointHandle extends Struct {
  @IntPtr()
  external int Value;
}

class FILE_ID_128 extends Struct {
  @Array(16)
  external Array<Uint8> Identifier;
}

class FILE_NOTIFY_INFORMATION extends Struct {
  @Uint32()
  external int NextEntryOffset;
  @Uint32()
  external int Action;
  @Uint32()
  external int FileNameLength;
  @Array(1)
  external Array<Uint16> FileName;
}

class FILE_NOTIFY_EXTENDED_INFORMATION extends Struct {
  @Uint32()
  external int NextEntryOffset;
  @Uint32()
  external int Action;
  @Int64()
  external int CreationTime;
  @Int64()
  external int LastModificationTime;
  @Int64()
  external int LastChangeTime;
  @Int64()
  external int LastAccessTime;
  @Int64()
  external int AllocatedLength;
  @Int64()
  external int FileSize;
  @Uint32()
  external int FileAttributes;
  @Uint32()
  external int ReparsePointTag;
  @Int64()
  external int FileId;
  @Int64()
  external int ParentFileId;
  @Uint32()
  external int FileNameLength;
  @Array(1)
  external Array<Uint16> FileName;
}

class REPARSE_GUID_DATA_BUFFER extends Struct {
  @Uint32()
  external int ReparseTag;
  @Uint16()
  external int ReparseDataLength;
  @Uint16()
  external int Reserved;
  external GUID ReparseGuid;
  @Uint32()
  external int GenericReparseBuffer;
}

class OVERLAPPED_ENTRY extends Struct {
  @IntPtr()
  external int lpCompletionKey;
  external Pointer<OVERLAPPED> lpOverlapped;
  @IntPtr()
  external int Internal;
  @Uint32()
  external int dwNumberOfBytesTransferred;
}

class WIN32_FIND_DATAA extends Struct {
  @Uint32()
  external int dwFileAttributes;
  external FILETIME ftCreationTime;
  external FILETIME ftLastAccessTime;
  external FILETIME ftLastWriteTime;
  @Uint32()
  external int nFileSizeHigh;
  @Uint32()
  external int nFileSizeLow;
  @Uint32()
  external int dwReserved0;
  @Uint32()
  external int dwReserved1;
  @Array(129)
  external Array<Int8> cFileName;
  @Array(14)
  external Array<Int8> cAlternateFileName;
}

class WIN32_FIND_DATAW extends Struct {
  @Uint32()
  external int dwFileAttributes;
  external FILETIME ftCreationTime;
  external FILETIME ftLastAccessTime;
  external FILETIME ftLastWriteTime;
  @Uint32()
  external int nFileSizeHigh;
  @Uint32()
  external int nFileSizeLow;
  @Uint32()
  external int dwReserved0;
  @Uint32()
  external int dwReserved1;
  @Array(129)
  external Array<Uint16> cFileName;
  @Array(14)
  external Array<Uint16> cAlternateFileName;
}

class STORAGE_PROPERTY_QUERY extends Struct {
  @Uint32()
  external int PropertyId;
  @Uint32()
  external int QueryType;
  @Array(1)
  external Array<Uint8> AdditionalParameters;
}

class STORAGE_DESCRIPTOR_HEADER extends Struct {
  @Uint32()
  external int Version;
  @Uint32()
  external int Size;
}

class STORAGE_DEVICE_DESCRIPTOR extends Struct {
  @Uint32()
  external int Version;
  @Uint32()
  external int Size;
  @Uint8()
  external int DeviceType;
  @Uint8()
  external int DeviceTypeModifier;
  @Uint8()
  external int RemovableMedia;
  @Uint8()
  external int CommandQueueing;
  @Uint32()
  external int VendorIdOffset;
  @Uint32()
  external int ProductIdOffset;
  @Uint32()
  external int ProductRevisionOffset;
  @Uint32()
  external int SerialNumberOffset;
  @Uint32()
  external int BusType;
  @Uint32()
  external int RawPropertiesLength;
  @Array(1)
  external Array<Uint8> RawDeviceProperties;
}

class STORAGE_ADAPTER_DESCRIPTOR extends Struct {
  @Uint32()
  external int Version;
  @Uint32()
  external int Size;
  @Uint32()
  external int MaximumTransferLength;
  @Uint32()
  external int MaximumPhysicalPages;
  @Uint32()
  external int AlignmentMask;
  @Uint8()
  external int AdapterUsesPio;
  @Uint8()
  external int AdapterScansDown;
  @Uint8()
  external int CommandQueueing;
  @Uint8()
  external int AcceleratedTransfer;
  @Uint8()
  external int BusType;
  @Uint16()
  external int BusMajorVersion;
  @Uint16()
  external int BusMinorVersion;
  @Uint8()
  external int SrbType;
  @Uint8()
  external int AddressType;
}

class STORAGE_ACCESS_ALIGNMENT_DESCRIPTOR extends Struct {
  @Uint32()
  external int Version;
  @Uint32()
  external int Size;
  @Uint32()
  external int BytesPerCacheLine;
  @Uint32()
  external int BytesOffsetForCacheAlignment;
  @Uint32()
  external int BytesPerLogicalSector;
  @Uint32()
  external int BytesPerPhysicalSector;
  @Uint32()
  external int BytesOffsetForSectorAlignment;
}

class STORAGE_MEDIUM_PRODUCT_TYPE_DESCRIPTOR extends Struct {
  @Uint32()
  external int Version;
  @Uint32()
  external int Size;
  @Uint32()
  external int MediumProductType;
}

class STORAGE_MINIPORT_DESCRIPTOR extends Struct {
  @Uint32()
  external int Version;
  @Uint32()
  external int Size;
  @Uint32()
  external int Portdriver;
  @Uint8()
  external int LUNResetSupported;
  @Uint8()
  external int TargetResetSupported;
  @Uint16()
  external int IoTimeoutValue;
  @Uint8()
  external int ExtraIoInfoSupported;
  @Array(3)
  external Array<Uint8> Reserved0;
  @Uint32()
  external int Reserved1;
}

class STORAGE_DEVICE_ID_DESCRIPTOR extends Struct {
  @Uint32()
  external int Version;
  @Uint32()
  external int Size;
  @Uint32()
  external int NumberOfIdentifiers;
  @Array(1)
  external Array<Uint8> Identifiers;
}

class DEVICE_SEEK_PENALTY_DESCRIPTOR extends Struct {
  @Uint32()
  external int Version;
  @Uint32()
  external int Size;
  @Uint8()
  external int IncursSeekPenalty;
}

class DEVICE_WRITE_AGGREGATION_DESCRIPTOR extends Struct {
  @Uint32()
  external int Version;
  @Uint32()
  external int Size;
  @Uint8()
  external int BenefitsFromWriteAggregation;
}

class DEVICE_TRIM_DESCRIPTOR extends Struct {
  @Uint32()
  external int Version;
  @Uint32()
  external int Size;
  @Uint8()
  external int TrimEnabled;
}

class DEVICE_LB_PROVISIONING_DESCRIPTOR extends Struct {
  @Uint32()
  external int Version;
  @Uint32()
  external int Size;
  @Uint8()
  external int _bitfield;
  @Array(7)
  external Array<Uint8> Reserved1;
  @Uint64()
  external int OptimalUnmapGranularity;
  @Uint64()
  external int UnmapGranularityAlignment;
  @Uint32()
  external int MaxUnmapLbaCount;
  @Uint32()
  external int MaxUnmapBlockDescriptorCount;
}

class DEVICE_POWER_DESCRIPTOR extends Struct {
  @Uint32()
  external int Version;
  @Uint32()
  external int Size;
  @Uint8()
  external int DeviceAttentionSupported;
  @Uint8()
  external int AsynchronousNotificationSupported;
  @Uint8()
  external int IdlePowerManagementEnabled;
  @Uint8()
  external int D3ColdEnabled;
  @Uint8()
  external int D3ColdSupported;
  @Uint8()
  external int NoVerifyDuringIdlePower;
  @Array(2)
  external Array<Uint8> Reserved;
  @Uint32()
  external int IdleTimeoutInMS;
}

class DEVICE_COPY_OFFLOAD_DESCRIPTOR extends Struct {
  @Uint32()
  external int Version;
  @Uint32()
  external int Size;
  @Uint32()
  external int MaximumTokenLifetime;
  @Uint32()
  external int DefaultTokenLifetime;
  @Uint64()
  external int MaximumTransferSize;
  @Uint64()
  external int OptimalTransferCount;
  @Uint32()
  external int MaximumDataDescriptors;
  @Uint32()
  external int MaximumTransferLengthPerDescriptor;
  @Uint32()
  external int OptimalTransferLengthPerDescriptor;
  @Uint16()
  external int OptimalTransferLengthGranularity;
  @Array(2)
  external Array<Uint8> Reserved;
}

class STORAGE_DEVICE_RESILIENCY_DESCRIPTOR extends Struct {
  @Uint32()
  external int Version;
  @Uint32()
  external int Size;
  @Uint32()
  external int NameOffset;
  @Uint32()
  external int NumberOfLogicalCopies;
  @Uint32()
  external int NumberOfPhysicalCopies;
  @Uint32()
  external int PhysicalDiskRedundancy;
  @Uint32()
  external int NumberOfColumns;
  @Uint32()
  external int Interleave;
}

class STORAGE_PROTOCOL_SPECIFIC_DATA extends Struct {
  @Uint32()
  external int ProtocolType;
  @Uint32()
  external int DataType;
  @Uint32()
  external int ProtocolDataRequestValue;
  @Uint32()
  external int ProtocolDataRequestSubValue;
  @Uint32()
  external int ProtocolDataOffset;
  @Uint32()
  external int ProtocolDataLength;
  @Uint32()
  external int FixedProtocolReturnData;
  @Uint32()
  external int ProtocolDataRequestSubValue2;
  @Uint32()
  external int ProtocolDataRequestSubValue3;
  @Uint32()
  external int Reserved;
}

class STORAGE_PROTOCOL_DATA_DESCRIPTOR extends Struct {
  @Uint32()
  external int Version;
  @Uint32()
  external int Size;
  external STORAGE_PROTOCOL_SPECIFIC_DATA ProtocolSpecificData;
}

class STORAGE_TEMPERATURE_INFO extends Struct {
  @Uint16()
  external int Index;
  @Int16()
  external int Temperature;
  @Int16()
  external int OverThreshold;
  @Int16()
  external int UnderThreshold;
  @Uint8()
  external int OverThresholdChangable;
  @Uint8()
  external int UnderThresholdChangable;
  @Uint8()
  external int EventGenerated;
  @Uint8()
  external int Reserved0;
  @Uint32()
  external int Reserved1;
}

class STORAGE_TEMPERATURE_DATA_DESCRIPTOR extends Struct {
  @Uint32()
  external int Version;
  @Uint32()
  external int Size;
  @Int16()
  external int CriticalTemperature;
  @Int16()
  external int WarningTemperature;
  @Uint16()
  external int InfoCount;
  @Array(2)
  external Array<Uint8> Reserved0;
  @Array(2)
  external Array<Uint32> Reserved1;
  @Array(1)
  external Array<STORAGE_TEMPERATURE_INFO> TemperatureInfo;
}

class STORAGE_TEMPERATURE_THRESHOLD extends Struct {
  @Uint32()
  external int Version;
  @Uint32()
  external int Size;
  @Uint16()
  external int Flags;
  @Uint16()
  external int Index;
  @Int16()
  external int Threshold;
  @Uint8()
  external int OverThreshold;
  @Uint8()
  external int Reserved;
}

class STORAGE_SPEC_VERSION extends Struct {
  @Uint32()
  external int Anonymous;
  @Uint32()
  external int AsUlong;
}

class STORAGE_PHYSICAL_DEVICE_DATA extends Struct {
  @Uint32()
  external int DeviceId;
  @Uint32()
  external int Role;
  @Uint32()
  external int HealthStatus;
  @Uint32()
  external int CommandProtocol;
  external STORAGE_SPEC_VERSION SpecVersion;
  @Uint32()
  external int FormFactor;
  @Array(8)
  external Array<Uint8> Vendor;
  @Array(40)
  external Array<Uint8> Model;
  @Array(16)
  external Array<Uint8> FirmwareRevision;
  @Uint64()
  external int Capacity;
  @Array(32)
  external Array<Uint8> PhysicalLocation;
  @Array(2)
  external Array<Uint32> Reserved;
}

class STORAGE_PHYSICAL_ADAPTER_DATA extends Struct {
  @Uint32()
  external int AdapterId;
  @Uint32()
  external int HealthStatus;
  @Uint32()
  external int CommandProtocol;
  external STORAGE_SPEC_VERSION SpecVersion;
  @Array(8)
  external Array<Uint8> Vendor;
  @Array(40)
  external Array<Uint8> Model;
  @Array(16)
  external Array<Uint8> FirmwareRevision;
  @Array(32)
  external Array<Uint8> PhysicalLocation;
  @Uint8()
  external int ExpanderConnected;
  @Array(3)
  external Array<Uint8> Reserved0;
  @Array(3)
  external Array<Uint32> Reserved1;
}

class STORAGE_PHYSICAL_NODE_DATA extends Struct {
  @Uint32()
  external int NodeId;
  @Uint32()
  external int AdapterCount;
  @Uint32()
  external int AdapterDataLength;
  @Uint32()
  external int AdapterDataOffset;
  @Uint32()
  external int DeviceCount;
  @Uint32()
  external int DeviceDataLength;
  @Uint32()
  external int DeviceDataOffset;
  @Array(3)
  external Array<Uint32> Reserved;
}

class STORAGE_PHYSICAL_TOPOLOGY_DESCRIPTOR extends Struct {
  @Uint32()
  external int Version;
  @Uint32()
  external int Size;
  @Uint32()
  external int NodeCount;
  @Uint32()
  external int Reserved;
  @Array(1)
  external Array<STORAGE_PHYSICAL_NODE_DATA> Node;
}

class STORAGE_DEVICE_IO_CAPABILITY_DESCRIPTOR extends Struct {
  @Uint32()
  external int Version;
  @Uint32()
  external int Size;
  @Uint32()
  external int LunMaxIoCount;
  @Uint32()
  external int AdapterMaxIoCount;
}

class STORAGE_DEVICE_ATTRIBUTES_DESCRIPTOR extends Struct {
  @Uint32()
  external int Version;
  @Uint32()
  external int Size;
  @Uint64()
  external int Attributes;
}

class STORAGE_ADAPTER_SERIAL_NUMBER extends Struct {
  @Uint32()
  external int Version;
  @Uint32()
  external int Size;
  @Array(128)
  external Array<Uint16> SerialNumber;
}

class STORAGE_WRITE_CACHE_PROPERTY extends Struct {
  @Uint32()
  external int Version;
  @Uint32()
  external int Size;
  @Uint32()
  external int WriteCacheType;
  @Uint32()
  external int WriteCacheEnabled;
  @Uint32()
  external int WriteCacheChangeable;
  @Uint32()
  external int WriteThroughSupported;
  @Uint8()
  external int FlushCacheSupported;
  @Uint8()
  external int UserDefinedPowerProtection;
  @Uint8()
  external int NVCacheEnabled;
}

class STORAGE_DEVICE_POWER_CAP extends Struct {
  @Uint32()
  external int Version;
  @Uint32()
  external int Size;
  @Uint32()
  external int Units;
  @Uint64()
  external int MaxPower;
}

class STORAGE_HW_FIRMWARE_DOWNLOAD extends Struct {
  @Uint32()
  external int Version;
  @Uint32()
  external int Size;
  @Uint32()
  external int Flags;
  @Uint8()
  external int Slot;
  @Array(3)
  external Array<Uint8> Reserved;
  @Uint64()
  external int Offset;
  @Uint64()
  external int BufferSize;
  @Array(1)
  external Array<Uint8> ImageBuffer;
}

class STORAGE_HW_FIRMWARE_ACTIVATE extends Struct {
  @Uint32()
  external int Version;
  @Uint32()
  external int Size;
  @Uint32()
  external int Flags;
  @Uint8()
  external int Slot;
  @Array(3)
  external Array<Uint8> Reserved0;
}

class STORAGE_PROTOCOL_COMMAND extends Struct {
  @Uint32()
  external int Version;
  @Uint32()
  external int Length;
  @Uint32()
  external int ProtocolType;
  @Uint32()
  external int Flags;
  @Uint32()
  external int ReturnStatus;
  @Uint32()
  external int ErrorCode;
  @Uint32()
  external int CommandLength;
  @Uint32()
  external int ErrorInfoLength;
  @Uint32()
  external int DataToDeviceTransferLength;
  @Uint32()
  external int DataFromDeviceTransferLength;
  @Uint32()
  external int TimeOutValue;
  @Uint32()
  external int ErrorInfoOffset;
  @Uint32()
  external int DataToDeviceBufferOffset;
  @Uint32()
  external int DataFromDeviceBufferOffset;
  @Uint32()
  external int CommandSpecific;
  @Uint32()
  external int Reserved0;
  @Uint32()
  external int FixedProtocolReturnData;
  @Array(3)
  external Array<Uint32> Reserved1;
  @Array(1)
  external Array<Uint8> Command;
}

class FORMAT_PARAMETERS extends Struct {
  @Uint32()
  external int MediaType;
  @Uint32()
  external int StartCylinderNumber;
  @Uint32()
  external int EndCylinderNumber;
  @Uint32()
  external int StartHeadNumber;
  @Uint32()
  external int EndHeadNumber;
}

class FORMAT_EX_PARAMETERS extends Struct {
  @Uint32()
  external int MediaType;
  @Uint32()
  external int StartCylinderNumber;
  @Uint32()
  external int EndCylinderNumber;
  @Uint32()
  external int StartHeadNumber;
  @Uint32()
  external int EndHeadNumber;
  @Uint16()
  external int FormatGapLength;
  @Uint16()
  external int SectorsPerTrack;
  @Array(1)
  external Array<Uint16> SectorNumber;
}

class DISK_GEOMETRY extends Struct {
  @Int64()
  external int Cylinders;
  @Uint32()
  external int MediaType;
  @Uint32()
  external int TracksPerCylinder;
  @Uint32()
  external int SectorsPerTrack;
  @Uint32()
  external int BytesPerSector;
}

class PARTITION_INFORMATION extends Struct {
  @Int64()
  external int StartingOffset;
  @Int64()
  external int PartitionLength;
  @Uint32()
  external int HiddenSectors;
  @Uint32()
  external int PartitionNumber;
  @Uint8()
  external int PartitionType;
  @Uint8()
  external int BootIndicator;
  @Uint8()
  external int RecognizedPartition;
  @Uint8()
  external int RewritePartition;
}

class SET_PARTITION_INFORMATION extends Struct {
  @Uint8()
  external int PartitionType;
}

class DRIVE_LAYOUT_INFORMATION extends Struct {
  @Uint32()
  external int PartitionCount;
  @Uint32()
  external int Signature;
  @Array(1)
  external Array<PARTITION_INFORMATION> PartitionEntry;
}

class VERIFY_INFORMATION extends Struct {
  @Int64()
  external int StartingOffset;
  @Uint32()
  external int Length;
}

class REASSIGN_BLOCKS extends Struct {
  @Uint16()
  external int Reserved;
  @Uint16()
  external int Count;
  @Array(1)
  external Array<Uint32> BlockNumber;
}

class REASSIGN_BLOCKS_EX extends Struct {
  @Uint16()
  external int Reserved;
  @Uint16()
  external int Count;
  @Array(1)
  external Array<Int64> BlockNumber;
}

class PARTITION_INFORMATION_GPT extends Struct {
  external GUID PartitionType;
  external GUID PartitionId;
  @Uint32()
  external int Attributes;
  @Array(36)
  external Array<Uint16> Name;
}

class PARTITION_INFORMATION_MBR extends Struct {
  @Uint8()
  external int PartitionType;
  @Uint8()
  external int BootIndicator;
  @Uint8()
  external int RecognizedPartition;
  @Uint32()
  external int HiddenSectors;
  external GUID PartitionId;
}

class CREATE_DISK_GPT extends Struct {
  external GUID DiskId;
  @Uint32()
  external int MaxPartitionCount;
}

class CREATE_DISK_MBR extends Struct {
  @Uint32()
  external int Signature;
}

class CREATE_DISK extends Struct {
  @Uint32()
  external int PartitionStyle;
  @Uint32()
  external int Anonymous;
}

class GET_LENGTH_INFORMATION extends Struct {
  @Int64()
  external int Length;
}

class PARTITION_INFORMATION_EX extends Struct {
  @Uint32()
  external int PartitionStyle;
  @Int64()
  external int StartingOffset;
  @Int64()
  external int PartitionLength;
  @Uint32()
  external int PartitionNumber;
  @Uint8()
  external int RewritePartition;
  @Uint8()
  external int IsServicePartition;
  @Uint32()
  external int Anonymous;
}

class DRIVE_LAYOUT_INFORMATION_GPT extends Struct {
  external GUID DiskId;
  @Int64()
  external int StartingUsableOffset;
  @Int64()
  external int UsableLength;
  @Uint32()
  external int MaxPartitionCount;
}

class DRIVE_LAYOUT_INFORMATION_MBR extends Struct {
  @Uint32()
  external int Signature;
  @Uint32()
  external int CheckSum;
}

class DRIVE_LAYOUT_INFORMATION_EX extends Struct {
  @Uint32()
  external int PartitionStyle;
  @Uint32()
  external int PartitionCount;
  @Uint32()
  external int Anonymous;
  @Array(1)
  external Array<PARTITION_INFORMATION_EX> PartitionEntry;
}

class DISK_INT13_INFO extends Struct {
  @Uint16()
  external int DriveSelect;
  @Uint32()
  external int MaxCylinders;
  @Uint16()
  external int SectorsPerTrack;
  @Uint16()
  external int MaxHeads;
  @Uint16()
  external int NumberDrives;
}

class DISK_EX_INT13_INFO extends Struct {
  @Uint16()
  external int ExBufferSize;
  @Uint16()
  external int ExFlags;
  @Uint32()
  external int ExCylinders;
  @Uint32()
  external int ExHeads;
  @Uint32()
  external int ExSectorsPerTrack;
  @Uint64()
  external int ExSectorsPerDrive;
  @Uint16()
  external int ExSectorSize;
  @Uint16()
  external int ExReserved;
}

class DISK_DETECTION_INFO extends Struct {
  @Uint32()
  external int SizeOfDetectInfo;
  @Uint32()
  external int DetectionType;
  @Uint32()
  external int Anonymous;
}

class DISK_PARTITION_INFO extends Struct {
  @Uint32()
  external int SizeOfPartitionInfo;
  @Uint32()
  external int PartitionStyle;
  @Uint32()
  external int Anonymous;
}

class DISK_GEOMETRY_EX extends Struct {
  external DISK_GEOMETRY Geometry;
  @Int64()
  external int DiskSize;
  @Array(1)
  external Array<Uint8> Data;
}

class DISK_CACHE_INFORMATION extends Struct {
  @Uint8()
  external int ParametersSavable;
  @Uint8()
  external int ReadCacheEnabled;
  @Uint8()
  external int WriteCacheEnabled;
  @Uint32()
  external int ReadRetentionPriority;
  @Uint32()
  external int WriteRetentionPriority;
  @Uint16()
  external int DisablePrefetchTransferLength;
  @Uint8()
  external int PrefetchScalar;
  @Uint32()
  external int Anonymous;
}

class DISK_GROW_PARTITION extends Struct {
  @Uint32()
  external int PartitionNumber;
  @Int64()
  external int BytesToGrow;
}

class DISK_PERFORMANCE extends Struct {
  @Int64()
  external int BytesRead;
  @Int64()
  external int BytesWritten;
  @Int64()
  external int ReadTime;
  @Int64()
  external int WriteTime;
  @Int64()
  external int IdleTime;
  @Uint32()
  external int ReadCount;
  @Uint32()
  external int WriteCount;
  @Uint32()
  external int QueueDepth;
  @Uint32()
  external int SplitCount;
  @Int64()
  external int QueryTime;
  @Uint32()
  external int StorageDeviceNumber;
  @Array(8)
  external Array<Uint16> StorageManagerName;
}

class GET_DISK_ATTRIBUTES extends Struct {
  @Uint32()
  external int Version;
  @Uint32()
  external int Reserved1;
  @Uint64()
  external int Attributes;
}

class SET_DISK_ATTRIBUTES extends Struct {
  @Uint32()
  external int Version;
  @Uint8()
  external int Persist;
  @Array(3)
  external Array<Uint8> Reserved1;
  @Uint64()
  external int Attributes;
  @Uint64()
  external int AttributesMask;
  @Array(4)
  external Array<Uint32> Reserved2;
}

class NTFS_VOLUME_DATA_BUFFER extends Struct {
  @Int64()
  external int VolumeSerialNumber;
  @Int64()
  external int NumberSectors;
  @Int64()
  external int TotalClusters;
  @Int64()
  external int FreeClusters;
  @Int64()
  external int TotalReserved;
  @Uint32()
  external int BytesPerSector;
  @Uint32()
  external int BytesPerCluster;
  @Uint32()
  external int BytesPerFileRecordSegment;
  @Uint32()
  external int ClustersPerFileRecordSegment;
  @Int64()
  external int MftValidDataLength;
  @Int64()
  external int MftStartLcn;
  @Int64()
  external int Mft2StartLcn;
  @Int64()
  external int MftZoneStart;
  @Int64()
  external int MftZoneEnd;
}

class NTFS_EXTENDED_VOLUME_DATA extends Struct {
  @Uint32()
  external int ByteCount;
  @Uint16()
  external int MajorVersion;
  @Uint16()
  external int MinorVersion;
  @Uint32()
  external int BytesPerPhysicalSector;
  @Uint16()
  external int LfsMajorVersion;
  @Uint16()
  external int LfsMinorVersion;
  @Uint32()
  external int MaxDeviceTrimExtentCount;
  @Uint32()
  external int MaxDeviceTrimByteCount;
  @Uint32()
  external int MaxVolumeTrimExtentCount;
  @Uint32()
  external int MaxVolumeTrimByteCount;
}

class STARTING_LCN_INPUT_BUFFER extends Struct {
  @Int64()
  external int StartingLcn;
}

class VOLUME_BITMAP_BUFFER extends Struct {
  @Int64()
  external int StartingLcn;
  @Int64()
  external int BitmapSize;
  @Array(1)
  external Array<Uint8> Buffer;
}

class STARTING_VCN_INPUT_BUFFER extends Struct {
  @Int64()
  external int StartingVcn;
}

class RETRIEVAL_POINTERS_BUFFER extends Struct {
  @Uint32()
  external int ExtentCount;
  @Int64()
  external int StartingVcn;
  @Array(1)
  external Array<Uint32> Extents;
}

class NTFS_FILE_RECORD_INPUT_BUFFER extends Struct {
  @Int64()
  external int FileReferenceNumber;
}

class NTFS_FILE_RECORD_OUTPUT_BUFFER extends Struct {
  @Int64()
  external int FileReferenceNumber;
  @Uint32()
  external int FileRecordLength;
  @Array(1)
  external Array<Uint8> FileRecordBuffer;
}

class MOVE_FILE_DATA extends Struct {
  @IntPtr()
  external int FileHandle;
  @Int64()
  external int StartingVcn;
  @Int64()
  external int StartingLcn;
  @Uint32()
  external int ClusterCount;
}

class FIND_BY_SID_DATA extends Struct {
  @Uint32()
  external int Restart;
  external SID Sid;
}

class FIND_BY_SID_OUTPUT extends Struct {
  @Uint32()
  external int NextEntryOffset;
  @Uint32()
  external int FileIndex;
  @Uint32()
  external int FileNameLength;
  @Array(1)
  external Array<Uint16> FileName;
}

class MFT_ENUM_DATA_V0 extends Struct {
  @Uint64()
  external int StartFileReferenceNumber;
  @Int64()
  external int LowUsn;
  @Int64()
  external int HighUsn;
}

class MFT_ENUM_DATA_V1 extends Struct {
  @Uint64()
  external int StartFileReferenceNumber;
  @Int64()
  external int LowUsn;
  @Int64()
  external int HighUsn;
  @Uint16()
  external int MinMajorVersion;
  @Uint16()
  external int MaxMajorVersion;
}

class CREATE_USN_JOURNAL_DATA extends Struct {
  @Uint64()
  external int MaximumSize;
  @Uint64()
  external int AllocationDelta;
}

class READ_FILE_USN_DATA extends Struct {
  @Uint16()
  external int MinMajorVersion;
  @Uint16()
  external int MaxMajorVersion;
}

class READ_USN_JOURNAL_DATA_V0 extends Struct {
  @Int64()
  external int StartUsn;
  @Uint32()
  external int ReasonMask;
  @Uint32()
  external int ReturnOnlyOnClose;
  @Uint64()
  external int Timeout;
  @Uint64()
  external int BytesToWaitFor;
  @Uint64()
  external int UsnJournalID;
}

class READ_USN_JOURNAL_DATA_V1 extends Struct {
  @Int64()
  external int StartUsn;
  @Uint32()
  external int ReasonMask;
  @Uint32()
  external int ReturnOnlyOnClose;
  @Uint64()
  external int Timeout;
  @Uint64()
  external int BytesToWaitFor;
  @Uint64()
  external int UsnJournalID;
  @Uint16()
  external int MinMajorVersion;
  @Uint16()
  external int MaxMajorVersion;
}

class USN_TRACK_MODIFIED_RANGES extends Struct {
  @Uint32()
  external int Flags;
  @Uint32()
  external int Unused;
  @Uint64()
  external int ChunkSize;
  @Int64()
  external int FileSizeThreshold;
}

class USN_RANGE_TRACK_OUTPUT extends Struct {
  @Int64()
  external int Usn;
}

class USN_RECORD_V2 extends Struct {
  @Uint32()
  external int RecordLength;
  @Uint16()
  external int MajorVersion;
  @Uint16()
  external int MinorVersion;
  @Uint64()
  external int FileReferenceNumber;
  @Uint64()
  external int ParentFileReferenceNumber;
  @Int64()
  external int Usn;
  @Int64()
  external int TimeStamp;
  @Uint32()
  external int Reason;
  @Uint32()
  external int SourceInfo;
  @Uint32()
  external int SecurityId;
  @Uint32()
  external int FileAttributes;
  @Uint16()
  external int FileNameLength;
  @Uint16()
  external int FileNameOffset;
  @Array(1)
  external Array<Uint16> FileName;
}

class USN_RECORD_V3 extends Struct {
  @Uint32()
  external int RecordLength;
  @Uint16()
  external int MajorVersion;
  @Uint16()
  external int MinorVersion;
  external FILE_ID_128 FileReferenceNumber;
  external FILE_ID_128 ParentFileReferenceNumber;
  @Int64()
  external int Usn;
  @Int64()
  external int TimeStamp;
  @Uint32()
  external int Reason;
  @Uint32()
  external int SourceInfo;
  @Uint32()
  external int SecurityId;
  @Uint32()
  external int FileAttributes;
  @Uint16()
  external int FileNameLength;
  @Uint16()
  external int FileNameOffset;
  @Array(1)
  external Array<Uint16> FileName;
}

class USN_RECORD_COMMON_HEADER extends Struct {
  @Uint32()
  external int RecordLength;
  @Uint16()
  external int MajorVersion;
  @Uint16()
  external int MinorVersion;
}

class USN_RECORD_EXTENT extends Struct {
  @Int64()
  external int Offset;
  @Int64()
  external int Length;
}

class USN_RECORD_V4 extends Struct {
  external USN_RECORD_COMMON_HEADER Header;
  external FILE_ID_128 FileReferenceNumber;
  external FILE_ID_128 ParentFileReferenceNumber;
  @Int64()
  external int Usn;
  @Uint32()
  external int Reason;
  @Uint32()
  external int SourceInfo;
  @Uint32()
  external int RemainingExtents;
  @Uint16()
  external int NumberOfExtents;
  @Uint16()
  external int ExtentSize;
  @Array(1)
  external Array<USN_RECORD_EXTENT> Extents;
}

class USN_JOURNAL_DATA_V0 extends Struct {
  @Uint64()
  external int UsnJournalID;
  @Int64()
  external int FirstUsn;
  @Int64()
  external int NextUsn;
  @Int64()
  external int LowestValidUsn;
  @Int64()
  external int MaxUsn;
  @Uint64()
  external int MaximumSize;
  @Uint64()
  external int AllocationDelta;
}

class USN_JOURNAL_DATA_V1 extends Struct {
  @Uint64()
  external int UsnJournalID;
  @Int64()
  external int FirstUsn;
  @Int64()
  external int NextUsn;
  @Int64()
  external int LowestValidUsn;
  @Int64()
  external int MaxUsn;
  @Uint64()
  external int MaximumSize;
  @Uint64()
  external int AllocationDelta;
  @Uint16()
  external int MinSupportedMajorVersion;
  @Uint16()
  external int MaxSupportedMajorVersion;
}

class USN_JOURNAL_DATA_V2 extends Struct {
  @Uint64()
  external int UsnJournalID;
  @Int64()
  external int FirstUsn;
  @Int64()
  external int NextUsn;
  @Int64()
  external int LowestValidUsn;
  @Int64()
  external int MaxUsn;
  @Uint64()
  external int MaximumSize;
  @Uint64()
  external int AllocationDelta;
  @Uint16()
  external int MinSupportedMajorVersion;
  @Uint16()
  external int MaxSupportedMajorVersion;
  @Uint32()
  external int Flags;
  @Uint64()
  external int RangeTrackChunkSize;
  @Int64()
  external int RangeTrackFileSizeThreshold;
}

class DELETE_USN_JOURNAL_DATA extends Struct {
  @Uint64()
  external int UsnJournalID;
  @Uint32()
  external int DeleteFlags;
}

class MARK_HANDLE_INFO extends Struct {
  @Uint32()
  external int Anonymous;
  @IntPtr()
  external int VolumeHandle;
  @Uint32()
  external int HandleInfo;
}

class MARK_HANDLE_INFO32 extends Struct {
  @Uint32()
  external int Anonymous;
  @Uint32()
  external int VolumeHandle;
  @Uint32()
  external int HandleInfo;
}

class FILESYSTEM_STATISTICS extends Struct {
  @Uint32()
  external int FileSystemType;
  @Uint16()
  external int Version;
  @Uint32()
  external int SizeOfCompleteStructure;
  @Uint32()
  external int UserFileReads;
  @Uint32()
  external int UserFileReadBytes;
  @Uint32()
  external int UserDiskReads;
  @Uint32()
  external int UserFileWrites;
  @Uint32()
  external int UserFileWriteBytes;
  @Uint32()
  external int UserDiskWrites;
  @Uint32()
  external int MetaDataReads;
  @Uint32()
  external int MetaDataReadBytes;
  @Uint32()
  external int MetaDataDiskReads;
  @Uint32()
  external int MetaDataWrites;
  @Uint32()
  external int MetaDataWriteBytes;
  @Uint32()
  external int MetaDataDiskWrites;
}

class FAT_STATISTICS extends Struct {
  @Uint32()
  external int CreateHits;
  @Uint32()
  external int SuccessfulCreates;
  @Uint32()
  external int FailedCreates;
  @Uint32()
  external int NonCachedReads;
  @Uint32()
  external int NonCachedReadBytes;
  @Uint32()
  external int NonCachedWrites;
  @Uint32()
  external int NonCachedWriteBytes;
  @Uint32()
  external int NonCachedDiskReads;
  @Uint32()
  external int NonCachedDiskWrites;
}

class EXFAT_STATISTICS extends Struct {
  @Uint32()
  external int CreateHits;
  @Uint32()
  external int SuccessfulCreates;
  @Uint32()
  external int FailedCreates;
  @Uint32()
  external int NonCachedReads;
  @Uint32()
  external int NonCachedReadBytes;
  @Uint32()
  external int NonCachedWrites;
  @Uint32()
  external int NonCachedWriteBytes;
  @Uint32()
  external int NonCachedDiskReads;
  @Uint32()
  external int NonCachedDiskWrites;
}

class NTFS_STATISTICS extends Struct {
  @Uint32()
  external int LogFileFullExceptions;
  @Uint32()
  external int OtherExceptions;
  @Uint32()
  external int MftReads;
  @Uint32()
  external int MftReadBytes;
  @Uint32()
  external int MftWrites;
  @Uint32()
  external int MftWriteBytes;
  @Uint32()
  external int MftWritesUserLevel;
  @Uint16()
  external int MftWritesFlushForLogFileFull;
  @Uint16()
  external int MftWritesLazyWriter;
  @Uint16()
  external int MftWritesUserRequest;
  @Uint32()
  external int Mft2Writes;
  @Uint32()
  external int Mft2WriteBytes;
  @Uint32()
  external int Mft2WritesUserLevel;
  @Uint16()
  external int Mft2WritesFlushForLogFileFull;
  @Uint16()
  external int Mft2WritesLazyWriter;
  @Uint16()
  external int Mft2WritesUserRequest;
  @Uint32()
  external int RootIndexReads;
  @Uint32()
  external int RootIndexReadBytes;
  @Uint32()
  external int RootIndexWrites;
  @Uint32()
  external int RootIndexWriteBytes;
  @Uint32()
  external int BitmapReads;
  @Uint32()
  external int BitmapReadBytes;
  @Uint32()
  external int BitmapWrites;
  @Uint32()
  external int BitmapWriteBytes;
  @Uint16()
  external int BitmapWritesFlushForLogFileFull;
  @Uint16()
  external int BitmapWritesLazyWriter;
  @Uint16()
  external int BitmapWritesUserRequest;
  @Uint32()
  external int BitmapWritesUserLevel;
  @Uint32()
  external int MftBitmapReads;
  @Uint32()
  external int MftBitmapReadBytes;
  @Uint32()
  external int MftBitmapWrites;
  @Uint32()
  external int MftBitmapWriteBytes;
  @Uint16()
  external int MftBitmapWritesFlushForLogFileFull;
  @Uint16()
  external int MftBitmapWritesLazyWriter;
  @Uint16()
  external int MftBitmapWritesUserRequest;
  @Uint32()
  external int MftBitmapWritesUserLevel;
  @Uint32()
  external int UserIndexReads;
  @Uint32()
  external int UserIndexReadBytes;
  @Uint32()
  external int UserIndexWrites;
  @Uint32()
  external int UserIndexWriteBytes;
  @Uint32()
  external int LogFileReads;
  @Uint32()
  external int LogFileReadBytes;
  @Uint32()
  external int LogFileWrites;
  @Uint32()
  external int LogFileWriteBytes;
  @Uint32()
  external int Allocate;
  @Uint32()
  external int DiskResourcesExhausted;
}

class FILESYSTEM_STATISTICS_EX extends Struct {
  @Uint32()
  external int FileSystemType;
  @Uint16()
  external int Version;
  @Uint32()
  external int SizeOfCompleteStructure;
  @Uint64()
  external int UserFileReads;
  @Uint64()
  external int UserFileReadBytes;
  @Uint64()
  external int UserDiskReads;
  @Uint64()
  external int UserFileWrites;
  @Uint64()
  external int UserFileWriteBytes;
  @Uint64()
  external int UserDiskWrites;
  @Uint64()
  external int MetaDataReads;
  @Uint64()
  external int MetaDataReadBytes;
  @Uint64()
  external int MetaDataDiskReads;
  @Uint64()
  external int MetaDataWrites;
  @Uint64()
  external int MetaDataWriteBytes;
  @Uint64()
  external int MetaDataDiskWrites;
}

class NTFS_STATISTICS_EX extends Struct {
  @Uint32()
  external int LogFileFullExceptions;
  @Uint32()
  external int OtherExceptions;
  @Uint64()
  external int MftReads;
  @Uint64()
  external int MftReadBytes;
  @Uint64()
  external int MftWrites;
  @Uint64()
  external int MftWriteBytes;
  @Uint32()
  external int MftWritesUserLevel;
  @Uint32()
  external int MftWritesFlushForLogFileFull;
  @Uint32()
  external int MftWritesLazyWriter;
  @Uint32()
  external int MftWritesUserRequest;
  @Uint64()
  external int Mft2Writes;
  @Uint64()
  external int Mft2WriteBytes;
  @Uint32()
  external int Mft2WritesUserLevel;
  @Uint32()
  external int Mft2WritesFlushForLogFileFull;
  @Uint32()
  external int Mft2WritesLazyWriter;
  @Uint32()
  external int Mft2WritesUserRequest;
  @Uint64()
  external int RootIndexReads;
  @Uint64()
  external int RootIndexReadBytes;
  @Uint64()
  external int RootIndexWrites;
  @Uint64()
  external int RootIndexWriteBytes;
  @Uint64()
  external int BitmapReads;
  @Uint64()
  external int BitmapReadBytes;
  @Uint64()
  external int BitmapWrites;
  @Uint64()
  external int BitmapWriteBytes;
  @Uint32()
  external int BitmapWritesFlushForLogFileFull;
  @Uint32()
  external int BitmapWritesLazyWriter;
  @Uint32()
  external int BitmapWritesUserRequest;
  @Uint32()
  external int BitmapWritesUserLevel;
  @Uint64()
  external int MftBitmapReads;
  @Uint64()
  external int MftBitmapReadBytes;
  @Uint64()
  external int MftBitmapWrites;
  @Uint64()
  external int MftBitmapWriteBytes;
  @Uint32()
  external int MftBitmapWritesFlushForLogFileFull;
  @Uint32()
  external int MftBitmapWritesLazyWriter;
  @Uint32()
  external int MftBitmapWritesUserRequest;
  @Uint32()
  external int MftBitmapWritesUserLevel;
  @Uint64()
  external int UserIndexReads;
  @Uint64()
  external int UserIndexReadBytes;
  @Uint64()
  external int UserIndexWrites;
  @Uint64()
  external int UserIndexWriteBytes;
  @Uint64()
  external int LogFileReads;
  @Uint64()
  external int LogFileReadBytes;
  @Uint64()
  external int LogFileWrites;
  @Uint64()
  external int LogFileWriteBytes;
  @Uint32()
  external int Allocate;
  @Uint32()
  external int DiskResourcesExhausted;
  @Uint64()
  external int VolumeTrimCount;
  @Uint64()
  external int VolumeTrimTime;
  @Uint64()
  external int VolumeTrimByteCount;
  @Uint64()
  external int FileLevelTrimCount;
  @Uint64()
  external int FileLevelTrimTime;
  @Uint64()
  external int FileLevelTrimByteCount;
  @Uint64()
  external int VolumeTrimSkippedCount;
  @Uint64()
  external int VolumeTrimSkippedByteCount;
  @Uint64()
  external int NtfsFillStatInfoFromMftRecordCalledCount;
  @Uint64()
  external int NtfsFillStatInfoFromMftRecordBailedBecauseOfAttributeListCount;
  @Uint64()
  external int
      NtfsFillStatInfoFromMftRecordBailedBecauseOfNonResReparsePointCount;
}

class FILE_OBJECTID_BUFFER extends Struct {
  @Array(16)
  external Array<Uint8> ObjectId;
  @Uint32()
  external int Anonymous;
}

class FILE_SET_SPARSE_BUFFER extends Struct {
  @Uint8()
  external int SetSparse;
}

class FILE_ZERO_DATA_INFORMATION extends Struct {
  @Int64()
  external int FileOffset;
  @Int64()
  external int BeyondFinalZero;
}

class FILE_ALLOCATED_RANGE_BUFFER extends Struct {
  @Int64()
  external int FileOffset;
  @Int64()
  external int Length;
}

class PLEX_READ_DATA_REQUEST extends Struct {
  @Int64()
  external int ByteOffset;
  @Uint32()
  external int ByteLength;
  @Uint32()
  external int PlexNumber;
}

class FILE_MAKE_COMPATIBLE_BUFFER extends Struct {
  @Uint8()
  external int CloseDisc;
}

class FILE_SET_DEFECT_MGMT_BUFFER extends Struct {
  @Uint8()
  external int Disable;
}

class FILE_QUERY_SPARING_BUFFER extends Struct {
  @Uint32()
  external int SparingUnitBytes;
  @Uint8()
  external int SoftwareSparing;
  @Uint32()
  external int TotalSpareBlocks;
  @Uint32()
  external int FreeSpareBlocks;
}

class FILE_QUERY_ON_DISK_VOL_INFO_BUFFER extends Struct {
  @Int64()
  external int DirectoryCount;
  @Int64()
  external int FileCount;
  @Uint16()
  external int FsFormatMajVersion;
  @Uint16()
  external int FsFormatMinVersion;
  @Array(12)
  external Array<Uint16> FsFormatName;
  @Int64()
  external int FormatTime;
  @Int64()
  external int LastUpdateTime;
  @Array(34)
  external Array<Uint16> CopyrightInfo;
  @Array(34)
  external Array<Uint16> AbstractInfo;
  @Array(34)
  external Array<Uint16> FormattingImplementationInfo;
  @Array(34)
  external Array<Uint16> LastModifyingImplementationInfo;
}

class SHRINK_VOLUME_INFORMATION extends Struct {
  @Uint32()
  external int ShrinkRequestType;
  @Uint64()
  external int Flags;
  @Int64()
  external int NewNumberOfSectors;
}

class TXFS_MODIFY_RM extends Struct {
  @Uint32()
  external int Flags;
  @Uint32()
  external int LogContainerCountMax;
  @Uint32()
  external int LogContainerCountMin;
  @Uint32()
  external int LogContainerCount;
  @Uint32()
  external int LogGrowthIncrement;
  @Uint32()
  external int LogAutoShrinkPercentage;
  @Uint64()
  external int Reserved;
  @Uint16()
  external int LoggingMode;
}

class TXFS_QUERY_RM_INFORMATION extends Struct {
  @Uint32()
  external int BytesRequired;
  @Uint64()
  external int TailLsn;
  @Uint64()
  external int CurrentLsn;
  @Uint64()
  external int ArchiveTailLsn;
  @Uint64()
  external int LogContainerSize;
  @Int64()
  external int HighestVirtualClock;
  @Uint32()
  external int LogContainerCount;
  @Uint32()
  external int LogContainerCountMax;
  @Uint32()
  external int LogContainerCountMin;
  @Uint32()
  external int LogGrowthIncrement;
  @Uint32()
  external int LogAutoShrinkPercentage;
  @Uint32()
  external int Flags;
  @Uint16()
  external int LoggingMode;
  @Uint16()
  external int Reserved;
  @Uint32()
  external int RmState;
  @Uint64()
  external int LogCapacity;
  @Uint64()
  external int LogFree;
  @Uint64()
  external int TopsSize;
  @Uint64()
  external int TopsUsed;
  @Uint64()
  external int TransactionCount;
  @Uint64()
  external int OnePCCount;
  @Uint64()
  external int TwoPCCount;
  @Uint64()
  external int NumberLogFileFull;
  @Uint64()
  external int OldestTransactionAge;
  external GUID RMName;
  @Uint32()
  external int TmLogPathOffset;
}

class TXFS_GET_METADATA_INFO_OUT extends Struct {
  @Uint32()
  external int TxfFileId;
  external GUID LockingTransaction;
  @Uint64()
  external int LastLsn;
  @Uint32()
  external int TransactionState;
}

class TXFS_LIST_TRANSACTION_LOCKED_FILES_ENTRY extends Struct {
  @Uint64()
  external int Offset;
  @Uint32()
  external int NameFlags;
  @Int64()
  external int FileId;
  @Uint32()
  external int Reserved1;
  @Uint32()
  external int Reserved2;
  @Int64()
  external int Reserved3;
  @Array(1)
  external Array<Uint16> FileName;
}

class TXFS_LIST_TRANSACTION_LOCKED_FILES extends Struct {
  external GUID KtmTransaction;
  @Uint64()
  external int NumberOfFiles;
  @Uint64()
  external int BufferSizeRequired;
  @Uint64()
  external int Offset;
}

class TXFS_LIST_TRANSACTIONS_ENTRY extends Struct {
  external GUID TransactionId;
  @Uint32()
  external int TransactionState;
  @Uint32()
  external int Reserved1;
  @Uint32()
  external int Reserved2;
  @Int64()
  external int Reserved3;
}

class TXFS_LIST_TRANSACTIONS extends Struct {
  @Uint64()
  external int NumberOfTransactions;
  @Uint64()
  external int BufferSizeRequired;
}

class TXFS_READ_BACKUP_INFORMATION_OUT extends Struct {
  @Uint32()
  external int Anonymous;
}

class TXFS_WRITE_BACKUP_INFORMATION extends Struct {
  @Array(1)
  external Array<Uint8> Buffer;
}

class TXFS_GET_TRANSACTED_VERSION extends Struct {
  @Uint32()
  external int ThisBaseVersion;
  @Uint32()
  external int LatestVersion;
  @Uint16()
  external int ThisMiniVersion;
  @Uint16()
  external int FirstMiniVersion;
  @Uint16()
  external int LatestMiniVersion;
}

class TXFS_SAVEPOINT_INFORMATION extends Struct {
  @IntPtr()
  external int KtmTransaction;
  @Uint32()
  external int ActionCode;
  @Uint32()
  external int SavepointId;
}

class TXFS_CREATE_MINIVERSION_INFO extends Struct {
  @Uint16()
  external int StructureVersion;
  @Uint16()
  external int StructureLength;
  @Uint32()
  external int BaseVersion;
  @Uint16()
  external int MiniVersion;
}

class TXFS_TRANSACTION_ACTIVE_INFO extends Struct {
  @Uint8()
  external int TransactionsActiveAtSnapshot;
}

class BOOT_AREA_INFO extends Struct {
  @Uint32()
  external int BootSectorCount;
  @Array(2)
  external Array<Uint32> BootSectors;
}

class RETRIEVAL_POINTER_BASE extends Struct {
  @Int64()
  external int FileAreaOffset;
}

class FILE_SYSTEM_RECOGNITION_INFORMATION extends Struct {
  @Array(9)
  external Array<Int8> FileSystem;
}

class REQUEST_OPLOCK_INPUT_BUFFER extends Struct {
  @Uint16()
  external int StructureVersion;
  @Uint16()
  external int StructureLength;
  @Uint32()
  external int RequestedOplockLevel;
  @Uint32()
  external int Flags;
}

class REQUEST_OPLOCK_OUTPUT_BUFFER extends Struct {
  @Uint16()
  external int StructureVersion;
  @Uint16()
  external int StructureLength;
  @Uint32()
  external int OriginalOplockLevel;
  @Uint32()
  external int NewOplockLevel;
  @Uint32()
  external int Flags;
  @Uint32()
  external int AccessMode;
  @Uint16()
  external int ShareMode;
}

class LOOKUP_STREAM_FROM_CLUSTER_INPUT extends Struct {
  @Uint32()
  external int Flags;
  @Uint32()
  external int NumberOfClusters;
  @Array(1)
  external Array<Int64> Cluster;
}

class LOOKUP_STREAM_FROM_CLUSTER_OUTPUT extends Struct {
  @Uint32()
  external int Offset;
  @Uint32()
  external int NumberOfMatches;
  @Uint32()
  external int BufferSizeRequired;
}

class LOOKUP_STREAM_FROM_CLUSTER_ENTRY extends Struct {
  @Uint32()
  external int OffsetToNext;
  @Uint32()
  external int Flags;
  @Int64()
  external int Reserved;
  @Int64()
  external int Cluster;
  @Array(1)
  external Array<Uint16> FileName;
}

class CSV_NAMESPACE_INFO extends Struct {
  @Uint32()
  external int Version;
  @Uint32()
  external int DeviceNumber;
  @Int64()
  external int StartingOffset;
  @Uint32()
  external int SectorSize;
}

class CSV_CONTROL_PARAM extends Struct {
  @Uint32()
  external int Operation;
  @Int64()
  external int Unused;
}

class CSV_QUERY_REDIRECT_STATE extends Struct {
  @Uint32()
  external int MdsNodeId;
  @Uint32()
  external int DsNodeId;
  @Uint8()
  external int FileRedirected;
}

class CSV_QUERY_FILE_REVISION extends Struct {
  @Int64()
  external int FileId;
  @Array(3)
  external Array<Int64> FileRevision;
}

class CSV_QUERY_MDS_PATH extends Struct {
  @Uint32()
  external int MdsNodeId;
  @Uint32()
  external int DsNodeId;
  @Uint32()
  external int PathLength;
  @Array(1)
  external Array<Uint16> Path;
}

class CSV_QUERY_VETO_FILE_DIRECT_IO_OUTPUT extends Struct {
  @Uint64()
  external int VetoedFromAltitudeIntegral;
  @Uint64()
  external int VetoedFromAltitudeDecimal;
  @Array(129)
  external Array<Uint16> Reason;
}

class CSV_IS_OWNED_BY_CSVFS extends Struct {
  @Uint8()
  external int OwnedByCSVFS;
}

class FILE_LEVEL_TRIM_RANGE extends Struct {
  @Uint64()
  external int Offset;
  @Uint64()
  external int Length;
}

class FILE_LEVEL_TRIM extends Struct {
  @Uint32()
  external int Key;
  @Uint32()
  external int NumRanges;
  @Array(1)
  external Array<FILE_LEVEL_TRIM_RANGE> Ranges;
}

class FILE_LEVEL_TRIM_OUTPUT extends Struct {
  @Uint32()
  external int NumRangesProcessed;
}

class FSCTL_GET_INTEGRITY_INFORMATION_BUFFER extends Struct {
  @Uint16()
  external int ChecksumAlgorithm;
  @Uint16()
  external int Reserved;
  @Uint32()
  external int Flags;
  @Uint32()
  external int ChecksumChunkSizeInBytes;
  @Uint32()
  external int ClusterSizeInBytes;
}

class FSCTL_SET_INTEGRITY_INFORMATION_BUFFER extends Struct {
  @Uint16()
  external int ChecksumAlgorithm;
  @Uint16()
  external int Reserved;
  @Uint32()
  external int Flags;
}

class REPAIR_COPIES_INPUT extends Struct {
  @Uint32()
  external int Size;
  @Uint32()
  external int Flags;
  @Int64()
  external int FileOffset;
  @Uint32()
  external int Length;
  @Uint32()
  external int SourceCopy;
  @Uint32()
  external int NumberOfRepairCopies;
  @Array(1)
  external Array<Uint32> RepairCopies;
}

class REPAIR_COPIES_OUTPUT extends Struct {
  @Uint32()
  external int Size;
  @Uint32()
  external int Status;
  @Int64()
  external int ResumeFileOffset;
}

class FILE_STORAGE_TIER extends Struct {
  external GUID Id;
  @Array(129)
  external Array<Uint16> Name;
  @Array(129)
  external Array<Uint16> Description;
  @Uint32()
  external int Flags;
  @Uint64()
  external int ProvisionedCapacity;
  @Uint32()
  external int MediaType;
  @Uint32()
  external int Class;
}

class FSCTL_QUERY_STORAGE_CLASSES_OUTPUT extends Struct {
  @Uint32()
  external int Version;
  @Uint32()
  external int Size;
  @Uint32()
  external int Flags;
  @Uint32()
  external int TotalNumberOfTiers;
  @Uint32()
  external int NumberOfTiersReturned;
  @Array(1)
  external Array<FILE_STORAGE_TIER> Tiers;
}

class FSCTL_QUERY_REGION_INFO_INPUT extends Struct {
  @Uint32()
  external int Version;
  @Uint32()
  external int Size;
  @Uint32()
  external int Flags;
  @Uint32()
  external int NumberOfTierIds;
  @Array(1)
  external Array<GUID> TierIds;
}

class FILE_STORAGE_TIER_REGION extends Struct {
  external GUID TierId;
  @Uint64()
  external int Offset;
  @Uint64()
  external int Length;
}

class FSCTL_QUERY_REGION_INFO_OUTPUT extends Struct {
  @Uint32()
  external int Version;
  @Uint32()
  external int Size;
  @Uint32()
  external int Flags;
  @Uint32()
  external int Reserved;
  @Uint64()
  external int Alignment;
  @Uint32()
  external int TotalNumberOfRegions;
  @Uint32()
  external int NumberOfRegionsReturned;
  @Array(1)
  external Array<FILE_STORAGE_TIER_REGION> Regions;
}

class DUPLICATE_EXTENTS_DATA extends Struct {
  @IntPtr()
  external int FileHandle;
  @Int64()
  external int SourceFileOffset;
  @Int64()
  external int TargetFileOffset;
  @Int64()
  external int ByteCount;
}

class DISK_EXTENT extends Struct {
  @Uint32()
  external int DiskNumber;
  @Int64()
  external int StartingOffset;
  @Int64()
  external int ExtentLength;
}

class VOLUME_DISK_EXTENTS extends Struct {
  @Uint32()
  external int NumberOfDiskExtents;
  @Array(1)
  external Array<DISK_EXTENT> Extents;
}

class VOLUME_GET_GPT_ATTRIBUTES_INFORMATION extends Struct {
  @Uint64()
  external int GptAttributes;
}

class TRANSACTION_NOTIFICATION extends Struct {
  external Pointer TransactionKey;
  @Uint32()
  external int TransactionNotification;
  @Int64()
  external int TmVirtualClock;
  @Uint32()
  external int ArgumentLength;
}

class TRANSACTION_NOTIFICATION_RECOVERY_ARGUMENT extends Struct {
  external GUID EnlistmentId;
  external GUID UOW;
}

class TRANSACTION_NOTIFICATION_TM_ONLINE_ARGUMENT extends Struct {
  external GUID TmIdentity;
  @Uint32()
  external int Flags;
}

class TRANSACTION_NOTIFICATION_SAVEPOINT_ARGUMENT extends Struct {
  @Uint32()
  external int SavepointId;
}

class TRANSACTION_NOTIFICATION_PROPAGATE_ARGUMENT extends Struct {
  @Uint32()
  external int PropagationCookie;
  external GUID UOW;
  external GUID TmIdentity;
  @Uint32()
  external int BufferLength;
}

class TRANSACTION_NOTIFICATION_MARSHAL_ARGUMENT extends Struct {
  @Uint32()
  external int MarshalCookie;
  external GUID UOW;
}

class KCRM_MARSHAL_HEADER extends Struct {
  @Uint32()
  external int VersionMajor;
  @Uint32()
  external int VersionMinor;
  @Uint32()
  external int NumProtocols;
  @Uint32()
  external int Unused;
}

class KCRM_TRANSACTION_BLOB extends Struct {
  external GUID UOW;
  external GUID TmIdentity;
  @Uint32()
  external int IsolationLevel;
  @Uint32()
  external int IsolationFlags;
  @Uint32()
  external int Timeout;
  @Array(64)
  external Array<Uint16> Description;
}

class KCRM_PROTOCOL_BLOB extends Struct {
  external GUID ProtocolId;
  @Uint32()
  external int StaticInfoLength;
  @Uint32()
  external int TransactionIdInfoLength;
  @Uint32()
  external int Unused1;
  @Uint32()
  external int Unused2;
}

class DISK_SPACE_INFORMATION extends Struct {
  @Uint64()
  external int ActualTotalAllocationUnits;
  @Uint64()
  external int ActualAvailableAllocationUnits;
  @Uint64()
  external int ActualPoolUnavailableAllocationUnits;
  @Uint64()
  external int CallerTotalAllocationUnits;
  @Uint64()
  external int CallerAvailableAllocationUnits;
  @Uint64()
  external int CallerPoolUnavailableAllocationUnits;
  @Uint64()
  external int UsedAllocationUnits;
  @Uint64()
  external int TotalReservedAllocationUnits;
  @Uint64()
  external int VolumeStorageReserveAllocationUnits;
  @Uint64()
  external int AvailableCommittedAllocationUnits;
  @Uint64()
  external int PoolAvailableAllocationUnits;
  @Uint32()
  external int SectorsPerAllocationUnit;
  @Uint32()
  external int BytesPerSector;
}

class WIN32_FILE_ATTRIBUTE_DATA extends Struct {
  @Uint32()
  external int dwFileAttributes;
  external FILETIME ftCreationTime;
  external FILETIME ftLastAccessTime;
  external FILETIME ftLastWriteTime;
  @Uint32()
  external int nFileSizeHigh;
  @Uint32()
  external int nFileSizeLow;
}

class BY_HANDLE_FILE_INFORMATION extends Struct {
  @Uint32()
  external int dwFileAttributes;
  external FILETIME ftCreationTime;
  external FILETIME ftLastAccessTime;
  external FILETIME ftLastWriteTime;
  @Uint32()
  external int dwVolumeSerialNumber;
  @Uint32()
  external int nFileSizeHigh;
  @Uint32()
  external int nFileSizeLow;
  @Uint32()
  external int nNumberOfLinks;
  @Uint32()
  external int nFileIndexHigh;
  @Uint32()
  external int nFileIndexLow;
}

class CREATEFILE2_EXTENDED_PARAMETERS extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int dwFileAttributes;
  @Uint32()
  external int dwFileFlags;
  @Uint32()
  external int dwSecurityQosFlags;
  external Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes;
  @IntPtr()
  external int hTemplateFile;
}

class WIN32_FIND_STREAM_DATA extends Struct {
  @Int64()
  external int StreamSize;
  @Array(129)
  external Array<Uint16> cStreamName;
}

class NTMS_ASYNC_IO extends Struct {
  external GUID OperationId;
  external GUID EventId;
  @Uint32()
  external int dwOperationType;
  @Uint32()
  external int dwResult;
  @Uint32()
  external int dwAsyncState;
  @IntPtr()
  external int hEvent;
  @Int32()
  external int bOnStateChange;
}

class NTMS_MOUNT_INFORMATION extends Struct {
  @Uint32()
  external int dwSize;
  external Pointer lpReserved;
}

class NTMS_ALLOCATION_INFORMATION extends Struct {
  @Uint32()
  external int dwSize;
  external Pointer lpReserved;
  external GUID AllocatedFrom;
}

class NTMS_DRIVEINFORMATIONA extends Struct {
  @Uint32()
  external int Number;
  @Uint32()
  external int State;
  external GUID DriveType;
  @Array(64)
  external Array<Int8> szDeviceName;
  @Array(32)
  external Array<Int8> szSerialNumber;
  @Array(32)
  external Array<Int8> szRevision;
  @Uint16()
  external int ScsiPort;
  @Uint16()
  external int ScsiBus;
  @Uint16()
  external int ScsiTarget;
  @Uint16()
  external int ScsiLun;
  @Uint32()
  external int dwMountCount;
  external SYSTEMTIME LastCleanedTs;
  external GUID SavedPartitionId;
  external GUID Library;
  external GUID Reserved;
  @Uint32()
  external int dwDeferDismountDelay;
}

class NTMS_DRIVEINFORMATIONW extends Struct {
  @Uint32()
  external int Number;
  @Uint32()
  external int State;
  external GUID DriveType;
  @Array(64)
  external Array<Uint16> szDeviceName;
  @Array(32)
  external Array<Uint16> szSerialNumber;
  @Array(32)
  external Array<Uint16> szRevision;
  @Uint16()
  external int ScsiPort;
  @Uint16()
  external int ScsiBus;
  @Uint16()
  external int ScsiTarget;
  @Uint16()
  external int ScsiLun;
  @Uint32()
  external int dwMountCount;
  external SYSTEMTIME LastCleanedTs;
  external GUID SavedPartitionId;
  external GUID Library;
  external GUID Reserved;
  @Uint32()
  external int dwDeferDismountDelay;
}

class NTMS_LIBRARYINFORMATION extends Struct {
  @Uint32()
  external int LibraryType;
  external GUID CleanerSlot;
  external GUID CleanerSlotDefault;
  @Int32()
  external int LibrarySupportsDriveCleaning;
  @Int32()
  external int BarCodeReaderInstalled;
  @Uint32()
  external int InventoryMethod;
  @Uint32()
  external int dwCleanerUsesRemaining;
  @Uint32()
  external int FirstDriveNumber;
  @Uint32()
  external int dwNumberOfDrives;
  @Uint32()
  external int FirstSlotNumber;
  @Uint32()
  external int dwNumberOfSlots;
  @Uint32()
  external int FirstDoorNumber;
  @Uint32()
  external int dwNumberOfDoors;
  @Uint32()
  external int FirstPortNumber;
  @Uint32()
  external int dwNumberOfPorts;
  @Uint32()
  external int FirstChangerNumber;
  @Uint32()
  external int dwNumberOfChangers;
  @Uint32()
  external int dwNumberOfMedia;
  @Uint32()
  external int dwNumberOfMediaTypes;
  @Uint32()
  external int dwNumberOfLibRequests;
  external GUID Reserved;
  @Int32()
  external int AutoRecovery;
  @Uint32()
  external int dwFlags;
}

class NTMS_CHANGERINFORMATIONA extends Struct {
  @Uint32()
  external int Number;
  external GUID ChangerType;
  @Array(32)
  external Array<Int8> szSerialNumber;
  @Array(32)
  external Array<Int8> szRevision;
  @Array(64)
  external Array<Int8> szDeviceName;
  @Uint16()
  external int ScsiPort;
  @Uint16()
  external int ScsiBus;
  @Uint16()
  external int ScsiTarget;
  @Uint16()
  external int ScsiLun;
  external GUID Library;
}

class NTMS_CHANGERINFORMATIONW extends Struct {
  @Uint32()
  external int Number;
  external GUID ChangerType;
  @Array(32)
  external Array<Uint16> szSerialNumber;
  @Array(32)
  external Array<Uint16> szRevision;
  @Array(64)
  external Array<Uint16> szDeviceName;
  @Uint16()
  external int ScsiPort;
  @Uint16()
  external int ScsiBus;
  @Uint16()
  external int ScsiTarget;
  @Uint16()
  external int ScsiLun;
  external GUID Library;
}

class NTMS_STORAGESLOTINFORMATION extends Struct {
  @Uint32()
  external int Number;
  @Uint32()
  external int State;
  external GUID Library;
}

class NTMS_IEDOORINFORMATION extends Struct {
  @Uint32()
  external int Number;
  @Uint32()
  external int State;
  @Uint16()
  external int MaxOpenSecs;
  external GUID Library;
}

class NTMS_IEPORTINFORMATION extends Struct {
  @Uint32()
  external int Number;
  @Uint32()
  external int Content;
  @Uint32()
  external int Position;
  @Uint16()
  external int MaxExtendSecs;
  external GUID Library;
}

class NTMS_PMIDINFORMATIONA extends Struct {
  external GUID CurrentLibrary;
  external GUID MediaPool;
  external GUID Location;
  @Uint32()
  external int LocationType;
  external GUID MediaType;
  external GUID HomeSlot;
  @Array(64)
  external Array<Int8> szBarCode;
  @Uint32()
  external int BarCodeState;
  @Array(32)
  external Array<Int8> szSequenceNumber;
  @Uint32()
  external int MediaState;
  @Uint32()
  external int dwNumberOfPartitions;
  @Uint32()
  external int dwMediaTypeCode;
  @Uint32()
  external int dwDensityCode;
  external GUID MountedPartition;
}

class NTMS_PMIDINFORMATIONW extends Struct {
  external GUID CurrentLibrary;
  external GUID MediaPool;
  external GUID Location;
  @Uint32()
  external int LocationType;
  external GUID MediaType;
  external GUID HomeSlot;
  @Array(64)
  external Array<Uint16> szBarCode;
  @Uint32()
  external int BarCodeState;
  @Array(32)
  external Array<Uint16> szSequenceNumber;
  @Uint32()
  external int MediaState;
  @Uint32()
  external int dwNumberOfPartitions;
  @Uint32()
  external int dwMediaTypeCode;
  @Uint32()
  external int dwDensityCode;
  external GUID MountedPartition;
}

class NTMS_LMIDINFORMATION extends Struct {
  external GUID MediaPool;
  @Uint32()
  external int dwNumberOfPartitions;
}

class NTMS_PARTITIONINFORMATIONA extends Struct {
  external GUID PhysicalMedia;
  external GUID LogicalMedia;
  @Uint32()
  external int State;
  @Uint16()
  external int Side;
  @Uint32()
  external int dwOmidLabelIdLength;
  @Array(128)
  external Array<Uint8> OmidLabelId;
  @Array(64)
  external Array<Int8> szOmidLabelType;
  @Array(129)
  external Array<Int8> szOmidLabelInfo;
  @Uint32()
  external int dwMountCount;
  @Uint32()
  external int dwAllocateCount;
  @Int64()
  external int Capacity;
}

class NTMS_PARTITIONINFORMATIONW extends Struct {
  external GUID PhysicalMedia;
  external GUID LogicalMedia;
  @Uint32()
  external int State;
  @Uint16()
  external int Side;
  @Uint32()
  external int dwOmidLabelIdLength;
  @Array(128)
  external Array<Uint8> OmidLabelId;
  @Array(64)
  external Array<Uint16> szOmidLabelType;
  @Array(129)
  external Array<Uint16> szOmidLabelInfo;
  @Uint32()
  external int dwMountCount;
  @Uint32()
  external int dwAllocateCount;
  @Int64()
  external int Capacity;
}

class NTMS_MEDIAPOOLINFORMATION extends Struct {
  @Uint32()
  external int PoolType;
  external GUID MediaType;
  external GUID Parent;
  @Uint32()
  external int AllocationPolicy;
  @Uint32()
  external int DeallocationPolicy;
  @Uint32()
  external int dwMaxAllocates;
  @Uint32()
  external int dwNumberOfPhysicalMedia;
  @Uint32()
  external int dwNumberOfLogicalMedia;
  @Uint32()
  external int dwNumberOfMediaPools;
}

class NTMS_MEDIATYPEINFORMATION extends Struct {
  @Uint32()
  external int MediaType;
  @Uint32()
  external int NumberOfSides;
  @Uint32()
  external int ReadWriteCharacteristics;
  @Uint32()
  external int DeviceType;
}

class NTMS_DRIVETYPEINFORMATIONA extends Struct {
  @Array(128)
  external Array<Int8> szVendor;
  @Array(128)
  external Array<Int8> szProduct;
  @Uint32()
  external int NumberOfHeads;
  @Uint32()
  external int DeviceType;
}

class NTMS_DRIVETYPEINFORMATIONW extends Struct {
  @Array(128)
  external Array<Uint16> szVendor;
  @Array(128)
  external Array<Uint16> szProduct;
  @Uint32()
  external int NumberOfHeads;
  @Uint32()
  external int DeviceType;
}

class NTMS_CHANGERTYPEINFORMATIONA extends Struct {
  @Array(128)
  external Array<Int8> szVendor;
  @Array(128)
  external Array<Int8> szProduct;
  @Uint32()
  external int DeviceType;
}

class NTMS_CHANGERTYPEINFORMATIONW extends Struct {
  @Array(128)
  external Array<Uint16> szVendor;
  @Array(128)
  external Array<Uint16> szProduct;
  @Uint32()
  external int DeviceType;
}

class NTMS_LIBREQUESTINFORMATIONA extends Struct {
  @Uint32()
  external int OperationCode;
  @Uint32()
  external int OperationOption;
  @Uint32()
  external int State;
  external GUID PartitionId;
  external GUID DriveId;
  external GUID PhysMediaId;
  external GUID Library;
  external GUID SlotId;
  external SYSTEMTIME TimeQueued;
  external SYSTEMTIME TimeCompleted;
  @Array(64)
  external Array<Int8> szApplication;
  @Array(64)
  external Array<Int8> szUser;
  @Array(64)
  external Array<Int8> szComputer;
  @Uint32()
  external int dwErrorCode;
  external GUID WorkItemId;
  @Uint32()
  external int dwPriority;
}

class NTMS_LIBREQUESTINFORMATIONW extends Struct {
  @Uint32()
  external int OperationCode;
  @Uint32()
  external int OperationOption;
  @Uint32()
  external int State;
  external GUID PartitionId;
  external GUID DriveId;
  external GUID PhysMediaId;
  external GUID Library;
  external GUID SlotId;
  external SYSTEMTIME TimeQueued;
  external SYSTEMTIME TimeCompleted;
  @Array(64)
  external Array<Uint16> szApplication;
  @Array(64)
  external Array<Uint16> szUser;
  @Array(64)
  external Array<Uint16> szComputer;
  @Uint32()
  external int dwErrorCode;
  external GUID WorkItemId;
  @Uint32()
  external int dwPriority;
}

class NTMS_OPREQUESTINFORMATIONA extends Struct {
  @Uint32()
  external int Request;
  external SYSTEMTIME Submitted;
  @Uint32()
  external int State;
  @Array(129)
  external Array<Int8> szMessage;
  @Uint32()
  external int Arg1Type;
  external GUID Arg1;
  @Uint32()
  external int Arg2Type;
  external GUID Arg2;
  @Array(64)
  external Array<Int8> szApplication;
  @Array(64)
  external Array<Int8> szUser;
  @Array(64)
  external Array<Int8> szComputer;
}

class NTMS_OPREQUESTINFORMATIONW extends Struct {
  @Uint32()
  external int Request;
  external SYSTEMTIME Submitted;
  @Uint32()
  external int State;
  @Array(129)
  external Array<Uint16> szMessage;
  @Uint32()
  external int Arg1Type;
  external GUID Arg1;
  @Uint32()
  external int Arg2Type;
  external GUID Arg2;
  @Array(64)
  external Array<Uint16> szApplication;
  @Array(64)
  external Array<Uint16> szUser;
  @Array(64)
  external Array<Uint16> szComputer;
}

class NTMS_COMPUTERINFORMATION extends Struct {
  @Uint32()
  external int dwLibRequestPurgeTime;
  @Uint32()
  external int dwOpRequestPurgeTime;
  @Uint32()
  external int dwLibRequestFlags;
  @Uint32()
  external int dwOpRequestFlags;
  @Uint32()
  external int dwMediaPoolPolicy;
}

class NTMS_OBJECTINFORMATIONA extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int dwType;
  external SYSTEMTIME Created;
  external SYSTEMTIME Modified;
  external GUID ObjectGuid;
  @Int32()
  external int Enabled;
  @Uint32()
  external int dwOperationalState;
  @Array(64)
  external Array<Int8> szName;
  @Array(127)
  external Array<Int8> szDescription;
  @Uint32()
  external int Info;
}

class NTMS_OBJECTINFORMATIONW extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int dwType;
  external SYSTEMTIME Created;
  external SYSTEMTIME Modified;
  external GUID ObjectGuid;
  @Int32()
  external int Enabled;
  @Uint32()
  external int dwOperationalState;
  @Array(64)
  external Array<Uint16> szName;
  @Array(127)
  external Array<Uint16> szDescription;
  @Uint32()
  external int Info;
}

class NTMS_I1_LIBRARYINFORMATION extends Struct {
  @Uint32()
  external int LibraryType;
  external GUID CleanerSlot;
  external GUID CleanerSlotDefault;
  @Int32()
  external int LibrarySupportsDriveCleaning;
  @Int32()
  external int BarCodeReaderInstalled;
  @Uint32()
  external int InventoryMethod;
  @Uint32()
  external int dwCleanerUsesRemaining;
  @Uint32()
  external int FirstDriveNumber;
  @Uint32()
  external int dwNumberOfDrives;
  @Uint32()
  external int FirstSlotNumber;
  @Uint32()
  external int dwNumberOfSlots;
  @Uint32()
  external int FirstDoorNumber;
  @Uint32()
  external int dwNumberOfDoors;
  @Uint32()
  external int FirstPortNumber;
  @Uint32()
  external int dwNumberOfPorts;
  @Uint32()
  external int FirstChangerNumber;
  @Uint32()
  external int dwNumberOfChangers;
  @Uint32()
  external int dwNumberOfMedia;
  @Uint32()
  external int dwNumberOfMediaTypes;
  @Uint32()
  external int dwNumberOfLibRequests;
  external GUID Reserved;
}

class NTMS_I1_LIBREQUESTINFORMATIONA extends Struct {
  @Uint32()
  external int OperationCode;
  @Uint32()
  external int OperationOption;
  @Uint32()
  external int State;
  external GUID PartitionId;
  external GUID DriveId;
  external GUID PhysMediaId;
  external GUID Library;
  external GUID SlotId;
  external SYSTEMTIME TimeQueued;
  external SYSTEMTIME TimeCompleted;
  @Array(64)
  external Array<Int8> szApplication;
  @Array(64)
  external Array<Int8> szUser;
  @Array(64)
  external Array<Int8> szComputer;
}

class NTMS_I1_LIBREQUESTINFORMATIONW extends Struct {
  @Uint32()
  external int OperationCode;
  @Uint32()
  external int OperationOption;
  @Uint32()
  external int State;
  external GUID PartitionId;
  external GUID DriveId;
  external GUID PhysMediaId;
  external GUID Library;
  external GUID SlotId;
  external SYSTEMTIME TimeQueued;
  external SYSTEMTIME TimeCompleted;
  @Array(64)
  external Array<Uint16> szApplication;
  @Array(64)
  external Array<Uint16> szUser;
  @Array(64)
  external Array<Uint16> szComputer;
}

class NTMS_I1_PMIDINFORMATIONA extends Struct {
  external GUID CurrentLibrary;
  external GUID MediaPool;
  external GUID Location;
  @Uint32()
  external int LocationType;
  external GUID MediaType;
  external GUID HomeSlot;
  @Array(64)
  external Array<Int8> szBarCode;
  @Uint32()
  external int BarCodeState;
  @Array(32)
  external Array<Int8> szSequenceNumber;
  @Uint32()
  external int MediaState;
  @Uint32()
  external int dwNumberOfPartitions;
}

class NTMS_I1_PMIDINFORMATIONW extends Struct {
  external GUID CurrentLibrary;
  external GUID MediaPool;
  external GUID Location;
  @Uint32()
  external int LocationType;
  external GUID MediaType;
  external GUID HomeSlot;
  @Array(64)
  external Array<Uint16> szBarCode;
  @Uint32()
  external int BarCodeState;
  @Array(32)
  external Array<Uint16> szSequenceNumber;
  @Uint32()
  external int MediaState;
  @Uint32()
  external int dwNumberOfPartitions;
}

class NTMS_I1_PARTITIONINFORMATIONA extends Struct {
  external GUID PhysicalMedia;
  external GUID LogicalMedia;
  @Uint32()
  external int State;
  @Uint16()
  external int Side;
  @Uint32()
  external int dwOmidLabelIdLength;
  @Array(128)
  external Array<Uint8> OmidLabelId;
  @Array(64)
  external Array<Int8> szOmidLabelType;
  @Array(129)
  external Array<Int8> szOmidLabelInfo;
  @Uint32()
  external int dwMountCount;
  @Uint32()
  external int dwAllocateCount;
}

class NTMS_I1_PARTITIONINFORMATIONW extends Struct {
  external GUID PhysicalMedia;
  external GUID LogicalMedia;
  @Uint32()
  external int State;
  @Uint16()
  external int Side;
  @Uint32()
  external int dwOmidLabelIdLength;
  @Array(128)
  external Array<Uint8> OmidLabelId;
  @Array(64)
  external Array<Uint16> szOmidLabelType;
  @Array(129)
  external Array<Uint16> szOmidLabelInfo;
  @Uint32()
  external int dwMountCount;
  @Uint32()
  external int dwAllocateCount;
}

class NTMS_I1_OPREQUESTINFORMATIONA extends Struct {
  @Uint32()
  external int Request;
  external SYSTEMTIME Submitted;
  @Uint32()
  external int State;
  @Array(127)
  external Array<Int8> szMessage;
  @Uint32()
  external int Arg1Type;
  external GUID Arg1;
  @Uint32()
  external int Arg2Type;
  external GUID Arg2;
  @Array(64)
  external Array<Int8> szApplication;
  @Array(64)
  external Array<Int8> szUser;
  @Array(64)
  external Array<Int8> szComputer;
}

class NTMS_I1_OPREQUESTINFORMATIONW extends Struct {
  @Uint32()
  external int Request;
  external SYSTEMTIME Submitted;
  @Uint32()
  external int State;
  @Array(127)
  external Array<Uint16> szMessage;
  @Uint32()
  external int Arg1Type;
  external GUID Arg1;
  @Uint32()
  external int Arg2Type;
  external GUID Arg2;
  @Array(64)
  external Array<Uint16> szApplication;
  @Array(64)
  external Array<Uint16> szUser;
  @Array(64)
  external Array<Uint16> szComputer;
}

class NTMS_I1_OBJECTINFORMATIONA extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int dwType;
  external SYSTEMTIME Created;
  external SYSTEMTIME Modified;
  external GUID ObjectGuid;
  @Int32()
  external int Enabled;
  @Uint32()
  external int dwOperationalState;
  @Array(64)
  external Array<Int8> szName;
  @Array(127)
  external Array<Int8> szDescription;
  @Uint32()
  external int Info;
}

class NTMS_I1_OBJECTINFORMATIONW extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int dwType;
  external SYSTEMTIME Created;
  external SYSTEMTIME Modified;
  external GUID ObjectGuid;
  @Int32()
  external int Enabled;
  @Uint32()
  external int dwOperationalState;
  @Array(64)
  external Array<Uint16> szName;
  @Array(127)
  external Array<Uint16> szDescription;
  @Uint32()
  external int Info;
}

class NTMS_FILESYSTEM_INFO extends Struct {
  @Array(64)
  external Array<Uint16> FileSystemType;
  @Array(129)
  external Array<Uint16> VolumeName;
  @Uint32()
  external int SerialNumber;
}

class NTMS_NOTIFICATIONINFORMATION extends Struct {
  @Uint32()
  external int dwOperation;
  external GUID ObjectId;
}

class MediaLabelInfo extends Struct {
  @Array(64)
  external Array<Uint16> LabelType;
  @Uint32()
  external int LabelIDSize;
  @Array(129)
  external Array<Uint8> LabelID;
  @Array(129)
  external Array<Uint16> LabelAppDescr;
}

class CLS_LSN extends Struct {
  @Uint64()
  external int Internal;
}

class CLFS_NODE_ID extends Struct {
  @Uint32()
  external int cType;
  @Uint32()
  external int cbNode;
}

class CLS_WRITE_ENTRY extends Struct {
  external Pointer Buffer;
  @Uint32()
  external int ByteLength;
}

class CLS_INFORMATION extends Struct {
  @Int64()
  external int TotalAvailable;
  @Int64()
  external int CurrentAvailable;
  @Int64()
  external int TotalReservation;
  @Uint64()
  external int BaseFileSize;
  @Uint64()
  external int ContainerSize;
  @Uint32()
  external int TotalContainers;
  @Uint32()
  external int FreeContainers;
  @Uint32()
  external int TotalClients;
  @Uint32()
  external int Attributes;
  @Uint32()
  external int FlushThreshold;
  @Uint32()
  external int SectorSize;
  external CLS_LSN MinArchiveTailLsn;
  external CLS_LSN BaseLsn;
  external CLS_LSN LastFlushedLsn;
  external CLS_LSN LastLsn;
  external CLS_LSN RestartLsn;
  external GUID Identity;
}

class CLFS_LOG_NAME_INFORMATION extends Struct {
  @Uint16()
  external int NameLengthInBytes;
  @Array(1)
  external Array<Uint16> Name;
}

class CLFS_STREAM_ID_INFORMATION extends Struct {
  @Uint8()
  external int StreamIdentifier;
}

class CLFS_PHYSICAL_LSN_INFORMATION extends Struct {
  @Uint8()
  external int StreamIdentifier;
  external CLS_LSN VirtualLsn;
  external CLS_LSN PhysicalLsn;
}

class CLS_CONTAINER_INFORMATION extends Struct {
  @Uint32()
  external int FileAttributes;
  @Uint64()
  external int CreationTime;
  @Uint64()
  external int LastAccessTime;
  @Uint64()
  external int LastWriteTime;
  @Int64()
  external int ContainerSize;
  @Uint32()
  external int FileNameActualLength;
  @Uint32()
  external int FileNameLength;
  @Array(129)
  external Array<Uint16> FileName;
  @Uint32()
  external int State;
  @Uint32()
  external int PhysicalContainerId;
  @Uint32()
  external int LogicalContainerId;
}

class CLS_IO_STATISTICS_HEADER extends Struct {
  @Uint8()
  external int ubMajorVersion;
  @Uint8()
  external int ubMinorVersion;
  @Uint32()
  external int eStatsClass;
  @Uint16()
  external int cbLength;
  @Uint32()
  external int coffData;
}

class CLS_IO_STATISTICS extends Struct {
  external CLS_IO_STATISTICS_HEADER hdrIoStats;
  @Uint64()
  external int cFlush;
  @Uint64()
  external int cbFlush;
  @Uint64()
  external int cMetaFlush;
  @Uint64()
  external int cbMetaFlush;
}

class CLS_SCAN_CONTEXT extends Struct {
  external CLFS_NODE_ID cidNode;
  @IntPtr()
  external int hLog;
  @Uint32()
  external int cIndex;
  @Uint32()
  external int cContainers;
  @Uint32()
  external int cContainersReturned;
  @Uint8()
  external int eScanMode;
  external Pointer<CLS_CONTAINER_INFORMATION> pinfoContainer;
}

class CLS_ARCHIVE_DESCRIPTOR extends Struct {
  @Uint64()
  external int coffLow;
  @Uint64()
  external int coffHigh;
  external CLS_CONTAINER_INFORMATION infoContainer;
}

class CLFS_MGMT_POLICY extends Struct {
  @Uint32()
  external int Version;
  @Uint32()
  external int LengthInBytes;
  @Uint32()
  external int PolicyFlags;
  @Uint32()
  external int PolicyType;
  @Uint32()
  external int PolicyParameters;
}

class CLFS_MGMT_NOTIFICATION extends Struct {
  @Uint32()
  external int Notification;
  external CLS_LSN Lsn;
  @Uint16()
  external int LogIsPinned;
}

class LOG_MANAGEMENT_CALLBACKS extends Struct {
  external Pointer CallbackContext;
  external PLOG_TAIL_ADVANCE_CALLBACK AdvanceTailCallback;
  external PLOG_FULL_HANDLER_CALLBACK LogFullHandlerCallback;
  external PLOG_UNPINNED_CALLBACK LogUnpinnedCallback;
}

class DISKQUOTA_USER_INFORMATION extends Struct {
  @Int64()
  external int QuotaUsed;
  @Int64()
  external int QuotaThreshold;
  @Int64()
  external int QuotaLimit;
}

class EFS_CERTIFICATE_BLOB extends Struct {
  @Uint32()
  external int dwCertEncodingType;
  @Uint32()
  external int cbData;
  external Pointer<Uint8> pbData;
}

class EFS_HASH_BLOB extends Struct {
  @Uint32()
  external int cbData;
  external Pointer<Uint8> pbData;
}

class EFS_RPC_BLOB extends Struct {
  @Uint32()
  external int cbData;
  external Pointer<Uint8> pbData;
}

class EFS_PIN_BLOB extends Struct {
  @Uint32()
  external int cbPadding;
  @Uint32()
  external int cbData;
  external Pointer<Uint8> pbData;
}

class EFS_KEY_INFO extends Struct {
  @Uint32()
  external int dwVersion;
  @Uint32()
  external int Entropy;
  @Uint32()
  external int Algorithm;
  @Uint32()
  external int KeyLength;
}

class EFS_COMPATIBILITY_INFO extends Struct {
  @Uint32()
  external int EfsVersion;
}

class EFS_VERSION_INFO extends Struct {
  @Uint32()
  external int EfsVersion;
  @Uint32()
  external int SubVersion;
}

class EFS_DECRYPTION_STATUS_INFO extends Struct {
  @Uint32()
  external int dwDecryptionError;
  @Uint32()
  external int dwHashOffset;
  @Uint32()
  external int cbHash;
}

class EFS_ENCRYPTION_STATUS_INFO extends Struct {
  @Int32()
  external int bHasCurrentKey;
  @Uint32()
  external int dwEncryptionError;
}

class ENCRYPTION_CERTIFICATE extends Struct {
  @Uint32()
  external int cbTotalLength;
  external Pointer<SID> pUserSid;
  external Pointer<EFS_CERTIFICATE_BLOB> pCertBlob;
}

class ENCRYPTION_CERTIFICATE_HASH extends Struct {
  @Uint32()
  external int cbTotalLength;
  external Pointer<SID> pUserSid;
  external Pointer<EFS_HASH_BLOB> pHash;
  external Pointer<Utf16> lpDisplayInformation;
}

class ENCRYPTION_CERTIFICATE_HASH_LIST extends Struct {
  @Uint32()
  external int nCert_Hash;
  external Pointer<Pointer<ENCRYPTION_CERTIFICATE_HASH>> pUsers;
}

class ENCRYPTION_CERTIFICATE_LIST extends Struct {
  @Uint32()
  external int nUsers;
  external Pointer<Pointer<ENCRYPTION_CERTIFICATE>> pUsers;
}

class ENCRYPTED_FILE_METADATA_SIGNATURE extends Struct {
  @Uint32()
  external int dwEfsAccessType;
  external Pointer<ENCRYPTION_CERTIFICATE_HASH_LIST> pCertificatesAdded;
  external Pointer<ENCRYPTION_CERTIFICATE> pEncryptionCertificate;
  external Pointer<EFS_RPC_BLOB> pEfsStreamSignature;
}

class ENCRYPTION_PROTECTOR extends Struct {
  @Uint32()
  external int cbTotalLength;
  external Pointer<SID> pUserSid;
  external Pointer<Utf16> lpProtectorDescriptor;
}

class ENCRYPTION_PROTECTOR_LIST extends Struct {
  @Uint32()
  external int nProtectors;
  external Pointer<Pointer<ENCRYPTION_PROTECTOR>> pProtectors;
}

class WIM_ENTRY_INFO extends Struct {
  @Uint32()
  external int WimEntryInfoSize;
  @Uint32()
  external int WimType;
  @Int64()
  external int DataSourceId;
  external GUID WimGuid;
  external Pointer<Utf16> WimPath;
  @Uint32()
  external int WimIndex;
  @Uint32()
  external int Flags;
}

class WIM_EXTERNAL_FILE_INFO extends Struct {
  @Int64()
  external int DataSourceId;
  @Array(20)
  external Array<Uint8> ResourceHash;
  @Uint32()
  external int Flags;
}

class WOF_FILE_COMPRESSION_INFO_V0 extends Struct {
  @Uint32()
  external int Algorithm;
}

class WOF_FILE_COMPRESSION_INFO_V1 extends Struct {
  @Uint32()
  external int Algorithm;
  @Uint32()
  external int Flags;
}

class TXF_ID extends Struct {
  @Uint32()
  external int Anonymous;
}

class TXF_LOG_RECORD_BASE extends Struct {
  @Uint16()
  external int Version;
  @Uint32()
  external int RecordType;
  @Uint32()
  external int RecordLength;
}

class TXF_LOG_RECORD_WRITE extends Struct {
  @Uint16()
  external int Version;
  @Uint16()
  external int RecordType;
  @Uint32()
  external int RecordLength;
  @Uint32()
  external int Flags;
  external TXF_ID TxfFileId;
  external GUID KtmGuid;
  @Int64()
  external int ByteOffsetInFile;
  @Uint32()
  external int NumBytesWritten;
  @Uint32()
  external int ByteOffsetInStructure;
  @Uint32()
  external int FileNameLength;
  @Uint32()
  external int FileNameByteOffsetInStructure;
}

class TXF_LOG_RECORD_TRUNCATE extends Struct {
  @Uint16()
  external int Version;
  @Uint16()
  external int RecordType;
  @Uint32()
  external int RecordLength;
  @Uint32()
  external int Flags;
  external TXF_ID TxfFileId;
  external GUID KtmGuid;
  @Int64()
  external int NewFileSize;
  @Uint32()
  external int FileNameLength;
  @Uint32()
  external int FileNameByteOffsetInStructure;
}

class TXF_LOG_RECORD_AFFECTED_FILE extends Struct {
  @Uint16()
  external int Version;
  @Uint32()
  external int RecordLength;
  @Uint32()
  external int Flags;
  external TXF_ID TxfFileId;
  external GUID KtmGuid;
  @Uint32()
  external int FileNameLength;
  @Uint32()
  external int FileNameByteOffsetInStructure;
}

class VOLUME_FAILOVER_SET extends Struct {
  @Uint32()
  external int NumberOfDisks;
  @Array(1)
  external Array<Uint32> DiskNumbers;
}

class VOLUME_NUMBER extends Struct {
  @Uint32()
  external int VolumeNumber;
  @Array(8)
  external Array<Uint16> VolumeManagerName;
}

class VOLUME_LOGICAL_OFFSET extends Struct {
  @Int64()
  external int LogicalOffset;
}

class VOLUME_PHYSICAL_OFFSET extends Struct {
  @Uint32()
  external int DiskNumber;
  @Int64()
  external int Offset;
}

class VOLUME_PHYSICAL_OFFSETS extends Struct {
  @Uint32()
  external int NumberOfPhysicalOffsets;
  @Array(1)
  external Array<VOLUME_PHYSICAL_OFFSET> PhysicalOffset;
}

class VOLUME_READ_PLEX_INPUT extends Struct {
  @Int64()
  external int ByteOffset;
  @Uint32()
  external int Length;
  @Uint32()
  external int PlexNumber;
}

class VOLUME_SET_GPT_ATTRIBUTES_INFORMATION extends Struct {
  @Uint64()
  external int GptAttributes;
  @Uint8()
  external int RevertOnClose;
  @Uint8()
  external int ApplyToAllConnectedVolumes;
  @Uint16()
  external int Reserved1;
  @Uint32()
  external int Reserved2;
}

class VOLUME_GET_BC_PROPERTIES_INPUT extends Struct {
  @Uint32()
  external int Version;
  @Uint32()
  external int Reserved1;
  @Uint64()
  external int LowestByteOffset;
  @Uint64()
  external int HighestByteOffset;
  @Uint32()
  external int AccessType;
  @Uint32()
  external int AccessMode;
}

class VOLUME_GET_BC_PROPERTIES_OUTPUT extends Struct {
  @Uint32()
  external int MaximumRequestsPerPeriod;
  @Uint32()
  external int MinimumPeriod;
  @Uint64()
  external int MaximumRequestSize;
  @Uint32()
  external int EstimatedTimePerRequest;
  @Uint32()
  external int NumOutStandingRequests;
  @Uint64()
  external int RequestSize;
}

class VOLUME_ALLOCATE_BC_STREAM_INPUT extends Struct {
  @Uint32()
  external int Version;
  @Uint32()
  external int RequestsPerPeriod;
  @Uint32()
  external int Period;
  @Uint8()
  external int RetryFailures;
  @Uint8()
  external int Discardable;
  @Array(2)
  external Array<Uint8> Reserved1;
  @Uint64()
  external int LowestByteOffset;
  @Uint64()
  external int HighestByteOffset;
  @Uint32()
  external int AccessType;
  @Uint32()
  external int AccessMode;
}

class VOLUME_ALLOCATE_BC_STREAM_OUTPUT extends Struct {
  @Uint64()
  external int RequestSize;
  @Uint32()
  external int NumOutStandingRequests;
}

class FILE_EXTENT extends Struct {
  @Uint64()
  external int VolumeOffset;
  @Uint64()
  external int ExtentLength;
}

class VOLUME_CRITICAL_IO extends Struct {
  @Uint32()
  external int AccessType;
  @Uint32()
  external int ExtentsCount;
  @Array(1)
  external Array<FILE_EXTENT> Extents;
}

class VOLUME_ALLOCATION_HINT_INPUT extends Struct {
  @Uint32()
  external int ClusterSize;
  @Uint32()
  external int NumberOfClusters;
  @Int64()
  external int StartingClusterNumber;
}

class VOLUME_ALLOCATION_HINT_OUTPUT extends Struct {
  @Array(1)
  external Array<Uint32> Bitmap;
}

class VOLUME_SHRINK_INFO extends Struct {
  @Uint64()
  external int VolumeSize;
}

class SHARE_INFO_0 extends Struct {
  external Pointer<Utf16> shi0_netname;
}

class SHARE_INFO_1 extends Struct {
  external Pointer<Utf16> shi1_netname;
  @Uint32()
  external int shi1_type;
  external Pointer<Utf16> shi1_remark;
}

class SHARE_INFO_2 extends Struct {
  external Pointer<Utf16> shi2_netname;
  @Uint32()
  external int shi2_type;
  external Pointer<Utf16> shi2_remark;
  @Uint32()
  external int shi2_permissions;
  @Uint32()
  external int shi2_max_uses;
  @Uint32()
  external int shi2_current_uses;
  external Pointer<Utf16> shi2_path;
  external Pointer<Utf16> shi2_passwd;
}

class SHARE_INFO_501 extends Struct {
  external Pointer<Utf16> shi501_netname;
  @Uint32()
  external int shi501_type;
  external Pointer<Utf16> shi501_remark;
  @Uint32()
  external int shi501_flags;
}

class SHARE_INFO_502 extends Struct {
  external Pointer<Utf16> shi502_netname;
  @Uint32()
  external int shi502_type;
  external Pointer<Utf16> shi502_remark;
  @Uint32()
  external int shi502_permissions;
  @Uint32()
  external int shi502_max_uses;
  @Uint32()
  external int shi502_current_uses;
  external Pointer<Utf16> shi502_path;
  external Pointer<Utf16> shi502_passwd;
  @Uint32()
  external int shi502_reserved;
  external Pointer<SECURITY_DESCRIPTOR> shi502_security_descriptor;
}

class SHARE_INFO_503 extends Struct {
  external Pointer<Utf16> shi503_netname;
  @Uint32()
  external int shi503_type;
  external Pointer<Utf16> shi503_remark;
  @Uint32()
  external int shi503_permissions;
  @Uint32()
  external int shi503_max_uses;
  @Uint32()
  external int shi503_current_uses;
  external Pointer<Utf16> shi503_path;
  external Pointer<Utf16> shi503_passwd;
  external Pointer<Utf16> shi503_servername;
  @Uint32()
  external int shi503_reserved;
  external Pointer<SECURITY_DESCRIPTOR> shi503_security_descriptor;
}

class SHARE_INFO_1004 extends Struct {
  external Pointer<Utf16> shi1004_remark;
}

class SHARE_INFO_1005 extends Struct {
  @Uint32()
  external int shi1005_flags;
}

class SHARE_INFO_1006 extends Struct {
  @Uint32()
  external int shi1006_max_uses;
}

class SHARE_INFO_1501 extends Struct {
  @Uint32()
  external int shi1501_reserved;
  external Pointer<SECURITY_DESCRIPTOR> shi1501_security_descriptor;
}

class SHARE_INFO_1503 extends Struct {
  external GUID shi1503_sharefilter;
}

class SERVER_ALIAS_INFO_0 extends Struct {
  external Pointer<Utf16> srvai0_alias;
  external Pointer<Utf16> srvai0_target;
  @Uint8()
  external int srvai0_default;
  @Uint32()
  external int srvai0_reserved;
}

class SESSION_INFO_0 extends Struct {
  external Pointer<Utf16> sesi0_cname;
}

class SESSION_INFO_1 extends Struct {
  external Pointer<Utf16> sesi1_cname;
  external Pointer<Utf16> sesi1_username;
  @Uint32()
  external int sesi1_num_opens;
  @Uint32()
  external int sesi1_time;
  @Uint32()
  external int sesi1_idle_time;
  @Uint32()
  external int sesi1_user_flags;
}

class SESSION_INFO_2 extends Struct {
  external Pointer<Utf16> sesi2_cname;
  external Pointer<Utf16> sesi2_username;
  @Uint32()
  external int sesi2_num_opens;
  @Uint32()
  external int sesi2_time;
  @Uint32()
  external int sesi2_idle_time;
  @Uint32()
  external int sesi2_user_flags;
  external Pointer<Utf16> sesi2_cltype_name;
}

class SESSION_INFO_10 extends Struct {
  external Pointer<Utf16> sesi10_cname;
  external Pointer<Utf16> sesi10_username;
  @Uint32()
  external int sesi10_time;
  @Uint32()
  external int sesi10_idle_time;
}

class SESSION_INFO_502 extends Struct {
  external Pointer<Utf16> sesi502_cname;
  external Pointer<Utf16> sesi502_username;
  @Uint32()
  external int sesi502_num_opens;
  @Uint32()
  external int sesi502_time;
  @Uint32()
  external int sesi502_idle_time;
  @Uint32()
  external int sesi502_user_flags;
  external Pointer<Utf16> sesi502_cltype_name;
  external Pointer<Utf16> sesi502_transport;
}

class CONNECTION_INFO_0 extends Struct {
  @Uint32()
  external int coni0_id;
}

class CONNECTION_INFO_1 extends Struct {
  @Uint32()
  external int coni1_id;
  @Uint32()
  external int coni1_type;
  @Uint32()
  external int coni1_num_opens;
  @Uint32()
  external int coni1_num_users;
  @Uint32()
  external int coni1_time;
  external Pointer<Utf16> coni1_username;
  external Pointer<Utf16> coni1_netname;
}

class FILE_INFO_2 extends Struct {
  @Uint32()
  external int fi2_id;
}

class FILE_INFO_3 extends Struct {
  @Uint32()
  external int fi3_id;
  @Uint32()
  external int fi3_permissions;
  @Uint32()
  external int fi3_num_locks;
  external Pointer<Utf16> fi3_pathname;
  external Pointer<Utf16> fi3_username;
}

class SERVER_CERTIFICATE_INFO_0 extends Struct {
  external Pointer<Utf16> srvci0_name;
  external Pointer<Utf16> srvci0_subject;
  external Pointer<Utf16> srvci0_issuer;
  external Pointer<Utf16> srvci0_thumbprint;
  external Pointer<Utf16> srvci0_friendlyname;
  external Pointer<Utf16> srvci0_notbefore;
  external Pointer<Utf16> srvci0_notafter;
  external Pointer<Utf16> srvci0_storelocation;
  external Pointer<Utf16> srvci0_storename;
  @Uint32()
  external int srvci0_type;
}

class STAT_WORKSTATION_0 extends Struct {
  @Int64()
  external int StatisticsStartTime;
  @Int64()
  external int BytesReceived;
  @Int64()
  external int SmbsReceived;
  @Int64()
  external int PagingReadBytesRequested;
  @Int64()
  external int NonPagingReadBytesRequested;
  @Int64()
  external int CacheReadBytesRequested;
  @Int64()
  external int NetworkReadBytesRequested;
  @Int64()
  external int BytesTransmitted;
  @Int64()
  external int SmbsTransmitted;
  @Int64()
  external int PagingWriteBytesRequested;
  @Int64()
  external int NonPagingWriteBytesRequested;
  @Int64()
  external int CacheWriteBytesRequested;
  @Int64()
  external int NetworkWriteBytesRequested;
  @Uint32()
  external int InitiallyFailedOperations;
  @Uint32()
  external int FailedCompletionOperations;
  @Uint32()
  external int ReadOperations;
  @Uint32()
  external int RandomReadOperations;
  @Uint32()
  external int ReadSmbs;
  @Uint32()
  external int LargeReadSmbs;
  @Uint32()
  external int SmallReadSmbs;
  @Uint32()
  external int WriteOperations;
  @Uint32()
  external int RandomWriteOperations;
  @Uint32()
  external int WriteSmbs;
  @Uint32()
  external int LargeWriteSmbs;
  @Uint32()
  external int SmallWriteSmbs;
  @Uint32()
  external int RawReadsDenied;
  @Uint32()
  external int RawWritesDenied;
  @Uint32()
  external int NetworkErrors;
  @Uint32()
  external int Sessions;
  @Uint32()
  external int FailedSessions;
  @Uint32()
  external int Reconnects;
  @Uint32()
  external int CoreConnects;
  @Uint32()
  external int Lanman20Connects;
  @Uint32()
  external int Lanman21Connects;
  @Uint32()
  external int LanmanNtConnects;
  @Uint32()
  external int ServerDisconnects;
  @Uint32()
  external int HungSessions;
  @Uint32()
  external int UseCount;
  @Uint32()
  external int FailedUseCount;
  @Uint32()
  external int CurrentCommands;
}

class STAT_SERVER_0 extends Struct {
  @Uint32()
  external int sts0_start;
  @Uint32()
  external int sts0_fopens;
  @Uint32()
  external int sts0_devopens;
  @Uint32()
  external int sts0_jobsqueued;
  @Uint32()
  external int sts0_sopens;
  @Uint32()
  external int sts0_stimedout;
  @Uint32()
  external int sts0_serrorout;
  @Uint32()
  external int sts0_pwerrors;
  @Uint32()
  external int sts0_permerrors;
  @Uint32()
  external int sts0_syserrors;
  @Uint32()
  external int sts0_bytessent_low;
  @Uint32()
  external int sts0_bytessent_high;
  @Uint32()
  external int sts0_bytesrcvd_low;
  @Uint32()
  external int sts0_bytesrcvd_high;
  @Uint32()
  external int sts0_avresponse;
  @Uint32()
  external int sts0_reqbufneed;
  @Uint32()
  external int sts0_bigbufneed;
}

class OFSTRUCT extends Struct {
  @Uint8()
  external int cBytes;
  @Uint8()
  external int fFixedDisk;
  @Uint16()
  external int nErrCode;
  @Uint16()
  external int Reserved1;
  @Uint16()
  external int Reserved2;
  @Array(128)
  external Array<Int8> szPathName;
}

class COPYFILE2_MESSAGE extends Struct {
  @Uint32()
  external int Type;
  @Uint32()
  external int dwPadding;
  @Uint32()
  external int Info;
}

class COPYFILE2_EXTENDED_PARAMETERS extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int dwCopyFlags;
  external Pointer<Int32> pfCancel;
  external PCOPYFILE2_PROGRESS_ROUTINE pProgressRoutine;
  external Pointer pvCallbackContext;
}

class FILE_BASIC_INFO extends Struct {
  @Int64()
  external int CreationTime;
  @Int64()
  external int LastAccessTime;
  @Int64()
  external int LastWriteTime;
  @Int64()
  external int ChangeTime;
  @Uint32()
  external int FileAttributes;
}

class FILE_STANDARD_INFO extends Struct {
  @Int64()
  external int AllocationSize;
  @Int64()
  external int EndOfFile;
  @Uint32()
  external int NumberOfLinks;
  @Uint8()
  external int DeletePending;
  @Uint8()
  external int Directory;
}

class FILE_NAME_INFO extends Struct {
  @Uint32()
  external int FileNameLength;
  @Array(1)
  external Array<Uint16> FileName;
}

class FILE_RENAME_INFO extends Struct {
  @Uint32()
  external int Anonymous;
  @IntPtr()
  external int RootDirectory;
  @Uint32()
  external int FileNameLength;
  @Array(1)
  external Array<Uint16> FileName;
}

class FILE_ALLOCATION_INFO extends Struct {
  @Int64()
  external int AllocationSize;
}

class FILE_END_OF_FILE_INFO extends Struct {
  @Int64()
  external int EndOfFile;
}

class FILE_STREAM_INFO extends Struct {
  @Uint32()
  external int NextEntryOffset;
  @Uint32()
  external int StreamNameLength;
  @Int64()
  external int StreamSize;
  @Int64()
  external int StreamAllocationSize;
  @Array(1)
  external Array<Uint16> StreamName;
}

class FILE_COMPRESSION_INFO extends Struct {
  @Int64()
  external int CompressedFileSize;
  @Uint16()
  external int CompressionFormat;
  @Uint8()
  external int CompressionUnitShift;
  @Uint8()
  external int ChunkShift;
  @Uint8()
  external int ClusterShift;
  @Array(3)
  external Array<Uint8> Reserved;
}

class FILE_ATTRIBUTE_TAG_INFO extends Struct {
  @Uint32()
  external int FileAttributes;
  @Uint32()
  external int ReparseTag;
}

class FILE_DISPOSITION_INFO extends Struct {
  @Uint8()
  external int DeleteFileA;
}

class FILE_ID_BOTH_DIR_INFO extends Struct {
  @Uint32()
  external int NextEntryOffset;
  @Uint32()
  external int FileIndex;
  @Int64()
  external int CreationTime;
  @Int64()
  external int LastAccessTime;
  @Int64()
  external int LastWriteTime;
  @Int64()
  external int ChangeTime;
  @Int64()
  external int EndOfFile;
  @Int64()
  external int AllocationSize;
  @Uint32()
  external int FileAttributes;
  @Uint32()
  external int FileNameLength;
  @Uint32()
  external int EaSize;
  @Int8()
  external int ShortNameLength;
  @Array(12)
  external Array<Uint16> ShortName;
  @Int64()
  external int FileId;
  @Array(1)
  external Array<Uint16> FileName;
}

class FILE_FULL_DIR_INFO extends Struct {
  @Uint32()
  external int NextEntryOffset;
  @Uint32()
  external int FileIndex;
  @Int64()
  external int CreationTime;
  @Int64()
  external int LastAccessTime;
  @Int64()
  external int LastWriteTime;
  @Int64()
  external int ChangeTime;
  @Int64()
  external int EndOfFile;
  @Int64()
  external int AllocationSize;
  @Uint32()
  external int FileAttributes;
  @Uint32()
  external int FileNameLength;
  @Uint32()
  external int EaSize;
  @Array(1)
  external Array<Uint16> FileName;
}

class FILE_IO_PRIORITY_HINT_INFO extends Struct {
  @Uint32()
  external int PriorityHint;
}

class FILE_ALIGNMENT_INFO extends Struct {
  @Uint32()
  external int AlignmentRequirement;
}

class FILE_STORAGE_INFO extends Struct {
  @Uint32()
  external int LogicalBytesPerSector;
  @Uint32()
  external int PhysicalBytesPerSectorForAtomicity;
  @Uint32()
  external int PhysicalBytesPerSectorForPerformance;
  @Uint32()
  external int FileSystemEffectivePhysicalBytesPerSectorForAtomicity;
  @Uint32()
  external int Flags;
  @Uint32()
  external int ByteOffsetForSectorAlignment;
  @Uint32()
  external int ByteOffsetForPartitionAlignment;
}

class FILE_ID_INFO extends Struct {
  @Uint64()
  external int VolumeSerialNumber;
  external FILE_ID_128 FileId;
}

class FILE_ID_EXTD_DIR_INFO extends Struct {
  @Uint32()
  external int NextEntryOffset;
  @Uint32()
  external int FileIndex;
  @Int64()
  external int CreationTime;
  @Int64()
  external int LastAccessTime;
  @Int64()
  external int LastWriteTime;
  @Int64()
  external int ChangeTime;
  @Int64()
  external int EndOfFile;
  @Int64()
  external int AllocationSize;
  @Uint32()
  external int FileAttributes;
  @Uint32()
  external int FileNameLength;
  @Uint32()
  external int EaSize;
  @Uint32()
  external int ReparsePointTag;
  external FILE_ID_128 FileId;
  @Array(1)
  external Array<Uint16> FileName;
}

class FILE_REMOTE_PROTOCOL_INFO extends Struct {
  @Uint16()
  external int StructureVersion;
  @Uint16()
  external int StructureSize;
  @Uint32()
  external int Protocol;
  @Uint16()
  external int ProtocolMajorVersion;
  @Uint16()
  external int ProtocolMinorVersion;
  @Uint16()
  external int ProtocolRevision;
  @Uint16()
  external int Reserved;
  @Uint32()
  external int Flags;
  @Uint32()
  external int GenericReserved;
  @Uint32()
  external int ProtocolSpecific;
}

class FILE_ID_DESCRIPTOR extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int Type;
  @Uint32()
  external int Anonymous;
}
