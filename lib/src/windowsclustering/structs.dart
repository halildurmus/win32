// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// -----------------------------------------------------------------------------
// Linter exceptions
// -----------------------------------------------------------------------------
// ignore_for_file: camel_case_types
// ignore_for_file: camel_case_extensions
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

class _HCLUSTER extends Struct {}

class _HNODE extends Struct {}

class _HRESOURCE extends Struct {}

class _HGROUP extends Struct {}

class _HNETWORK extends Struct {}

class _HNETINTERFACE extends Struct {}

class _HCHANGE extends Struct {}

class _HCLUSENUM extends Struct {}

class _HGROUPENUM extends Struct {}

class _HRESENUM extends Struct {}

class _HNETWORKENUM extends Struct {}

class _HNODEENUM extends Struct {}

class _HNETINTERFACEENUM extends Struct {}

class _HRESTYPEENUM extends Struct {}

class _HREGBATCH extends Struct {}

class _HREGBATCHPORT extends Struct {}

class _HREGBATCHNOTIFICATION extends Struct {}

class _HREGREADBATCH extends Struct {}

class _HREGREADBATCHREPLY extends Struct {}

class _HNODEENUMEX extends Struct {}

class _HCLUSENUMEX extends Struct {}

class _HGROUPENUMEX extends Struct {}

class _HRESENUMEX extends Struct {}

class _HGROUPSET extends Struct {}

class _HGROUPSETENUM extends Struct {}

class CLUSTERVERSIONINFO_NT4 extends Struct {
  @Uint32()
  external int dwVersionInfoSize;
  @Uint16()
  external int MajorVersion;
  @Uint16()
  external int MinorVersion;
  @Uint16()
  external int BuildNumber;
  @Array(64)
  external Array<Uint16> szVendorId;
  @Array(64)
  external Array<Uint16> szCSDVersion;
}

class CLUSTERVERSIONINFO extends Struct {
  @Uint32()
  external int dwVersionInfoSize;
  @Uint16()
  external int MajorVersion;
  @Uint16()
  external int MinorVersion;
  @Uint16()
  external int BuildNumber;
  @Array(64)
  external Array<Uint16> szVendorId;
  @Array(64)
  external Array<Uint16> szCSDVersion;
  @Uint32()
  external int dwClusterHighestVersion;
  @Uint32()
  external int dwClusterLowestVersion;
  @Uint32()
  external int dwFlags;
  @Uint32()
  external int dwReserved;
}

class CLUS_STARTING_PARAMS extends Struct {
  @Uint32()
  external int dwSize;
  @Int32()
  external int bForm;
  @Int32()
  external int bFirst;
}

class CLUSCTL_RESOURCE_STATE_CHANGE_REASON_STRUCT extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int dwVersion;
  @Uint32()
  external int eReason;
}

class CLUSTER_BATCH_COMMAND extends Struct {
  @Uint32()
  external int Command;
  @Uint32()
  external int dwOptions;
  external Pointer<Utf16> wzName;
  external Pointer<Uint8> lpData;
  @Uint32()
  external int cbData;
}

class CLUSTER_READ_BATCH_COMMAND extends Struct {
  @Uint32()
  external int Command;
  @Uint32()
  external int dwOptions;
  external Pointer<Utf16> wzSubkeyName;
  external Pointer<Utf16> wzValueName;
  external Pointer<Uint8> lpData;
  @Uint32()
  external int cbData;
}

class CLUSTER_ENUM_ITEM extends Struct {
  @Uint32()
  external int dwVersion;
  @Uint32()
  external int dwType;
  @Uint32()
  external int cbId;
  external Pointer<Utf16> lpszId;
  @Uint32()
  external int cbName;
  external Pointer<Utf16> lpszName;
}

class CLUSTER_CREATE_GROUP_INFO extends Struct {
  @Uint32()
  external int dwVersion;
  @Uint32()
  external int groupType;
}

class CLUSTER_VALIDATE_PATH extends Struct {
  @Uint16()
  external int szPath;
}

class CLUSTER_VALIDATE_DIRECTORY extends Struct {
  @Uint16()
  external int szPath;
}

class CLUSTER_VALIDATE_NETNAME extends Struct {
  @Uint16()
  external int szNetworkName;
}

class CLUSTER_VALIDATE_CSV_FILENAME extends Struct {
  @Uint16()
  external int szFileName;
}

class CLUSTER_SET_PASSWORD_STATUS extends Struct {
  @Uint32()
  external int NodeId;
  @Uint8()
  external int SetAttempted;
  @Uint32()
  external int ReturnStatus;
}

class CLUSTER_IP_ENTRY extends Struct {
  external Pointer<Utf16> lpszIpAddress;
  @Uint32()
  external int dwPrefixLength;
}

