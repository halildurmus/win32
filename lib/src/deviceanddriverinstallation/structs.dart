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

class HCMNOTIFICATION extends Struct {
  @IntPtr()
  external int Value;
}

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
  @Uint32()
  external int Anonymous;
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

class SP_DEVINFO_DATA extends Struct {
  @Uint32()
  external int cbSize;
  external GUID ClassGuid;
  @Uint32()
  external int DevInst;
  @IntPtr()
  external int Reserved;
}

class SP_DEVICE_INTERFACE_DATA extends Struct {
  @Uint32()
  external int cbSize;
  external GUID InterfaceClassGuid;
  @Uint32()
  external int Flags;
  @IntPtr()
  external int Reserved;
}

class SP_DEVICE_INTERFACE_DETAIL_DATA_A extends Struct {
  @Uint32()
  external int cbSize;
  @Array(1)
  external Array<Int8> DevicePath;
}

class SP_DEVICE_INTERFACE_DETAIL_DATA_W extends Struct {
  @Uint32()
  external int cbSize;
  @Array(1)
  external Array<Uint16> DevicePath;
}

class SP_DEVINFO_LIST_DETAIL_DATA_A extends Struct {
  @Uint32()
  external int cbSize;
  external GUID ClassGuid;
  @IntPtr()
  external int RemoteMachineHandle;
  @Array(129)
  external Array<Int8> RemoteMachineName;
}

class SP_DEVINFO_LIST_DETAIL_DATA_W extends Struct {
  @Uint32()
  external int cbSize;
  external GUID ClassGuid;
  @IntPtr()
  external int RemoteMachineHandle;
  @Array(129)
  external Array<Uint16> RemoteMachineName;
}

class SP_DEVINSTALL_PARAMS_A extends Struct {
  @Uint32()
  external int cbSize;
  @Uint32()
  external int Flags;
  @Uint32()
  external int FlagsEx;
  @IntPtr()
  external int hwndParent;
  external PSP_FILE_CALLBACK_A InstallMsgHandler;
  external Pointer InstallMsgHandlerContext;
  external Pointer FileQueue;
  @IntPtr()
  external int ClassInstallReserved;
  @Uint32()
  external int Reserved;
  @Array(129)
  external Array<Int8> DriverPath;
}

class SP_DEVINSTALL_PARAMS_W extends Struct {
  @Uint32()
  external int cbSize;
  @Uint32()
  external int Flags;
  @Uint32()
  external int FlagsEx;
  @IntPtr()
  external int hwndParent;
  external PSP_FILE_CALLBACK_A InstallMsgHandler;
  external Pointer InstallMsgHandlerContext;
  external Pointer FileQueue;
  @IntPtr()
  external int ClassInstallReserved;
  @Uint32()
  external int Reserved;
  @Array(129)
  external Array<Uint16> DriverPath;
}

class SP_CLASSINSTALL_HEADER extends Struct {
  @Uint32()
  external int cbSize;
  @Uint32()
  external int InstallFunction;
}

class SP_ENABLECLASS_PARAMS extends Struct {
  external SP_CLASSINSTALL_HEADER ClassInstallHeader;
  external GUID ClassGuid;
  @Uint32()
  external int EnableMessage;
}

class SP_PROPCHANGE_PARAMS extends Struct {
  external SP_CLASSINSTALL_HEADER ClassInstallHeader;
  @Uint32()
  external int StateChange;
  @Uint32()
  external int Scope;
  @Uint32()
  external int HwProfile;
}

class SP_REMOVEDEVICE_PARAMS extends Struct {
  external SP_CLASSINSTALL_HEADER ClassInstallHeader;
  @Uint32()
  external int Scope;
  @Uint32()
  external int HwProfile;
}

class SP_UNREMOVEDEVICE_PARAMS extends Struct {
  external SP_CLASSINSTALL_HEADER ClassInstallHeader;
  @Uint32()
  external int Scope;
  @Uint32()
  external int HwProfile;
}

class SP_SELECTDEVICE_PARAMS_A extends Struct {
  external SP_CLASSINSTALL_HEADER ClassInstallHeader;
  @Array(60)
  external Array<Int8> Title;
  @Array(129)
  external Array<Int8> Instructions;
  @Array(30)
  external Array<Int8> ListLabel;
  @Array(129)
  external Array<Int8> SubTitle;
  @Array(2)
  external Array<Uint8> Reserved;
}

class SP_SELECTDEVICE_PARAMS_W extends Struct {
  external SP_CLASSINSTALL_HEADER ClassInstallHeader;
  @Array(60)
  external Array<Uint16> Title;
  @Array(129)
  external Array<Uint16> Instructions;
  @Array(30)
  external Array<Uint16> ListLabel;
  @Array(129)
  external Array<Uint16> SubTitle;
}

