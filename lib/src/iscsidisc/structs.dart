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

class SCSI_PASS_THROUGH extends Struct {
  @Uint16() external int Length;
  @Uint8() external int ScsiStatus;
  @Uint8() external int PathId;
  @Uint8() external int TargetId;
  @Uint8() external int Lun;
  @Uint8() external int CdbLength;
  @Uint8() external int SenseInfoLength;
  @Uint8() external int DataIn;
  @Uint32() external int DataTransferLength;
  @Uint32() external int TimeOutValue;
  @IntPtr() external int DataBufferOffset;
  @Uint32() external int SenseInfoOffset;
  @Array(16)
  external Array<Uint8> Cdb;
}

class SCSI_PASS_THROUGH_DIRECT extends Struct {
  @Uint16() external int Length;
  @Uint8() external int ScsiStatus;
  @Uint8() external int PathId;
  @Uint8() external int TargetId;
  @Uint8() external int Lun;
  @Uint8() external int CdbLength;
  @Uint8() external int SenseInfoLength;
  @Uint8() external int DataIn;
  @Uint32() external int DataTransferLength;
  @Uint32() external int TimeOutValue;
  external Pointer DataBuffer;
  @Uint32() external int SenseInfoOffset;
  @Array(16)
  external Array<Uint8> Cdb;
}

class SCSI_PASS_THROUGH32 extends Struct {
  @Uint16() external int Length;
  @Uint8() external int ScsiStatus;
  @Uint8() external int PathId;
  @Uint8() external int TargetId;
  @Uint8() external int Lun;
  @Uint8() external int CdbLength;
  @Uint8() external int SenseInfoLength;
  @Uint8() external int DataIn;
  @Uint32() external int DataTransferLength;
  @Uint32() external int TimeOutValue;
  @Uint32() external int DataBufferOffset;
  @Uint32() external int SenseInfoOffset;
  @Array(16)
  external Array<Uint8> Cdb;
}

class SCSI_PASS_THROUGH_DIRECT32 extends Struct {
  @Uint16() external int Length;
  @Uint8() external int ScsiStatus;
  @Uint8() external int PathId;
  @Uint8() external int TargetId;
  @Uint8() external int Lun;
  @Uint8() external int CdbLength;
  @Uint8() external int SenseInfoLength;
  @Uint8() external int DataIn;
  @Uint32() external int DataTransferLength;
  @Uint32() external int TimeOutValue;
  external Pointer DataBuffer;
  @Uint32() external int SenseInfoOffset;
  @Array(16)
  external Array<Uint8> Cdb;
}

class SCSI_PASS_THROUGH_EX extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Length;
  @Uint32() external int CdbLength;
  @Uint32() external int StorAddressLength;
  @Uint8() external int ScsiStatus;
  @Uint8() external int SenseInfoLength;
  @Uint8() external int DataDirection;
  @Uint8() external int Reserved;
  @Uint32() external int TimeOutValue;
  @Uint32() external int StorAddressOffset;
  @Uint32() external int SenseInfoOffset;
  @Uint32() external int DataOutTransferLength;
  @Uint32() external int DataInTransferLength;
  @IntPtr() external int DataOutBufferOffset;
  @IntPtr() external int DataInBufferOffset;
  @Array(1)
  external Array<Uint8> Cdb;
}

class SCSI_PASS_THROUGH_DIRECT_EX extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Length;
  @Uint32() external int CdbLength;
  @Uint32() external int StorAddressLength;
  @Uint8() external int ScsiStatus;
  @Uint8() external int SenseInfoLength;
  @Uint8() external int DataDirection;
  @Uint8() external int Reserved;
  @Uint32() external int TimeOutValue;
  @Uint32() external int StorAddressOffset;
  @Uint32() external int SenseInfoOffset;
  @Uint32() external int DataOutTransferLength;
  @Uint32() external int DataInTransferLength;
  external Pointer DataOutBuffer;
  external Pointer DataInBuffer;
  @Array(1)
  external Array<Uint8> Cdb;
}