class CREATE_CLUSTER_CONFIG extends Struct {
  @Uint32()
  external int dwVersion;
  external Pointer<Utf16> lpszClusterName;
  @Uint32()
  external int cNodes;
  external Pointer<Pointer<Utf16>> ppszNodeNames;
  @Uint32()
  external int cIpEntries;
  external Pointer<CLUSTER_IP_ENTRY> pIpEntries;
  @Uint8()
  external int fEmptyCluster;
  @Uint32()
  external int managementPointType;
  @Uint32()
  external int managementPointResType;
}

class CREATE_CLUSTER_NAME_ACCOUNT extends Struct {
  @Uint32()
  external int dwVersion;
  external Pointer<Utf16> lpszClusterName;
  @Uint32()
  external int dwFlags;
  external Pointer<Utf16> pszUserName;
  external Pointer<Utf16> pszPassword;
  external Pointer<Utf16> pszDomain;
  @Uint32()
  external int managementPointType;
  @Uint32()
  external int managementPointResType;
  @Uint8()
  external int bUpgradeVCOs;
}

class NOTIFY_FILTER_AND_TYPE extends Struct {
  @Uint32()
  external int dwObjectType;
  @Int64()
  external int FilterFlags;
}

class CLUSTER_MEMBERSHIP_INFO extends Struct {
  @Int32()
  external int HasQuorum;
  @Uint32()
  external int UpnodesSize;
  @Array(1)
  external Array<Uint8> Upnodes;
}

class CLUSTER_AVAILABILITY_SET_CONFIG extends Struct {
  @Uint32()
  external int dwVersion;
  @Uint32()
  external int dwUpdateDomains;
  @Uint32()
  external int dwFaultDomains;
  @Int32()
  external int bReserveSpareNode;
}

class CLUSTER_GROUP_ENUM_ITEM extends Struct {
  @Uint32()
  external int dwVersion;
  @Uint32()
  external int cbId;
  external Pointer<Utf16> lpszId;
  @Uint32()
  external int cbName;
  external Pointer<Utf16> lpszName;
  @Uint32()
  external int state;
  @Uint32()
  external int cbOwnerNode;
  external Pointer<Utf16> lpszOwnerNode;
  @Uint32()
  external int dwFlags;
  @Uint32()
  external int cbProperties;
  external Pointer pProperties;
  @Uint32()
  external int cbRoProperties;
  external Pointer pRoProperties;
}

class CLUSTER_RESOURCE_ENUM_ITEM extends Struct {
  @Uint32()
  external int dwVersion;
  @Uint32()
  external int cbId;
  external Pointer<Utf16> lpszId;
  @Uint32()
  external int cbName;
  external Pointer<Utf16> lpszName;
  @Uint32()
  external int cbOwnerGroupName;
  external Pointer<Utf16> lpszOwnerGroupName;
  @Uint32()
  external int cbOwnerGroupId;
  external Pointer<Utf16> lpszOwnerGroupId;
  @Uint32()
  external int cbProperties;
  external Pointer pProperties;
  @Uint32()
  external int cbRoProperties;
  external Pointer pRoProperties;
}

class GROUP_FAILURE_INFO extends Struct {
  @Uint32()
  external int dwFailoverAttemptsRemaining;
  @Uint32()
  external int dwFailoverPeriodRemaining;
}

class GROUP_FAILURE_INFO_BUFFER extends Struct {
  @Uint32()
  external int dwVersion;
  external GROUP_FAILURE_INFO Info;
}

class RESOURCE_FAILURE_INFO extends Struct {
  @Uint32()
  external int dwRestartAttemptsRemaining;
  @Uint32()
  external int dwRestartPeriodRemaining;
}

class RESOURCE_FAILURE_INFO_BUFFER extends Struct {
  @Uint32()
  external int dwVersion;
  external RESOURCE_FAILURE_INFO Info;
}

class RESOURCE_TERMINAL_FAILURE_INFO_BUFFER extends Struct {
  @Int32()
  external int isTerminalFailure;
  @Uint32()
  external int restartPeriodRemaining;
}

class CLUSPROP_SYNTAX extends Struct {
  @Uint32()
  external int dw;
  @Uint32()
  external int Anonymous;
}

class CLUSPROP_VALUE extends Struct {
  external CLUSPROP_SYNTAX Syntax;
  @Uint32()
  external int cbLength;
}

class CLUSPROP_BINARY extends Struct {
  external CLUSPROP_VALUE __AnonymousBase_clusapi_L5092_C41;
  @Uint8()
  external int rgb;
}

class CLUSPROP_WORD extends Struct {
  external CLUSPROP_VALUE __AnonymousBase_clusapi_L5102_C39;
  @Uint16()
  external int w;
}

class CLUSPROP_DWORD extends Struct {
  external CLUSPROP_VALUE __AnonymousBase_clusapi_L5112_C40;
  @Uint32()
  external int dw;
}

