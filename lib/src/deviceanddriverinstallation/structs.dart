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
  @IntPtr() external int Value;
}

class SP_DEVINFO_DATA extends Struct {
  @Uint32() external int cbSize;
  external GUID ClassGuid;
  @Uint32() external int DevInst;
  @IntPtr() external int Reserved;
}

class SP_DEVICE_INTERFACE_DATA extends Struct {
  @Uint32() external int cbSize;
  external GUID InterfaceClassGuid;
  @Uint32() external int Flags;
  @IntPtr() external int Reserved;
}

class SP_DEVICE_INTERFACE_DETAIL_DATA_A extends Struct {
  @Uint32() external int cbSize;
  external __byte__ DevicePath;
}

class SP_DEVICE_INTERFACE_DETAIL_DATA_W extends Struct {
  @Uint32() external int cbSize;
  external __ushort__ DevicePath;
}

class SP_DEVINFO_LIST_DETAIL_DATA_A extends Struct {
  @Uint32() external int cbSize;
  external GUID ClassGuid;
  @IntPtr() external int RemoteMachineHandle;
  external __byte__ RemoteMachineName;
}

class SP_DEVINFO_LIST_DETAIL_DATA_W extends Struct {
  @Uint32() external int cbSize;
  external GUID ClassGuid;
  @IntPtr() external int RemoteMachineHandle;
  external __ushort__ RemoteMachineName;
}

class SP_DEVINSTALL_PARAMS_A extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int Flags;
  @Uint32() external int FlagsEx;
  @IntPtr() external int hwndParent;
  external PSP_FILE_CALLBACK_A InstallMsgHandler;
  external Pointer InstallMsgHandlerContext;
  external Pointer FileQueue;
  @IntPtr() external int ClassInstallReserved;
  @Uint32() external int Reserved;
  external __byte__ DriverPath;
}

class SP_DEVINSTALL_PARAMS_W extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int Flags;
  @Uint32() external int FlagsEx;
  @IntPtr() external int hwndParent;
  external PSP_FILE_CALLBACK_A InstallMsgHandler;
  external Pointer InstallMsgHandlerContext;
  external Pointer FileQueue;
  @IntPtr() external int ClassInstallReserved;
  @Uint32() external int Reserved;
  external __ushort__ DriverPath;
}

class SP_CLASSINSTALL_HEADER extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int InstallFunction;
}

class SP_ENABLECLASS_PARAMS extends Struct {
  external SP_CLASSINSTALL_HEADER ClassInstallHeader;
  external GUID ClassGuid;
  @Uint32() external int EnableMessage;
}

class SP_PROPCHANGE_PARAMS extends Struct {
  external SP_CLASSINSTALL_HEADER ClassInstallHeader;
  @Uint32() external int StateChange;
  @Uint32() external int Scope;
  @Uint32() external int HwProfile;
}

class SP_REMOVEDEVICE_PARAMS extends Struct {
  external SP_CLASSINSTALL_HEADER ClassInstallHeader;
  @Uint32() external int Scope;
  @Uint32() external int HwProfile;
}

class SP_UNREMOVEDEVICE_PARAMS extends Struct {
  external SP_CLASSINSTALL_HEADER ClassInstallHeader;
  @Uint32() external int Scope;
  @Uint32() external int HwProfile;
}

class SP_SELECTDEVICE_PARAMS_A extends Struct {
  external SP_CLASSINSTALL_HEADER ClassInstallHeader;
  external __byte__ Title;
  external __byte__ Instructions;
  external __byte__ ListLabel;
  external __byte__ SubTitle;
  external __ubyte__ Reserved;
}

class SP_SELECTDEVICE_PARAMS_W extends Struct {
  external SP_CLASSINSTALL_HEADER ClassInstallHeader;
  external __ushort__ Title;
  external __ushort__ Instructions;
  external __ushort__ ListLabel;
  external __ushort__ SubTitle;
}

class SP_DETECTDEVICE_PARAMS extends Struct {
  external SP_CLASSINSTALL_HEADER ClassInstallHeader;
  external PDETECT_PROGRESS_NOTIFY DetectProgressNotify;
  external Pointer ProgressNotifyParam;
}

class SP_INSTALLWIZARD_DATA extends Struct {
  external SP_CLASSINSTALL_HEADER ClassInstallHeader;
  @Uint32() external int Flags;
  external __intptr__ DynamicPages;
  @Uint32() external int NumDynamicPages;
  @Uint32() external int DynamicPageFlags;
  @Uint32() external int PrivateFlags;
  @IntPtr() external int PrivateData;
  @IntPtr() external int hwndWizardDlg;
}

