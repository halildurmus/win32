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
import '../../devices/deviceanddriverinstallation/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../system/diagnostics/debug/structs.g.dart';
import '../../ui/controls/structs.g.dart';
import '../../devices/deviceanddriverinstallation/callbacks.g.dart';

/// {@category Struct}
@Packed(1)
class BUSNUMBER_DES extends Struct {
  @Uint32()
  external int BUSD_Count;

  @Uint32()
  external int BUSD_Type;

  @Uint32()
  external int BUSD_Flags;

  @Uint32()
  external int BUSD_Alloc_Base;

  @Uint32()
  external int BUSD_Alloc_End;
}

/// {@category Struct}
@Packed(1)
class BUSNUMBER_RANGE extends Struct {
  @Uint32()
  external int BUSR_Min;

  @Uint32()
  external int BUSR_Max;

  @Uint32()
  external int BUSR_nBusNumbers;

  @Uint32()
  external int BUSR_Flags;
}

/// {@category Struct}
@Packed(1)
class BUSNUMBER_RESOURCE extends Struct {
  external BUSNUMBER_DES BusNumber_Header;

  @Array(1)
  external Array<BUSNUMBER_RANGE> BusNumber_Data;
}

/// {@category Struct}
class CABINET_INFO_ extends Struct {
  external Pointer<Utf16> CabinetPath;

  external Pointer<Utf16> CabinetFile;

  external Pointer<Utf16> DiskName;

  @Uint16()
  external int SetId;

  @Uint16()
  external int CabinetNumber;
}

/// {@category Struct}
class CM_NOTIFY_EVENT_DATA extends Struct {
  @Int32()
  external int FilterType;

  @Uint32()
  external int Reserved;

  external _CM_NOTIFY_EVENT_DATA__u_e__Union u;
}

/// {@category Struct}
class _CM_NOTIFY_EVENT_DATA__u_e__Union extends Union {
  external _CM_NOTIFY_EVENT_DATA__u_e__Union__DeviceInterface_e__Struct
      DeviceInterface;

  external _CM_NOTIFY_EVENT_DATA__u_e__Union__DeviceHandle_e__Struct
      DeviceHandle;

  external _CM_NOTIFY_EVENT_DATA__u_e__Union__DeviceInstance_e__Struct
      DeviceInstance;
}

