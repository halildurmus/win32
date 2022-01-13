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
import '../../storage/virtualdiskservice/structs.g.dart';
import '../../specialTypes.dart';
import '../../system/com/IUnknown.dart';
import '../../foundation/structs.g.dart';

/// {@category Struct}
class VDS_ASYNC_OUTPUT extends Struct {
  @Int32()
  external int type;

  external _VDS_ASYNC_OUTPUT__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _VDS_ASYNC_OUTPUT__Anonymous_e__Union extends Union {
  external _VDS_ASYNC_OUTPUT__Anonymous_e__Union__cp cp;

  external _VDS_ASYNC_OUTPUT__Anonymous_e__Union__cv cv;

  external _VDS_ASYNC_OUTPUT__Anonymous_e__Union__bvp bvp;

  external _VDS_ASYNC_OUTPUT__Anonymous_e__Union__sv sv;

  external _VDS_ASYNC_OUTPUT__Anonymous_e__Union__cl cl;

  external _VDS_ASYNC_OUTPUT__Anonymous_e__Union__ct ct;

  external _VDS_ASYNC_OUTPUT__Anonymous_e__Union__cpg cpg;

  external _VDS_ASYNC_OUTPUT__Anonymous_e__Union__cvd cvd;
}

/// {@category Struct}
class _VDS_ASYNC_OUTPUT__Anonymous_e__Union__cp extends Struct {
  @Uint64()
  external int ullOffset;

  external GUID volumeId;
}

extension VDS_ASYNC_OUTPUT__Anonymous_e__Union_Extension on VDS_ASYNC_OUTPUT {
  int get ullOffset => this.Anonymous.cp.ullOffset;
  set ullOffset(int value) => this.Anonymous.cp.ullOffset = value;

  GUID get volumeId => this.Anonymous.cp.volumeId;
  set volumeId(GUID value) => this.Anonymous.cp.volumeId = value;
}

/// {@category Struct}
class _VDS_ASYNC_OUTPUT__Anonymous_e__Union__cv extends Struct {
  external Pointer<COMObject> pVolumeUnk;
}

extension VDS_ASYNC_OUTPUT__Anonymous_e__Union_Extension_1 on VDS_ASYNC_OUTPUT {
  Pointer<COMObject> get pVolumeUnk => this.Anonymous.cv.pVolumeUnk;
  set pVolumeUnk(Pointer<COMObject> value) =>
      this.Anonymous.cv.pVolumeUnk = value;
}

/// {@category Struct}
class _VDS_ASYNC_OUTPUT__Anonymous_e__Union__bvp extends Struct {
  external Pointer<COMObject> pVolumeUnk;
}

extension VDS_ASYNC_OUTPUT__Anonymous_e__Union_Extension_2 on VDS_ASYNC_OUTPUT {
  Pointer<COMObject> get pVolumeUnk => this.Anonymous.bvp.pVolumeUnk;
  set pVolumeUnk(Pointer<COMObject> value) =>
      this.Anonymous.bvp.pVolumeUnk = value;
}

/// {@category Struct}
class _VDS_ASYNC_OUTPUT__Anonymous_e__Union__sv extends Struct {
  @Uint64()
  external int ullReclaimedBytes;
}

extension VDS_ASYNC_OUTPUT__Anonymous_e__Union_Extension_3 on VDS_ASYNC_OUTPUT {
  int get ullReclaimedBytes => this.Anonymous.sv.ullReclaimedBytes;
  set ullReclaimedBytes(int value) =>
      this.Anonymous.sv.ullReclaimedBytes = value;
}

/// {@category Struct}
class _VDS_ASYNC_OUTPUT__Anonymous_e__Union__cl extends Struct {
  external Pointer<COMObject> pLunUnk;
}

extension VDS_ASYNC_OUTPUT__Anonymous_e__Union_Extension_4 on VDS_ASYNC_OUTPUT {
  Pointer<COMObject> get pLunUnk => this.Anonymous.cl.pLunUnk;
  set pLunUnk(Pointer<COMObject> value) => this.Anonymous.cl.pLunUnk = value;
}

/// {@category Struct}
class _VDS_ASYNC_OUTPUT__Anonymous_e__Union__ct extends Struct {
  external Pointer<COMObject> pTargetUnk;
}

extension VDS_ASYNC_OUTPUT__Anonymous_e__Union_Extension_5 on VDS_ASYNC_OUTPUT {
  Pointer<COMObject> get pTargetUnk => this.Anonymous.ct.pTargetUnk;
  set pTargetUnk(Pointer<COMObject> value) =>
      this.Anonymous.ct.pTargetUnk = value;
}

/// {@category Struct}
class _VDS_ASYNC_OUTPUT__Anonymous_e__Union__cpg extends Struct {
  external Pointer<COMObject> pPortalGroupUnk;
}

extension VDS_ASYNC_OUTPUT__Anonymous_e__Union_Extension_6 on VDS_ASYNC_OUTPUT {
  Pointer<COMObject> get pPortalGroupUnk => this.Anonymous.cpg.pPortalGroupUnk;
  set pPortalGroupUnk(Pointer<COMObject> value) =>
      this.Anonymous.cpg.pPortalGroupUnk = value;
}

/// {@category Struct}
class _VDS_ASYNC_OUTPUT__Anonymous_e__Union__cvd extends Struct {
  external Pointer<COMObject> pVDiskUnk;
}

extension VDS_ASYNC_OUTPUT__Anonymous_e__Union_Extension_7 on VDS_ASYNC_OUTPUT {
  Pointer<COMObject> get pVDiskUnk => this.Anonymous.cvd.pVDiskUnk;
  set pVDiskUnk(Pointer<COMObject> value) =>
      this.Anonymous.cvd.pVDiskUnk = value;
}

extension VDS_ASYNC_OUTPUT_Extension on VDS_ASYNC_OUTPUT {
  _VDS_ASYNC_OUTPUT__Anonymous_e__Union__cp get cp => this.Anonymous.cp;
  set cp(_VDS_ASYNC_OUTPUT__Anonymous_e__Union__cp value) =>
      this.Anonymous.cp = value;

