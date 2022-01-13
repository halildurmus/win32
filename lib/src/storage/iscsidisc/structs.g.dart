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
import '../../storage/iscsidisc/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../storage/iscsidisc/callbacks.g.dart';
import '../../system/ioctl/structs.g.dart';

/// {@category Struct}
class ATA_PASS_THROUGH_DIRECT extends Struct {
  @Uint16()
  external int Length;

  @Uint16()
  external int AtaFlags;

  @Uint8()
  external int PathId;

  @Uint8()
  external int TargetId;

  @Uint8()
  external int Lun;

  @Uint8()
  external int ReservedAsUchar;

  @Uint32()
  external int DataTransferLength;

  @Uint32()
  external int TimeOutValue;

  @Uint32()
  external int ReservedAsUlong;

  external Pointer DataBuffer;

  @Array(8)
  external Array<Uint8> PreviousTaskFile;

  @Array(8)
  external Array<Uint8> CurrentTaskFile;
}

/// {@category Struct}
class ATA_PASS_THROUGH_DIRECT32 extends Struct {
  @Uint16()
  external int Length;

  @Uint16()
  external int AtaFlags;

  @Uint8()
  external int PathId;

  @Uint8()
  external int TargetId;

  @Uint8()
  external int Lun;

  @Uint8()
  external int ReservedAsUchar;

  @Uint32()
  external int DataTransferLength;

  @Uint32()
  external int TimeOutValue;

  @Uint32()
  external int ReservedAsUlong;

  external Pointer DataBuffer;

  @Array(8)
  external Array<Uint8> PreviousTaskFile;

  @Array(8)
  external Array<Uint8> CurrentTaskFile;
}

/// {@category Struct}
class ATA_PASS_THROUGH_EX extends Struct {
  @Uint16()
  external int Length;

  @Uint16()
  external int AtaFlags;

  @Uint8()
  external int PathId;

  @Uint8()
  external int TargetId;

  @Uint8()
  external int Lun;

  @Uint8()
  external int ReservedAsUchar;

  @Uint32()
  external int DataTransferLength;

  @Uint32()
  external int TimeOutValue;

  @Uint32()
  external int ReservedAsUlong;

  @IntPtr()
  external int DataBufferOffset;

  @Array(8)
  external Array<Uint8> PreviousTaskFile;

  @Array(8)
  external Array<Uint8> CurrentTaskFile;
}

/// {@category Struct}
class ATA_PASS_THROUGH_EX32 extends Struct {
  @Uint16()
  external int Length;

  @Uint16()
  external int AtaFlags;

  @Uint8()
  external int PathId;

  @Uint8()
  external int TargetId;

  @Uint8()
  external int Lun;

  @Uint8()
  external int ReservedAsUchar;

  @Uint32()
  external int DataTransferLength;

  @Uint32()
  external int TimeOutValue;

  @Uint32()
  external int ReservedAsUlong;

  @Uint32()
  external int DataBufferOffset;

  @Array(8)
  external Array<Uint8> PreviousTaskFile;

  @Array(8)
  external Array<Uint8> CurrentTaskFile;
}

/// {@category Struct}
class DSM_NOTIFICATION_REQUEST_BLOCK extends Struct {
  @Uint32()
  external int Size;

  @Uint32()
  external int Version;

  @Uint32()
  external int NotifyFlags;

  @Uint32()
  external int DataSetProfile;

  @Array(3)
  external Array<Uint32> Reserved;

  @Uint32()
  external int DataSetRangesCount;

  @Array(1)
  external Array<MP_DEVICE_DATA_SET_RANGE> DataSetRanges;
}

/// {@category Struct}
class DUMP_DRIVER extends Struct {
  external Pointer DumpDriverList;

  @Array(15)
  external Array<Uint16> _DriverName;