class SCSI_PASS_THROUGH32_EX extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Length;
  @Uint32() external int CdbLength;
  @Uint32() external int StorAddressLength;
  @Uint8() external int ScsiStatus;
  @Uint8() external int SenseInfoLength;
  @Uint8() external int DataDirection;
  @Uint8() external int Reserved;
  @Uint32() external int TimeOutValue;
  @Uint32() external int StorAddressOffset;
  @Uint32() external int SenseInfoOffset;
  @Uint32() external int DataOutTransferLength;
  @Uint32() external int DataInTransferLength;
  @Uint32() external int DataOutBufferOffset;
  @Uint32() external int DataInBufferOffset;
  @Array(1)
  external Array<Uint8> Cdb;
}

class SCSI_PASS_THROUGH_DIRECT32_EX extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Length;
  @Uint32() external int CdbLength;
  @Uint32() external int StorAddressLength;
  @Uint8() external int ScsiStatus;
  @Uint8() external int SenseInfoLength;
  @Uint8() external int DataDirection;
  @Uint8() external int Reserved;
  @Uint32() external int TimeOutValue;
  @Uint32() external int StorAddressOffset;
  @Uint32() external int SenseInfoOffset;
  @Uint32() external int DataOutTransferLength;
  @Uint32() external int DataInTransferLength;
  external Pointer DataOutBuffer;
  external Pointer DataInBuffer;
  @Array(1)
  external Array<Uint8> Cdb;
}

class ATA_PASS_THROUGH_EX extends Struct {
  @Uint16() external int Length;
  @Uint16() external int AtaFlags;
  @Uint8() external int PathId;
  @Uint8() external int TargetId;
  @Uint8() external int Lun;
  @Uint8() external int ReservedAsUchar;
  @Uint32() external int DataTransferLength;
  @Uint32() external int TimeOutValue;
  @Uint32() external int ReservedAsUlong;
  @IntPtr() external int DataBufferOffset;
  @Array(8)
  external Array<Uint8> PreviousTaskFile;
  @Array(8)
  external Array<Uint8> CurrentTaskFile;
}

class ATA_PASS_THROUGH_DIRECT extends Struct {
  @Uint16() external int Length;
  @Uint16() external int AtaFlags;
  @Uint8() external int PathId;
  @Uint8() external int TargetId;
  @Uint8() external int Lun;
  @Uint8() external int ReservedAsUchar;
  @Uint32() external int DataTransferLength;
  @Uint32() external int TimeOutValue;
  @Uint32() external int ReservedAsUlong;
  external Pointer DataBuffer;
  @Array(8)
  external Array<Uint8> PreviousTaskFile;
  @Array(8)
  external Array<Uint8> CurrentTaskFile;
}

class ATA_PASS_THROUGH_EX32 extends Struct {
  @Uint16() external int Length;
  @Uint16() external int AtaFlags;
  @Uint8() external int PathId;
  @Uint8() external int TargetId;
  @Uint8() external int Lun;
  @Uint8() external int ReservedAsUchar;
  @Uint32() external int DataTransferLength;
  @Uint32() external int TimeOutValue;
  @Uint32() external int ReservedAsUlong;
  @Uint32() external int DataBufferOffset;
  @Array(8)
  external Array<Uint8> PreviousTaskFile;
  @Array(8)
  external Array<Uint8> CurrentTaskFile;
}

class ATA_PASS_THROUGH_DIRECT32 extends Struct {
  @Uint16() external int Length;
  @Uint16() external int AtaFlags;
  @Uint8() external int PathId;
  @Uint8() external int TargetId;
  @Uint8() external int Lun;
  @Uint8() external int ReservedAsUchar;
  @Uint32() external int DataTransferLength;
  @Uint32() external int TimeOutValue;
  @Uint32() external int ReservedAsUlong;
  external Pointer DataBuffer;
  @Array(8)
  external Array<Uint8> PreviousTaskFile;
  @Array(8)
  external Array<Uint8> CurrentTaskFile;
}

class IDE_IO_CONTROL extends Struct {
  @Uint32() external int HeaderLength;
  @Array(8)
  external Array<Uint8> Signature;
  @Uint32() external int Timeout;
  @Uint32() external int ControlCode;
  @Uint32() external int ReturnStatus;
  @Uint32() external int DataLength;
}