  _VDS_ASYNC_OUTPUT__Anonymous_e__Union__cv get cv => this.Anonymous.cv;
  set cv(_VDS_ASYNC_OUTPUT__Anonymous_e__Union__cv value) =>
      this.Anonymous.cv = value;

  _VDS_ASYNC_OUTPUT__Anonymous_e__Union__bvp get bvp => this.Anonymous.bvp;
  set bvp(_VDS_ASYNC_OUTPUT__Anonymous_e__Union__bvp value) =>
      this.Anonymous.bvp = value;

  _VDS_ASYNC_OUTPUT__Anonymous_e__Union__sv get sv => this.Anonymous.sv;
  set sv(_VDS_ASYNC_OUTPUT__Anonymous_e__Union__sv value) =>
      this.Anonymous.sv = value;

  _VDS_ASYNC_OUTPUT__Anonymous_e__Union__cl get cl => this.Anonymous.cl;
  set cl(_VDS_ASYNC_OUTPUT__Anonymous_e__Union__cl value) =>
      this.Anonymous.cl = value;

  _VDS_ASYNC_OUTPUT__Anonymous_e__Union__ct get ct => this.Anonymous.ct;
  set ct(_VDS_ASYNC_OUTPUT__Anonymous_e__Union__ct value) =>
      this.Anonymous.ct = value;

  _VDS_ASYNC_OUTPUT__Anonymous_e__Union__cpg get cpg => this.Anonymous.cpg;
  set cpg(_VDS_ASYNC_OUTPUT__Anonymous_e__Union__cpg value) =>
      this.Anonymous.cpg = value;

  _VDS_ASYNC_OUTPUT__Anonymous_e__Union__cvd get cvd => this.Anonymous.cvd;
  set cvd(_VDS_ASYNC_OUTPUT__Anonymous_e__Union__cvd value) =>
      this.Anonymous.cvd = value;
}

/// {@category Struct}
class VDS_CONTROLLER_NOTIFICATION extends Struct {
  @Uint32()
  external int ulEvent;

  external GUID controllerId;
}

/// {@category Struct}
class VDS_CONTROLLER_PROP extends Struct {
  external GUID id;

  external Pointer<Utf16> pwszFriendlyName;

  external Pointer<Utf16> pwszIdentification;

  @Int32()
  external int status;

  @Int32()
  external int health;