class SP_NEWDEVICEWIZARD_DATA extends Struct {
  external SP_CLASSINSTALL_HEADER ClassInstallHeader;
  @Uint32() external int Flags;
  external __intptr__ DynamicPages;
  @Uint32() external int NumDynamicPages;
  @IntPtr() external int hwndWizardDlg;
}

class SP_TROUBLESHOOTER_PARAMS_A extends Struct {
  external SP_CLASSINSTALL_HEADER ClassInstallHeader;
  external __byte__ ChmFile;
  external __byte__ HtmlTroubleShooter;
}

class SP_TROUBLESHOOTER_PARAMS_W extends Struct {
  external SP_CLASSINSTALL_HEADER ClassInstallHeader;
  external __ushort__ ChmFile;
  external __ushort__ HtmlTroubleShooter;
}

class SP_POWERMESSAGEWAKE_PARAMS_A extends Struct {
  external SP_CLASSINSTALL_HEADER ClassInstallHeader;
  external __byte__ PowerMessageWake;
}

class SP_POWERMESSAGEWAKE_PARAMS_W extends Struct {
  external SP_CLASSINSTALL_HEADER ClassInstallHeader;
  external __ushort__ PowerMessageWake;
}

class SP_DRVINFO_DATA_V2_A extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int DriverType;
  @IntPtr() external int Reserved;
  external __byte__ Description;
  external __byte__ MfgName;
  external __byte__ ProviderName;
  external FILETIME DriverDate;
  @Uint64() external int DriverVersion;
}

class SP_DRVINFO_DATA_V2_W extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int DriverType;
  @IntPtr() external int Reserved;
  external __ushort__ Description;
  external __ushort__ MfgName;
  external __ushort__ ProviderName;
  external FILETIME DriverDate;
  @Uint64() external int DriverVersion;
}

class SP_DRVINFO_DATA_V1_A extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int DriverType;
  @IntPtr() external int Reserved;
  external __byte__ Description;
  external __byte__ MfgName;
  external __byte__ ProviderName;
}

class SP_DRVINFO_DATA_V1_W extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int DriverType;
  @IntPtr() external int Reserved;
  external __ushort__ Description;
  external __ushort__ MfgName;
  external __ushort__ ProviderName;
}

class SP_DRVINFO_DETAIL_DATA_A extends Struct {
  @Uint32() external int cbSize;
  external FILETIME InfDate;
  @Uint32() external int CompatIDsOffset;
  @Uint32() external int CompatIDsLength;
  @IntPtr() external int Reserved;
  external __byte__ SectionName;
  external __byte__ InfFileName;
  external __byte__ DrvDescription;
  external __byte__ HardwareID;
}

class SP_DRVINFO_DETAIL_DATA_W extends Struct {
  @Uint32() external int cbSize;
  external FILETIME InfDate;
  @Uint32() external int CompatIDsOffset;
  @Uint32() external int CompatIDsLength;
  @IntPtr() external int Reserved;
  external __ushort__ SectionName;
  external __ushort__ InfFileName;
  external __ushort__ DrvDescription;
  external __ushort__ HardwareID;
}

class SP_DRVINSTALL_PARAMS extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int Rank;
  @Uint32() external int Flags;
  @IntPtr() external int PrivateData;
  @Uint32() external int Reserved;
}

class COINSTALLER_CONTEXT_DATA extends Struct {
  @Int32() external int PostProcessing;
  @Uint32() external int InstallResult;
  external Pointer PrivateData;
}

class SP_CLASSIMAGELIST_DATA extends Struct {
  @Uint32() external int cbSize;
  external HIMAGELIST ImageList;
  @IntPtr() external int Reserved;
}

class SP_PROPSHEETPAGE_REQUEST extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int PageRequested;
  external Pointer DeviceInfoSet;
  external Pointer<SP_DEVINFO_DATA> DeviceInfoData;
}

class SP_BACKUP_QUEUE_PARAMS_V2_A extends Struct {
  @Uint32() external int cbSize;
  external __byte__ FullInfPath;
  @Int32() external int FilenameOffset;
  external __byte__ ReinstallInstance;
}

class SP_BACKUP_QUEUE_PARAMS_V2_W extends Struct {
  @Uint32() external int cbSize;
  external __ushort__ FullInfPath;
  @Int32() external int FilenameOffset;
  external __ushort__ ReinstallInstance;
}