class CLUSPROP_LONG extends Struct {
  external CLUSPROP_VALUE __AnonymousBase_clusapi_L5122_C39;
  @Int32()
  external int l;
}

class CLUSPROP_SZ extends Struct {
  external CLUSPROP_VALUE __AnonymousBase_clusapi_L5132_C37;
  @Uint16()
  external int sz;
}

class CLUSPROP_ULARGE_INTEGER extends Struct {
  external CLUSPROP_VALUE __AnonymousBase_clusapi_L5149_C14;
  @Uint64()
  external int li;
}

class CLUSPROP_LARGE_INTEGER extends Struct {
  external CLUSPROP_VALUE __AnonymousBase_clusapi_L5162_C14;
  @Int64()
  external int li;
}

class CLUSPROP_SECURITY_DESCRIPTOR extends Struct {
  external CLUSPROP_VALUE __AnonymousBase_clusapi_L5174_C54;
  @Uint32()
  external int Anonymous;
}

class CLUSPROP_FILETIME extends Struct {
  external CLUSPROP_VALUE __AnonymousBase_clusapi_L5188_C14;
  external FILETIME ft;
}

class CLUS_RESOURCE_CLASS_INFO extends Struct {
  @Uint32()
  external int Anonymous;
}

class CLUSPROP_RESOURCE_CLASS extends Struct {
  external CLUSPROP_VALUE __AnonymousBase_clusapi_L5213_C14;
  @Uint32()
  external int rc;
}

class CLUSPROP_RESOURCE_CLASS_INFO extends Struct {
  external CLUSPROP_VALUE __AnonymousBase_clusapi_L5224_C14;
  external CLUS_RESOURCE_CLASS_INFO __AnonymousBase_clusapi_L5225_C14;
}

class CLUSPROP_REQUIRED_DEPENDENCY extends Struct {
  external CLUSPROP_VALUE Value;
  external CLUSPROP_RESOURCE_CLASS ResClass;
  external CLUSPROP_SZ ResTypeName;
}

class CLUS_FORCE_QUORUM_INFO extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int dwNodeBitMask;
  @Uint32()
  external int dwMaxNumberofNodes;
  @Array(1)
  external Array<Uint16> multiszNodeList;
}

class CLUS_PARTITION_INFO extends Struct {
  @Uint32()
  external int dwFlags;
  @Array(129)
  external Array<Uint16> szDeviceName;
  @Array(129)
  external Array<Uint16> szVolumeLabel;
  @Uint32()
  external int dwSerialNumber;
  @Uint32()
  external int rgdwMaximumComponentLength;
  @Uint32()
  external int dwFileSystemFlags;
  @Array(32)
  external Array<Uint16> szFileSystem;
}

class CLUS_PARTITION_INFO_EX extends Struct {
  @Uint32()
  external int dwFlags;
  @Array(129)
  external Array<Uint16> szDeviceName;
  @Array(129)
  external Array<Uint16> szVolumeLabel;
  @Uint32()
  external int dwSerialNumber;
  @Uint32()
  external int rgdwMaximumComponentLength;
  @Uint32()
  external int dwFileSystemFlags;
  @Array(32)
  external Array<Uint16> szFileSystem;
  @Uint64()
  external int TotalSizeInBytes;
  @Uint64()
  external int FreeSizeInBytes;
  @Uint32()
  external int DeviceNumber;
  @Uint32()
  external int PartitionNumber;
  external GUID VolumeGuid;
}

class CLUS_PARTITION_INFO_EX2 extends Struct {
  external GUID GptPartitionId;
  @Array(129)
  external Array<Uint16> szPartitionName;
  @Uint32()
  external int EncryptionFlags;
}

class CLUS_CSV_VOLUME_INFO extends Struct {
  @Uint64()
  external int VolumeOffset;
  @Uint32()
  external int PartitionNumber;
  @Uint32()
  external int FaultState;
  @Uint32()
  external int BackupState;
  @Array(129)
  external Array<Uint16> szVolumeFriendlyName;
  @Array(50)
  external Array<Uint16> szVolumeName;
}

class CLUS_CSV_VOLUME_NAME extends Struct {
  @Int64()
  external int VolumeOffset;
  @Array(129)
  external Array<Uint16> szVolumeName;
  @Array(129)
  external Array<Uint16> szRootPath;
}

class CLUSTER_SHARED_VOLUME_STATE_INFO extends Struct {
  @Array(129)
  external Array<Uint16> szVolumeName;
  @Array(129)
  external Array<Uint16> szNodeName;
  @Uint32()
  external int VolumeState;
}

class CLUSTER_SHARED_VOLUME_STATE_INFO_EX extends Struct {
  @Array(129)
  external Array<Uint16> szVolumeName;
  @Array(129)
  external Array<Uint16> szNodeName;
  @Uint32()
  external int VolumeState;
  @Array(129)
  external Array<Uint16> szVolumeFriendlyName;
  @Uint64()
  external int RedirectedIOReason;
  @Uint64()
  external int VolumeRedirectedIOReason;
}