  @Int16()
  external int sNumberOfPorts;
}

/// {@category Struct}
class VDS_DISK_NOTIFICATION extends Struct {
  @Uint32()
  external int ulEvent;

  external GUID diskId;
}

/// {@category Struct}
class VDS_DRIVE_EXTENT extends Struct {
  external GUID id;

  external GUID LunId;

  @Uint64()
  external int ullSize;

  @Int32()
  external int bUsed;
}

/// {@category Struct}
class VDS_DRIVE_LETTER_NOTIFICATION extends Struct {
  @Uint32()
  external int ulEvent;

  @Uint16()
  external int wcLetter;

  external GUID volumeId;
}

/// {@category Struct}
class VDS_DRIVE_NOTIFICATION extends Struct {
  @Uint32()
  external int ulEvent;

  external GUID driveId;
}

/// {@category Struct}
class VDS_DRIVE_PROP extends Struct {
  external GUID id;

  @Uint64()
  external int ullSize;

  external Pointer<Utf16> pwszFriendlyName;

  external Pointer<Utf16> pwszIdentification;

  @Uint32()
  external int ulFlags;

  @Int32()
  external int status;

  @Int32()
  external int health;

  @Int16()
  external int sInternalBusNumber;

  @Int16()
  external int sSlotNumber;
}

/// {@category Struct}
class VDS_DRIVE_PROP2 extends Struct {
  external GUID id;

  @Uint64()
  external int ullSize;

  external Pointer<Utf16> pwszFriendlyName;

  external Pointer<Utf16> pwszIdentification;

  @Uint32()
  external int ulFlags;

  @Int32()
  external int status;

  @Int32()
  external int health;

  @Int16()
  external int sInternalBusNumber;

  @Int16()
  external int sSlotNumber;

  @Uint32()
  external int ulEnclosureNumber;

  @Int32()
  external int busType;

  @Uint32()
  external int ulSpindleSpeed;
}

/// {@category Struct}
class VDS_FILE_SYSTEM_NOTIFICATION extends Struct {
  @Uint32()
  external int ulEvent;

  external GUID volumeId;

  @Uint32()
  external int dwPercentCompleted;
}

/// {@category Struct}
class VDS_HBAPORT_PROP extends Struct {
  external GUID id;

  external VDS_WWN wwnNode;

  external VDS_WWN wwnPort;

  @Int32()
  external int type;

  @Int32()
  external int status;

  @Uint32()
  external int ulPortSpeed;

  @Uint32()
  external int ulSupportedPortSpeed;
}

/// {@category Struct}
class VDS_HINTS extends Struct {
  @Uint64()
  external int ullHintMask;

  @Uint64()
  external int ullExpectedMaximumSize;

  @Uint32()
  external int ulOptimalReadSize;

  @Uint32()
  external int ulOptimalReadAlignment;

  @Uint32()
  external int ulOptimalWriteSize;

  @Uint32()
  external int ulOptimalWriteAlignment;

  @Uint32()
  external int ulMaximumDriveCount;

  @Uint32()
  external int ulStripeSize;

  @Int32()
  external int bFastCrashRecoveryRequired;

  @Int32()
  external int bMostlyReads;

  @Int32()
  external int bOptimizeForSequentialReads;

  @Int32()
  external int bOptimizeForSequentialWrites;

  @Int32()
  external int bRemapEnabled;

  @Int32()
  external int bReadBackVerifyEnabled;

  @Int32()
  external int bWriteThroughCachingEnabled;

  @Int32()
  external int bHardwareChecksumEnabled;

  @Int32()
  external int bIsYankable;

  @Int16()
  external int sRebuildPriority;
}

/// {@category Struct}
class VDS_HINTS2 extends Struct {
  @Uint64()
  external int ullHintMask;

  @Uint64()
  external int ullExpectedMaximumSize;

  @Uint32()
  external int ulOptimalReadSize;

  @Uint32()
  external int ulOptimalReadAlignment;

  @Uint32()
  external int ulOptimalWriteSize;

  @Uint32()
  external int ulOptimalWriteAlignment;

  @Uint32()
  external int ulMaximumDriveCount;

  @Uint32()
  external int ulStripeSize;

  @Uint32()
  external int ulReserved1;

  @Uint32()
  external int ulReserved2;