class MPIO_PASS_THROUGH_PATH extends Struct {
  external SCSI_PASS_THROUGH PassThrough;
  @Uint32() external int Version;
  @Uint16() external int Length;
  @Uint8() external int Flags;
  @Uint8() external int PortNumber;
  @Uint64() external int MpioPathId;
}

class MPIO_PASS_THROUGH_PATH_DIRECT extends Struct {
  external SCSI_PASS_THROUGH_DIRECT PassThrough;
  @Uint32() external int Version;
  @Uint16() external int Length;
  @Uint8() external int Flags;
  @Uint8() external int PortNumber;
  @Uint64() external int MpioPathId;
}

class MPIO_PASS_THROUGH_PATH_EX extends Struct {
  @Uint32() external int PassThroughOffset;
  @Uint32() external int Version;
  @Uint16() external int Length;
  @Uint8() external int Flags;
  @Uint8() external int PortNumber;
  @Uint64() external int MpioPathId;
}

class MPIO_PASS_THROUGH_PATH_DIRECT_EX extends Struct {
  @Uint32() external int PassThroughOffset;
  @Uint32() external int Version;
  @Uint16() external int Length;
  @Uint8() external int Flags;
  @Uint8() external int PortNumber;
  @Uint64() external int MpioPathId;
}

class MPIO_PASS_THROUGH_PATH32 extends Struct {
  external SCSI_PASS_THROUGH32 PassThrough;
  @Uint32() external int Version;
  @Uint16() external int Length;
  @Uint8() external int Flags;
  @Uint8() external int PortNumber;
  @Uint64() external int MpioPathId;
}

class MPIO_PASS_THROUGH_PATH_DIRECT32 extends Struct {
  external SCSI_PASS_THROUGH_DIRECT32 PassThrough;
  @Uint32() external int Version;
  @Uint16() external int Length;
  @Uint8() external int Flags;
  @Uint8() external int PortNumber;
  @Uint64() external int MpioPathId;
}

class MPIO_PASS_THROUGH_PATH32_EX extends Struct {
  @Uint32() external int PassThroughOffset;
  @Uint32() external int Version;
  @Uint16() external int Length;
  @Uint8() external int Flags;
  @Uint8() external int PortNumber;
  @Uint64() external int MpioPathId;
}

class MPIO_PASS_THROUGH_PATH_DIRECT32_EX extends Struct {
  @Uint32() external int PassThroughOffset;
  @Uint32() external int Version;
  @Uint16() external int Length;
  @Uint8() external int Flags;
  @Uint8() external int PortNumber;
  @Uint64() external int MpioPathId;
}

class SCSI_BUS_DATA extends Struct {
  @Uint8() external int NumberOfLogicalUnits;
  @Uint8() external int InitiatorBusId;
  @Uint32() external int InquiryDataOffset;
}

class SCSI_ADAPTER_BUS_INFO extends Struct {
  @Uint8() external int NumberOfBuses;
  @Array(1)
  external Array<SCSI_BUS_DATA> BusData;
}

class SCSI_INQUIRY_DATA extends Struct {
  @Uint8() external int PathId;
  @Uint8() external int TargetId;
  @Uint8() external int Lun;
  @Uint8() external int DeviceClaimed;
  @Uint32() external int InquiryDataLength;
  @Uint32() external int NextInquiryDataOffset;
  @Array(1)
  external Array<Uint8> InquiryData;
}

class SRB_IO_CONTROL extends Struct {
  @Uint32() external int HeaderLength;
  @Array(8)
  external Array<Uint8> Signature;
  @Uint32() external int Timeout;
  @Uint32() external int ControlCode;
  @Uint32() external int ReturnCode;
  @Uint32() external int Length;
}

class NVCACHE_REQUEST_BLOCK extends Struct {
  @Uint32() external int NRBSize;
  @Uint16() external int Function;
  @Uint32() external int NRBFlags;
  @Uint32() external int NRBStatus;
  @Uint32() external int Count;
  @Uint64() external int LBA;
  @Uint32() external int DataBufSize;
  @Uint32() external int NVCacheStatus;
  @Uint32() external int NVCacheSubStatus;
}