class CLUSTER_SHARED_VOLUME_RENAME_INPUT_VOLUME extends Struct {
  @Uint32()
  external int InputType;
  @Uint32()
  external int Anonymous;
}

class CLUSTER_SHARED_VOLUME_RENAME_INPUT_NAME extends Struct {
  @Array(129)
  external Array<Uint16> NewVolumeName;
}

class CLUSTER_SHARED_VOLUME_RENAME_INPUT_GUID_NAME extends Struct {
  @Array(129)
  external Array<Uint16> NewVolumeName;
  @Array(50)
  external Array<Uint16> NewVolumeGuid;
}

class CLUSTER_SHARED_VOLUME_RENAME_INPUT extends Struct {
  external CLUSTER_SHARED_VOLUME_RENAME_INPUT_VOLUME
      __AnonymousBase_clusapi_L5427_C14;
  external CLUSTER_SHARED_VOLUME_RENAME_INPUT_NAME
      __AnonymousBase_clusapi_L5428_C14;
}

class CLUSTER_SHARED_VOLUME_RENAME_GUID_INPUT extends Struct {
  external CLUSTER_SHARED_VOLUME_RENAME_INPUT_VOLUME
      __AnonymousBase_clusapi_L5438_C14;
  external CLUSTER_SHARED_VOLUME_RENAME_INPUT_GUID_NAME
      __AnonymousBase_clusapi_L5439_C14;
}

class CLUS_CHKDSK_INFO extends Struct {
  @Uint32()
  external int PartitionNumber;
  @Uint32()
  external int ChkdskState;
  @Uint32()
  external int FileIdCount;
  @Array(1)
  external Array<Uint64> FileIdList;
}

class CLUS_DISK_NUMBER_INFO extends Struct {
  @Uint32()
  external int DiskNumber;
  @Uint32()
  external int BytesPerSector;
}

class CLUS_SHARED_VOLUME_BACKUP_MODE extends Struct {
  @Uint32()
  external int BackupState;
  @Uint32()
  external int DelayTimerInSecs;
  @Array(129)
  external Array<Uint16> VolumeName;
}

class CLUSPROP_PARTITION_INFO extends Struct {
  external CLUSPROP_VALUE __AnonymousBase_clusapi_L5470_C14;
  external CLUS_PARTITION_INFO __AnonymousBase_clusapi_L5471_C14;
}

class CLUSPROP_PARTITION_INFO_EX extends Struct {
  external CLUSPROP_VALUE __AnonymousBase_clusapi_L5482_C14;
  external CLUS_PARTITION_INFO_EX __AnonymousBase_clusapi_L5483_C14;
}

class CLUSPROP_PARTITION_INFO_EX2 extends Struct {
  external CLUSPROP_PARTITION_INFO_EX __AnonymousBase_clusapi_L5496_C14;
  external CLUS_PARTITION_INFO_EX2 __AnonymousBase_clusapi_L5497_C14;
}

class CLUS_FTSET_INFO extends Struct {
  @Uint32()
  external int dwRootSignature;
  @Uint32()
  external int dwFtType;
}

class CLUSPROP_FTSET_INFO extends Struct {
  external CLUSPROP_VALUE __AnonymousBase_clusapi_L5518_C14;
  external CLUS_FTSET_INFO __AnonymousBase_clusapi_L5519_C14;
}

class CLUS_SCSI_ADDRESS extends Struct {
  @Uint32()
  external int Anonymous;
}

class CLUSPROP_SCSI_ADDRESS extends Struct {
  external CLUSPROP_VALUE __AnonymousBase_clusapi_L5546_C14;
  external CLUS_SCSI_ADDRESS __AnonymousBase_clusapi_L5547_C14;
}

class CLUS_NETNAME_VS_TOKEN_INFO extends Struct {
  @Uint32()
  external int ProcessID;
  @Uint32()
  external int DesiredAccess;
  @Int32()
  external int InheritHandle;
}

class CLUS_NETNAME_PWD_INFO extends Struct {
  @Uint32()
  external int Flags;
  @Array(16)
  external Array<Uint16> Password;
  @Array(129)
  external Array<Uint16> CreatingDC;
  @Array(64)
  external Array<Uint16> ObjectGuid;
}

class CLUS_NETNAME_PWD_INFOEX extends Struct {
  @Uint32()
  external int Flags;
  @Array(128)
  external Array<Uint16> Password;
  @Array(129)
  external Array<Uint16> CreatingDC;
  @Array(64)
  external Array<Uint16> ObjectGuid;
}

class CLUS_DNN_LEADER_STATUS extends Struct {
  @Int32()
  external int IsOnline;
  @Int32()
  external int IsFileServerPresent;
}