class SP_DETECTDEVICE_PARAMS extends Struct {
  external SP_CLASSINSTALL_HEADER ClassInstallHeader;
  external PDETECT_PROGRESS_NOTIFY DetectProgressNotify;
  external Pointer ProgressNotifyParam;
}

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

class SP_TROUBLESHOOTER_PARAMS_A extends Struct {
  external SP_CLASSINSTALL_HEADER ClassInstallHeader;
  @Array(129)
  external Array<Int8> ChmFile;
  @Array(129)
  external Array<Int8> HtmlTroubleShooter;
}

class SP_TROUBLESHOOTER_PARAMS_W extends Struct {
  external SP_CLASSINSTALL_HEADER ClassInstallHeader;
  @Array(129)
  external Array<Uint16> ChmFile;
  @Array(129)
  external Array<Uint16> HtmlTroubleShooter;
}

class SP_POWERMESSAGEWAKE_PARAMS_A extends Struct {
  external SP_CLASSINSTALL_HEADER ClassInstallHeader;
  @Array(130)
  external Array<Int8> PowerMessageWake;
}

class SP_POWERMESSAGEWAKE_PARAMS_W extends Struct {
  external SP_CLASSINSTALL_HEADER ClassInstallHeader;
  @Array(130)
  external Array<Uint16> PowerMessageWake;
}

class SP_DRVINFO_DATA_V2_A extends Struct {
  @Uint32()
  external int cbSize;
  @Uint32()
  external int DriverType;
  @IntPtr()
  external int Reserved;
  @Array(129)
  external Array<Int8> Description;
  @Array(129)
  external Array<Int8> MfgName;
  @Array(129)
  external Array<Int8> ProviderName;
  external FILETIME DriverDate;
  @Uint64()
  external int DriverVersion;
}

class SP_DRVINFO_DATA_V2_W extends Struct {
  @Uint32()
  external int cbSize;
  @Uint32()
  external int DriverType;
  @IntPtr()
  external int Reserved;
  @Array(129)
  external Array<Uint16> Description;
  @Array(129)
  external Array<Uint16> MfgName;
  @Array(129)
  external Array<Uint16> ProviderName;
  external FILETIME DriverDate;
  @Uint64()
  external int DriverVersion;
}

class SP_DRVINFO_DATA_V1_A extends Struct {
  @Uint32()
  external int cbSize;
  @Uint32()
  external int DriverType;
  @IntPtr()
  external int Reserved;
  @Array(129)
  external Array<Int8> Description;
  @Array(129)
  external Array<Int8> MfgName;
  @Array(129)
  external Array<Int8> ProviderName;
}

class SP_DRVINFO_DATA_V1_W extends Struct {
  @Uint32()
  external int cbSize;
  @Uint32()
  external int DriverType;
  @IntPtr()
  external int Reserved;
  @Array(129)
  external Array<Uint16> Description;
  @Array(129)
  external Array<Uint16> MfgName;
  @Array(129)
  external Array<Uint16> ProviderName;
}

class SP_DRVINFO_DETAIL_DATA_A extends Struct {
  @Uint32()
  external int cbSize;
  external FILETIME InfDate;
  @Uint32()
  external int CompatIDsOffset;
  @Uint32()
  external int CompatIDsLength;
  @IntPtr()
  external int Reserved;
  @Array(129)
  external Array<Int8> SectionName;
  @Array(129)
  external Array<Int8> InfFileName;
  @Array(129)
  external Array<Int8> DrvDescription;
  @Array(1)
  external Array<Int8> HardwareID;
}

class SP_DRVINFO_DETAIL_DATA_W extends Struct {
  @Uint32()
  external int cbSize;
  external FILETIME InfDate;
  @Uint32()
  external int CompatIDsOffset;
  @Uint32()
  external int CompatIDsLength;
  @IntPtr()
  external int Reserved;
  @Array(129)
  external Array<Uint16> SectionName;
  @Array(129)
  external Array<Uint16> InfFileName;
  @Array(129)
  external Array<Uint16> DrvDescription;
  @Array(1)
  external Array<Uint16> HardwareID;
}

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

class COINSTALLER_CONTEXT_DATA extends Struct {
  @Int32()
  external int PostProcessing;
  @Uint32()
  external int InstallResult;
  external Pointer PrivateData;
}

class SP_CLASSIMAGELIST_DATA extends Struct {
  @Uint32()
  external int cbSize;
  @IntPtr()
  external int ImageList;
  @IntPtr()
  external int Reserved;
}

class SP_PROPSHEETPAGE_REQUEST extends Struct {
  @Uint32()
  external int cbSize;
  @Uint32()
  external int PageRequested;
  external Pointer DeviceInfoSet;
  external Pointer<SP_DEVINFO_DATA> DeviceInfoData;
}