class NV_FEATURE_PARAMETER extends Struct {
  @Uint16() external int NVPowerModeEnabled;
  @Uint16() external int NVParameterReserv1;
  @Uint16() external int NVCmdEnabled;
  @Uint16() external int NVParameterReserv2;
  @Uint16() external int NVPowerModeVer;
  @Uint16() external int NVCmdVer;
  @Uint32() external int NVSize;
  @Uint16() external int NVReadSpeed;
  @Uint16() external int NVWrtSpeed;
  @Uint32() external int DeviceSpinUpTime;
}

class NVCACHE_HINT_PAYLOAD extends Struct {
  @Uint8() external int Command;
  @Uint8() external int Feature7_0;
  @Uint8() external int Feature15_8;
  @Uint8() external int Count15_8;
  @Uint8() external int LBA7_0;
  @Uint8() external int LBA15_8;
  @Uint8() external int LBA23_16;
  @Uint8() external int LBA31_24;
  @Uint8() external int LBA39_32;
  @Uint8() external int LBA47_40;
  @Uint8() external int Auxiliary7_0;
  @Uint8() external int Auxiliary23_16;
  @Array(4)
  external Array<Uint8> Reserved;
}

class NV_SEP_CACHE_PARAMETER extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Size;
  @Uint32() external int Flags;
  @Uint8() external int WriteCacheType;
  @Uint8() external int WriteCacheTypeEffective;
  @Array(3)
  external Array<Uint8> ParameterReserve1;
}

class STORAGE_DIAGNOSTIC_MP_REQUEST extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Size;
  @Uint32() external int TargetType;
  @Uint32() external int Level;
  external GUID ProviderId;
  @Uint32() external int BufferSize;
  @Uint32() external int Reserved;
  @Array(1)
  external Array<Uint8> DataBuffer;
}

class MP_DEVICE_DATA_SET_RANGE extends Struct {
  @Int64() external int StartingOffset;
  @Uint64() external int LengthInBytes;
}

class DSM_NOTIFICATION_REQUEST_BLOCK extends Struct {
  @Uint32() external int Size;
  @Uint32() external int Version;
  @Uint32() external int NotifyFlags;
  @Uint32() external int DataSetProfile;
  @Array(3)
  external Array<Uint32> Reserved;
  @Uint32() external int DataSetRangesCount;
  @Array(1)
  external Array<MP_DEVICE_DATA_SET_RANGE> DataSetRanges;
}

class HYBRID_REQUEST_BLOCK extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Size;
  @Uint32() external int Function;
  @Uint32() external int Flags;
  @Uint32() external int DataBufferOffset;
  @Uint32() external int DataBufferLength;
}

class NVCACHE_PRIORITY_LEVEL_DESCRIPTOR extends Struct {
  @Uint8() external int PriorityLevel;
  @Array(3)
  external Array<Uint8> Reserved0;
  @Uint32() external int ConsumedNVMSizeFraction;
  @Uint32() external int ConsumedMappingResourcesFraction;
  @Uint32() external int ConsumedNVMSizeForDirtyDataFraction;
  @Uint32() external int ConsumedMappingResourcesForDirtyDataFraction;
  @Uint32() external int Reserved1;
}

class HYBRID_INFORMATION extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Size;
  @Uint8() external int HybridSupported;
  @Uint32() external int Status;
  @Uint32() external int CacheTypeEffective;
  @Uint32() external int CacheTypeDefault;
  @Uint32() external int FractionBase;
  @Uint64() external int CacheSize;
  @Uint32() external int Attributes;
  @Uint32() external int Priorities;
}

class HYBRID_DIRTY_THRESHOLDS extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Size;
  @Uint32() external int DirtyLowThreshold;
  @Uint32() external int DirtyHighThreshold;
}

class HYBRID_DEMOTE_BY_SIZE extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Size;
  @Uint8() external int SourcePriority;
  @Uint8() external int TargetPriority;
  @Uint16() external int Reserved0;
  @Uint32() external int Reserved1;
  @Uint64() external int LbaCount;
}

