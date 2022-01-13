// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import '../../combase.dart';
import '../../guid.dart';
import '../../system/ioctl/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../storage/filesystem/structs.g.dart';
import '../../security/structs.g.dart';
import '../../system/ioctl/callbacks.g.dart';
import '../../storage/vhd/structs.g.dart';

/// {@category Struct}
class ASYNC_DUPLICATE_EXTENTS_STATUS extends Struct {
  @Uint32()
  external int Version;

  @Int32()
  external int State;

  @Uint64()
  external int SourceFileOffset;

  @Uint64()
  external int TargetFileOffset;

  @Uint64()
  external int ByteCount;

  @Uint64()
  external int BytesDuplicated;
}

/// {@category Struct}
class BIN_COUNT extends Struct {
  external BIN_RANGE BinRange;

  @Uint32()
  external int BinCount;
}

/// {@category Struct}
class BIN_RANGE extends Struct {
  @Int64()
  external int StartValue;

  @Int64()
  external int Length;
}

/// {@category Struct}
class BIN_RESULTS extends Struct {
  @Uint32()
  external int NumberOfBins;

  @Array(1)
  external Array<BIN_COUNT> BinCounts;
}

/// {@category Struct}
class BOOT_AREA_INFO extends Struct {
  @Uint32()
  external int BootSectorCount;

  @Array(2)
  external Array<_BOOT_AREA_INFO__Anonymous_e__Struct> BootSectors;
}

/// {@category Struct}
class _BOOT_AREA_INFO__Anonymous_e__Struct extends Struct {
  @Int64()
  external int Offset;
}

/// {@category Struct}
class BULK_SECURITY_TEST_DATA extends Struct {
  @Uint32()
  external int DesiredAccess;

  @Array(1)
  external Array<Uint32> SecurityIds;
}

/// {@category Struct}
class CHANGER_ELEMENT extends Struct {
  @Int32()
  external int ElementType;

  @Uint32()
  external int ElementAddress;
}

/// {@category Struct}
class CHANGER_ELEMENT_LIST extends Struct {
  external CHANGER_ELEMENT Element;

  @Uint32()
  external int NumberOfElements;
}

/// {@category Struct}
class CHANGER_ELEMENT_STATUS extends Struct {
  external CHANGER_ELEMENT Element;

  external CHANGER_ELEMENT SrcElementAddress;

  @Uint32()
  external int Flags;

  @Uint32()
  external int ExceptionCode;

  @Uint8()
  external int TargetId;

  @Uint8()
  external int Lun;

  @Uint16()
  external int Reserved;

  @Array(36)
  external Array<Uint8> PrimaryVolumeID;

  @Array(36)
  external Array<Uint8> AlternateVolumeID;
}

/// {@category Struct}
class CHANGER_ELEMENT_STATUS_EX extends Struct {
  external CHANGER_ELEMENT Element;

  external CHANGER_ELEMENT SrcElementAddress;

  @Uint32()
  external int Flags;

  @Uint32()
  external int ExceptionCode;

  @Uint8()
  external int TargetId;

  @Uint8()
  external int Lun;

  @Uint16()
  external int Reserved;

  @Array(36)
  external Array<Uint8> PrimaryVolumeID;

  @Array(36)
  external Array<Uint8> AlternateVolumeID;

  @Array(8)
  external Array<Uint8> VendorIdentification;

  @Array(16)
  external Array<Uint8> ProductIdentification;

  @Array(32)
  external Array<Uint8> SerialNumber;
}

/// {@category Struct}
class CHANGER_EXCHANGE_MEDIUM extends Struct {
  external CHANGER_ELEMENT Transport;

  external CHANGER_ELEMENT Source;

  external CHANGER_ELEMENT Destination1;

  external CHANGER_ELEMENT Destination2;

  @Uint8()
  external int Flip1;

  @Uint8()
  external int Flip2;
}

/// {@category Struct}
class CHANGER_INITIALIZE_ELEMENT_STATUS extends Struct {
  external CHANGER_ELEMENT_LIST ElementList;

  @Uint8()
  external int BarCodeScan;
}

/// {@category Struct}
class CHANGER_MOVE_MEDIUM extends Struct {
  external CHANGER_ELEMENT Transport;

  external CHANGER_ELEMENT Source;

  external CHANGER_ELEMENT Destination;

  @Uint8()
  external int Flip;
}

/// {@category Struct}
class CHANGER_PRODUCT_DATA extends Struct {
  @Array(8)
  external Array<Uint8> VendorId;

  @Array(16)
  external Array<Uint8> ProductId;

  @Array(4)
  external Array<Uint8> Revision;

  @Array(32)
  external Array<Uint8> SerialNumber;

  @Uint8()
  external int DeviceType;
}

/// {@category Struct}
class CHANGER_READ_ELEMENT_STATUS extends Struct {
  external CHANGER_ELEMENT_LIST ElementList;

  @Uint8()
  external int VolumeTagInfo;
}

/// {@category Struct}
class CHANGER_SEND_VOLUME_TAG_INFORMATION extends Struct {
  external CHANGER_ELEMENT StartingElement;

  @Uint32()
  external int ActionCode;

  @Array(40)
  external Array<Uint8> VolumeIDTemplate;
}

/// {@category Struct}
class CHANGER_SET_ACCESS extends Struct {
  external CHANGER_ELEMENT Element;

  @Uint32()
  external int Control;
}

/// {@category Struct}
class CHANGER_SET_POSITION extends Struct {
  external CHANGER_ELEMENT Transport;

  external CHANGER_ELEMENT Destination;

  @Uint8()
  external int Flip;
}

/// {@category Struct}
class CLASS_MEDIA_CHANGE_CONTEXT extends Struct {
  @Uint32()
  external int MediaChangeCount;

  @Uint32()
  external int NewState;
}

/// {@category Struct}
class CLUSTER_RANGE extends Struct {
  @Int64()
  external int StartingCluster;

  @Int64()
  external int ClusterCount;
}

/// {@category Struct}
class CONTAINER_ROOT_INFO_INPUT extends Struct {
  @Uint32()
  external int Flags;
}

/// {@category Struct}
class CONTAINER_ROOT_INFO_OUTPUT extends Struct {
  @Uint16()
  external int ContainerRootIdLength;

  @Array(1)
  external Array<Uint8> ContainerRootId;
}

/// {@category Struct}
class CONTAINER_VOLUME_STATE extends Struct {
  @Uint32()
  external int Flags;
}

/// {@category Struct}
class CREATE_DISK extends Struct {
  @Int32()
  external int PartitionStyle;

  external _CREATE_DISK__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _CREATE_DISK__Anonymous_e__Union extends Union {
  external CREATE_DISK_MBR Mbr;

  external CREATE_DISK_GPT Gpt;
}

extension CREATE_DISK_Extension on CREATE_DISK {
  CREATE_DISK_MBR get Mbr => this.Anonymous.Mbr;
  set Mbr(CREATE_DISK_MBR value) => this.Anonymous.Mbr = value;

  CREATE_DISK_GPT get Gpt => this.Anonymous.Gpt;
  set Gpt(CREATE_DISK_GPT value) => this.Anonymous.Gpt = value;
}

/// {@category Struct}
class CREATE_DISK_GPT extends Struct {
  external GUID DiskId;

  @Uint32()
  external int MaxPartitionCount;
}

/// {@category Struct}
class CREATE_DISK_MBR extends Struct {
  @Uint32()
  external int Signature;
}

/// {@category Struct}
class CREATE_USN_JOURNAL_DATA extends Struct {
  @Uint64()
  external int MaximumSize;

  @Uint64()
  external int AllocationDelta;
}

/// {@category Struct}
class CSV_CONTROL_PARAM extends Struct {
  @Int32()
  external int Operation;

  @Int64()
  external int Unused;
}

/// {@category Struct}
class CSV_IS_OWNED_BY_CSVFS extends Struct {
  @Uint8()
  external int OwnedByCSVFS;
}

/// {@category Struct}
class CSV_MGMT_LOCK extends Struct {
  @Uint32()
  external int Flags;
}

/// {@category Struct}
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

/// {@category Struct}
class CSV_QUERY_FILE_REVISION extends Struct {
  @Int64()
  external int FileId;

  @Array(3)
  external Array<Int64> FileRevision;
}

/// {@category Struct}
class CSV_QUERY_FILE_REVISION_FILE_ID_128 extends Struct {
  external FILE_ID_128 FileId;

  @Array(3)
  external Array<Int64> FileRevision;
}

/// {@category Struct}
class CSV_QUERY_MDS_PATH extends Struct {
  @Uint32()
  external int MdsNodeId;

  @Uint32()
  external int DsNodeId;

  @Uint32()
  external int PathLength;

  @Array(1)
  external Array<Uint16> _Path;