class SP_BACKUP_QUEUE_PARAMS_V1_A extends Struct {
  @Uint32() external int cbSize;
  external __byte__ FullInfPath;
  @Int32() external int FilenameOffset;
}

class SP_BACKUP_QUEUE_PARAMS_V1_W extends Struct {
  @Uint32() external int cbSize;
  external __ushort__ FullInfPath;
  @Int32() external int FilenameOffset;
}

class CONFLICT_DETAILS_A extends Struct {
  @Uint32() external int CD_ulSize;
  @Uint32() external int CD_ulMask;
  @Uint32() external int CD_dnDevInst;
  @IntPtr() external int CD_rdResDes;
  @Uint32() external int CD_ulFlags;
  external __byte__ CD_szDescription;
}

class CONFLICT_DETAILS_W extends Struct {
  @Uint32() external int CD_ulSize;
  @Uint32() external int CD_ulMask;
  @Uint32() external int CD_dnDevInst;
  @IntPtr() external int CD_rdResDes;
  @Uint32() external int CD_ulFlags;
  external __ushort__ CD_szDescription;
}

class MEM_RANGE extends Struct {
  @Uint64() external int MR_Align;
  @Uint32() external int MR_nBytes;
  @Uint64() external int MR_Min;
  @Uint64() external int MR_Max;
  @Uint32() external int MR_Flags;
  @Uint32() external int MR_Reserved;
}

class MEM_DES extends Struct {
  @Uint32() external int MD_Count;
  @Uint32() external int MD_Type;
  @Uint64() external int MD_Alloc_Base;
  @Uint64() external int MD_Alloc_End;
  @Uint32() external int MD_Flags;
  @Uint32() external int MD_Reserved;
}

class MEM_RESOURCE extends Struct {
  external MEM_DES MEM_Header;
  external MEM_RANGE MEM_Data;
}

class Mem_Large_Range_s extends Struct {
  @Uint64() external int MLR_Align;
  @Uint64() external int MLR_nBytes;
  @Uint64() external int MLR_Min;
  @Uint64() external int MLR_Max;
  @Uint32() external int MLR_Flags;
  @Uint32() external int MLR_Reserved;
}

class Mem_Large_Des_s extends Struct {
  @Uint32() external int MLD_Count;
  @Uint32() external int MLD_Type;
  @Uint64() external int MLD_Alloc_Base;
  @Uint64() external int MLD_Alloc_End;
  @Uint32() external int MLD_Flags;
  @Uint32() external int MLD_Reserved;
}

class Mem_Large_Resource_s extends Struct {
  external Mem_Large_Des_s MEM_LARGE_Header;
  external Mem_Large_Range_s MEM_LARGE_Data;
}

class IO_RANGE extends Struct {
  @Uint64() external int IOR_Align;
  @Uint32() external int IOR_nPorts;
  @Uint64() external int IOR_Min;
  @Uint64() external int IOR_Max;
  @Uint32() external int IOR_RangeFlags;
  @Uint64() external int IOR_Alias;
}

class IO_DES extends Struct {
  @Uint32() external int IOD_Count;
  @Uint32() external int IOD_Type;
  @Uint64() external int IOD_Alloc_Base;
  @Uint64() external int IOD_Alloc_End;
  @Uint32() external int IOD_DesFlags;
}

class IO_RESOURCE extends Struct {
  external IO_DES IO_Header;
  external IO_RANGE IO_Data;
}

class DMA_RANGE extends Struct {
  @Uint32() external int DR_Min;
  @Uint32() external int DR_Max;
  @Uint32() external int DR_Flags;
}

class DMA_DES extends Struct {
  @Uint32() external int DD_Count;
  @Uint32() external int DD_Type;
  @Uint32() external int DD_Flags;
  @Uint32() external int DD_Alloc_Chan;
}

class DMA_RESOURCE extends Struct {
  external DMA_DES DMA_Header;
  external DMA_RANGE DMA_Data;
}

class IRQ_RANGE extends Struct {
  @Uint32() external int IRQR_Min;
  @Uint32() external int IRQR_Max;
  @Uint32() external int IRQR_Flags;
}

class IRQ_DES_32 extends Struct {
  @Uint32() external int IRQD_Count;
  @Uint32() external int IRQD_Type;
  @Uint32() external int IRQD_Flags;
  @Uint32() external int IRQD_Alloc_Num;
  @Uint32() external int IRQD_Affinity;
}