class FIRMWARE_REQUEST_BLOCK extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Size;
  @Uint32() external int Function;
  @Uint32() external int Flags;
  @Uint32() external int DataBufferOffset;
  @Uint32() external int DataBufferLength;
}

class STORAGE_FIRMWARE_SLOT_INFO extends Struct {
  @Uint8() external int SlotNumber;
  @Uint8() external int ReadOnly;
  @Array(6)
  external Array<Uint8> Reserved;
  @Uint32() external int Revision;
}

class STORAGE_FIRMWARE_SLOT_INFO_V2 extends Struct {
  @Uint8() external int SlotNumber;
  @Uint8() external int ReadOnly;
  @Array(6)
  external Array<Uint8> Reserved;
  @Array(16)
  external Array<Uint8> Revision;
}

class STORAGE_FIRMWARE_INFO extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Size;
  @Uint8() external int UpgradeSupport;
  @Uint8() external int SlotCount;
  @Uint8() external int ActiveSlot;
  @Uint8() external int PendingActivateSlot;
  @Uint32() external int Reserved;
  @Array(1)
  external Array<STORAGE_FIRMWARE_SLOT_INFO> Slot;
}

class STORAGE_FIRMWARE_INFO_V2 extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Size;
  @Uint8() external int UpgradeSupport;
  @Uint8() external int SlotCount;
  @Uint8() external int ActiveSlot;
  @Uint8() external int PendingActivateSlot;
  @Uint8() external int FirmwareShared;
  @Array(3)
  external Array<Uint8> Reserved;
  @Uint32() external int ImagePayloadAlignment;
  @Uint32() external int ImagePayloadMaxSize;
  @Array(1)
  external Array<STORAGE_FIRMWARE_SLOT_INFO_V2> Slot;
}

class STORAGE_FIRMWARE_DOWNLOAD extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Size;
  @Uint64() external int Offset;
  @Uint64() external int BufferSize;
  @Array(1)
  external Array<Uint8> ImageBuffer;
}

class STORAGE_FIRMWARE_DOWNLOAD_V2 extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Size;
  @Uint64() external int Offset;
  @Uint64() external int BufferSize;
  @Uint8() external int Slot;
  @Array(3)
  external Array<Uint8> Reserved;
  @Uint32() external int ImageSize;
  @Array(1)
  external Array<Uint8> ImageBuffer;
}

class STORAGE_FIRMWARE_ACTIVATE extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Size;
  @Uint8() external int SlotToActivate;
  @Array(3)
  external Array<Uint8> Reserved0;
}

class IO_SCSI_CAPABILITIES extends Struct {
  @Uint32() external int Length;
  @Uint32() external int MaximumTransferLength;
  @Uint32() external int MaximumPhysicalPages;
  @Uint32() external int SupportedAsynchronousEvents;
  @Uint32() external int AlignmentMask;
  @Uint8() external int TaggedQueuing;
  @Uint8() external int AdapterScansDown;
  @Uint8() external int AdapterUsesPio;
}

class SCSI_ADDRESS extends Struct {
  @Uint32() external int Length;
  @Uint8() external int PortNumber;
  @Uint8() external int PathId;
  @Uint8() external int TargetId;
  @Uint8() external int Lun;
}

class _ADAPTER_OBJECT extends Struct {
}

class DUMP_POINTERS_VERSION extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Size;
}

class DUMP_POINTERS extends Struct {
  external Pointer<_ADAPTER_OBJECT> AdapterObject;
  external Pointer MappedRegisterBase;
  external Pointer DumpData;
  external Pointer CommonBufferVa;
  @Int64() external int CommonBufferPa;
  @Uint32() external int CommonBufferSize;
  @Uint8() external int AllocateCommonBuffers;
  @Uint8() external int UseDiskDump;
  @Array(2)
  external Array<Uint8> Spare1;
  external Pointer DeviceObject;
}