class CLUS_DNN_SODAFS_CLONE_STATUS extends Struct {
  @Uint32()
  external int NodeId;
  @Uint32()
  external int Status;
}

class CLUS_NETNAME_IP_INFO_ENTRY extends Struct {
  @Uint32()
  external int NodeId;
  @Uint32()
  external int AddressSize;
  @Array(1)
  external Array<Uint8> Address;
}

class CLUS_NETNAME_IP_INFO_FOR_MULTICHANNEL extends Struct {
  @Array(64)
  external Array<Uint16> szName;
  @Uint32()
  external int NumEntries;
  @Array(1)
  external Array<CLUS_NETNAME_IP_INFO_ENTRY> IpInfo;
}

class CLUS_MAINTENANCE_MODE_INFO extends Struct {
  @Int32()
  external int InMaintenance;
}

class CLUS_CSV_MAINTENANCE_MODE_INFO extends Struct {
  @Int32()
  external int InMaintenance;
  @Array(129)
  external Array<Uint16> VolumeName;
}

class CLUS_MAINTENANCE_MODE_INFOEX extends Struct {
  @Int32()
  external int InMaintenance;
  @Uint32()
  external int MaintainenceModeType;
  @Uint32()
  external int InternalState;
  @Uint32()
  external int Signature;
}

class CLUS_SET_MAINTENANCE_MODE_INPUT extends Struct {
  @Int32()
  external int InMaintenance;
  @Uint32()
  external int ExtraParameterSize;
  @Array(1)
  external Array<Uint8> ExtraParameter;
}

class CLUS_STORAGE_SET_DRIVELETTER extends Struct {
  @Uint32()
  external int PartitionNumber;
  @Uint32()
  external int DriveLetterMask;
}

class CLUS_STORAGE_GET_AVAILABLE_DRIVELETTERS extends Struct {
  @Uint32()
  external int AvailDrivelettersMask;
}

class CLUS_STORAGE_REMAP_DRIVELETTER extends Struct {
  @Uint32()
  external int CurrentDriveLetterMask;
  @Uint32()
  external int TargetDriveLetterMask;
}

class CLUS_PROVIDER_STATE_CHANGE_INFO extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int resourceState;
  @Array(1)
  external Array<Uint16> szProviderId;
}

class CLUS_CREATE_INFRASTRUCTURE_FILESERVER_INPUT extends Struct {
  @Array(16)
  external Array<Uint16> FileServerName;
}

class CLUS_CREATE_INFRASTRUCTURE_FILESERVER_OUTPUT extends Struct {
  @Array(129)
  external Array<Uint16> FileServerName;
}

class CLUSPROP_LIST extends Struct {
  @Uint32()
  external int nPropertyCount;
  external CLUSPROP_SZ PropertyName;
}

class FILESHARE_CHANGE extends Struct {
  @Uint32()
  external int Change;
  @Array(84)
  external Array<Uint16> ShareName;
}

class FILESHARE_CHANGE_LIST extends Struct {
  @Uint32()
  external int NumEntries;
  @Array(1)
  external Array<FILESHARE_CHANGE> ChangeEntry;
}

class CLUSCTL_GROUP_GET_LAST_MOVE_TIME_OUTPUT extends Struct {
  @Uint64()
  external int GetTickCount64;
  external SYSTEMTIME GetSystemTime;
  @Uint32()
  external int NodeId;
}

class CLUSPROP_BUFFER_HELPER extends Struct {
  external Pointer<Uint8> pb;
  external Pointer<Uint16> pw;
  external Pointer<Uint32> pdw;
  external Pointer<Int32> pl;
  external Pointer<Utf16> psz;
  external Pointer<CLUSPROP_LIST> pList;
  external Pointer<CLUSPROP_SYNTAX> pSyntax;
  external Pointer<CLUSPROP_SZ> pName;
  external Pointer<CLUSPROP_VALUE> pValue;
  external Pointer<CLUSPROP_BINARY> pBinaryValue;
  external Pointer<CLUSPROP_WORD> pWordValue;
  external Pointer<CLUSPROP_DWORD> pDwordValue;
  external Pointer<CLUSPROP_LONG> pLongValue;
  external Pointer<CLUSPROP_ULARGE_INTEGER> pULargeIntegerValue;
  external Pointer<CLUSPROP_LARGE_INTEGER> pLargeIntegerValue;
  external Pointer<CLUSPROP_SZ> pStringValue;
  external Pointer<CLUSPROP_SZ> pMultiSzValue;
  external Pointer<CLUSPROP_SECURITY_DESCRIPTOR> pSecurityDescriptor;
  external Pointer<CLUSPROP_RESOURCE_CLASS> pResourceClassValue;
  external Pointer<CLUSPROP_RESOURCE_CLASS_INFO> pResourceClassInfoValue;
  external Pointer<CLUSPROP_DWORD> pDiskSignatureValue;
  external Pointer<CLUSPROP_SCSI_ADDRESS> pScsiAddressValue;
  external Pointer<CLUSPROP_DWORD> pDiskNumberValue;
  external Pointer<CLUSPROP_PARTITION_INFO> pPartitionInfoValue;
  external Pointer<CLUSPROP_REQUIRED_DEPENDENCY> pRequiredDependencyValue;
  external Pointer<CLUSPROP_PARTITION_INFO_EX> pPartitionInfoValueEx;
  external Pointer<CLUSPROP_PARTITION_INFO_EX2> pPartitionInfoValueEx2;
  external Pointer<CLUSPROP_FILETIME> pFileTimeValue;
}