/// {@category Struct}
class _CM_NOTIFY_EVENT_DATA__u_e__Union__DeviceInterface_e__Struct
    extends Struct {
  external GUID ClassGuid;

  @Array(1)
  external Array<Uint16> _SymbolicLink;

  String get SymbolicLink {
    final charCodes = <int>[];
    for (var i = 0; i < 1; i++) {
      charCodes.add(_SymbolicLink[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set SymbolicLink(String value) {
    final stringToStore = value.padRight(1, '\x00');
    for (var i = 0; i < 1; i++) {
      _SymbolicLink[i] = stringToStore.codeUnitAt(i);
    }
  }
}

extension CM_NOTIFY_EVENT_DATA__u_e__Union_Extension on CM_NOTIFY_EVENT_DATA {
  GUID get ClassGuid => this.u.DeviceInterface.ClassGuid;
  set ClassGuid(GUID value) => this.u.DeviceInterface.ClassGuid = value;

  String get SymbolicLink => this.u.DeviceInterface.SymbolicLink;
  set SymbolicLink(String value) => this.u.DeviceInterface.SymbolicLink = value;
}

/// {@category Struct}
class _CM_NOTIFY_EVENT_DATA__u_e__Union__DeviceHandle_e__Struct extends Struct {
  external GUID EventGuid;

  @Int32()
  external int NameOffset;

  @Uint32()
  external int DataSize;

  @Array(1)
  external Array<Uint8> Data;
}

extension CM_NOTIFY_EVENT_DATA__u_e__Union_Extension_1 on CM_NOTIFY_EVENT_DATA {
  GUID get EventGuid => this.u.DeviceHandle.EventGuid;
  set EventGuid(GUID value) => this.u.DeviceHandle.EventGuid = value;

  int get NameOffset => this.u.DeviceHandle.NameOffset;
  set NameOffset(int value) => this.u.DeviceHandle.NameOffset = value;

  int get DataSize => this.u.DeviceHandle.DataSize;
  set DataSize(int value) => this.u.DeviceHandle.DataSize = value;

  Array<Uint8> get Data => this.u.DeviceHandle.Data;
  set Data(Array<Uint8> value) => this.u.DeviceHandle.Data = value;
}

/// {@category Struct}
class _CM_NOTIFY_EVENT_DATA__u_e__Union__DeviceInstance_e__Struct
    extends Struct {
  @Array(1)
  external Array<Uint16> _InstanceId;

  String get InstanceId {
    final charCodes = <int>[];
    for (var i = 0; i < 1; i++) {
      charCodes.add(_InstanceId[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set InstanceId(String value) {
    final stringToStore = value.padRight(1, '\x00');
    for (var i = 0; i < 1; i++) {
      _InstanceId[i] = stringToStore.codeUnitAt(i);
    }
  }
}

extension CM_NOTIFY_EVENT_DATA__u_e__Union_Extension_2 on CM_NOTIFY_EVENT_DATA {
  String get InstanceId => this.u.DeviceInstance.InstanceId;
  set InstanceId(String value) => this.u.DeviceInstance.InstanceId = value;
}

extension CM_NOTIFY_EVENT_DATA_Extension on CM_NOTIFY_EVENT_DATA {
  _CM_NOTIFY_EVENT_DATA__u_e__Union__DeviceInterface_e__Struct
      get DeviceInterface => this.u.DeviceInterface;
  set DeviceInterface(
          _CM_NOTIFY_EVENT_DATA__u_e__Union__DeviceInterface_e__Struct value) =>
      this.u.DeviceInterface = value;

  _CM_NOTIFY_EVENT_DATA__u_e__Union__DeviceHandle_e__Struct get DeviceHandle =>
      this.u.DeviceHandle;
  set DeviceHandle(
          _CM_NOTIFY_EVENT_DATA__u_e__Union__DeviceHandle_e__Struct value) =>
      this.u.DeviceHandle = value;

  _CM_NOTIFY_EVENT_DATA__u_e__Union__DeviceInstance_e__Struct
      get DeviceInstance => this.u.DeviceInstance;
  set DeviceInstance(
          _CM_NOTIFY_EVENT_DATA__u_e__Union__DeviceInstance_e__Struct value) =>
      this.u.DeviceInstance = value;
}

/// {@category Struct}
class CM_NOTIFY_FILTER extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int Flags;

  @Int32()
  external int FilterType;

  @Uint32()
  external int Reserved;

  external _CM_NOTIFY_FILTER__u_e__Union u;
}

/// {@category Struct}
class _CM_NOTIFY_FILTER__u_e__Union extends Union {
  external _CM_NOTIFY_FILTER__u_e__Union__DeviceInterface_e__Struct
      DeviceInterface;

  external _CM_NOTIFY_FILTER__u_e__Union__DeviceHandle_e__Struct DeviceHandle;

  external _CM_NOTIFY_FILTER__u_e__Union__DeviceInstance_e__Struct
      DeviceInstance;
}

/// {@category Struct}
class _CM_NOTIFY_FILTER__u_e__Union__DeviceInterface_e__Struct extends Struct {
  external GUID ClassGuid;
}

extension CM_NOTIFY_FILTER__u_e__Union_Extension on CM_NOTIFY_FILTER {
  GUID get ClassGuid => this.u.DeviceInterface.ClassGuid;
  set ClassGuid(GUID value) => this.u.DeviceInterface.ClassGuid = value;
}

/// {@category Struct}
class _CM_NOTIFY_FILTER__u_e__Union__DeviceHandle_e__Struct extends Struct {
  @IntPtr()
  external int hTarget;
}

extension CM_NOTIFY_FILTER__u_e__Union_Extension_1 on CM_NOTIFY_FILTER {
  int get hTarget => this.u.DeviceHandle.hTarget;
  set hTarget(int value) => this.u.DeviceHandle.hTarget = value;
}

/// {@category Struct}
class _CM_NOTIFY_FILTER__u_e__Union__DeviceInstance_e__Struct extends Struct {
  @Array(200)
  external Array<Uint16> _InstanceId;

  String get InstanceId {
    final charCodes = <int>[];
    for (var i = 0; i < 200; i++) {
      charCodes.add(_InstanceId[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set InstanceId(String value) {
    final stringToStore = value.padRight(200, '\x00');
    for (var i = 0; i < 200; i++) {
      _InstanceId[i] = stringToStore.codeUnitAt(i);
    }
  }
}

extension CM_NOTIFY_FILTER__u_e__Union_Extension_2 on CM_NOTIFY_FILTER {
  String get InstanceId => this.u.DeviceInstance.InstanceId;
  set InstanceId(String value) => this.u.DeviceInstance.InstanceId = value;
}

extension CM_NOTIFY_FILTER_Extension on CM_NOTIFY_FILTER {
  _CM_NOTIFY_FILTER__u_e__Union__DeviceInterface_e__Struct
      get DeviceInterface => this.u.DeviceInterface;
  set DeviceInterface(
          _CM_NOTIFY_FILTER__u_e__Union__DeviceInterface_e__Struct value) =>
      this.u.DeviceInterface = value;

  _CM_NOTIFY_FILTER__u_e__Union__DeviceHandle_e__Struct get DeviceHandle =>
      this.u.DeviceHandle;
  set DeviceHandle(
          _CM_NOTIFY_FILTER__u_e__Union__DeviceHandle_e__Struct value) =>
      this.u.DeviceHandle = value;

  _CM_NOTIFY_FILTER__u_e__Union__DeviceInstance_e__Struct get DeviceInstance =>
      this.u.DeviceInstance;
  set DeviceInstance(
          _CM_NOTIFY_FILTER__u_e__Union__DeviceInstance_e__Struct value) =>
      this.u.DeviceInstance = value;
}

/// {@category Struct}
class COINSTALLER_CONTEXT_DATA extends Struct {
  @Int32()
  external int PostProcessing;

  @Uint32()
  external int InstallResult;

  external Pointer PrivateData;
}

/// {@category Struct}
class CONFLICT_DETAILS_ extends Struct {
  @Uint32()
  external int CD_ulSize;

  @Uint32()
  external int CD_ulMask;

  @Uint32()
  external int CD_dnDevInst;

  @IntPtr()
  external int CD_rdResDes;

  @Uint32()
  external int CD_ulFlags;

  @Array(260)
  external Array<Uint16> _CD_szDescription;

  String get CD_szDescription {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_CD_szDescription[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set CD_szDescription(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _CD_szDescription[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class CS_DES extends Struct {
  @Uint32()
  external int CSD_SignatureLength;

  @Uint32()
  external int CSD_LegacyDataOffset;

  @Uint32()
  external int CSD_LegacyDataSize;

  @Uint32()
  external int CSD_Flags;

  external GUID CSD_ClassGuid;

  @Array(1)
  external Array<Uint8> CSD_Signature;
}

/// {@category Struct}
class CS_RESOURCE extends Struct {
  external CS_DES CS_Header;
}

/// {@category Struct}
class Connection_Des_s extends Struct {
  @Uint32()
  external int COND_Type;

  @Uint32()
  external int COND_Flags;

  @Uint8()
  external int COND_Class;

  @Uint8()
  external int COND_ClassType;

  @Uint8()
  external int COND_Reserved1;

  @Uint8()
  external int COND_Reserved2;

  @Int64()
  external int COND_Id;
}

/// {@category Struct}
class Connection_Resource_s extends Struct {
  external Connection_Des_s Connection_Header;
}

/// {@category Struct}
@Packed(1)
class DMA_DES extends Struct {
  @Uint32()
  external int DD_Count;

  @Uint32()
  external int DD_Type;

  @Uint32()
  external int DD_Flags;

  @Uint32()
  external int DD_Alloc_Chan;
}

/// {@category Struct}
@Packed(1)
class DMA_RANGE extends Struct {
  @Uint32()
  external int DR_Min;

  @Uint32()
  external int DR_Max;

  @Uint32()
  external int DR_Flags;
}

/// {@category Struct}
@Packed(1)
class DMA_RESOURCE extends Struct {
  external DMA_DES DMA_Header;

  @Array(1)
  external Array<DMA_RANGE> DMA_Data;
}

/// {@category Struct}
@Packed(1)
class DevPrivate_Des_s extends Struct {
  @Uint32()
  external int PD_Count;

  @Uint32()
  external int PD_Type;

  @Uint32()
  external int PD_Data1;

  @Uint32()
  external int PD_Data2;

  @Uint32()
  external int PD_Data3;

  @Uint32()
  external int PD_Flags;
}

/// {@category Struct}
@Packed(1)
class DevPrivate_Range_s extends Struct {
  @Uint32()
  external int PR_Data1;

  @Uint32()
  external int PR_Data2;

  @Uint32()
  external int PR_Data3;
}

/// {@category Struct}
@Packed(1)
class DevPrivate_Resource_s extends Struct {
  external DevPrivate_Des_s PRV_Header;

  @Array(1)
  external Array<DevPrivate_Range_s> PRV_Data;
}

/// {@category Struct}
class FILEPATHS_SIGNERINFO_ extends Struct {
  external Pointer<Utf16> Target;

  external Pointer<Utf16> Source;

  @Uint32()
  external int Win32Error;

  @Uint32()
  external int Flags;

  external Pointer<Utf16> DigitalSigner;

  external Pointer<Utf16> Version;

  external Pointer<Utf16> CatalogFile;
}

/// {@category Struct}
class FILEPATHS_ extends Struct {
  external Pointer<Utf16> Target;

  external Pointer<Utf16> Source;

  @Uint32()
  external int Win32Error;

  @Uint32()
  external int Flags;
}

/// {@category Struct}
class FILE_IN_CABINET_INFO_ extends Struct {
  external Pointer<Utf16> NameInCabinet;

  @Uint32()
  external int FileSize;

  @Uint32()
  external int Win32Error;

  @Uint16()
  external int DosDate;

  @Uint16()
  external int DosTime;

  @Uint16()
  external int DosAttribs;

  @Array(260)
  external Array<Uint16> _FullTargetName;

  String get FullTargetName {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_FullTargetName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set FullTargetName(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _FullTargetName[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
@Packed(1)
class HWProfileInfo_s extends Struct {
  @Uint32()
  external int HWPI_ulHWProfile;

  @Array(80)
  external Array<Uint16> _HWPI_szFriendlyName;

  String get HWPI_szFriendlyName {
    final charCodes = <int>[];
    for (var i = 0; i < 80; i++) {
      charCodes.add(_HWPI_szFriendlyName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set HWPI_szFriendlyName(String value) {
    final stringToStore = value.padRight(80, '\x00');
    for (var i = 0; i < 80; i++) {
      _HWPI_szFriendlyName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int HWPI_dwFlags;
}

/// {@category Struct}
class INFCONTEXT extends Struct {
  external Pointer Inf;

  external Pointer CurrentInf;

  @Uint32()
  external int Section;

  @Uint32()
  external int Line;
}

/// {@category Struct}
@Packed(1)
class IO_DES extends Struct {
  @Uint32()
  external int IOD_Count;

  @Uint32()
  external int IOD_Type;

  @Uint64()
  external int IOD_Alloc_Base;

  @Uint64()
  external int IOD_Alloc_End;

  @Uint32()
  external int IOD_DesFlags;
}

/// {@category Struct}
@Packed(1)
class IO_RANGE extends Struct {
  @Uint64()
  external int IOR_Align;

  @Uint32()
  external int IOR_nPorts;

  @Uint64()
  external int IOR_Min;

  @Uint64()
  external int IOR_Max;

  @Uint32()
  external int IOR_RangeFlags;

  @Uint64()
  external int IOR_Alias;
}

/// {@category Struct}
@Packed(1)
class IO_RESOURCE extends Struct {
  external IO_DES IO_Header;

  @Array(1)
  external Array<IO_RANGE> IO_Data;
}

/// {@category Struct}
@Packed(1)
class IRQ_DES_32 extends Struct {
  @Uint32()
  external int IRQD_Count;

  @Uint32()
  external int IRQD_Type;

  @Uint32()
  external int IRQD_Flags;

  @Uint32()
  external int IRQD_Alloc_Num;

  @Uint32()
  external int IRQD_Affinity;
}

/// {@category Struct}
@Packed(1)
class IRQ_DES_64 extends Struct {
  @Uint32()
  external int IRQD_Count;

  @Uint32()
  external int IRQD_Type;

  @Uint32()
  external int IRQD_Flags;

  @Uint32()
  external int IRQD_Alloc_Num;

  @Uint64()
  external int IRQD_Affinity;
}

/// {@category Struct}
@Packed(1)
class IRQ_RANGE extends Struct {
  @Uint32()
  external int IRQR_Min;

  @Uint32()
  external int IRQR_Max;

  @Uint32()
  external int IRQR_Flags;
}

/// {@category Struct}
@Packed(1)
class IRQ_RESOURCE_32 extends Struct {
  external IRQ_DES_32 IRQ_Header;

  @Array(1)
  external Array<IRQ_RANGE> IRQ_Data;
}

/// {@category Struct}
@Packed(1)
class IRQ_RESOURCE_64 extends Struct {
  external IRQ_DES_64 IRQ_Header;

  @Array(1)
  external Array<IRQ_RANGE> IRQ_Data;
}

/// {@category Struct}
@Packed(1)
class MEM_DES extends Struct {
  @Uint32()
  external int MD_Count;

  @Uint32()
  external int MD_Type;

  @Uint64()
  external int MD_Alloc_Base;

  @Uint64()
  external int MD_Alloc_End;

  @Uint32()
  external int MD_Flags;

  @Uint32()
  external int MD_Reserved;
}

/// {@category Struct}
@Packed(1)
class MEM_RANGE extends Struct {
  @Uint64()
  external int MR_Align;

  @Uint32()
  external int MR_nBytes;

  @Uint64()
  external int MR_Min;

  @Uint64()
  external int MR_Max;

  @Uint32()
  external int MR_Flags;

  @Uint32()
  external int MR_Reserved;
}

/// {@category Struct}
@Packed(1)
class MEM_RESOURCE extends Struct {
  external MEM_DES MEM_Header;

  @Array(1)
  external Array<MEM_RANGE> MEM_Data;
}

/// {@category Struct}
@Packed(1)
class MFCARD_DES extends Struct {
  @Uint32()
  external int PMF_Count;

  @Uint32()
  external int PMF_Type;

  @Uint32()
  external int PMF_Flags;

  @Uint8()
  external int PMF_ConfigOptions;

  @Uint8()
  external int PMF_IoResourceIndex;

  @Array(2)
  external Array<Uint8> PMF_Reserved;

  @Uint32()
  external int PMF_ConfigRegisterBase;
}

/// {@category Struct}
@Packed(1)
class MFCARD_RESOURCE extends Struct {
  external MFCARD_DES MfCard_Header;
}

/// {@category Struct}
@Packed(1)
class Mem_Large_Des_s extends Struct {
  @Uint32()
  external int MLD_Count;

  @Uint32()
  external int MLD_Type;

  @Uint64()
  external int MLD_Alloc_Base;

  @Uint64()
  external int MLD_Alloc_End;

  @Uint32()
  external int MLD_Flags;

  @Uint32()
  external int MLD_Reserved;
}

/// {@category Struct}
@Packed(1)
class Mem_Large_Range_s extends Struct {
  @Uint64()
  external int MLR_Align;

  @Uint64()
  external int MLR_nBytes;

  @Uint64()
  external int MLR_Min;

  @Uint64()
  external int MLR_Max;

  @Uint32()
  external int MLR_Flags;

  @Uint32()
  external int MLR_Reserved;
}

/// {@category Struct}
@Packed(1)
class Mem_Large_Resource_s extends Struct {
  external Mem_Large_Des_s MEM_LARGE_Header;

  @Array(1)
  external Array<Mem_Large_Range_s> MEM_LARGE_Data;
}

/// {@category Struct}
@Packed(1)
class PCCARD_DES extends Struct {
  @Uint32()
  external int PCD_Count;

  @Uint32()
  external int PCD_Type;

  @Uint32()
  external int PCD_Flags;

  @Uint8()
  external int PCD_ConfigIndex;

  @Array(3)
  external Array<Uint8> PCD_Reserved;

  @Uint32()
  external int PCD_MemoryCardBase1;

  @Uint32()
  external int PCD_MemoryCardBase2;

  @Array(2)
  external Array<Uint32> PCD_MemoryCardBase;

  @Array(2)
  external Array<Uint16> PCD_MemoryFlags;

  @Array(2)
  external Array<Uint8> PCD_IoFlags;
}

/// {@category Struct}
@Packed(1)
class PCCARD_RESOURCE extends Struct {
  external PCCARD_DES PcCard_Header;
}

/// {@category Struct}
class SOURCE_MEDIA_ extends Struct {
  external Pointer<Utf16> Reserved;

  external Pointer<Utf16> Tagfile;

  external Pointer<Utf16> Description;

  external Pointer<Utf16> SourcePath;

  external Pointer<Utf16> SourceFile;

  @Uint32()
  external int Flags;
}

/// {@category Struct}
class SP_ALTPLATFORM_INFO_V1 extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int Platform;

  @Uint32()
  external int MajorVersion;

  @Uint32()
  external int MinorVersion;

  @Uint16()
  external int ProcessorArchitecture;

  @Uint16()
  external int Reserved;
}

/// {@category Struct}
class SP_ALTPLATFORM_INFO_V2 extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int Platform;

  @Uint32()
  external int MajorVersion;

  @Uint32()
  external int MinorVersion;

  @Uint16()
  external int ProcessorArchitecture;

  external _SP_ALTPLATFORM_INFO_V2__Anonymous_e__Union Anonymous;

  @Uint32()
  external int FirstValidatedMajorVersion;

  @Uint32()
  external int FirstValidatedMinorVersion;
}

/// {@category Struct}
class _SP_ALTPLATFORM_INFO_V2__Anonymous_e__Union extends Union {
  @Uint16()
  external int Reserved;

  @Uint16()
  external int Flags;
}

extension SP_ALTPLATFORM_INFO_V2_Extension on SP_ALTPLATFORM_INFO_V2 {
  int get Reserved => this.Anonymous.Reserved;
  set Reserved(int value) => this.Anonymous.Reserved = value;

  int get Flags => this.Anonymous.Flags;
  set Flags(int value) => this.Anonymous.Flags = value;
}

/// {@category Struct}
class SP_ALTPLATFORM_INFO_V3 extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int Platform;

  @Uint32()
  external int MajorVersion;

  @Uint32()
  external int MinorVersion;

  @Uint16()
  external int ProcessorArchitecture;

  external _SP_ALTPLATFORM_INFO_V3__Anonymous_e__Union Anonymous;

  @Uint32()
  external int FirstValidatedMajorVersion;

  @Uint32()
  external int FirstValidatedMinorVersion;

  @Uint8()
  external int ProductType;

  @Uint16()
  external int SuiteMask;

  @Uint32()
  external int BuildNumber;
}

/// {@category Struct}
class _SP_ALTPLATFORM_INFO_V3__Anonymous_e__Union extends Union {
  @Uint16()
  external int Reserved;

  @Uint16()
  external int Flags;
}

extension SP_ALTPLATFORM_INFO_V3_Extension on SP_ALTPLATFORM_INFO_V3 {
  int get Reserved => this.Anonymous.Reserved;
  set Reserved(int value) => this.Anonymous.Reserved = value;

  int get Flags => this.Anonymous.Flags;
  set Flags(int value) => this.Anonymous.Flags = value;
}

/// {@category Struct}
class SP_BACKUP_QUEUE_PARAMS_V1_ extends Struct {
  @Uint32()
  external int cbSize;

  @Array(260)
  external Array<Uint16> _FullInfPath;

  String get FullInfPath {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_FullInfPath[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set FullInfPath(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _FullInfPath[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Int32()
  external int FilenameOffset;
}

/// {@category Struct}
class SP_BACKUP_QUEUE_PARAMS_V2_ extends Struct {
  @Uint32()
  external int cbSize;

  @Array(260)
  external Array<Uint16> _FullInfPath;

  String get FullInfPath {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_FullInfPath[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set FullInfPath(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _FullInfPath[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Int32()
  external int FilenameOffset;

  @Array(260)
  external Array<Uint16> _ReinstallInstance;

  String get ReinstallInstance {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_ReinstallInstance[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set ReinstallInstance(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _ReinstallInstance[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class SP_CLASSIMAGELIST_DATA extends Struct {
  @Uint32()
  external int cbSize;

  @IntPtr()
  external int ImageList;

  @IntPtr()
  external int Reserved;
}

/// {@category Struct}
class SP_CLASSINSTALL_HEADER extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int InstallFunction;
}

/// {@category Struct}
class SP_DETECTDEVICE_PARAMS extends Struct {
  external SP_CLASSINSTALL_HEADER ClassInstallHeader;

  external Pointer<NativeFunction<PDETECT_PROGRESS_NOTIFY>>
      DetectProgressNotify;

  external Pointer ProgressNotifyParam;
}

/// {@category Struct}
class SP_DEVICE_INTERFACE_DATA extends Struct {
  @Uint32()
  external int cbSize;

  external GUID InterfaceClassGuid;

  @Uint32()
  external int Flags;

  @IntPtr()
  external int Reserved;
}

/// {@category Struct}
class SP_DEVICE_INTERFACE_DETAIL_DATA_ extends Struct {
  @Uint32()
  external int cbSize;

  @Array(1)
  external Array<Uint16> _DevicePath;

  String get DevicePath {
    final charCodes = <int>[];
    for (var i = 0; i < 1; i++) {
      charCodes.add(_DevicePath[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set DevicePath(String value) {
    final stringToStore = value.padRight(1, '\x00');
    for (var i = 0; i < 1; i++) {
      _DevicePath[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class SP_DEVINFO_DATA extends Struct {
  @Uint32()
  external int cbSize;

  external GUID ClassGuid;

  @Uint32()
  external int DevInst;

  @IntPtr()
  external int Reserved;
}

/// {@category Struct}
class SP_DEVINFO_LIST_DETAIL_DATA_ extends Struct {
  @Uint32()
  external int cbSize;

  external GUID ClassGuid;

  @IntPtr()
  external int RemoteMachineHandle;

  @Array(263)
  external Array<Uint16> _RemoteMachineName;

  String get RemoteMachineName {
    final charCodes = <int>[];
    for (var i = 0; i < 263; i++) {
      charCodes.add(_RemoteMachineName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set RemoteMachineName(String value) {
    final stringToStore = value.padRight(263, '\x00');
    for (var i = 0; i < 263; i++) {
      _RemoteMachineName[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class SP_DEVINSTALL_PARAMS_ extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int Flags;

  @Uint32()
  external int FlagsEx;

  @IntPtr()
  external int hwndParent;

  external Pointer<NativeFunction<PSP_FILE_CALLBACK_A>> InstallMsgHandler;

  external Pointer InstallMsgHandlerContext;

  external Pointer FileQueue;

  @IntPtr()
  external int ClassInstallReserved;

  @Uint32()
  external int Reserved;

  @Array(260)
  external Array<Uint16> _DriverPath;

  String get DriverPath {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_DriverPath[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set DriverPath(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _DriverPath[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class SP_DRVINFO_DATA_V1_ extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int DriverType;

  @IntPtr()
  external int Reserved;

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

  @Array(256)
  external Array<Uint16> _MfgName;

  String get MfgName {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_MfgName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set MfgName(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _MfgName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(256)
  external Array<Uint16> _ProviderName;

  String get ProviderName {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_ProviderName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set ProviderName(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _ProviderName[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class SP_DRVINFO_DATA_V2_ extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int DriverType;

  @IntPtr()
  external int Reserved;

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

  @Array(256)
  external Array<Uint16> _MfgName;

  String get MfgName {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_MfgName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set MfgName(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _MfgName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(256)
  external Array<Uint16> _ProviderName;

  String get ProviderName {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_ProviderName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set ProviderName(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _ProviderName[i] = stringToStore.codeUnitAt(i);
    }
  }

  external FILETIME DriverDate;

  @Uint64()
  external int DriverVersion;
}

/// {@category Struct}
class SP_DRVINFO_DETAIL_DATA_ extends Struct {
  @Uint32()
  external int cbSize;

  external FILETIME InfDate;

  @Uint32()
  external int CompatIDsOffset;

  @Uint32()
  external int CompatIDsLength;

  @IntPtr()
  external int Reserved;

  @Array(256)
  external Array<Uint16> _SectionName;

  String get SectionName {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_SectionName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set SectionName(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _SectionName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(260)
  external Array<Uint16> _InfFileName;

  String get InfFileName {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_InfFileName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set InfFileName(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _InfFileName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(256)
  external Array<Uint16> _DrvDescription;

  String get DrvDescription {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_DrvDescription[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set DrvDescription(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _DrvDescription[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(1)
  external Array<Uint16> _HardwareID;

  String get HardwareID {
    final charCodes = <int>[];
    for (var i = 0; i < 1; i++) {
      charCodes.add(_HardwareID[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set HardwareID(String value) {
    final stringToStore = value.padRight(1, '\x00');
    for (var i = 0; i < 1; i++) {
      _HardwareID[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class SP_DRVINSTALL_PARAMS extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int Rank;

  @Uint32()
  external int Flags;

  @IntPtr()
  external int PrivateData;

  @Uint32()
  external int Reserved;
}

/// {@category Struct}
class SP_ENABLECLASS_PARAMS extends Struct {
  external SP_CLASSINSTALL_HEADER ClassInstallHeader;

  external GUID ClassGuid;

  @Uint32()
  external int EnableMessage;
}

/// {@category Struct}
class SP_FILE_COPY_PARAMS_ extends Struct {
  @Uint32()
  external int cbSize;

  external Pointer QueueHandle;

  external Pointer<Utf16> SourceRootPath;

  external Pointer<Utf16> SourcePath;

  external Pointer<Utf16> SourceFilename;

  external Pointer<Utf16> SourceDescription;

  external Pointer<Utf16> SourceTagfile;

  external Pointer<Utf16> TargetDirectory;

  external Pointer<Utf16> TargetFilename;

  @Uint32()
  external int CopyStyle;

  external Pointer LayoutInf;

  external Pointer<Utf16> SecurityDescriptor;
}

/// {@category Struct}
class SP_INF_INFORMATION extends Struct {
  @Uint32()
  external int InfStyle;

  @Uint32()
  external int InfCount;

  @Array(1)
  external Array<Uint8> VersionData;
}

/// {@category Struct}
class SP_INF_SIGNER_INFO_V1_ extends Struct {
  @Uint32()
  external int cbSize;

  @Array(260)
  external Array<Uint16> _CatalogFile;

  String get CatalogFile {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_CatalogFile[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set CatalogFile(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _CatalogFile[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(260)
  external Array<Uint16> _DigitalSigner;

  String get DigitalSigner {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_DigitalSigner[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set DigitalSigner(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _DigitalSigner[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(260)
  external Array<Uint16> _DigitalSignerVersion;

  String get DigitalSignerVersion {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_DigitalSignerVersion[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set DigitalSignerVersion(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _DigitalSignerVersion[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class SP_INF_SIGNER_INFO_V2_ extends Struct {
  @Uint32()
  external int cbSize;

  @Array(260)
  external Array<Uint16> _CatalogFile;

  String get CatalogFile {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_CatalogFile[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set CatalogFile(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _CatalogFile[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(260)
  external Array<Uint16> _DigitalSigner;

  String get DigitalSigner {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_DigitalSigner[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set DigitalSigner(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _DigitalSigner[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(260)
  external Array<Uint16> _DigitalSignerVersion;

  String get DigitalSignerVersion {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_DigitalSignerVersion[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set DigitalSignerVersion(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _DigitalSignerVersion[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int SignerScore;
}

/// {@category Struct}
class SP_INSTALLWIZARD_DATA extends Struct {
  external SP_CLASSINSTALL_HEADER ClassInstallHeader;

  @Uint32()
  external int Flags;

  @Array(20)
  external Array<IntPtr> DynamicPages;

  @Uint32()
  external int NumDynamicPages;

  @Uint32()
  external int DynamicPageFlags;

  @Uint32()
  external int PrivateFlags;

  @IntPtr()
  external int PrivateData;

  @IntPtr()
  external int hwndWizardDlg;
}

/// {@category Struct}
class SP_NEWDEVICEWIZARD_DATA extends Struct {
  external SP_CLASSINSTALL_HEADER ClassInstallHeader;

  @Uint32()
  external int Flags;

  @Array(20)
  external Array<IntPtr> DynamicPages;

  @Uint32()
  external int NumDynamicPages;

  @IntPtr()
  external int hwndWizardDlg;
}

/// {@category Struct}
class SP_ORIGINAL_FILE_INFO_ extends Struct {
  @Uint32()
  external int cbSize;

  @Array(260)
  external Array<Uint16> _OriginalInfName;

  String get OriginalInfName {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_OriginalInfName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set OriginalInfName(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _OriginalInfName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(260)
  external Array<Uint16> _OriginalCatalogName;

  String get OriginalCatalogName {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_OriginalCatalogName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set OriginalCatalogName(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _OriginalCatalogName[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class SP_POWERMESSAGEWAKE_PARAMS_ extends Struct {
  external SP_CLASSINSTALL_HEADER ClassInstallHeader;

  @Array(512)
  external Array<Uint16> _PowerMessageWake;

  String get PowerMessageWake {
    final charCodes = <int>[];
    for (var i = 0; i < 512; i++) {
      charCodes.add(_PowerMessageWake[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set PowerMessageWake(String value) {
    final stringToStore = value.padRight(512, '\x00');
    for (var i = 0; i < 512; i++) {
      _PowerMessageWake[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class SP_PROPCHANGE_PARAMS extends Struct {
  external SP_CLASSINSTALL_HEADER ClassInstallHeader;

  @Uint32()
  external int StateChange;

  @Uint32()
  external int Scope;

  @Uint32()
  external int HwProfile;
}

/// {@category Struct}
class SP_PROPSHEETPAGE_REQUEST extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int PageRequested;

  external Pointer DeviceInfoSet;

  external Pointer<SP_DEVINFO_DATA> DeviceInfoData;
}

/// {@category Struct}
class SP_REGISTER_CONTROL_STATUS extends Struct {
  @Uint32()
  external int cbSize;

  external Pointer<Utf16> FileName;

  @Uint32()
  external int Win32Error;

  @Uint32()
  external int FailureCode;
}

/// {@category Struct}
class SP_REMOVEDEVICE_PARAMS extends Struct {
  external SP_CLASSINSTALL_HEADER ClassInstallHeader;

  @Uint32()
  external int Scope;

  @Uint32()
  external int HwProfile;
}

/// {@category Struct}
class SP_SELECTDEVICE_PARAMS_ extends Struct {
  external SP_CLASSINSTALL_HEADER ClassInstallHeader;

  @Array(60)
  external Array<Uint16> _Title;

  String get Title {
    final charCodes = <int>[];
    for (var i = 0; i < 60; i++) {
      charCodes.add(_Title[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set Title(String value) {
    final stringToStore = value.padRight(60, '\x00');
    for (var i = 0; i < 60; i++) {
      _Title[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(256)
  external Array<Uint16> _Instructions;

  String get Instructions {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_Instructions[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set Instructions(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _Instructions[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(30)
  external Array<Uint16> _ListLabel;

  String get ListLabel {
    final charCodes = <int>[];
    for (var i = 0; i < 30; i++) {
      charCodes.add(_ListLabel[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set ListLabel(String value) {
    final stringToStore = value.padRight(30, '\x00');
    for (var i = 0; i < 30; i++) {
      _ListLabel[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(256)
  external Array<Uint16> _SubTitle;

  String get SubTitle {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_SubTitle[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set SubTitle(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _SubTitle[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class SP_TROUBLESHOOTER_PARAMS_ extends Struct {
  external SP_CLASSINSTALL_HEADER ClassInstallHeader;

  @Array(260)
  external Array<Uint16> _ChmFile;

  String get ChmFile {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_ChmFile[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set ChmFile(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _ChmFile[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(260)
  external Array<Uint16> _HtmlTroubleShooter;

  String get HtmlTroubleShooter {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_HtmlTroubleShooter[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set HtmlTroubleShooter(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _HtmlTroubleShooter[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class SP_UNREMOVEDEVICE_PARAMS extends Struct {
  external SP_CLASSINSTALL_HEADER ClassInstallHeader;

  @Uint32()
  external int Scope;

  @Uint32()
  external int HwProfile;
}