class DUMP_POINTERS_EX extends Struct {
  external DUMP_POINTERS_VERSION Header;
  external Pointer DumpData;
  external Pointer CommonBufferVa;
  @Uint32() external int CommonBufferSize;
  @Uint8() external int AllocateCommonBuffers;
  external Pointer DeviceObject;
  external Pointer DriverList;
  @Uint32() external int dwPortFlags;
  @Uint32() external int MaxDeviceDumpSectionSize;
  @Uint32() external int MaxDeviceDumpLevel;
  @Uint32() external int MaxTransferSize;
  external Pointer AdapterObject;
  external Pointer MappedRegisterBase;
  external Pointer<Uint8> DeviceReady;
  external PDUMP_DEVICE_POWERON_ROUTINE DumpDevicePowerOn;
  external Pointer DumpDevicePowerOnContext;
}

class DUMP_DRIVER extends Struct {
  external Pointer DumpDriverList;
  @Array(15)
  external Array<Uint16> DriverName;
  @Array(15)
  external Array<Uint16> BaseName;
}

class NTSCSI_UNICODE_STRING extends Struct {
  @Uint16() external int Length;
  @Uint16() external int MaximumLength;
  external Pointer<Utf16> Buffer;
}

class DUMP_DRIVER_EX extends Struct {
  external Pointer DumpDriverList;
  @Array(15)
  external Array<Uint16> DriverName;
  @Array(15)
  external Array<Uint16> BaseName;
  external NTSCSI_UNICODE_STRING DriverFullPath;
}

class STORAGE_ENDURANCE_INFO extends Struct {
  @Uint32() external int ValidFields;
  @Uint32() external int GroupId;
  @Uint32() external int Flags;
  @Uint32() external int LifePercentage;
  @Array(16)
  external Array<Uint8> BytesReadCount;
  @Array(16)
  external Array<Uint8> ByteWriteCount;
}

class STORAGE_ENDURANCE_DATA_DESCRIPTOR extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Size;
  external STORAGE_ENDURANCE_INFO EnduranceInfo;
}

class ISCSI_LOGIN_OPTIONS extends Struct {
  @Uint32() external int Version;
  @Uint32() external int InformationSpecified;
  @Uint32() external int LoginFlags;
  @Uint32() external int AuthType;
  @Uint32() external int HeaderDigest;
  @Uint32() external int DataDigest;
  @Uint32() external int MaximumConnections;
  @Uint32() external int DefaultTime2Wait;
  @Uint32() external int DefaultTime2Retain;
  @Uint32() external int UsernameLength;
  @Uint32() external int PasswordLength;
  external Pointer<Uint8> Username;
  external Pointer<Uint8> Password;
}

class IKE_AUTHENTICATION_PRESHARED_KEY extends Struct {
  @Uint64() external int SecurityFlags;
  @Uint8() external int IdType;
  @Uint32() external int IdLengthInBytes;
  external Pointer<Uint8> Id;
  @Uint32() external int KeyLengthInBytes;
  external Pointer<Uint8> Key;
}

class IKE_AUTHENTICATION_INFORMATION extends Struct {
  @Uint32() external int AuthMethod;
  @Uint32() external int Anonymous;
}

class ISCSI_UNIQUE_SESSION_ID extends Struct {
  @Uint64() external int AdapterUnique;
  @Uint64() external int AdapterSpecific;
}

class SCSI_LUN_LIST extends Struct {
  @Uint32() external int OSLUN;
  @Uint64() external int TargetLUN;
}

class ISCSI_TARGET_MAPPINGW extends Struct {
  @Array(129)
  external Array<Uint16> InitiatorName;
  @Array(128)
  external Array<Uint16> TargetName;
  @Array(129)
  external Array<Uint16> OSDeviceName;
  external ISCSI_UNIQUE_SESSION_ID SessionId;
  @Uint32() external int OSBusNumber;
  @Uint32() external int OSTargetNumber;
  @Uint32() external int LUNCount;
  external Pointer<SCSI_LUN_LIST> LUNList;
}

class ISCSI_TARGET_MAPPINGA extends Struct {
  @Array(129)
  external Array<Int8> InitiatorName;
  @Array(128)
  external Array<Int8> TargetName;
  @Array(129)
  external Array<Int8> OSDeviceName;
  external ISCSI_UNIQUE_SESSION_ID SessionId;
  @Uint32() external int OSBusNumber;
  @Uint32() external int OSTargetNumber;
  @Uint32() external int LUNCount;
  external Pointer<SCSI_LUN_LIST> LUNList;
}