class IRQ_DES_64 extends Struct {
  @Uint32() external int IRQD_Count;
  @Uint32() external int IRQD_Type;
  @Uint32() external int IRQD_Flags;
  @Uint32() external int IRQD_Alloc_Num;
  @Uint64() external int IRQD_Affinity;
}

class IRQ_RESOURCE_32 extends Struct {
  external IRQ_DES_32 IRQ_Header;
  external IRQ_RANGE IRQ_Data;
}

class IRQ_RESOURCE_64 extends Struct {
  external IRQ_DES_64 IRQ_Header;
  external IRQ_RANGE IRQ_Data;
}

class DevPrivate_Range_s extends Struct {
  @Uint32() external int PR_Data1;
  @Uint32() external int PR_Data2;
  @Uint32() external int PR_Data3;
}

class DevPrivate_Des_s extends Struct {
  @Uint32() external int PD_Count;
  @Uint32() external int PD_Type;
  @Uint32() external int PD_Data1;
  @Uint32() external int PD_Data2;
  @Uint32() external int PD_Data3;
  @Uint32() external int PD_Flags;
}

class DevPrivate_Resource_s extends Struct {
  external DevPrivate_Des_s PRV_Header;
  external DevPrivate_Range_s PRV_Data;
}

class CS_DES extends Struct {
  @Uint32() external int CSD_SignatureLength;
  @Uint32() external int CSD_LegacyDataOffset;
  @Uint32() external int CSD_LegacyDataSize;
  @Uint32() external int CSD_Flags;
  external GUID CSD_ClassGuid;
  external __ubyte__ CSD_Signature;
}

class CS_RESOURCE extends Struct {
  external CS_DES CS_Header;
}

class PCCARD_DES extends Struct {
  @Uint32() external int PCD_Count;
  @Uint32() external int PCD_Type;
  @Uint32() external int PCD_Flags;
  @Uint8() external int PCD_ConfigIndex;
  external __ubyte__ PCD_Reserved;
  @Uint32() external int PCD_MemoryCardBase1;
  @Uint32() external int PCD_MemoryCardBase2;
  external __uint__ PCD_MemoryCardBase;
  external __ushort__ PCD_MemoryFlags;
  external __ubyte__ PCD_IoFlags;
}

class PCCARD_RESOURCE extends Struct {
  external PCCARD_DES PcCard_Header;
}

class MFCARD_DES extends Struct {
  @Uint32() external int PMF_Count;
  @Uint32() external int PMF_Type;
  @Uint32() external int PMF_Flags;
  @Uint8() external int PMF_ConfigOptions;
  @Uint8() external int PMF_IoResourceIndex;
  external __ubyte__ PMF_Reserved;
  @Uint32() external int PMF_ConfigRegisterBase;
}

class MFCARD_RESOURCE extends Struct {
  external MFCARD_DES MfCard_Header;
}

class BUSNUMBER_RANGE extends Struct {
  @Uint32() external int BUSR_Min;
  @Uint32() external int BUSR_Max;
  @Uint32() external int BUSR_nBusNumbers;
  @Uint32() external int BUSR_Flags;
}

class BUSNUMBER_DES extends Struct {
  @Uint32() external int BUSD_Count;
  @Uint32() external int BUSD_Type;
  @Uint32() external int BUSD_Flags;
  @Uint32() external int BUSD_Alloc_Base;
  @Uint32() external int BUSD_Alloc_End;
}

class BUSNUMBER_RESOURCE extends Struct {
  external BUSNUMBER_DES BusNumber_Header;
  external BUSNUMBER_RANGE BusNumber_Data;
}

class Connection_Des_s extends Struct {
  @Uint32() external int COND_Type;
  @Uint32() external int COND_Flags;
  @Uint8() external int COND_Class;
  @Uint8() external int COND_ClassType;
  @Uint8() external int COND_Reserved1;
  @Uint8() external int COND_Reserved2;
  @Int64() external int COND_Id;
}

class Connection_Resource_s extends Struct {
  external Connection_Des_s Connection_Header;
}

class HWProfileInfo_sA extends Struct {
  @Uint32() external int HWPI_ulHWProfile;
  external __byte__ HWPI_szFriendlyName;
  @Uint32() external int HWPI_dwFlags;
}

class HWProfileInfo_sW extends Struct {
  @Uint32() external int HWPI_ulHWProfile;
  external __ushort__ HWPI_szFriendlyName;
  @Uint32() external int HWPI_dwFlags;
}