class SR_RESOURCE_TYPE_REPLICATED_PARTITION_INFO extends Struct {
  @Uint64()
  external int PartitionOffset;
  @Uint32()
  external int Capabilities;
}

class SR_RESOURCE_TYPE_REPLICATED_PARTITION_ARRAY extends Struct {
  @Uint32()
  external int Count;
  @Array(1)
  external Array<SR_RESOURCE_TYPE_REPLICATED_PARTITION_INFO> PartitionArray;
}

class SR_RESOURCE_TYPE_QUERY_ELIGIBLE_LOGDISKS extends Struct {
  external GUID DataDiskGuid;
  @Uint8()
  external int IncludeOfflineDisks;
}

class SR_RESOURCE_TYPE_QUERY_ELIGIBLE_TARGET_DATADISKS extends Struct {
  external GUID SourceDataDiskGuid;
  external GUID TargetReplicationGroupGuid;
  @Uint8()
  external int SkipConnectivityCheck;
  @Uint8()
  external int IncludeOfflineDisks;
}

class SR_RESOURCE_TYPE_QUERY_ELIGIBLE_SOURCE_DATADISKS extends Struct {
  external GUID DataDiskGuid;
  @Uint8()
  external int IncludeAvailableStoargeDisks;
}

class SR_RESOURCE_TYPE_DISK_INFO extends Struct {
  @Uint32()
  external int Reason;
  external GUID DiskGuid;
}

class SR_RESOURCE_TYPE_ELIGIBLE_DISKS_RESULT extends Struct {
  @Uint16()
  external int Count;
  @Array(1)
  external Array<SR_RESOURCE_TYPE_DISK_INFO> DiskInfo;
}

class SR_RESOURCE_TYPE_REPLICATED_DISK extends Struct {
  @Uint32()
  external int Type;
  external GUID ClusterDiskResourceGuid;
  external GUID ReplicationGroupId;
  @Array(129)
  external Array<Uint16> ReplicationGroupName;
}

class SR_RESOURCE_TYPE_REPLICATED_DISKS_RESULT extends Struct {
  @Uint16()
  external int Count;
  @Array(1)
  external Array<SR_RESOURCE_TYPE_REPLICATED_DISK> ReplicatedDisks;
}

class CLUSCTL_RESOURCE_TYPE_STORAGE_GET_AVAILABLE_DISKS_EX2_INPUT
    extends Struct {
  @Uint32()
  external int dwFlags;
  external GUID guidPoolFilter;
}

class RESOURCE_STATUS extends Struct {
  @Uint32()
  external int ResourceState;
  @Uint32()
  external int CheckPoint;
  @Uint32()
  external int WaitHint;
  @IntPtr()
  external int EventHandle;
}

class NodeUtilizationInfoElement extends Struct {
  @Uint64()
  external int Id;
  @Uint64()
  external int AvailableMemory;
  @Uint64()
  external int AvailableMemoryAfterReclamation;
}

class ResourceUtilizationInfoElement extends Struct {
  @Uint64()
  external int PhysicalNumaId;
  @Uint64()
  external int CurrentMemory;
}

class GET_OPERATION_CONTEXT_PARAMS extends Struct {
  @Uint32()
  external int Size;
  @Uint32()
  external int Version;
  @Uint32()
  external int Type;
  @Uint32()
  external int Priority;
}

class RESOURCE_STATUS_EX extends Struct {
  @Uint32()
  external int ResourceState;
  @Uint32()
  external int CheckPoint;
  @IntPtr()
  external int EventHandle;
  @Uint32()
  external int ApplicationSpecificErrorCode;
  @Uint32()
  external int Flags;
  @Uint32()
  external int WaitHint;
}

class CLRES_V1_FUNCTIONS extends Struct {
  external POPEN_ROUTINE Open;
  external PCLOSE_ROUTINE Close;
  external PONLINE_ROUTINE Online;
  external POFFLINE_ROUTINE Offline;
  external PTERMINATE_ROUTINE Terminate;
  external PLOOKS_ALIVE_ROUTINE LooksAlive;
  external PIS_ALIVE_ROUTINE IsAlive;
  external PARBITRATE_ROUTINE Arbitrate;
  external PRELEASE_ROUTINE Release;
  external PRESOURCE_CONTROL_ROUTINE ResourceControl;
  external PRESOURCE_TYPE_CONTROL_ROUTINE ResourceTypeControl;
}