class ISCSI_TARGET_PORTALW extends Struct {
  @Array(129)
  external Array<Uint16> SymbolicName;
  @Array(129)
  external Array<Uint16> Address;
  @Uint16() external int Socket;
}

class ISCSI_TARGET_PORTALA extends Struct {
  @Array(129)
  external Array<Int8> SymbolicName;
  @Array(129)
  external Array<Int8> Address;
  @Uint16() external int Socket;
}

class ISCSI_TARGET_PORTAL_INFOW extends Struct {
  @Array(129)
  external Array<Uint16> InitiatorName;
  @Uint32() external int InitiatorPortNumber;
  @Array(129)
  external Array<Uint16> SymbolicName;
  @Array(129)
  external Array<Uint16> Address;
  @Uint16() external int Socket;
}

class ISCSI_TARGET_PORTAL_INFOA extends Struct {
  @Array(129)
  external Array<Int8> InitiatorName;
  @Uint32() external int InitiatorPortNumber;
  @Array(129)
  external Array<Int8> SymbolicName;
  @Array(129)
  external Array<Int8> Address;
  @Uint16() external int Socket;
}

class ISCSI_TARGET_PORTAL_INFO_EXW extends Struct {
  @Array(129)
  external Array<Uint16> InitiatorName;
  @Uint32() external int InitiatorPortNumber;
  @Array(129)
  external Array<Uint16> SymbolicName;
  @Array(129)
  external Array<Uint16> Address;
  @Uint16() external int Socket;
  @Uint64() external int SecurityFlags;
  external ISCSI_LOGIN_OPTIONS LoginOptions;
}

class ISCSI_TARGET_PORTAL_INFO_EXA extends Struct {
  @Array(129)
  external Array<Int8> InitiatorName;
  @Uint32() external int InitiatorPortNumber;
  @Array(129)
  external Array<Int8> SymbolicName;
  @Array(129)
  external Array<Int8> Address;
  @Uint16() external int Socket;
  @Uint64() external int SecurityFlags;
  external ISCSI_LOGIN_OPTIONS LoginOptions;
}

class ISCSI_TARGET_PORTAL_GROUPW extends Struct {
  @Uint32() external int Count;
  @Array(1)
  external Array<ISCSI_TARGET_PORTALW> Portals;
}

class ISCSI_TARGET_PORTAL_GROUPA extends Struct {
  @Uint32() external int Count;
  @Array(1)
  external Array<ISCSI_TARGET_PORTALA> Portals;
}

class ISCSI_CONNECTION_INFOW extends Struct {
  external ISCSI_UNIQUE_SESSION_ID ConnectionId;
  external Pointer<Utf16> InitiatorAddress;
  external Pointer<Utf16> TargetAddress;
  @Uint16() external int InitiatorSocket;
  @Uint16() external int TargetSocket;
  @Array(2)
  external Array<Uint8> CID;
}

class ISCSI_SESSION_INFOW extends Struct {
  external ISCSI_UNIQUE_SESSION_ID SessionId;
  external Pointer<Utf16> InitiatorName;
  external Pointer<Utf16> TargetNodeName;
  external Pointer<Utf16> TargetName;
  @Array(6)
  external Array<Uint8> ISID;
  @Array(2)
  external Array<Uint8> TSID;
  @Uint32() external int ConnectionCount;
  external Pointer<ISCSI_CONNECTION_INFO> Connections;
}

class ISCSI_CONNECTION_INFOA extends Struct {
  external ISCSI_UNIQUE_SESSION_ID ConnectionId;
  external Pointer<Utf8> InitiatorAddress;
  external Pointer<Utf8> TargetAddress;
  @Uint16() external int InitiatorSocket;
  @Uint16() external int TargetSocket;
  @Array(2)
  external Array<Uint8> CID;
}