  String get Path {
    final charCodes = <int>[];
    for (var i = 0; i < 1; i++) {
      charCodes.add(_Path[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set Path(String value) {
    final stringToStore = value.padRight(1, '\x00');
    for (var i = 0; i < 1; i++) {
      _Path[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class CSV_QUERY_MDS_PATH_V2 extends Struct {
  @Int64()
  external int Version;

  @Uint32()
  external int RequiredSize;

  @Uint32()
  external int MdsNodeId;

  @Uint32()
  external int DsNodeId;

  @Uint32()
  external int Flags;

  @Int32()
  external int DiskConnectivity;

  external GUID VolumeId;

  @Uint32()
  external int IpAddressOffset;

  @Uint32()
  external int IpAddressLength;

  @Uint32()
  external int PathOffset;

  @Uint32()
  external int PathLength;
}

/// {@category Struct}
class CSV_QUERY_REDIRECT_STATE extends Struct {
  @Uint32()
  external int MdsNodeId;

  @Uint32()
  external int DsNodeId;

  @Uint8()
  external int FileRedirected;
}

/// {@category Struct}
class CSV_QUERY_VETO_FILE_DIRECT_IO_OUTPUT extends Struct {
  @Uint64()
  external int VetoedFromAltitudeIntegral;

  @Uint64()
  external int VetoedFromAltitudeDecimal;

  @Array(256)
  external Array<Uint16> _Reason;

  String get Reason {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_Reason[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set Reason(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _Reason[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class CSV_QUERY_VOLUME_ID extends Struct {
  external GUID VolumeId;
}

/// {@category Struct}
class CSV_QUERY_VOLUME_REDIRECT_STATE extends Struct {
  @Uint32()
  external int MdsNodeId;

  @Uint32()
  external int DsNodeId;

  @Uint8()
  external int IsDiskConnected;

  @Uint8()
  external int ClusterEnableDirectIo;

  @Int32()
  external int DiskConnectivity;
}

/// {@category Struct}
class CSV_SET_VOLUME_ID extends Struct {
  external GUID VolumeId;
}

/// {@category Struct}
class DECRYPTION_STATUS_BUFFER extends Struct {
  @Uint8()
  external int NoEncryptedStreams;
}

/// {@category Struct}
class DELETE_USN_JOURNAL_DATA extends Struct {
  @Uint64()
  external int UsnJournalID;

  @Uint32()
  external int DeleteFlags;
}

/// {@category Struct}
@Packed(1)
class DEVICEDUMP_PRIVATE_SUBSECTION extends Struct {
  @Uint32()
  external int dwFlags;

  external GP_LOG_PAGE_DESCRIPTOR GPLogId;

  @Array(1)
  external Array<Uint8> bData;
}

/// {@category Struct}
class DEVICEDUMP_PUBLIC_SUBSECTION extends Struct {
  @Uint32()
  external int dwFlags;

  @Array(16)
  external Array<GP_LOG_PAGE_DESCRIPTOR> GPLogTable;

  @Array(16)
  external Array<Uint8> szDescription;

  @Array(1)
  external Array<Uint8> bData;
}

/// {@category Struct}
class DEVICEDUMP_RESTRICTED_SUBSECTION extends Struct {
  @Array(1)
  external Array<Uint8> bData;
}

/// {@category Struct}
class DEVICEDUMP_SECTION_HEADER extends Struct {
  external GUID guidDeviceDataId;

  @Array(16)
  external Array<Uint8> sOrganizationID;

  @Uint32()
  external int dwFirmwareRevision;

  @Array(32)
  external Array<Uint8> sModelNumber;

  @Array(32)
  external Array<Uint8> szDeviceManufacturingID;

  @Uint32()
  external int dwFlags;

  @Uint32()
  external int bRestrictedPrivateDataVersion;

  @Uint32()
  external int dwFirmwareIssueId;

  @Array(132)
  external Array<Uint8> szIssueDescriptionString;
}

/// {@category Struct}
class DEVICEDUMP_STORAGEDEVICE_DATA extends Struct {
  external DEVICEDUMP_STRUCTURE_VERSION Descriptor;

  external DEVICEDUMP_SECTION_HEADER SectionHeader;

  @Uint32()
  external int dwBufferSize;

  @Uint32()
  external int dwReasonForCollection;

  external DEVICEDUMP_SUBSECTION_POINTER PublicData;

  external DEVICEDUMP_SUBSECTION_POINTER RestrictedData;

  external DEVICEDUMP_SUBSECTION_POINTER PrivateData;
}

/// {@category Struct}
class DEVICEDUMP_STORAGESTACK_PUBLIC_DUMP extends Struct {
  external DEVICEDUMP_STRUCTURE_VERSION Descriptor;

  @Uint32()
  external int dwReasonForCollection;

  @Array(16)
  external Array<Uint8> cDriverName;

  @Uint32()
  external int uiNumRecords;

  @Array(1)
  external Array<DEVICEDUMP_STORAGESTACK_PUBLIC_STATE_RECORD> RecordArray;
}

/// {@category Struct}
class DEVICEDUMP_STORAGESTACK_PUBLIC_STATE_RECORD extends Struct {
  @Array(16)
  external Array<Uint8> Cdb;

  @Array(16)
  external Array<Uint8> Command;

  @Uint64()
  external int StartTime;

  @Uint64()
  external int EndTime;

  @Uint32()
  external int OperationStatus;

  @Uint32()
  external int OperationError;

  external _DEVICEDUMP_STORAGESTACK_PUBLIC_STATE_RECORD__StackSpecific_e__Union
      StackSpecific;
}

/// {@category Struct}
class _DEVICEDUMP_STORAGESTACK_PUBLIC_STATE_RECORD__StackSpecific_e__Union
    extends Union {
  external _DEVICEDUMP_STORAGESTACK_PUBLIC_STATE_RECORD__StackSpecific_e__Union__ExternalStack_e__Struct
      ExternalStack;

  external _DEVICEDUMP_STORAGESTACK_PUBLIC_STATE_RECORD__StackSpecific_e__Union__AtaPort_e__Struct
      AtaPort;

  external _DEVICEDUMP_STORAGESTACK_PUBLIC_STATE_RECORD__StackSpecific_e__Union__StorPort_e__Struct
      StorPort;
}

/// {@category Struct}
@Packed(1)
class _DEVICEDUMP_STORAGESTACK_PUBLIC_STATE_RECORD__StackSpecific_e__Union__ExternalStack_e__Struct
    extends Struct {
  @Uint32()
  external int dwReserved;
}

extension DEVICEDUMP_STORAGESTACK_PUBLIC_STATE_RECORD__StackSpecific_e__Union_Extension
    on DEVICEDUMP_STORAGESTACK_PUBLIC_STATE_RECORD {
  int get dwReserved => this.StackSpecific.ExternalStack.dwReserved;
  set dwReserved(int value) =>
      this.StackSpecific.ExternalStack.dwReserved = value;
}

/// {@category Struct}
@Packed(1)
class _DEVICEDUMP_STORAGESTACK_PUBLIC_STATE_RECORD__StackSpecific_e__Union__AtaPort_e__Struct
    extends Struct {
  @Uint32()
  external int dwAtaPortSpecific;
}

extension DEVICEDUMP_STORAGESTACK_PUBLIC_STATE_RECORD__StackSpecific_e__Union_Extension_1
    on DEVICEDUMP_STORAGESTACK_PUBLIC_STATE_RECORD {
  int get dwAtaPortSpecific => this.StackSpecific.AtaPort.dwAtaPortSpecific;
  set dwAtaPortSpecific(int value) =>
      this.StackSpecific.AtaPort.dwAtaPortSpecific = value;
}

/// {@category Struct}
@Packed(1)
class _DEVICEDUMP_STORAGESTACK_PUBLIC_STATE_RECORD__StackSpecific_e__Union__StorPort_e__Struct
    extends Struct {
  @Uint32()
  external int SrbTag;
}

extension DEVICEDUMP_STORAGESTACK_PUBLIC_STATE_RECORD__StackSpecific_e__Union_Extension_2
    on DEVICEDUMP_STORAGESTACK_PUBLIC_STATE_RECORD {
  int get SrbTag => this.StackSpecific.StorPort.SrbTag;
  set SrbTag(int value) => this.StackSpecific.StorPort.SrbTag = value;
}

extension DEVICEDUMP_STORAGESTACK_PUBLIC_STATE_RECORD_Extension
    on DEVICEDUMP_STORAGESTACK_PUBLIC_STATE_RECORD {
  _DEVICEDUMP_STORAGESTACK_PUBLIC_STATE_RECORD__StackSpecific_e__Union__ExternalStack_e__Struct
      get ExternalStack => this.StackSpecific.ExternalStack;
  set ExternalStack(
          _DEVICEDUMP_STORAGESTACK_PUBLIC_STATE_RECORD__StackSpecific_e__Union__ExternalStack_e__Struct
              value) =>
      this.StackSpecific.ExternalStack = value;

  _DEVICEDUMP_STORAGESTACK_PUBLIC_STATE_RECORD__StackSpecific_e__Union__AtaPort_e__Struct
      get AtaPort => this.StackSpecific.AtaPort;
  set AtaPort(
          _DEVICEDUMP_STORAGESTACK_PUBLIC_STATE_RECORD__StackSpecific_e__Union__AtaPort_e__Struct
              value) =>
      this.StackSpecific.AtaPort = value;

  _DEVICEDUMP_STORAGESTACK_PUBLIC_STATE_RECORD__StackSpecific_e__Union__StorPort_e__Struct
      get StorPort => this.StackSpecific.StorPort;
  set StorPort(
          _DEVICEDUMP_STORAGESTACK_PUBLIC_STATE_RECORD__StackSpecific_e__Union__StorPort_e__Struct
              value) =>
      this.StackSpecific.StorPort = value;
}

/// {@category Struct}
@Packed(1)
class DEVICEDUMP_STRUCTURE_VERSION extends Struct {
  @Uint32()
  external int dwSignature;

  @Uint32()
  external int dwVersion;

  @Uint32()
  external int dwSize;
}

/// {@category Struct}
@Packed(1)
class DEVICEDUMP_SUBSECTION_POINTER extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwFlags;

  @Uint32()
  external int dwOffset;
}

/// {@category Struct}
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

/// {@category Struct}
class DEVICE_DATA_SET_LBP_STATE_PARAMETERS extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  @Uint32()
  external int Flags;

  @Uint32()
  external int OutputVersion;
}

/// {@category Struct}
class DEVICE_DATA_SET_LB_PROVISIONING_STATE extends Struct {
  @Uint32()
  external int Size;

  @Uint32()
  external int Version;

  @Uint64()
  external int SlabSizeInBytes;

  @Uint32()
  external int SlabOffsetDeltaInBytes;

  @Uint32()
  external int SlabAllocationBitMapBitCount;

  @Uint32()
  external int SlabAllocationBitMapLength;

  @Array(1)
  external Array<Uint32> SlabAllocationBitMap;
}

/// {@category Struct}
class DEVICE_DATA_SET_LB_PROVISIONING_STATE_V2 extends Struct {
  @Uint32()
  external int Size;

  @Uint32()
  external int Version;

  @Uint64()
  external int SlabSizeInBytes;

  @Uint64()
  external int SlabOffsetDeltaInBytes;

  @Uint32()
  external int SlabAllocationBitMapBitCount;

  @Uint32()
  external int SlabAllocationBitMapLength;

  @Array(1)
  external Array<Uint32> SlabAllocationBitMap;
}

/// {@category Struct}
class DEVICE_DATA_SET_RANGE extends Struct {
  @Int64()
  external int StartingOffset;

  @Uint64()
  external int LengthInBytes;
}

/// {@category Struct}
class DEVICE_DATA_SET_REPAIR_OUTPUT extends Struct {
  external DEVICE_DATA_SET_RANGE ParityExtent;
}

/// {@category Struct}
class DEVICE_DATA_SET_REPAIR_PARAMETERS extends Struct {
  @Uint32()
  external int NumberOfRepairCopies;

  @Uint32()
  external int SourceCopy;

  @Array(1)
  external Array<Uint32> RepairCopies;
}

/// {@category Struct}
class DEVICE_DATA_SET_SCRUB_EX_OUTPUT extends Struct {
  @Uint64()
  external int BytesProcessed;

  @Uint64()
  external int BytesRepaired;

  @Uint64()
  external int BytesFailed;

  external DEVICE_DATA_SET_RANGE ParityExtent;

  @Uint64()
  external int BytesScrubbed;
}

/// {@category Struct}
class DEVICE_DATA_SET_SCRUB_OUTPUT extends Struct {
  @Uint64()
  external int BytesProcessed;

  @Uint64()
  external int BytesRepaired;

  @Uint64()
  external int BytesFailed;
}

/// {@category Struct}
class DEVICE_DATA_SET_TOPOLOGY_ID_QUERY_OUTPUT extends Struct {
  @Uint64()
  external int TopologyRangeBytes;

  @Array(16)
  external Array<Uint8> TopologyId;
}

/// {@category Struct}
class DEVICE_DSM_CONVERSION_OUTPUT extends Struct {
  @Uint32()
  external int Version;

  external GUID Source;
}

/// {@category Struct}
class DEVICE_DSM_DEFINITION extends Struct {
  @Uint32()
  external int Action;

  @Uint8()
  external int SingleRange;

  @Uint32()
  external int ParameterBlockAlignment;

  @Uint32()
  external int ParameterBlockLength;

  @Uint8()
  external int HasOutput;

  @Uint32()
  external int OutputBlockAlignment;

  @Uint32()
  external int OutputBlockLength;
}

/// {@category Struct}
class DEVICE_DSM_FREE_SPACE_OUTPUT extends Struct {
  @Uint32()
  external int Version;

  @Uint64()
  external int FreeSpace;
}

/// {@category Struct}
class DEVICE_DSM_LOST_QUERY_OUTPUT extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  @Uint64()
  external int Alignment;

  @Uint32()
  external int NumberOfBits;

  @Array(1)
  external Array<Uint32> BitMap;
}

/// {@category Struct}
class DEVICE_DSM_LOST_QUERY_PARAMETERS extends Struct {
  @Uint32()
  external int Version;

  @Uint64()
  external int Granularity;
}

/// {@category Struct}
class DEVICE_DSM_NOTIFICATION_PARAMETERS extends Struct {
  @Uint32()
  external int Size;

  @Uint32()
  external int Flags;

  @Uint32()
  external int NumFileTypeIDs;

  @Array(1)
  external Array<GUID> FileTypeID;
}

/// {@category Struct}
class DEVICE_DSM_NVCACHE_CHANGE_PRIORITY_PARAMETERS extends Struct {
  @Uint32()
  external int Size;

  @Uint8()
  external int TargetPriority;

  @Array(3)
  external Array<Uint8> Reserved;
}

/// {@category Struct}
class DEVICE_DSM_OFFLOAD_READ_PARAMETERS extends Struct {
  @Uint32()
  external int Flags;

  @Uint32()
  external int TimeToLive;

  @Array(2)
  external Array<Uint32> Reserved;
}

/// {@category Struct}
class DEVICE_DSM_OFFLOAD_WRITE_PARAMETERS extends Struct {
  @Uint32()
  external int Flags;

  @Uint32()
  external int Reserved;

  @Uint64()
  external int TokenOffset;

  external STORAGE_OFFLOAD_TOKEN Token;
}

/// {@category Struct}
class DEVICE_DSM_PHYSICAL_ADDRESSES_OUTPUT extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Flags;

  @Uint32()
  external int TotalNumberOfRanges;

  @Uint32()
  external int NumberOfRangesReturned;

  @Array(1)
  external Array<DEVICE_STORAGE_ADDRESS_RANGE> Ranges;
}

/// {@category Struct}
class DEVICE_DSM_RANGE_ERROR_INFO extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Flags;

  @Uint32()
  external int TotalNumberOfRanges;

  @Uint32()
  external int NumberOfRangesReturned;

  @Array(1)
  external Array<DEVICE_STORAGE_RANGE_ATTRIBUTES> Ranges;
}

/// {@category Struct}
class DEVICE_DSM_REPORT_ZONES_DATA extends Struct {
  @Uint32()
  external int Size;

  @Uint32()
  external int ZoneCount;

  @Int32()
  external int Attributes;

  @Uint32()
  external int Reserved0;

  @Array(1)
  external Array<STORAGE_ZONE_DESCRIPTOR> ZoneDescriptors;
}

/// {@category Struct}
class DEVICE_DSM_REPORT_ZONES_PARAMETERS extends Struct {
  @Uint32()
  external int Size;

  @Uint8()
  external int ReportOption;

  @Uint8()
  external int Partial;

  @Array(2)
  external Array<Uint8> Reserved;
}

/// {@category Struct}
class DEVICE_DSM_TIERING_QUERY_INPUT extends Struct {
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

/// {@category Struct}
class DEVICE_DSM_TIERING_QUERY_OUTPUT extends Struct {
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
  external Array<STORAGE_TIER_REGION> Regions;
}

/// {@category Struct}
class DEVICE_INTERNAL_STATUS_DATA extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  @Uint64()
  external int T10VendorId;

  @Uint32()
  external int DataSet1Length;

  @Uint32()
  external int DataSet2Length;

  @Uint32()
  external int DataSet3Length;

  @Uint32()
  external int DataSet4Length;

  @Uint8()
  external int StatusDataVersion;

  @Array(3)
  external Array<Uint8> Reserved;

  @Array(128)
  external Array<Uint8> ReasonIdentifier;

  @Uint32()
  external int StatusDataLength;

  @Array(1)
  external Array<Uint8> StatusData;
}

/// {@category Struct}
class DEVICE_LB_PROVISIONING_DESCRIPTOR extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  @Uint8()
  external int bitfield;

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

/// {@category Struct}
class DEVICE_LOCATION extends Struct {
  @Uint32()
  external int Socket;

  @Uint32()
  external int Slot;

  @Uint32()
  external int Adapter;

  @Uint32()
  external int Port;

  external _DEVICE_LOCATION__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _DEVICE_LOCATION__Anonymous_e__Union extends Union {
  external _DEVICE_LOCATION__Anonymous_e__Union__Anonymous1_e__Struct
      Anonymous1;

  external _DEVICE_LOCATION__Anonymous_e__Union__Anonymous2_e__Struct
      Anonymous2;
}

/// {@category Struct}
class _DEVICE_LOCATION__Anonymous_e__Union__Anonymous1_e__Struct
    extends Struct {
  @Uint32()
  external int Channel;

  @Uint32()
  external int Device;
}

extension DEVICE_LOCATION__Anonymous_e__Union_Extension on DEVICE_LOCATION {
  int get Channel => this.Anonymous.Anonymous1.Channel;
  set Channel(int value) => this.Anonymous.Anonymous1.Channel = value;

  int get Device => this.Anonymous.Anonymous1.Device;
  set Device(int value) => this.Anonymous.Anonymous1.Device = value;
}

/// {@category Struct}
class _DEVICE_LOCATION__Anonymous_e__Union__Anonymous2_e__Struct
    extends Struct {
  @Uint32()
  external int Target;

  @Uint32()
  external int Lun;
}

extension DEVICE_LOCATION__Anonymous_e__Union_Extension_1 on DEVICE_LOCATION {
  int get Target => this.Anonymous.Anonymous2.Target;
  set Target(int value) => this.Anonymous.Anonymous2.Target = value;

  int get Lun => this.Anonymous.Anonymous2.Lun;
  set Lun(int value) => this.Anonymous.Anonymous2.Lun = value;
}

extension DEVICE_LOCATION_Extension on DEVICE_LOCATION {
  _DEVICE_LOCATION__Anonymous_e__Union__Anonymous1_e__Struct get Anonymous1 =>
      this.Anonymous.Anonymous1;
  set Anonymous1(
          _DEVICE_LOCATION__Anonymous_e__Union__Anonymous1_e__Struct value) =>
      this.Anonymous.Anonymous1 = value;

  _DEVICE_LOCATION__Anonymous_e__Union__Anonymous2_e__Struct get Anonymous2 =>
      this.Anonymous.Anonymous2;
  set Anonymous2(
          _DEVICE_LOCATION__Anonymous_e__Union__Anonymous2_e__Struct value) =>
      this.Anonymous.Anonymous2 = value;
}

/// {@category Struct}
class DEVICE_MANAGE_DATA_SET_ATTRIBUTES extends Struct {
  @Uint32()
  external int Size;

  @Uint32()
  external int Action;

  @Uint32()
  external int Flags;

  @Uint32()
  external int ParameterBlockOffset;

  @Uint32()
  external int ParameterBlockLength;

  @Uint32()
  external int DataSetRangesOffset;

  @Uint32()
  external int DataSetRangesLength;
}

/// {@category Struct}
class DEVICE_MANAGE_DATA_SET_ATTRIBUTES_OUTPUT extends Struct {
  @Uint32()
  external int Size;

  @Uint32()
  external int Action;

  @Uint32()
  external int Flags;

  @Uint32()
  external int OperationStatus;

  @Uint32()
  external int ExtendedError;

  @Uint32()
  external int TargetDetailedError;

  @Uint32()
  external int ReservedStatus;

  @Uint32()
  external int OutputBlockOffset;

  @Uint32()
  external int OutputBlockLength;
}

/// {@category Struct}
class DEVICE_MEDIA_INFO extends Struct {
  external _DEVICE_MEDIA_INFO__DeviceSpecific_e__Union DeviceSpecific;
}

/// {@category Struct}
class _DEVICE_MEDIA_INFO__DeviceSpecific_e__Union extends Union {
  external _DEVICE_MEDIA_INFO__DeviceSpecific_e__Union__DiskInfo_e__Struct
      DiskInfo;

  external _DEVICE_MEDIA_INFO__DeviceSpecific_e__Union__RemovableDiskInfo_e__Struct
      RemovableDiskInfo;

  external _DEVICE_MEDIA_INFO__DeviceSpecific_e__Union__TapeInfo_e__Struct
      TapeInfo;
}

/// {@category Struct}
class _DEVICE_MEDIA_INFO__DeviceSpecific_e__Union__DiskInfo_e__Struct
    extends Struct {
  @Int64()
  external int Cylinders;

  @Int32()
  external int MediaType;

  @Uint32()
  external int TracksPerCylinder;

  @Uint32()
  external int SectorsPerTrack;

  @Uint32()
  external int BytesPerSector;

  @Uint32()
  external int NumberMediaSides;

  @Uint32()
  external int MediaCharacteristics;
}

extension DEVICE_MEDIA_INFO__DeviceSpecific_e__Union_Extension
    on DEVICE_MEDIA_INFO {
  int get Cylinders => this.DeviceSpecific.DiskInfo.Cylinders;
  set Cylinders(int value) => this.DeviceSpecific.DiskInfo.Cylinders = value;

  int get MediaType => this.DeviceSpecific.DiskInfo.MediaType;
  set MediaType(int value) => this.DeviceSpecific.DiskInfo.MediaType = value;

  int get TracksPerCylinder => this.DeviceSpecific.DiskInfo.TracksPerCylinder;
  set TracksPerCylinder(int value) =>
      this.DeviceSpecific.DiskInfo.TracksPerCylinder = value;

  int get SectorsPerTrack => this.DeviceSpecific.DiskInfo.SectorsPerTrack;
  set SectorsPerTrack(int value) =>
      this.DeviceSpecific.DiskInfo.SectorsPerTrack = value;

  int get BytesPerSector => this.DeviceSpecific.DiskInfo.BytesPerSector;
  set BytesPerSector(int value) =>
      this.DeviceSpecific.DiskInfo.BytesPerSector = value;

  int get NumberMediaSides => this.DeviceSpecific.DiskInfo.NumberMediaSides;
  set NumberMediaSides(int value) =>
      this.DeviceSpecific.DiskInfo.NumberMediaSides = value;

  int get MediaCharacteristics =>
      this.DeviceSpecific.DiskInfo.MediaCharacteristics;
  set MediaCharacteristics(int value) =>
      this.DeviceSpecific.DiskInfo.MediaCharacteristics = value;
}

/// {@category Struct}
class _DEVICE_MEDIA_INFO__DeviceSpecific_e__Union__RemovableDiskInfo_e__Struct
    extends Struct {
  @Int64()
  external int Cylinders;

  @Int32()
  external int MediaType;

  @Uint32()
  external int TracksPerCylinder;

  @Uint32()
  external int SectorsPerTrack;

  @Uint32()
  external int BytesPerSector;

  @Uint32()
  external int NumberMediaSides;

  @Uint32()
  external int MediaCharacteristics;
}

extension DEVICE_MEDIA_INFO__DeviceSpecific_e__Union_Extension_1
    on DEVICE_MEDIA_INFO {
  int get Cylinders => this.DeviceSpecific.RemovableDiskInfo.Cylinders;
  set Cylinders(int value) =>
      this.DeviceSpecific.RemovableDiskInfo.Cylinders = value;

  int get MediaType => this.DeviceSpecific.RemovableDiskInfo.MediaType;
  set MediaType(int value) =>
      this.DeviceSpecific.RemovableDiskInfo.MediaType = value;

  int get TracksPerCylinder =>
      this.DeviceSpecific.RemovableDiskInfo.TracksPerCylinder;
  set TracksPerCylinder(int value) =>
      this.DeviceSpecific.RemovableDiskInfo.TracksPerCylinder = value;

  int get SectorsPerTrack =>
      this.DeviceSpecific.RemovableDiskInfo.SectorsPerTrack;
  set SectorsPerTrack(int value) =>
      this.DeviceSpecific.RemovableDiskInfo.SectorsPerTrack = value;

  int get BytesPerSector =>
      this.DeviceSpecific.RemovableDiskInfo.BytesPerSector;
  set BytesPerSector(int value) =>
      this.DeviceSpecific.RemovableDiskInfo.BytesPerSector = value;

  int get NumberMediaSides =>
      this.DeviceSpecific.RemovableDiskInfo.NumberMediaSides;
  set NumberMediaSides(int value) =>
      this.DeviceSpecific.RemovableDiskInfo.NumberMediaSides = value;

  int get MediaCharacteristics =>
      this.DeviceSpecific.RemovableDiskInfo.MediaCharacteristics;
  set MediaCharacteristics(int value) =>
      this.DeviceSpecific.RemovableDiskInfo.MediaCharacteristics = value;
}

/// {@category Struct}
class _DEVICE_MEDIA_INFO__DeviceSpecific_e__Union__TapeInfo_e__Struct
    extends Struct {
  @Int32()
  external int MediaType;

  @Uint32()
  external int MediaCharacteristics;

  @Uint32()
  external int CurrentBlockSize;

  @Int32()
  external int BusType;

  external _DEVICE_MEDIA_INFO__DeviceSpecific_e__Union__TapeInfo_e__Struct__BusSpecificData_e__Union
      BusSpecificData;
}

/// {@category Struct}
class _DEVICE_MEDIA_INFO__DeviceSpecific_e__Union__TapeInfo_e__Struct__BusSpecificData_e__Union
    extends Union {
  external _DEVICE_MEDIA_INFO__DeviceSpecific_e__Union__TapeInfo_e__Struct__BusSpecificData_e__Union__ScsiInformation_e__Struct
      ScsiInformation;
}

/// {@category Struct}
class _DEVICE_MEDIA_INFO__DeviceSpecific_e__Union__TapeInfo_e__Struct__BusSpecificData_e__Union__ScsiInformation_e__Struct
    extends Struct {
  @Uint8()
  external int MediumType;

  @Uint8()
  external int DensityCode;
}

extension DEVICE_MEDIA_INFO__DeviceSpecific_e__Union__TapeInfo_e__Struct__BusSpecificData_e__Union_Extension
    on DEVICE_MEDIA_INFO {
  int get MediumType =>
      this.DeviceSpecific.TapeInfo.BusSpecificData.ScsiInformation.MediumType;
  set MediumType(int value) =>
      this.DeviceSpecific.TapeInfo.BusSpecificData.ScsiInformation.MediumType =
          value;

  int get DensityCode =>
      this.DeviceSpecific.TapeInfo.BusSpecificData.ScsiInformation.DensityCode;
  set DensityCode(int value) =>
      this.DeviceSpecific.TapeInfo.BusSpecificData.ScsiInformation.DensityCode =
          value;
}

extension DEVICE_MEDIA_INFO__DeviceSpecific_e__Union__TapeInfo_e__Struct_Extension
    on DEVICE_MEDIA_INFO {
  _DEVICE_MEDIA_INFO__DeviceSpecific_e__Union__TapeInfo_e__Struct__BusSpecificData_e__Union__ScsiInformation_e__Struct
      get ScsiInformation =>
          this.DeviceSpecific.TapeInfo.BusSpecificData.ScsiInformation;
  set ScsiInformation(
          _DEVICE_MEDIA_INFO__DeviceSpecific_e__Union__TapeInfo_e__Struct__BusSpecificData_e__Union__ScsiInformation_e__Struct
              value) =>
      this.DeviceSpecific.TapeInfo.BusSpecificData.ScsiInformation = value;
}

extension DEVICE_MEDIA_INFO__DeviceSpecific_e__Union_Extension_2
    on DEVICE_MEDIA_INFO {
  int get MediaType => this.DeviceSpecific.TapeInfo.MediaType;
  set MediaType(int value) => this.DeviceSpecific.TapeInfo.MediaType = value;

  int get MediaCharacteristics =>
      this.DeviceSpecific.TapeInfo.MediaCharacteristics;
  set MediaCharacteristics(int value) =>
      this.DeviceSpecific.TapeInfo.MediaCharacteristics = value;

  int get CurrentBlockSize => this.DeviceSpecific.TapeInfo.CurrentBlockSize;
  set CurrentBlockSize(int value) =>
      this.DeviceSpecific.TapeInfo.CurrentBlockSize = value;

  int get BusType => this.DeviceSpecific.TapeInfo.BusType;
  set BusType(int value) => this.DeviceSpecific.TapeInfo.BusType = value;

  _DEVICE_MEDIA_INFO__DeviceSpecific_e__Union__TapeInfo_e__Struct__BusSpecificData_e__Union
      get BusSpecificData => this.DeviceSpecific.TapeInfo.BusSpecificData;
  set BusSpecificData(
          _DEVICE_MEDIA_INFO__DeviceSpecific_e__Union__TapeInfo_e__Struct__BusSpecificData_e__Union
              value) =>
      this.DeviceSpecific.TapeInfo.BusSpecificData = value;
}

extension DEVICE_MEDIA_INFO_Extension on DEVICE_MEDIA_INFO {
  _DEVICE_MEDIA_INFO__DeviceSpecific_e__Union__DiskInfo_e__Struct
      get DiskInfo => this.DeviceSpecific.DiskInfo;
  set DiskInfo(
          _DEVICE_MEDIA_INFO__DeviceSpecific_e__Union__DiskInfo_e__Struct
              value) =>
      this.DeviceSpecific.DiskInfo = value;

  _DEVICE_MEDIA_INFO__DeviceSpecific_e__Union__RemovableDiskInfo_e__Struct
      get RemovableDiskInfo => this.DeviceSpecific.RemovableDiskInfo;
  set RemovableDiskInfo(
          _DEVICE_MEDIA_INFO__DeviceSpecific_e__Union__RemovableDiskInfo_e__Struct
              value) =>
      this.DeviceSpecific.RemovableDiskInfo = value;

  _DEVICE_MEDIA_INFO__DeviceSpecific_e__Union__TapeInfo_e__Struct
      get TapeInfo => this.DeviceSpecific.TapeInfo;
  set TapeInfo(
          _DEVICE_MEDIA_INFO__DeviceSpecific_e__Union__TapeInfo_e__Struct
              value) =>
      this.DeviceSpecific.TapeInfo = value;
}

/// {@category Struct}
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

/// {@category Struct}
class DEVICE_SEEK_PENALTY_DESCRIPTOR extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  @Uint8()
  external int IncursSeekPenalty;
}

/// {@category Struct}
class DEVICE_STORAGE_ADDRESS_RANGE extends Struct {
  @Int64()
  external int StartAddress;

  @Uint64()
  external int LengthInBytes;
}

/// {@category Struct}
class DEVICE_STORAGE_RANGE_ATTRIBUTES extends Struct {
  @Uint64()
  external int LengthInBytes;

  external _DEVICE_STORAGE_RANGE_ATTRIBUTES__Anonymous_e__Union Anonymous;

  @Uint32()
  external int Reserved;
}

/// {@category Struct}
class _DEVICE_STORAGE_RANGE_ATTRIBUTES__Anonymous_e__Union extends Union {
  @Uint32()
  external int AllFlags;

  external _DEVICE_STORAGE_RANGE_ATTRIBUTES__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
class _DEVICE_STORAGE_RANGE_ATTRIBUTES__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int bitfield;
}

extension DEVICE_STORAGE_RANGE_ATTRIBUTES__Anonymous_e__Union_Extension
    on DEVICE_STORAGE_RANGE_ATTRIBUTES {
  int get bitfield => this.Anonymous.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.Anonymous.bitfield = value;
}

extension DEVICE_STORAGE_RANGE_ATTRIBUTES_Extension
    on DEVICE_STORAGE_RANGE_ATTRIBUTES {
  int get AllFlags => this.Anonymous.AllFlags;
  set AllFlags(int value) => this.Anonymous.AllFlags = value;

  _DEVICE_STORAGE_RANGE_ATTRIBUTES__Anonymous_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
          _DEVICE_STORAGE_RANGE_ATTRIBUTES__Anonymous_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category Struct}
class DEVICE_TRIM_DESCRIPTOR extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  @Uint8()
  external int TrimEnabled;
}

/// {@category Struct}
class DEVICE_WRITE_AGGREGATION_DESCRIPTOR extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  @Uint8()
  external int BenefitsFromWriteAggregation;
}

/// {@category Struct}
class DISK_CACHE_INFORMATION extends Struct {
  @Uint8()
  external int ParametersSavable;

  @Uint8()
  external int ReadCacheEnabled;

  @Uint8()
  external int WriteCacheEnabled;

  @Int32()
  external int ReadRetentionPriority;

  @Int32()
  external int WriteRetentionPriority;

  @Uint16()
  external int DisablePrefetchTransferLength;

  @Uint8()
  external int PrefetchScalar;

  external _DISK_CACHE_INFORMATION__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _DISK_CACHE_INFORMATION__Anonymous_e__Union extends Union {
  external _DISK_CACHE_INFORMATION__Anonymous_e__Union__ScalarPrefetch_e__Struct
      ScalarPrefetch;

  external _DISK_CACHE_INFORMATION__Anonymous_e__Union__BlockPrefetch_e__Struct
      BlockPrefetch;
}

/// {@category Struct}
class _DISK_CACHE_INFORMATION__Anonymous_e__Union__ScalarPrefetch_e__Struct
    extends Struct {
  @Uint16()
  external int Minimum;

  @Uint16()
  external int Maximum;

  @Uint16()
  external int MaximumBlocks;
}

extension DISK_CACHE_INFORMATION__Anonymous_e__Union_Extension
    on DISK_CACHE_INFORMATION {
  int get Minimum => this.Anonymous.ScalarPrefetch.Minimum;
  set Minimum(int value) => this.Anonymous.ScalarPrefetch.Minimum = value;

  int get Maximum => this.Anonymous.ScalarPrefetch.Maximum;
  set Maximum(int value) => this.Anonymous.ScalarPrefetch.Maximum = value;

  int get MaximumBlocks => this.Anonymous.ScalarPrefetch.MaximumBlocks;
  set MaximumBlocks(int value) =>
      this.Anonymous.ScalarPrefetch.MaximumBlocks = value;
}

/// {@category Struct}
class _DISK_CACHE_INFORMATION__Anonymous_e__Union__BlockPrefetch_e__Struct
    extends Struct {
  @Uint16()
  external int Minimum;

  @Uint16()
  external int Maximum;
}

extension DISK_CACHE_INFORMATION__Anonymous_e__Union_Extension_1
    on DISK_CACHE_INFORMATION {
  int get Minimum => this.Anonymous.BlockPrefetch.Minimum;
  set Minimum(int value) => this.Anonymous.BlockPrefetch.Minimum = value;

  int get Maximum => this.Anonymous.BlockPrefetch.Maximum;
  set Maximum(int value) => this.Anonymous.BlockPrefetch.Maximum = value;
}

extension DISK_CACHE_INFORMATION_Extension on DISK_CACHE_INFORMATION {
  _DISK_CACHE_INFORMATION__Anonymous_e__Union__ScalarPrefetch_e__Struct
      get ScalarPrefetch => this.Anonymous.ScalarPrefetch;
  set ScalarPrefetch(
          _DISK_CACHE_INFORMATION__Anonymous_e__Union__ScalarPrefetch_e__Struct
              value) =>
      this.Anonymous.ScalarPrefetch = value;

  _DISK_CACHE_INFORMATION__Anonymous_e__Union__BlockPrefetch_e__Struct
      get BlockPrefetch => this.Anonymous.BlockPrefetch;
  set BlockPrefetch(
          _DISK_CACHE_INFORMATION__Anonymous_e__Union__BlockPrefetch_e__Struct
              value) =>
      this.Anonymous.BlockPrefetch = value;
}

/// {@category Struct}
class DISK_CONTROLLER_NUMBER extends Struct {
  @Uint32()
  external int ControllerNumber;

  @Uint32()
  external int DiskNumber;
}

/// {@category Struct}
class DISK_DETECTION_INFO extends Struct {
  @Uint32()
  external int SizeOfDetectInfo;

  @Int32()
  external int DetectionType;

  external _DISK_DETECTION_INFO__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _DISK_DETECTION_INFO__Anonymous_e__Union extends Union {
  external _DISK_DETECTION_INFO__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
class _DISK_DETECTION_INFO__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  external DISK_INT13_INFO Int13;

  external DISK_EX_INT13_INFO ExInt13;
}

extension DISK_DETECTION_INFO__Anonymous_e__Union_Extension
    on DISK_DETECTION_INFO {
  DISK_INT13_INFO get Int13 => this.Anonymous.Anonymous.Int13;
  set Int13(DISK_INT13_INFO value) => this.Anonymous.Anonymous.Int13 = value;

  DISK_EX_INT13_INFO get ExInt13 => this.Anonymous.Anonymous.ExInt13;
  set ExInt13(DISK_EX_INT13_INFO value) =>
      this.Anonymous.Anonymous.ExInt13 = value;
}

extension DISK_DETECTION_INFO_Extension on DISK_DETECTION_INFO {
  _DISK_DETECTION_INFO__Anonymous_e__Union__Anonymous_e__Struct get Anonymous =>
      this.Anonymous.Anonymous;
  set Anonymous(
          _DISK_DETECTION_INFO__Anonymous_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category Struct}
class DISK_EXTENT extends Struct {
  @Uint32()
  external int DiskNumber;

  @Int64()
  external int StartingOffset;

  @Int64()
  external int ExtentLength;
}

/// {@category Struct}
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

/// {@category Struct}
class DISK_GEOMETRY extends Struct {
  @Int64()
  external int Cylinders;

  @Int32()
  external int MediaType;

  @Uint32()
  external int TracksPerCylinder;

  @Uint32()
  external int SectorsPerTrack;

  @Uint32()
  external int BytesPerSector;
}

/// {@category Struct}
class DISK_GEOMETRY_EX extends Struct {
  external DISK_GEOMETRY Geometry;

  @Int64()
  external int DiskSize;

  @Array(1)
  external Array<Uint8> Data;
}

/// {@category Struct}
class DISK_GROW_PARTITION extends Struct {
  @Uint32()
  external int PartitionNumber;

  @Int64()
  external int BytesToGrow;
}

/// {@category Struct}
class DISK_HISTOGRAM extends Struct {
  @Int64()
  external int DiskSize;

  @Int64()
  external int Start;

  @Int64()
  external int End;

  @Int64()
  external int Average;

  @Int64()
  external int AverageRead;

  @Int64()
  external int AverageWrite;

  @Uint32()
  external int Granularity;

  @Uint32()
  external int Size;

  @Uint32()
  external int ReadCount;

  @Uint32()
  external int WriteCount;

  external Pointer<HISTOGRAM_BUCKET> Histogram;
}

/// {@category Struct}
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

/// {@category Struct}
class DISK_LOGGING extends Struct {
  @Uint8()
  external int Function;

  external Pointer BufferAddress;

  @Uint32()
  external int BufferSize;
}

/// {@category Struct}
class DISK_PARTITION_INFO extends Struct {
  @Uint32()
  external int SizeOfPartitionInfo;

  @Int32()
  external int PartitionStyle;

  external _DISK_PARTITION_INFO__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _DISK_PARTITION_INFO__Anonymous_e__Union extends Union {
  external _DISK_PARTITION_INFO__Anonymous_e__Union__Mbr_e__Struct Mbr;

  external _DISK_PARTITION_INFO__Anonymous_e__Union__Gpt_e__Struct Gpt;
}

/// {@category Struct}
class _DISK_PARTITION_INFO__Anonymous_e__Union__Mbr_e__Struct extends Struct {
  @Uint32()
  external int Signature;

  @Uint32()
  external int CheckSum;
}

extension DISK_PARTITION_INFO__Anonymous_e__Union_Extension
    on DISK_PARTITION_INFO {
  int get Signature => this.Anonymous.Mbr.Signature;
  set Signature(int value) => this.Anonymous.Mbr.Signature = value;

  int get CheckSum => this.Anonymous.Mbr.CheckSum;
  set CheckSum(int value) => this.Anonymous.Mbr.CheckSum = value;
}

/// {@category Struct}
class _DISK_PARTITION_INFO__Anonymous_e__Union__Gpt_e__Struct extends Struct {
  external GUID DiskId;
}

extension DISK_PARTITION_INFO__Anonymous_e__Union_Extension_1
    on DISK_PARTITION_INFO {
  GUID get DiskId => this.Anonymous.Gpt.DiskId;
  set DiskId(GUID value) => this.Anonymous.Gpt.DiskId = value;
}

extension DISK_PARTITION_INFO_Extension on DISK_PARTITION_INFO {
  _DISK_PARTITION_INFO__Anonymous_e__Union__Mbr_e__Struct get Mbr =>
      this.Anonymous.Mbr;
  set Mbr(_DISK_PARTITION_INFO__Anonymous_e__Union__Mbr_e__Struct value) =>
      this.Anonymous.Mbr = value;

  _DISK_PARTITION_INFO__Anonymous_e__Union__Gpt_e__Struct get Gpt =>
      this.Anonymous.Gpt;
  set Gpt(_DISK_PARTITION_INFO__Anonymous_e__Union__Gpt_e__Struct value) =>
      this.Anonymous.Gpt = value;
}

/// {@category Struct}
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
  external Array<Uint16> _StorageManagerName;

  String get StorageManagerName {
    final charCodes = <int>[];
    for (var i = 0; i < 8; i++) {
      charCodes.add(_StorageManagerName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set StorageManagerName(String value) {
    final stringToStore = value.padRight(8, '\x00');
    for (var i = 0; i < 8; i++) {
      _StorageManagerName[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class DISK_RECORD extends Struct {
  @Int64()
  external int ByteOffset;

  @Int64()
  external int StartTime;

  @Int64()
  external int EndTime;

  external Pointer VirtualAddress;

  @Uint32()
  external int NumberOfBytes;

  @Uint8()
  external int DeviceNumber;

  @Uint8()
  external int ReadRequest;
}

/// {@category Struct}
@Packed(1)
class DRIVERSTATUS extends Struct {
  @Uint8()
  external int bDriverError;

  @Uint8()
  external int bIDEError;

  @Array(2)
  external Array<Uint8> bReserved;

  @Array(2)
  external Array<Uint32> dwReserved;
}

/// {@category Struct}
class DRIVE_LAYOUT_INFORMATION extends Struct {
  @Uint32()
  external int PartitionCount;

  @Uint32()
  external int Signature;

  @Array(1)
  external Array<PARTITION_INFORMATION> PartitionEntry;
}

/// {@category Struct}
class DRIVE_LAYOUT_INFORMATION_EX extends Struct {
  @Uint32()
  external int PartitionStyle;

  @Uint32()
  external int PartitionCount;

  external _DRIVE_LAYOUT_INFORMATION_EX__Anonymous_e__Union Anonymous;

  @Array(1)
  external Array<PARTITION_INFORMATION_EX> PartitionEntry;
}

/// {@category Struct}
class _DRIVE_LAYOUT_INFORMATION_EX__Anonymous_e__Union extends Union {
  external DRIVE_LAYOUT_INFORMATION_MBR Mbr;

  external DRIVE_LAYOUT_INFORMATION_GPT Gpt;
}

extension DRIVE_LAYOUT_INFORMATION_EX_Extension on DRIVE_LAYOUT_INFORMATION_EX {
  DRIVE_LAYOUT_INFORMATION_MBR get Mbr => this.Anonymous.Mbr;
  set Mbr(DRIVE_LAYOUT_INFORMATION_MBR value) => this.Anonymous.Mbr = value;

  DRIVE_LAYOUT_INFORMATION_GPT get Gpt => this.Anonymous.Gpt;
  set Gpt(DRIVE_LAYOUT_INFORMATION_GPT value) => this.Anonymous.Gpt = value;
}

/// {@category Struct}
class DRIVE_LAYOUT_INFORMATION_GPT extends Struct {
  external GUID DiskId;

  @Int64()
  external int StartingUsableOffset;

  @Int64()
  external int UsableLength;

  @Uint32()
  external int MaxPartitionCount;
}

/// {@category Struct}
class DRIVE_LAYOUT_INFORMATION_MBR extends Struct {
  @Uint32()
  external int Signature;

  @Uint32()
  external int CheckSum;
}

/// {@category Struct}
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

/// {@category Struct}
class DUPLICATE_EXTENTS_DATA32 extends Struct {
  @Uint32()
  external int FileHandle;

  @Int64()
  external int SourceFileOffset;

  @Int64()
  external int TargetFileOffset;

  @Int64()
  external int ByteCount;
}

/// {@category Struct}
class DUPLICATE_EXTENTS_DATA_EX extends Struct {
  @IntPtr()
  external int Size;

  @IntPtr()
  external int FileHandle;

  @Int64()
  external int SourceFileOffset;

  @Int64()
  external int TargetFileOffset;

  @Int64()
  external int ByteCount;

  @Uint32()
  external int Flags;
}

/// {@category Struct}
class DUPLICATE_EXTENTS_DATA_EX32 extends Struct {
  @Uint32()
  external int Size;

  @Uint32()
  external int FileHandle;

  @Int64()
  external int SourceFileOffset;

  @Int64()
  external int TargetFileOffset;

  @Int64()
  external int ByteCount;

  @Uint32()
  external int Flags;
}

/// {@category Struct}
class ENCRYPTED_DATA_INFO extends Struct {
  @Uint64()
  external int StartingFileOffset;

  @Uint32()
  external int OutputBufferOffset;

  @Uint32()
  external int BytesWithinFileSize;

  @Uint32()
  external int BytesWithinValidDataLength;

  @Uint16()
  external int CompressionFormat;

  @Uint8()
  external int DataUnitShift;

  @Uint8()
  external int ChunkShift;

  @Uint8()
  external int ClusterShift;

  @Uint8()
  external int EncryptionFormat;

  @Uint16()
  external int NumberOfDataBlocks;

  @Array(1)
  external Array<Uint32> DataBlockSize;
}

/// {@category Struct}
class ENCRYPTION_BUFFER extends Struct {
  @Uint32()
  external int EncryptionOperation;

  @Array(1)
  external Array<Uint8> Private;
}

/// {@category Struct}
class ENCRYPTION_KEY_CTRL_INPUT extends Struct {
  @Uint32()
  external int HeaderSize;

  @Uint32()
  external int StructureSize;

  @Uint16()
  external int KeyOffset;

  @Uint16()
  external int KeySize;

  @Uint32()
  external int DplLock;

  @Uint64()
  external int DplUserId;

  @Uint64()
  external int DplCredentialId;
}

/// {@category Struct}
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

/// {@category Struct}
class EXTENDED_ENCRYPTED_DATA_INFO extends Struct {
  @Uint32()
  external int ExtendedCode;

  @Uint32()
  external int Length;

  @Uint32()
  external int Flags;

  @Uint32()
  external int Reserved;
}

/// {@category Struct}
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

/// {@category Struct}
class FILESYSTEM_STATISTICS extends Struct {
  @Uint16()
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

/// {@category Struct}
class FILESYSTEM_STATISTICS_EX extends Struct {
  @Uint16()
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

/// {@category Struct}
class FILE_ALLOCATED_RANGE_BUFFER extends Struct {
  @Int64()
  external int FileOffset;

  @Int64()
  external int Length;
}

/// {@category Struct}
class FILE_DESIRED_STORAGE_CLASS_INFORMATION extends Struct {
  @Int32()
  external int Class;

  @Uint32()
  external int Flags;
}

/// {@category Struct}
class FILE_FS_PERSISTENT_VOLUME_INFORMATION extends Struct {
  @Uint32()
  external int VolumeFlags;

  @Uint32()
  external int FlagMask;

  @Uint32()
  external int Version;

  @Uint32()
  external int Reserved;
}

/// {@category Struct}
class FILE_INITIATE_REPAIR_OUTPUT_BUFFER extends Struct {
  @Uint64()
  external int Hint1;

  @Uint64()
  external int Hint2;

  @Uint64()
  external int Clsn;

  @Uint32()
  external int Status;
}

/// {@category Struct}
class FILE_LAYOUT_ENTRY extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int NextFileOffset;

  @Uint32()
  external int Flags;

  @Uint32()
  external int FileAttributes;

  @Uint64()
  external int FileReferenceNumber;

  @Uint32()
  external int FirstNameOffset;

  @Uint32()
  external int FirstStreamOffset;

  @Uint32()
  external int ExtraInfoOffset;

  @Uint32()
  external int ExtraInfoLength;
}

/// {@category Struct}
class FILE_LAYOUT_INFO_ENTRY extends Struct {
  external _FILE_LAYOUT_INFO_ENTRY__BasicInformation_e__Struct BasicInformation;

  @Uint32()
  external int OwnerId;

  @Uint32()
  external int SecurityId;

  @Int64()
  external int Usn;

  @Int32()
  external int StorageReserveId;
}

/// {@category Struct}
class _FILE_LAYOUT_INFO_ENTRY__BasicInformation_e__Struct extends Struct {
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

extension FILE_LAYOUT_INFO_ENTRY_Extension on FILE_LAYOUT_INFO_ENTRY {
  int get CreationTime => this.BasicInformation.CreationTime;
  set CreationTime(int value) => this.BasicInformation.CreationTime = value;

  int get LastAccessTime => this.BasicInformation.LastAccessTime;
  set LastAccessTime(int value) => this.BasicInformation.LastAccessTime = value;

  int get LastWriteTime => this.BasicInformation.LastWriteTime;
  set LastWriteTime(int value) => this.BasicInformation.LastWriteTime = value;

  int get ChangeTime => this.BasicInformation.ChangeTime;
  set ChangeTime(int value) => this.BasicInformation.ChangeTime = value;

  int get FileAttributes => this.BasicInformation.FileAttributes;
  set FileAttributes(int value) => this.BasicInformation.FileAttributes = value;
}

/// {@category Struct}
class FILE_LAYOUT_NAME_ENTRY extends Struct {
  @Uint32()
  external int NextNameOffset;

  @Uint32()
  external int Flags;

  @Uint64()
  external int ParentFileReferenceNumber;

  @Uint32()
  external int FileNameLength;

  @Uint32()
  external int Reserved;

  @Array(1)
  external Array<Uint16> _FileName;

  String get FileName {
    final charCodes = <int>[];
    for (var i = 0; i < 1; i++) {
      charCodes.add(_FileName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set FileName(String value) {
    final stringToStore = value.padRight(1, '\x00');
    for (var i = 0; i < 1; i++) {
      _FileName[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class FILE_LEVEL_TRIM extends Struct {
  @Uint32()
  external int Key;

  @Uint32()
  external int NumRanges;

  @Array(1)
  external Array<FILE_LEVEL_TRIM_RANGE> Ranges;
}

/// {@category Struct}
class FILE_LEVEL_TRIM_OUTPUT extends Struct {
  @Uint32()
  external int NumRangesProcessed;
}

/// {@category Struct}
class FILE_LEVEL_TRIM_RANGE extends Struct {
  @Uint64()
  external int Offset;

  @Uint64()
  external int Length;
}

/// {@category Struct}
class FILE_MAKE_COMPATIBLE_BUFFER extends Struct {
  @Uint8()
  external int CloseDisc;
}

/// {@category Struct}
class FILE_OBJECTID_BUFFER extends Struct {
  @Array(16)
  external Array<Uint8> ObjectId;

  external _FILE_OBJECTID_BUFFER__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _FILE_OBJECTID_BUFFER__Anonymous_e__Union extends Union {
  external _FILE_OBJECTID_BUFFER__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;

  @Array(48)
  external Array<Uint8> ExtendedInfo;
}

/// {@category Struct}
class _FILE_OBJECTID_BUFFER__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Array(16)
  external Array<Uint8> BirthVolumeId;

  @Array(16)
  external Array<Uint8> BirthObjectId;

  @Array(16)
  external Array<Uint8> DomainId;
}

extension FILE_OBJECTID_BUFFER__Anonymous_e__Union_Extension
    on FILE_OBJECTID_BUFFER {
  Array<Uint8> get BirthVolumeId => this.Anonymous.Anonymous.BirthVolumeId;
  set BirthVolumeId(Array<Uint8> value) =>
      this.Anonymous.Anonymous.BirthVolumeId = value;

  Array<Uint8> get BirthObjectId => this.Anonymous.Anonymous.BirthObjectId;
  set BirthObjectId(Array<Uint8> value) =>
      this.Anonymous.Anonymous.BirthObjectId = value;

  Array<Uint8> get DomainId => this.Anonymous.Anonymous.DomainId;
  set DomainId(Array<Uint8> value) => this.Anonymous.Anonymous.DomainId = value;
}

extension FILE_OBJECTID_BUFFER_Extension on FILE_OBJECTID_BUFFER {
  _FILE_OBJECTID_BUFFER__Anonymous_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
          _FILE_OBJECTID_BUFFER__Anonymous_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous.Anonymous = value;

  Array<Uint8> get ExtendedInfo => this.Anonymous.ExtendedInfo;
  set ExtendedInfo(Array<Uint8> value) => this.Anonymous.ExtendedInfo = value;
}

/// {@category Struct}
class FILE_PREFETCH extends Struct {
  @Uint32()
  external int Type;

  @Uint32()
  external int Count;

  @Array(1)
  external Array<Uint64> Prefetch;
}

/// {@category Struct}
class FILE_PREFETCH_EX extends Struct {
  @Uint32()
  external int Type;

  @Uint32()
  external int Count;

  external Pointer Context;

  @Array(1)
  external Array<Uint64> Prefetch;
}

/// {@category Struct}
class FILE_PROVIDER_EXTERNAL_INFO_V0 extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Algorithm;
}

/// {@category Struct}
class FILE_PROVIDER_EXTERNAL_INFO_V1 extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Algorithm;

  @Uint32()
  external int Flags;
}

/// {@category Struct}
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
  external Array<Uint16> _FsFormatName;

  String get FsFormatName {
    final charCodes = <int>[];
    for (var i = 0; i < 12; i++) {
      charCodes.add(_FsFormatName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set FsFormatName(String value) {
    final stringToStore = value.padRight(12, '\x00');
    for (var i = 0; i < 12; i++) {
      _FsFormatName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Int64()
  external int FormatTime;

  @Int64()
  external int LastUpdateTime;

  @Array(34)
  external Array<Uint16> _CopyrightInfo;

  String get CopyrightInfo {
    final charCodes = <int>[];
    for (var i = 0; i < 34; i++) {
      charCodes.add(_CopyrightInfo[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set CopyrightInfo(String value) {
    final stringToStore = value.padRight(34, '\x00');
    for (var i = 0; i < 34; i++) {
      _CopyrightInfo[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(34)
  external Array<Uint16> _AbstractInfo;

  String get AbstractInfo {
    final charCodes = <int>[];
    for (var i = 0; i < 34; i++) {
      charCodes.add(_AbstractInfo[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set AbstractInfo(String value) {
    final stringToStore = value.padRight(34, '\x00');
    for (var i = 0; i < 34; i++) {
      _AbstractInfo[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(34)
  external Array<Uint16> _FormattingImplementationInfo;

  String get FormattingImplementationInfo {
    final charCodes = <int>[];
    for (var i = 0; i < 34; i++) {
      charCodes.add(_FormattingImplementationInfo[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set FormattingImplementationInfo(String value) {
    final stringToStore = value.padRight(34, '\x00');
    for (var i = 0; i < 34; i++) {
      _FormattingImplementationInfo[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(34)
  external Array<Uint16> _LastModifyingImplementationInfo;

  String get LastModifyingImplementationInfo {
    final charCodes = <int>[];
    for (var i = 0; i < 34; i++) {
      charCodes.add(_LastModifyingImplementationInfo[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set LastModifyingImplementationInfo(String value) {
    final stringToStore = value.padRight(34, '\x00');
    for (var i = 0; i < 34; i++) {
      _LastModifyingImplementationInfo[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
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

/// {@category Struct}
class FILE_REFERENCE_RANGE extends Struct {
  @Uint64()
  external int StartingFileReferenceNumber;

  @Uint64()
  external int EndingFileReferenceNumber;
}

/// {@category Struct}
class FILE_REGION_INFO extends Struct {
  @Int64()
  external int FileOffset;

  @Int64()
  external int Length;

  @Uint32()
  external int Usage;

  @Uint32()
  external int Reserved;
}

/// {@category Struct}
class FILE_REGION_INPUT extends Struct {
  @Int64()
  external int FileOffset;

  @Int64()
  external int Length;

  @Uint32()
  external int DesiredUsage;
}

/// {@category Struct}
class FILE_REGION_OUTPUT extends Struct {
  @Uint32()
  external int Flags;

  @Uint32()
  external int TotalRegionEntryCount;

  @Uint32()
  external int RegionEntryCount;

  @Uint32()
  external int Reserved;

  @Array(1)
  external Array<FILE_REGION_INFO> Region;
}

/// {@category Struct}
class FILE_SET_DEFECT_MGMT_BUFFER extends Struct {
  @Uint8()
  external int Disable;
}

/// {@category Struct}
class FILE_SET_SPARSE_BUFFER extends Struct {
  @Uint8()
  external int SetSparse;
}

/// {@category Struct}
class FILE_STORAGE_TIER extends Struct {
  external GUID Id;

  @Array(256)
  external Array<Uint16> _Name;

  String get Name {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_Name[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set Name(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _Name[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(256)
  external Array<Uint16> _Description;

  String get Description {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_Description[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set Description(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _Description[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int Flags;

  @Uint64()
  external int ProvisionedCapacity;

  @Int32()
  external int MediaType;

  @Int32()
  external int Class;
}

/// {@category Struct}
class FILE_STORAGE_TIER_REGION extends Struct {
  external GUID TierId;

  @Uint64()
  external int Offset;

  @Uint64()
  external int Length;
}

/// {@category Struct}
class FILE_SYSTEM_RECOGNITION_INFORMATION extends Struct {
  @Array(9)
  external Array<Uint8> FileSystem;
}

/// {@category Struct}
class FILE_TYPE_NOTIFICATION_INPUT extends Struct {
  @Uint32()
  external int Flags;

  @Uint32()
  external int NumFileTypeIDs;

  @Array(1)
  external Array<GUID> FileTypeID;
}

/// {@category Struct}
class FILE_ZERO_DATA_INFORMATION extends Struct {
  @Int64()
  external int FileOffset;

  @Int64()
  external int BeyondFinalZero;
}

/// {@category Struct}
class FILE_ZERO_DATA_INFORMATION_EX extends Struct {
  @Int64()
  external int FileOffset;

  @Int64()
  external int BeyondFinalZero;

  @Uint32()
  external int Flags;
}

/// {@category Struct}
class FIND_BY_SID_DATA extends Struct {
  @Uint32()
  external int Restart;

  external SID Sid;
}

/// {@category Struct}
class FIND_BY_SID_OUTPUT extends Struct {
  @Uint32()
  external int NextEntryOffset;

  @Uint32()
  external int FileIndex;

  @Uint32()
  external int FileNameLength;

  @Array(1)
  external Array<Uint16> _FileName;

  String get FileName {
    final charCodes = <int>[];
    for (var i = 0; i < 1; i++) {
      charCodes.add(_FileName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set FileName(String value) {
    final stringToStore = value.padRight(1, '\x00');
    for (var i = 0; i < 1; i++) {
      _FileName[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class FORMAT_EX_PARAMETERS extends Struct {
  @Int32()
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

/// {@category Struct}
class FORMAT_PARAMETERS extends Struct {
  @Int32()
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

/// {@category Struct}
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

/// {@category Struct}
class FSCTL_OFFLOAD_READ_INPUT extends Struct {
  @Uint32()
  external int Size;

  @Uint32()
  external int Flags;

  @Uint32()
  external int TokenTimeToLive;

  @Uint32()
  external int Reserved;

  @Uint64()
  external int FileOffset;

  @Uint64()
  external int CopyLength;
}

/// {@category Struct}
class FSCTL_OFFLOAD_READ_OUTPUT extends Struct {
  @Uint32()
  external int Size;

  @Uint32()
  external int Flags;

  @Uint64()
  external int TransferLength;

  @Array(512)
  external Array<Uint8> Token;
}

/// {@category Struct}
class FSCTL_OFFLOAD_WRITE_INPUT extends Struct {
  @Uint32()
  external int Size;

  @Uint32()
  external int Flags;

  @Uint64()
  external int FileOffset;

  @Uint64()
  external int CopyLength;

  @Uint64()
  external int TransferOffset;

  @Array(512)
  external Array<Uint8> Token;
}

/// {@category Struct}
class FSCTL_OFFLOAD_WRITE_OUTPUT extends Struct {
  @Uint32()
  external int Size;

  @Uint32()
  external int Flags;

  @Uint64()
  external int LengthWritten;
}

/// {@category Struct}
class FSCTL_QUERY_FAT_BPB_BUFFER extends Struct {
  @Array(36)
  external Array<Uint8> First0x24BytesOfBootSector;
}

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
class FSCTL_SET_INTEGRITY_INFORMATION_BUFFER extends Struct {
  @Uint16()
  external int ChecksumAlgorithm;

  @Uint16()
  external int Reserved;

  @Uint32()
  external int Flags;
}

/// {@category Struct}
class FSCTL_SET_INTEGRITY_INFORMATION_BUFFER_EX extends Struct {
  @Uint8()
  external int EnableIntegrity;

  @Uint8()
  external int KeepIntegrityStateUnchanged;

  @Uint16()
  external int Reserved;

  @Uint32()
  external int Flags;

  @Uint8()
  external int Version;

  @Array(7)
  external Array<Uint8> Reserved2;
}

/// {@category Struct}
class FS_BPIO_INFO extends Struct {
  @Uint32()
  external int ActiveBypassIoCount;

  @Uint16()
  external int StorageDriverNameLen;

  @Array(32)
  external Array<Uint16> _StorageDriverName;

  String get StorageDriverName {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      charCodes.add(_StorageDriverName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set StorageDriverName(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _StorageDriverName[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class FS_BPIO_INPUT extends Struct {
  @Int32()
  external int Operation;

  @Int32()
  external int InFlags;

  @Uint64()
  external int Reserved1;

  @Uint64()
  external int Reserved2;
}

/// {@category Struct}
class FS_BPIO_OUTPUT extends Struct {
  @Int32()
  external int Operation;

  @Int32()
  external int OutFlags;

  @Uint64()
  external int Reserved1;

  @Uint64()
  external int Reserved2;

  external _FS_BPIO_OUTPUT__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _FS_BPIO_OUTPUT__Anonymous_e__Union extends Union {
  external FS_BPIO_RESULTS Enable;

  external FS_BPIO_RESULTS Query;

  external FS_BPIO_RESULTS VolumeStackResume;

  external FS_BPIO_RESULTS StreamResume;

  external FS_BPIO_INFO GetInfo;
}

extension FS_BPIO_OUTPUT_Extension on FS_BPIO_OUTPUT {
  FS_BPIO_RESULTS get Enable => this.Anonymous.Enable;
  set Enable(FS_BPIO_RESULTS value) => this.Anonymous.Enable = value;

  FS_BPIO_RESULTS get Query => this.Anonymous.Query;
  set Query(FS_BPIO_RESULTS value) => this.Anonymous.Query = value;

  FS_BPIO_RESULTS get VolumeStackResume => this.Anonymous.VolumeStackResume;
  set VolumeStackResume(FS_BPIO_RESULTS value) =>
      this.Anonymous.VolumeStackResume = value;

  FS_BPIO_RESULTS get StreamResume => this.Anonymous.StreamResume;
  set StreamResume(FS_BPIO_RESULTS value) =>
      this.Anonymous.StreamResume = value;

  FS_BPIO_INFO get GetInfo => this.Anonymous.GetInfo;
  set GetInfo(FS_BPIO_INFO value) => this.Anonymous.GetInfo = value;
}

/// {@category Struct}
class FS_BPIO_RESULTS extends Struct {
  @Uint32()
  external int OpStatus;

  @Uint16()
  external int FailingDriverNameLen;

  @Array(32)
  external Array<Uint16> _FailingDriverName;

  String get FailingDriverName {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      charCodes.add(_FailingDriverName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set FailingDriverName(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _FailingDriverName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint16()
  external int FailureReasonLen;

  @Array(128)
  external Array<Uint16> _FailureReason;

  String get FailureReason {
    final charCodes = <int>[];
    for (var i = 0; i < 128; i++) {
      charCodes.add(_FailureReason[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set FailureReason(String value) {
    final stringToStore = value.padRight(128, '\x00');
    for (var i = 0; i < 128; i++) {
      _FailureReason[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
@Packed(1)
class GETVERSIONINPARAMS extends Struct {
  @Uint8()
  external int bVersion;

  @Uint8()
  external int bRevision;

  @Uint8()
  external int bReserved;

  @Uint8()
  external int bIDEDeviceMap;

  @Uint32()
  external int fCapabilities;

  @Array(4)
  external Array<Uint32> dwReserved;
}

/// {@category Struct}
class GET_CHANGER_PARAMETERS extends Struct {
  @Uint32()
  external int Size;

  @Uint16()
  external int NumberTransportElements;

  @Uint16()
  external int NumberStorageElements;

  @Uint16()
  external int NumberCleanerSlots;

  @Uint16()
  external int NumberIEElements;

  @Uint16()
  external int NumberDataTransferElements;

  @Uint16()
  external int NumberOfDoors;

  @Uint16()
  external int FirstSlotNumber;

  @Uint16()
  external int FirstDriveNumber;

  @Uint16()
  external int FirstTransportNumber;

  @Uint16()
  external int FirstIEPortNumber;

  @Uint16()
  external int FirstCleanerSlotAddress;

  @Uint16()
  external int MagazineSize;

  @Uint32()
  external int DriveCleanTimeout;

  @Uint32()
  external int Features0;

  @Uint32()
  external int Features1;

  @Uint8()
  external int MoveFromTransport;

  @Uint8()
  external int MoveFromSlot;

  @Uint8()
  external int MoveFromIePort;

  @Uint8()
  external int MoveFromDrive;

  @Uint8()
  external int ExchangeFromTransport;

  @Uint8()
  external int ExchangeFromSlot;

  @Uint8()
  external int ExchangeFromIePort;

  @Uint8()
  external int ExchangeFromDrive;

  @Uint8()
  external int LockUnlockCapabilities;

  @Uint8()
  external int PositionCapabilities;

  @Array(2)
  external Array<Uint8> Reserved1;

  @Array(2)
  external Array<Uint32> Reserved2;
}

/// {@category Struct}
class GET_DEVICE_INTERNAL_STATUS_DATA_REQUEST extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  @Int32()
  external int RequestDataType;

  @Int32()
  external int RequestDataSet;
}

/// {@category Struct}
class GET_DISK_ATTRIBUTES extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Reserved1;

  @Uint64()
  external int Attributes;
}

/// {@category Struct}
class GET_FILTER_FILE_IDENTIFIER_INPUT extends Struct {
  @Uint16()
  external int AltitudeLength;

  @Array(1)
  external Array<Uint16> _Altitude;

  String get Altitude {
    final charCodes = <int>[];
    for (var i = 0; i < 1; i++) {
      charCodes.add(_Altitude[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set Altitude(String value) {
    final stringToStore = value.padRight(1, '\x00');
    for (var i = 0; i < 1; i++) {
      _Altitude[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class GET_FILTER_FILE_IDENTIFIER_OUTPUT extends Struct {
  @Uint16()
  external int FilterFileIdentifierLength;

  @Array(1)
  external Array<Uint8> FilterFileIdentifier;
}

/// {@category Struct}
class GET_LENGTH_INFORMATION extends Struct {
  @Int64()
  external int Length;
}

/// {@category Struct}
class GET_MEDIA_TYPES extends Struct {
  @Uint32()
  external int DeviceType;

  @Uint32()
  external int MediaInfoCount;

  @Array(1)
  external Array<DEVICE_MEDIA_INFO> MediaInfo;
}

/// {@category Struct}
@Packed(1)
class GP_LOG_PAGE_DESCRIPTOR extends Struct {
  @Uint16()
  external int LogAddress;

  @Uint16()
  external int LogSectors;
}

/// {@category Struct}
class HISTOGRAM_BUCKET extends Struct {
  @Uint32()
  external int Reads;

  @Uint32()
  external int Writes;
}

/// {@category Struct}
class IDEREGS extends Struct {
  @Uint8()
  external int bFeaturesReg;

  @Uint8()
  external int bSectorCountReg;

  @Uint8()
  external int bSectorNumberReg;

  @Uint8()
  external int bCylLowReg;

  @Uint8()
  external int bCylHighReg;

  @Uint8()
  external int bDriveHeadReg;

  @Uint8()
  external int bCommandReg;

  @Uint8()
  external int bReserved;
}

/// {@category Struct}
class IO_IRP_EXT_TRACK_OFFSET_HEADER extends Struct {
  @Uint16()
  external int Validation;

  @Uint16()
  external int Flags;

  external Pointer<NativeFunction<PIO_IRP_EXT_PROCESS_TRACKED_OFFSET_CALLBACK>>
      TrackedOffsetCallback;
}

/// {@category Struct}
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
  external Array<Uint16> _FileName;

  String get FileName {
    final charCodes = <int>[];
    for (var i = 0; i < 1; i++) {
      charCodes.add(_FileName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set FileName(String value) {
    final stringToStore = value.padRight(1, '\x00');
    for (var i = 0; i < 1; i++) {
      _FileName[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class LOOKUP_STREAM_FROM_CLUSTER_INPUT extends Struct {
  @Uint32()
  external int Flags;

  @Uint32()
  external int NumberOfClusters;

  @Array(1)
  external Array<Int64> Cluster;
}

/// {@category Struct}
class LOOKUP_STREAM_FROM_CLUSTER_OUTPUT extends Struct {
  @Uint32()
  external int Offset;

  @Uint32()
  external int NumberOfMatches;

  @Uint32()
  external int BufferSizeRequired;
}

/// {@category Struct}
class MARK_HANDLE_INFO extends Struct {
  external _MARK_HANDLE_INFO__Anonymous_e__Union Anonymous;

  @IntPtr()
  external int VolumeHandle;

  @Uint32()
  external int HandleInfo;
}

/// {@category Struct}
class _MARK_HANDLE_INFO__Anonymous_e__Union extends Union {
  @Uint32()
  external int UsnSourceInfo;

  @Uint32()
  external int CopyNumber;
}

extension MARK_HANDLE_INFO_Extension on MARK_HANDLE_INFO {
  int get UsnSourceInfo => this.Anonymous.UsnSourceInfo;
  set UsnSourceInfo(int value) => this.Anonymous.UsnSourceInfo = value;

  int get CopyNumber => this.Anonymous.CopyNumber;
  set CopyNumber(int value) => this.Anonymous.CopyNumber = value;
}

/// {@category Struct}
class MARK_HANDLE_INFO32 extends Struct {
  external _MARK_HANDLE_INFO32__Anonymous_e__Union Anonymous;

  @Uint32()
  external int VolumeHandle;

  @Uint32()
  external int HandleInfo;
}

/// {@category Struct}
class _MARK_HANDLE_INFO32__Anonymous_e__Union extends Union {
  @Uint32()
  external int UsnSourceInfo;

  @Uint32()
  external int CopyNumber;
}

extension MARK_HANDLE_INFO32_Extension on MARK_HANDLE_INFO32 {
  int get UsnSourceInfo => this.Anonymous.UsnSourceInfo;
  set UsnSourceInfo(int value) => this.Anonymous.UsnSourceInfo = value;

  int get CopyNumber => this.Anonymous.CopyNumber;
  set CopyNumber(int value) => this.Anonymous.CopyNumber = value;
}

/// {@category Struct}
class MFT_ENUM_DATA_V0 extends Struct {
  @Uint64()
  external int StartFileReferenceNumber;

  @Int64()
  external int LowUsn;

  @Int64()
  external int HighUsn;
}

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
class MOVE_FILE_DATA32 extends Struct {
  @Uint32()
  external int FileHandle;

  @Int64()
  external int StartingVcn;

  @Int64()
  external int StartingLcn;

  @Uint32()
  external int ClusterCount;
}

/// {@category Struct}
class MOVE_FILE_RECORD_DATA extends Struct {
  @IntPtr()
  external int FileHandle;

  @Int64()
  external int SourceFileRecord;

  @Int64()
  external int TargetFileRecord;
}

/// {@category Struct}
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

/// {@category Struct}
class NTFS_FILE_RECORD_INPUT_BUFFER extends Struct {
  @Int64()
  external int FileReferenceNumber;
}

/// {@category Struct}
class NTFS_FILE_RECORD_OUTPUT_BUFFER extends Struct {
  @Int64()
  external int FileReferenceNumber;

  @Uint32()
  external int FileRecordLength;

  @Array(1)
  external Array<Uint8> FileRecordBuffer;
}

/// {@category Struct}
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

  external _NTFS_STATISTICS__MftWritesUserLevel_e__Struct MftWritesUserLevel;

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

  external _NTFS_STATISTICS__Mft2WritesUserLevel_e__Struct Mft2WritesUserLevel;

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

  external _NTFS_STATISTICS__BitmapWritesUserLevel_e__Struct
      BitmapWritesUserLevel;

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

  external _NTFS_STATISTICS__MftBitmapWritesUserLevel_e__Struct
      MftBitmapWritesUserLevel;

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

  external _NTFS_STATISTICS__Allocate_e__Struct Allocate;

  @Uint32()
  external int DiskResourcesExhausted;
}

/// {@category Struct}
class _NTFS_STATISTICS__MftWritesUserLevel_e__Struct extends Struct {
  @Uint16()
  external int Write;

  @Uint16()
  external int Create;

  @Uint16()
  external int SetInfo;

  @Uint16()
  external int Flush;
}

extension NTFS_STATISTICS_Extension on NTFS_STATISTICS {
  int get Write => this.MftWritesUserLevel.Write;
  set Write(int value) => this.MftWritesUserLevel.Write = value;

  int get Create => this.MftWritesUserLevel.Create;
  set Create(int value) => this.MftWritesUserLevel.Create = value;

  int get SetInfo => this.MftWritesUserLevel.SetInfo;
  set SetInfo(int value) => this.MftWritesUserLevel.SetInfo = value;

  int get Flush => this.MftWritesUserLevel.Flush;
  set Flush(int value) => this.MftWritesUserLevel.Flush = value;
}

/// {@category Struct}
class _NTFS_STATISTICS__Mft2WritesUserLevel_e__Struct extends Struct {
  @Uint16()
  external int Write;

  @Uint16()
  external int Create;

  @Uint16()
  external int SetInfo;

  @Uint16()
  external int Flush;
}

extension NTFS_STATISTICS_Extension_1 on NTFS_STATISTICS {
  int get Write => this.Mft2WritesUserLevel.Write;
  set Write(int value) => this.Mft2WritesUserLevel.Write = value;

  int get Create => this.Mft2WritesUserLevel.Create;
  set Create(int value) => this.Mft2WritesUserLevel.Create = value;

  int get SetInfo => this.Mft2WritesUserLevel.SetInfo;
  set SetInfo(int value) => this.Mft2WritesUserLevel.SetInfo = value;

  int get Flush => this.Mft2WritesUserLevel.Flush;
  set Flush(int value) => this.Mft2WritesUserLevel.Flush = value;
}

/// {@category Struct}
class _NTFS_STATISTICS__BitmapWritesUserLevel_e__Struct extends Struct {
  @Uint16()
  external int Write;

  @Uint16()
  external int Create;

  @Uint16()
  external int SetInfo;
}

extension NTFS_STATISTICS_Extension_2 on NTFS_STATISTICS {
  int get Write => this.BitmapWritesUserLevel.Write;
  set Write(int value) => this.BitmapWritesUserLevel.Write = value;

  int get Create => this.BitmapWritesUserLevel.Create;
  set Create(int value) => this.BitmapWritesUserLevel.Create = value;

  int get SetInfo => this.BitmapWritesUserLevel.SetInfo;
  set SetInfo(int value) => this.BitmapWritesUserLevel.SetInfo = value;
}

/// {@category Struct}
class _NTFS_STATISTICS__MftBitmapWritesUserLevel_e__Struct extends Struct {
  @Uint16()
  external int Write;

  @Uint16()
  external int Create;

  @Uint16()
  external int SetInfo;

  @Uint16()
  external int Flush;
}

extension NTFS_STATISTICS_Extension_3 on NTFS_STATISTICS {
  int get Write => this.MftBitmapWritesUserLevel.Write;
  set Write(int value) => this.MftBitmapWritesUserLevel.Write = value;

  int get Create => this.MftBitmapWritesUserLevel.Create;
  set Create(int value) => this.MftBitmapWritesUserLevel.Create = value;

  int get SetInfo => this.MftBitmapWritesUserLevel.SetInfo;
  set SetInfo(int value) => this.MftBitmapWritesUserLevel.SetInfo = value;

  int get Flush => this.MftBitmapWritesUserLevel.Flush;
  set Flush(int value) => this.MftBitmapWritesUserLevel.Flush = value;
}

/// {@category Struct}
class _NTFS_STATISTICS__Allocate_e__Struct extends Struct {
  @Uint32()
  external int Calls;

  @Uint32()
  external int Clusters;

  @Uint32()
  external int Hints;

  @Uint32()
  external int RunsReturned;

  @Uint32()
  external int HintsHonored;

  @Uint32()
  external int HintsClusters;

  @Uint32()
  external int Cache;

  @Uint32()
  external int CacheClusters;

  @Uint32()
  external int CacheMiss;

  @Uint32()
  external int CacheMissClusters;
}

extension NTFS_STATISTICS_Extension_4 on NTFS_STATISTICS {
  int get Calls => this.Allocate.Calls;
  set Calls(int value) => this.Allocate.Calls = value;

  int get Clusters => this.Allocate.Clusters;
  set Clusters(int value) => this.Allocate.Clusters = value;

  int get Hints => this.Allocate.Hints;
  set Hints(int value) => this.Allocate.Hints = value;

  int get RunsReturned => this.Allocate.RunsReturned;
  set RunsReturned(int value) => this.Allocate.RunsReturned = value;

  int get HintsHonored => this.Allocate.HintsHonored;
  set HintsHonored(int value) => this.Allocate.HintsHonored = value;

  int get HintsClusters => this.Allocate.HintsClusters;
  set HintsClusters(int value) => this.Allocate.HintsClusters = value;

  int get Cache => this.Allocate.Cache;
  set Cache(int value) => this.Allocate.Cache = value;

  int get CacheClusters => this.Allocate.CacheClusters;
  set CacheClusters(int value) => this.Allocate.CacheClusters = value;

  int get CacheMiss => this.Allocate.CacheMiss;
  set CacheMiss(int value) => this.Allocate.CacheMiss = value;

  int get CacheMissClusters => this.Allocate.CacheMissClusters;
  set CacheMissClusters(int value) => this.Allocate.CacheMissClusters = value;
}

/// {@category Struct}
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

  external _NTFS_STATISTICS_EX__MftWritesUserLevel_e__Struct MftWritesUserLevel;

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

  external _NTFS_STATISTICS_EX__Mft2WritesUserLevel_e__Struct
      Mft2WritesUserLevel;

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

  external _NTFS_STATISTICS_EX__BitmapWritesUserLevel_e__Struct
      BitmapWritesUserLevel;

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

  external _NTFS_STATISTICS_EX__MftBitmapWritesUserLevel_e__Struct
      MftBitmapWritesUserLevel;

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

  external _NTFS_STATISTICS_EX__Allocate_e__Struct Allocate;

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

/// {@category Struct}
class _NTFS_STATISTICS_EX__MftWritesUserLevel_e__Struct extends Struct {
  @Uint32()
  external int Write;

  @Uint32()
  external int Create;

  @Uint32()
  external int SetInfo;

  @Uint32()
  external int Flush;
}

extension NTFS_STATISTICS_EX_Extension on NTFS_STATISTICS_EX {
  int get Write => this.MftWritesUserLevel.Write;
  set Write(int value) => this.MftWritesUserLevel.Write = value;

  int get Create => this.MftWritesUserLevel.Create;
  set Create(int value) => this.MftWritesUserLevel.Create = value;

  int get SetInfo => this.MftWritesUserLevel.SetInfo;
  set SetInfo(int value) => this.MftWritesUserLevel.SetInfo = value;

  int get Flush => this.MftWritesUserLevel.Flush;
  set Flush(int value) => this.MftWritesUserLevel.Flush = value;
}

/// {@category Struct}
class _NTFS_STATISTICS_EX__Mft2WritesUserLevel_e__Struct extends Struct {
  @Uint32()
  external int Write;

  @Uint32()
  external int Create;

  @Uint32()
  external int SetInfo;

  @Uint32()
  external int Flush;
}

extension NTFS_STATISTICS_EX_Extension_1 on NTFS_STATISTICS_EX {
  int get Write => this.Mft2WritesUserLevel.Write;
  set Write(int value) => this.Mft2WritesUserLevel.Write = value;

  int get Create => this.Mft2WritesUserLevel.Create;
  set Create(int value) => this.Mft2WritesUserLevel.Create = value;

  int get SetInfo => this.Mft2WritesUserLevel.SetInfo;
  set SetInfo(int value) => this.Mft2WritesUserLevel.SetInfo = value;

  int get Flush => this.Mft2WritesUserLevel.Flush;
  set Flush(int value) => this.Mft2WritesUserLevel.Flush = value;
}

/// {@category Struct}
class _NTFS_STATISTICS_EX__BitmapWritesUserLevel_e__Struct extends Struct {
  @Uint32()
  external int Write;

  @Uint32()
  external int Create;

  @Uint32()
  external int SetInfo;

  @Uint32()
  external int Flush;
}

extension NTFS_STATISTICS_EX_Extension_2 on NTFS_STATISTICS_EX {
  int get Write => this.BitmapWritesUserLevel.Write;
  set Write(int value) => this.BitmapWritesUserLevel.Write = value;

  int get Create => this.BitmapWritesUserLevel.Create;
  set Create(int value) => this.BitmapWritesUserLevel.Create = value;

  int get SetInfo => this.BitmapWritesUserLevel.SetInfo;
  set SetInfo(int value) => this.BitmapWritesUserLevel.SetInfo = value;

  int get Flush => this.BitmapWritesUserLevel.Flush;
  set Flush(int value) => this.BitmapWritesUserLevel.Flush = value;
}

/// {@category Struct}
class _NTFS_STATISTICS_EX__MftBitmapWritesUserLevel_e__Struct extends Struct {
  @Uint32()
  external int Write;

  @Uint32()
  external int Create;

  @Uint32()
  external int SetInfo;

  @Uint32()
  external int Flush;
}

extension NTFS_STATISTICS_EX_Extension_3 on NTFS_STATISTICS_EX {
  int get Write => this.MftBitmapWritesUserLevel.Write;
  set Write(int value) => this.MftBitmapWritesUserLevel.Write = value;

  int get Create => this.MftBitmapWritesUserLevel.Create;
  set Create(int value) => this.MftBitmapWritesUserLevel.Create = value;

  int get SetInfo => this.MftBitmapWritesUserLevel.SetInfo;
  set SetInfo(int value) => this.MftBitmapWritesUserLevel.SetInfo = value;

  int get Flush => this.MftBitmapWritesUserLevel.Flush;
  set Flush(int value) => this.MftBitmapWritesUserLevel.Flush = value;
}

/// {@category Struct}
class _NTFS_STATISTICS_EX__Allocate_e__Struct extends Struct {
  @Uint32()
  external int Calls;

  @Uint32()
  external int RunsReturned;

  @Uint32()
  external int Hints;

  @Uint32()
  external int HintsHonored;

  @Uint32()
  external int Cache;

  @Uint32()
  external int CacheMiss;

  @Uint64()
  external int Clusters;

  @Uint64()
  external int HintsClusters;

  @Uint64()
  external int CacheClusters;

  @Uint64()
  external int CacheMissClusters;
}

extension NTFS_STATISTICS_EX_Extension_4 on NTFS_STATISTICS_EX {
  int get Calls => this.Allocate.Calls;
  set Calls(int value) => this.Allocate.Calls = value;

  int get RunsReturned => this.Allocate.RunsReturned;
  set RunsReturned(int value) => this.Allocate.RunsReturned = value;

  int get Hints => this.Allocate.Hints;
  set Hints(int value) => this.Allocate.Hints = value;

  int get HintsHonored => this.Allocate.HintsHonored;
  set HintsHonored(int value) => this.Allocate.HintsHonored = value;

  int get Cache => this.Allocate.Cache;
  set Cache(int value) => this.Allocate.Cache = value;

  int get CacheMiss => this.Allocate.CacheMiss;
  set CacheMiss(int value) => this.Allocate.CacheMiss = value;

  int get Clusters => this.Allocate.Clusters;
  set Clusters(int value) => this.Allocate.Clusters = value;

  int get HintsClusters => this.Allocate.HintsClusters;
  set HintsClusters(int value) => this.Allocate.HintsClusters = value;

  int get CacheClusters => this.Allocate.CacheClusters;
  set CacheClusters(int value) => this.Allocate.CacheClusters = value;

  int get CacheMissClusters => this.Allocate.CacheMissClusters;
  set CacheMissClusters(int value) => this.Allocate.CacheMissClusters = value;
}

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
class PARTITION_INFORMATION_EX extends Struct {
  @Int32()
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

  external _PARTITION_INFORMATION_EX__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _PARTITION_INFORMATION_EX__Anonymous_e__Union extends Union {
  external PARTITION_INFORMATION_MBR Mbr;

  external PARTITION_INFORMATION_GPT Gpt;
}

extension PARTITION_INFORMATION_EX_Extension on PARTITION_INFORMATION_EX {
  PARTITION_INFORMATION_MBR get Mbr => this.Anonymous.Mbr;
  set Mbr(PARTITION_INFORMATION_MBR value) => this.Anonymous.Mbr = value;

  PARTITION_INFORMATION_GPT get Gpt => this.Anonymous.Gpt;
  set Gpt(PARTITION_INFORMATION_GPT value) => this.Anonymous.Gpt = value;
}

/// {@category Struct}
class PARTITION_INFORMATION_GPT extends Struct {
  external GUID PartitionType;

  external GUID PartitionId;

  @Uint64()
  external int Attributes;

  @Array(36)
  external Array<Uint16> _Name;

  String get Name {
    final charCodes = <int>[];
    for (var i = 0; i < 36; i++) {
      charCodes.add(_Name[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set Name(String value) {
    final stringToStore = value.padRight(36, '\x00');
    for (var i = 0; i < 36; i++) {
      _Name[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
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

/// {@category Struct}
class PATHNAME_BUFFER extends Struct {
  @Uint32()
  external int PathNameLength;

  @Array(1)
  external Array<Uint16> _Name;

  String get Name {
    final charCodes = <int>[];
    for (var i = 0; i < 1; i++) {
      charCodes.add(_Name[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set Name(String value) {
    final stringToStore = value.padRight(1, '\x00');
    for (var i = 0; i < 1; i++) {
      _Name[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class PERF_BIN extends Struct {
  @Uint32()
  external int NumberOfBins;

  @Uint32()
  external int TypeOfBin;

  @Array(1)
  external Array<BIN_RANGE> BinsRanges;
}

/// {@category Struct}
class PERSISTENT_RESERVE_COMMAND extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  external _PERSISTENT_RESERVE_COMMAND__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _PERSISTENT_RESERVE_COMMAND__Anonymous_e__Union extends Union {
  external _PERSISTENT_RESERVE_COMMAND__Anonymous_e__Union__PR_IN_e__Struct
      PR_IN;

  external _PERSISTENT_RESERVE_COMMAND__Anonymous_e__Union__PR_OUT_e__Struct
      PR_OUT;
}

/// {@category Struct}
class _PERSISTENT_RESERVE_COMMAND__Anonymous_e__Union__PR_IN_e__Struct
    extends Struct {
  @Uint8()
  external int bitfield;

  @Uint16()
  external int AllocationLength;
}

extension PERSISTENT_RESERVE_COMMAND__Anonymous_e__Union_Extension
    on PERSISTENT_RESERVE_COMMAND {
  int get bitfield => this.Anonymous.PR_IN.bitfield;
  set bitfield(int value) => this.Anonymous.PR_IN.bitfield = value;

  int get AllocationLength => this.Anonymous.PR_IN.AllocationLength;
  set AllocationLength(int value) =>
      this.Anonymous.PR_IN.AllocationLength = value;
}

/// {@category Struct}
class _PERSISTENT_RESERVE_COMMAND__Anonymous_e__Union__PR_OUT_e__Struct
    extends Struct {
  @Uint8()
  external int bitfield1;

  @Uint8()
  external int bitfield2;

  @Array(1)
  external Array<Uint8> ParameterList;
}

extension PERSISTENT_RESERVE_COMMAND__Anonymous_e__Union_Extension_1
    on PERSISTENT_RESERVE_COMMAND {
  int get bitfield1 => this.Anonymous.PR_OUT.bitfield1;
  set bitfield1(int value) => this.Anonymous.PR_OUT.bitfield1 = value;

  int get bitfield2 => this.Anonymous.PR_OUT.bitfield2;
  set bitfield2(int value) => this.Anonymous.PR_OUT.bitfield2 = value;

  Array<Uint8> get ParameterList => this.Anonymous.PR_OUT.ParameterList;
  set ParameterList(Array<Uint8> value) =>
      this.Anonymous.PR_OUT.ParameterList = value;
}

extension PERSISTENT_RESERVE_COMMAND_Extension on PERSISTENT_RESERVE_COMMAND {
  _PERSISTENT_RESERVE_COMMAND__Anonymous_e__Union__PR_IN_e__Struct get PR_IN =>
      this.Anonymous.PR_IN;
  set PR_IN(
          _PERSISTENT_RESERVE_COMMAND__Anonymous_e__Union__PR_IN_e__Struct
              value) =>
      this.Anonymous.PR_IN = value;

  _PERSISTENT_RESERVE_COMMAND__Anonymous_e__Union__PR_OUT_e__Struct
      get PR_OUT => this.Anonymous.PR_OUT;
  set PR_OUT(
          _PERSISTENT_RESERVE_COMMAND__Anonymous_e__Union__PR_OUT_e__Struct
              value) =>
      this.Anonymous.PR_OUT = value;
}

/// {@category Struct}
class PHYSICAL_ELEMENT_STATUS extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  @Uint32()
  external int DescriptorCount;

  @Uint32()
  external int ReturnedDescriptorCount;

  @Uint32()
  external int ElementIdentifierBeingDepoped;

  @Uint32()
  external int Reserved;

  @Array(1)
  external Array<PHYSICAL_ELEMENT_STATUS_DESCRIPTOR> Descriptors;
}

/// {@category Struct}
class PHYSICAL_ELEMENT_STATUS_DESCRIPTOR extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  @Uint32()
  external int ElementIdentifier;

  @Uint8()
  external int PhysicalElementType;

  @Uint8()
  external int PhysicalElementHealth;

  @Array(2)
  external Array<Uint8> Reserved1;

  @Uint64()
  external int AssociatedCapacity;

  @Array(4)
  external Array<Uint32> Reserved2;
}

/// {@category Struct}
class PHYSICAL_ELEMENT_STATUS_REQUEST extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  @Uint32()
  external int StartingElement;

  @Uint8()
  external int Filter;

  @Uint8()
  external int ReportType;

  @Array(2)
  external Array<Uint8> Reserved;
}

/// {@category Struct}
class PLEX_READ_DATA_REQUEST extends Struct {
  @Int64()
  external int ByteOffset;

  @Uint32()
  external int ByteLength;

  @Uint32()
  external int PlexNumber;
}

/// {@category Struct}
class PREVENT_MEDIA_REMOVAL extends Struct {
  @Uint8()
  external int PreventMediaRemoval;
}

/// {@category Struct}
class QUERY_BAD_RANGES_INPUT extends Struct {
  @Uint32()
  external int Flags;

  @Uint32()
  external int NumRanges;

  @Array(1)
  external Array<QUERY_BAD_RANGES_INPUT_RANGE> Ranges;
}

/// {@category Struct}
class QUERY_BAD_RANGES_INPUT_RANGE extends Struct {
  @Uint64()
  external int StartOffset;

  @Uint64()
  external int LengthInBytes;
}

/// {@category Struct}
class QUERY_BAD_RANGES_OUTPUT extends Struct {
  @Uint32()
  external int Flags;

  @Uint32()
  external int NumBadRanges;

  @Uint64()
  external int NextOffsetToLookUp;

  @Array(1)
  external Array<QUERY_BAD_RANGES_OUTPUT_RANGE> BadRanges;
}

/// {@category Struct}
class QUERY_BAD_RANGES_OUTPUT_RANGE extends Struct {
  @Uint32()
  external int Flags;

  @Uint32()
  external int Reserved;

  @Uint64()
  external int StartOffset;

  @Uint64()
  external int LengthInBytes;
}

/// {@category Struct}
class QUERY_FILE_LAYOUT_INPUT extends Struct {
  external _QUERY_FILE_LAYOUT_INPUT__Anonymous_e__Union Anonymous;

  @Uint32()
  external int Flags;

  @Int32()
  external int FilterType;

  @Uint32()
  external int Reserved;

  external _QUERY_FILE_LAYOUT_INPUT__Filter_e__Union Filter;
}

/// {@category Struct}
class _QUERY_FILE_LAYOUT_INPUT__Anonymous_e__Union extends Union {
  @Uint32()
  external int FilterEntryCount;

  @Uint32()
  external int NumberOfPairs;
}

extension QUERY_FILE_LAYOUT_INPUT_Extension on QUERY_FILE_LAYOUT_INPUT {
  int get FilterEntryCount => this.Anonymous.FilterEntryCount;
  set FilterEntryCount(int value) => this.Anonymous.FilterEntryCount = value;

  int get NumberOfPairs => this.Anonymous.NumberOfPairs;
  set NumberOfPairs(int value) => this.Anonymous.NumberOfPairs = value;
}

/// {@category Struct}
class _QUERY_FILE_LAYOUT_INPUT__Filter_e__Union extends Union {
  @Array(1)
  external Array<CLUSTER_RANGE> ClusterRanges;

  @Array(1)
  external Array<FILE_REFERENCE_RANGE> FileReferenceRanges;

  @Array(1)
  external Array<Int32> StorageReserveIds;
}

extension QUERY_FILE_LAYOUT_INPUT_Extension_1 on QUERY_FILE_LAYOUT_INPUT {
  Array<CLUSTER_RANGE> get ClusterRanges => this.Filter.ClusterRanges;
  set ClusterRanges(Array<CLUSTER_RANGE> value) =>
      this.Filter.ClusterRanges = value;

  Array<FILE_REFERENCE_RANGE> get FileReferenceRanges =>
      this.Filter.FileReferenceRanges;
  set FileReferenceRanges(Array<FILE_REFERENCE_RANGE> value) =>
      this.Filter.FileReferenceRanges = value;

  Array<Int32> get StorageReserveIds => this.Filter.StorageReserveIds;
  set StorageReserveIds(Array<Int32> value) =>
      this.Filter.StorageReserveIds = value;
}

/// {@category Struct}
class QUERY_FILE_LAYOUT_OUTPUT extends Struct {
  @Uint32()
  external int FileEntryCount;

  @Uint32()
  external int FirstFileOffset;

  @Uint32()
  external int Flags;

  @Uint32()
  external int Reserved;
}

/// {@category Struct}
class READ_ELEMENT_ADDRESS_INFO extends Struct {
  @Uint32()
  external int NumberOfElements;

  @Array(1)
  external Array<CHANGER_ELEMENT_STATUS> ElementStatus;
}

/// {@category Struct}
class READ_FILE_USN_DATA extends Struct {
  @Uint16()
  external int MinMajorVersion;

  @Uint16()
  external int MaxMajorVersion;
}

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
class REASSIGN_BLOCKS extends Struct {
  @Uint16()
  external int Reserved;

  @Uint16()
  external int Count;

  @Array(1)
  external Array<Uint32> BlockNumber;
}

/// {@category Struct}
class REASSIGN_BLOCKS_EX extends Struct {
  @Uint16()
  external int Reserved;

  @Uint16()
  external int Count;

  @Array(1)
  external Array<Int64> BlockNumber;
}

/// {@category Struct}
class REFS_SMR_VOLUME_GC_PARAMETERS extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Flags;

  @Int32()
  external int Action;

  @Int32()
  external int Method;

  @Uint32()
  external int IoGranularity;

  @Uint32()
  external int CompressionFormat;

  @Array(8)
  external Array<Uint64> Unused;
}

/// {@category Struct}
class REFS_SMR_VOLUME_INFO_OUTPUT extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Flags;

  @Int64()
  external int SizeOfRandomlyWritableTier;

  @Int64()
  external int FreeSpaceInRandomlyWritableTier;

  @Int64()
  external int SizeofSMRTier;

  @Int64()
  external int FreeSpaceInSMRTier;

  @Int64()
  external int UsableFreeSpaceInSMRTier;

  @Int32()
  external int VolumeGcState;

  @Uint32()
  external int VolumeGcLastStatus;

  @Uint32()
  external int CurrentGcBandFillPercentage;

  @Array(6)
  external Array<Uint64> Unused;
}

/// {@category Struct}
class REFS_VOLUME_DATA_BUFFER extends Struct {
  @Uint32()
  external int ByteCount;

  @Uint32()
  external int MajorVersion;

  @Uint32()
  external int MinorVersion;

  @Uint32()
  external int BytesPerPhysicalSector;

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

  @Int64()
  external int MaximumSizeOfResidentFile;

  @Uint16()
  external int FastTierDataFillRatio;

  @Uint16()
  external int SlowTierDataFillRatio;

  @Uint32()
  external int DestagesFastTierToSlowTierRate;

  @Array(9)
  external Array<Int64> Reserved;
}

/// {@category Struct}
class REMOVE_ELEMENT_AND_TRUNCATE_REQUEST extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  @Uint64()
  external int RequestCapacity;

  @Uint32()
  external int ElementIdentifier;

  @Uint32()
  external int Reserved;
}

/// {@category Struct}
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

/// {@category Struct}
class REPAIR_COPIES_OUTPUT extends Struct {
  @Uint32()
  external int Size;

  @Uint32()
  external int Status;

  @Int64()
  external int ResumeFileOffset;
}

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
class REQUEST_RAW_ENCRYPTED_DATA extends Struct {
  @Int64()
  external int FileOffset;

  @Uint32()
  external int Length;
}

/// {@category Struct}
class RETRIEVAL_POINTERS_AND_REFCOUNT_BUFFER extends Struct {
  @Uint32()
  external int ExtentCount;

  @Int64()
  external int StartingVcn;

  @Array(1)
  external Array<_RETRIEVAL_POINTERS_AND_REFCOUNT_BUFFER__Anonymous_e__Struct>
      Extents;
}

/// {@category Struct}
class _RETRIEVAL_POINTERS_AND_REFCOUNT_BUFFER__Anonymous_e__Struct
    extends Struct {
  @Int64()
  external int NextVcn;

  @Int64()
  external int Lcn;

  @Uint32()
  external int ReferenceCount;
}

/// {@category Struct}
class RETRIEVAL_POINTERS_BUFFER extends Struct {
  @Uint32()
  external int ExtentCount;

  @Int64()
  external int StartingVcn;

  @Array(1)
  external Array<_RETRIEVAL_POINTERS_BUFFER__Anonymous_e__Struct> Extents;
}

/// {@category Struct}
class _RETRIEVAL_POINTERS_BUFFER__Anonymous_e__Struct extends Struct {
  @Int64()
  external int NextVcn;

  @Int64()
  external int Lcn;
}

/// {@category Struct}
class RETRIEVAL_POINTER_BASE extends Struct {
  @Int64()
  external int FileAreaOffset;
}

/// {@category Struct}
class RETRIEVAL_POINTER_COUNT extends Struct {
  @Uint32()
  external int ExtentCount;
}

/// {@category Struct}
class SCM_BUS_DEDICATED_MEMORY_DEVICES_INFO extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  @Uint32()
  external int DeviceCount;

  @Array(1)
  external Array<SCM_BUS_DEDICATED_MEMORY_DEVICE_INFO> Devices;
}

/// {@category Struct}
class SCM_BUS_DEDICATED_MEMORY_DEVICE_INFO extends Struct {
  external GUID DeviceGuid;

  @Uint32()
  external int DeviceNumber;

  external _SCM_BUS_DEDICATED_MEMORY_DEVICE_INFO__Flags_e__Struct Flags;

  @Uint64()
  external int DeviceSize;
}

/// {@category Struct}
class _SCM_BUS_DEDICATED_MEMORY_DEVICE_INFO__Flags_e__Struct extends Struct {
  @Uint32()
  external int bitfield;
}

extension SCM_BUS_DEDICATED_MEMORY_DEVICE_INFO_Extension
    on SCM_BUS_DEDICATED_MEMORY_DEVICE_INFO {
  int get bitfield => this.Flags.bitfield;
  set bitfield(int value) => this.Flags.bitfield = value;
}

/// {@category Struct}
class SCM_BUS_DEDICATED_MEMORY_STATE extends Struct {
  @Uint8()
  external int ActivateState;
}

/// {@category Struct}
class SCM_BUS_PROPERTY_QUERY extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  @Int32()
  external int PropertyId;

  @Int32()
  external int QueryType;

  @Array(1)
  external Array<Uint8> AdditionalParameters;
}

/// {@category Struct}
class SCM_BUS_PROPERTY_SET extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  @Int32()
  external int PropertyId;

  @Int32()
  external int SetType;

  @Array(1)
  external Array<Uint8> AdditionalParameters;
}

/// {@category Struct}
class SCM_BUS_RUNTIME_FW_ACTIVATION_INFO extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  @Uint8()
  external int RuntimeFwActivationSupported;

  @Int32()
  external int FirmwareActivationState;

  external _SCM_BUS_RUNTIME_FW_ACTIVATION_INFO__FirmwareActivationCapability_e__Struct
      FirmwareActivationCapability;

  @Uint64()
  external int EstimatedFirmwareActivationTimeInUSecs;

  @Uint64()
  external int EstimatedProcessorAccessQuiesceTimeInUSecs;

  @Uint64()
  external int EstimatedIOAccessQuiesceTimeInUSecs;

  @Uint64()
  external int PlatformSupportedMaxIOAccessQuiesceTimeInUSecs;
}

/// {@category Struct}
class _SCM_BUS_RUNTIME_FW_ACTIVATION_INFO__FirmwareActivationCapability_e__Struct
    extends Struct {
  @Uint32()
  external int bitfield;
}

extension SCM_BUS_RUNTIME_FW_ACTIVATION_INFO_Extension
    on SCM_BUS_RUNTIME_FW_ACTIVATION_INFO {
  int get bitfield => this.FirmwareActivationCapability.bitfield;
  set bitfield(int value) => this.FirmwareActivationCapability.bitfield = value;
}

/// {@category Struct}
class SCM_INTERLEAVED_PD_INFO extends Struct {
  @Uint32()
  external int DeviceHandle;

  external GUID DeviceGuid;
}

/// {@category Struct}
class SCM_LD_INTERLEAVE_SET_INFO extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  @Uint32()
  external int InterleaveSetSize;

  @Array(1)
  external Array<SCM_INTERLEAVED_PD_INFO> InterleaveSet;
}

/// {@category Struct}
class SCM_LOGICAL_DEVICES extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  @Uint32()
  external int DeviceCount;

  @Array(1)
  external Array<SCM_LOGICAL_DEVICE_INSTANCE> Devices;
}

/// {@category Struct}
class SCM_LOGICAL_DEVICE_INSTANCE extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  external GUID DeviceGuid;

  @Array(256)
  external Array<Uint16> _SymbolicLink;

  String get SymbolicLink {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_SymbolicLink[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set SymbolicLink(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _SymbolicLink[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class SCM_PD_DESCRIPTOR_HEADER extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;
}

/// {@category Struct}
class SCM_PD_DEVICE_HANDLE extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  external GUID DeviceGuid;

  @Uint32()
  external int DeviceHandle;
}

/// {@category Struct}
class SCM_PD_DEVICE_INFO extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  external GUID DeviceGuid;

  @Uint32()
  external int UnsafeShutdownCount;

  @Uint64()
  external int PersistentMemorySizeInBytes;

  @Uint64()
  external int VolatileMemorySizeInBytes;

  @Uint64()
  external int TotalMemorySizeInBytes;

  @Uint32()
  external int SlotNumber;

  @Uint32()
  external int DeviceHandle;

  @Uint16()
  external int PhysicalId;

  @Uint8()
  external int NumberOfFormatInterfaceCodes;

  @Array(8)
  external Array<Uint16> FormatInterfaceCodes;

  @Uint32()
  external int VendorId;

  @Uint32()
  external int ProductId;

  @Uint32()
  external int SubsystemDeviceId;

  @Uint32()
  external int SubsystemVendorId;

  @Uint8()
  external int ManufacturingLocation;

  @Uint8()
  external int ManufacturingWeek;

  @Uint8()
  external int ManufacturingYear;

  @Uint32()
  external int SerialNumber4Byte;

  @Uint32()
  external int SerialNumberLengthInChars;

  @Array(1)
  external Array<Uint8> SerialNumber;
}

/// {@category Struct}
class SCM_PD_DEVICE_SPECIFIC_INFO extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  @Uint32()
  external int NumberOfProperties;

  @Array(1)
  external Array<SCM_PD_DEVICE_SPECIFIC_PROPERTY> DeviceSpecificProperties;
}

/// {@category Struct}
class SCM_PD_DEVICE_SPECIFIC_PROPERTY extends Struct {
  @Array(128)
  external Array<Uint16> _Name;

  String get Name {
    final charCodes = <int>[];
    for (var i = 0; i < 128; i++) {
      charCodes.add(_Name[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set Name(String value) {
    final stringToStore = value.padRight(128, '\x00');
    for (var i = 0; i < 128; i++) {
      _Name[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Int64()
  external int Value;
}

/// {@category Struct}
class SCM_PD_FIRMWARE_ACTIVATE extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  @Uint32()
  external int Flags;

  @Uint8()
  external int Slot;
}

/// {@category Struct}
class SCM_PD_FIRMWARE_DOWNLOAD extends Struct {
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

  @Uint32()
  external int FirmwareImageSizeInBytes;

  @Array(1)
  external Array<Uint8> FirmwareImage;
}

/// {@category Struct}
class SCM_PD_FIRMWARE_INFO extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  @Uint8()
  external int ActiveSlot;

  @Uint8()
  external int NextActiveSlot;

  @Uint8()
  external int SlotCount;

  @Array(1)
  external Array<SCM_PD_FIRMWARE_SLOT_INFO> Slots;
}

/// {@category Struct}
class SCM_PD_FIRMWARE_SLOT_INFO extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  @Uint8()
  external int SlotNumber;

  @Uint8()
  external int bitfield;

  @Array(6)
  external Array<Uint8> Reserved1;

  @Array(32)
  external Array<Uint8> Revision;
}

/// {@category Struct}
class SCM_PD_FRU_ID_STRING extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  @Uint32()
  external int IdentifierSize;

  @Array(1)
  external Array<Uint8> Identifier;
}

/// {@category Struct}
class SCM_PD_HEALTH_NOTIFICATION_DATA extends Struct {
  external GUID DeviceGuid;
}

/// {@category Struct}
class SCM_PD_LOCATION_STRING extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  @Array(1)
  external Array<Uint16> _Location;

  String get Location {
    final charCodes = <int>[];
    for (var i = 0; i < 1; i++) {
      charCodes.add(_Location[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set Location(String value) {
    final stringToStore = value.padRight(1, '\x00');
    for (var i = 0; i < 1; i++) {
      _Location[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class SCM_PD_MANAGEMENT_STATUS extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  @Int32()
  external int Health;

  @Uint32()
  external int NumberOfOperationalStatus;

  @Uint32()
  external int NumberOfAdditionalReasons;

  @Array(16)
  external Array<Int32> OperationalStatus;

  @Array(1)
  external Array<Int32> AdditionalReasons;
}

/// {@category Struct}
class SCM_PD_PASSTHROUGH_INPUT extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  external GUID ProtocolGuid;

  @Uint32()
  external int DataSize;

  @Array(1)
  external Array<Uint8> Data;
}

/// {@category Struct}
class SCM_PD_PASSTHROUGH_INVDIMM_INPUT extends Struct {
  @Uint32()
  external int Opcode;

  @Uint32()
  external int OpcodeParametersLength;

  @Array(1)
  external Array<Uint8> OpcodeParameters;
}

/// {@category Struct}
class SCM_PD_PASSTHROUGH_INVDIMM_OUTPUT extends Struct {
  @Uint16()
  external int GeneralStatus;

  @Uint16()
  external int ExtendedStatus;

  @Uint32()
  external int OutputDataLength;

  @Array(1)
  external Array<Uint8> OutputData;
}

/// {@category Struct}
class SCM_PD_PASSTHROUGH_OUTPUT extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  external GUID ProtocolGuid;

  @Uint32()
  external int DataSize;

  @Array(1)
  external Array<Uint8> Data;
}

/// {@category Struct}
class SCM_PD_PROPERTY_QUERY extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  @Int32()
  external int PropertyId;

  @Int32()
  external int QueryType;

  @Array(1)
  external Array<Uint8> AdditionalParameters;
}

/// {@category Struct}
class SCM_PD_PROPERTY_SET extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  @Int32()
  external int PropertyId;

  @Int32()
  external int SetType;

  @Array(1)
  external Array<Uint8> AdditionalParameters;
}

/// {@category Struct}
class SCM_PD_REINITIALIZE_MEDIA_INPUT extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  external _SCM_PD_REINITIALIZE_MEDIA_INPUT__Options_e__Struct Options;
}

/// {@category Struct}
class _SCM_PD_REINITIALIZE_MEDIA_INPUT__Options_e__Struct extends Struct {
  @Uint32()
  external int bitfield;
}

extension SCM_PD_REINITIALIZE_MEDIA_INPUT_Extension
    on SCM_PD_REINITIALIZE_MEDIA_INPUT {
  int get bitfield => this.Options.bitfield;
  set bitfield(int value) => this.Options.bitfield = value;
}

/// {@category Struct}
class SCM_PD_REINITIALIZE_MEDIA_OUTPUT extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  @Int32()
  external int Status;
}

/// {@category Struct}
class SCM_PD_RUNTIME_FW_ACTIVATION_ARM_STATE extends Struct {
  @Uint8()
  external int ArmState;
}

/// {@category Struct}
class SCM_PD_RUNTIME_FW_ACTIVATION_INFO extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  @Int32()
  external int LastFirmwareActivationStatus;

  @Int32()
  external int FirmwareActivationState;
}

/// {@category Struct}
class SCM_PHYSICAL_DEVICES extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  @Uint32()
  external int DeviceCount;

  @Array(1)
  external Array<SCM_PHYSICAL_DEVICE_INSTANCE> Devices;
}

/// {@category Struct}
class SCM_PHYSICAL_DEVICE_INSTANCE extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  @Uint32()
  external int NfitHandle;

  @Array(256)
  external Array<Uint16> _SymbolicLink;

  String get SymbolicLink {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_SymbolicLink[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set SymbolicLink(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _SymbolicLink[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class SCM_REGION extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  @Uint32()
  external int Flags;

  @Uint32()
  external int NfitHandle;

  external GUID LogicalDeviceGuid;

  external GUID AddressRangeType;

  @Uint32()
  external int AssociatedId;

  @Uint64()
  external int Length;

  @Uint64()
  external int StartingDPA;

  @Uint64()
  external int BaseSPA;

  @Uint64()
  external int SPAOffset;

  @Uint64()
  external int RegionOffset;
}

/// {@category Struct}
class SCM_REGIONS extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  @Uint32()
  external int RegionCount;

  @Array(1)
  external Array<SCM_REGION> Regions;
}

/// {@category Struct}
class SD_CHANGE_MACHINE_SID_INPUT extends Struct {
  @Uint16()
  external int CurrentMachineSIDOffset;

  @Uint16()
  external int CurrentMachineSIDLength;

  @Uint16()
  external int NewMachineSIDOffset;

  @Uint16()
  external int NewMachineSIDLength;
}

/// {@category Struct}
class SD_CHANGE_MACHINE_SID_OUTPUT extends Struct {
  @Uint64()
  external int NumSDChangedSuccess;

  @Uint64()
  external int NumSDChangedFail;

  @Uint64()
  external int NumSDUnused;

  @Uint64()
  external int NumSDTotal;

  @Uint64()
  external int NumMftSDChangedSuccess;

  @Uint64()
  external int NumMftSDChangedFail;

  @Uint64()
  external int NumMftSDTotal;
}

/// {@category Struct}
class SD_ENUM_SDS_ENTRY extends Struct {
  @Uint32()
  external int Hash;

  @Uint32()
  external int SecurityId;

  @Uint64()
  external int Offset;

  @Uint32()
  external int Length;

  @Array(1)
  external Array<Uint8> Descriptor;
}

/// {@category Struct}
class SD_ENUM_SDS_INPUT extends Struct {
  @Uint64()
  external int StartingOffset;

  @Uint64()
  external int MaxSDEntriesToReturn;
}

/// {@category Struct}
class SD_ENUM_SDS_OUTPUT extends Struct {
  @Uint64()
  external int NextOffset;

  @Uint64()
  external int NumSDEntriesReturned;

  @Uint64()
  external int NumSDBytesReturned;

  @Array(1)
  external Array<SD_ENUM_SDS_ENTRY> SDEntry;
}

/// {@category Struct}
class SD_GLOBAL_CHANGE_INPUT extends Struct {
  @Uint32()
  external int Flags;

  @Uint32()
  external int ChangeType;

  external _SD_GLOBAL_CHANGE_INPUT__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _SD_GLOBAL_CHANGE_INPUT__Anonymous_e__Union extends Union {
  external SD_CHANGE_MACHINE_SID_INPUT SdChange;

  external SD_QUERY_STATS_INPUT SdQueryStats;

  external SD_ENUM_SDS_INPUT SdEnumSds;
}

extension SD_GLOBAL_CHANGE_INPUT_Extension on SD_GLOBAL_CHANGE_INPUT {
  SD_CHANGE_MACHINE_SID_INPUT get SdChange => this.Anonymous.SdChange;
  set SdChange(SD_CHANGE_MACHINE_SID_INPUT value) =>
      this.Anonymous.SdChange = value;

  SD_QUERY_STATS_INPUT get SdQueryStats => this.Anonymous.SdQueryStats;
  set SdQueryStats(SD_QUERY_STATS_INPUT value) =>
      this.Anonymous.SdQueryStats = value;

  SD_ENUM_SDS_INPUT get SdEnumSds => this.Anonymous.SdEnumSds;
  set SdEnumSds(SD_ENUM_SDS_INPUT value) => this.Anonymous.SdEnumSds = value;
}

/// {@category Struct}
class SD_GLOBAL_CHANGE_OUTPUT extends Struct {
  @Uint32()
  external int Flags;

  @Uint32()
  external int ChangeType;

  external _SD_GLOBAL_CHANGE_OUTPUT__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _SD_GLOBAL_CHANGE_OUTPUT__Anonymous_e__Union extends Union {
  external SD_CHANGE_MACHINE_SID_OUTPUT SdChange;

  external SD_QUERY_STATS_OUTPUT SdQueryStats;

  external SD_ENUM_SDS_OUTPUT SdEnumSds;
}

extension SD_GLOBAL_CHANGE_OUTPUT_Extension on SD_GLOBAL_CHANGE_OUTPUT {
  SD_CHANGE_MACHINE_SID_OUTPUT get SdChange => this.Anonymous.SdChange;
  set SdChange(SD_CHANGE_MACHINE_SID_OUTPUT value) =>
      this.Anonymous.SdChange = value;

  SD_QUERY_STATS_OUTPUT get SdQueryStats => this.Anonymous.SdQueryStats;
  set SdQueryStats(SD_QUERY_STATS_OUTPUT value) =>
      this.Anonymous.SdQueryStats = value;

  SD_ENUM_SDS_OUTPUT get SdEnumSds => this.Anonymous.SdEnumSds;
  set SdEnumSds(SD_ENUM_SDS_OUTPUT value) => this.Anonymous.SdEnumSds = value;
}

/// {@category Struct}
class SD_QUERY_STATS_INPUT extends Struct {
  @Uint32()
  external int Reserved;
}

/// {@category Struct}
class SD_QUERY_STATS_OUTPUT extends Struct {
  @Uint64()
  external int SdsStreamSize;

  @Uint64()
  external int SdsAllocationSize;

  @Uint64()
  external int SiiStreamSize;

  @Uint64()
  external int SiiAllocationSize;

  @Uint64()
  external int SdhStreamSize;

  @Uint64()
  external int SdhAllocationSize;

  @Uint64()
  external int NumSDTotal;

  @Uint64()
  external int NumSDUnused;
}

/// {@category Struct}
class SENDCMDINPARAMS extends Struct {
  @Uint32()
  external int cBufferSize;

  external IDEREGS irDriveRegs;

  @Uint8()
  external int bDriveNumber;

  @Array(3)
  external Array<Uint8> bReserved;

  @Array(4)
  external Array<Uint32> dwReserved;

  @Array(1)
  external Array<Uint8> bBuffer;
}

/// {@category Struct}
@Packed(1)
class SENDCMDOUTPARAMS extends Struct {
  @Uint32()
  external int cBufferSize;

  external DRIVERSTATUS DriverStatus;

  @Array(1)
  external Array<Uint8> bBuffer;
}

/// {@category Struct}
class SET_DAX_ALLOC_ALIGNMENT_HINT_INPUT extends Struct {
  @Uint32()
  external int Flags;

  @Uint32()
  external int AlignmentShift;

  @Uint64()
  external int FileOffsetToAlign;

  @Uint32()
  external int FallbackAlignmentShift;
}

/// {@category Struct}
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

/// {@category Struct}
class SET_PARTITION_INFORMATION extends Struct {
  @Uint8()
  external int PartitionType;
}

/// {@category Struct}
class SET_PARTITION_INFORMATION_EX extends Struct {
  @Int32()
  external int PartitionStyle;

  external _SET_PARTITION_INFORMATION_EX__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _SET_PARTITION_INFORMATION_EX__Anonymous_e__Union extends Union {
  external SET_PARTITION_INFORMATION Mbr;

  external PARTITION_INFORMATION_GPT Gpt;
}

extension SET_PARTITION_INFORMATION_EX_Extension
    on SET_PARTITION_INFORMATION_EX {
  SET_PARTITION_INFORMATION get Mbr => this.Anonymous.Mbr;
  set Mbr(SET_PARTITION_INFORMATION value) => this.Anonymous.Mbr = value;

  PARTITION_INFORMATION_GPT get Gpt => this.Anonymous.Gpt;
  set Gpt(PARTITION_INFORMATION_GPT value) => this.Anonymous.Gpt = value;
}

/// {@category Struct}
class SET_PURGE_FAILURE_MODE_INPUT extends Struct {
  @Uint32()
  external int Flags;
}

/// {@category Struct}
class SHRINK_VOLUME_INFORMATION extends Struct {
  @Int32()
  external int ShrinkRequestType;

  @Uint64()
  external int Flags;

  @Int64()
  external int NewNumberOfSectors;
}

/// {@category Struct}
class SI_COPYFILE extends Struct {
  @Uint32()
  external int SourceFileNameLength;

  @Uint32()
  external int DestinationFileNameLength;

  @Uint32()
  external int Flags;

  @Array(1)
  external Array<Uint16> _FileNameBuffer;

  String get FileNameBuffer {
    final charCodes = <int>[];
    for (var i = 0; i < 1; i++) {
      charCodes.add(_FileNameBuffer[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set FileNameBuffer(String value) {
    final stringToStore = value.padRight(1, '\x00');
    for (var i = 0; i < 1; i++) {
      _FileNameBuffer[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class SMB_SHARE_FLUSH_AND_PURGE_INPUT extends Struct {
  @Uint16()
  external int Version;
}

/// {@category Struct}
class SMB_SHARE_FLUSH_AND_PURGE_OUTPUT extends Struct {
  @Uint32()
  external int cEntriesPurged;
}

/// {@category Struct}
class STARTING_LCN_INPUT_BUFFER extends Struct {
  @Int64()
  external int StartingLcn;
}

/// {@category Struct}
class STARTING_LCN_INPUT_BUFFER_EX extends Struct {
  @Int64()
  external int StartingLcn;

  @Uint32()
  external int Flags;
}

/// {@category Struct}
class STARTING_VCN_INPUT_BUFFER extends Struct {
  @Int64()
  external int StartingVcn;
}

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
class STORAGE_ADAPTER_SERIAL_NUMBER extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  @Array(128)
  external Array<Uint16> _SerialNumber;

  String get SerialNumber {
    final charCodes = <int>[];
    for (var i = 0; i < 128; i++) {
      charCodes.add(_SerialNumber[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set SerialNumber(String value) {
    final stringToStore = value.padRight(128, '\x00');
    for (var i = 0; i < 128; i++) {
      _SerialNumber[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class STORAGE_ALLOCATE_BC_STREAM_INPUT extends Struct {
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

  @Uint32()
  external int AccessType;

  @Uint32()
  external int AccessMode;
}

/// {@category Struct}
class STORAGE_ALLOCATE_BC_STREAM_OUTPUT extends Struct {
  @Uint64()
  external int RequestSize;

  @Uint32()
  external int NumOutStandingRequests;
}

/// {@category Struct}
class STORAGE_ATTRIBUTE_MGMT extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  @Int32()
  external int Action;

  @Uint32()
  external int Attribute;
}

/// {@category Struct}
class STORAGE_BREAK_RESERVATION_REQUEST extends Struct {
  @Uint32()
  external int Length;

  @Uint8()
  external int unused;

  @Uint8()
  external int PathId;

  @Uint8()
  external int TargetId;

  @Uint8()
  external int Lun;
}

/// {@category Struct}
class STORAGE_BUS_RESET_REQUEST extends Struct {
  @Uint8()
  external int PathId;
}

/// {@category Struct}
class STORAGE_COUNTER extends Struct {
  @Int32()
  external int Type;

  external _STORAGE_COUNTER__Value_e__Union Value;
}

/// {@category Struct}
class _STORAGE_COUNTER__Value_e__Union extends Union {
  external _STORAGE_COUNTER__Value_e__Union__ManufactureDate_e__Struct
      ManufactureDate;

  @Uint64()
  external int AsUlonglong;
}

/// {@category Struct}
class _STORAGE_COUNTER__Value_e__Union__ManufactureDate_e__Struct
    extends Struct {
  @Uint32()
  external int Week;

  @Uint32()
  external int Year;
}

extension STORAGE_COUNTER__Value_e__Union_Extension on STORAGE_COUNTER {
  int get Week => this.Value.ManufactureDate.Week;
  set Week(int value) => this.Value.ManufactureDate.Week = value;

  int get Year => this.Value.ManufactureDate.Year;
  set Year(int value) => this.Value.ManufactureDate.Year = value;
}

extension STORAGE_COUNTER_Extension on STORAGE_COUNTER {
  _STORAGE_COUNTER__Value_e__Union__ManufactureDate_e__Struct
      get ManufactureDate => this.Value.ManufactureDate;
  set ManufactureDate(
          _STORAGE_COUNTER__Value_e__Union__ManufactureDate_e__Struct value) =>
      this.Value.ManufactureDate = value;

  int get AsUlonglong => this.Value.AsUlonglong;
  set AsUlonglong(int value) => this.Value.AsUlonglong = value;
}

/// {@category Struct}
class STORAGE_COUNTERS extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  @Uint32()
  external int NumberOfCounters;

  @Array(1)
  external Array<STORAGE_COUNTER> Counters;
}

/// {@category Struct}
class STORAGE_CRYPTO_CAPABILITY extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  @Uint32()
  external int CryptoCapabilityIndex;

  @Int32()
  external int AlgorithmId;

  @Int32()
  external int KeySize;

  @Uint32()
  external int DataUnitSizeBitmask;
}

/// {@category Struct}
class STORAGE_CRYPTO_DESCRIPTOR extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  @Uint32()
  external int NumKeysSupported;

  @Uint32()
  external int NumCryptoCapabilities;

  @Array(1)
  external Array<STORAGE_CRYPTO_CAPABILITY> CryptoCapabilities;
}

/// {@category Struct}
class STORAGE_DESCRIPTOR_HEADER extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;
}

/// {@category Struct}
class STORAGE_DEVICE_ATTRIBUTES_DESCRIPTOR extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  @Uint64()
  external int Attributes;
}

/// {@category Struct}
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

  @Int32()
  external int BusType;

  @Uint32()
  external int RawPropertiesLength;

  @Array(1)
  external Array<Uint8> RawDeviceProperties;
}

/// {@category Struct}
class STORAGE_DEVICE_FAULT_DOMAIN_DESCRIPTOR extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  @Uint32()
  external int NumberOfFaultDomains;

  @Array(1)
  external Array<GUID> FaultDomainIds;
}

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
class STORAGE_DEVICE_LED_STATE_DESCRIPTOR extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  @Uint64()
  external int State;
}

/// {@category Struct}
class STORAGE_DEVICE_LOCATION_DESCRIPTOR extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  external DEVICE_LOCATION Location;

  @Uint32()
  external int StringOffset;
}

/// {@category Struct}
class STORAGE_DEVICE_MANAGEMENT_STATUS extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  @Int32()
  external int Health;

  @Uint32()
  external int NumberOfOperationalStatus;

  @Uint32()
  external int NumberOfAdditionalReasons;

  @Array(16)
  external Array<Int32> OperationalStatus;

  @Array(1)
  external Array<STORAGE_OPERATIONAL_REASON> AdditionalReasons;
}

/// {@category Struct}
class STORAGE_DEVICE_NUMA_PROPERTY extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  @Uint32()
  external int NumaNode;
}

/// {@category Struct}
class STORAGE_DEVICE_NUMBER extends Struct {
  @Uint32()
  external int DeviceType;

  @Uint32()
  external int DeviceNumber;

  @Uint32()
  external int PartitionNumber;
}

/// {@category Struct}
class STORAGE_DEVICE_NUMBERS extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  @Uint32()
  external int NumberOfDevices;

  @Array(1)
  external Array<STORAGE_DEVICE_NUMBER> Devices;
}

/// {@category Struct}
class STORAGE_DEVICE_NUMBER_EX extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  @Uint32()
  external int Flags;

  @Uint32()
  external int DeviceType;

  @Uint32()
  external int DeviceNumber;

  external GUID DeviceGuid;

  @Uint32()
  external int PartitionNumber;
}

/// {@category Struct}
class STORAGE_DEVICE_POWER_CAP extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  @Int32()
  external int Units;

  @Uint64()
  external int MaxPower;
}

/// {@category Struct}
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

/// {@category Struct}
class STORAGE_DEVICE_SELF_ENCRYPTION_PROPERTY extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  @Uint8()
  external int SupportsSelfEncryption;
}

/// {@category Struct}
class STORAGE_DEVICE_TIERING_DESCRIPTOR extends Struct {
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
  external Array<STORAGE_TIER> Tiers;
}

/// {@category Struct}
class STORAGE_DEVICE_UNSAFE_SHUTDOWN_COUNT extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  @Uint32()
  external int UnsafeShutdownCount;
}

/// {@category Struct}
class STORAGE_DIAGNOSTIC_DATA extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  external GUID ProviderId;

  @Uint32()
  external int BufferSize;

  @Uint32()
  external int Reserved;

  @Array(1)
  external Array<Uint8> DiagnosticDataBuffer;
}

/// {@category Struct}
class STORAGE_DIAGNOSTIC_REQUEST extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  @Uint32()
  external int Flags;

  @Int32()
  external int TargetType;

  @Int32()
  external int Level;
}

/// {@category Struct}
class STORAGE_EVENT_NOTIFICATION extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  @Uint64()
  external int Events;
}

/// {@category Struct}
class STORAGE_FAILURE_PREDICTION_CONFIG extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  @Uint8()
  external int $Set;

  @Uint8()
  external int Enabled;

  @Uint16()
  external int Reserved;
}

/// {@category Struct}
class STORAGE_FRU_ID_DESCRIPTOR extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  @Uint32()
  external int IdentifierSize;

  @Array(1)
  external Array<Uint8> Identifier;
}

/// {@category Struct}
class STORAGE_GET_BC_PROPERTIES_OUTPUT extends Struct {
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

/// {@category Struct}
class STORAGE_HOTPLUG_INFO extends Struct {
  @Uint32()
  external int Size;

  @Uint8()
  external int MediaRemovable;

  @Uint8()
  external int MediaHotplug;

  @Uint8()
  external int DeviceHotplug;

  @Uint8()
  external int WriteCacheEnableOverride;
}

/// {@category Struct}
class STORAGE_HW_ENDURANCE_DATA_DESCRIPTOR extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  external STORAGE_HW_ENDURANCE_INFO EnduranceInfo;
}

/// {@category Struct}
class STORAGE_HW_ENDURANCE_INFO extends Struct {
  @Uint32()
  external int ValidFields;

  @Uint32()
  external int GroupId;

  external _STORAGE_HW_ENDURANCE_INFO__Flags_e__Struct Flags;

  @Uint32()
  external int LifePercentage;

  @Array(16)
  external Array<Uint8> BytesReadCount;

  @Array(16)
  external Array<Uint8> ByteWriteCount;
}

/// {@category Struct}
class _STORAGE_HW_ENDURANCE_INFO__Flags_e__Struct extends Struct {
  @Uint32()
  external int bitfield;
}

extension STORAGE_HW_ENDURANCE_INFO_Extension on STORAGE_HW_ENDURANCE_INFO {
  int get bitfield => this.Flags.bitfield;
  set bitfield(int value) => this.Flags.bitfield = value;
}

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
class STORAGE_HW_FIRMWARE_DOWNLOAD_V2 extends Struct {
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

  @Uint32()
  external int ImageSize;

  @Uint32()
  external int Reserved2;

  @Array(1)
  external Array<Uint8> ImageBuffer;
}

/// {@category Struct}
class STORAGE_HW_FIRMWARE_INFO extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  @Uint8()
  external int bitfield;

  @Uint8()
  external int SlotCount;

  @Uint8()
  external int ActiveSlot;

  @Uint8()
  external int PendingActivateSlot;

  @Uint8()
  external int FirmwareShared;

  @Array(3)
  external Array<Uint8> Reserved;

  @Uint32()
  external int ImagePayloadAlignment;

  @Uint32()
  external int ImagePayloadMaxSize;

  @Array(1)
  external Array<STORAGE_HW_FIRMWARE_SLOT_INFO> Slot;
}

/// {@category Struct}
class STORAGE_HW_FIRMWARE_INFO_QUERY extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  @Uint32()
  external int Flags;

  @Uint32()
  external int Reserved;
}

/// {@category Struct}
class STORAGE_HW_FIRMWARE_SLOT_INFO extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  @Uint8()
  external int SlotNumber;

  @Uint8()
  external int bitfield;

  @Array(6)
  external Array<Uint8> Reserved1;

  @Array(16)
  external Array<Uint8> Revision;
}

/// {@category Struct}
class STORAGE_IDENTIFIER extends Struct {
  @Int32()
  external int CodeSet;

  @Int32()
  external int Type;

  @Uint16()
  external int IdentifierSize;

  @Uint16()
  external int NextOffset;

  @Int32()
  external int Association;

  @Array(1)
  external Array<Uint8> Identifier;
}

/// {@category Struct}
class STORAGE_IDLE_POWER extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  @Uint32()
  external int bitfield;

  @Uint32()
  external int D3IdleTimeout;
}

/// {@category Struct}
class STORAGE_IDLE_POWERUP_REASON extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  @Int32()
  external int PowerupReason;
}

/// {@category Struct}
class STORAGE_LB_PROVISIONING_MAP_RESOURCES extends Struct {
  @Uint32()
  external int Size;

  @Uint32()
  external int Version;

  @Uint8()
  external int bitfield1;

  @Array(3)
  external Array<Uint8> Reserved1;

  @Uint8()
  external int bitfield2;

  @Array(3)
  external Array<Uint8> Reserved3;

  @Uint64()
  external int AvailableMappingResources;

  @Uint64()
  external int UsedMappingResources;
}

/// {@category Struct}
class STORAGE_MEDIA_SERIAL_NUMBER_DATA extends Struct {
  @Uint16()
  external int Reserved;

  @Uint16()
  external int SerialNumberLength;

  @Array(1)
  external Array<Uint8> SerialNumber;
}

/// {@category Struct}
class STORAGE_MEDIUM_PRODUCT_TYPE_DESCRIPTOR extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  @Uint32()
  external int MediumProductType;
}

/// {@category Struct}
class STORAGE_MINIPORT_DESCRIPTOR extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  @Int32()
  external int Portdriver;

  @Uint8()
  external int LUNResetSupported;

  @Uint8()
  external int TargetResetSupported;

  @Uint16()
  external int IoTimeoutValue;

  @Uint8()
  external int ExtraIoInfoSupported;

  external _STORAGE_MINIPORT_DESCRIPTOR__Flags_e__Union Flags;

  @Array(2)
  external Array<Uint8> Reserved0;

  @Uint32()
  external int Reserved1;
}

/// {@category Struct}
class _STORAGE_MINIPORT_DESCRIPTOR__Flags_e__Union extends Union {
  external _STORAGE_MINIPORT_DESCRIPTOR__Flags_e__Union__Anonymous_e__Struct
      Anonymous;

  @Uint8()
  external int AsBYTE;
}

/// {@category Struct}
class _STORAGE_MINIPORT_DESCRIPTOR__Flags_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint8()
  external int bitfield;
}

extension STORAGE_MINIPORT_DESCRIPTOR__Flags_e__Union_Extension
    on STORAGE_MINIPORT_DESCRIPTOR {
  int get bitfield => this.Flags.Anonymous.bitfield;
  set bitfield(int value) => this.Flags.Anonymous.bitfield = value;
}

extension STORAGE_MINIPORT_DESCRIPTOR_Extension on STORAGE_MINIPORT_DESCRIPTOR {
  _STORAGE_MINIPORT_DESCRIPTOR__Flags_e__Union__Anonymous_e__Struct
      get Anonymous => this.Flags.Anonymous;
  set Anonymous(
          _STORAGE_MINIPORT_DESCRIPTOR__Flags_e__Union__Anonymous_e__Struct
              value) =>
      this.Flags.Anonymous = value;

  int get AsBYTE => this.Flags.AsBYTE;
  set AsBYTE(int value) => this.Flags.AsBYTE = value;
}

/// {@category Struct}
class STORAGE_OFFLOAD_READ_OUTPUT extends Struct {
  @Uint32()
  external int OffloadReadFlags;

  @Uint32()
  external int Reserved;

  @Uint64()
  external int LengthProtected;

  @Uint32()
  external int TokenLength;

  external STORAGE_OFFLOAD_TOKEN Token;
}

/// {@category Struct}
class STORAGE_OFFLOAD_TOKEN extends Struct {
  @Array(4)
  external Array<Uint8> TokenType;

  @Array(2)
  external Array<Uint8> Reserved;

  @Array(2)
  external Array<Uint8> TokenIdLength;

  external _STORAGE_OFFLOAD_TOKEN__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _STORAGE_OFFLOAD_TOKEN__Anonymous_e__Union extends Union {
  external _STORAGE_OFFLOAD_TOKEN__Anonymous_e__Union__StorageOffloadZeroDataToken_e__Struct
      StorageOffloadZeroDataToken;

  @Array(504)
  external Array<Uint8> Token;
}

/// {@category Struct}
class _STORAGE_OFFLOAD_TOKEN__Anonymous_e__Union__StorageOffloadZeroDataToken_e__Struct
    extends Struct {
  @Array(504)
  external Array<Uint8> Reserved2;
}

extension STORAGE_OFFLOAD_TOKEN__Anonymous_e__Union_Extension
    on STORAGE_OFFLOAD_TOKEN {
  Array<Uint8> get Reserved2 =>
      this.Anonymous.StorageOffloadZeroDataToken.Reserved2;
  set Reserved2(Array<Uint8> value) =>
      this.Anonymous.StorageOffloadZeroDataToken.Reserved2 = value;
}

extension STORAGE_OFFLOAD_TOKEN_Extension on STORAGE_OFFLOAD_TOKEN {
  _STORAGE_OFFLOAD_TOKEN__Anonymous_e__Union__StorageOffloadZeroDataToken_e__Struct
      get StorageOffloadZeroDataToken =>
          this.Anonymous.StorageOffloadZeroDataToken;
  set StorageOffloadZeroDataToken(
          _STORAGE_OFFLOAD_TOKEN__Anonymous_e__Union__StorageOffloadZeroDataToken_e__Struct
              value) =>
      this.Anonymous.StorageOffloadZeroDataToken = value;

  Array<Uint8> get Token => this.Anonymous.Token;
  set Token(Array<Uint8> value) => this.Anonymous.Token = value;
}

/// {@category Struct}
class STORAGE_OFFLOAD_WRITE_OUTPUT extends Struct {
  @Uint32()
  external int OffloadWriteFlags;

  @Uint32()
  external int Reserved;

  @Uint64()
  external int LengthCopied;
}

/// {@category Struct}
class STORAGE_OPERATIONAL_REASON extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  @Int32()
  external int Reason;

  external _STORAGE_OPERATIONAL_REASON__RawBytes_e__Union RawBytes;
}

/// {@category Struct}
class _STORAGE_OPERATIONAL_REASON__RawBytes_e__Union extends Union {
  external _STORAGE_OPERATIONAL_REASON__RawBytes_e__Union__ScsiSenseKey_e__Struct
      ScsiSenseKey;

  external _STORAGE_OPERATIONAL_REASON__RawBytes_e__Union__NVDIMM_N_e__Struct
      NVDIMM_N;

  @Uint32()
  external int AsUlong;
}

/// {@category Struct}
class _STORAGE_OPERATIONAL_REASON__RawBytes_e__Union__ScsiSenseKey_e__Struct
    extends Struct {
  @Uint8()
  external int SenseKey;

  @Uint8()
  external int ASC;

  @Uint8()
  external int ASCQ;

  @Uint8()
  external int Reserved;
}

extension STORAGE_OPERATIONAL_REASON__RawBytes_e__Union_Extension
    on STORAGE_OPERATIONAL_REASON {
  int get SenseKey => this.RawBytes.ScsiSenseKey.SenseKey;
  set SenseKey(int value) => this.RawBytes.ScsiSenseKey.SenseKey = value;

  int get ASC => this.RawBytes.ScsiSenseKey.ASC;
  set ASC(int value) => this.RawBytes.ScsiSenseKey.ASC = value;

  int get ASCQ => this.RawBytes.ScsiSenseKey.ASCQ;
  set ASCQ(int value) => this.RawBytes.ScsiSenseKey.ASCQ = value;

  int get Reserved => this.RawBytes.ScsiSenseKey.Reserved;
  set Reserved(int value) => this.RawBytes.ScsiSenseKey.Reserved = value;
}

/// {@category Struct}
class _STORAGE_OPERATIONAL_REASON__RawBytes_e__Union__NVDIMM_N_e__Struct
    extends Struct {
  @Uint8()
  external int CriticalHealth;

  @Array(2)
  external Array<Uint8> ModuleHealth;

  @Uint8()
  external int ErrorThresholdStatus;
}

extension STORAGE_OPERATIONAL_REASON__RawBytes_e__Union_Extension_1
    on STORAGE_OPERATIONAL_REASON {
  int get CriticalHealth => this.RawBytes.NVDIMM_N.CriticalHealth;
  set CriticalHealth(int value) =>
      this.RawBytes.NVDIMM_N.CriticalHealth = value;

  Array<Uint8> get ModuleHealth => this.RawBytes.NVDIMM_N.ModuleHealth;
  set ModuleHealth(Array<Uint8> value) =>
      this.RawBytes.NVDIMM_N.ModuleHealth = value;

  int get ErrorThresholdStatus => this.RawBytes.NVDIMM_N.ErrorThresholdStatus;
  set ErrorThresholdStatus(int value) =>
      this.RawBytes.NVDIMM_N.ErrorThresholdStatus = value;
}

extension STORAGE_OPERATIONAL_REASON_Extension on STORAGE_OPERATIONAL_REASON {
  _STORAGE_OPERATIONAL_REASON__RawBytes_e__Union__ScsiSenseKey_e__Struct
      get ScsiSenseKey => this.RawBytes.ScsiSenseKey;
  set ScsiSenseKey(
          _STORAGE_OPERATIONAL_REASON__RawBytes_e__Union__ScsiSenseKey_e__Struct
              value) =>
      this.RawBytes.ScsiSenseKey = value;

  _STORAGE_OPERATIONAL_REASON__RawBytes_e__Union__NVDIMM_N_e__Struct
      get NVDIMM_N => this.RawBytes.NVDIMM_N;
  set NVDIMM_N(
          _STORAGE_OPERATIONAL_REASON__RawBytes_e__Union__NVDIMM_N_e__Struct
              value) =>
      this.RawBytes.NVDIMM_N = value;

  int get AsUlong => this.RawBytes.AsUlong;
  set AsUlong(int value) => this.RawBytes.AsUlong = value;
}

/// {@category Struct}
class STORAGE_PHYSICAL_ADAPTER_DATA extends Struct {
  @Uint32()
  external int AdapterId;

  @Int32()
  external int HealthStatus;

  @Int32()
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

/// {@category Struct}
class STORAGE_PHYSICAL_DEVICE_DATA extends Struct {
  @Uint32()
  external int DeviceId;

  @Uint32()
  external int Role;

  @Int32()
  external int HealthStatus;

  @Int32()
  external int CommandProtocol;

  external STORAGE_SPEC_VERSION SpecVersion;

  @Int32()
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

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
class STORAGE_PREDICT_FAILURE extends Struct {
  @Uint32()
  external int PredictFailure;

  @Array(512)
  external Array<Uint8> VendorSpecific;
}

/// {@category Struct}
class STORAGE_PRIORITY_HINT_SUPPORT extends Struct {
  @Uint32()
  external int SupportFlags;
}

/// {@category Struct}
class STORAGE_PROPERTY_QUERY extends Struct {
  @Int32()
  external int PropertyId;

  @Int32()
  external int QueryType;

  @Array(1)
  external Array<Uint8> AdditionalParameters;
}

/// {@category Struct}
class STORAGE_PROPERTY_SET extends Struct {
  @Int32()
  external int PropertyId;

  @Int32()
  external int SetType;

  @Array(1)
  external Array<Uint8> AdditionalParameters;
}

/// {@category Struct}
class STORAGE_PROTOCOL_COMMAND extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Length;

  @Int32()
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

/// {@category Struct}
class STORAGE_PROTOCOL_DATA_DESCRIPTOR extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  external STORAGE_PROTOCOL_SPECIFIC_DATA ProtocolSpecificData;
}

/// {@category Struct}
class STORAGE_PROTOCOL_DATA_DESCRIPTOR_EXT extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  external STORAGE_PROTOCOL_SPECIFIC_DATA_EXT ProtocolSpecificData;
}

/// {@category Struct}
class STORAGE_PROTOCOL_DATA_SUBVALUE_GET_LOG_PAGE extends Union {
  external _STORAGE_PROTOCOL_DATA_SUBVALUE_GET_LOG_PAGE__Anonymous_e__Struct
      Anonymous;

  @Uint32()
  external int AsUlong;
}

/// {@category Struct}
class _STORAGE_PROTOCOL_DATA_SUBVALUE_GET_LOG_PAGE__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int bitfield;
}

extension STORAGE_PROTOCOL_DATA_SUBVALUE_GET_LOG_PAGE_Extension
    on STORAGE_PROTOCOL_DATA_SUBVALUE_GET_LOG_PAGE {
  int get bitfield => this.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.bitfield = value;
}

/// {@category Struct}
class STORAGE_PROTOCOL_SPECIFIC_DATA extends Struct {
  @Int32()
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
  external int ProtocolDataRequestSubValue4;
}

/// {@category Struct}
class STORAGE_PROTOCOL_SPECIFIC_DATA_EXT extends Struct {
  @Int32()
  external int ProtocolType;

  @Uint32()
  external int DataType;

  @Uint32()
  external int ProtocolDataValue;

  @Uint32()
  external int ProtocolDataSubValue;

  @Uint32()
  external int ProtocolDataOffset;

  @Uint32()
  external int ProtocolDataLength;

  @Uint32()
  external int FixedProtocolReturnData;

  @Uint32()
  external int ProtocolDataSubValue2;

  @Uint32()
  external int ProtocolDataSubValue3;

  @Uint32()
  external int ProtocolDataSubValue4;

  @Uint32()
  external int ProtocolDataSubValue5;

  @Array(5)
  external Array<Uint32> Reserved;
}

/// {@category Struct}
class STORAGE_QUERY_DEPENDENT_VOLUME_LEV1_ENTRY extends Struct {
  @Uint32()
  external int EntryLength;

  @Uint32()
  external int DependencyTypeFlags;

  @Uint32()
  external int ProviderSpecificFlags;

  external VIRTUAL_STORAGE_TYPE VirtualStorageType;
}

/// {@category Struct}
class STORAGE_QUERY_DEPENDENT_VOLUME_LEV2_ENTRY extends Struct {
  @Uint32()
  external int EntryLength;

  @Uint32()
  external int DependencyTypeFlags;

  @Uint32()
  external int ProviderSpecificFlags;

  external VIRTUAL_STORAGE_TYPE VirtualStorageType;

  @Uint32()
  external int AncestorLevel;

  @Uint32()
  external int HostVolumeNameOffset;

  @Uint32()
  external int HostVolumeNameSize;

  @Uint32()
  external int DependentVolumeNameOffset;

  @Uint32()
  external int DependentVolumeNameSize;

  @Uint32()
  external int RelativePathOffset;

  @Uint32()
  external int RelativePathSize;

  @Uint32()
  external int DependentDeviceNameOffset;

  @Uint32()
  external int DependentDeviceNameSize;
}

/// {@category Struct}
class STORAGE_QUERY_DEPENDENT_VOLUME_REQUEST extends Struct {
  @Uint32()
  external int RequestLevel;

  @Uint32()
  external int RequestFlags;
}

/// {@category Struct}
class STORAGE_QUERY_DEPENDENT_VOLUME_RESPONSE extends Struct {
  @Uint32()
  external int ResponseLevel;

  @Uint32()
  external int NumberEntries;

  external _STORAGE_QUERY_DEPENDENT_VOLUME_RESPONSE__Anonymous_e__Union
      Anonymous;
}

/// {@category Struct}
class _STORAGE_QUERY_DEPENDENT_VOLUME_RESPONSE__Anonymous_e__Union
    extends Union {
  @Array(1)
  external Array<STORAGE_QUERY_DEPENDENT_VOLUME_LEV1_ENTRY> Lev1Depends;

  @Array(1)
  external Array<STORAGE_QUERY_DEPENDENT_VOLUME_LEV2_ENTRY> Lev2Depends;
}

extension STORAGE_QUERY_DEPENDENT_VOLUME_RESPONSE_Extension
    on STORAGE_QUERY_DEPENDENT_VOLUME_RESPONSE {
  Array<STORAGE_QUERY_DEPENDENT_VOLUME_LEV1_ENTRY> get Lev1Depends =>
      this.Anonymous.Lev1Depends;
  set Lev1Depends(Array<STORAGE_QUERY_DEPENDENT_VOLUME_LEV1_ENTRY> value) =>
      this.Anonymous.Lev1Depends = value;

  Array<STORAGE_QUERY_DEPENDENT_VOLUME_LEV2_ENTRY> get Lev2Depends =>
      this.Anonymous.Lev2Depends;
  set Lev2Depends(Array<STORAGE_QUERY_DEPENDENT_VOLUME_LEV2_ENTRY> value) =>
      this.Anonymous.Lev2Depends = value;
}

/// {@category Struct}
class STORAGE_READ_CAPACITY extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  @Uint32()
  external int BlockLength;

  @Int64()
  external int NumberOfBlocks;

  @Int64()
  external int DiskLength;
}

/// {@category Struct}
class STORAGE_REINITIALIZE_MEDIA extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  @Uint32()
  external int TimeoutInSeconds;

  external _STORAGE_REINITIALIZE_MEDIA__SanitizeOption_e__Struct SanitizeOption;
}

/// {@category Struct}
class _STORAGE_REINITIALIZE_MEDIA__SanitizeOption_e__Struct extends Struct {
  @Uint32()
  external int bitfield;
}

extension STORAGE_REINITIALIZE_MEDIA_Extension on STORAGE_REINITIALIZE_MEDIA {
  int get bitfield => this.SanitizeOption.bitfield;
  set bitfield(int value) => this.SanitizeOption.bitfield = value;
}

/// {@category Struct}
class STORAGE_RPMB_DATA_FRAME extends Struct {
  @Array(196)
  external Array<Uint8> Stuff;

  @Array(32)
  external Array<Uint8> KeyOrMAC;

  @Array(256)
  external Array<Uint8> Data;

  @Array(16)
  external Array<Uint8> Nonce;

  @Array(4)
  external Array<Uint8> WriteCounter;

  @Array(2)
  external Array<Uint8> Address;

  @Array(2)
  external Array<Uint8> BlockCount;

  @Array(2)
  external Array<Uint8> OperationResult;

  @Array(2)
  external Array<Uint8> RequestOrResponseType;
}

/// {@category Struct}
class STORAGE_RPMB_DESCRIPTOR extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  @Uint32()
  external int SizeInBytes;

  @Uint32()
  external int MaxReliableWriteSizeInBytes;

  @Int32()
  external int FrameFormat;
}

/// {@category Struct}
class STORAGE_SPEC_VERSION extends Union {
  external _STORAGE_SPEC_VERSION__Anonymous_e__Struct Anonymous;

  @Uint32()
  external int AsUlong;
}

/// {@category Struct}
class _STORAGE_SPEC_VERSION__Anonymous_e__Struct extends Struct {
  external _STORAGE_SPEC_VERSION__Anonymous_e__Struct__MinorVersion_e__Union
      MinorVersion;

  @Uint16()
  external int MajorVersion;
}

/// {@category Struct}
class _STORAGE_SPEC_VERSION__Anonymous_e__Struct__MinorVersion_e__Union
    extends Union {
  external _STORAGE_SPEC_VERSION__Anonymous_e__Struct__MinorVersion_e__Union__Anonymous_e__Struct
      Anonymous;

  @Uint16()
  external int AsUshort;
}

/// {@category Struct}
class _STORAGE_SPEC_VERSION__Anonymous_e__Struct__MinorVersion_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint8()
  external int SubMinor;

  @Uint8()
  external int Minor;
}

extension STORAGE_SPEC_VERSION__Anonymous_e__Struct__MinorVersion_e__Union_Extension
    on STORAGE_SPEC_VERSION {
  int get SubMinor => this.Anonymous.MinorVersion.Anonymous.SubMinor;
  set SubMinor(int value) =>
      this.Anonymous.MinorVersion.Anonymous.SubMinor = value;

  int get Minor => this.Anonymous.MinorVersion.Anonymous.Minor;
  set Minor(int value) => this.Anonymous.MinorVersion.Anonymous.Minor = value;
}

extension STORAGE_SPEC_VERSION__Anonymous_e__Struct_Extension
    on STORAGE_SPEC_VERSION {
  _STORAGE_SPEC_VERSION__Anonymous_e__Struct__MinorVersion_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous.MinorVersion.Anonymous;
  set Anonymous(
          _STORAGE_SPEC_VERSION__Anonymous_e__Struct__MinorVersion_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous.MinorVersion.Anonymous = value;

  int get AsUshort => this.Anonymous.MinorVersion.AsUshort;
  set AsUshort(int value) => this.Anonymous.MinorVersion.AsUshort = value;
}

extension STORAGE_SPEC_VERSION_Extension on STORAGE_SPEC_VERSION {
  _STORAGE_SPEC_VERSION__Anonymous_e__Struct__MinorVersion_e__Union
      get MinorVersion => this.Anonymous.MinorVersion;
  set MinorVersion(
          _STORAGE_SPEC_VERSION__Anonymous_e__Struct__MinorVersion_e__Union
              value) =>
      this.Anonymous.MinorVersion = value;

  int get MajorVersion => this.Anonymous.MajorVersion;
  set MajorVersion(int value) => this.Anonymous.MajorVersion = value;
}

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
class STORAGE_TIER extends Struct {
  external GUID Id;

  @Array(256)
  external Array<Uint16> _Name;

  String get Name {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_Name[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set Name(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _Name[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(256)
  external Array<Uint16> _Description;

  String get Description {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_Description[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set Description(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _Description[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint64()
  external int Flags;

  @Uint64()
  external int ProvisionedCapacity;

  @Int32()
  external int MediaType;

  @Int32()
  external int Class;
}

/// {@category Struct}
class STORAGE_TIER_REGION extends Struct {
  external GUID TierId;

  @Uint64()
  external int Offset;

  @Uint64()
  external int Length;
}

/// {@category Struct}
class STORAGE_WRITE_CACHE_PROPERTY extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  @Int32()
  external int WriteCacheType;

  @Int32()
  external int WriteCacheEnabled;

  @Int32()
  external int WriteCacheChangeable;

  @Int32()
  external int WriteThroughSupported;

  @Uint8()
  external int FlushCacheSupported;

  @Uint8()
  external int UserDefinedPowerProtection;

  @Uint8()
  external int NVCacheEnabled;
}

/// {@category Struct}
class STORAGE_ZONED_DEVICE_DESCRIPTOR extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  @Int32()
  external int DeviceType;

  @Uint32()
  external int ZoneCount;

  external _STORAGE_ZONED_DEVICE_DESCRIPTOR__ZoneAttributes_e__Union
      ZoneAttributes;

  @Uint32()
  external int ZoneGroupCount;

  @Array(1)
  external Array<STORAGE_ZONE_GROUP> ZoneGroup;
}

/// {@category Struct}
class _STORAGE_ZONED_DEVICE_DESCRIPTOR__ZoneAttributes_e__Union extends Union {
  external _STORAGE_ZONED_DEVICE_DESCRIPTOR__ZoneAttributes_e__Union__SequentialRequiredZone_e__Struct
      SequentialRequiredZone;

  external _STORAGE_ZONED_DEVICE_DESCRIPTOR__ZoneAttributes_e__Union__SequentialPreferredZone_e__Struct
      SequentialPreferredZone;
}

/// {@category Struct}
class _STORAGE_ZONED_DEVICE_DESCRIPTOR__ZoneAttributes_e__Union__SequentialRequiredZone_e__Struct
    extends Struct {
  @Uint32()
  external int MaxOpenZoneCount;

  @Uint8()
  external int UnrestrictedRead;

  @Array(3)
  external Array<Uint8> Reserved;
}

extension STORAGE_ZONED_DEVICE_DESCRIPTOR__ZoneAttributes_e__Union_Extension
    on STORAGE_ZONED_DEVICE_DESCRIPTOR {
  int get MaxOpenZoneCount =>
      this.ZoneAttributes.SequentialRequiredZone.MaxOpenZoneCount;
  set MaxOpenZoneCount(int value) =>
      this.ZoneAttributes.SequentialRequiredZone.MaxOpenZoneCount = value;

  int get UnrestrictedRead =>
      this.ZoneAttributes.SequentialRequiredZone.UnrestrictedRead;
  set UnrestrictedRead(int value) =>
      this.ZoneAttributes.SequentialRequiredZone.UnrestrictedRead = value;

  Array<Uint8> get Reserved =>
      this.ZoneAttributes.SequentialRequiredZone.Reserved;
  set Reserved(Array<Uint8> value) =>
      this.ZoneAttributes.SequentialRequiredZone.Reserved = value;
}

/// {@category Struct}
class _STORAGE_ZONED_DEVICE_DESCRIPTOR__ZoneAttributes_e__Union__SequentialPreferredZone_e__Struct
    extends Struct {
  @Uint32()
  external int OptimalOpenZoneCount;

  @Uint32()
  external int Reserved;
}

extension STORAGE_ZONED_DEVICE_DESCRIPTOR__ZoneAttributes_e__Union_Extension_1
    on STORAGE_ZONED_DEVICE_DESCRIPTOR {
  int get OptimalOpenZoneCount =>
      this.ZoneAttributes.SequentialPreferredZone.OptimalOpenZoneCount;
  set OptimalOpenZoneCount(int value) =>
      this.ZoneAttributes.SequentialPreferredZone.OptimalOpenZoneCount = value;

  int get Reserved => this.ZoneAttributes.SequentialPreferredZone.Reserved;
  set Reserved(int value) =>
      this.ZoneAttributes.SequentialPreferredZone.Reserved = value;
}

extension STORAGE_ZONED_DEVICE_DESCRIPTOR_Extension
    on STORAGE_ZONED_DEVICE_DESCRIPTOR {
  _STORAGE_ZONED_DEVICE_DESCRIPTOR__ZoneAttributes_e__Union__SequentialRequiredZone_e__Struct
      get SequentialRequiredZone => this.ZoneAttributes.SequentialRequiredZone;
  set SequentialRequiredZone(
          _STORAGE_ZONED_DEVICE_DESCRIPTOR__ZoneAttributes_e__Union__SequentialRequiredZone_e__Struct
              value) =>
      this.ZoneAttributes.SequentialRequiredZone = value;

  _STORAGE_ZONED_DEVICE_DESCRIPTOR__ZoneAttributes_e__Union__SequentialPreferredZone_e__Struct
      get SequentialPreferredZone =>
          this.ZoneAttributes.SequentialPreferredZone;
  set SequentialPreferredZone(
          _STORAGE_ZONED_DEVICE_DESCRIPTOR__ZoneAttributes_e__Union__SequentialPreferredZone_e__Struct
              value) =>
      this.ZoneAttributes.SequentialPreferredZone = value;
}

/// {@category Struct}
class STORAGE_ZONE_DESCRIPTOR extends Struct {
  @Uint32()
  external int Size;

  @Int32()
  external int ZoneType;

  @Int32()
  external int ZoneCondition;

  @Uint8()
  external int ResetWritePointerRecommend;

  @Array(3)
  external Array<Uint8> Reserved0;

  @Uint64()
  external int ZoneSize;

  @Uint64()
  external int WritePointerOffset;
}

/// {@category Struct}
class STORAGE_ZONE_GROUP extends Struct {
  @Uint32()
  external int ZoneCount;

  @Int32()
  external int ZoneType;

  @Uint64()
  external int ZoneSize;
}

/// {@category Struct}
class STREAMS_ASSOCIATE_ID_INPUT_BUFFER extends Struct {
  @Uint32()
  external int Flags;

  @Uint32()
  external int StreamId;
}

/// {@category Struct}
class STREAMS_QUERY_ID_OUTPUT_BUFFER extends Struct {
  @Uint32()
  external int StreamId;
}

/// {@category Struct}
class STREAMS_QUERY_PARAMETERS_OUTPUT_BUFFER extends Struct {
  @Uint32()
  external int OptimalWriteSize;

  @Uint32()
  external int StreamGranularitySize;

  @Uint32()
  external int StreamIdMin;

  @Uint32()
  external int StreamIdMax;
}

/// {@category Struct}
class STREAM_EXTENT_ENTRY extends Struct {
  @Uint32()
  external int Flags;

  external _STREAM_EXTENT_ENTRY__ExtentInformation_e__Union ExtentInformation;
}

/// {@category Struct}
class _STREAM_EXTENT_ENTRY__ExtentInformation_e__Union extends Union {
  external RETRIEVAL_POINTERS_BUFFER RetrievalPointers;
}

extension STREAM_EXTENT_ENTRY_Extension on STREAM_EXTENT_ENTRY {
  RETRIEVAL_POINTERS_BUFFER get RetrievalPointers =>
      this.ExtentInformation.RetrievalPointers;
  set RetrievalPointers(RETRIEVAL_POINTERS_BUFFER value) =>
      this.ExtentInformation.RetrievalPointers = value;
}

/// {@category Struct}
class STREAM_INFORMATION_ENTRY extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Flags;

  external _STREAM_INFORMATION_ENTRY__StreamInformation StreamInformation;
}

/// {@category Struct}
class _STREAM_INFORMATION_ENTRY__StreamInformation extends Union {
  external _STREAM_INFORMATION_ENTRY__StreamInformation__DesiredStorageClass
      DesiredStorageClass;

  external _STREAM_INFORMATION_ENTRY__StreamInformation__DataStream DataStream;

  external _STREAM_INFORMATION_ENTRY__StreamInformation__Reparse Reparse;

  external _STREAM_INFORMATION_ENTRY__StreamInformation__Ea Ea;
}

/// {@category Struct}
class _STREAM_INFORMATION_ENTRY__StreamInformation__DesiredStorageClass
    extends Struct {
  @Int32()
  external int Class;

  @Uint32()
  external int Flags;
}

extension STREAM_INFORMATION_ENTRY__StreamInformation_Extension
    on STREAM_INFORMATION_ENTRY {
  int get Class => this.StreamInformation.DesiredStorageClass.Class;
  set Class(int value) =>
      this.StreamInformation.DesiredStorageClass.Class = value;

  int get Flags => this.StreamInformation.DesiredStorageClass.Flags;
  set Flags(int value) =>
      this.StreamInformation.DesiredStorageClass.Flags = value;
}

/// {@category Struct}
class _STREAM_INFORMATION_ENTRY__StreamInformation__DataStream extends Struct {
  @Uint16()
  external int Length;

  @Uint16()
  external int Flags;

  @Uint32()
  external int Reserved;

  @Uint64()
  external int Vdl;
}

extension STREAM_INFORMATION_ENTRY__StreamInformation_Extension_1
    on STREAM_INFORMATION_ENTRY {
  int get Length => this.StreamInformation.DataStream.Length;
  set Length(int value) => this.StreamInformation.DataStream.Length = value;

  int get Flags => this.StreamInformation.DataStream.Flags;
  set Flags(int value) => this.StreamInformation.DataStream.Flags = value;

  int get Reserved => this.StreamInformation.DataStream.Reserved;
  set Reserved(int value) => this.StreamInformation.DataStream.Reserved = value;

  int get Vdl => this.StreamInformation.DataStream.Vdl;
  set Vdl(int value) => this.StreamInformation.DataStream.Vdl = value;
}

/// {@category Struct}
class _STREAM_INFORMATION_ENTRY__StreamInformation__Reparse extends Struct {
  @Uint16()
  external int Length;

  @Uint16()
  external int Flags;

  @Uint32()
  external int ReparseDataSize;

  @Uint32()
  external int ReparseDataOffset;
}

extension STREAM_INFORMATION_ENTRY__StreamInformation_Extension_2
    on STREAM_INFORMATION_ENTRY {
  int get Length => this.StreamInformation.Reparse.Length;
  set Length(int value) => this.StreamInformation.Reparse.Length = value;

  int get Flags => this.StreamInformation.Reparse.Flags;
  set Flags(int value) => this.StreamInformation.Reparse.Flags = value;

  int get ReparseDataSize => this.StreamInformation.Reparse.ReparseDataSize;
  set ReparseDataSize(int value) =>
      this.StreamInformation.Reparse.ReparseDataSize = value;

  int get ReparseDataOffset => this.StreamInformation.Reparse.ReparseDataOffset;
  set ReparseDataOffset(int value) =>
      this.StreamInformation.Reparse.ReparseDataOffset = value;
}

/// {@category Struct}
class _STREAM_INFORMATION_ENTRY__StreamInformation__Ea extends Struct {
  @Uint16()
  external int Length;

  @Uint16()
  external int Flags;

  @Uint32()
  external int EaSize;

  @Uint32()
  external int EaInformationOffset;
}

extension STREAM_INFORMATION_ENTRY__StreamInformation_Extension_3
    on STREAM_INFORMATION_ENTRY {
  int get Length => this.StreamInformation.Ea.Length;
  set Length(int value) => this.StreamInformation.Ea.Length = value;

  int get Flags => this.StreamInformation.Ea.Flags;
  set Flags(int value) => this.StreamInformation.Ea.Flags = value;

  int get EaSize => this.StreamInformation.Ea.EaSize;
  set EaSize(int value) => this.StreamInformation.Ea.EaSize = value;

  int get EaInformationOffset => this.StreamInformation.Ea.EaInformationOffset;
  set EaInformationOffset(int value) =>
      this.StreamInformation.Ea.EaInformationOffset = value;
}

extension STREAM_INFORMATION_ENTRY_Extension on STREAM_INFORMATION_ENTRY {
  _STREAM_INFORMATION_ENTRY__StreamInformation__DesiredStorageClass
      get DesiredStorageClass => this.StreamInformation.DesiredStorageClass;
  set DesiredStorageClass(
          _STREAM_INFORMATION_ENTRY__StreamInformation__DesiredStorageClass
              value) =>
      this.StreamInformation.DesiredStorageClass = value;

  _STREAM_INFORMATION_ENTRY__StreamInformation__DataStream get DataStream =>
      this.StreamInformation.DataStream;
  set DataStream(
          _STREAM_INFORMATION_ENTRY__StreamInformation__DataStream value) =>
      this.StreamInformation.DataStream = value;

  _STREAM_INFORMATION_ENTRY__StreamInformation__Reparse get Reparse =>
      this.StreamInformation.Reparse;
  set Reparse(_STREAM_INFORMATION_ENTRY__StreamInformation__Reparse value) =>
      this.StreamInformation.Reparse = value;

  _STREAM_INFORMATION_ENTRY__StreamInformation__Ea get Ea =>
      this.StreamInformation.Ea;
  set Ea(_STREAM_INFORMATION_ENTRY__StreamInformation__Ea value) =>
      this.StreamInformation.Ea = value;
}

/// {@category Struct}
class STREAM_LAYOUT_ENTRY extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int NextStreamOffset;

  @Uint32()
  external int Flags;

  @Uint32()
  external int ExtentInformationOffset;

  @Int64()
  external int AllocationSize;

  @Int64()
  external int EndOfFile;

  @Uint32()
  external int StreamInformationOffset;

  @Uint32()
  external int AttributeTypeCode;

  @Uint32()
  external int AttributeFlags;

  @Uint32()
  external int StreamIdentifierLength;

  @Array(1)
  external Array<Uint16> _StreamIdentifier;

  String get StreamIdentifier {
    final charCodes = <int>[];
    for (var i = 0; i < 1; i++) {
      charCodes.add(_StreamIdentifier[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set StreamIdentifier(String value) {
    final stringToStore = value.padRight(1, '\x00');
    for (var i = 0; i < 1; i++) {
      _StreamIdentifier[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class TAPE_GET_STATISTICS extends Struct {
  @Uint32()
  external int Operation;
}

/// {@category Struct}
class TAPE_STATISTICS extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Flags;

  @Int64()
  external int RecoveredWrites;

  @Int64()
  external int UnrecoveredWrites;

  @Int64()
  external int RecoveredReads;

  @Int64()
  external int UnrecoveredReads;

  @Uint8()
  external int CompressionRatioReads;

  @Uint8()
  external int CompressionRatioWrites;
}

/// {@category Struct}
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

/// {@category Struct}
class TXFS_GET_METADATA_INFO_OUT extends Struct {
  external _TXFS_GET_METADATA_INFO_OUT__TxfFileId_e__Struct TxfFileId;

  external GUID LockingTransaction;

  @Uint64()
  external int LastLsn;

  @Uint32()
  external int TransactionState;
}

/// {@category Struct}
class _TXFS_GET_METADATA_INFO_OUT__TxfFileId_e__Struct extends Struct {
  @Int64()
  external int LowPart;

  @Int64()
  external int HighPart;
}

extension TXFS_GET_METADATA_INFO_OUT_Extension on TXFS_GET_METADATA_INFO_OUT {
  int get LowPart => this.TxfFileId.LowPart;
  set LowPart(int value) => this.TxfFileId.LowPart = value;

  int get HighPart => this.TxfFileId.HighPart;
  set HighPart(int value) => this.TxfFileId.HighPart = value;
}

/// {@category Struct}
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

/// {@category Struct}
class TXFS_LIST_TRANSACTIONS extends Struct {
  @Uint64()
  external int NumberOfTransactions;

  @Uint64()
  external int BufferSizeRequired;
}

/// {@category Struct}
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

/// {@category Struct}
class TXFS_LIST_TRANSACTION_LOCKED_FILES extends Struct {
  external GUID KtmTransaction;

  @Uint64()
  external int NumberOfFiles;

  @Uint64()
  external int BufferSizeRequired;

  @Uint64()
  external int Offset;
}

/// {@category Struct}
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
  external Array<Uint16> _FileName;

  String get FileName {
    final charCodes = <int>[];
    for (var i = 0; i < 1; i++) {
      charCodes.add(_FileName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set FileName(String value) {
    final stringToStore = value.padRight(1, '\x00');
    for (var i = 0; i < 1; i++) {
      _FileName[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
class TXFS_READ_BACKUP_INFORMATION_OUT extends Struct {
  external _TXFS_READ_BACKUP_INFORMATION_OUT__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _TXFS_READ_BACKUP_INFORMATION_OUT__Anonymous_e__Union extends Union {
  @Uint32()
  external int BufferLength;

  @Array(1)
  external Array<Uint8> Buffer;
}

extension TXFS_READ_BACKUP_INFORMATION_OUT_Extension
    on TXFS_READ_BACKUP_INFORMATION_OUT {
  int get BufferLength => this.Anonymous.BufferLength;
  set BufferLength(int value) => this.Anonymous.BufferLength = value;

  Array<Uint8> get Buffer => this.Anonymous.Buffer;
  set Buffer(Array<Uint8> value) => this.Anonymous.Buffer = value;
}

/// {@category Struct}
class TXFS_ROLLFORWARD_REDO_INFORMATION extends Struct {
  @Int64()
  external int LastVirtualClock;

  @Uint64()
  external int LastRedoLsn;

  @Uint64()
  external int HighestRecoveryLsn;

  @Uint32()
  external int Flags;
}

/// {@category Struct}
class TXFS_SAVEPOINT_INFORMATION extends Struct {
  @IntPtr()
  external int KtmTransaction;

  @Uint32()
  external int ActionCode;

  @Uint32()
  external int SavepointId;
}

/// {@category Struct}
class TXFS_START_RM_INFORMATION extends Struct {
  @Uint32()
  external int Flags;

  @Uint64()
  external int LogContainerSize;

  @Uint32()
  external int LogContainerCountMin;

  @Uint32()
  external int LogContainerCountMax;

  @Uint32()
  external int LogGrowthIncrement;

  @Uint32()
  external int LogAutoShrinkPercentage;

  @Uint32()
  external int TmLogPathOffset;

  @Uint16()
  external int TmLogPathLength;

  @Uint16()
  external int LoggingMode;

  @Uint16()
  external int LogPathLength;

  @Uint16()
  external int Reserved;

  @Array(1)
  external Array<Uint16> _LogPath;

  String get LogPath {
    final charCodes = <int>[];
    for (var i = 0; i < 1; i++) {
      charCodes.add(_LogPath[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set LogPath(String value) {
    final stringToStore = value.padRight(1, '\x00');
    for (var i = 0; i < 1; i++) {
      _LogPath[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class TXFS_TRANSACTION_ACTIVE_INFO extends Struct {
  @Uint8()
  external int TransactionsActiveAtSnapshot;
}

/// {@category Struct}
class TXFS_WRITE_BACKUP_INFORMATION extends Struct {
  @Array(1)
  external Array<Uint8> Buffer;
}

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
class USN_RANGE_TRACK_OUTPUT extends Struct {
  @Int64()
  external int Usn;
}

/// {@category Struct}
class USN_RECORD_COMMON_HEADER extends Struct {
  @Uint32()
  external int RecordLength;

  @Uint16()
  external int MajorVersion;

  @Uint16()
  external int MinorVersion;
}

/// {@category Struct}
class USN_RECORD_EXTENT extends Struct {
  @Int64()
  external int Offset;

  @Int64()
  external int Length;
}

/// {@category Struct}
class USN_RECORD_UNION extends Union {
  external USN_RECORD_COMMON_HEADER Header;

  external USN_RECORD_V2 V2;

  external USN_RECORD_V3 V3;

  external USN_RECORD_V4 V4;
}

/// {@category Struct}
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
  external Array<Uint16> _FileName;

  String get FileName {
    final charCodes = <int>[];
    for (var i = 0; i < 1; i++) {
      charCodes.add(_FileName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set FileName(String value) {
    final stringToStore = value.padRight(1, '\x00');
    for (var i = 0; i < 1; i++) {
      _FileName[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
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
  external Array<Uint16> _FileName;

  String get FileName {
    final charCodes = <int>[];
    for (var i = 0; i < 1; i++) {
      charCodes.add(_FileName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set FileName(String value) {
    final stringToStore = value.padRight(1, '\x00');
    for (var i = 0; i < 1; i++) {
      _FileName[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
class VERIFY_INFORMATION extends Struct {
  @Int64()
  external int StartingOffset;

  @Uint32()
  external int Length;
}

/// {@category Struct}
class VIRTUALIZATION_INSTANCE_INFO_INPUT extends Struct {
  @Uint32()
  external int NumberOfWorkerThreads;

  @Uint32()
  external int Flags;
}

/// {@category Struct}
class VIRTUALIZATION_INSTANCE_INFO_INPUT_EX extends Struct {
  @Uint16()
  external int HeaderSize;

  @Uint32()
  external int Flags;

  @Uint32()
  external int NotificationInfoSize;

  @Uint16()
  external int NotificationInfoOffset;

  @Uint16()
  external int ProviderMajorVersion;
}

/// {@category Struct}
class VIRTUALIZATION_INSTANCE_INFO_OUTPUT extends Struct {
  external GUID VirtualizationInstanceID;
}

/// {@category Struct}
class VIRTUAL_STORAGE_SET_BEHAVIOR_INPUT extends Struct {
  @Uint32()
  external int Size;

  @Int32()
  external int BehaviorCode;
}

/// {@category Struct}
class VOLUME_BITMAP_BUFFER extends Struct {
  @Int64()
  external int StartingLcn;

  @Int64()
  external int BitmapSize;

  @Array(1)
  external Array<Uint8> Buffer;
}

/// {@category Struct}
class VOLUME_DISK_EXTENTS extends Struct {
  @Uint32()
  external int NumberOfDiskExtents;

  @Array(1)
  external Array<DISK_EXTENT> Extents;
}

/// {@category Struct}
class VOLUME_GET_GPT_ATTRIBUTES_INFORMATION extends Struct {
  @Uint64()
  external int GptAttributes;
}

/// {@category Struct}
class WIM_PROVIDER_ADD_OVERLAY_INPUT extends Struct {
  @Uint32()
  external int WimType;

  @Uint32()
  external int WimIndex;

  @Uint32()
  external int WimFileNameOffset;

  @Uint32()
  external int WimFileNameLength;
}

/// {@category Struct}
class WIM_PROVIDER_EXTERNAL_INFO extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Flags;

  @Int64()
  external int DataSourceId;

  @Array(20)
  external Array<Uint8> ResourceHash;
}

/// {@category Struct}
class WIM_PROVIDER_OVERLAY_ENTRY extends Struct {
  @Uint32()
  external int NextEntryOffset;

  @Int64()
  external int DataSourceId;

  external GUID WimGuid;

  @Uint32()
  external int WimFileNameOffset;

  @Uint32()
  external int WimType;

  @Uint32()
  external int WimIndex;

  @Uint32()
  external int Flags;
}

/// {@category Struct}
class WIM_PROVIDER_REMOVE_OVERLAY_INPUT extends Struct {
  @Int64()
  external int DataSourceId;
}

/// {@category Struct}
class WIM_PROVIDER_SUSPEND_OVERLAY_INPUT extends Struct {
  @Int64()
  external int DataSourceId;
}

/// {@category Struct}
class WIM_PROVIDER_UPDATE_OVERLAY_INPUT extends Struct {
  @Int64()
  external int DataSourceId;

  @Uint32()
  external int WimFileNameOffset;

  @Uint32()
  external int WimFileNameLength;
}

/// {@category Struct}
class WOF_EXTERNAL_FILE_ID extends Struct {
  external FILE_ID_128 FileId;
}

/// {@category Struct}
class WOF_EXTERNAL_INFO extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Provider;
}

/// {@category Struct}
class WOF_VERSION_INFO extends Struct {
  @Uint32()
  external int WofVersion;
}

/// {@category Struct}
class WRITE_USN_REASON_INPUT extends Struct {
  @Uint32()
  external int Flags;

  @Uint32()
  external int UsnReasonToWrite;
}