class CLRES_V2_FUNCTIONS extends Struct {
  external POPEN_V2_ROUTINE Open;
  external PCLOSE_ROUTINE Close;
  external PONLINE_V2_ROUTINE Online;
  external POFFLINE_V2_ROUTINE Offline;
  external PTERMINATE_ROUTINE Terminate;
  external PLOOKS_ALIVE_ROUTINE LooksAlive;
  external PIS_ALIVE_ROUTINE IsAlive;
  external PARBITRATE_ROUTINE Arbitrate;
  external PRELEASE_ROUTINE Release;
  external PRESOURCE_CONTROL_ROUTINE ResourceControl;
  external PRESOURCE_TYPE_CONTROL_ROUTINE ResourceTypeControl;
  external PCANCEL_ROUTINE Cancel;
}

class CLRES_V3_FUNCTIONS extends Struct {
  external POPEN_V2_ROUTINE Open;
  external PCLOSE_ROUTINE Close;
  external PONLINE_V2_ROUTINE Online;
  external POFFLINE_V2_ROUTINE Offline;
  external PTERMINATE_ROUTINE Terminate;
  external PLOOKS_ALIVE_ROUTINE LooksAlive;
  external PIS_ALIVE_ROUTINE IsAlive;
  external PARBITRATE_ROUTINE Arbitrate;
  external PRELEASE_ROUTINE Release;
  external PBEGIN_RESCALL_ROUTINE BeginResourceControl;
  external PBEGIN_RESTYPECALL_ROUTINE BeginResourceTypeControl;
  external PCANCEL_ROUTINE Cancel;
}

class CLRES_V4_FUNCTIONS extends Struct {
  external POPEN_V2_ROUTINE Open;
  external PCLOSE_ROUTINE Close;
  external PONLINE_V2_ROUTINE Online;
  external POFFLINE_V2_ROUTINE Offline;
  external PTERMINATE_ROUTINE Terminate;
  external PLOOKS_ALIVE_ROUTINE LooksAlive;
  external PIS_ALIVE_ROUTINE IsAlive;
  external PARBITRATE_ROUTINE Arbitrate;
  external PRELEASE_ROUTINE Release;
  external PBEGIN_RESCALL_ROUTINE BeginResourceControl;
  external PBEGIN_RESTYPECALL_ROUTINE BeginResourceTypeControl;
  external PCANCEL_ROUTINE Cancel;
  external PBEGIN_RESCALL_AS_USER_ROUTINE BeginResourceControlAsUser;
  external PBEGIN_RESTYPECALL_AS_USER_ROUTINE BeginResourceTypeControlAsUser;
}

class CLRES_FUNCTION_TABLE extends Struct {
  @Uint32()
  external int TableSize;
  @Uint32()
  external int Version;
  @Uint32()
  external int Anonymous;
}

class RESUTIL_LARGEINT_DATA extends Struct {
  @Int64()
  external int Default;
  @Int64()
  external int Minimum;
  @Int64()
  external int Maximum;
}

class RESUTIL_ULARGEINT_DATA extends Struct {
  @Uint64()
  external int Default;
  @Uint64()
  external int Minimum;
  @Uint64()
  external int Maximum;
}

class RESUTIL_FILETIME_DATA extends Struct {
  external FILETIME Default;
  external FILETIME Minimum;
  external FILETIME Maximum;
}

class RESUTIL_PROPERTY_ITEM extends Struct {
  external Pointer<Utf16> Name;
  external Pointer<Utf16> KeyName;
  @Uint32()
  external int Format;
  @Uint32()
  external int Anonymous;
  @Uint32()
  external int Minimum;
  @Uint32()
  external int Maximum;
  @Uint32()
  external int Flags;
  @Uint32()
  external int Offset;
}

class CLRES_CALLBACK_FUNCTION_TABLE extends Struct {
  external PLOG_EVENT_ROUTINE LogEvent;
  external PSET_RESOURCE_STATUS_ROUTINE_EX SetResourceStatusEx;
  external PSET_RESOURCE_LOCKED_MODE_ROUTINE SetResourceLockedMode;
  external PSIGNAL_FAILURE_ROUTINE SignalFailure;
  external PSET_RESOURCE_INMEMORY_NODELOCAL_PROPERTIES_ROUTINE
      SetResourceInMemoryNodeLocalProperties;
  external PEND_CONTROL_CALL EndControlCall;
  external PEND_TYPE_CONTROL_CALL EndTypeControlCall;
  external PEXTEND_RES_CONTROL_CALL ExtendControlCall;
  external PEXTEND_RES_TYPE_CONTROL_CALL ExtendTypeControlCall;
  external PRAISE_RES_TYPE_NOTIFICATION RaiseResTypeNotification;
  external PCHANGE_RESOURCE_PROCESS_FOR_DUMPS ChangeResourceProcessForDumps;
  external PCHANGE_RES_TYPE_PROCESS_FOR_DUMPS ChangeResTypeProcessForDumps;
  external PSET_INTERNAL_STATE SetInternalState;
  external PSET_RESOURCE_LOCKED_MODE_EX_ROUTINE SetResourceLockedModeEx;
}