  String get DriverName {
    final charCodes = <int>[];
    for (var i = 0; i < 15; i++) {
      charCodes.add(_DriverName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set DriverName(String value) {
    final stringToStore = value.padRight(15, '\x00');
    for (var i = 0; i < 15; i++) {
      _DriverName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(15)
  external Array<Uint16> _BaseName;

  String get BaseName {
    final charCodes = <int>[];
    for (var i = 0; i < 15; i++) {
      charCodes.add(_BaseName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set BaseName(String value) {
    final stringToStore = value.padRight(15, '\x00');
    for (var i = 0; i < 15; i++) {
      _BaseName[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class DUMP_DRIVER_EX extends Struct {
  external Pointer DumpDriverList;

  @Array(15)
  external Array<Uint16> _DriverName;

  String get DriverName {
    final charCodes = <int>[];
    for (var i = 0; i < 15; i++) {
      charCodes.add(_DriverName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set DriverName(String value) {
    final stringToStore = value.padRight(15, '\x00');
    for (var i = 0; i < 15; i++) {
      _DriverName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(15)
  external Array<Uint16> _BaseName;

  String get BaseName {
    final charCodes = <int>[];
    for (var i = 0; i < 15; i++) {
      charCodes.add(_BaseName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set BaseName(String value) {
    final stringToStore = value.padRight(15, '\x00');
    for (var i = 0; i < 15; i++) {
      _BaseName[i] = stringToStore.codeUnitAt(i);
    }
  }

  external NTSCSI_UNICODE_STRING DriverFullPath;
}

/// {@category Struct}
class DUMP_POINTERS extends Struct {
  external Pointer<ADAPTER_OBJECT> AdapterObject;

  external Pointer MappedRegisterBase;

  external Pointer DumpData;

  external Pointer CommonBufferVa;

  @Int64()
  external int CommonBufferPa;

  @Uint32()
  external int CommonBufferSize;

  @Uint8()
  external int AllocateCommonBuffers;

  @Uint8()
  external int UseDiskDump;

  @Array(2)
  external Array<Uint8> Spare1;

  external Pointer DeviceObject;
}

/// {@category Struct}
class DUMP_POINTERS_EX extends Struct {
  external DUMP_POINTERS_VERSION Header;

  external Pointer DumpData;

  external Pointer CommonBufferVa;

  @Uint32()
  external int CommonBufferSize;

  @Uint8()
  external int AllocateCommonBuffers;

  external Pointer DeviceObject;

  external Pointer DriverList;

  @Uint32()
  external int dwPortFlags;

  @Uint32()
  external int MaxDeviceDumpSectionSize;

  @Uint32()
  external int MaxDeviceDumpLevel;

  @Uint32()
  external int MaxTransferSize;

  external Pointer AdapterObject;

  external Pointer MappedRegisterBase;

  external Pointer<Uint8> DeviceReady;

  external Pointer<NativeFunction<PDUMP_DEVICE_POWERON_ROUTINE>>
      DumpDevicePowerOn;

  external Pointer DumpDevicePowerOnContext;
}

/// {@category Struct}
class DUMP_POINTERS_VERSION extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;
}

/// {@category Struct}
class FIRMWARE_REQUEST_BLOCK extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  @Uint32()
  external int Function;

  @Uint32()
  external int Flags;

  @Uint32()
  external int DataBufferOffset;

  @Uint32()
  external int DataBufferLength;
}

/// {@category Struct}
class HYBRID_DEMOTE_BY_SIZE extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  @Uint8()
  external int SourcePriority;

  @Uint8()
  external int TargetPriority;

  @Uint16()
  external int Reserved0;

  @Uint32()
  external int Reserved1;

  @Uint64()
  external int LbaCount;
}

/// {@category Struct}
class HYBRID_DIRTY_THRESHOLDS extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  @Uint32()
  external int DirtyLowThreshold;

  @Uint32()
  external int DirtyHighThreshold;
}

/// {@category Struct}
class HYBRID_INFORMATION extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  @Uint8()
  external int HybridSupported;

  @Int32()
  external int Status;

  @Int32()
  external int CacheTypeEffective;

  @Int32()
  external int CacheTypeDefault;

  @Uint32()
  external int FractionBase;

  @Uint64()
  external int CacheSize;

  external _HYBRID_INFORMATION__Attributes_e__Struct Attributes;

  external _HYBRID_INFORMATION__Priorities_e__Struct Priorities;
}

/// {@category Struct}
class _HYBRID_INFORMATION__Attributes_e__Struct extends Struct {
  @Uint32()
  external int bitfield;
}

extension HYBRID_INFORMATION_Extension on HYBRID_INFORMATION {
  int get bitfield => this.Attributes.bitfield;
  set bitfield(int value) => this.Attributes.bitfield = value;
}

/// {@category Struct}
class _HYBRID_INFORMATION__Priorities_e__Struct extends Struct {
  @Uint8()
  external int PriorityLevelCount;

  @Uint8()
  external int MaxPriorityBehavior;

  @Uint8()
  external int OptimalWriteGranularity;

  @Uint8()
  external int Reserved;

  @Uint32()
  external int DirtyThresholdLow;

  @Uint32()
  external int DirtyThresholdHigh;

  external _HYBRID_INFORMATION__Priorities_e__Struct__SupportedCommands_e__Struct
      SupportedCommands;

  @Array(1)
  external Array<NVCACHE_PRIORITY_LEVEL_DESCRIPTOR> Priority;
}

/// {@category Struct}
class _HYBRID_INFORMATION__Priorities_e__Struct__SupportedCommands_e__Struct
    extends Struct {
  @Uint32()
  external int bitfield;

  @Uint32()
  external int MaxEvictCommands;

  @Uint32()
  external int MaxLbaRangeCountForEvict;

  @Uint32()
  external int MaxLbaRangeCountForChangeLba;
}

extension HYBRID_INFORMATION__Priorities_e__Struct_Extension
    on HYBRID_INFORMATION {
  int get bitfield => this.Priorities.SupportedCommands.bitfield;
  set bitfield(int value) => this.Priorities.SupportedCommands.bitfield = value;

  int get MaxEvictCommands =>
      this.Priorities.SupportedCommands.MaxEvictCommands;
  set MaxEvictCommands(int value) =>
      this.Priorities.SupportedCommands.MaxEvictCommands = value;

  int get MaxLbaRangeCountForEvict =>
      this.Priorities.SupportedCommands.MaxLbaRangeCountForEvict;
  set MaxLbaRangeCountForEvict(int value) =>
      this.Priorities.SupportedCommands.MaxLbaRangeCountForEvict = value;

  int get MaxLbaRangeCountForChangeLba =>
      this.Priorities.SupportedCommands.MaxLbaRangeCountForChangeLba;
  set MaxLbaRangeCountForChangeLba(int value) =>
      this.Priorities.SupportedCommands.MaxLbaRangeCountForChangeLba = value;
}

extension HYBRID_INFORMATION_Extension_1 on HYBRID_INFORMATION {
  int get PriorityLevelCount => this.Priorities.PriorityLevelCount;
  set PriorityLevelCount(int value) =>
      this.Priorities.PriorityLevelCount = value;

  int get MaxPriorityBehavior => this.Priorities.MaxPriorityBehavior;
  set MaxPriorityBehavior(int value) =>
      this.Priorities.MaxPriorityBehavior = value;

  int get OptimalWriteGranularity => this.Priorities.OptimalWriteGranularity;
  set OptimalWriteGranularity(int value) =>
      this.Priorities.OptimalWriteGranularity = value;

  int get Reserved => this.Priorities.Reserved;
  set Reserved(int value) => this.Priorities.Reserved = value;

  int get DirtyThresholdLow => this.Priorities.DirtyThresholdLow;
  set DirtyThresholdLow(int value) => this.Priorities.DirtyThresholdLow = value;

  int get DirtyThresholdHigh => this.Priorities.DirtyThresholdHigh;
  set DirtyThresholdHigh(int value) =>
      this.Priorities.DirtyThresholdHigh = value;

  _HYBRID_INFORMATION__Priorities_e__Struct__SupportedCommands_e__Struct
      get SupportedCommands => this.Priorities.SupportedCommands;
  set SupportedCommands(
          _HYBRID_INFORMATION__Priorities_e__Struct__SupportedCommands_e__Struct
              value) =>
      this.Priorities.SupportedCommands = value;

  Array<NVCACHE_PRIORITY_LEVEL_DESCRIPTOR> get Priority =>
      this.Priorities.Priority;
  set Priority(Array<NVCACHE_PRIORITY_LEVEL_DESCRIPTOR> value) =>
      this.Priorities.Priority = value;
}

/// {@category Struct}
class HYBRID_REQUEST_BLOCK extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  @Uint32()
  external int Function;

  @Uint32()
  external int Flags;

  @Uint32()
  external int DataBufferOffset;

  @Uint32()
  external int DataBufferLength;
}

/// {@category Struct}
class IDE_IO_CONTROL extends Struct {
  @Uint32()
  external int HeaderLength;

  @Array(8)
  external Array<Uint8> Signature;

  @Uint32()
  external int Timeout;

  @Uint32()
  external int ControlCode;

  @Uint32()
  external int ReturnStatus;

  @Uint32()
  external int DataLength;
}

/// {@category Struct}
class IKE_AUTHENTICATION_INFORMATION extends Struct {
  @Int32()
  external int AuthMethod;

  external _IKE_AUTHENTICATION_INFORMATION__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _IKE_AUTHENTICATION_INFORMATION__Anonymous_e__Union extends Union {
  external IKE_AUTHENTICATION_PRESHARED_KEY PsKey;
}

extension IKE_AUTHENTICATION_INFORMATION_Extension
    on IKE_AUTHENTICATION_INFORMATION {
  IKE_AUTHENTICATION_PRESHARED_KEY get PsKey => this.Anonymous.PsKey;
  set PsKey(IKE_AUTHENTICATION_PRESHARED_KEY value) =>
      this.Anonymous.PsKey = value;
}

/// {@category Struct}
class IKE_AUTHENTICATION_PRESHARED_KEY extends Struct {
  @Uint64()
  external int SecurityFlags;

  @Uint8()
  external int IdType;

  @Uint32()
  external int IdLengthInBytes;

  external Pointer<Uint8> Id;

  @Uint32()
  external int KeyLengthInBytes;

  external Pointer<Uint8> Key;
}

/// {@category Struct}
class IO_SCSI_CAPABILITIES extends Struct {
  @Uint32()
  external int Length;

  @Uint32()
  external int MaximumTransferLength;

  @Uint32()
  external int MaximumPhysicalPages;

  @Uint32()
  external int SupportedAsynchronousEvents;

  @Uint32()
  external int AlignmentMask;

  @Uint8()
  external int TaggedQueuing;

  @Uint8()
  external int AdapterScansDown;

  @Uint8()
  external int AdapterUsesPio;
}

/// {@category Struct}
class ISCSI_CONNECTION_INFO extends Struct {
  external ISCSI_UNIQUE_SESSION_ID ConnectionId;

  external Pointer<Utf16> InitiatorAddress;

  external Pointer<Utf16> TargetAddress;

  @Uint16()
  external int InitiatorSocket;

  @Uint16()
  external int TargetSocket;

  @Array(2)
  external Array<Uint8> CID;
}

/// {@category Struct}
class ISCSI_CONNECTION_INFO_EX extends Struct {
  external ISCSI_UNIQUE_SESSION_ID ConnectionId;

  @Uint8()
  external int State;

  @Uint8()
  external int Protocol;

  @Uint8()
  external int HeaderDigest;

  @Uint8()
  external int DataDigest;

  @Uint32()
  external int MaxRecvDataSegmentLength;

  @Int32()
  external int AuthType;

  @Uint64()
  external int EstimatedThroughput;

  @Uint32()
  external int MaxDatagramSize;
}

/// {@category Struct}
class ISCSI_DEVICE_ON_SESSION extends Struct {
  @Array(256)
  external Array<Uint16> _InitiatorName;

  String get InitiatorName {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_InitiatorName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set InitiatorName(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _InitiatorName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(224)
  external Array<Uint16> _TargetName;

  String get TargetName {
    final charCodes = <int>[];
    for (var i = 0; i < 224; i++) {
      charCodes.add(_TargetName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set TargetName(String value) {
    final stringToStore = value.padRight(224, '\x00');
    for (var i = 0; i < 224; i++) {
      _TargetName[i] = stringToStore.codeUnitAt(i);
    }
  }

  external SCSI_ADDRESS ScsiAddress;

  external GUID DeviceInterfaceType;

  @Array(260)
  external Array<Uint16> _DeviceInterfaceName;

  String get DeviceInterfaceName {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_DeviceInterfaceName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set DeviceInterfaceName(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _DeviceInterfaceName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(260)
  external Array<Uint16> _LegacyName;

  String get LegacyName {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_LegacyName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set LegacyName(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _LegacyName[i] = stringToStore.codeUnitAt(i);
    }
  }

  external STORAGE_DEVICE_NUMBER StorageDeviceNumber;

  @Uint32()
  external int DeviceInstance;
}

/// {@category Struct}
class ISCSI_LOGIN_OPTIONS extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int InformationSpecified;

  @Uint32()
  external int LoginFlags;

  @Int32()
  external int AuthType;

  @Int32()
  external int HeaderDigest;

  @Int32()
  external int DataDigest;

  @Uint32()
  external int MaximumConnections;

  @Uint32()
  external int DefaultTime2Wait;

  @Uint32()
  external int DefaultTime2Retain;

  @Uint32()
  external int UsernameLength;

  @Uint32()
  external int PasswordLength;

  external Pointer<Uint8> Username;

  external Pointer<Uint8> Password;
}

/// {@category Struct}
class ISCSI_SESSION_INFO extends Struct {
  external ISCSI_UNIQUE_SESSION_ID SessionId;

  external Pointer<Utf16> InitiatorName;

  external Pointer<Utf16> TargetNodeName;

  external Pointer<Utf16> TargetName;

  @Array(6)
  external Array<Uint8> ISID;

  @Array(2)
  external Array<Uint8> TSID;

  @Uint32()
  external int ConnectionCount;

  external Pointer<ISCSI_CONNECTION_INFO> Connections;
}

/// {@category Struct}
class ISCSI_SESSION_INFO_EX extends Struct {
  external ISCSI_UNIQUE_SESSION_ID SessionId;

  @Uint8()
  external int InitialR2t;

  @Uint8()
  external int ImmediateData;

  @Uint8()
  external int Type;

  @Uint8()
  external int DataSequenceInOrder;

  @Uint8()
  external int DataPduInOrder;

  @Uint8()
  external int ErrorRecoveryLevel;

  @Uint32()
  external int MaxOutstandingR2t;

  @Uint32()
  external int FirstBurstLength;

  @Uint32()
  external int MaxBurstLength;

  @Uint32()
  external int MaximumConnections;

  @Uint32()
  external int ConnectionCount;

  external Pointer<ISCSI_CONNECTION_INFO_EX> Connections;
}

/// {@category Struct}
class ISCSI_TARGET_MAPPING extends Struct {
  @Array(256)
  external Array<Uint16> _InitiatorName;

  String get InitiatorName {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_InitiatorName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set InitiatorName(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _InitiatorName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(224)
  external Array<Uint16> _TargetName;

  String get TargetName {
    final charCodes = <int>[];
    for (var i = 0; i < 224; i++) {
      charCodes.add(_TargetName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set TargetName(String value) {
    final stringToStore = value.padRight(224, '\x00');
    for (var i = 0; i < 224; i++) {
      _TargetName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(260)
  external Array<Uint16> _OSDeviceName;

  String get OSDeviceName {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_OSDeviceName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set OSDeviceName(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _OSDeviceName[i] = stringToStore.codeUnitAt(i);
    }
  }

  external ISCSI_UNIQUE_SESSION_ID SessionId;

  @Uint32()
  external int OSBusNumber;

  @Uint32()
  external int OSTargetNumber;

  @Uint32()
  external int LUNCount;

  external Pointer<SCSI_LUN_LIST> LUNList;
}

/// {@category Struct}
class ISCSI_TARGET_PORTAL extends Struct {
  @Array(256)
  external Array<Uint16> _SymbolicName;

  String get SymbolicName {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_SymbolicName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set SymbolicName(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _SymbolicName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(256)
  external Array<Uint16> _Address;

  String get Address {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_Address[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set Address(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _Address[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint16()
  external int Socket;
}

/// {@category Struct}
class ISCSI_TARGET_PORTAL_GROUP extends Struct {
  @Uint32()
  external int Count;

  @Array(1)
  external Array<ISCSI_TARGET_PORTAL> Portals;
}

/// {@category Struct}
class ISCSI_TARGET_PORTAL_INFO extends Struct {
  @Array(256)
  external Array<Uint16> _InitiatorName;

  String get InitiatorName {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_InitiatorName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set InitiatorName(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _InitiatorName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int InitiatorPortNumber;

  @Array(256)
  external Array<Uint16> _SymbolicName;

  String get SymbolicName {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_SymbolicName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set SymbolicName(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _SymbolicName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(256)
  external Array<Uint16> _Address;

  String get Address {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_Address[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set Address(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _Address[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint16()
  external int Socket;
}

/// {@category Struct}
class ISCSI_TARGET_PORTAL_INFO_EX extends Struct {
  @Array(256)
  external Array<Uint16> _InitiatorName;

  String get InitiatorName {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_InitiatorName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set InitiatorName(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _InitiatorName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int InitiatorPortNumber;

  @Array(256)
  external Array<Uint16> _SymbolicName;

  String get SymbolicName {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_SymbolicName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set SymbolicName(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _SymbolicName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(256)
  external Array<Uint16> _Address;

  String get Address {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_Address[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set Address(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _Address[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint16()
  external int Socket;

  @Uint64()
  external int SecurityFlags;

  external ISCSI_LOGIN_OPTIONS LoginOptions;
}

/// {@category Struct}
class ISCSI_UNIQUE_SESSION_ID extends Struct {
  @Uint64()
  external int AdapterUnique;

  @Uint64()
  external int AdapterSpecific;
}

/// {@category Struct}
class ISCSI_VERSION_INFO extends Struct {
  @Uint32()
  external int MajorVersion;

  @Uint32()
  external int MinorVersion;

  @Uint32()
  external int BuildNumber;
}

/// {@category Struct}
class MPIO_PASS_THROUGH_PATH extends Struct {
  external SCSI_PASS_THROUGH PassThrough;

  @Uint32()
  external int Version;

  @Uint16()
  external int Length;

  @Uint8()
  external int Flags;

  @Uint8()
  external int PortNumber;

  @Uint64()
  external int MpioPathId;
}

/// {@category Struct}
class MPIO_PASS_THROUGH_PATH32 extends Struct {
  external SCSI_PASS_THROUGH32 PassThrough;

  @Uint32()
  external int Version;

  @Uint16()
  external int Length;

  @Uint8()
  external int Flags;

  @Uint8()
  external int PortNumber;

  @Uint64()
  external int MpioPathId;
}

/// {@category Struct}
class MPIO_PASS_THROUGH_PATH32_EX extends Struct {
  @Uint32()
  external int PassThroughOffset;

  @Uint32()
  external int Version;

  @Uint16()
  external int Length;

  @Uint8()
  external int Flags;

  @Uint8()
  external int PortNumber;

  @Uint64()
  external int MpioPathId;
}

/// {@category Struct}
class MPIO_PASS_THROUGH_PATH_DIRECT extends Struct {
  external SCSI_PASS_THROUGH_DIRECT PassThrough;

  @Uint32()
  external int Version;

  @Uint16()
  external int Length;

  @Uint8()
  external int Flags;

  @Uint8()
  external int PortNumber;

  @Uint64()
  external int MpioPathId;
}

/// {@category Struct}
class MPIO_PASS_THROUGH_PATH_DIRECT32 extends Struct {
  external SCSI_PASS_THROUGH_DIRECT32 PassThrough;

  @Uint32()
  external int Version;

  @Uint16()
  external int Length;

  @Uint8()
  external int Flags;

  @Uint8()
  external int PortNumber;

  @Uint64()
  external int MpioPathId;
}

/// {@category Struct}
class MPIO_PASS_THROUGH_PATH_DIRECT32_EX extends Struct {
  @Uint32()
  external int PassThroughOffset;

  @Uint32()
  external int Version;

  @Uint16()
  external int Length;

  @Uint8()
  external int Flags;

  @Uint8()
  external int PortNumber;

  @Uint64()
  external int MpioPathId;
}

/// {@category Struct}
class MPIO_PASS_THROUGH_PATH_DIRECT_EX extends Struct {
  @Uint32()
  external int PassThroughOffset;

  @Uint32()
  external int Version;

  @Uint16()
  external int Length;

  @Uint8()
  external int Flags;

  @Uint8()
  external int PortNumber;

  @Uint64()
  external int MpioPathId;
}

/// {@category Struct}
class MPIO_PASS_THROUGH_PATH_EX extends Struct {
  @Uint32()
  external int PassThroughOffset;

  @Uint32()
  external int Version;

  @Uint16()
  external int Length;

  @Uint8()
  external int Flags;

  @Uint8()
  external int PortNumber;

  @Uint64()
  external int MpioPathId;
}

/// {@category Struct}
class MP_DEVICE_DATA_SET_RANGE extends Struct {
  @Int64()
  external int StartingOffset;

  @Uint64()
  external int LengthInBytes;
}

/// {@category Struct}
class NTSCSI_UNICODE_STRING extends Struct {
  @Uint16()
  external int Length;

  @Uint16()
  external int MaximumLength;

  external Pointer<Utf16> Buffer;
}

/// {@category Struct}
class NVCACHE_HINT_PAYLOAD extends Struct {
  @Uint8()
  external int Command;

  @Uint8()
  external int Feature7_0;

  @Uint8()
  external int Feature15_8;

  @Uint8()
  external int Count15_8;

  @Uint8()
  external int LBA7_0;

  @Uint8()
  external int LBA15_8;

  @Uint8()
  external int LBA23_16;

  @Uint8()
  external int LBA31_24;

  @Uint8()
  external int LBA39_32;

  @Uint8()
  external int LBA47_40;

  @Uint8()
  external int Auxiliary7_0;

  @Uint8()
  external int Auxiliary23_16;

  @Array(4)
  external Array<Uint8> Reserved;
}

/// {@category Struct}
class NVCACHE_PRIORITY_LEVEL_DESCRIPTOR extends Struct {
  @Uint8()
  external int PriorityLevel;

  @Array(3)
  external Array<Uint8> Reserved0;

  @Uint32()
  external int ConsumedNVMSizeFraction;

  @Uint32()
  external int ConsumedMappingResourcesFraction;

  @Uint32()
  external int ConsumedNVMSizeForDirtyDataFraction;

  @Uint32()
  external int ConsumedMappingResourcesForDirtyDataFraction;

  @Uint32()
  external int Reserved1;
}

/// {@category Struct}
class NVCACHE_REQUEST_BLOCK extends Struct {
  @Uint32()
  external int NRBSize;

  @Uint16()
  external int Function;

  @Uint32()
  external int NRBFlags;

  @Uint32()
  external int NRBStatus;

  @Uint32()
  external int Count;

  @Uint64()
  external int LBA;

  @Uint32()
  external int DataBufSize;

  @Uint32()
  external int NVCacheStatus;

  @Uint32()
  external int NVCacheSubStatus;
}

/// {@category Struct}
class NV_FEATURE_PARAMETER extends Struct {
  @Uint16()
  external int NVPowerModeEnabled;

  @Uint16()
  external int NVParameterReserv1;

  @Uint16()
  external int NVCmdEnabled;

  @Uint16()
  external int NVParameterReserv2;

  @Uint16()
  external int NVPowerModeVer;

  @Uint16()
  external int NVCmdVer;

  @Uint32()
  external int NVSize;

  @Uint16()
  external int NVReadSpeed;

  @Uint16()
  external int NVWrtSpeed;

  @Uint32()
  external int DeviceSpinUpTime;
}

/// {@category Struct}
class NV_SEP_CACHE_PARAMETER extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  external _NV_SEP_CACHE_PARAMETER__Flags_e__Union Flags;

  @Uint8()
  external int WriteCacheType;

  @Uint8()
  external int WriteCacheTypeEffective;

  @Array(3)
  external Array<Uint8> ParameterReserve1;
}

/// {@category Struct}
class _NV_SEP_CACHE_PARAMETER__Flags_e__Union extends Union {
  external _NV_SEP_CACHE_PARAMETER__Flags_e__Union__CacheFlags_e__Struct
      CacheFlags;

  @Uint8()
  external int CacheFlagsSet;
}

/// {@category Struct}
class _NV_SEP_CACHE_PARAMETER__Flags_e__Union__CacheFlags_e__Struct
    extends Struct {
  @Uint8()
  external int bitfield;
}

extension NV_SEP_CACHE_PARAMETER__Flags_e__Union_Extension
    on NV_SEP_CACHE_PARAMETER {
  int get bitfield => this.Flags.CacheFlags.bitfield;
  set bitfield(int value) => this.Flags.CacheFlags.bitfield = value;
}

extension NV_SEP_CACHE_PARAMETER_Extension on NV_SEP_CACHE_PARAMETER {
  _NV_SEP_CACHE_PARAMETER__Flags_e__Union__CacheFlags_e__Struct
      get CacheFlags => this.Flags.CacheFlags;
  set CacheFlags(
          _NV_SEP_CACHE_PARAMETER__Flags_e__Union__CacheFlags_e__Struct
              value) =>
      this.Flags.CacheFlags = value;

  int get CacheFlagsSet => this.Flags.CacheFlagsSet;
  set CacheFlagsSet(int value) => this.Flags.CacheFlagsSet = value;
}

/// {@category Struct}
class PERSISTENT_ISCSI_LOGIN_INFO extends Struct {
  @Array(224)
  external Array<Uint16> _TargetName;

  String get TargetName {
    final charCodes = <int>[];
    for (var i = 0; i < 224; i++) {
      charCodes.add(_TargetName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set TargetName(String value) {
    final stringToStore = value.padRight(224, '\x00');
    for (var i = 0; i < 224; i++) {
      _TargetName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint8()
  external int IsInformationalSession;

  @Array(256)
  external Array<Uint16> _InitiatorInstance;

  String get InitiatorInstance {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_InitiatorInstance[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set InitiatorInstance(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _InitiatorInstance[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int InitiatorPortNumber;

  external ISCSI_TARGET_PORTAL TargetPortal;

  @Uint64()
  external int SecurityFlags;

  external Pointer<ISCSI_TARGET_MAPPING> Mappings;

  external ISCSI_LOGIN_OPTIONS LoginOptions;
}

/// {@category Struct}
class SCSI_ADAPTER_BUS_INFO extends Struct {
  @Uint8()
  external int NumberOfBuses;

  @Array(1)
  external Array<SCSI_BUS_DATA> BusData;
}

/// {@category Struct}
class SCSI_ADDRESS extends Struct {
  @Uint32()
  external int Length;

  @Uint8()
  external int PortNumber;

  @Uint8()
  external int PathId;

  @Uint8()
  external int TargetId;

  @Uint8()
  external int Lun;
}

/// {@category Struct}
class SCSI_BUS_DATA extends Struct {
  @Uint8()
  external int NumberOfLogicalUnits;

  @Uint8()
  external int InitiatorBusId;

  @Uint32()
  external int InquiryDataOffset;
}

/// {@category Struct}
class SCSI_INQUIRY_DATA extends Struct {
  @Uint8()
  external int PathId;

  @Uint8()
  external int TargetId;

  @Uint8()
  external int Lun;

  @Uint8()
  external int DeviceClaimed;

  @Uint32()
  external int InquiryDataLength;

  @Uint32()
  external int NextInquiryDataOffset;

  @Array(1)
  external Array<Uint8> InquiryData;
}

/// {@category Struct}
class SCSI_LUN_LIST extends Struct {
  @Uint32()
  external int OSLUN;

  @Uint64()
  external int TargetLUN;
}

/// {@category Struct}
class SCSI_PASS_THROUGH extends Struct {
  @Uint16()
  external int Length;

  @Uint8()
  external int ScsiStatus;

  @Uint8()
  external int PathId;

  @Uint8()
  external int TargetId;

  @Uint8()
  external int Lun;

  @Uint8()
  external int CdbLength;

  @Uint8()
  external int SenseInfoLength;

  @Uint8()
  external int DataIn;

  @Uint32()
  external int DataTransferLength;

  @Uint32()
  external int TimeOutValue;

  @IntPtr()
  external int DataBufferOffset;

  @Uint32()
  external int SenseInfoOffset;

  @Array(16)
  external Array<Uint8> Cdb;
}

/// {@category Struct}
class SCSI_PASS_THROUGH32 extends Struct {
  @Uint16()
  external int Length;

  @Uint8()
  external int ScsiStatus;

  @Uint8()
  external int PathId;

  @Uint8()
  external int TargetId;

  @Uint8()
  external int Lun;

  @Uint8()
  external int CdbLength;

  @Uint8()
  external int SenseInfoLength;

  @Uint8()
  external int DataIn;

  @Uint32()
  external int DataTransferLength;

  @Uint32()
  external int TimeOutValue;

  @Uint32()
  external int DataBufferOffset;

  @Uint32()
  external int SenseInfoOffset;

  @Array(16)
  external Array<Uint8> Cdb;
}

/// {@category Struct}
class SCSI_PASS_THROUGH32_EX extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Length;

  @Uint32()
  external int CdbLength;

  @Uint32()
  external int StorAddressLength;

  @Uint8()
  external int ScsiStatus;

  @Uint8()
  external int SenseInfoLength;

  @Uint8()
  external int DataDirection;

  @Uint8()
  external int Reserved;

  @Uint32()
  external int TimeOutValue;

  @Uint32()
  external int StorAddressOffset;

  @Uint32()
  external int SenseInfoOffset;

  @Uint32()
  external int DataOutTransferLength;

  @Uint32()
  external int DataInTransferLength;

  @Uint32()
  external int DataOutBufferOffset;

  @Uint32()
  external int DataInBufferOffset;

  @Array(1)
  external Array<Uint8> Cdb;
}

/// {@category Struct}
class SCSI_PASS_THROUGH_DIRECT extends Struct {
  @Uint16()
  external int Length;

  @Uint8()
  external int ScsiStatus;

  @Uint8()
  external int PathId;

  @Uint8()
  external int TargetId;

  @Uint8()
  external int Lun;

  @Uint8()
  external int CdbLength;

  @Uint8()
  external int SenseInfoLength;

  @Uint8()
  external int DataIn;

  @Uint32()
  external int DataTransferLength;

  @Uint32()
  external int TimeOutValue;

  external Pointer DataBuffer;

  @Uint32()
  external int SenseInfoOffset;

  @Array(16)
  external Array<Uint8> Cdb;
}

/// {@category Struct}
class SCSI_PASS_THROUGH_DIRECT32 extends Struct {
  @Uint16()
  external int Length;

  @Uint8()
  external int ScsiStatus;

  @Uint8()
  external int PathId;

  @Uint8()
  external int TargetId;

  @Uint8()
  external int Lun;

  @Uint8()
  external int CdbLength;

  @Uint8()
  external int SenseInfoLength;

  @Uint8()
  external int DataIn;

  @Uint32()
  external int DataTransferLength;

  @Uint32()
  external int TimeOutValue;

  external Pointer DataBuffer;

  @Uint32()
  external int SenseInfoOffset;

  @Array(16)
  external Array<Uint8> Cdb;
}

/// {@category Struct}
class SCSI_PASS_THROUGH_DIRECT32_EX extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Length;

  @Uint32()
  external int CdbLength;

  @Uint32()
  external int StorAddressLength;

  @Uint8()
  external int ScsiStatus;

  @Uint8()
  external int SenseInfoLength;

  @Uint8()
  external int DataDirection;

  @Uint8()
  external int Reserved;

  @Uint32()
  external int TimeOutValue;

  @Uint32()
  external int StorAddressOffset;

  @Uint32()
  external int SenseInfoOffset;

  @Uint32()
  external int DataOutTransferLength;

  @Uint32()
  external int DataInTransferLength;

  external Pointer DataOutBuffer;

  external Pointer DataInBuffer;

  @Array(1)
  external Array<Uint8> Cdb;
}

/// {@category Struct}
class SCSI_PASS_THROUGH_DIRECT_EX extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Length;

  @Uint32()
  external int CdbLength;

  @Uint32()
  external int StorAddressLength;

  @Uint8()
  external int ScsiStatus;

  @Uint8()
  external int SenseInfoLength;

  @Uint8()
  external int DataDirection;

  @Uint8()
  external int Reserved;

  @Uint32()
  external int TimeOutValue;

  @Uint32()
  external int StorAddressOffset;

  @Uint32()
  external int SenseInfoOffset;

  @Uint32()
  external int DataOutTransferLength;

  @Uint32()
  external int DataInTransferLength;

  external Pointer DataOutBuffer;

  external Pointer DataInBuffer;

  @Array(1)
  external Array<Uint8> Cdb;
}

/// {@category Struct}
class SCSI_PASS_THROUGH_EX extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Length;

  @Uint32()
  external int CdbLength;

  @Uint32()
  external int StorAddressLength;

  @Uint8()
  external int ScsiStatus;

  @Uint8()
  external int SenseInfoLength;

  @Uint8()
  external int DataDirection;

  @Uint8()
  external int Reserved;

  @Uint32()
  external int TimeOutValue;

  @Uint32()
  external int StorAddressOffset;

  @Uint32()
  external int SenseInfoOffset;

  @Uint32()
  external int DataOutTransferLength;

  @Uint32()
  external int DataInTransferLength;

  @IntPtr()
  external int DataOutBufferOffset;

  @IntPtr()
  external int DataInBufferOffset;

  @Array(1)
  external Array<Uint8> Cdb;
}

/// {@category Struct}
class SRB_IO_CONTROL extends Struct {
  @Uint32()
  external int HeaderLength;

  @Array(8)
  external Array<Uint8> Signature;

  @Uint32()
  external int Timeout;

  @Uint32()
  external int ControlCode;

  @Uint32()
  external int ReturnCode;

  @Uint32()
  external int Length;
}

/// {@category Struct}
class STORAGE_DIAGNOSTIC_MP_REQUEST extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  @Int32()
  external int TargetType;

  @Int32()
  external int Level;

  external GUID ProviderId;

  @Uint32()
  external int BufferSize;

  @Uint32()
  external int Reserved;

  @Array(1)
  external Array<Uint8> DataBuffer;
}

/// {@category Struct}
class STORAGE_ENDURANCE_DATA_DESCRIPTOR extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  external STORAGE_ENDURANCE_INFO EnduranceInfo;
}

/// {@category Struct}
class STORAGE_ENDURANCE_INFO extends Struct {
  @Uint32()
  external int ValidFields;

  @Uint32()
  external int GroupId;

  external _STORAGE_ENDURANCE_INFO__Flags_e__Struct Flags;

  @Uint32()
  external int LifePercentage;

  @Array(16)
  external Array<Uint8> BytesReadCount;

  @Array(16)
  external Array<Uint8> ByteWriteCount;
}

/// {@category Struct}
class _STORAGE_ENDURANCE_INFO__Flags_e__Struct extends Struct {
  @Uint32()
  external int bitfield;
}

extension STORAGE_ENDURANCE_INFO_Extension on STORAGE_ENDURANCE_INFO {
  int get bitfield => this.Flags.bitfield;
  set bitfield(int value) => this.Flags.bitfield = value;
}

/// {@category Struct}
class STORAGE_FIRMWARE_ACTIVATE extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  @Uint8()
  external int SlotToActivate;

  @Array(3)
  external Array<Uint8> Reserved0;
}

/// {@category Struct}
class STORAGE_FIRMWARE_DOWNLOAD extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  @Uint64()
  external int Offset;

  @Uint64()
  external int BufferSize;

  @Array(1)
  external Array<Uint8> ImageBuffer;
}

/// {@category Struct}
class STORAGE_FIRMWARE_DOWNLOAD_V2 extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  @Uint64()
  external int Offset;

  @Uint64()
  external int BufferSize;

  @Uint8()
  external int Slot;

  @Array(3)
  external Array<Uint8> Reserved;

  @Uint32()
  external int ImageSize;

  @Array(1)
  external Array<Uint8> ImageBuffer;
}

/// {@category Struct}
class STORAGE_FIRMWARE_INFO extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  @Uint8()
  external int UpgradeSupport;

  @Uint8()
  external int SlotCount;

  @Uint8()
  external int ActiveSlot;

  @Uint8()
  external int PendingActivateSlot;

  @Uint32()
  external int Reserved;

  @Array(1)
  external Array<STORAGE_FIRMWARE_SLOT_INFO> Slot;
}

/// {@category Struct}
class STORAGE_FIRMWARE_INFO_V2 extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Size;

  @Uint8()
  external int UpgradeSupport;

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
  external Array<STORAGE_FIRMWARE_SLOT_INFO_V2> Slot;
}

/// {@category Struct}
class STORAGE_FIRMWARE_SLOT_INFO extends Struct {
  @Uint8()
  external int SlotNumber;

  @Uint8()
  external int ReadOnly;

  @Array(6)
  external Array<Uint8> Reserved;

  external _STORAGE_FIRMWARE_SLOT_INFO__Revision_e__Union Revision;
}

/// {@category Struct}
class _STORAGE_FIRMWARE_SLOT_INFO__Revision_e__Union extends Union {
  @Array(8)
  external Array<Uint8> Info;

  @Uint64()
  external int AsUlonglong;
}

extension STORAGE_FIRMWARE_SLOT_INFO_Extension on STORAGE_FIRMWARE_SLOT_INFO {
  Array<Uint8> get Info => this.Revision.Info;
  set Info(Array<Uint8> value) => this.Revision.Info = value;

  int get AsUlonglong => this.Revision.AsUlonglong;
  set AsUlonglong(int value) => this.Revision.AsUlonglong = value;
}

/// {@category Struct}
class STORAGE_FIRMWARE_SLOT_INFO_V2 extends Struct {
  @Uint8()
  external int SlotNumber;

  @Uint8()
  external int ReadOnly;

  @Array(6)
  external Array<Uint8> Reserved;

  @Array(16)
  external Array<Uint8> Revision;
}

/// {@category Struct}
class ADAPTER_OBJECT extends Opaque {}