  @Uint32()
  external int ulReserved3;

  @Int32()
  external int bFastCrashRecoveryRequired;

  @Int32()
  external int bMostlyReads;

  @Int32()
  external int bOptimizeForSequentialReads;

  @Int32()
  external int bOptimizeForSequentialWrites;

  @Int32()
  external int bRemapEnabled;

  @Int32()
  external int bReadBackVerifyEnabled;

  @Int32()
  external int bWriteThroughCachingEnabled;

  @Int32()
  external int bHardwareChecksumEnabled;

  @Int32()
  external int bIsYankable;

  @Int32()
  external int bAllocateHotSpare;

  @Int32()
  external int bUseMirroredCache;

  @Int32()
  external int bReadCachingEnabled;

  @Int32()
  external int bWriteCachingEnabled;

  @Int32()
  external int bMediaScanEnabled;

  @Int32()
  external int bConsistencyCheckEnabled;

  @Int32()
  external int BusType;

  @Int32()
  external int bReserved1;

  @Int32()
  external int bReserved2;

  @Int32()
  external int bReserved3;

  @Int16()
  external int sRebuildPriority;
}

/// {@category Struct}
class VDS_INTERCONNECT extends Struct {
  @Int32()
  external int m_addressType;

  @Uint32()
  external int m_cbPort;

  external Pointer<Uint8> m_pbPort;

  @Uint32()
  external int m_cbAddress;

  external Pointer<Uint8> m_pbAddress;
}

/// {@category Struct}
class VDS_IPADDRESS extends Struct {
  @Int32()
  external int type;

  @Uint32()
  external int ipv4Address;

  @Array(16)
  external Array<Uint8> ipv6Address;

  @Uint32()
  external int ulIpv6FlowInfo;

  @Uint32()
  external int ulIpv6ScopeId;

  @Array(257)
  external Array<Uint16> _wszTextAddress;