class SP_BACKUP_QUEUE_PARAMS_V2_A extends Struct {
  @Uint32()
  external int cbSize;
  @Array(129)
  external Array<Int8> FullInfPath;
  @Int32()
  external int FilenameOffset;
  @Array(129)
  external Array<Int8> ReinstallInstance;
}

class SP_BACKUP_QUEUE_PARAMS_V2_W extends Struct {
  @Uint32()
  external int cbSize;
  @Array(129)
  external Array<Uint16> FullInfPath;
  @Int32()
  external int FilenameOffset;
  @Array(129)
  external Array<Uint16> ReinstallInstance;
}

class SP_BACKUP_QUEUE_PARAMS_V1_A extends Struct {
  @Uint32()
  external int cbSize;
  @Array(129)
  external Array<Int8> FullInfPath;
  @Int32()
  external int FilenameOffset;
}

class SP_BACKUP_QUEUE_PARAMS_V1_W extends Struct {
  @Uint32()
  external int cbSize;
  @Array(129)
  external Array<Uint16> FullInfPath;
  @Int32()
  external int FilenameOffset;
}

class CONFLICT_DETAILS_A extends Struct {
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
  @Array(129)
  external Array<Int8> CD_szDescription;
}

class CONFLICT_DETAILS_W extends Struct {
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
  @Array(129)
  external Array<Uint16> CD_szDescription;
}

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

class MEM_RESOURCE extends Struct {
  external MEM_DES MEM_Header;
  @Array(1)
  external Array<MEM_RANGE> MEM_Data;
}

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

class Mem_Large_Resource_s extends Struct {
  external Mem_Large_Des_s MEM_LARGE_Header;
  @Array(1)
  external Array<Mem_Large_Range_s> MEM_LARGE_Data;
}

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

class IO_RESOURCE extends Struct {
  external IO_DES IO_Header;
  @Array(1)
  external Array<IO_RANGE> IO_Data;
}

class DMA_RANGE extends Struct {
  @Uint32()
  external int DR_Min;
  @Uint32()
  external int DR_Max;
  @Uint32()
  external int DR_Flags;
}

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

class DMA_RESOURCE extends Struct {
  external DMA_DES DMA_Header;
  @Array(1)
  external Array<DMA_RANGE> DMA_Data;
}

class IRQ_RANGE extends Struct {
  @Uint32()
  external int IRQR_Min;
  @Uint32()
  external int IRQR_Max;
  @Uint32()
  external int IRQR_Flags;
}

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

class IRQ_RESOURCE_32 extends Struct {
  external IRQ_DES_32 IRQ_Header;
  @Array(1)
  external Array<IRQ_RANGE> IRQ_Data;
}

class IRQ_RESOURCE_64 extends Struct {
  external IRQ_DES_64 IRQ_Header;
  @Array(1)
  external Array<IRQ_RANGE> IRQ_Data;
}

class DevPrivate_Range_s extends Struct {
  @Uint32()
  external int PR_Data1;
  @Uint32()
  external int PR_Data2;
  @Uint32()
  external int PR_Data3;
}

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

class DevPrivate_Resource_s extends Struct {
  external DevPrivate_Des_s PRV_Header;
  @Array(1)
  external Array<DevPrivate_Range_s> PRV_Data;
}

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

class CS_RESOURCE extends Struct {
  external CS_DES CS_Header;
}

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

class PCCARD_RESOURCE extends Struct {
  external PCCARD_DES PcCard_Header;
}

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

class MFCARD_RESOURCE extends Struct {
  external MFCARD_DES MfCard_Header;
}

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

class BUSNUMBER_RESOURCE extends Struct {
  external BUSNUMBER_DES BusNumber_Header;
  @Array(1)
  external Array<BUSNUMBER_RANGE> BusNumber_Data;
}

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

class Connection_Resource_s extends Struct {
  external Connection_Des_s Connection_Header;
}

class HWProfileInfo_sA extends Struct {
  @Uint32()
  external int HWPI_ulHWProfile;
  @Array(80)
  external Array<Int8> HWPI_szFriendlyName;
  @Uint32()
  external int HWPI_dwFlags;
}

class HWProfileInfo_sW extends Struct {
  @Uint32()
  external int HWPI_ulHWProfile;
  @Array(80)
  external Array<Uint16> HWPI_szFriendlyName;
  @Uint32()
  external int HWPI_dwFlags;
}

class CM_NOTIFY_FILTER extends Struct {
  @Uint32()
  external int cbSize;
  @Uint32()
  external int Flags;
  @Uint32()
  external int FilterType;
  @Uint32()
  external int Reserved;
  @Uint32()
  external int u;
}

class CM_NOTIFY_EVENT_DATA extends Struct {
  @Uint32()
  external int FilterType;
  @Uint32()
  external int Reserved;
  @Uint32()
  external int u;
}