class ISCSI_SESSION_INFOA extends Struct {
  external ISCSI_UNIQUE_SESSION_ID SessionId;
  external Pointer<Utf8> InitiatorName;
  external Pointer<Utf8> TargetNodeName;
  external Pointer<Utf8> TargetName;
  @Array(6)
  external Array<Uint8> ISID;
  @Array(2)
  external Array<Uint8> TSID;
  @Uint32() external int ConnectionCount;
  external Pointer<ISCSI_CONNECTION_INFOA> Connections;
}

class ISCSI_CONNECTION_INFO_EX extends Struct {
  external ISCSI_UNIQUE_SESSION_ID ConnectionId;
  @Uint8() external int State;
  @Uint8() external int Protocol;
  @Uint8() external int HeaderDigest;
  @Uint8() external int DataDigest;
  @Uint32() external int MaxRecvDataSegmentLength;
  @Uint32() external int AuthType;
  @Uint64() external int EstimatedThroughput;
  @Uint32() external int MaxDatagramSize;
}

class ISCSI_SESSION_INFO_EX extends Struct {
  external ISCSI_UNIQUE_SESSION_ID SessionId;
  @Uint8() external int InitialR2t;
  @Uint8() external int ImmediateData;
  @Uint8() external int Type;
  @Uint8() external int DataSequenceInOrder;
  @Uint8() external int DataPduInOrder;
  @Uint8() external int ErrorRecoveryLevel;
  @Uint32() external int MaxOutstandingR2t;
  @Uint32() external int FirstBurstLength;
  @Uint32() external int MaxBurstLength;
  @Uint32() external int MaximumConnections;
  @Uint32() external int ConnectionCount;
  external Pointer<ISCSI_CONNECTION_INFO_EX> Connections;
}

class ISCSI_DEVICE_ON_SESSIONW extends Struct {
  @Array(129)
  external Array<Uint16> InitiatorName;
  @Array(128)
  external Array<Uint16> TargetName;
  external SCSI_ADDRESS ScsiAddress;
  external GUID DeviceInterfaceType;
  @Array(129)
  external Array<Uint16> DeviceInterfaceName;
  @Array(129)
  external Array<Uint16> LegacyName;
  external STORAGE_DEVICE_NUMBER StorageDeviceNumber;
  @Uint32() external int DeviceInstance;
}

class ISCSI_DEVICE_ON_SESSIONA extends Struct {
  @Array(129)
  external Array<Int8> InitiatorName;
  @Array(128)
  external Array<Int8> TargetName;
  external SCSI_ADDRESS ScsiAddress;
  external GUID DeviceInterfaceType;
  @Array(129)
  external Array<Int8> DeviceInterfaceName;
  @Array(129)
  external Array<Int8> LegacyName;
  external STORAGE_DEVICE_NUMBER StorageDeviceNumber;
  @Uint32() external int DeviceInstance;
}

class PERSISTENT_ISCSI_LOGIN_INFOW extends Struct {
  @Array(128)
  external Array<Uint16> TargetName;
  @Uint8() external int IsInformationalSession;
  @Array(129)
  external Array<Uint16> InitiatorInstance;
  @Uint32() external int InitiatorPortNumber;
  external ISCSI_TARGET_PORTALW TargetPortal;
  @Uint64() external int SecurityFlags;
  external Pointer<ISCSI_TARGET_MAPPING> Mappings;
  external ISCSI_LOGIN_OPTIONS LoginOptions;
}

class PERSISTENT_ISCSI_LOGIN_INFOA extends Struct {
  @Array(128)
  external Array<Int8> TargetName;
  @Uint8() external int IsInformationalSession;
  @Array(129)
  external Array<Int8> InitiatorInstance;
  @Uint32() external int InitiatorPortNumber;
  external ISCSI_TARGET_PORTALA TargetPortal;
  @Uint64() external int SecurityFlags;
  external Pointer<ISCSI_TARGET_MAPPINGA> Mappings;
  external ISCSI_LOGIN_OPTIONS LoginOptions;
}

class ISCSI_VERSION_INFO extends Struct {
  @Uint32() external int MajorVersion;
  @Uint32() external int MinorVersion;
  @Uint32() external int BuildNumber;
}