  String get wszTextAddress {
    final charCodes = <int>[];
    for (var i = 0; i < 257; i++) {
      charCodes.add(_wszTextAddress[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wszTextAddress(String value) {
    final stringToStore = value.padRight(257, '\x00');
    for (var i = 0; i < 257; i++) {
      _wszTextAddress[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int ulPort;
}

/// {@category Struct}
class VDS_ISCSI_INITIATOR_ADAPTER_PROP extends Struct {
  external GUID id;

  external Pointer<Utf16> pwszName;
}

/// {@category Struct}
class VDS_ISCSI_INITIATOR_PORTAL_PROP extends Struct {
  external GUID id;

  external VDS_IPADDRESS address;

  @Uint32()
  external int ulPortIndex;
}

/// {@category Struct}
class VDS_ISCSI_IPSEC_KEY extends Struct {
  external Pointer<Uint8> pKey;

  @Uint32()
  external int ulKeySize;
}

/// {@category Struct}
class VDS_ISCSI_PORTALGROUP_PROP extends Struct {
  external GUID id;

  @Uint16()
  external int tag;
}

/// {@category Struct}
class VDS_ISCSI_PORTAL_PROP extends Struct {
  external GUID id;

  external VDS_IPADDRESS address;

  @Int32()
  external int status;
}

/// {@category Struct}
class VDS_ISCSI_SHARED_SECRET extends Struct {
  external Pointer<Uint8> pSharedSecret;

  @Uint32()
  external int ulSharedSecretSize;
}

/// {@category Struct}
class VDS_ISCSI_TARGET_PROP extends Struct {
  external GUID id;

  external Pointer<Utf16> pwszIscsiName;

  external Pointer<Utf16> pwszFriendlyName;

  @Int32()
  external int bChapEnabled;
}

/// {@category Struct}
class VDS_LUN_INFORMATION extends Struct {
  @Uint32()
  external int m_version;

  @Uint8()
  external int m_DeviceType;

  @Uint8()
  external int m_DeviceTypeModifier;

  @Int32()
  external int m_bCommandQueueing;

  @Int32()
  external int m_BusType;

  external Pointer<Uint8> m_szVendorId;

  external Pointer<Uint8> m_szProductId;

  external Pointer<Uint8> m_szProductRevision;

  external Pointer<Uint8> m_szSerialNumber;

  external GUID m_diskSignature;

  external VDS_STORAGE_DEVICE_ID_DESCRIPTOR m_deviceIdDescriptor;

  @Uint32()
  external int m_cInterconnects;

  external Pointer<VDS_INTERCONNECT> m_rgInterconnects;
}

/// {@category Struct}
class VDS_LUN_NOTIFICATION extends Struct {
  @Uint32()
  external int ulEvent;

  external GUID LunId;
}

/// {@category Struct}
class VDS_LUN_PLEX_PROP extends Struct {
  external GUID id;

  @Uint64()
  external int ullSize;

  @Int32()
  external int type;

  @Int32()
  external int status;

  @Int32()
  external int health;

  @Int32()
  external int TransitionState;

  @Uint32()
  external int ulFlags;

  @Uint32()
  external int ulStripeSize;

  @Int16()
  external int sRebuildPriority;
}

/// {@category Struct}
class VDS_LUN_PROP extends Struct {
  external GUID id;

  @Uint64()
  external int ullSize;

  external Pointer<Utf16> pwszFriendlyName;

  external Pointer<Utf16> pwszIdentification;

  external Pointer<Utf16> pwszUnmaskingList;

  @Uint32()
  external int ulFlags;

  @Int32()
  external int type;

  @Int32()
  external int status;

  @Int32()
  external int health;

  @Int32()
  external int TransitionState;

  @Int16()
  external int sRebuildPriority;
}

/// {@category Struct}
class VDS_MOUNT_POINT_NOTIFICATION extends Struct {
  @Uint32()
  external int ulEvent;

  external GUID volumeId;
}

/// {@category Struct}
class VDS_NOTIFICATION extends Struct {
  @Int32()
  external int objectType;

  external _VDS_NOTIFICATION__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _VDS_NOTIFICATION__Anonymous_e__Union extends Union {
  external VDS_PACK_NOTIFICATION Pack;

  external VDS_DISK_NOTIFICATION Disk;

  external VDS_VOLUME_NOTIFICATION Volume;

  external VDS_PARTITION_NOTIFICATION Partition;

  external VDS_DRIVE_LETTER_NOTIFICATION Letter;

  external VDS_FILE_SYSTEM_NOTIFICATION FileSystem;

  external VDS_MOUNT_POINT_NOTIFICATION MountPoint;

  external VDS_SUB_SYSTEM_NOTIFICATION SubSystem;

  external VDS_CONTROLLER_NOTIFICATION Controller;

  external VDS_DRIVE_NOTIFICATION Drive;

  external VDS_LUN_NOTIFICATION Lun;

  external VDS_PORT_NOTIFICATION Port;

  external VDS_PORTAL_NOTIFICATION Portal;

  external VDS_TARGET_NOTIFICATION Target;

  external VDS_PORTAL_GROUP_NOTIFICATION PortalGroup;

  external VDS_SERVICE_NOTIFICATION Service;
}

extension VDS_NOTIFICATION_Extension on VDS_NOTIFICATION {
  VDS_PACK_NOTIFICATION get Pack => this.Anonymous.Pack;
  set Pack(VDS_PACK_NOTIFICATION value) => this.Anonymous.Pack = value;

  VDS_DISK_NOTIFICATION get Disk => this.Anonymous.Disk;
  set Disk(VDS_DISK_NOTIFICATION value) => this.Anonymous.Disk = value;

  VDS_VOLUME_NOTIFICATION get Volume => this.Anonymous.Volume;
  set Volume(VDS_VOLUME_NOTIFICATION value) => this.Anonymous.Volume = value;

  VDS_PARTITION_NOTIFICATION get Partition => this.Anonymous.Partition;
  set Partition(VDS_PARTITION_NOTIFICATION value) =>
      this.Anonymous.Partition = value;

  VDS_DRIVE_LETTER_NOTIFICATION get Letter => this.Anonymous.Letter;
  set Letter(VDS_DRIVE_LETTER_NOTIFICATION value) =>
      this.Anonymous.Letter = value;

  VDS_FILE_SYSTEM_NOTIFICATION get FileSystem => this.Anonymous.FileSystem;
  set FileSystem(VDS_FILE_SYSTEM_NOTIFICATION value) =>
      this.Anonymous.FileSystem = value;

  VDS_MOUNT_POINT_NOTIFICATION get MountPoint => this.Anonymous.MountPoint;
  set MountPoint(VDS_MOUNT_POINT_NOTIFICATION value) =>
      this.Anonymous.MountPoint = value;

  VDS_SUB_SYSTEM_NOTIFICATION get SubSystem => this.Anonymous.SubSystem;
  set SubSystem(VDS_SUB_SYSTEM_NOTIFICATION value) =>
      this.Anonymous.SubSystem = value;

  VDS_CONTROLLER_NOTIFICATION get Controller => this.Anonymous.Controller;
  set Controller(VDS_CONTROLLER_NOTIFICATION value) =>
      this.Anonymous.Controller = value;

  VDS_DRIVE_NOTIFICATION get Drive => this.Anonymous.Drive;
  set Drive(VDS_DRIVE_NOTIFICATION value) => this.Anonymous.Drive = value;

  VDS_LUN_NOTIFICATION get Lun => this.Anonymous.Lun;
  set Lun(VDS_LUN_NOTIFICATION value) => this.Anonymous.Lun = value;

  VDS_PORT_NOTIFICATION get Port => this.Anonymous.Port;
  set Port(VDS_PORT_NOTIFICATION value) => this.Anonymous.Port = value;

  VDS_PORTAL_NOTIFICATION get Portal => this.Anonymous.Portal;
  set Portal(VDS_PORTAL_NOTIFICATION value) => this.Anonymous.Portal = value;

  VDS_TARGET_NOTIFICATION get Target => this.Anonymous.Target;
  set Target(VDS_TARGET_NOTIFICATION value) => this.Anonymous.Target = value;

  VDS_PORTAL_GROUP_NOTIFICATION get PortalGroup => this.Anonymous.PortalGroup;
  set PortalGroup(VDS_PORTAL_GROUP_NOTIFICATION value) =>
      this.Anonymous.PortalGroup = value;

  VDS_SERVICE_NOTIFICATION get Service => this.Anonymous.Service;
  set Service(VDS_SERVICE_NOTIFICATION value) => this.Anonymous.Service = value;
}

/// {@category Struct}
class VDS_PACK_NOTIFICATION extends Struct {
  @Uint32()
  external int ulEvent;

  external GUID packId;
}

/// {@category Struct}
class VDS_PARTITION_NOTIFICATION extends Struct {
  @Uint32()
  external int ulEvent;

  external GUID diskId;

  @Uint64()
  external int ullOffset;
}

/// {@category Struct}
class VDS_PATH_ID extends Struct {
  @Uint64()
  external int ullSourceId;

  @Uint64()
  external int ullPathId;
}

/// {@category Struct}
class VDS_PATH_INFO extends Struct {
  external VDS_PATH_ID pathId;

  @Int32()
  external int type;

  @Int32()
  external int status;

  external _VDS_PATH_INFO__Anonymous1_e__Union Anonymous1;

  external _VDS_PATH_INFO__Anonymous2_e__Union Anonymous2;

  external _VDS_PATH_INFO__Anonymous3_e__Union Anonymous3;
}

/// {@category Struct}
class _VDS_PATH_INFO__Anonymous1_e__Union extends Union {
  external GUID controllerPortId;

  external GUID targetPortalId;
}

extension VDS_PATH_INFO_Extension on VDS_PATH_INFO {
  GUID get controllerPortId => this.Anonymous1.controllerPortId;
  set controllerPortId(GUID value) => this.Anonymous1.controllerPortId = value;

  GUID get targetPortalId => this.Anonymous1.targetPortalId;
  set targetPortalId(GUID value) => this.Anonymous1.targetPortalId = value;
}

/// {@category Struct}
class _VDS_PATH_INFO__Anonymous2_e__Union extends Union {
  external GUID hbaPortId;

  external GUID initiatorAdapterId;
}

extension VDS_PATH_INFO_Extension_1 on VDS_PATH_INFO {
  GUID get hbaPortId => this.Anonymous2.hbaPortId;
  set hbaPortId(GUID value) => this.Anonymous2.hbaPortId = value;

  GUID get initiatorAdapterId => this.Anonymous2.initiatorAdapterId;
  set initiatorAdapterId(GUID value) =>
      this.Anonymous2.initiatorAdapterId = value;
}

/// {@category Struct}
class _VDS_PATH_INFO__Anonymous3_e__Union extends Union {
  external Pointer<VDS_HBAPORT_PROP> pHbaPortProp;

  external Pointer<VDS_IPADDRESS> pInitiatorPortalIpAddr;
}

extension VDS_PATH_INFO_Extension_2 on VDS_PATH_INFO {
  Pointer<VDS_HBAPORT_PROP> get pHbaPortProp => this.Anonymous3.pHbaPortProp;
  set pHbaPortProp(Pointer<VDS_HBAPORT_PROP> value) =>
      this.Anonymous3.pHbaPortProp = value;

  Pointer<VDS_IPADDRESS> get pInitiatorPortalIpAddr =>
      this.Anonymous3.pInitiatorPortalIpAddr;
  set pInitiatorPortalIpAddr(Pointer<VDS_IPADDRESS> value) =>
      this.Anonymous3.pInitiatorPortalIpAddr = value;
}

/// {@category Struct}
class VDS_PATH_POLICY extends Struct {
  external VDS_PATH_ID pathId;

  @Int32()
  external int bPrimaryPath;

  @Uint32()
  external int ulWeight;
}

/// {@category Struct}
class VDS_POOL_ATTRIBUTES extends Struct {
  @Uint64()
  external int ullAttributeMask;

  @Int32()
  external int raidType;

  @Int32()
  external int busType;

  external Pointer<Utf16> pwszIntendedUsage;

  @Int32()
  external int bSpinDown;

  @Int32()
  external int bIsThinProvisioned;

  @Uint64()
  external int ullProvisionedSpace;

  @Int32()
  external int bNoSinglePointOfFailure;

  @Uint32()
  external int ulDataRedundancyMax;

  @Uint32()
  external int ulDataRedundancyMin;

  @Uint32()
  external int ulDataRedundancyDefault;

  @Uint32()
  external int ulPackageRedundancyMax;

  @Uint32()
  external int ulPackageRedundancyMin;

  @Uint32()
  external int ulPackageRedundancyDefault;

  @Uint32()
  external int ulStripeSize;

  @Uint32()
  external int ulStripeSizeMax;

  @Uint32()
  external int ulStripeSizeMin;

  @Uint32()
  external int ulDefaultStripeSize;

  @Uint32()
  external int ulNumberOfColumns;

  @Uint32()
  external int ulNumberOfColumnsMax;

  @Uint32()
  external int ulNumberOfColumnsMin;

  @Uint32()
  external int ulDefaultNumberofColumns;

  @Uint32()
  external int ulDataAvailabilityHint;

  @Uint32()
  external int ulAccessRandomnessHint;

  @Uint32()
  external int ulAccessDirectionHint;

  @Uint32()
  external int ulAccessSizeHint;

  @Uint32()
  external int ulAccessLatencyHint;

  @Uint32()
  external int ulAccessBandwidthWeightHint;

  @Uint32()
  external int ulStorageCostHint;

  @Uint32()
  external int ulStorageEfficiencyHint;

  @Uint32()
  external int ulNumOfCustomAttributes;

  external Pointer<VDS_POOL_CUSTOM_ATTRIBUTES> pPoolCustomAttributes;

  @Int32()
  external int bReserved1;

  @Int32()
  external int bReserved2;

  @Uint32()
  external int ulReserved1;

  @Uint32()
  external int ulReserved2;

  @Uint64()
  external int ullReserved1;

  @Uint64()
  external int ullReserved2;
}

/// {@category Struct}
class VDS_POOL_CUSTOM_ATTRIBUTES extends Struct {
  external Pointer<Utf16> pwszName;

  external Pointer<Utf16> pwszValue;
}

/// {@category Struct}
class VDS_PORTAL_GROUP_NOTIFICATION extends Struct {
  @Uint32()
  external int ulEvent;

  external GUID portalGroupId;
}

/// {@category Struct}
class VDS_PORTAL_NOTIFICATION extends Struct {
  @Uint32()
  external int ulEvent;

  external GUID portalId;
}

/// {@category Struct}
class VDS_PORT_NOTIFICATION extends Struct {
  @Uint32()
  external int ulEvent;

  external GUID portId;
}

/// {@category Struct}
class VDS_PORT_PROP extends Struct {
  external GUID id;

  external Pointer<Utf16> pwszFriendlyName;

  external Pointer<Utf16> pwszIdentification;

  @Int32()
  external int status;
}

/// {@category Struct}
class VDS_PROVIDER_PROP extends Struct {
  external GUID id;

  external Pointer<Utf16> pwszName;

  external GUID guidVersionId;

  external Pointer<Utf16> pwszVersion;

  @Int32()
  external int type;

  @Uint32()
  external int ulFlags;

  @Uint32()
  external int ulStripeSizeFlags;

  @Int16()
  external int sRebuildPriority;
}

/// {@category Struct}
class VDS_SERVICE_NOTIFICATION extends Struct {
  @Uint32()
  external int ulEvent;

  @Int32()
  external int action;
}

/// {@category Struct}
class VDS_STORAGE_DEVICE_ID_DESCRIPTOR extends Struct {
  @Uint32()
  external int m_version;

  @Uint32()
  external int m_cIdentifiers;

  external Pointer<VDS_STORAGE_IDENTIFIER> m_rgIdentifiers;
}

/// {@category Struct}
class VDS_STORAGE_IDENTIFIER extends Struct {
  @Int32()
  external int m_CodeSet;

  @Int32()
  external int m_Type;

  @Uint32()
  external int m_cbIdentifier;

  external Pointer<Uint8> m_rgbIdentifier;
}

/// {@category Struct}
class VDS_STORAGE_POOL_DRIVE_EXTENT extends Struct {
  external GUID id;

  @Uint64()
  external int ullSize;

  @Int32()
  external int bUsed;
}

/// {@category Struct}
class VDS_STORAGE_POOL_PROP extends Struct {
  external GUID id;

  @Int32()
  external int status;

  @Int32()
  external int health;

  @Int32()
  external int type;

  external Pointer<Utf16> pwszName;

  external Pointer<Utf16> pwszDescription;

  @Uint64()
  external int ullTotalConsumedSpace;

  @Uint64()
  external int ullTotalManagedSpace;

  @Uint64()
  external int ullRemainingFreeSpace;
}

/// {@category Struct}
class VDS_SUB_SYSTEM_NOTIFICATION extends Struct {
  @Uint32()
  external int ulEvent;

  external GUID subSystemId;
}

/// {@category Struct}
class VDS_SUB_SYSTEM_PROP extends Struct {
  external GUID id;

  external Pointer<Utf16> pwszFriendlyName;

  external Pointer<Utf16> pwszIdentification;

  @Uint32()
  external int ulFlags;

  @Uint32()
  external int ulStripeSizeFlags;

  @Int32()
  external int status;

  @Int32()
  external int health;

  @Int16()
  external int sNumberOfInternalBuses;

  @Int16()
  external int sMaxNumberOfSlotsEachBus;

  @Int16()
  external int sMaxNumberOfControllers;

  @Int16()
  external int sRebuildPriority;
}

/// {@category Struct}
class VDS_SUB_SYSTEM_PROP2 extends Struct {
  external GUID id;

  external Pointer<Utf16> pwszFriendlyName;

  external Pointer<Utf16> pwszIdentification;

  @Uint32()
  external int ulFlags;

  @Uint32()
  external int ulStripeSizeFlags;

  @Uint32()
  external int ulSupportedRaidTypeFlags;

  @Int32()
  external int status;

  @Int32()
  external int health;

  @Int16()
  external int sNumberOfInternalBuses;

  @Int16()
  external int sMaxNumberOfSlotsEachBus;

  @Int16()
  external int sMaxNumberOfControllers;

  @Int16()
  external int sRebuildPriority;

  @Uint32()
  external int ulNumberOfEnclosures;
}

/// {@category Struct}
class VDS_TARGET_NOTIFICATION extends Struct {
  @Uint32()
  external int ulEvent;

  external GUID targetId;
}

/// {@category Struct}
class VDS_VOLUME_NOTIFICATION extends Struct {
  @Uint32()
  external int ulEvent;

  external GUID volumeId;

  external GUID plexId;

  @Uint32()
  external int ulPercentCompleted;
}

/// {@category Struct}
class VDS_WWN extends Struct {
  @Array(8)
  external Array<Uint8> rguchWwn;
}