class MONITOR_STATE extends Struct {
  @Int64()
  external int LastUpdate;
  @Uint32()
  external int State;
  @IntPtr()
  external int ActiveResource;
  @Int32()
  external int ResmonStop;
}

class POST_UPGRADE_VERSION_INFO extends Struct {
  @Uint32()
  external int newMajorVersion;
  @Uint32()
  external int newUpgradeVersion;
  @Uint32()
  external int oldMajorVersion;
  @Uint32()
  external int oldUpgradeVersion;
  @Uint32()
  external int reserved;
}

class CLUSTER_HEALTH_FAULT extends Struct {
  external Pointer<Utf16> Id;
  @Uint32()
  external int ErrorType;
  @Uint32()
  external int ErrorCode;
  external Pointer<Utf16> Description;
  external Pointer<Utf16> Provider;
  @Uint32()
  external int Flags;
  @Uint32()
  external int Reserved;
}

class CLUSTER_HEALTH_FAULT_ARRAY extends Struct {
  @Uint32()
  external int numFaults;
  external Pointer<CLUSTER_HEALTH_FAULT> faults;
}

class CLUS_WORKER extends Struct {
  @IntPtr()
  external int hThread;
  @Int32()
  external int Terminate;
}

class _HCLUSCRYPTPROVIDER extends Struct {}

class PaxosTagCStruct extends Struct {
  @Uint64()
  external int __padding__PaxosTagVtable;
  @Uint64()
  external int __padding__NextEpochVtable;
  @Uint64()
  external int __padding__NextEpoch_DateTimeVtable;
  @Uint64()
  external int NextEpoch_DateTime_ticks;
  @Int32()
  external int NextEpoch_Value;
  @Uint32()
  external int __padding__BoundryNextEpoch;
  @Uint64()
  external int __padding__EpochVtable;
  @Uint64()
  external int __padding__Epoch_DateTimeVtable;
  @Uint64()
  external int Epoch_DateTime_ticks;
  @Int32()
  external int Epoch_Value;
  @Uint32()
  external int __padding__BoundryEpoch;
  @Int32()
  external int Sequence;
  @Uint32()
  external int __padding__BoundrySequence;
}

class WitnessTagUpdateHelper extends Struct {
  @Int32()
  external int Version;
  external PaxosTagCStruct paxosToSet;
  external PaxosTagCStruct paxosToValidate;
}

class WitnessTagHelper extends Struct {
  @Int32()
  external int Version;
  external PaxosTagCStruct paxosToValidate;
}

class ClusApplication extends Struct {}

class Cluster extends Struct {}

class ClusVersion extends Struct {}

class ClusResType extends Struct {}

class ClusProperty extends Struct {}

class ClusProperties extends Struct {}

class DomainNames extends Struct {}

class ClusNetwork extends Struct {}

class ClusNetInterface extends Struct {}

class ClusNetInterfaces extends Struct {}

class ClusResDependencies extends Struct {}

class ClusResGroupResources extends Struct {}

class ClusResTypeResources extends Struct {}

class ClusResGroupPreferredOwnerNodes extends Struct {}

class ClusResPossibleOwnerNodes extends Struct {}

class ClusNetworks extends Struct {}

class ClusNetworkNetInterfaces extends Struct {}

class ClusNodeNetInterfaces extends Struct {}

class ClusRefObject extends Struct {}

class ClusterNames extends Struct {}

class ClusNode extends Struct {}

class ClusNodes extends Struct {}

class ClusResGroup extends Struct {}

class ClusResGroups extends Struct {}

class ClusResource extends Struct {}

class ClusResources extends Struct {}

class ClusResTypes extends Struct {}

class ClusResTypePossibleOwnerNodes extends Struct {}

class ClusPropertyValue extends Struct {}

class ClusPropertyValues extends Struct {}

class ClusPropertyValueData extends Struct {}

class ClusPartition extends Struct {}

class ClusPartitionEx extends Struct {}

class ClusPartitions extends Struct {}

class ClusDisk extends Struct {}

class ClusDisks extends Struct {}

class ClusScsiAddress extends Struct {}

class ClusRegistryKeys extends Struct {}

class ClusCryptoKeys extends Struct {}

class ClusResDependents extends Struct {}
