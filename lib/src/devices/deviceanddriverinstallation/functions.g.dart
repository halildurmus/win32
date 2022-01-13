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
import '../../devices/deviceanddriverinstallation/structs.g.dart';
import '../../devices/deviceanddriverinstallation/callbacks.g.dart';
import '../../graphics/gdi/structs.g.dart';
import '../../ui/controls/structs.g.dart';
import '../../devices/properties/structs.g.dart';
import '../../ui/windowsandmessaging/structs.g.dart';
import '../../system/registry/structs.g.dart';
import '../../data/htmlhelp/structs.g.dart'; // -----------------------------------------------------------------------

// setupapi.dll
// -----------------------------------------------------------------------
final _setupapi = DynamicLibrary.open('setupapi.dll');

void InstallHinfSection(
  int Window,
  int ModuleHandle,
  Pointer<Utf16> CommandLine,
  int ShowCommand,
) =>
    _InstallHinfSection(
      Window,
      ModuleHandle,
      CommandLine,
      ShowCommand,
    );

late final _InstallHinfSection = _setupapi.lookupFunction<
    Void Function(
  IntPtr Window,
  IntPtr ModuleHandle,
  Pointer<Utf16> CommandLine,
  Int32 ShowCommand,
),
    void Function(
  int Window,
  int ModuleHandle,
  Pointer<Utf16> CommandLine,
  int ShowCommand,
)>('InstallHinfSectionW');

int SetupAddInstallSectionToDiskSpaceList(
  Pointer DiskSpace,
  Pointer InfHandle,
  Pointer LayoutInfHandle,
  Pointer<Utf16> SectionName,
  Pointer Reserved1,
  int Reserved2,
) =>
    _SetupAddInstallSectionToDiskSpaceList(
      DiskSpace,
      InfHandle,
      LayoutInfHandle,
      SectionName,
      Reserved1,
      Reserved2,
    );

late final _SetupAddInstallSectionToDiskSpaceList = _setupapi.lookupFunction<
    Int32 Function(
  Pointer DiskSpace,
  Pointer InfHandle,
  Pointer LayoutInfHandle,
  Pointer<Utf16> SectionName,
  Pointer Reserved1,
  Uint32 Reserved2,
),
    int Function(
  Pointer DiskSpace,
  Pointer InfHandle,
  Pointer LayoutInfHandle,
  Pointer<Utf16> SectionName,
  Pointer Reserved1,
  int Reserved2,
)>('SetupAddInstallSectionToDiskSpaceListW');

int SetupAddSectionToDiskSpaceList(
  Pointer DiskSpace,
  Pointer InfHandle,
  Pointer ListInfHandle,
  Pointer<Utf16> SectionName,
  int Operation,
  Pointer Reserved1,
  int Reserved2,
) =>
    _SetupAddSectionToDiskSpaceList(
      DiskSpace,
      InfHandle,
      ListInfHandle,
      SectionName,
      Operation,
      Reserved1,
      Reserved2,
    );

late final _SetupAddSectionToDiskSpaceList = _setupapi.lookupFunction<
    Int32 Function(
  Pointer DiskSpace,
  Pointer InfHandle,
  Pointer ListInfHandle,
  Pointer<Utf16> SectionName,
  Uint32 Operation,
  Pointer Reserved1,
  Uint32 Reserved2,
),
    int Function(
  Pointer DiskSpace,
  Pointer InfHandle,
  Pointer ListInfHandle,
  Pointer<Utf16> SectionName,
  int Operation,
  Pointer Reserved1,
  int Reserved2,
)>('SetupAddSectionToDiskSpaceListW');

int SetupAddToDiskSpaceList(
  Pointer DiskSpace,
  Pointer<Utf16> TargetFilespec,
  int FileSize,
  int Operation,
  Pointer Reserved1,
  int Reserved2,
) =>
    _SetupAddToDiskSpaceList(
      DiskSpace,
      TargetFilespec,
      FileSize,
      Operation,
      Reserved1,
      Reserved2,
    );

late final _SetupAddToDiskSpaceList = _setupapi.lookupFunction<
    Int32 Function(
  Pointer DiskSpace,
  Pointer<Utf16> TargetFilespec,
  Int64 FileSize,
  Uint32 Operation,
  Pointer Reserved1,
  Uint32 Reserved2,
),
    int Function(
  Pointer DiskSpace,
  Pointer<Utf16> TargetFilespec,
  int FileSize,
  int Operation,
  Pointer Reserved1,
  int Reserved2,
)>('SetupAddToDiskSpaceListW');

int SetupAddToSourceList(
  int Flags,
  Pointer<Utf16> Source,
) =>
    _SetupAddToSourceList(
      Flags,
      Source,
    );

late final _SetupAddToSourceList = _setupapi.lookupFunction<
    Int32 Function(
  Uint32 Flags,
  Pointer<Utf16> Source,
),
    int Function(
  int Flags,
  Pointer<Utf16> Source,
)>('SetupAddToSourceListW');

int SetupAdjustDiskSpaceList(
  Pointer DiskSpace,
  Pointer<Utf16> DriveRoot,
  int Amount,
  Pointer Reserved1,
  int Reserved2,
) =>
    _SetupAdjustDiskSpaceList(
      DiskSpace,
      DriveRoot,
      Amount,
      Reserved1,
      Reserved2,
    );

late final _SetupAdjustDiskSpaceList = _setupapi.lookupFunction<
    Int32 Function(
  Pointer DiskSpace,
  Pointer<Utf16> DriveRoot,
  Int64 Amount,
  Pointer Reserved1,
  Uint32 Reserved2,
),
    int Function(
  Pointer DiskSpace,
  Pointer<Utf16> DriveRoot,
  int Amount,
  Pointer Reserved1,
  int Reserved2,
)>('SetupAdjustDiskSpaceListW');

int SetupBackupError(
  int hwndParent,
  Pointer<Utf16> DialogTitle,
  Pointer<Utf16> SourceFile,
  Pointer<Utf16> TargetFile,
  int Win32ErrorCode,
  int Style,
) =>
    _SetupBackupError(
      hwndParent,
      DialogTitle,
      SourceFile,
      TargetFile,
      Win32ErrorCode,
      Style,
    );

late final _SetupBackupError = _setupapi.lookupFunction<
    Uint32 Function(
  IntPtr hwndParent,
  Pointer<Utf16> DialogTitle,
  Pointer<Utf16> SourceFile,
  Pointer<Utf16> TargetFile,
  Uint32 Win32ErrorCode,
  Uint32 Style,
),
    int Function(
  int hwndParent,
  Pointer<Utf16> DialogTitle,
  Pointer<Utf16> SourceFile,
  Pointer<Utf16> TargetFile,
  int Win32ErrorCode,
  int Style,
)>('SetupBackupErrorW');

int SetupCancelTemporarySourceList() => _SetupCancelTemporarySourceList();

late final _SetupCancelTemporarySourceList =
    _setupapi.lookupFunction<Int32 Function(), int Function()>(
        'SetupCancelTemporarySourceList');

int SetupCloseFileQueue(
  Pointer QueueHandle,
) =>
    _SetupCloseFileQueue(
      QueueHandle,
    );

late final _SetupCloseFileQueue = _setupapi.lookupFunction<
    Int32 Function(
  Pointer QueueHandle,
),
    int Function(
  Pointer QueueHandle,
)>('SetupCloseFileQueue');

void SetupCloseInfFile(
  Pointer InfHandle,
) =>
    _SetupCloseInfFile(
      InfHandle,
    );

late final _SetupCloseInfFile = _setupapi.lookupFunction<
    Void Function(
  Pointer InfHandle,
),
    void Function(
  Pointer InfHandle,
)>('SetupCloseInfFile');

void SetupCloseLog() => _SetupCloseLog();

late final _SetupCloseLog =
    _setupapi.lookupFunction<Void Function(), void Function()>('SetupCloseLog');

int SetupCommitFileQueue(
  int Owner,
  Pointer QueueHandle,
  Pointer<NativeFunction<PSP_FILE_CALLBACK_W>> MsgHandler,
  Pointer Context,
) =>
    _SetupCommitFileQueue(
      Owner,
      QueueHandle,
      MsgHandler,
      Context,
    );

late final _SetupCommitFileQueue = _setupapi.lookupFunction<
    Int32 Function(
  IntPtr Owner,
  Pointer QueueHandle,
  Pointer<NativeFunction<PSP_FILE_CALLBACK_W>> MsgHandler,
  Pointer Context,
),
    int Function(
  int Owner,
  Pointer QueueHandle,
  Pointer<NativeFunction<PSP_FILE_CALLBACK_W>> MsgHandler,
  Pointer Context,
)>('SetupCommitFileQueueW');

int SetupConfigureWmiFromInfSection(
  Pointer InfHandle,
  Pointer<Utf16> SectionName,
  int Flags,
) =>
    _SetupConfigureWmiFromInfSection(
      InfHandle,
      SectionName,
      Flags,
    );

late final _SetupConfigureWmiFromInfSection = _setupapi.lookupFunction<
    Int32 Function(
  Pointer InfHandle,
  Pointer<Utf16> SectionName,
  Uint32 Flags,
),
    int Function(
  Pointer InfHandle,
  Pointer<Utf16> SectionName,
  int Flags,
)>('SetupConfigureWmiFromInfSectionW');

int SetupCopyError(
  int hwndParent,
  Pointer<Utf16> DialogTitle,
  Pointer<Utf16> DiskName,
  Pointer<Utf16> PathToSource,
  Pointer<Utf16> SourceFile,
  Pointer<Utf16> TargetPathFile,
  int Win32ErrorCode,
  int Style,
  Pointer<Utf16> PathBuffer,
  int PathBufferSize,
  Pointer<Uint32> PathRequiredSize,
) =>
    _SetupCopyError(
      hwndParent,
      DialogTitle,
      DiskName,
      PathToSource,
      SourceFile,
      TargetPathFile,
      Win32ErrorCode,
      Style,
      PathBuffer,
      PathBufferSize,
      PathRequiredSize,
    );

late final _SetupCopyError = _setupapi.lookupFunction<
    Uint32 Function(
  IntPtr hwndParent,
  Pointer<Utf16> DialogTitle,
  Pointer<Utf16> DiskName,
  Pointer<Utf16> PathToSource,
  Pointer<Utf16> SourceFile,
  Pointer<Utf16> TargetPathFile,
  Uint32 Win32ErrorCode,
  Uint32 Style,
  Pointer<Utf16> PathBuffer,
  Uint32 PathBufferSize,
  Pointer<Uint32> PathRequiredSize,
),
    int Function(
  int hwndParent,
  Pointer<Utf16> DialogTitle,
  Pointer<Utf16> DiskName,
  Pointer<Utf16> PathToSource,
  Pointer<Utf16> SourceFile,
  Pointer<Utf16> TargetPathFile,
  int Win32ErrorCode,
  int Style,
  Pointer<Utf16> PathBuffer,
  int PathBufferSize,
  Pointer<Uint32> PathRequiredSize,
)>('SetupCopyErrorW');

int SetupCopyOEMInf(
  Pointer<Utf16> SourceInfFileName,
  Pointer<Utf16> OEMSourceMediaLocation,
  int OEMSourceMediaType,
  int CopyStyle,
  Pointer<Utf16> DestinationInfFileName,
  int DestinationInfFileNameSize,
  Pointer<Uint32> RequiredSize,
  Pointer<Pointer<Utf16>> DestinationInfFileNameComponent,
) =>
    _SetupCopyOEMInf(
      SourceInfFileName,
      OEMSourceMediaLocation,
      OEMSourceMediaType,
      CopyStyle,
      DestinationInfFileName,
      DestinationInfFileNameSize,
      RequiredSize,
      DestinationInfFileNameComponent,
    );

late final _SetupCopyOEMInf = _setupapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> SourceInfFileName,
  Pointer<Utf16> OEMSourceMediaLocation,
  Uint32 OEMSourceMediaType,
  Uint32 CopyStyle,
  Pointer<Utf16> DestinationInfFileName,
  Uint32 DestinationInfFileNameSize,
  Pointer<Uint32> RequiredSize,
  Pointer<Pointer<Utf16>> DestinationInfFileNameComponent,
),
    int Function(
  Pointer<Utf16> SourceInfFileName,
  Pointer<Utf16> OEMSourceMediaLocation,
  int OEMSourceMediaType,
  int CopyStyle,
  Pointer<Utf16> DestinationInfFileName,
  int DestinationInfFileNameSize,
  Pointer<Uint32> RequiredSize,
  Pointer<Pointer<Utf16>> DestinationInfFileNameComponent,
)>('SetupCopyOEMInfW');

Pointer SetupCreateDiskSpaceList(
  Pointer Reserved1,
  int Reserved2,
  int Flags,
) =>
    _SetupCreateDiskSpaceList(
      Reserved1,
      Reserved2,
      Flags,
    );

late final _SetupCreateDiskSpaceList = _setupapi.lookupFunction<
    Pointer Function(
  Pointer Reserved1,
  Uint32 Reserved2,
  Uint32 Flags,
),
    Pointer Function(
  Pointer Reserved1,
  int Reserved2,
  int Flags,
)>('SetupCreateDiskSpaceListW');

int SetupDecompressOrCopyFile(
  Pointer<Utf16> SourceFileName,
  Pointer<Utf16> TargetFileName,
  Pointer<Uint32> CompressionType,
) =>
    _SetupDecompressOrCopyFile(
      SourceFileName,
      TargetFileName,
      CompressionType,
    );

late final _SetupDecompressOrCopyFile = _setupapi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> SourceFileName,
  Pointer<Utf16> TargetFileName,
  Pointer<Uint32> CompressionType,
),
    int Function(
  Pointer<Utf16> SourceFileName,
  Pointer<Utf16> TargetFileName,
  Pointer<Uint32> CompressionType,
)>('SetupDecompressOrCopyFileW');

int SetupDefaultQueueCallback(
  Pointer Context,
  int Notification,
  int Param1,
  int Param2,
) =>
    _SetupDefaultQueueCallback(
      Context,
      Notification,
      Param1,
      Param2,
    );

late final _SetupDefaultQueueCallback = _setupapi.lookupFunction<
    Uint32 Function(
  Pointer Context,
  Uint32 Notification,
  IntPtr Param1,
  IntPtr Param2,
),
    int Function(
  Pointer Context,
  int Notification,
  int Param1,
  int Param2,
)>('SetupDefaultQueueCallbackW');

int SetupDeleteError(
  int hwndParent,
  Pointer<Utf16> DialogTitle,
  Pointer<Utf16> File,
  int Win32ErrorCode,
  int Style,
) =>
    _SetupDeleteError(
      hwndParent,
      DialogTitle,
      File,
      Win32ErrorCode,
      Style,
    );

late final _SetupDeleteError = _setupapi.lookupFunction<
    Uint32 Function(
  IntPtr hwndParent,
  Pointer<Utf16> DialogTitle,
  Pointer<Utf16> File,
  Uint32 Win32ErrorCode,
  Uint32 Style,
),
    int Function(
  int hwndParent,
  Pointer<Utf16> DialogTitle,
  Pointer<Utf16> File,
  int Win32ErrorCode,
  int Style,
)>('SetupDeleteErrorW');

int SetupDestroyDiskSpaceList(
  Pointer DiskSpace,
) =>
    _SetupDestroyDiskSpaceList(
      DiskSpace,
    );

late final _SetupDestroyDiskSpaceList = _setupapi.lookupFunction<
    Int32 Function(
  Pointer DiskSpace,
),
    int Function(
  Pointer DiskSpace,
)>('SetupDestroyDiskSpaceList');

int SetupDiAskForOEMDisk(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
) =>
    _SetupDiAskForOEMDisk(
      DeviceInfoSet,
      DeviceInfoData,
    );

late final _SetupDiAskForOEMDisk = _setupapi.lookupFunction<
    Int32 Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
),
    int Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
)>('SetupDiAskForOEMDisk');

int SetupDiBuildClassInfoList(
  int Flags,
  Pointer<GUID> ClassGuidList,
  int ClassGuidListSize,
  Pointer<Uint32> RequiredSize,
) =>
    _SetupDiBuildClassInfoList(
      Flags,
      ClassGuidList,
      ClassGuidListSize,
      RequiredSize,
    );

late final _SetupDiBuildClassInfoList = _setupapi.lookupFunction<
    Int32 Function(
  Uint32 Flags,
  Pointer<GUID> ClassGuidList,
  Uint32 ClassGuidListSize,
  Pointer<Uint32> RequiredSize,
),
    int Function(
  int Flags,
  Pointer<GUID> ClassGuidList,
  int ClassGuidListSize,
  Pointer<Uint32> RequiredSize,
)>('SetupDiBuildClassInfoList');

int SetupDiBuildClassInfoListEx(
  int Flags,
  Pointer<GUID> ClassGuidList,
  int ClassGuidListSize,
  Pointer<Uint32> RequiredSize,
  Pointer<Utf16> MachineName,
  Pointer Reserved,
) =>
    _SetupDiBuildClassInfoListEx(
      Flags,
      ClassGuidList,
      ClassGuidListSize,
      RequiredSize,
      MachineName,
      Reserved,
    );

late final _SetupDiBuildClassInfoListEx = _setupapi.lookupFunction<
    Int32 Function(
  Uint32 Flags,
  Pointer<GUID> ClassGuidList,
  Uint32 ClassGuidListSize,
  Pointer<Uint32> RequiredSize,
  Pointer<Utf16> MachineName,
  Pointer Reserved,
),
    int Function(
  int Flags,
  Pointer<GUID> ClassGuidList,
  int ClassGuidListSize,
  Pointer<Uint32> RequiredSize,
  Pointer<Utf16> MachineName,
  Pointer Reserved,
)>('SetupDiBuildClassInfoListExW');

int SetupDiBuildDriverInfoList(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  int DriverType,
) =>
    _SetupDiBuildDriverInfoList(
      DeviceInfoSet,
      DeviceInfoData,
      DriverType,
    );

late final _SetupDiBuildDriverInfoList = _setupapi.lookupFunction<
    Int32 Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  Uint32 DriverType,
),
    int Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  int DriverType,
)>('SetupDiBuildDriverInfoList');

int SetupDiCallClassInstaller(
  int InstallFunction,
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
) =>
    _SetupDiCallClassInstaller(
      InstallFunction,
      DeviceInfoSet,
      DeviceInfoData,
    );

late final _SetupDiCallClassInstaller = _setupapi.lookupFunction<
    Int32 Function(
  Uint32 InstallFunction,
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
),
    int Function(
  int InstallFunction,
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
)>('SetupDiCallClassInstaller');

int SetupDiCancelDriverInfoSearch(
  Pointer DeviceInfoSet,
) =>
    _SetupDiCancelDriverInfoSearch(
      DeviceInfoSet,
    );

late final _SetupDiCancelDriverInfoSearch = _setupapi.lookupFunction<
    Int32 Function(
  Pointer DeviceInfoSet,
),
    int Function(
  Pointer DeviceInfoSet,
)>('SetupDiCancelDriverInfoSearch');

int SetupDiChangeState(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
) =>
    _SetupDiChangeState(
      DeviceInfoSet,
      DeviceInfoData,
    );

late final _SetupDiChangeState = _setupapi.lookupFunction<
    Int32 Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
),
    int Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
)>('SetupDiChangeState');

int SetupDiClassGuidsFromNameEx(
  Pointer<Utf16> ClassName,
  Pointer<GUID> ClassGuidList,
  int ClassGuidListSize,
  Pointer<Uint32> RequiredSize,
  Pointer<Utf16> MachineName,
  Pointer Reserved,
) =>
    _SetupDiClassGuidsFromNameEx(
      ClassName,
      ClassGuidList,
      ClassGuidListSize,
      RequiredSize,
      MachineName,
      Reserved,
    );

late final _SetupDiClassGuidsFromNameEx = _setupapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> ClassName,
  Pointer<GUID> ClassGuidList,
  Uint32 ClassGuidListSize,
  Pointer<Uint32> RequiredSize,
  Pointer<Utf16> MachineName,
  Pointer Reserved,
),
    int Function(
  Pointer<Utf16> ClassName,
  Pointer<GUID> ClassGuidList,
  int ClassGuidListSize,
  Pointer<Uint32> RequiredSize,
  Pointer<Utf16> MachineName,
  Pointer Reserved,
)>('SetupDiClassGuidsFromNameExW');

int SetupDiClassGuidsFromName(
  Pointer<Utf16> ClassName,
  Pointer<GUID> ClassGuidList,
  int ClassGuidListSize,
  Pointer<Uint32> RequiredSize,
) =>
    _SetupDiClassGuidsFromName(
      ClassName,
      ClassGuidList,
      ClassGuidListSize,
      RequiredSize,
    );

late final _SetupDiClassGuidsFromName = _setupapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> ClassName,
  Pointer<GUID> ClassGuidList,
  Uint32 ClassGuidListSize,
  Pointer<Uint32> RequiredSize,
),
    int Function(
  Pointer<Utf16> ClassName,
  Pointer<GUID> ClassGuidList,
  int ClassGuidListSize,
  Pointer<Uint32> RequiredSize,
)>('SetupDiClassGuidsFromNameW');

int SetupDiClassNameFromGuidEx(
  Pointer<GUID> ClassGuid,
  Pointer<Utf16> ClassName,
  int ClassNameSize,
  Pointer<Uint32> RequiredSize,
  Pointer<Utf16> MachineName,
  Pointer Reserved,
) =>
    _SetupDiClassNameFromGuidEx(
      ClassGuid,
      ClassName,
      ClassNameSize,
      RequiredSize,
      MachineName,
      Reserved,
    );

late final _SetupDiClassNameFromGuidEx = _setupapi.lookupFunction<
    Int32 Function(
  Pointer<GUID> ClassGuid,
  Pointer<Utf16> ClassName,
  Uint32 ClassNameSize,
  Pointer<Uint32> RequiredSize,
  Pointer<Utf16> MachineName,
  Pointer Reserved,
),
    int Function(
  Pointer<GUID> ClassGuid,
  Pointer<Utf16> ClassName,
  int ClassNameSize,
  Pointer<Uint32> RequiredSize,
  Pointer<Utf16> MachineName,
  Pointer Reserved,
)>('SetupDiClassNameFromGuidExW');

int SetupDiClassNameFromGuid(
  Pointer<GUID> ClassGuid,
  Pointer<Utf16> ClassName,
  int ClassNameSize,
  Pointer<Uint32> RequiredSize,
) =>
    _SetupDiClassNameFromGuid(
      ClassGuid,
      ClassName,
      ClassNameSize,
      RequiredSize,
    );

late final _SetupDiClassNameFromGuid = _setupapi.lookupFunction<
    Int32 Function(
  Pointer<GUID> ClassGuid,
  Pointer<Utf16> ClassName,
  Uint32 ClassNameSize,
  Pointer<Uint32> RequiredSize,
),
    int Function(
  Pointer<GUID> ClassGuid,
  Pointer<Utf16> ClassName,
  int ClassNameSize,
  Pointer<Uint32> RequiredSize,
)>('SetupDiClassNameFromGuidW');

int SetupDiCreateDevRegKey(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  int Scope,
  int HwProfile,
  int KeyType,
  Pointer InfHandle,
  Pointer<Utf16> InfSectionName,
) =>
    _SetupDiCreateDevRegKey(
      DeviceInfoSet,
      DeviceInfoData,
      Scope,
      HwProfile,
      KeyType,
      InfHandle,
      InfSectionName,
    );

late final _SetupDiCreateDevRegKey = _setupapi.lookupFunction<
    IntPtr Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  Uint32 Scope,
  Uint32 HwProfile,
  Uint32 KeyType,
  Pointer InfHandle,
  Pointer<Utf16> InfSectionName,
),
    int Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  int Scope,
  int HwProfile,
  int KeyType,
  Pointer InfHandle,
  Pointer<Utf16> InfSectionName,
)>('SetupDiCreateDevRegKeyW');

Pointer SetupDiCreateDeviceInfoList(
  Pointer<GUID> ClassGuid,
  int hwndParent,
) =>
    _SetupDiCreateDeviceInfoList(
      ClassGuid,
      hwndParent,
    );

late final _SetupDiCreateDeviceInfoList = _setupapi.lookupFunction<
    Pointer Function(
  Pointer<GUID> ClassGuid,
  IntPtr hwndParent,
),
    Pointer Function(
  Pointer<GUID> ClassGuid,
  int hwndParent,
)>('SetupDiCreateDeviceInfoList');

Pointer SetupDiCreateDeviceInfoListEx(
  Pointer<GUID> ClassGuid,
  int hwndParent,
  Pointer<Utf16> MachineName,
  Pointer Reserved,
) =>
    _SetupDiCreateDeviceInfoListEx(
      ClassGuid,
      hwndParent,
      MachineName,
      Reserved,
    );

late final _SetupDiCreateDeviceInfoListEx = _setupapi.lookupFunction<
    Pointer Function(
  Pointer<GUID> ClassGuid,
  IntPtr hwndParent,
  Pointer<Utf16> MachineName,
  Pointer Reserved,
),
    Pointer Function(
  Pointer<GUID> ClassGuid,
  int hwndParent,
  Pointer<Utf16> MachineName,
  Pointer Reserved,
)>('SetupDiCreateDeviceInfoListExW');

int SetupDiCreateDeviceInfo(
  Pointer DeviceInfoSet,
  Pointer<Utf16> DeviceName,
  Pointer<GUID> ClassGuid,
  Pointer<Utf16> DeviceDescription,
  int hwndParent,
  int CreationFlags,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
) =>
    _SetupDiCreateDeviceInfo(
      DeviceInfoSet,
      DeviceName,
      ClassGuid,
      DeviceDescription,
      hwndParent,
      CreationFlags,
      DeviceInfoData,
    );

late final _SetupDiCreateDeviceInfo = _setupapi.lookupFunction<
    Int32 Function(
  Pointer DeviceInfoSet,
  Pointer<Utf16> DeviceName,
  Pointer<GUID> ClassGuid,
  Pointer<Utf16> DeviceDescription,
  IntPtr hwndParent,
  Uint32 CreationFlags,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
),
    int Function(
  Pointer DeviceInfoSet,
  Pointer<Utf16> DeviceName,
  Pointer<GUID> ClassGuid,
  Pointer<Utf16> DeviceDescription,
  int hwndParent,
  int CreationFlags,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
)>('SetupDiCreateDeviceInfoW');

int SetupDiCreateDeviceInterfaceRegKey(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVICE_INTERFACE_DATA> DeviceInterfaceData,
  int Reserved,
  int samDesired,
  Pointer InfHandle,
  Pointer<Utf16> InfSectionName,
) =>
    _SetupDiCreateDeviceInterfaceRegKey(
      DeviceInfoSet,
      DeviceInterfaceData,
      Reserved,
      samDesired,
      InfHandle,
      InfSectionName,
    );

late final _SetupDiCreateDeviceInterfaceRegKey = _setupapi.lookupFunction<
    IntPtr Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVICE_INTERFACE_DATA> DeviceInterfaceData,
  Uint32 Reserved,
  Uint32 samDesired,
  Pointer InfHandle,
  Pointer<Utf16> InfSectionName,
),
    int Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVICE_INTERFACE_DATA> DeviceInterfaceData,
  int Reserved,
  int samDesired,
  Pointer InfHandle,
  Pointer<Utf16> InfSectionName,
)>('SetupDiCreateDeviceInterfaceRegKeyW');

int SetupDiCreateDeviceInterface(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  Pointer<GUID> InterfaceClassGuid,
  Pointer<Utf16> ReferenceString,
  int CreationFlags,
  Pointer<SP_DEVICE_INTERFACE_DATA> DeviceInterfaceData,
) =>
    _SetupDiCreateDeviceInterface(
      DeviceInfoSet,
      DeviceInfoData,
      InterfaceClassGuid,
      ReferenceString,
      CreationFlags,
      DeviceInterfaceData,
    );

late final _SetupDiCreateDeviceInterface = _setupapi.lookupFunction<
    Int32 Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  Pointer<GUID> InterfaceClassGuid,
  Pointer<Utf16> ReferenceString,
  Uint32 CreationFlags,
  Pointer<SP_DEVICE_INTERFACE_DATA> DeviceInterfaceData,
),
    int Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  Pointer<GUID> InterfaceClassGuid,
  Pointer<Utf16> ReferenceString,
  int CreationFlags,
  Pointer<SP_DEVICE_INTERFACE_DATA> DeviceInterfaceData,
)>('SetupDiCreateDeviceInterfaceW');

int SetupDiDeleteDevRegKey(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  int Scope,
  int HwProfile,
  int KeyType,
) =>
    _SetupDiDeleteDevRegKey(
      DeviceInfoSet,
      DeviceInfoData,
      Scope,
      HwProfile,
      KeyType,
    );

late final _SetupDiDeleteDevRegKey = _setupapi.lookupFunction<
    Int32 Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  Uint32 Scope,
  Uint32 HwProfile,
  Uint32 KeyType,
),
    int Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  int Scope,
  int HwProfile,
  int KeyType,
)>('SetupDiDeleteDevRegKey');

int SetupDiDeleteDeviceInfo(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
) =>
    _SetupDiDeleteDeviceInfo(
      DeviceInfoSet,
      DeviceInfoData,
    );

late final _SetupDiDeleteDeviceInfo = _setupapi.lookupFunction<
    Int32 Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
),
    int Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
)>('SetupDiDeleteDeviceInfo');

int SetupDiDeleteDeviceInterfaceData(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVICE_INTERFACE_DATA> DeviceInterfaceData,
) =>
    _SetupDiDeleteDeviceInterfaceData(
      DeviceInfoSet,
      DeviceInterfaceData,
    );

late final _SetupDiDeleteDeviceInterfaceData = _setupapi.lookupFunction<
    Int32 Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVICE_INTERFACE_DATA> DeviceInterfaceData,
),
    int Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVICE_INTERFACE_DATA> DeviceInterfaceData,
)>('SetupDiDeleteDeviceInterfaceData');

int SetupDiDeleteDeviceInterfaceRegKey(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVICE_INTERFACE_DATA> DeviceInterfaceData,
  int Reserved,
) =>
    _SetupDiDeleteDeviceInterfaceRegKey(
      DeviceInfoSet,
      DeviceInterfaceData,
      Reserved,
    );

late final _SetupDiDeleteDeviceInterfaceRegKey = _setupapi.lookupFunction<
    Int32 Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVICE_INTERFACE_DATA> DeviceInterfaceData,
  Uint32 Reserved,
),
    int Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVICE_INTERFACE_DATA> DeviceInterfaceData,
  int Reserved,
)>('SetupDiDeleteDeviceInterfaceRegKey');

int SetupDiDestroyClassImageList(
  Pointer<SP_CLASSIMAGELIST_DATA> ClassImageListData,
) =>
    _SetupDiDestroyClassImageList(
      ClassImageListData,
    );

late final _SetupDiDestroyClassImageList = _setupapi.lookupFunction<
    Int32 Function(
  Pointer<SP_CLASSIMAGELIST_DATA> ClassImageListData,
),
    int Function(
  Pointer<SP_CLASSIMAGELIST_DATA> ClassImageListData,
)>('SetupDiDestroyClassImageList');

int SetupDiDestroyDeviceInfoList(
  Pointer DeviceInfoSet,
) =>
    _SetupDiDestroyDeviceInfoList(
      DeviceInfoSet,
    );

late final _SetupDiDestroyDeviceInfoList = _setupapi.lookupFunction<
    Int32 Function(
  Pointer DeviceInfoSet,
),
    int Function(
  Pointer DeviceInfoSet,
)>('SetupDiDestroyDeviceInfoList');

int SetupDiDestroyDriverInfoList(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  int DriverType,
) =>
    _SetupDiDestroyDriverInfoList(
      DeviceInfoSet,
      DeviceInfoData,
      DriverType,
    );

late final _SetupDiDestroyDriverInfoList = _setupapi.lookupFunction<
    Int32 Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  Uint32 DriverType,
),
    int Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  int DriverType,
)>('SetupDiDestroyDriverInfoList');

int SetupDiDrawMiniIcon(
  int hdc,
  RECT rc,
  int MiniIconIndex,
  int Flags,
) =>
    _SetupDiDrawMiniIcon(
      hdc,
      rc,
      MiniIconIndex,
      Flags,
    );

late final _SetupDiDrawMiniIcon = _setupapi.lookupFunction<
    Int32 Function(
  IntPtr hdc,
  RECT rc,
  Int32 MiniIconIndex,
  Uint32 Flags,
),
    int Function(
  int hdc,
  RECT rc,
  int MiniIconIndex,
  int Flags,
)>('SetupDiDrawMiniIcon');

int SetupDiEnumDeviceInfo(
  Pointer DeviceInfoSet,
  int MemberIndex,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
) =>
    _SetupDiEnumDeviceInfo(
      DeviceInfoSet,
      MemberIndex,
      DeviceInfoData,
    );

late final _SetupDiEnumDeviceInfo = _setupapi.lookupFunction<
    Int32 Function(
  Pointer DeviceInfoSet,
  Uint32 MemberIndex,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
),
    int Function(
  Pointer DeviceInfoSet,
  int MemberIndex,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
)>('SetupDiEnumDeviceInfo');

int SetupDiEnumDeviceInterfaces(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  Pointer<GUID> InterfaceClassGuid,
  int MemberIndex,
  Pointer<SP_DEVICE_INTERFACE_DATA> DeviceInterfaceData,
) =>
    _SetupDiEnumDeviceInterfaces(
      DeviceInfoSet,
      DeviceInfoData,
      InterfaceClassGuid,
      MemberIndex,
      DeviceInterfaceData,
    );

late final _SetupDiEnumDeviceInterfaces = _setupapi.lookupFunction<
    Int32 Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  Pointer<GUID> InterfaceClassGuid,
  Uint32 MemberIndex,
  Pointer<SP_DEVICE_INTERFACE_DATA> DeviceInterfaceData,
),
    int Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  Pointer<GUID> InterfaceClassGuid,
  int MemberIndex,
  Pointer<SP_DEVICE_INTERFACE_DATA> DeviceInterfaceData,
)>('SetupDiEnumDeviceInterfaces');

int SetupDiEnumDriverInfo(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  int DriverType,
  int MemberIndex,
  Pointer<SP_DRVINFO_DATA_V2_> DriverInfoData,
) =>
    _SetupDiEnumDriverInfo(
      DeviceInfoSet,
      DeviceInfoData,
      DriverType,
      MemberIndex,
      DriverInfoData,
    );

late final _SetupDiEnumDriverInfo = _setupapi.lookupFunction<
    Int32 Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  Uint32 DriverType,
  Uint32 MemberIndex,
  Pointer<SP_DRVINFO_DATA_V2_> DriverInfoData,
),
    int Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  int DriverType,
  int MemberIndex,
  Pointer<SP_DRVINFO_DATA_V2_> DriverInfoData,
)>('SetupDiEnumDriverInfoW');

int SetupDiGetActualModelsSection(
  Pointer<INFCONTEXT> Context,
  Pointer<SP_ALTPLATFORM_INFO_V2> AlternatePlatformInfo,
  Pointer<Utf16> InfSectionWithExt,
  int InfSectionWithExtSize,
  Pointer<Uint32> RequiredSize,
  Pointer Reserved,
) =>
    _SetupDiGetActualModelsSection(
      Context,
      AlternatePlatformInfo,
      InfSectionWithExt,
      InfSectionWithExtSize,
      RequiredSize,
      Reserved,
    );

late final _SetupDiGetActualModelsSection = _setupapi.lookupFunction<
    Int32 Function(
  Pointer<INFCONTEXT> Context,
  Pointer<SP_ALTPLATFORM_INFO_V2> AlternatePlatformInfo,
  Pointer<Utf16> InfSectionWithExt,
  Uint32 InfSectionWithExtSize,
  Pointer<Uint32> RequiredSize,
  Pointer Reserved,
),
    int Function(
  Pointer<INFCONTEXT> Context,
  Pointer<SP_ALTPLATFORM_INFO_V2> AlternatePlatformInfo,
  Pointer<Utf16> InfSectionWithExt,
  int InfSectionWithExtSize,
  Pointer<Uint32> RequiredSize,
  Pointer Reserved,
)>('SetupDiGetActualModelsSectionW');

int SetupDiGetActualSectionToInstallEx(
  Pointer InfHandle,
  Pointer<Utf16> InfSectionName,
  Pointer<SP_ALTPLATFORM_INFO_V2> AlternatePlatformInfo,
  Pointer<Utf16> InfSectionWithExt,
  int InfSectionWithExtSize,
  Pointer<Uint32> RequiredSize,
  Pointer<Pointer<Utf16>> Extension,
  Pointer Reserved,
) =>
    _SetupDiGetActualSectionToInstallEx(
      InfHandle,
      InfSectionName,
      AlternatePlatformInfo,
      InfSectionWithExt,
      InfSectionWithExtSize,
      RequiredSize,
      Extension,
      Reserved,
    );

late final _SetupDiGetActualSectionToInstallEx = _setupapi.lookupFunction<
    Int32 Function(
  Pointer InfHandle,
  Pointer<Utf16> InfSectionName,
  Pointer<SP_ALTPLATFORM_INFO_V2> AlternatePlatformInfo,
  Pointer<Utf16> InfSectionWithExt,
  Uint32 InfSectionWithExtSize,
  Pointer<Uint32> RequiredSize,
  Pointer<Pointer<Utf16>> Extension,
  Pointer Reserved,
),
    int Function(
  Pointer InfHandle,
  Pointer<Utf16> InfSectionName,
  Pointer<SP_ALTPLATFORM_INFO_V2> AlternatePlatformInfo,
  Pointer<Utf16> InfSectionWithExt,
  int InfSectionWithExtSize,
  Pointer<Uint32> RequiredSize,
  Pointer<Pointer<Utf16>> Extension,
  Pointer Reserved,
)>('SetupDiGetActualSectionToInstallExW');

int SetupDiGetActualSectionToInstall(
  Pointer InfHandle,
  Pointer<Utf16> InfSectionName,
  Pointer<Utf16> InfSectionWithExt,
  int InfSectionWithExtSize,
  Pointer<Uint32> RequiredSize,
  Pointer<Pointer<Utf16>> Extension,
) =>
    _SetupDiGetActualSectionToInstall(
      InfHandle,
      InfSectionName,
      InfSectionWithExt,
      InfSectionWithExtSize,
      RequiredSize,
      Extension,
    );

late final _SetupDiGetActualSectionToInstall = _setupapi.lookupFunction<
    Int32 Function(
  Pointer InfHandle,
  Pointer<Utf16> InfSectionName,
  Pointer<Utf16> InfSectionWithExt,
  Uint32 InfSectionWithExtSize,
  Pointer<Uint32> RequiredSize,
  Pointer<Pointer<Utf16>> Extension,
),
    int Function(
  Pointer InfHandle,
  Pointer<Utf16> InfSectionName,
  Pointer<Utf16> InfSectionWithExt,
  int InfSectionWithExtSize,
  Pointer<Uint32> RequiredSize,
  Pointer<Pointer<Utf16>> Extension,
)>('SetupDiGetActualSectionToInstallW');

int SetupDiGetClassBitmapIndex(
  Pointer<GUID> ClassGuid,
  Pointer<Int32> MiniIconIndex,
) =>
    _SetupDiGetClassBitmapIndex(
      ClassGuid,
      MiniIconIndex,
    );

late final _SetupDiGetClassBitmapIndex = _setupapi.lookupFunction<
    Int32 Function(
  Pointer<GUID> ClassGuid,
  Pointer<Int32> MiniIconIndex,
),
    int Function(
  Pointer<GUID> ClassGuid,
  Pointer<Int32> MiniIconIndex,
)>('SetupDiGetClassBitmapIndex');

int SetupDiGetClassDescriptionEx(
  Pointer<GUID> ClassGuid,
  Pointer<Utf16> ClassDescription,
  int ClassDescriptionSize,
  Pointer<Uint32> RequiredSize,
  Pointer<Utf16> MachineName,
  Pointer Reserved,
) =>
    _SetupDiGetClassDescriptionEx(
      ClassGuid,
      ClassDescription,
      ClassDescriptionSize,
      RequiredSize,
      MachineName,
      Reserved,
    );

late final _SetupDiGetClassDescriptionEx = _setupapi.lookupFunction<
    Int32 Function(
  Pointer<GUID> ClassGuid,
  Pointer<Utf16> ClassDescription,
  Uint32 ClassDescriptionSize,
  Pointer<Uint32> RequiredSize,
  Pointer<Utf16> MachineName,
  Pointer Reserved,
),
    int Function(
  Pointer<GUID> ClassGuid,
  Pointer<Utf16> ClassDescription,
  int ClassDescriptionSize,
  Pointer<Uint32> RequiredSize,
  Pointer<Utf16> MachineName,
  Pointer Reserved,
)>('SetupDiGetClassDescriptionExW');

int SetupDiGetClassDescription(
  Pointer<GUID> ClassGuid,
  Pointer<Utf16> ClassDescription,
  int ClassDescriptionSize,
  Pointer<Uint32> RequiredSize,
) =>
    _SetupDiGetClassDescription(
      ClassGuid,
      ClassDescription,
      ClassDescriptionSize,
      RequiredSize,
    );

late final _SetupDiGetClassDescription = _setupapi.lookupFunction<
    Int32 Function(
  Pointer<GUID> ClassGuid,
  Pointer<Utf16> ClassDescription,
  Uint32 ClassDescriptionSize,
  Pointer<Uint32> RequiredSize,
),
    int Function(
  Pointer<GUID> ClassGuid,
  Pointer<Utf16> ClassDescription,
  int ClassDescriptionSize,
  Pointer<Uint32> RequiredSize,
)>('SetupDiGetClassDescriptionW');

int SetupDiGetClassDevPropertySheets(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  Pointer<PROPSHEETHEADERW_V2> PropertySheetHeader,
  int PropertySheetHeaderPageListSize,
  Pointer<Uint32> RequiredSize,
  int PropertySheetType,
) =>
    _SetupDiGetClassDevPropertySheets(
      DeviceInfoSet,
      DeviceInfoData,
      PropertySheetHeader,
      PropertySheetHeaderPageListSize,
      RequiredSize,
      PropertySheetType,
    );

late final _SetupDiGetClassDevPropertySheets = _setupapi.lookupFunction<
    Int32 Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  Pointer<PROPSHEETHEADERW_V2> PropertySheetHeader,
  Uint32 PropertySheetHeaderPageListSize,
  Pointer<Uint32> RequiredSize,
  Uint32 PropertySheetType,
),
    int Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  Pointer<PROPSHEETHEADERW_V2> PropertySheetHeader,
  int PropertySheetHeaderPageListSize,
  Pointer<Uint32> RequiredSize,
  int PropertySheetType,
)>('SetupDiGetClassDevPropertySheetsW');

Pointer SetupDiGetClassDevsEx(
  Pointer<GUID> ClassGuid,
  Pointer<Utf16> Enumerator,
  int hwndParent,
  int Flags,
  Pointer DeviceInfoSet,
  Pointer<Utf16> MachineName,
  Pointer Reserved,
) =>
    _SetupDiGetClassDevsEx(
      ClassGuid,
      Enumerator,
      hwndParent,
      Flags,
      DeviceInfoSet,
      MachineName,
      Reserved,
    );

late final _SetupDiGetClassDevsEx = _setupapi.lookupFunction<
    Pointer Function(
  Pointer<GUID> ClassGuid,
  Pointer<Utf16> Enumerator,
  IntPtr hwndParent,
  Uint32 Flags,
  Pointer DeviceInfoSet,
  Pointer<Utf16> MachineName,
  Pointer Reserved,
),
    Pointer Function(
  Pointer<GUID> ClassGuid,
  Pointer<Utf16> Enumerator,
  int hwndParent,
  int Flags,
  Pointer DeviceInfoSet,
  Pointer<Utf16> MachineName,
  Pointer Reserved,
)>('SetupDiGetClassDevsExW');

Pointer SetupDiGetClassDevs(
  Pointer<GUID> ClassGuid,
  Pointer<Utf16> Enumerator,
  int hwndParent,
  int Flags,
) =>
    _SetupDiGetClassDevs(
      ClassGuid,
      Enumerator,
      hwndParent,
      Flags,
    );

late final _SetupDiGetClassDevs = _setupapi.lookupFunction<
    Pointer Function(
  Pointer<GUID> ClassGuid,
  Pointer<Utf16> Enumerator,
  IntPtr hwndParent,
  Uint32 Flags,
),
    Pointer Function(
  Pointer<GUID> ClassGuid,
  Pointer<Utf16> Enumerator,
  int hwndParent,
  int Flags,
)>('SetupDiGetClassDevsW');

int SetupDiGetClassImageIndex(
  Pointer<SP_CLASSIMAGELIST_DATA> ClassImageListData,
  Pointer<GUID> ClassGuid,
  Pointer<Int32> ImageIndex,
) =>
    _SetupDiGetClassImageIndex(
      ClassImageListData,
      ClassGuid,
      ImageIndex,
    );

late final _SetupDiGetClassImageIndex = _setupapi.lookupFunction<
    Int32 Function(
  Pointer<SP_CLASSIMAGELIST_DATA> ClassImageListData,
  Pointer<GUID> ClassGuid,
  Pointer<Int32> ImageIndex,
),
    int Function(
  Pointer<SP_CLASSIMAGELIST_DATA> ClassImageListData,
  Pointer<GUID> ClassGuid,
  Pointer<Int32> ImageIndex,
)>('SetupDiGetClassImageIndex');

int SetupDiGetClassImageList(
  Pointer<SP_CLASSIMAGELIST_DATA> ClassImageListData,
) =>
    _SetupDiGetClassImageList(
      ClassImageListData,
    );

late final _SetupDiGetClassImageList = _setupapi.lookupFunction<
    Int32 Function(
  Pointer<SP_CLASSIMAGELIST_DATA> ClassImageListData,
),
    int Function(
  Pointer<SP_CLASSIMAGELIST_DATA> ClassImageListData,
)>('SetupDiGetClassImageList');

int SetupDiGetClassImageListEx(
  Pointer<SP_CLASSIMAGELIST_DATA> ClassImageListData,
  Pointer<Utf16> MachineName,
  Pointer Reserved,
) =>
    _SetupDiGetClassImageListEx(
      ClassImageListData,
      MachineName,
      Reserved,
    );

late final _SetupDiGetClassImageListEx = _setupapi.lookupFunction<
    Int32 Function(
  Pointer<SP_CLASSIMAGELIST_DATA> ClassImageListData,
  Pointer<Utf16> MachineName,
  Pointer Reserved,
),
    int Function(
  Pointer<SP_CLASSIMAGELIST_DATA> ClassImageListData,
  Pointer<Utf16> MachineName,
  Pointer Reserved,
)>('SetupDiGetClassImageListExW');

int SetupDiGetClassInstallParams(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  Pointer<SP_CLASSINSTALL_HEADER> ClassInstallParams,
  int ClassInstallParamsSize,
  Pointer<Uint32> RequiredSize,
) =>
    _SetupDiGetClassInstallParams(
      DeviceInfoSet,
      DeviceInfoData,
      ClassInstallParams,
      ClassInstallParamsSize,
      RequiredSize,
    );

late final _SetupDiGetClassInstallParams = _setupapi.lookupFunction<
    Int32 Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  Pointer<SP_CLASSINSTALL_HEADER> ClassInstallParams,
  Uint32 ClassInstallParamsSize,
  Pointer<Uint32> RequiredSize,
),
    int Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  Pointer<SP_CLASSINSTALL_HEADER> ClassInstallParams,
  int ClassInstallParamsSize,
  Pointer<Uint32> RequiredSize,
)>('SetupDiGetClassInstallParamsW');

int SetupDiGetClassPropertyEx(
  Pointer<GUID> ClassGuid,
  Pointer<DEVPROPKEY> PropertyKey,
  Pointer<Uint32> PropertyType,
  Pointer<Uint8> PropertyBuffer,
  int PropertyBufferSize,
  Pointer<Uint32> RequiredSize,
  int Flags,
  Pointer<Utf16> MachineName,
  Pointer Reserved,
) =>
    _SetupDiGetClassPropertyEx(
      ClassGuid,
      PropertyKey,
      PropertyType,
      PropertyBuffer,
      PropertyBufferSize,
      RequiredSize,
      Flags,
      MachineName,
      Reserved,
    );

late final _SetupDiGetClassPropertyEx = _setupapi.lookupFunction<
    Int32 Function(
  Pointer<GUID> ClassGuid,
  Pointer<DEVPROPKEY> PropertyKey,
  Pointer<Uint32> PropertyType,
  Pointer<Uint8> PropertyBuffer,
  Uint32 PropertyBufferSize,
  Pointer<Uint32> RequiredSize,
  Uint32 Flags,
  Pointer<Utf16> MachineName,
  Pointer Reserved,
),
    int Function(
  Pointer<GUID> ClassGuid,
  Pointer<DEVPROPKEY> PropertyKey,
  Pointer<Uint32> PropertyType,
  Pointer<Uint8> PropertyBuffer,
  int PropertyBufferSize,
  Pointer<Uint32> RequiredSize,
  int Flags,
  Pointer<Utf16> MachineName,
  Pointer Reserved,
)>('SetupDiGetClassPropertyExW');

int SetupDiGetClassPropertyKeys(
  Pointer<GUID> ClassGuid,
  Pointer<DEVPROPKEY> PropertyKeyArray,
  int PropertyKeyCount,
  Pointer<Uint32> RequiredPropertyKeyCount,
  int Flags,
) =>
    _SetupDiGetClassPropertyKeys(
      ClassGuid,
      PropertyKeyArray,
      PropertyKeyCount,
      RequiredPropertyKeyCount,
      Flags,
    );

late final _SetupDiGetClassPropertyKeys = _setupapi.lookupFunction<
    Int32 Function(
  Pointer<GUID> ClassGuid,
  Pointer<DEVPROPKEY> PropertyKeyArray,
  Uint32 PropertyKeyCount,
  Pointer<Uint32> RequiredPropertyKeyCount,
  Uint32 Flags,
),
    int Function(
  Pointer<GUID> ClassGuid,
  Pointer<DEVPROPKEY> PropertyKeyArray,
  int PropertyKeyCount,
  Pointer<Uint32> RequiredPropertyKeyCount,
  int Flags,
)>('SetupDiGetClassPropertyKeys');

int SetupDiGetClassPropertyKeysEx(
  Pointer<GUID> ClassGuid,
  Pointer<DEVPROPKEY> PropertyKeyArray,
  int PropertyKeyCount,
  Pointer<Uint32> RequiredPropertyKeyCount,
  int Flags,
  Pointer<Utf16> MachineName,
  Pointer Reserved,
) =>
    _SetupDiGetClassPropertyKeysEx(
      ClassGuid,
      PropertyKeyArray,
      PropertyKeyCount,
      RequiredPropertyKeyCount,
      Flags,
      MachineName,
      Reserved,
    );

late final _SetupDiGetClassPropertyKeysEx = _setupapi.lookupFunction<
    Int32 Function(
  Pointer<GUID> ClassGuid,
  Pointer<DEVPROPKEY> PropertyKeyArray,
  Uint32 PropertyKeyCount,
  Pointer<Uint32> RequiredPropertyKeyCount,
  Uint32 Flags,
  Pointer<Utf16> MachineName,
  Pointer Reserved,
),
    int Function(
  Pointer<GUID> ClassGuid,
  Pointer<DEVPROPKEY> PropertyKeyArray,
  int PropertyKeyCount,
  Pointer<Uint32> RequiredPropertyKeyCount,
  int Flags,
  Pointer<Utf16> MachineName,
  Pointer Reserved,
)>('SetupDiGetClassPropertyKeysExW');

int SetupDiGetClassProperty(
  Pointer<GUID> ClassGuid,
  Pointer<DEVPROPKEY> PropertyKey,
  Pointer<Uint32> PropertyType,
  Pointer<Uint8> PropertyBuffer,
  int PropertyBufferSize,
  Pointer<Uint32> RequiredSize,
  int Flags,
) =>
    _SetupDiGetClassProperty(
      ClassGuid,
      PropertyKey,
      PropertyType,
      PropertyBuffer,
      PropertyBufferSize,
      RequiredSize,
      Flags,
    );

late final _SetupDiGetClassProperty = _setupapi.lookupFunction<
    Int32 Function(
  Pointer<GUID> ClassGuid,
  Pointer<DEVPROPKEY> PropertyKey,
  Pointer<Uint32> PropertyType,
  Pointer<Uint8> PropertyBuffer,
  Uint32 PropertyBufferSize,
  Pointer<Uint32> RequiredSize,
  Uint32 Flags,
),
    int Function(
  Pointer<GUID> ClassGuid,
  Pointer<DEVPROPKEY> PropertyKey,
  Pointer<Uint32> PropertyType,
  Pointer<Uint8> PropertyBuffer,
  int PropertyBufferSize,
  Pointer<Uint32> RequiredSize,
  int Flags,
)>('SetupDiGetClassPropertyW');

int SetupDiGetClassRegistryProperty(
  Pointer<GUID> ClassGuid,
  int Property,
  Pointer<Uint32> PropertyRegDataType,
  Pointer<Uint8> PropertyBuffer,
  int PropertyBufferSize,
  Pointer<Uint32> RequiredSize,
  Pointer<Utf16> MachineName,
  Pointer Reserved,
) =>
    _SetupDiGetClassRegistryProperty(
      ClassGuid,
      Property,
      PropertyRegDataType,
      PropertyBuffer,
      PropertyBufferSize,
      RequiredSize,
      MachineName,
      Reserved,
    );

late final _SetupDiGetClassRegistryProperty = _setupapi.lookupFunction<
    Int32 Function(
  Pointer<GUID> ClassGuid,
  Uint32 Property,
  Pointer<Uint32> PropertyRegDataType,
  Pointer<Uint8> PropertyBuffer,
  Uint32 PropertyBufferSize,
  Pointer<Uint32> RequiredSize,
  Pointer<Utf16> MachineName,
  Pointer Reserved,
),
    int Function(
  Pointer<GUID> ClassGuid,
  int Property,
  Pointer<Uint32> PropertyRegDataType,
  Pointer<Uint8> PropertyBuffer,
  int PropertyBufferSize,
  Pointer<Uint32> RequiredSize,
  Pointer<Utf16> MachineName,
  Pointer Reserved,
)>('SetupDiGetClassRegistryPropertyW');

int SetupDiGetCustomDeviceProperty(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  Pointer<Utf16> CustomPropertyName,
  int Flags,
  Pointer<Uint32> PropertyRegDataType,
  Pointer<Uint8> PropertyBuffer,
  int PropertyBufferSize,
  Pointer<Uint32> RequiredSize,
) =>
    _SetupDiGetCustomDeviceProperty(
      DeviceInfoSet,
      DeviceInfoData,
      CustomPropertyName,
      Flags,
      PropertyRegDataType,
      PropertyBuffer,
      PropertyBufferSize,
      RequiredSize,
    );

late final _SetupDiGetCustomDeviceProperty = _setupapi.lookupFunction<
    Int32 Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  Pointer<Utf16> CustomPropertyName,
  Uint32 Flags,
  Pointer<Uint32> PropertyRegDataType,
  Pointer<Uint8> PropertyBuffer,
  Uint32 PropertyBufferSize,
  Pointer<Uint32> RequiredSize,
),
    int Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  Pointer<Utf16> CustomPropertyName,
  int Flags,
  Pointer<Uint32> PropertyRegDataType,
  Pointer<Uint8> PropertyBuffer,
  int PropertyBufferSize,
  Pointer<Uint32> RequiredSize,
)>('SetupDiGetCustomDevicePropertyW');

int SetupDiGetDeviceInfoListClass(
  Pointer DeviceInfoSet,
  Pointer<GUID> ClassGuid,
) =>
    _SetupDiGetDeviceInfoListClass(
      DeviceInfoSet,
      ClassGuid,
    );

late final _SetupDiGetDeviceInfoListClass = _setupapi.lookupFunction<
    Int32 Function(
  Pointer DeviceInfoSet,
  Pointer<GUID> ClassGuid,
),
    int Function(
  Pointer DeviceInfoSet,
  Pointer<GUID> ClassGuid,
)>('SetupDiGetDeviceInfoListClass');

int SetupDiGetDeviceInfoListDetail(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_LIST_DETAIL_DATA_> DeviceInfoSetDetailData,
) =>
    _SetupDiGetDeviceInfoListDetail(
      DeviceInfoSet,
      DeviceInfoSetDetailData,
    );

late final _SetupDiGetDeviceInfoListDetail = _setupapi.lookupFunction<
    Int32 Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_LIST_DETAIL_DATA_> DeviceInfoSetDetailData,
),
    int Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_LIST_DETAIL_DATA_> DeviceInfoSetDetailData,
)>('SetupDiGetDeviceInfoListDetailW');

int SetupDiGetDeviceInstallParams(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  Pointer<SP_DEVINSTALL_PARAMS_> DeviceInstallParams,
) =>
    _SetupDiGetDeviceInstallParams(
      DeviceInfoSet,
      DeviceInfoData,
      DeviceInstallParams,
    );

late final _SetupDiGetDeviceInstallParams = _setupapi.lookupFunction<
    Int32 Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  Pointer<SP_DEVINSTALL_PARAMS_> DeviceInstallParams,
),
    int Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  Pointer<SP_DEVINSTALL_PARAMS_> DeviceInstallParams,
)>('SetupDiGetDeviceInstallParamsW');

int SetupDiGetDeviceInstanceId(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  Pointer<Utf16> DeviceInstanceId,
  int DeviceInstanceIdSize,
  Pointer<Uint32> RequiredSize,
) =>
    _SetupDiGetDeviceInstanceId(
      DeviceInfoSet,
      DeviceInfoData,
      DeviceInstanceId,
      DeviceInstanceIdSize,
      RequiredSize,
    );

late final _SetupDiGetDeviceInstanceId = _setupapi.lookupFunction<
    Int32 Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  Pointer<Utf16> DeviceInstanceId,
  Uint32 DeviceInstanceIdSize,
  Pointer<Uint32> RequiredSize,
),
    int Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  Pointer<Utf16> DeviceInstanceId,
  int DeviceInstanceIdSize,
  Pointer<Uint32> RequiredSize,
)>('SetupDiGetDeviceInstanceIdW');

int SetupDiGetDeviceInterfaceAlias(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVICE_INTERFACE_DATA> DeviceInterfaceData,
  Pointer<GUID> AliasInterfaceClassGuid,
  Pointer<SP_DEVICE_INTERFACE_DATA> AliasDeviceInterfaceData,
) =>
    _SetupDiGetDeviceInterfaceAlias(
      DeviceInfoSet,
      DeviceInterfaceData,
      AliasInterfaceClassGuid,
      AliasDeviceInterfaceData,
    );

late final _SetupDiGetDeviceInterfaceAlias = _setupapi.lookupFunction<
    Int32 Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVICE_INTERFACE_DATA> DeviceInterfaceData,
  Pointer<GUID> AliasInterfaceClassGuid,
  Pointer<SP_DEVICE_INTERFACE_DATA> AliasDeviceInterfaceData,
),
    int Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVICE_INTERFACE_DATA> DeviceInterfaceData,
  Pointer<GUID> AliasInterfaceClassGuid,
  Pointer<SP_DEVICE_INTERFACE_DATA> AliasDeviceInterfaceData,
)>('SetupDiGetDeviceInterfaceAlias');

int SetupDiGetDeviceInterfaceDetail(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVICE_INTERFACE_DATA> DeviceInterfaceData,
  Pointer<SP_DEVICE_INTERFACE_DETAIL_DATA_> DeviceInterfaceDetailData,
  int DeviceInterfaceDetailDataSize,
  Pointer<Uint32> RequiredSize,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
) =>
    _SetupDiGetDeviceInterfaceDetail(
      DeviceInfoSet,
      DeviceInterfaceData,
      DeviceInterfaceDetailData,
      DeviceInterfaceDetailDataSize,
      RequiredSize,
      DeviceInfoData,
    );

late final _SetupDiGetDeviceInterfaceDetail = _setupapi.lookupFunction<
    Int32 Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVICE_INTERFACE_DATA> DeviceInterfaceData,
  Pointer<SP_DEVICE_INTERFACE_DETAIL_DATA_> DeviceInterfaceDetailData,
  Uint32 DeviceInterfaceDetailDataSize,
  Pointer<Uint32> RequiredSize,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
),
    int Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVICE_INTERFACE_DATA> DeviceInterfaceData,
  Pointer<SP_DEVICE_INTERFACE_DETAIL_DATA_> DeviceInterfaceDetailData,
  int DeviceInterfaceDetailDataSize,
  Pointer<Uint32> RequiredSize,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
)>('SetupDiGetDeviceInterfaceDetailW');

int SetupDiGetDeviceInterfacePropertyKeys(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVICE_INTERFACE_DATA> DeviceInterfaceData,
  Pointer<DEVPROPKEY> PropertyKeyArray,
  int PropertyKeyCount,
  Pointer<Uint32> RequiredPropertyKeyCount,
  int Flags,
) =>
    _SetupDiGetDeviceInterfacePropertyKeys(
      DeviceInfoSet,
      DeviceInterfaceData,
      PropertyKeyArray,
      PropertyKeyCount,
      RequiredPropertyKeyCount,
      Flags,
    );

late final _SetupDiGetDeviceInterfacePropertyKeys = _setupapi.lookupFunction<
    Int32 Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVICE_INTERFACE_DATA> DeviceInterfaceData,
  Pointer<DEVPROPKEY> PropertyKeyArray,
  Uint32 PropertyKeyCount,
  Pointer<Uint32> RequiredPropertyKeyCount,
  Uint32 Flags,
),
    int Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVICE_INTERFACE_DATA> DeviceInterfaceData,
  Pointer<DEVPROPKEY> PropertyKeyArray,
  int PropertyKeyCount,
  Pointer<Uint32> RequiredPropertyKeyCount,
  int Flags,
)>('SetupDiGetDeviceInterfacePropertyKeys');

int SetupDiGetDeviceInterfaceProperty(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVICE_INTERFACE_DATA> DeviceInterfaceData,
  Pointer<DEVPROPKEY> PropertyKey,
  Pointer<Uint32> PropertyType,
  Pointer<Uint8> PropertyBuffer,
  int PropertyBufferSize,
  Pointer<Uint32> RequiredSize,
  int Flags,
) =>
    _SetupDiGetDeviceInterfaceProperty(
      DeviceInfoSet,
      DeviceInterfaceData,
      PropertyKey,
      PropertyType,
      PropertyBuffer,
      PropertyBufferSize,
      RequiredSize,
      Flags,
    );

late final _SetupDiGetDeviceInterfaceProperty = _setupapi.lookupFunction<
    Int32 Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVICE_INTERFACE_DATA> DeviceInterfaceData,
  Pointer<DEVPROPKEY> PropertyKey,
  Pointer<Uint32> PropertyType,
  Pointer<Uint8> PropertyBuffer,
  Uint32 PropertyBufferSize,
  Pointer<Uint32> RequiredSize,
  Uint32 Flags,
),
    int Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVICE_INTERFACE_DATA> DeviceInterfaceData,
  Pointer<DEVPROPKEY> PropertyKey,
  Pointer<Uint32> PropertyType,
  Pointer<Uint8> PropertyBuffer,
  int PropertyBufferSize,
  Pointer<Uint32> RequiredSize,
  int Flags,
)>('SetupDiGetDeviceInterfacePropertyW');

int SetupDiGetDevicePropertyKeys(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  Pointer<DEVPROPKEY> PropertyKeyArray,
  int PropertyKeyCount,
  Pointer<Uint32> RequiredPropertyKeyCount,
  int Flags,
) =>
    _SetupDiGetDevicePropertyKeys(
      DeviceInfoSet,
      DeviceInfoData,
      PropertyKeyArray,
      PropertyKeyCount,
      RequiredPropertyKeyCount,
      Flags,
    );

late final _SetupDiGetDevicePropertyKeys = _setupapi.lookupFunction<
    Int32 Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  Pointer<DEVPROPKEY> PropertyKeyArray,
  Uint32 PropertyKeyCount,
  Pointer<Uint32> RequiredPropertyKeyCount,
  Uint32 Flags,
),
    int Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  Pointer<DEVPROPKEY> PropertyKeyArray,
  int PropertyKeyCount,
  Pointer<Uint32> RequiredPropertyKeyCount,
  int Flags,
)>('SetupDiGetDevicePropertyKeys');

int SetupDiGetDeviceProperty(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  Pointer<DEVPROPKEY> PropertyKey,
  Pointer<Uint32> PropertyType,
  Pointer<Uint8> PropertyBuffer,
  int PropertyBufferSize,
  Pointer<Uint32> RequiredSize,
  int Flags,
) =>
    _SetupDiGetDeviceProperty(
      DeviceInfoSet,
      DeviceInfoData,
      PropertyKey,
      PropertyType,
      PropertyBuffer,
      PropertyBufferSize,
      RequiredSize,
      Flags,
    );

late final _SetupDiGetDeviceProperty = _setupapi.lookupFunction<
    Int32 Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  Pointer<DEVPROPKEY> PropertyKey,
  Pointer<Uint32> PropertyType,
  Pointer<Uint8> PropertyBuffer,
  Uint32 PropertyBufferSize,
  Pointer<Uint32> RequiredSize,
  Uint32 Flags,
),
    int Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  Pointer<DEVPROPKEY> PropertyKey,
  Pointer<Uint32> PropertyType,
  Pointer<Uint8> PropertyBuffer,
  int PropertyBufferSize,
  Pointer<Uint32> RequiredSize,
  int Flags,
)>('SetupDiGetDevicePropertyW');

int SetupDiGetDeviceRegistryProperty(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  int Property,
  Pointer<Uint32> PropertyRegDataType,
  Pointer<Uint8> PropertyBuffer,
  int PropertyBufferSize,
  Pointer<Uint32> RequiredSize,
) =>
    _SetupDiGetDeviceRegistryProperty(
      DeviceInfoSet,
      DeviceInfoData,
      Property,
      PropertyRegDataType,
      PropertyBuffer,
      PropertyBufferSize,
      RequiredSize,
    );

late final _SetupDiGetDeviceRegistryProperty = _setupapi.lookupFunction<
    Int32 Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  Uint32 Property,
  Pointer<Uint32> PropertyRegDataType,
  Pointer<Uint8> PropertyBuffer,
  Uint32 PropertyBufferSize,
  Pointer<Uint32> RequiredSize,
),
    int Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  int Property,
  Pointer<Uint32> PropertyRegDataType,
  Pointer<Uint8> PropertyBuffer,
  int PropertyBufferSize,
  Pointer<Uint32> RequiredSize,
)>('SetupDiGetDeviceRegistryPropertyW');

int SetupDiGetDriverInfoDetail(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  Pointer<SP_DRVINFO_DATA_V2_> DriverInfoData,
  Pointer<SP_DRVINFO_DETAIL_DATA_> DriverInfoDetailData,
  int DriverInfoDetailDataSize,
  Pointer<Uint32> RequiredSize,
) =>
    _SetupDiGetDriverInfoDetail(
      DeviceInfoSet,
      DeviceInfoData,
      DriverInfoData,
      DriverInfoDetailData,
      DriverInfoDetailDataSize,
      RequiredSize,
    );

late final _SetupDiGetDriverInfoDetail = _setupapi.lookupFunction<
    Int32 Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  Pointer<SP_DRVINFO_DATA_V2_> DriverInfoData,
  Pointer<SP_DRVINFO_DETAIL_DATA_> DriverInfoDetailData,
  Uint32 DriverInfoDetailDataSize,
  Pointer<Uint32> RequiredSize,
),
    int Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  Pointer<SP_DRVINFO_DATA_V2_> DriverInfoData,
  Pointer<SP_DRVINFO_DETAIL_DATA_> DriverInfoDetailData,
  int DriverInfoDetailDataSize,
  Pointer<Uint32> RequiredSize,
)>('SetupDiGetDriverInfoDetailW');

int SetupDiGetDriverInstallParams(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  Pointer<SP_DRVINFO_DATA_V2_> DriverInfoData,
  Pointer<SP_DRVINSTALL_PARAMS> DriverInstallParams,
) =>
    _SetupDiGetDriverInstallParams(
      DeviceInfoSet,
      DeviceInfoData,
      DriverInfoData,
      DriverInstallParams,
    );

late final _SetupDiGetDriverInstallParams = _setupapi.lookupFunction<
    Int32 Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  Pointer<SP_DRVINFO_DATA_V2_> DriverInfoData,
  Pointer<SP_DRVINSTALL_PARAMS> DriverInstallParams,
),
    int Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  Pointer<SP_DRVINFO_DATA_V2_> DriverInfoData,
  Pointer<SP_DRVINSTALL_PARAMS> DriverInstallParams,
)>('SetupDiGetDriverInstallParamsW');

int SetupDiGetHwProfileFriendlyNameEx(
  int HwProfile,
  Pointer<Utf16> FriendlyName,
  int FriendlyNameSize,
  Pointer<Uint32> RequiredSize,
  Pointer<Utf16> MachineName,
  Pointer Reserved,
) =>
    _SetupDiGetHwProfileFriendlyNameEx(
      HwProfile,
      FriendlyName,
      FriendlyNameSize,
      RequiredSize,
      MachineName,
      Reserved,
    );

late final _SetupDiGetHwProfileFriendlyNameEx = _setupapi.lookupFunction<
    Int32 Function(
  Uint32 HwProfile,
  Pointer<Utf16> FriendlyName,
  Uint32 FriendlyNameSize,
  Pointer<Uint32> RequiredSize,
  Pointer<Utf16> MachineName,
  Pointer Reserved,
),
    int Function(
  int HwProfile,
  Pointer<Utf16> FriendlyName,
  int FriendlyNameSize,
  Pointer<Uint32> RequiredSize,
  Pointer<Utf16> MachineName,
  Pointer Reserved,
)>('SetupDiGetHwProfileFriendlyNameExW');

int SetupDiGetHwProfileFriendlyName(
  int HwProfile,
  Pointer<Utf16> FriendlyName,
  int FriendlyNameSize,
  Pointer<Uint32> RequiredSize,
) =>
    _SetupDiGetHwProfileFriendlyName(
      HwProfile,
      FriendlyName,
      FriendlyNameSize,
      RequiredSize,
    );

late final _SetupDiGetHwProfileFriendlyName = _setupapi.lookupFunction<
    Int32 Function(
  Uint32 HwProfile,
  Pointer<Utf16> FriendlyName,
  Uint32 FriendlyNameSize,
  Pointer<Uint32> RequiredSize,
),
    int Function(
  int HwProfile,
  Pointer<Utf16> FriendlyName,
  int FriendlyNameSize,
  Pointer<Uint32> RequiredSize,
)>('SetupDiGetHwProfileFriendlyNameW');

int SetupDiGetHwProfileList(
  Pointer<Uint32> HwProfileList,
  int HwProfileListSize,
  Pointer<Uint32> RequiredSize,
  Pointer<Uint32> CurrentlyActiveIndex,
) =>
    _SetupDiGetHwProfileList(
      HwProfileList,
      HwProfileListSize,
      RequiredSize,
      CurrentlyActiveIndex,
    );

late final _SetupDiGetHwProfileList = _setupapi.lookupFunction<
    Int32 Function(
  Pointer<Uint32> HwProfileList,
  Uint32 HwProfileListSize,
  Pointer<Uint32> RequiredSize,
  Pointer<Uint32> CurrentlyActiveIndex,
),
    int Function(
  Pointer<Uint32> HwProfileList,
  int HwProfileListSize,
  Pointer<Uint32> RequiredSize,
  Pointer<Uint32> CurrentlyActiveIndex,
)>('SetupDiGetHwProfileList');

int SetupDiGetHwProfileListEx(
  Pointer<Uint32> HwProfileList,
  int HwProfileListSize,
  Pointer<Uint32> RequiredSize,
  Pointer<Uint32> CurrentlyActiveIndex,
  Pointer<Utf16> MachineName,
  Pointer Reserved,
) =>
    _SetupDiGetHwProfileListEx(
      HwProfileList,
      HwProfileListSize,
      RequiredSize,
      CurrentlyActiveIndex,
      MachineName,
      Reserved,
    );

late final _SetupDiGetHwProfileListEx = _setupapi.lookupFunction<
    Int32 Function(
  Pointer<Uint32> HwProfileList,
  Uint32 HwProfileListSize,
  Pointer<Uint32> RequiredSize,
  Pointer<Uint32> CurrentlyActiveIndex,
  Pointer<Utf16> MachineName,
  Pointer Reserved,
),
    int Function(
  Pointer<Uint32> HwProfileList,
  int HwProfileListSize,
  Pointer<Uint32> RequiredSize,
  Pointer<Uint32> CurrentlyActiveIndex,
  Pointer<Utf16> MachineName,
  Pointer Reserved,
)>('SetupDiGetHwProfileListExW');

int SetupDiGetINFClass(
  Pointer<Utf16> InfName,
  Pointer<GUID> ClassGuid,
  Pointer<Utf16> ClassName,
  int ClassNameSize,
  Pointer<Uint32> RequiredSize,
) =>
    _SetupDiGetINFClass(
      InfName,
      ClassGuid,
      ClassName,
      ClassNameSize,
      RequiredSize,
    );

late final _SetupDiGetINFClass = _setupapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> InfName,
  Pointer<GUID> ClassGuid,
  Pointer<Utf16> ClassName,
  Uint32 ClassNameSize,
  Pointer<Uint32> RequiredSize,
),
    int Function(
  Pointer<Utf16> InfName,
  Pointer<GUID> ClassGuid,
  Pointer<Utf16> ClassName,
  int ClassNameSize,
  Pointer<Uint32> RequiredSize,
)>('SetupDiGetINFClassW');

int SetupDiGetSelectedDevice(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
) =>
    _SetupDiGetSelectedDevice(
      DeviceInfoSet,
      DeviceInfoData,
    );

late final _SetupDiGetSelectedDevice = _setupapi.lookupFunction<
    Int32 Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
),
    int Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
)>('SetupDiGetSelectedDevice');

int SetupDiGetSelectedDriver(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  Pointer<SP_DRVINFO_DATA_V2_> DriverInfoData,
) =>
    _SetupDiGetSelectedDriver(
      DeviceInfoSet,
      DeviceInfoData,
      DriverInfoData,
    );

late final _SetupDiGetSelectedDriver = _setupapi.lookupFunction<
    Int32 Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  Pointer<SP_DRVINFO_DATA_V2_> DriverInfoData,
),
    int Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  Pointer<SP_DRVINFO_DATA_V2_> DriverInfoData,
)>('SetupDiGetSelectedDriverW');

int SetupDiGetWizardPage(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  Pointer<SP_INSTALLWIZARD_DATA> InstallWizardData,
  int PageType,
  int Flags,
) =>
    _SetupDiGetWizardPage(
      DeviceInfoSet,
      DeviceInfoData,
      InstallWizardData,
      PageType,
      Flags,
    );

late final _SetupDiGetWizardPage = _setupapi.lookupFunction<
    IntPtr Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  Pointer<SP_INSTALLWIZARD_DATA> InstallWizardData,
  Uint32 PageType,
  Uint32 Flags,
),
    int Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  Pointer<SP_INSTALLWIZARD_DATA> InstallWizardData,
  int PageType,
  int Flags,
)>('SetupDiGetWizardPage');

int SetupDiInstallClassEx(
  int hwndParent,
  Pointer<Utf16> InfFileName,
  int Flags,
  Pointer FileQueue,
  Pointer<GUID> InterfaceClassGuid,
  Pointer Reserved1,
  Pointer Reserved2,
) =>
    _SetupDiInstallClassEx(
      hwndParent,
      InfFileName,
      Flags,
      FileQueue,
      InterfaceClassGuid,
      Reserved1,
      Reserved2,
    );

late final _SetupDiInstallClassEx = _setupapi.lookupFunction<
    Int32 Function(
  IntPtr hwndParent,
  Pointer<Utf16> InfFileName,
  Uint32 Flags,
  Pointer FileQueue,
  Pointer<GUID> InterfaceClassGuid,
  Pointer Reserved1,
  Pointer Reserved2,
),
    int Function(
  int hwndParent,
  Pointer<Utf16> InfFileName,
  int Flags,
  Pointer FileQueue,
  Pointer<GUID> InterfaceClassGuid,
  Pointer Reserved1,
  Pointer Reserved2,
)>('SetupDiInstallClassExW');

int SetupDiInstallClass(
  int hwndParent,
  Pointer<Utf16> InfFileName,
  int Flags,
  Pointer FileQueue,
) =>
    _SetupDiInstallClass(
      hwndParent,
      InfFileName,
      Flags,
      FileQueue,
    );

late final _SetupDiInstallClass = _setupapi.lookupFunction<
    Int32 Function(
  IntPtr hwndParent,
  Pointer<Utf16> InfFileName,
  Uint32 Flags,
  Pointer FileQueue,
),
    int Function(
  int hwndParent,
  Pointer<Utf16> InfFileName,
  int Flags,
  Pointer FileQueue,
)>('SetupDiInstallClassW');

int SetupDiInstallDevice(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
) =>
    _SetupDiInstallDevice(
      DeviceInfoSet,
      DeviceInfoData,
    );

late final _SetupDiInstallDevice = _setupapi.lookupFunction<
    Int32 Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
),
    int Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
)>('SetupDiInstallDevice');

int SetupDiInstallDeviceInterfaces(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
) =>
    _SetupDiInstallDeviceInterfaces(
      DeviceInfoSet,
      DeviceInfoData,
    );

late final _SetupDiInstallDeviceInterfaces = _setupapi.lookupFunction<
    Int32 Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
),
    int Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
)>('SetupDiInstallDeviceInterfaces');

int SetupDiInstallDriverFiles(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
) =>
    _SetupDiInstallDriverFiles(
      DeviceInfoSet,
      DeviceInfoData,
    );

late final _SetupDiInstallDriverFiles = _setupapi.lookupFunction<
    Int32 Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
),
    int Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
)>('SetupDiInstallDriverFiles');

int SetupDiLoadClassIcon(
  Pointer<GUID> ClassGuid,
  Pointer<IntPtr> LargeIcon,
  Pointer<Int32> MiniIconIndex,
) =>
    _SetupDiLoadClassIcon(
      ClassGuid,
      LargeIcon,
      MiniIconIndex,
    );

late final _SetupDiLoadClassIcon = _setupapi.lookupFunction<
    Int32 Function(
  Pointer<GUID> ClassGuid,
  Pointer<IntPtr> LargeIcon,
  Pointer<Int32> MiniIconIndex,
),
    int Function(
  Pointer<GUID> ClassGuid,
  Pointer<IntPtr> LargeIcon,
  Pointer<Int32> MiniIconIndex,
)>('SetupDiLoadClassIcon');

int SetupDiLoadDeviceIcon(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  int cxIcon,
  int cyIcon,
  int Flags,
  Pointer<IntPtr> hIcon,
) =>
    _SetupDiLoadDeviceIcon(
      DeviceInfoSet,
      DeviceInfoData,
      cxIcon,
      cyIcon,
      Flags,
      hIcon,
    );

late final _SetupDiLoadDeviceIcon = _setupapi.lookupFunction<
    Int32 Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  Uint32 cxIcon,
  Uint32 cyIcon,
  Uint32 Flags,
  Pointer<IntPtr> hIcon,
),
    int Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  int cxIcon,
  int cyIcon,
  int Flags,
  Pointer<IntPtr> hIcon,
)>('SetupDiLoadDeviceIcon');

int SetupDiOpenClassRegKey(
  Pointer<GUID> ClassGuid,
  int samDesired,
) =>
    _SetupDiOpenClassRegKey(
      ClassGuid,
      samDesired,
    );

late final _SetupDiOpenClassRegKey = _setupapi.lookupFunction<
    IntPtr Function(
  Pointer<GUID> ClassGuid,
  Uint32 samDesired,
),
    int Function(
  Pointer<GUID> ClassGuid,
  int samDesired,
)>('SetupDiOpenClassRegKey');

int SetupDiOpenClassRegKeyEx(
  Pointer<GUID> ClassGuid,
  int samDesired,
  int Flags,
  Pointer<Utf16> MachineName,
  Pointer Reserved,
) =>
    _SetupDiOpenClassRegKeyEx(
      ClassGuid,
      samDesired,
      Flags,
      MachineName,
      Reserved,
    );

late final _SetupDiOpenClassRegKeyEx = _setupapi.lookupFunction<
    IntPtr Function(
  Pointer<GUID> ClassGuid,
  Uint32 samDesired,
  Uint32 Flags,
  Pointer<Utf16> MachineName,
  Pointer Reserved,
),
    int Function(
  Pointer<GUID> ClassGuid,
  int samDesired,
  int Flags,
  Pointer<Utf16> MachineName,
  Pointer Reserved,
)>('SetupDiOpenClassRegKeyExW');

int SetupDiOpenDevRegKey(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  int Scope,
  int HwProfile,
  int KeyType,
  int samDesired,
) =>
    _SetupDiOpenDevRegKey(
      DeviceInfoSet,
      DeviceInfoData,
      Scope,
      HwProfile,
      KeyType,
      samDesired,
    );

late final _SetupDiOpenDevRegKey = _setupapi.lookupFunction<
    IntPtr Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  Uint32 Scope,
  Uint32 HwProfile,
  Uint32 KeyType,
  Uint32 samDesired,
),
    int Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  int Scope,
  int HwProfile,
  int KeyType,
  int samDesired,
)>('SetupDiOpenDevRegKey');

int SetupDiOpenDeviceInfo(
  Pointer DeviceInfoSet,
  Pointer<Utf16> DeviceInstanceId,
  int hwndParent,
  int OpenFlags,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
) =>
    _SetupDiOpenDeviceInfo(
      DeviceInfoSet,
      DeviceInstanceId,
      hwndParent,
      OpenFlags,
      DeviceInfoData,
    );

late final _SetupDiOpenDeviceInfo = _setupapi.lookupFunction<
    Int32 Function(
  Pointer DeviceInfoSet,
  Pointer<Utf16> DeviceInstanceId,
  IntPtr hwndParent,
  Uint32 OpenFlags,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
),
    int Function(
  Pointer DeviceInfoSet,
  Pointer<Utf16> DeviceInstanceId,
  int hwndParent,
  int OpenFlags,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
)>('SetupDiOpenDeviceInfoW');

int SetupDiOpenDeviceInterfaceRegKey(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVICE_INTERFACE_DATA> DeviceInterfaceData,
  int Reserved,
  int samDesired,
) =>
    _SetupDiOpenDeviceInterfaceRegKey(
      DeviceInfoSet,
      DeviceInterfaceData,
      Reserved,
      samDesired,
    );

late final _SetupDiOpenDeviceInterfaceRegKey = _setupapi.lookupFunction<
    IntPtr Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVICE_INTERFACE_DATA> DeviceInterfaceData,
  Uint32 Reserved,
  Uint32 samDesired,
),
    int Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVICE_INTERFACE_DATA> DeviceInterfaceData,
  int Reserved,
  int samDesired,
)>('SetupDiOpenDeviceInterfaceRegKey');

int SetupDiOpenDeviceInterface(
  Pointer DeviceInfoSet,
  Pointer<Utf16> DevicePath,
  int OpenFlags,
  Pointer<SP_DEVICE_INTERFACE_DATA> DeviceInterfaceData,
) =>
    _SetupDiOpenDeviceInterface(
      DeviceInfoSet,
      DevicePath,
      OpenFlags,
      DeviceInterfaceData,
    );

late final _SetupDiOpenDeviceInterface = _setupapi.lookupFunction<
    Int32 Function(
  Pointer DeviceInfoSet,
  Pointer<Utf16> DevicePath,
  Uint32 OpenFlags,
  Pointer<SP_DEVICE_INTERFACE_DATA> DeviceInterfaceData,
),
    int Function(
  Pointer DeviceInfoSet,
  Pointer<Utf16> DevicePath,
  int OpenFlags,
  Pointer<SP_DEVICE_INTERFACE_DATA> DeviceInterfaceData,
)>('SetupDiOpenDeviceInterfaceW');

int SetupDiRegisterCoDeviceInstallers(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
) =>
    _SetupDiRegisterCoDeviceInstallers(
      DeviceInfoSet,
      DeviceInfoData,
    );

late final _SetupDiRegisterCoDeviceInstallers = _setupapi.lookupFunction<
    Int32 Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
),
    int Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
)>('SetupDiRegisterCoDeviceInstallers');

int SetupDiRegisterDeviceInfo(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  int Flags,
  Pointer<NativeFunction<PSP_DETSIG_CMPPROC>> CompareProc,
  Pointer CompareContext,
  Pointer<SP_DEVINFO_DATA> DupDeviceInfoData,
) =>
    _SetupDiRegisterDeviceInfo(
      DeviceInfoSet,
      DeviceInfoData,
      Flags,
      CompareProc,
      CompareContext,
      DupDeviceInfoData,
    );

late final _SetupDiRegisterDeviceInfo = _setupapi.lookupFunction<
    Int32 Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  Uint32 Flags,
  Pointer<NativeFunction<PSP_DETSIG_CMPPROC>> CompareProc,
  Pointer CompareContext,
  Pointer<SP_DEVINFO_DATA> DupDeviceInfoData,
),
    int Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  int Flags,
  Pointer<NativeFunction<PSP_DETSIG_CMPPROC>> CompareProc,
  Pointer CompareContext,
  Pointer<SP_DEVINFO_DATA> DupDeviceInfoData,
)>('SetupDiRegisterDeviceInfo');

int SetupDiRemoveDevice(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
) =>
    _SetupDiRemoveDevice(
      DeviceInfoSet,
      DeviceInfoData,
    );

late final _SetupDiRemoveDevice = _setupapi.lookupFunction<
    Int32 Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
),
    int Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
)>('SetupDiRemoveDevice');

int SetupDiRemoveDeviceInterface(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVICE_INTERFACE_DATA> DeviceInterfaceData,
) =>
    _SetupDiRemoveDeviceInterface(
      DeviceInfoSet,
      DeviceInterfaceData,
    );

late final _SetupDiRemoveDeviceInterface = _setupapi.lookupFunction<
    Int32 Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVICE_INTERFACE_DATA> DeviceInterfaceData,
),
    int Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVICE_INTERFACE_DATA> DeviceInterfaceData,
)>('SetupDiRemoveDeviceInterface');

int SetupDiRestartDevices(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
) =>
    _SetupDiRestartDevices(
      DeviceInfoSet,
      DeviceInfoData,
    );

late final _SetupDiRestartDevices = _setupapi.lookupFunction<
    Int32 Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
),
    int Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
)>('SetupDiRestartDevices');

int SetupDiSelectBestCompatDrv(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
) =>
    _SetupDiSelectBestCompatDrv(
      DeviceInfoSet,
      DeviceInfoData,
    );

late final _SetupDiSelectBestCompatDrv = _setupapi.lookupFunction<
    Int32 Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
),
    int Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
)>('SetupDiSelectBestCompatDrv');

int SetupDiSelectDevice(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
) =>
    _SetupDiSelectDevice(
      DeviceInfoSet,
      DeviceInfoData,
    );

late final _SetupDiSelectDevice = _setupapi.lookupFunction<
    Int32 Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
),
    int Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
)>('SetupDiSelectDevice');

int SetupDiSelectOEMDrv(
  int hwndParent,
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
) =>
    _SetupDiSelectOEMDrv(
      hwndParent,
      DeviceInfoSet,
      DeviceInfoData,
    );

late final _SetupDiSelectOEMDrv = _setupapi.lookupFunction<
    Int32 Function(
  IntPtr hwndParent,
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
),
    int Function(
  int hwndParent,
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
)>('SetupDiSelectOEMDrv');

int SetupDiSetClassInstallParams(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  Pointer<SP_CLASSINSTALL_HEADER> ClassInstallParams,
  int ClassInstallParamsSize,
) =>
    _SetupDiSetClassInstallParams(
      DeviceInfoSet,
      DeviceInfoData,
      ClassInstallParams,
      ClassInstallParamsSize,
    );

late final _SetupDiSetClassInstallParams = _setupapi.lookupFunction<
    Int32 Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  Pointer<SP_CLASSINSTALL_HEADER> ClassInstallParams,
  Uint32 ClassInstallParamsSize,
),
    int Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  Pointer<SP_CLASSINSTALL_HEADER> ClassInstallParams,
  int ClassInstallParamsSize,
)>('SetupDiSetClassInstallParamsW');

int SetupDiSetClassPropertyEx(
  Pointer<GUID> ClassGuid,
  Pointer<DEVPROPKEY> PropertyKey,
  int PropertyType,
  Pointer<Uint8> PropertyBuffer,
  int PropertyBufferSize,
  int Flags,
  Pointer<Utf16> MachineName,
  Pointer Reserved,
) =>
    _SetupDiSetClassPropertyEx(
      ClassGuid,
      PropertyKey,
      PropertyType,
      PropertyBuffer,
      PropertyBufferSize,
      Flags,
      MachineName,
      Reserved,
    );

late final _SetupDiSetClassPropertyEx = _setupapi.lookupFunction<
    Int32 Function(
  Pointer<GUID> ClassGuid,
  Pointer<DEVPROPKEY> PropertyKey,
  Uint32 PropertyType,
  Pointer<Uint8> PropertyBuffer,
  Uint32 PropertyBufferSize,
  Uint32 Flags,
  Pointer<Utf16> MachineName,
  Pointer Reserved,
),
    int Function(
  Pointer<GUID> ClassGuid,
  Pointer<DEVPROPKEY> PropertyKey,
  int PropertyType,
  Pointer<Uint8> PropertyBuffer,
  int PropertyBufferSize,
  int Flags,
  Pointer<Utf16> MachineName,
  Pointer Reserved,
)>('SetupDiSetClassPropertyExW');

int SetupDiSetClassProperty(
  Pointer<GUID> ClassGuid,
  Pointer<DEVPROPKEY> PropertyKey,
  int PropertyType,
  Pointer<Uint8> PropertyBuffer,
  int PropertyBufferSize,
  int Flags,
) =>
    _SetupDiSetClassProperty(
      ClassGuid,
      PropertyKey,
      PropertyType,
      PropertyBuffer,
      PropertyBufferSize,
      Flags,
    );

late final _SetupDiSetClassProperty = _setupapi.lookupFunction<
    Int32 Function(
  Pointer<GUID> ClassGuid,
  Pointer<DEVPROPKEY> PropertyKey,
  Uint32 PropertyType,
  Pointer<Uint8> PropertyBuffer,
  Uint32 PropertyBufferSize,
  Uint32 Flags,
),
    int Function(
  Pointer<GUID> ClassGuid,
  Pointer<DEVPROPKEY> PropertyKey,
  int PropertyType,
  Pointer<Uint8> PropertyBuffer,
  int PropertyBufferSize,
  int Flags,
)>('SetupDiSetClassPropertyW');

int SetupDiSetClassRegistryProperty(
  Pointer<GUID> ClassGuid,
  int Property,
  Pointer<Uint8> PropertyBuffer,
  int PropertyBufferSize,
  Pointer<Utf16> MachineName,
  Pointer Reserved,
) =>
    _SetupDiSetClassRegistryProperty(
      ClassGuid,
      Property,
      PropertyBuffer,
      PropertyBufferSize,
      MachineName,
      Reserved,
    );

late final _SetupDiSetClassRegistryProperty = _setupapi.lookupFunction<
    Int32 Function(
  Pointer<GUID> ClassGuid,
  Uint32 Property,
  Pointer<Uint8> PropertyBuffer,
  Uint32 PropertyBufferSize,
  Pointer<Utf16> MachineName,
  Pointer Reserved,
),
    int Function(
  Pointer<GUID> ClassGuid,
  int Property,
  Pointer<Uint8> PropertyBuffer,
  int PropertyBufferSize,
  Pointer<Utf16> MachineName,
  Pointer Reserved,
)>('SetupDiSetClassRegistryPropertyW');

int SetupDiSetDeviceInstallParams(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  Pointer<SP_DEVINSTALL_PARAMS_> DeviceInstallParams,
) =>
    _SetupDiSetDeviceInstallParams(
      DeviceInfoSet,
      DeviceInfoData,
      DeviceInstallParams,
    );

late final _SetupDiSetDeviceInstallParams = _setupapi.lookupFunction<
    Int32 Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  Pointer<SP_DEVINSTALL_PARAMS_> DeviceInstallParams,
),
    int Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  Pointer<SP_DEVINSTALL_PARAMS_> DeviceInstallParams,
)>('SetupDiSetDeviceInstallParamsW');

int SetupDiSetDeviceInterfaceDefault(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVICE_INTERFACE_DATA> DeviceInterfaceData,
  int Flags,
  Pointer Reserved,
) =>
    _SetupDiSetDeviceInterfaceDefault(
      DeviceInfoSet,
      DeviceInterfaceData,
      Flags,
      Reserved,
    );

late final _SetupDiSetDeviceInterfaceDefault = _setupapi.lookupFunction<
    Int32 Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVICE_INTERFACE_DATA> DeviceInterfaceData,
  Uint32 Flags,
  Pointer Reserved,
),
    int Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVICE_INTERFACE_DATA> DeviceInterfaceData,
  int Flags,
  Pointer Reserved,
)>('SetupDiSetDeviceInterfaceDefault');

int SetupDiSetDeviceInterfaceProperty(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVICE_INTERFACE_DATA> DeviceInterfaceData,
  Pointer<DEVPROPKEY> PropertyKey,
  int PropertyType,
  Pointer<Uint8> PropertyBuffer,
  int PropertyBufferSize,
  int Flags,
) =>
    _SetupDiSetDeviceInterfaceProperty(
      DeviceInfoSet,
      DeviceInterfaceData,
      PropertyKey,
      PropertyType,
      PropertyBuffer,
      PropertyBufferSize,
      Flags,
    );

late final _SetupDiSetDeviceInterfaceProperty = _setupapi.lookupFunction<
    Int32 Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVICE_INTERFACE_DATA> DeviceInterfaceData,
  Pointer<DEVPROPKEY> PropertyKey,
  Uint32 PropertyType,
  Pointer<Uint8> PropertyBuffer,
  Uint32 PropertyBufferSize,
  Uint32 Flags,
),
    int Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVICE_INTERFACE_DATA> DeviceInterfaceData,
  Pointer<DEVPROPKEY> PropertyKey,
  int PropertyType,
  Pointer<Uint8> PropertyBuffer,
  int PropertyBufferSize,
  int Flags,
)>('SetupDiSetDeviceInterfacePropertyW');

int SetupDiSetDeviceProperty(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  Pointer<DEVPROPKEY> PropertyKey,
  int PropertyType,
  Pointer<Uint8> PropertyBuffer,
  int PropertyBufferSize,
  int Flags,
) =>
    _SetupDiSetDeviceProperty(
      DeviceInfoSet,
      DeviceInfoData,
      PropertyKey,
      PropertyType,
      PropertyBuffer,
      PropertyBufferSize,
      Flags,
    );

late final _SetupDiSetDeviceProperty = _setupapi.lookupFunction<
    Int32 Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  Pointer<DEVPROPKEY> PropertyKey,
  Uint32 PropertyType,
  Pointer<Uint8> PropertyBuffer,
  Uint32 PropertyBufferSize,
  Uint32 Flags,
),
    int Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  Pointer<DEVPROPKEY> PropertyKey,
  int PropertyType,
  Pointer<Uint8> PropertyBuffer,
  int PropertyBufferSize,
  int Flags,
)>('SetupDiSetDevicePropertyW');

int SetupDiSetDeviceRegistryProperty(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  int Property,
  Pointer<Uint8> PropertyBuffer,
  int PropertyBufferSize,
) =>
    _SetupDiSetDeviceRegistryProperty(
      DeviceInfoSet,
      DeviceInfoData,
      Property,
      PropertyBuffer,
      PropertyBufferSize,
    );

late final _SetupDiSetDeviceRegistryProperty = _setupapi.lookupFunction<
    Int32 Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  Uint32 Property,
  Pointer<Uint8> PropertyBuffer,
  Uint32 PropertyBufferSize,
),
    int Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  int Property,
  Pointer<Uint8> PropertyBuffer,
  int PropertyBufferSize,
)>('SetupDiSetDeviceRegistryPropertyW');

int SetupDiSetDriverInstallParams(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  Pointer<SP_DRVINFO_DATA_V2_> DriverInfoData,
  Pointer<SP_DRVINSTALL_PARAMS> DriverInstallParams,
) =>
    _SetupDiSetDriverInstallParams(
      DeviceInfoSet,
      DeviceInfoData,
      DriverInfoData,
      DriverInstallParams,
    );

late final _SetupDiSetDriverInstallParams = _setupapi.lookupFunction<
    Int32 Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  Pointer<SP_DRVINFO_DATA_V2_> DriverInfoData,
  Pointer<SP_DRVINSTALL_PARAMS> DriverInstallParams,
),
    int Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  Pointer<SP_DRVINFO_DATA_V2_> DriverInfoData,
  Pointer<SP_DRVINSTALL_PARAMS> DriverInstallParams,
)>('SetupDiSetDriverInstallParamsW');

int SetupDiSetSelectedDevice(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
) =>
    _SetupDiSetSelectedDevice(
      DeviceInfoSet,
      DeviceInfoData,
    );

late final _SetupDiSetSelectedDevice = _setupapi.lookupFunction<
    Int32 Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
),
    int Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
)>('SetupDiSetSelectedDevice');

int SetupDiSetSelectedDriver(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  Pointer<SP_DRVINFO_DATA_V2_> DriverInfoData,
) =>
    _SetupDiSetSelectedDriver(
      DeviceInfoSet,
      DeviceInfoData,
      DriverInfoData,
    );

late final _SetupDiSetSelectedDriver = _setupapi.lookupFunction<
    Int32 Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  Pointer<SP_DRVINFO_DATA_V2_> DriverInfoData,
),
    int Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  Pointer<SP_DRVINFO_DATA_V2_> DriverInfoData,
)>('SetupDiSetSelectedDriverW');

int SetupDiUnremoveDevice(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
) =>
    _SetupDiUnremoveDevice(
      DeviceInfoSet,
      DeviceInfoData,
    );

late final _SetupDiUnremoveDevice = _setupapi.lookupFunction<
    Int32 Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
),
    int Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
)>('SetupDiUnremoveDevice');

Pointer SetupDuplicateDiskSpaceList(
  Pointer DiskSpace,
  Pointer Reserved1,
  int Reserved2,
  int Flags,
) =>
    _SetupDuplicateDiskSpaceList(
      DiskSpace,
      Reserved1,
      Reserved2,
      Flags,
    );

late final _SetupDuplicateDiskSpaceList = _setupapi.lookupFunction<
    Pointer Function(
  Pointer DiskSpace,
  Pointer Reserved1,
  Uint32 Reserved2,
  Uint32 Flags,
),
    Pointer Function(
  Pointer DiskSpace,
  Pointer Reserved1,
  int Reserved2,
  int Flags,
)>('SetupDuplicateDiskSpaceListW');

int SetupEnumInfSections(
  Pointer InfHandle,
  int Index,
  Pointer<Utf16> Buffer,
  int Size,
  Pointer<Uint32> SizeNeeded,
) =>
    _SetupEnumInfSections(
      InfHandle,
      Index,
      Buffer,
      Size,
      SizeNeeded,
    );

late final _SetupEnumInfSections = _setupapi.lookupFunction<
    Int32 Function(
  Pointer InfHandle,
  Uint32 Index,
  Pointer<Utf16> Buffer,
  Uint32 Size,
  Pointer<Uint32> SizeNeeded,
),
    int Function(
  Pointer InfHandle,
  int Index,
  Pointer<Utf16> Buffer,
  int Size,
  Pointer<Uint32> SizeNeeded,
)>('SetupEnumInfSectionsW');

int SetupFindFirstLine(
  Pointer InfHandle,
  Pointer<Utf16> Section,
  Pointer<Utf16> Key,
  Pointer<INFCONTEXT> Context,
) =>
    _SetupFindFirstLine(
      InfHandle,
      Section,
      Key,
      Context,
    );

late final _SetupFindFirstLine = _setupapi.lookupFunction<
    Int32 Function(
  Pointer InfHandle,
  Pointer<Utf16> Section,
  Pointer<Utf16> Key,
  Pointer<INFCONTEXT> Context,
),
    int Function(
  Pointer InfHandle,
  Pointer<Utf16> Section,
  Pointer<Utf16> Key,
  Pointer<INFCONTEXT> Context,
)>('SetupFindFirstLineW');

int SetupFindNextLine(
  Pointer<INFCONTEXT> ContextIn,
  Pointer<INFCONTEXT> ContextOut,
) =>
    _SetupFindNextLine(
      ContextIn,
      ContextOut,
    );

late final _SetupFindNextLine = _setupapi.lookupFunction<
    Int32 Function(
  Pointer<INFCONTEXT> ContextIn,
  Pointer<INFCONTEXT> ContextOut,
),
    int Function(
  Pointer<INFCONTEXT> ContextIn,
  Pointer<INFCONTEXT> ContextOut,
)>('SetupFindNextLine');

int SetupFindNextMatchLine(
  Pointer<INFCONTEXT> ContextIn,
  Pointer<Utf16> Key,
  Pointer<INFCONTEXT> ContextOut,
) =>
    _SetupFindNextMatchLine(
      ContextIn,
      Key,
      ContextOut,
    );

late final _SetupFindNextMatchLine = _setupapi.lookupFunction<
    Int32 Function(
  Pointer<INFCONTEXT> ContextIn,
  Pointer<Utf16> Key,
  Pointer<INFCONTEXT> ContextOut,
),
    int Function(
  Pointer<INFCONTEXT> ContextIn,
  Pointer<Utf16> Key,
  Pointer<INFCONTEXT> ContextOut,
)>('SetupFindNextMatchLineW');

int SetupFreeSourceList(
  Pointer<Pointer<Pointer<Utf16>>> $List,
  int Count,
) =>
    _SetupFreeSourceList(
      $List,
      Count,
    );

late final _SetupFreeSourceList = _setupapi.lookupFunction<
    Int32 Function(
  Pointer<Pointer<Pointer<Utf16>>> $List,
  Uint32 Count,
),
    int Function(
  Pointer<Pointer<Pointer<Utf16>>> $List,
  int Count,
)>('SetupFreeSourceListW');

int SetupGetBackupInformation(
  Pointer QueueHandle,
  Pointer<SP_BACKUP_QUEUE_PARAMS_V2_> BackupParams,
) =>
    _SetupGetBackupInformation(
      QueueHandle,
      BackupParams,
    );

late final _SetupGetBackupInformation = _setupapi.lookupFunction<
    Int32 Function(
  Pointer QueueHandle,
  Pointer<SP_BACKUP_QUEUE_PARAMS_V2_> BackupParams,
),
    int Function(
  Pointer QueueHandle,
  Pointer<SP_BACKUP_QUEUE_PARAMS_V2_> BackupParams,
)>('SetupGetBackupInformationW');

int SetupGetBinaryField(
  Pointer<INFCONTEXT> Context,
  int FieldIndex,
  Pointer<Uint8> ReturnBuffer,
  int ReturnBufferSize,
  Pointer<Uint32> RequiredSize,
) =>
    _SetupGetBinaryField(
      Context,
      FieldIndex,
      ReturnBuffer,
      ReturnBufferSize,
      RequiredSize,
    );

late final _SetupGetBinaryField = _setupapi.lookupFunction<
    Int32 Function(
  Pointer<INFCONTEXT> Context,
  Uint32 FieldIndex,
  Pointer<Uint8> ReturnBuffer,
  Uint32 ReturnBufferSize,
  Pointer<Uint32> RequiredSize,
),
    int Function(
  Pointer<INFCONTEXT> Context,
  int FieldIndex,
  Pointer<Uint8> ReturnBuffer,
  int ReturnBufferSize,
  Pointer<Uint32> RequiredSize,
)>('SetupGetBinaryField');

int SetupGetFieldCount(
  Pointer<INFCONTEXT> Context,
) =>
    _SetupGetFieldCount(
      Context,
    );

late final _SetupGetFieldCount = _setupapi.lookupFunction<
    Uint32 Function(
  Pointer<INFCONTEXT> Context,
),
    int Function(
  Pointer<INFCONTEXT> Context,
)>('SetupGetFieldCount');

int SetupGetFileCompressionInfoEx(
  Pointer<Utf16> SourceFileName,
  Pointer<Utf16> ActualSourceFileNameBuffer,
  int ActualSourceFileNameBufferLen,
  Pointer<Uint32> RequiredBufferLen,
  Pointer<Uint32> SourceFileSize,
  Pointer<Uint32> TargetFileSize,
  Pointer<Uint32> CompressionType,
) =>
    _SetupGetFileCompressionInfoEx(
      SourceFileName,
      ActualSourceFileNameBuffer,
      ActualSourceFileNameBufferLen,
      RequiredBufferLen,
      SourceFileSize,
      TargetFileSize,
      CompressionType,
    );

late final _SetupGetFileCompressionInfoEx = _setupapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> SourceFileName,
  Pointer<Utf16> ActualSourceFileNameBuffer,
  Uint32 ActualSourceFileNameBufferLen,
  Pointer<Uint32> RequiredBufferLen,
  Pointer<Uint32> SourceFileSize,
  Pointer<Uint32> TargetFileSize,
  Pointer<Uint32> CompressionType,
),
    int Function(
  Pointer<Utf16> SourceFileName,
  Pointer<Utf16> ActualSourceFileNameBuffer,
  int ActualSourceFileNameBufferLen,
  Pointer<Uint32> RequiredBufferLen,
  Pointer<Uint32> SourceFileSize,
  Pointer<Uint32> TargetFileSize,
  Pointer<Uint32> CompressionType,
)>('SetupGetFileCompressionInfoExW');

int SetupGetFileCompressionInfo(
  Pointer<Utf16> SourceFileName,
  Pointer<Pointer<Utf16>> ActualSourceFileName,
  Pointer<Uint32> SourceFileSize,
  Pointer<Uint32> TargetFileSize,
  Pointer<Uint32> CompressionType,
) =>
    _SetupGetFileCompressionInfo(
      SourceFileName,
      ActualSourceFileName,
      SourceFileSize,
      TargetFileSize,
      CompressionType,
    );

late final _SetupGetFileCompressionInfo = _setupapi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> SourceFileName,
  Pointer<Pointer<Utf16>> ActualSourceFileName,
  Pointer<Uint32> SourceFileSize,
  Pointer<Uint32> TargetFileSize,
  Pointer<Uint32> CompressionType,
),
    int Function(
  Pointer<Utf16> SourceFileName,
  Pointer<Pointer<Utf16>> ActualSourceFileName,
  Pointer<Uint32> SourceFileSize,
  Pointer<Uint32> TargetFileSize,
  Pointer<Uint32> CompressionType,
)>('SetupGetFileCompressionInfoW');

int SetupGetFileQueueCount(
  Pointer FileQueue,
  int SubQueueFileOp,
  Pointer<Uint32> NumOperations,
) =>
    _SetupGetFileQueueCount(
      FileQueue,
      SubQueueFileOp,
      NumOperations,
    );

late final _SetupGetFileQueueCount = _setupapi.lookupFunction<
    Int32 Function(
  Pointer FileQueue,
  Uint32 SubQueueFileOp,
  Pointer<Uint32> NumOperations,
),
    int Function(
  Pointer FileQueue,
  int SubQueueFileOp,
  Pointer<Uint32> NumOperations,
)>('SetupGetFileQueueCount');

int SetupGetFileQueueFlags(
  Pointer FileQueue,
  Pointer<Uint32> Flags,
) =>
    _SetupGetFileQueueFlags(
      FileQueue,
      Flags,
    );

late final _SetupGetFileQueueFlags = _setupapi.lookupFunction<
    Int32 Function(
  Pointer FileQueue,
  Pointer<Uint32> Flags,
),
    int Function(
  Pointer FileQueue,
  Pointer<Uint32> Flags,
)>('SetupGetFileQueueFlags');

int SetupGetInfDriverStoreLocation(
  Pointer<Utf16> FileName,
  Pointer<SP_ALTPLATFORM_INFO_V2> AlternatePlatformInfo,
  Pointer<Utf16> LocaleName,
  Pointer<Utf16> ReturnBuffer,
  int ReturnBufferSize,
  Pointer<Uint32> RequiredSize,
) =>
    _SetupGetInfDriverStoreLocation(
      FileName,
      AlternatePlatformInfo,
      LocaleName,
      ReturnBuffer,
      ReturnBufferSize,
      RequiredSize,
    );

late final _SetupGetInfDriverStoreLocation = _setupapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> FileName,
  Pointer<SP_ALTPLATFORM_INFO_V2> AlternatePlatformInfo,
  Pointer<Utf16> LocaleName,
  Pointer<Utf16> ReturnBuffer,
  Uint32 ReturnBufferSize,
  Pointer<Uint32> RequiredSize,
),
    int Function(
  Pointer<Utf16> FileName,
  Pointer<SP_ALTPLATFORM_INFO_V2> AlternatePlatformInfo,
  Pointer<Utf16> LocaleName,
  Pointer<Utf16> ReturnBuffer,
  int ReturnBufferSize,
  Pointer<Uint32> RequiredSize,
)>('SetupGetInfDriverStoreLocationW');

int SetupGetInfFileList(
  Pointer<Utf16> DirectoryPath,
  int InfStyle,
  Pointer<Utf16> ReturnBuffer,
  int ReturnBufferSize,
  Pointer<Uint32> RequiredSize,
) =>
    _SetupGetInfFileList(
      DirectoryPath,
      InfStyle,
      ReturnBuffer,
      ReturnBufferSize,
      RequiredSize,
    );

late final _SetupGetInfFileList = _setupapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> DirectoryPath,
  Uint32 InfStyle,
  Pointer<Utf16> ReturnBuffer,
  Uint32 ReturnBufferSize,
  Pointer<Uint32> RequiredSize,
),
    int Function(
  Pointer<Utf16> DirectoryPath,
  int InfStyle,
  Pointer<Utf16> ReturnBuffer,
  int ReturnBufferSize,
  Pointer<Uint32> RequiredSize,
)>('SetupGetInfFileListW');

int SetupGetInfInformation(
  Pointer InfSpec,
  int SearchControl,
  Pointer<SP_INF_INFORMATION> ReturnBuffer,
  int ReturnBufferSize,
  Pointer<Uint32> RequiredSize,
) =>
    _SetupGetInfInformation(
      InfSpec,
      SearchControl,
      ReturnBuffer,
      ReturnBufferSize,
      RequiredSize,
    );

late final _SetupGetInfInformation = _setupapi.lookupFunction<
    Int32 Function(
  Pointer InfSpec,
  Uint32 SearchControl,
  Pointer<SP_INF_INFORMATION> ReturnBuffer,
  Uint32 ReturnBufferSize,
  Pointer<Uint32> RequiredSize,
),
    int Function(
  Pointer InfSpec,
  int SearchControl,
  Pointer<SP_INF_INFORMATION> ReturnBuffer,
  int ReturnBufferSize,
  Pointer<Uint32> RequiredSize,
)>('SetupGetInfInformationW');

int SetupGetInfPublishedName(
  Pointer<Utf16> DriverStoreLocation,
  Pointer<Utf16> ReturnBuffer,
  int ReturnBufferSize,
  Pointer<Uint32> RequiredSize,
) =>
    _SetupGetInfPublishedName(
      DriverStoreLocation,
      ReturnBuffer,
      ReturnBufferSize,
      RequiredSize,
    );

late final _SetupGetInfPublishedName = _setupapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> DriverStoreLocation,
  Pointer<Utf16> ReturnBuffer,
  Uint32 ReturnBufferSize,
  Pointer<Uint32> RequiredSize,
),
    int Function(
  Pointer<Utf16> DriverStoreLocation,
  Pointer<Utf16> ReturnBuffer,
  int ReturnBufferSize,
  Pointer<Uint32> RequiredSize,
)>('SetupGetInfPublishedNameW');

int SetupGetIntField(
  Pointer<INFCONTEXT> Context,
  int FieldIndex,
  Pointer<Int32> IntegerValue,
) =>
    _SetupGetIntField(
      Context,
      FieldIndex,
      IntegerValue,
    );

late final _SetupGetIntField = _setupapi.lookupFunction<
    Int32 Function(
  Pointer<INFCONTEXT> Context,
  Uint32 FieldIndex,
  Pointer<Int32> IntegerValue,
),
    int Function(
  Pointer<INFCONTEXT> Context,
  int FieldIndex,
  Pointer<Int32> IntegerValue,
)>('SetupGetIntField');

int SetupGetLineByIndex(
  Pointer InfHandle,
  Pointer<Utf16> Section,
  int Index,
  Pointer<INFCONTEXT> Context,
) =>
    _SetupGetLineByIndex(
      InfHandle,
      Section,
      Index,
      Context,
    );

late final _SetupGetLineByIndex = _setupapi.lookupFunction<
    Int32 Function(
  Pointer InfHandle,
  Pointer<Utf16> Section,
  Uint32 Index,
  Pointer<INFCONTEXT> Context,
),
    int Function(
  Pointer InfHandle,
  Pointer<Utf16> Section,
  int Index,
  Pointer<INFCONTEXT> Context,
)>('SetupGetLineByIndexW');

int SetupGetLineCount(
  Pointer InfHandle,
  Pointer<Utf16> Section,
) =>
    _SetupGetLineCount(
      InfHandle,
      Section,
    );

late final _SetupGetLineCount = _setupapi.lookupFunction<
    Int32 Function(
  Pointer InfHandle,
  Pointer<Utf16> Section,
),
    int Function(
  Pointer InfHandle,
  Pointer<Utf16> Section,
)>('SetupGetLineCountW');

int SetupGetLineText(
  Pointer<INFCONTEXT> Context,
  Pointer InfHandle,
  Pointer<Utf16> Section,
  Pointer<Utf16> Key,
  Pointer<Utf16> ReturnBuffer,
  int ReturnBufferSize,
  Pointer<Uint32> RequiredSize,
) =>
    _SetupGetLineText(
      Context,
      InfHandle,
      Section,
      Key,
      ReturnBuffer,
      ReturnBufferSize,
      RequiredSize,
    );

late final _SetupGetLineText = _setupapi.lookupFunction<
    Int32 Function(
  Pointer<INFCONTEXT> Context,
  Pointer InfHandle,
  Pointer<Utf16> Section,
  Pointer<Utf16> Key,
  Pointer<Utf16> ReturnBuffer,
  Uint32 ReturnBufferSize,
  Pointer<Uint32> RequiredSize,
),
    int Function(
  Pointer<INFCONTEXT> Context,
  Pointer InfHandle,
  Pointer<Utf16> Section,
  Pointer<Utf16> Key,
  Pointer<Utf16> ReturnBuffer,
  int ReturnBufferSize,
  Pointer<Uint32> RequiredSize,
)>('SetupGetLineTextW');

int SetupGetMultiSzField(
  Pointer<INFCONTEXT> Context,
  int FieldIndex,
  Pointer<Utf16> ReturnBuffer,
  int ReturnBufferSize,
  Pointer<Uint32> RequiredSize,
) =>
    _SetupGetMultiSzField(
      Context,
      FieldIndex,
      ReturnBuffer,
      ReturnBufferSize,
      RequiredSize,
    );

late final _SetupGetMultiSzField = _setupapi.lookupFunction<
    Int32 Function(
  Pointer<INFCONTEXT> Context,
  Uint32 FieldIndex,
  Pointer<Utf16> ReturnBuffer,
  Uint32 ReturnBufferSize,
  Pointer<Uint32> RequiredSize,
),
    int Function(
  Pointer<INFCONTEXT> Context,
  int FieldIndex,
  Pointer<Utf16> ReturnBuffer,
  int ReturnBufferSize,
  Pointer<Uint32> RequiredSize,
)>('SetupGetMultiSzFieldW');

int SetupGetNonInteractiveMode() => _SetupGetNonInteractiveMode();

late final _SetupGetNonInteractiveMode =
    _setupapi.lookupFunction<Int32 Function(), int Function()>(
        'SetupGetNonInteractiveMode');

int SetupGetSourceFileLocation(
  Pointer InfHandle,
  Pointer<INFCONTEXT> InfContext,
  Pointer<Utf16> FileName,
  Pointer<Uint32> SourceId,
  Pointer<Utf16> ReturnBuffer,
  int ReturnBufferSize,
  Pointer<Uint32> RequiredSize,
) =>
    _SetupGetSourceFileLocation(
      InfHandle,
      InfContext,
      FileName,
      SourceId,
      ReturnBuffer,
      ReturnBufferSize,
      RequiredSize,
    );

late final _SetupGetSourceFileLocation = _setupapi.lookupFunction<
    Int32 Function(
  Pointer InfHandle,
  Pointer<INFCONTEXT> InfContext,
  Pointer<Utf16> FileName,
  Pointer<Uint32> SourceId,
  Pointer<Utf16> ReturnBuffer,
  Uint32 ReturnBufferSize,
  Pointer<Uint32> RequiredSize,
),
    int Function(
  Pointer InfHandle,
  Pointer<INFCONTEXT> InfContext,
  Pointer<Utf16> FileName,
  Pointer<Uint32> SourceId,
  Pointer<Utf16> ReturnBuffer,
  int ReturnBufferSize,
  Pointer<Uint32> RequiredSize,
)>('SetupGetSourceFileLocationW');

int SetupGetSourceFileSize(
  Pointer InfHandle,
  Pointer<INFCONTEXT> InfContext,
  Pointer<Utf16> FileName,
  Pointer<Utf16> Section,
  Pointer<Uint32> FileSize,
  int RoundingFactor,
) =>
    _SetupGetSourceFileSize(
      InfHandle,
      InfContext,
      FileName,
      Section,
      FileSize,
      RoundingFactor,
    );

late final _SetupGetSourceFileSize = _setupapi.lookupFunction<
    Int32 Function(
  Pointer InfHandle,
  Pointer<INFCONTEXT> InfContext,
  Pointer<Utf16> FileName,
  Pointer<Utf16> Section,
  Pointer<Uint32> FileSize,
  Uint32 RoundingFactor,
),
    int Function(
  Pointer InfHandle,
  Pointer<INFCONTEXT> InfContext,
  Pointer<Utf16> FileName,
  Pointer<Utf16> Section,
  Pointer<Uint32> FileSize,
  int RoundingFactor,
)>('SetupGetSourceFileSizeW');

int SetupGetSourceInfo(
  Pointer InfHandle,
  int SourceId,
  int InfoDesired,
  Pointer<Utf16> ReturnBuffer,
  int ReturnBufferSize,
  Pointer<Uint32> RequiredSize,
) =>
    _SetupGetSourceInfo(
      InfHandle,
      SourceId,
      InfoDesired,
      ReturnBuffer,
      ReturnBufferSize,
      RequiredSize,
    );

late final _SetupGetSourceInfo = _setupapi.lookupFunction<
    Int32 Function(
  Pointer InfHandle,
  Uint32 SourceId,
  Uint32 InfoDesired,
  Pointer<Utf16> ReturnBuffer,
  Uint32 ReturnBufferSize,
  Pointer<Uint32> RequiredSize,
),
    int Function(
  Pointer InfHandle,
  int SourceId,
  int InfoDesired,
  Pointer<Utf16> ReturnBuffer,
  int ReturnBufferSize,
  Pointer<Uint32> RequiredSize,
)>('SetupGetSourceInfoW');

int SetupGetStringField(
  Pointer<INFCONTEXT> Context,
  int FieldIndex,
  Pointer<Utf16> ReturnBuffer,
  int ReturnBufferSize,
  Pointer<Uint32> RequiredSize,
) =>
    _SetupGetStringField(
      Context,
      FieldIndex,
      ReturnBuffer,
      ReturnBufferSize,
      RequiredSize,
    );

late final _SetupGetStringField = _setupapi.lookupFunction<
    Int32 Function(
  Pointer<INFCONTEXT> Context,
  Uint32 FieldIndex,
  Pointer<Utf16> ReturnBuffer,
  Uint32 ReturnBufferSize,
  Pointer<Uint32> RequiredSize,
),
    int Function(
  Pointer<INFCONTEXT> Context,
  int FieldIndex,
  Pointer<Utf16> ReturnBuffer,
  int ReturnBufferSize,
  Pointer<Uint32> RequiredSize,
)>('SetupGetStringFieldW');

int SetupGetTargetPath(
  Pointer InfHandle,
  Pointer<INFCONTEXT> InfContext,
  Pointer<Utf16> Section,
  Pointer<Utf16> ReturnBuffer,
  int ReturnBufferSize,
  Pointer<Uint32> RequiredSize,
) =>
    _SetupGetTargetPath(
      InfHandle,
      InfContext,
      Section,
      ReturnBuffer,
      ReturnBufferSize,
      RequiredSize,
    );

late final _SetupGetTargetPath = _setupapi.lookupFunction<
    Int32 Function(
  Pointer InfHandle,
  Pointer<INFCONTEXT> InfContext,
  Pointer<Utf16> Section,
  Pointer<Utf16> ReturnBuffer,
  Uint32 ReturnBufferSize,
  Pointer<Uint32> RequiredSize,
),
    int Function(
  Pointer InfHandle,
  Pointer<INFCONTEXT> InfContext,
  Pointer<Utf16> Section,
  Pointer<Utf16> ReturnBuffer,
  int ReturnBufferSize,
  Pointer<Uint32> RequiredSize,
)>('SetupGetTargetPathW');

int SetupGetThreadLogToken() => _SetupGetThreadLogToken();

late final _SetupGetThreadLogToken =
    _setupapi.lookupFunction<Uint64 Function(), int Function()>(
        'SetupGetThreadLogToken');

Pointer SetupInitDefaultQueueCallback(
  int OwnerWindow,
) =>
    _SetupInitDefaultQueueCallback(
      OwnerWindow,
    );

late final _SetupInitDefaultQueueCallback = _setupapi.lookupFunction<
    Pointer Function(
  IntPtr OwnerWindow,
),
    Pointer Function(
  int OwnerWindow,
)>('SetupInitDefaultQueueCallback');

Pointer SetupInitDefaultQueueCallbackEx(
  int OwnerWindow,
  int AlternateProgressWindow,
  int ProgressMessage,
  int Reserved1,
  Pointer Reserved2,
) =>
    _SetupInitDefaultQueueCallbackEx(
      OwnerWindow,
      AlternateProgressWindow,
      ProgressMessage,
      Reserved1,
      Reserved2,
    );

late final _SetupInitDefaultQueueCallbackEx = _setupapi.lookupFunction<
    Pointer Function(
  IntPtr OwnerWindow,
  IntPtr AlternateProgressWindow,
  Uint32 ProgressMessage,
  Uint32 Reserved1,
  Pointer Reserved2,
),
    Pointer Function(
  int OwnerWindow,
  int AlternateProgressWindow,
  int ProgressMessage,
  int Reserved1,
  Pointer Reserved2,
)>('SetupInitDefaultQueueCallbackEx');

Pointer SetupInitializeFileLog(
  Pointer<Utf16> LogFileName,
  int Flags,
) =>
    _SetupInitializeFileLog(
      LogFileName,
      Flags,
    );

late final _SetupInitializeFileLog = _setupapi.lookupFunction<
    Pointer Function(
  Pointer<Utf16> LogFileName,
  Uint32 Flags,
),
    Pointer Function(
  Pointer<Utf16> LogFileName,
  int Flags,
)>('SetupInitializeFileLogW');

int SetupInstallFileEx(
  Pointer InfHandle,
  Pointer<INFCONTEXT> InfContext,
  Pointer<Utf16> SourceFile,
  Pointer<Utf16> SourcePathRoot,
  Pointer<Utf16> DestinationName,
  int CopyStyle,
  Pointer<NativeFunction<PSP_FILE_CALLBACK_W>> CopyMsgHandler,
  Pointer Context,
  Pointer<Int32> FileWasInUse,
) =>
    _SetupInstallFileEx(
      InfHandle,
      InfContext,
      SourceFile,
      SourcePathRoot,
      DestinationName,
      CopyStyle,
      CopyMsgHandler,
      Context,
      FileWasInUse,
    );

late final _SetupInstallFileEx = _setupapi.lookupFunction<
    Int32 Function(
  Pointer InfHandle,
  Pointer<INFCONTEXT> InfContext,
  Pointer<Utf16> SourceFile,
  Pointer<Utf16> SourcePathRoot,
  Pointer<Utf16> DestinationName,
  Uint32 CopyStyle,
  Pointer<NativeFunction<PSP_FILE_CALLBACK_W>> CopyMsgHandler,
  Pointer Context,
  Pointer<Int32> FileWasInUse,
),
    int Function(
  Pointer InfHandle,
  Pointer<INFCONTEXT> InfContext,
  Pointer<Utf16> SourceFile,
  Pointer<Utf16> SourcePathRoot,
  Pointer<Utf16> DestinationName,
  int CopyStyle,
  Pointer<NativeFunction<PSP_FILE_CALLBACK_W>> CopyMsgHandler,
  Pointer Context,
  Pointer<Int32> FileWasInUse,
)>('SetupInstallFileExW');

int SetupInstallFile(
  Pointer InfHandle,
  Pointer<INFCONTEXT> InfContext,
  Pointer<Utf16> SourceFile,
  Pointer<Utf16> SourcePathRoot,
  Pointer<Utf16> DestinationName,
  int CopyStyle,
  Pointer<NativeFunction<PSP_FILE_CALLBACK_W>> CopyMsgHandler,
  Pointer Context,
) =>
    _SetupInstallFile(
      InfHandle,
      InfContext,
      SourceFile,
      SourcePathRoot,
      DestinationName,
      CopyStyle,
      CopyMsgHandler,
      Context,
    );

late final _SetupInstallFile = _setupapi.lookupFunction<
    Int32 Function(
  Pointer InfHandle,
  Pointer<INFCONTEXT> InfContext,
  Pointer<Utf16> SourceFile,
  Pointer<Utf16> SourcePathRoot,
  Pointer<Utf16> DestinationName,
  Uint32 CopyStyle,
  Pointer<NativeFunction<PSP_FILE_CALLBACK_W>> CopyMsgHandler,
  Pointer Context,
),
    int Function(
  Pointer InfHandle,
  Pointer<INFCONTEXT> InfContext,
  Pointer<Utf16> SourceFile,
  Pointer<Utf16> SourcePathRoot,
  Pointer<Utf16> DestinationName,
  int CopyStyle,
  Pointer<NativeFunction<PSP_FILE_CALLBACK_W>> CopyMsgHandler,
  Pointer Context,
)>('SetupInstallFileW');

int SetupInstallFilesFromInfSection(
  Pointer InfHandle,
  Pointer LayoutInfHandle,
  Pointer FileQueue,
  Pointer<Utf16> SectionName,
  Pointer<Utf16> SourceRootPath,
  int CopyFlags,
) =>
    _SetupInstallFilesFromInfSection(
      InfHandle,
      LayoutInfHandle,
      FileQueue,
      SectionName,
      SourceRootPath,
      CopyFlags,
    );

late final _SetupInstallFilesFromInfSection = _setupapi.lookupFunction<
    Int32 Function(
  Pointer InfHandle,
  Pointer LayoutInfHandle,
  Pointer FileQueue,
  Pointer<Utf16> SectionName,
  Pointer<Utf16> SourceRootPath,
  Uint32 CopyFlags,
),
    int Function(
  Pointer InfHandle,
  Pointer LayoutInfHandle,
  Pointer FileQueue,
  Pointer<Utf16> SectionName,
  Pointer<Utf16> SourceRootPath,
  int CopyFlags,
)>('SetupInstallFilesFromInfSectionW');

int SetupInstallFromInfSection(
  int Owner,
  Pointer InfHandle,
  Pointer<Utf16> SectionName,
  int Flags,
  int RelativeKeyRoot,
  Pointer<Utf16> SourceRootPath,
  int CopyFlags,
  Pointer<NativeFunction<PSP_FILE_CALLBACK_W>> MsgHandler,
  Pointer Context,
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
) =>
    _SetupInstallFromInfSection(
      Owner,
      InfHandle,
      SectionName,
      Flags,
      RelativeKeyRoot,
      SourceRootPath,
      CopyFlags,
      MsgHandler,
      Context,
      DeviceInfoSet,
      DeviceInfoData,
    );

late final _SetupInstallFromInfSection = _setupapi.lookupFunction<
    Int32 Function(
  IntPtr Owner,
  Pointer InfHandle,
  Pointer<Utf16> SectionName,
  Uint32 Flags,
  IntPtr RelativeKeyRoot,
  Pointer<Utf16> SourceRootPath,
  Uint32 CopyFlags,
  Pointer<NativeFunction<PSP_FILE_CALLBACK_W>> MsgHandler,
  Pointer Context,
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
),
    int Function(
  int Owner,
  Pointer InfHandle,
  Pointer<Utf16> SectionName,
  int Flags,
  int RelativeKeyRoot,
  Pointer<Utf16> SourceRootPath,
  int CopyFlags,
  Pointer<NativeFunction<PSP_FILE_CALLBACK_W>> MsgHandler,
  Pointer Context,
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
)>('SetupInstallFromInfSectionW');

int SetupInstallServicesFromInfSectionEx(
  Pointer InfHandle,
  Pointer<Utf16> SectionName,
  int Flags,
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  Pointer Reserved1,
  Pointer Reserved2,
) =>
    _SetupInstallServicesFromInfSectionEx(
      InfHandle,
      SectionName,
      Flags,
      DeviceInfoSet,
      DeviceInfoData,
      Reserved1,
      Reserved2,
    );

late final _SetupInstallServicesFromInfSectionEx = _setupapi.lookupFunction<
    Int32 Function(
  Pointer InfHandle,
  Pointer<Utf16> SectionName,
  Uint32 Flags,
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  Pointer Reserved1,
  Pointer Reserved2,
),
    int Function(
  Pointer InfHandle,
  Pointer<Utf16> SectionName,
  int Flags,
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  Pointer Reserved1,
  Pointer Reserved2,
)>('SetupInstallServicesFromInfSectionExW');

int SetupInstallServicesFromInfSection(
  Pointer InfHandle,
  Pointer<Utf16> SectionName,
  int Flags,
) =>
    _SetupInstallServicesFromInfSection(
      InfHandle,
      SectionName,
      Flags,
    );

late final _SetupInstallServicesFromInfSection = _setupapi.lookupFunction<
    Int32 Function(
  Pointer InfHandle,
  Pointer<Utf16> SectionName,
  Uint32 Flags,
),
    int Function(
  Pointer InfHandle,
  Pointer<Utf16> SectionName,
  int Flags,
)>('SetupInstallServicesFromInfSectionW');

int SetupIterateCabinet(
  Pointer<Utf16> CabinetFile,
  int Reserved,
  Pointer<NativeFunction<PSP_FILE_CALLBACK_W>> MsgHandler,
  Pointer Context,
) =>
    _SetupIterateCabinet(
      CabinetFile,
      Reserved,
      MsgHandler,
      Context,
    );

late final _SetupIterateCabinet = _setupapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> CabinetFile,
  Uint32 Reserved,
  Pointer<NativeFunction<PSP_FILE_CALLBACK_W>> MsgHandler,
  Pointer Context,
),
    int Function(
  Pointer<Utf16> CabinetFile,
  int Reserved,
  Pointer<NativeFunction<PSP_FILE_CALLBACK_W>> MsgHandler,
  Pointer Context,
)>('SetupIterateCabinetW');

int SetupLogError(
  Pointer<Utf16> MessageString,
  int Severity,
) =>
    _SetupLogError(
      MessageString,
      Severity,
    );

late final _SetupLogError = _setupapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> MessageString,
  Uint32 Severity,
),
    int Function(
  Pointer<Utf16> MessageString,
  int Severity,
)>('SetupLogErrorW');

int SetupLogFile(
  Pointer FileLogHandle,
  Pointer<Utf16> LogSectionName,
  Pointer<Utf16> SourceFilename,
  Pointer<Utf16> TargetFilename,
  int Checksum,
  Pointer<Utf16> DiskTagfile,
  Pointer<Utf16> DiskDescription,
  Pointer<Utf16> OtherInfo,
  int Flags,
) =>
    _SetupLogFile(
      FileLogHandle,
      LogSectionName,
      SourceFilename,
      TargetFilename,
      Checksum,
      DiskTagfile,
      DiskDescription,
      OtherInfo,
      Flags,
    );

late final _SetupLogFile = _setupapi.lookupFunction<
    Int32 Function(
  Pointer FileLogHandle,
  Pointer<Utf16> LogSectionName,
  Pointer<Utf16> SourceFilename,
  Pointer<Utf16> TargetFilename,
  Uint32 Checksum,
  Pointer<Utf16> DiskTagfile,
  Pointer<Utf16> DiskDescription,
  Pointer<Utf16> OtherInfo,
  Uint32 Flags,
),
    int Function(
  Pointer FileLogHandle,
  Pointer<Utf16> LogSectionName,
  Pointer<Utf16> SourceFilename,
  Pointer<Utf16> TargetFilename,
  int Checksum,
  Pointer<Utf16> DiskTagfile,
  Pointer<Utf16> DiskDescription,
  Pointer<Utf16> OtherInfo,
  int Flags,
)>('SetupLogFileW');

int SetupOpenAppendInfFile(
  Pointer<Utf16> FileName,
  Pointer InfHandle,
  Pointer<Uint32> ErrorLine,
) =>
    _SetupOpenAppendInfFile(
      FileName,
      InfHandle,
      ErrorLine,
    );

late final _SetupOpenAppendInfFile = _setupapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> FileName,
  Pointer InfHandle,
  Pointer<Uint32> ErrorLine,
),
    int Function(
  Pointer<Utf16> FileName,
  Pointer InfHandle,
  Pointer<Uint32> ErrorLine,
)>('SetupOpenAppendInfFileW');

Pointer SetupOpenFileQueue() => _SetupOpenFileQueue();

late final _SetupOpenFileQueue =
    _setupapi.lookupFunction<Pointer Function(), Pointer Function()>(
        'SetupOpenFileQueue');

Pointer SetupOpenInfFile(
  Pointer<Utf16> FileName,
  Pointer<Utf16> InfClass,
  int InfStyle,
  Pointer<Uint32> ErrorLine,
) =>
    _SetupOpenInfFile(
      FileName,
      InfClass,
      InfStyle,
      ErrorLine,
    );

late final _SetupOpenInfFile = _setupapi.lookupFunction<
    Pointer Function(
  Pointer<Utf16> FileName,
  Pointer<Utf16> InfClass,
  Uint32 InfStyle,
  Pointer<Uint32> ErrorLine,
),
    Pointer Function(
  Pointer<Utf16> FileName,
  Pointer<Utf16> InfClass,
  int InfStyle,
  Pointer<Uint32> ErrorLine,
)>('SetupOpenInfFileW');

int SetupOpenLog(
  int Erase,
) =>
    _SetupOpenLog(
      Erase,
    );

late final _SetupOpenLog = _setupapi.lookupFunction<
    Int32 Function(
  Int32 Erase,
),
    int Function(
  int Erase,
)>('SetupOpenLog');

Pointer SetupOpenMasterInf() => _SetupOpenMasterInf();

late final _SetupOpenMasterInf =
    _setupapi.lookupFunction<Pointer Function(), Pointer Function()>(
        'SetupOpenMasterInf');

int SetupPrepareQueueForRestore(
  Pointer QueueHandle,
  Pointer<Utf16> BackupPath,
  int RestoreFlags,
) =>
    _SetupPrepareQueueForRestore(
      QueueHandle,
      BackupPath,
      RestoreFlags,
    );

late final _SetupPrepareQueueForRestore = _setupapi.lookupFunction<
    Int32 Function(
  Pointer QueueHandle,
  Pointer<Utf16> BackupPath,
  Uint32 RestoreFlags,
),
    int Function(
  Pointer QueueHandle,
  Pointer<Utf16> BackupPath,
  int RestoreFlags,
)>('SetupPrepareQueueForRestoreW');

int SetupPromptForDisk(
  int hwndParent,
  Pointer<Utf16> DialogTitle,
  Pointer<Utf16> DiskName,
  Pointer<Utf16> PathToSource,
  Pointer<Utf16> FileSought,
  Pointer<Utf16> TagFile,
  int DiskPromptStyle,
  Pointer<Utf16> PathBuffer,
  int PathBufferSize,
  Pointer<Uint32> PathRequiredSize,
) =>
    _SetupPromptForDisk(
      hwndParent,
      DialogTitle,
      DiskName,
      PathToSource,
      FileSought,
      TagFile,
      DiskPromptStyle,
      PathBuffer,
      PathBufferSize,
      PathRequiredSize,
    );

late final _SetupPromptForDisk = _setupapi.lookupFunction<
    Uint32 Function(
  IntPtr hwndParent,
  Pointer<Utf16> DialogTitle,
  Pointer<Utf16> DiskName,
  Pointer<Utf16> PathToSource,
  Pointer<Utf16> FileSought,
  Pointer<Utf16> TagFile,
  Uint32 DiskPromptStyle,
  Pointer<Utf16> PathBuffer,
  Uint32 PathBufferSize,
  Pointer<Uint32> PathRequiredSize,
),
    int Function(
  int hwndParent,
  Pointer<Utf16> DialogTitle,
  Pointer<Utf16> DiskName,
  Pointer<Utf16> PathToSource,
  Pointer<Utf16> FileSought,
  Pointer<Utf16> TagFile,
  int DiskPromptStyle,
  Pointer<Utf16> PathBuffer,
  int PathBufferSize,
  Pointer<Uint32> PathRequiredSize,
)>('SetupPromptForDiskW');

int SetupPromptReboot(
  Pointer FileQueue,
  int Owner,
  int ScanOnly,
) =>
    _SetupPromptReboot(
      FileQueue,
      Owner,
      ScanOnly,
    );

late final _SetupPromptReboot = _setupapi.lookupFunction<
    Int32 Function(
  Pointer FileQueue,
  IntPtr Owner,
  Int32 ScanOnly,
),
    int Function(
  Pointer FileQueue,
  int Owner,
  int ScanOnly,
)>('SetupPromptReboot');

int SetupQueryDrivesInDiskSpaceList(
  Pointer DiskSpace,
  Pointer<Utf16> ReturnBuffer,
  int ReturnBufferSize,
  Pointer<Uint32> RequiredSize,
) =>
    _SetupQueryDrivesInDiskSpaceList(
      DiskSpace,
      ReturnBuffer,
      ReturnBufferSize,
      RequiredSize,
    );

late final _SetupQueryDrivesInDiskSpaceList = _setupapi.lookupFunction<
    Int32 Function(
  Pointer DiskSpace,
  Pointer<Utf16> ReturnBuffer,
  Uint32 ReturnBufferSize,
  Pointer<Uint32> RequiredSize,
),
    int Function(
  Pointer DiskSpace,
  Pointer<Utf16> ReturnBuffer,
  int ReturnBufferSize,
  Pointer<Uint32> RequiredSize,
)>('SetupQueryDrivesInDiskSpaceListW');

int SetupQueryFileLog(
  Pointer FileLogHandle,
  Pointer<Utf16> LogSectionName,
  Pointer<Utf16> TargetFilename,
  int DesiredInfo,
  Pointer<Utf16> DataOut,
  int ReturnBufferSize,
  Pointer<Uint32> RequiredSize,
) =>
    _SetupQueryFileLog(
      FileLogHandle,
      LogSectionName,
      TargetFilename,
      DesiredInfo,
      DataOut,
      ReturnBufferSize,
      RequiredSize,
    );

late final _SetupQueryFileLog = _setupapi.lookupFunction<
    Int32 Function(
  Pointer FileLogHandle,
  Pointer<Utf16> LogSectionName,
  Pointer<Utf16> TargetFilename,
  Int32 DesiredInfo,
  Pointer<Utf16> DataOut,
  Uint32 ReturnBufferSize,
  Pointer<Uint32> RequiredSize,
),
    int Function(
  Pointer FileLogHandle,
  Pointer<Utf16> LogSectionName,
  Pointer<Utf16> TargetFilename,
  int DesiredInfo,
  Pointer<Utf16> DataOut,
  int ReturnBufferSize,
  Pointer<Uint32> RequiredSize,
)>('SetupQueryFileLogW');

int SetupQueryInfFileInformation(
  Pointer<SP_INF_INFORMATION> InfInformation,
  int InfIndex,
  Pointer<Utf16> ReturnBuffer,
  int ReturnBufferSize,
  Pointer<Uint32> RequiredSize,
) =>
    _SetupQueryInfFileInformation(
      InfInformation,
      InfIndex,
      ReturnBuffer,
      ReturnBufferSize,
      RequiredSize,
    );

late final _SetupQueryInfFileInformation = _setupapi.lookupFunction<
    Int32 Function(
  Pointer<SP_INF_INFORMATION> InfInformation,
  Uint32 InfIndex,
  Pointer<Utf16> ReturnBuffer,
  Uint32 ReturnBufferSize,
  Pointer<Uint32> RequiredSize,
),
    int Function(
  Pointer<SP_INF_INFORMATION> InfInformation,
  int InfIndex,
  Pointer<Utf16> ReturnBuffer,
  int ReturnBufferSize,
  Pointer<Uint32> RequiredSize,
)>('SetupQueryInfFileInformationW');

int SetupQueryInfOriginalFileInformation(
  Pointer<SP_INF_INFORMATION> InfInformation,
  int InfIndex,
  Pointer<SP_ALTPLATFORM_INFO_V2> AlternatePlatformInfo,
  Pointer<SP_ORIGINAL_FILE_INFO_> OriginalFileInfo,
) =>
    _SetupQueryInfOriginalFileInformation(
      InfInformation,
      InfIndex,
      AlternatePlatformInfo,
      OriginalFileInfo,
    );

late final _SetupQueryInfOriginalFileInformation = _setupapi.lookupFunction<
    Int32 Function(
  Pointer<SP_INF_INFORMATION> InfInformation,
  Uint32 InfIndex,
  Pointer<SP_ALTPLATFORM_INFO_V2> AlternatePlatformInfo,
  Pointer<SP_ORIGINAL_FILE_INFO_> OriginalFileInfo,
),
    int Function(
  Pointer<SP_INF_INFORMATION> InfInformation,
  int InfIndex,
  Pointer<SP_ALTPLATFORM_INFO_V2> AlternatePlatformInfo,
  Pointer<SP_ORIGINAL_FILE_INFO_> OriginalFileInfo,
)>('SetupQueryInfOriginalFileInformationW');

int SetupQueryInfVersionInformation(
  Pointer<SP_INF_INFORMATION> InfInformation,
  int InfIndex,
  Pointer<Utf16> Key,
  Pointer<Utf16> ReturnBuffer,
  int ReturnBufferSize,
  Pointer<Uint32> RequiredSize,
) =>
    _SetupQueryInfVersionInformation(
      InfInformation,
      InfIndex,
      Key,
      ReturnBuffer,
      ReturnBufferSize,
      RequiredSize,
    );

late final _SetupQueryInfVersionInformation = _setupapi.lookupFunction<
    Int32 Function(
  Pointer<SP_INF_INFORMATION> InfInformation,
  Uint32 InfIndex,
  Pointer<Utf16> Key,
  Pointer<Utf16> ReturnBuffer,
  Uint32 ReturnBufferSize,
  Pointer<Uint32> RequiredSize,
),
    int Function(
  Pointer<SP_INF_INFORMATION> InfInformation,
  int InfIndex,
  Pointer<Utf16> Key,
  Pointer<Utf16> ReturnBuffer,
  int ReturnBufferSize,
  Pointer<Uint32> RequiredSize,
)>('SetupQueryInfVersionInformationW');

int SetupQuerySourceList(
  int Flags,
  Pointer<Pointer<Pointer<Utf16>>> $List,
  Pointer<Uint32> Count,
) =>
    _SetupQuerySourceList(
      Flags,
      $List,
      Count,
    );

late final _SetupQuerySourceList = _setupapi.lookupFunction<
    Int32 Function(
  Uint32 Flags,
  Pointer<Pointer<Pointer<Utf16>>> $List,
  Pointer<Uint32> Count,
),
    int Function(
  int Flags,
  Pointer<Pointer<Pointer<Utf16>>> $List,
  Pointer<Uint32> Count,
)>('SetupQuerySourceListW');

int SetupQuerySpaceRequiredOnDrive(
  Pointer DiskSpace,
  Pointer<Utf16> DriveSpec,
  Pointer<Int64> SpaceRequired,
  Pointer Reserved1,
  int Reserved2,
) =>
    _SetupQuerySpaceRequiredOnDrive(
      DiskSpace,
      DriveSpec,
      SpaceRequired,
      Reserved1,
      Reserved2,
    );

late final _SetupQuerySpaceRequiredOnDrive = _setupapi.lookupFunction<
    Int32 Function(
  Pointer DiskSpace,
  Pointer<Utf16> DriveSpec,
  Pointer<Int64> SpaceRequired,
  Pointer Reserved1,
  Uint32 Reserved2,
),
    int Function(
  Pointer DiskSpace,
  Pointer<Utf16> DriveSpec,
  Pointer<Int64> SpaceRequired,
  Pointer Reserved1,
  int Reserved2,
)>('SetupQuerySpaceRequiredOnDriveW');

int SetupQueueCopyIndirect(
  Pointer<SP_FILE_COPY_PARAMS_> CopyParams,
) =>
    _SetupQueueCopyIndirect(
      CopyParams,
    );

late final _SetupQueueCopyIndirect = _setupapi.lookupFunction<
    Int32 Function(
  Pointer<SP_FILE_COPY_PARAMS_> CopyParams,
),
    int Function(
  Pointer<SP_FILE_COPY_PARAMS_> CopyParams,
)>('SetupQueueCopyIndirectW');

int SetupQueueCopySection(
  Pointer QueueHandle,
  Pointer<Utf16> SourceRootPath,
  Pointer InfHandle,
  Pointer ListInfHandle,
  Pointer<Utf16> Section,
  int CopyStyle,
) =>
    _SetupQueueCopySection(
      QueueHandle,
      SourceRootPath,
      InfHandle,
      ListInfHandle,
      Section,
      CopyStyle,
    );

late final _SetupQueueCopySection = _setupapi.lookupFunction<
    Int32 Function(
  Pointer QueueHandle,
  Pointer<Utf16> SourceRootPath,
  Pointer InfHandle,
  Pointer ListInfHandle,
  Pointer<Utf16> Section,
  Uint32 CopyStyle,
),
    int Function(
  Pointer QueueHandle,
  Pointer<Utf16> SourceRootPath,
  Pointer InfHandle,
  Pointer ListInfHandle,
  Pointer<Utf16> Section,
  int CopyStyle,
)>('SetupQueueCopySectionW');

int SetupQueueCopy(
  Pointer QueueHandle,
  Pointer<Utf16> SourceRootPath,
  Pointer<Utf16> SourcePath,
  Pointer<Utf16> SourceFilename,
  Pointer<Utf16> SourceDescription,
  Pointer<Utf16> SourceTagfile,
  Pointer<Utf16> TargetDirectory,
  Pointer<Utf16> TargetFilename,
  int CopyStyle,
) =>
    _SetupQueueCopy(
      QueueHandle,
      SourceRootPath,
      SourcePath,
      SourceFilename,
      SourceDescription,
      SourceTagfile,
      TargetDirectory,
      TargetFilename,
      CopyStyle,
    );

late final _SetupQueueCopy = _setupapi.lookupFunction<
    Int32 Function(
  Pointer QueueHandle,
  Pointer<Utf16> SourceRootPath,
  Pointer<Utf16> SourcePath,
  Pointer<Utf16> SourceFilename,
  Pointer<Utf16> SourceDescription,
  Pointer<Utf16> SourceTagfile,
  Pointer<Utf16> TargetDirectory,
  Pointer<Utf16> TargetFilename,
  Uint32 CopyStyle,
),
    int Function(
  Pointer QueueHandle,
  Pointer<Utf16> SourceRootPath,
  Pointer<Utf16> SourcePath,
  Pointer<Utf16> SourceFilename,
  Pointer<Utf16> SourceDescription,
  Pointer<Utf16> SourceTagfile,
  Pointer<Utf16> TargetDirectory,
  Pointer<Utf16> TargetFilename,
  int CopyStyle,
)>('SetupQueueCopyW');

int SetupQueueDefaultCopy(
  Pointer QueueHandle,
  Pointer InfHandle,
  Pointer<Utf16> SourceRootPath,
  Pointer<Utf16> SourceFilename,
  Pointer<Utf16> TargetFilename,
  int CopyStyle,
) =>
    _SetupQueueDefaultCopy(
      QueueHandle,
      InfHandle,
      SourceRootPath,
      SourceFilename,
      TargetFilename,
      CopyStyle,
    );

late final _SetupQueueDefaultCopy = _setupapi.lookupFunction<
    Int32 Function(
  Pointer QueueHandle,
  Pointer InfHandle,
  Pointer<Utf16> SourceRootPath,
  Pointer<Utf16> SourceFilename,
  Pointer<Utf16> TargetFilename,
  Uint32 CopyStyle,
),
    int Function(
  Pointer QueueHandle,
  Pointer InfHandle,
  Pointer<Utf16> SourceRootPath,
  Pointer<Utf16> SourceFilename,
  Pointer<Utf16> TargetFilename,
  int CopyStyle,
)>('SetupQueueDefaultCopyW');

int SetupQueueDeleteSection(
  Pointer QueueHandle,
  Pointer InfHandle,
  Pointer ListInfHandle,
  Pointer<Utf16> Section,
) =>
    _SetupQueueDeleteSection(
      QueueHandle,
      InfHandle,
      ListInfHandle,
      Section,
    );

late final _SetupQueueDeleteSection = _setupapi.lookupFunction<
    Int32 Function(
  Pointer QueueHandle,
  Pointer InfHandle,
  Pointer ListInfHandle,
  Pointer<Utf16> Section,
),
    int Function(
  Pointer QueueHandle,
  Pointer InfHandle,
  Pointer ListInfHandle,
  Pointer<Utf16> Section,
)>('SetupQueueDeleteSectionW');

int SetupQueueDelete(
  Pointer QueueHandle,
  Pointer<Utf16> PathPart1,
  Pointer<Utf16> PathPart2,
) =>
    _SetupQueueDelete(
      QueueHandle,
      PathPart1,
      PathPart2,
    );

late final _SetupQueueDelete = _setupapi.lookupFunction<
    Int32 Function(
  Pointer QueueHandle,
  Pointer<Utf16> PathPart1,
  Pointer<Utf16> PathPart2,
),
    int Function(
  Pointer QueueHandle,
  Pointer<Utf16> PathPart1,
  Pointer<Utf16> PathPart2,
)>('SetupQueueDeleteW');

int SetupQueueRenameSection(
  Pointer QueueHandle,
  Pointer InfHandle,
  Pointer ListInfHandle,
  Pointer<Utf16> Section,
) =>
    _SetupQueueRenameSection(
      QueueHandle,
      InfHandle,
      ListInfHandle,
      Section,
    );

late final _SetupQueueRenameSection = _setupapi.lookupFunction<
    Int32 Function(
  Pointer QueueHandle,
  Pointer InfHandle,
  Pointer ListInfHandle,
  Pointer<Utf16> Section,
),
    int Function(
  Pointer QueueHandle,
  Pointer InfHandle,
  Pointer ListInfHandle,
  Pointer<Utf16> Section,
)>('SetupQueueRenameSectionW');

int SetupQueueRename(
  Pointer QueueHandle,
  Pointer<Utf16> SourcePath,
  Pointer<Utf16> SourceFilename,
  Pointer<Utf16> TargetPath,
  Pointer<Utf16> TargetFilename,
) =>
    _SetupQueueRename(
      QueueHandle,
      SourcePath,
      SourceFilename,
      TargetPath,
      TargetFilename,
    );

late final _SetupQueueRename = _setupapi.lookupFunction<
    Int32 Function(
  Pointer QueueHandle,
  Pointer<Utf16> SourcePath,
  Pointer<Utf16> SourceFilename,
  Pointer<Utf16> TargetPath,
  Pointer<Utf16> TargetFilename,
),
    int Function(
  Pointer QueueHandle,
  Pointer<Utf16> SourcePath,
  Pointer<Utf16> SourceFilename,
  Pointer<Utf16> TargetPath,
  Pointer<Utf16> TargetFilename,
)>('SetupQueueRenameW');

int SetupRemoveFileLogEntry(
  Pointer FileLogHandle,
  Pointer<Utf16> LogSectionName,
  Pointer<Utf16> TargetFilename,
) =>
    _SetupRemoveFileLogEntry(
      FileLogHandle,
      LogSectionName,
      TargetFilename,
    );

late final _SetupRemoveFileLogEntry = _setupapi.lookupFunction<
    Int32 Function(
  Pointer FileLogHandle,
  Pointer<Utf16> LogSectionName,
  Pointer<Utf16> TargetFilename,
),
    int Function(
  Pointer FileLogHandle,
  Pointer<Utf16> LogSectionName,
  Pointer<Utf16> TargetFilename,
)>('SetupRemoveFileLogEntryW');

int SetupRemoveFromDiskSpaceList(
  Pointer DiskSpace,
  Pointer<Utf16> TargetFilespec,
  int Operation,
  Pointer Reserved1,
  int Reserved2,
) =>
    _SetupRemoveFromDiskSpaceList(
      DiskSpace,
      TargetFilespec,
      Operation,
      Reserved1,
      Reserved2,
    );

late final _SetupRemoveFromDiskSpaceList = _setupapi.lookupFunction<
    Int32 Function(
  Pointer DiskSpace,
  Pointer<Utf16> TargetFilespec,
  Uint32 Operation,
  Pointer Reserved1,
  Uint32 Reserved2,
),
    int Function(
  Pointer DiskSpace,
  Pointer<Utf16> TargetFilespec,
  int Operation,
  Pointer Reserved1,
  int Reserved2,
)>('SetupRemoveFromDiskSpaceListW');

int SetupRemoveFromSourceList(
  int Flags,
  Pointer<Utf16> Source,
) =>
    _SetupRemoveFromSourceList(
      Flags,
      Source,
    );

late final _SetupRemoveFromSourceList = _setupapi.lookupFunction<
    Int32 Function(
  Uint32 Flags,
  Pointer<Utf16> Source,
),
    int Function(
  int Flags,
  Pointer<Utf16> Source,
)>('SetupRemoveFromSourceListW');

int SetupRemoveInstallSectionFromDiskSpaceList(
  Pointer DiskSpace,
  Pointer InfHandle,
  Pointer LayoutInfHandle,
  Pointer<Utf16> SectionName,
  Pointer Reserved1,
  int Reserved2,
) =>
    _SetupRemoveInstallSectionFromDiskSpaceList(
      DiskSpace,
      InfHandle,
      LayoutInfHandle,
      SectionName,
      Reserved1,
      Reserved2,
    );

late final _SetupRemoveInstallSectionFromDiskSpaceList =
    _setupapi.lookupFunction<
        Int32 Function(
  Pointer DiskSpace,
  Pointer InfHandle,
  Pointer LayoutInfHandle,
  Pointer<Utf16> SectionName,
  Pointer Reserved1,
  Uint32 Reserved2,
),
        int Function(
  Pointer DiskSpace,
  Pointer InfHandle,
  Pointer LayoutInfHandle,
  Pointer<Utf16> SectionName,
  Pointer Reserved1,
  int Reserved2,
)>('SetupRemoveInstallSectionFromDiskSpaceListW');

int SetupRemoveSectionFromDiskSpaceList(
  Pointer DiskSpace,
  Pointer InfHandle,
  Pointer ListInfHandle,
  Pointer<Utf16> SectionName,
  int Operation,
  Pointer Reserved1,
  int Reserved2,
) =>
    _SetupRemoveSectionFromDiskSpaceList(
      DiskSpace,
      InfHandle,
      ListInfHandle,
      SectionName,
      Operation,
      Reserved1,
      Reserved2,
    );

late final _SetupRemoveSectionFromDiskSpaceList = _setupapi.lookupFunction<
    Int32 Function(
  Pointer DiskSpace,
  Pointer InfHandle,
  Pointer ListInfHandle,
  Pointer<Utf16> SectionName,
  Uint32 Operation,
  Pointer Reserved1,
  Uint32 Reserved2,
),
    int Function(
  Pointer DiskSpace,
  Pointer InfHandle,
  Pointer ListInfHandle,
  Pointer<Utf16> SectionName,
  int Operation,
  Pointer Reserved1,
  int Reserved2,
)>('SetupRemoveSectionFromDiskSpaceListW');

int SetupRenameError(
  int hwndParent,
  Pointer<Utf16> DialogTitle,
  Pointer<Utf16> SourceFile,
  Pointer<Utf16> TargetFile,
  int Win32ErrorCode,
  int Style,
) =>
    _SetupRenameError(
      hwndParent,
      DialogTitle,
      SourceFile,
      TargetFile,
      Win32ErrorCode,
      Style,
    );

late final _SetupRenameError = _setupapi.lookupFunction<
    Uint32 Function(
  IntPtr hwndParent,
  Pointer<Utf16> DialogTitle,
  Pointer<Utf16> SourceFile,
  Pointer<Utf16> TargetFile,
  Uint32 Win32ErrorCode,
  Uint32 Style,
),
    int Function(
  int hwndParent,
  Pointer<Utf16> DialogTitle,
  Pointer<Utf16> SourceFile,
  Pointer<Utf16> TargetFile,
  int Win32ErrorCode,
  int Style,
)>('SetupRenameErrorW');

int SetupScanFileQueue(
  Pointer FileQueue,
  int Flags,
  int Window,
  Pointer<NativeFunction<PSP_FILE_CALLBACK_W>> CallbackRoutine,
  Pointer CallbackContext,
  Pointer<Uint32> Result,
) =>
    _SetupScanFileQueue(
      FileQueue,
      Flags,
      Window,
      CallbackRoutine,
      CallbackContext,
      Result,
    );

late final _SetupScanFileQueue = _setupapi.lookupFunction<
    Int32 Function(
  Pointer FileQueue,
  Uint32 Flags,
  IntPtr Window,
  Pointer<NativeFunction<PSP_FILE_CALLBACK_W>> CallbackRoutine,
  Pointer CallbackContext,
  Pointer<Uint32> Result,
),
    int Function(
  Pointer FileQueue,
  int Flags,
  int Window,
  Pointer<NativeFunction<PSP_FILE_CALLBACK_W>> CallbackRoutine,
  Pointer CallbackContext,
  Pointer<Uint32> Result,
)>('SetupScanFileQueueW');

int SetupSetDirectoryIdEx(
  Pointer InfHandle,
  int Id,
  Pointer<Utf16> Directory,
  int Flags,
  int Reserved1,
  Pointer Reserved2,
) =>
    _SetupSetDirectoryIdEx(
      InfHandle,
      Id,
      Directory,
      Flags,
      Reserved1,
      Reserved2,
    );

late final _SetupSetDirectoryIdEx = _setupapi.lookupFunction<
    Int32 Function(
  Pointer InfHandle,
  Uint32 Id,
  Pointer<Utf16> Directory,
  Uint32 Flags,
  Uint32 Reserved1,
  Pointer Reserved2,
),
    int Function(
  Pointer InfHandle,
  int Id,
  Pointer<Utf16> Directory,
  int Flags,
  int Reserved1,
  Pointer Reserved2,
)>('SetupSetDirectoryIdExW');

int SetupSetDirectoryId(
  Pointer InfHandle,
  int Id,
  Pointer<Utf16> Directory,
) =>
    _SetupSetDirectoryId(
      InfHandle,
      Id,
      Directory,
    );

late final _SetupSetDirectoryId = _setupapi.lookupFunction<
    Int32 Function(
  Pointer InfHandle,
  Uint32 Id,
  Pointer<Utf16> Directory,
),
    int Function(
  Pointer InfHandle,
  int Id,
  Pointer<Utf16> Directory,
)>('SetupSetDirectoryIdW');

int SetupSetFileQueueAlternatePlatform(
  Pointer QueueHandle,
  Pointer<SP_ALTPLATFORM_INFO_V2> AlternatePlatformInfo,
  Pointer<Utf16> AlternateDefaultCatalogFile,
) =>
    _SetupSetFileQueueAlternatePlatform(
      QueueHandle,
      AlternatePlatformInfo,
      AlternateDefaultCatalogFile,
    );

late final _SetupSetFileQueueAlternatePlatform = _setupapi.lookupFunction<
    Int32 Function(
  Pointer QueueHandle,
  Pointer<SP_ALTPLATFORM_INFO_V2> AlternatePlatformInfo,
  Pointer<Utf16> AlternateDefaultCatalogFile,
),
    int Function(
  Pointer QueueHandle,
  Pointer<SP_ALTPLATFORM_INFO_V2> AlternatePlatformInfo,
  Pointer<Utf16> AlternateDefaultCatalogFile,
)>('SetupSetFileQueueAlternatePlatformW');

int SetupSetFileQueueFlags(
  Pointer FileQueue,
  int FlagMask,
  int Flags,
) =>
    _SetupSetFileQueueFlags(
      FileQueue,
      FlagMask,
      Flags,
    );

late final _SetupSetFileQueueFlags = _setupapi.lookupFunction<
    Int32 Function(
  Pointer FileQueue,
  Uint32 FlagMask,
  Uint32 Flags,
),
    int Function(
  Pointer FileQueue,
  int FlagMask,
  int Flags,
)>('SetupSetFileQueueFlags');

int SetupSetNonInteractiveMode(
  int NonInteractiveFlag,
) =>
    _SetupSetNonInteractiveMode(
      NonInteractiveFlag,
    );

late final _SetupSetNonInteractiveMode = _setupapi.lookupFunction<
    Int32 Function(
  Int32 NonInteractiveFlag,
),
    int Function(
  int NonInteractiveFlag,
)>('SetupSetNonInteractiveMode');

int SetupSetPlatformPathOverride(
  Pointer<Utf16> Override,
) =>
    _SetupSetPlatformPathOverride(
      Override,
    );

late final _SetupSetPlatformPathOverride = _setupapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> Override,
),
    int Function(
  Pointer<Utf16> Override,
)>('SetupSetPlatformPathOverrideW');

int SetupSetSourceList(
  int Flags,
  Pointer<Pointer<Utf16>> SourceList,
  int SourceCount,
) =>
    _SetupSetSourceList(
      Flags,
      SourceList,
      SourceCount,
    );

late final _SetupSetSourceList = _setupapi.lookupFunction<
    Int32 Function(
  Uint32 Flags,
  Pointer<Pointer<Utf16>> SourceList,
  Uint32 SourceCount,
),
    int Function(
  int Flags,
  Pointer<Pointer<Utf16>> SourceList,
  int SourceCount,
)>('SetupSetSourceListW');

void SetupSetThreadLogToken(
  int LogToken,
) =>
    _SetupSetThreadLogToken(
      LogToken,
    );

late final _SetupSetThreadLogToken = _setupapi.lookupFunction<
    Void Function(
  Uint64 LogToken,
),
    void Function(
  int LogToken,
)>('SetupSetThreadLogToken');

void SetupTermDefaultQueueCallback(
  Pointer Context,
) =>
    _SetupTermDefaultQueueCallback(
      Context,
    );

late final _SetupTermDefaultQueueCallback = _setupapi.lookupFunction<
    Void Function(
  Pointer Context,
),
    void Function(
  Pointer Context,
)>('SetupTermDefaultQueueCallback');

int SetupTerminateFileLog(
  Pointer FileLogHandle,
) =>
    _SetupTerminateFileLog(
      FileLogHandle,
    );

late final _SetupTerminateFileLog = _setupapi.lookupFunction<
    Int32 Function(
  Pointer FileLogHandle,
),
    int Function(
  Pointer FileLogHandle,
)>('SetupTerminateFileLog');

int SetupUninstallNewlyCopiedInfs(
  Pointer FileQueue,
  int Flags,
  Pointer Reserved,
) =>
    _SetupUninstallNewlyCopiedInfs(
      FileQueue,
      Flags,
      Reserved,
    );

late final _SetupUninstallNewlyCopiedInfs = _setupapi.lookupFunction<
    Int32 Function(
  Pointer FileQueue,
  Uint32 Flags,
  Pointer Reserved,
),
    int Function(
  Pointer FileQueue,
  int Flags,
  Pointer Reserved,
)>('SetupUninstallNewlyCopiedInfs');

int SetupUninstallOEMInf(
  Pointer<Utf16> InfFileName,
  int Flags,
  Pointer Reserved,
) =>
    _SetupUninstallOEMInf(
      InfFileName,
      Flags,
      Reserved,
    );

late final _SetupUninstallOEMInf = _setupapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> InfFileName,
  Uint32 Flags,
  Pointer Reserved,
),
    int Function(
  Pointer<Utf16> InfFileName,
  int Flags,
  Pointer Reserved,
)>('SetupUninstallOEMInfW');

int SetupVerifyInfFile(
  Pointer<Utf16> InfName,
  Pointer<SP_ALTPLATFORM_INFO_V2> AltPlatformInfo,
  Pointer<SP_INF_SIGNER_INFO_V2_> InfSignerInfo,
) =>
    _SetupVerifyInfFile(
      InfName,
      AltPlatformInfo,
      InfSignerInfo,
    );

late final _SetupVerifyInfFile = _setupapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> InfName,
  Pointer<SP_ALTPLATFORM_INFO_V2> AltPlatformInfo,
  Pointer<SP_INF_SIGNER_INFO_V2_> InfSignerInfo,
),
    int Function(
  Pointer<Utf16> InfName,
  Pointer<SP_ALTPLATFORM_INFO_V2> AltPlatformInfo,
  Pointer<SP_INF_SIGNER_INFO_V2_> InfSignerInfo,
)>('SetupVerifyInfFileW');

void SetupWriteTextLog(
  int LogToken,
  int Category,
  int Flags,
  Pointer<Utf8> MessageStr,
) =>
    _SetupWriteTextLog(
      LogToken,
      Category,
      Flags,
      MessageStr,
    );

late final _SetupWriteTextLog = _setupapi.lookupFunction<
    Void Function(
  Uint64 LogToken,
  Uint32 Category,
  Uint32 Flags,
  Pointer<Utf8> MessageStr,
),
    void Function(
  int LogToken,
  int Category,
  int Flags,
  Pointer<Utf8> MessageStr,
)>('SetupWriteTextLog');

void SetupWriteTextLogError(
  int LogToken,
  int Category,
  int LogFlags,
  int Error,
  Pointer<Utf8> MessageStr,
) =>
    _SetupWriteTextLogError(
      LogToken,
      Category,
      LogFlags,
      Error,
      MessageStr,
    );

late final _SetupWriteTextLogError = _setupapi.lookupFunction<
    Void Function(
  Uint64 LogToken,
  Uint32 Category,
  Uint32 LogFlags,
  Uint32 Error,
  Pointer<Utf8> MessageStr,
),
    void Function(
  int LogToken,
  int Category,
  int LogFlags,
  int Error,
  Pointer<Utf8> MessageStr,
)>('SetupWriteTextLogError');

void SetupWriteTextLogInfLine(
  int LogToken,
  int Flags,
  Pointer InfHandle,
  Pointer<INFCONTEXT> Context,
) =>
    _SetupWriteTextLogInfLine(
      LogToken,
      Flags,
      InfHandle,
      Context,
    );

late final _SetupWriteTextLogInfLine = _setupapi.lookupFunction<
    Void Function(
  Uint64 LogToken,
  Uint32 Flags,
  Pointer InfHandle,
  Pointer<INFCONTEXT> Context,
),
    void Function(
  int LogToken,
  int Flags,
  Pointer InfHandle,
  Pointer<INFCONTEXT> Context,
)>('SetupWriteTextLogInfLine');

// -----------------------------------------------------------------------
// cfgmgr32.dll
// -----------------------------------------------------------------------
final _cfgmgr32 = DynamicLibrary.open('cfgmgr32.dll');

int CMP_WaitNoPendingInstallEvents(
  int dwTimeout,
) =>
    _CMP_WaitNoPendingInstallEvents(
      dwTimeout,
    );

late final _CMP_WaitNoPendingInstallEvents = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Uint32 dwTimeout,
),
    int Function(
  int dwTimeout,
)>('CMP_WaitNoPendingInstallEvents');

int CM_Add_Empty_Log_Conf(
  Pointer<IntPtr> plcLogConf,
  int dnDevInst,
  int Priority,
  int ulFlags,
) =>
    _CM_Add_Empty_Log_Conf(
      plcLogConf,
      dnDevInst,
      Priority,
      ulFlags,
    );

late final _CM_Add_Empty_Log_Conf = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<IntPtr> plcLogConf,
  Uint32 dnDevInst,
  Int32 Priority,
  Uint32 ulFlags,
),
    int Function(
  Pointer<IntPtr> plcLogConf,
  int dnDevInst,
  int Priority,
  int ulFlags,
)>('CM_Add_Empty_Log_Conf');

int CM_Add_Empty_Log_Conf_Ex(
  Pointer<IntPtr> plcLogConf,
  int dnDevInst,
  int Priority,
  int ulFlags,
  int hMachine,
) =>
    _CM_Add_Empty_Log_Conf_Ex(
      plcLogConf,
      dnDevInst,
      Priority,
      ulFlags,
      hMachine,
    );

late final _CM_Add_Empty_Log_Conf_Ex = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<IntPtr> plcLogConf,
  Uint32 dnDevInst,
  Int32 Priority,
  Uint32 ulFlags,
  IntPtr hMachine,
),
    int Function(
  Pointer<IntPtr> plcLogConf,
  int dnDevInst,
  int Priority,
  int ulFlags,
  int hMachine,
)>('CM_Add_Empty_Log_Conf_Ex');

int CM_Add_ID(
  int dnDevInst,
  Pointer<Utf16> pszID,
  int ulFlags,
) =>
    _CM_Add_ID(
      dnDevInst,
      pszID,
      ulFlags,
    );

late final _CM_Add_ID = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Uint32 dnDevInst,
  Pointer<Utf16> pszID,
  Uint32 ulFlags,
),
    int Function(
  int dnDevInst,
  Pointer<Utf16> pszID,
  int ulFlags,
)>('CM_Add_IDW');

int CM_Add_ID_Ex(
  int dnDevInst,
  Pointer<Utf16> pszID,
  int ulFlags,
  int hMachine,
) =>
    _CM_Add_ID_Ex(
      dnDevInst,
      pszID,
      ulFlags,
      hMachine,
    );

late final _CM_Add_ID_Ex = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Uint32 dnDevInst,
  Pointer<Utf16> pszID,
  Uint32 ulFlags,
  IntPtr hMachine,
),
    int Function(
  int dnDevInst,
  Pointer<Utf16> pszID,
  int ulFlags,
  int hMachine,
)>('CM_Add_ID_ExW');

int CM_Add_Range(
  int ullStartValue,
  int ullEndValue,
  int rlh,
  int ulFlags,
) =>
    _CM_Add_Range(
      ullStartValue,
      ullEndValue,
      rlh,
      ulFlags,
    );

late final _CM_Add_Range = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Uint64 ullStartValue,
  Uint64 ullEndValue,
  IntPtr rlh,
  Uint32 ulFlags,
),
    int Function(
  int ullStartValue,
  int ullEndValue,
  int rlh,
  int ulFlags,
)>('CM_Add_Range');

int CM_Add_Res_Des(
  Pointer<IntPtr> prdResDes,
  int lcLogConf,
  int ResourceID,
  Pointer ResourceData,
  int ResourceLen,
  int ulFlags,
) =>
    _CM_Add_Res_Des(
      prdResDes,
      lcLogConf,
      ResourceID,
      ResourceData,
      ResourceLen,
      ulFlags,
    );

late final _CM_Add_Res_Des = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<IntPtr> prdResDes,
  IntPtr lcLogConf,
  Uint32 ResourceID,
  Pointer ResourceData,
  Uint32 ResourceLen,
  Uint32 ulFlags,
),
    int Function(
  Pointer<IntPtr> prdResDes,
  int lcLogConf,
  int ResourceID,
  Pointer ResourceData,
  int ResourceLen,
  int ulFlags,
)>('CM_Add_Res_Des');

int CM_Add_Res_Des_Ex(
  Pointer<IntPtr> prdResDes,
  int lcLogConf,
  int ResourceID,
  Pointer ResourceData,
  int ResourceLen,
  int ulFlags,
  int hMachine,
) =>
    _CM_Add_Res_Des_Ex(
      prdResDes,
      lcLogConf,
      ResourceID,
      ResourceData,
      ResourceLen,
      ulFlags,
      hMachine,
    );

late final _CM_Add_Res_Des_Ex = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<IntPtr> prdResDes,
  IntPtr lcLogConf,
  Uint32 ResourceID,
  Pointer ResourceData,
  Uint32 ResourceLen,
  Uint32 ulFlags,
  IntPtr hMachine,
),
    int Function(
  Pointer<IntPtr> prdResDes,
  int lcLogConf,
  int ResourceID,
  Pointer ResourceData,
  int ResourceLen,
  int ulFlags,
  int hMachine,
)>('CM_Add_Res_Des_Ex');

int CM_Connect_Machine(
  Pointer<Utf16> UNCServerName,
  Pointer<IntPtr> phMachine,
) =>
    _CM_Connect_Machine(
      UNCServerName,
      phMachine,
    );

late final _CM_Connect_Machine = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> UNCServerName,
  Pointer<IntPtr> phMachine,
),
    int Function(
  Pointer<Utf16> UNCServerName,
  Pointer<IntPtr> phMachine,
)>('CM_Connect_MachineW');

int CM_Create_DevNode(
  Pointer<Uint32> pdnDevInst,
  Pointer<Uint16> pDeviceID,
  int dnParent,
  int ulFlags,
) =>
    _CM_Create_DevNode(
      pdnDevInst,
      pDeviceID,
      dnParent,
      ulFlags,
    );

late final _CM_Create_DevNode = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<Uint32> pdnDevInst,
  Pointer<Uint16> pDeviceID,
  Uint32 dnParent,
  Uint32 ulFlags,
),
    int Function(
  Pointer<Uint32> pdnDevInst,
  Pointer<Uint16> pDeviceID,
  int dnParent,
  int ulFlags,
)>('CM_Create_DevNodeW');

int CM_Create_DevNode_Ex(
  Pointer<Uint32> pdnDevInst,
  Pointer<Uint16> pDeviceID,
  int dnParent,
  int ulFlags,
  int hMachine,
) =>
    _CM_Create_DevNode_Ex(
      pdnDevInst,
      pDeviceID,
      dnParent,
      ulFlags,
      hMachine,
    );

late final _CM_Create_DevNode_Ex = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<Uint32> pdnDevInst,
  Pointer<Uint16> pDeviceID,
  Uint32 dnParent,
  Uint32 ulFlags,
  IntPtr hMachine,
),
    int Function(
  Pointer<Uint32> pdnDevInst,
  Pointer<Uint16> pDeviceID,
  int dnParent,
  int ulFlags,
  int hMachine,
)>('CM_Create_DevNode_ExW');

int CM_Create_Range_List(
  Pointer<IntPtr> prlh,
  int ulFlags,
) =>
    _CM_Create_Range_List(
      prlh,
      ulFlags,
    );

late final _CM_Create_Range_List = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<IntPtr> prlh,
  Uint32 ulFlags,
),
    int Function(
  Pointer<IntPtr> prlh,
  int ulFlags,
)>('CM_Create_Range_List');

int CM_Delete_Class_Key(
  Pointer<GUID> ClassGuid,
  int ulFlags,
) =>
    _CM_Delete_Class_Key(
      ClassGuid,
      ulFlags,
    );

late final _CM_Delete_Class_Key = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<GUID> ClassGuid,
  Uint32 ulFlags,
),
    int Function(
  Pointer<GUID> ClassGuid,
  int ulFlags,
)>('CM_Delete_Class_Key');

int CM_Delete_Class_Key_Ex(
  Pointer<GUID> ClassGuid,
  int ulFlags,
  int hMachine,
) =>
    _CM_Delete_Class_Key_Ex(
      ClassGuid,
      ulFlags,
      hMachine,
    );

late final _CM_Delete_Class_Key_Ex = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<GUID> ClassGuid,
  Uint32 ulFlags,
  IntPtr hMachine,
),
    int Function(
  Pointer<GUID> ClassGuid,
  int ulFlags,
  int hMachine,
)>('CM_Delete_Class_Key_Ex');

int CM_Delete_DevNode_Key(
  int dnDevNode,
  int ulHardwareProfile,
  int ulFlags,
) =>
    _CM_Delete_DevNode_Key(
      dnDevNode,
      ulHardwareProfile,
      ulFlags,
    );

late final _CM_Delete_DevNode_Key = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Uint32 dnDevNode,
  Uint32 ulHardwareProfile,
  Uint32 ulFlags,
),
    int Function(
  int dnDevNode,
  int ulHardwareProfile,
  int ulFlags,
)>('CM_Delete_DevNode_Key');

int CM_Delete_DevNode_Key_Ex(
  int dnDevNode,
  int ulHardwareProfile,
  int ulFlags,
  int hMachine,
) =>
    _CM_Delete_DevNode_Key_Ex(
      dnDevNode,
      ulHardwareProfile,
      ulFlags,
      hMachine,
    );

late final _CM_Delete_DevNode_Key_Ex = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Uint32 dnDevNode,
  Uint32 ulHardwareProfile,
  Uint32 ulFlags,
  IntPtr hMachine,
),
    int Function(
  int dnDevNode,
  int ulHardwareProfile,
  int ulFlags,
  int hMachine,
)>('CM_Delete_DevNode_Key_Ex');

int CM_Delete_Device_Interface_Key(
  Pointer<Utf16> pszDeviceInterface,
  int ulFlags,
) =>
    _CM_Delete_Device_Interface_Key(
      pszDeviceInterface,
      ulFlags,
    );

late final _CM_Delete_Device_Interface_Key = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> pszDeviceInterface,
  Uint32 ulFlags,
),
    int Function(
  Pointer<Utf16> pszDeviceInterface,
  int ulFlags,
)>('CM_Delete_Device_Interface_KeyW');

int CM_Delete_Device_Interface_Key_Ex(
  Pointer<Utf16> pszDeviceInterface,
  int ulFlags,
  int hMachine,
) =>
    _CM_Delete_Device_Interface_Key_Ex(
      pszDeviceInterface,
      ulFlags,
      hMachine,
    );

late final _CM_Delete_Device_Interface_Key_Ex = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> pszDeviceInterface,
  Uint32 ulFlags,
  IntPtr hMachine,
),
    int Function(
  Pointer<Utf16> pszDeviceInterface,
  int ulFlags,
  int hMachine,
)>('CM_Delete_Device_Interface_Key_ExW');

int CM_Delete_Range(
  int ullStartValue,
  int ullEndValue,
  int rlh,
  int ulFlags,
) =>
    _CM_Delete_Range(
      ullStartValue,
      ullEndValue,
      rlh,
      ulFlags,
    );

late final _CM_Delete_Range = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Uint64 ullStartValue,
  Uint64 ullEndValue,
  IntPtr rlh,
  Uint32 ulFlags,
),
    int Function(
  int ullStartValue,
  int ullEndValue,
  int rlh,
  int ulFlags,
)>('CM_Delete_Range');

int CM_Detect_Resource_Conflict(
  int dnDevInst,
  int ResourceID,
  Pointer ResourceData,
  int ResourceLen,
  Pointer<Int32> pbConflictDetected,
  int ulFlags,
) =>
    _CM_Detect_Resource_Conflict(
      dnDevInst,
      ResourceID,
      ResourceData,
      ResourceLen,
      pbConflictDetected,
      ulFlags,
    );

late final _CM_Detect_Resource_Conflict = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Uint32 dnDevInst,
  Uint32 ResourceID,
  Pointer ResourceData,
  Uint32 ResourceLen,
  Pointer<Int32> pbConflictDetected,
  Uint32 ulFlags,
),
    int Function(
  int dnDevInst,
  int ResourceID,
  Pointer ResourceData,
  int ResourceLen,
  Pointer<Int32> pbConflictDetected,
  int ulFlags,
)>('CM_Detect_Resource_Conflict');

int CM_Detect_Resource_Conflict_Ex(
  int dnDevInst,
  int ResourceID,
  Pointer ResourceData,
  int ResourceLen,
  Pointer<Int32> pbConflictDetected,
  int ulFlags,
  int hMachine,
) =>
    _CM_Detect_Resource_Conflict_Ex(
      dnDevInst,
      ResourceID,
      ResourceData,
      ResourceLen,
      pbConflictDetected,
      ulFlags,
      hMachine,
    );

late final _CM_Detect_Resource_Conflict_Ex = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Uint32 dnDevInst,
  Uint32 ResourceID,
  Pointer ResourceData,
  Uint32 ResourceLen,
  Pointer<Int32> pbConflictDetected,
  Uint32 ulFlags,
  IntPtr hMachine,
),
    int Function(
  int dnDevInst,
  int ResourceID,
  Pointer ResourceData,
  int ResourceLen,
  Pointer<Int32> pbConflictDetected,
  int ulFlags,
  int hMachine,
)>('CM_Detect_Resource_Conflict_Ex');

int CM_Disable_DevNode(
  int dnDevInst,
  int ulFlags,
) =>
    _CM_Disable_DevNode(
      dnDevInst,
      ulFlags,
    );

late final _CM_Disable_DevNode = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Uint32 dnDevInst,
  Uint32 ulFlags,
),
    int Function(
  int dnDevInst,
  int ulFlags,
)>('CM_Disable_DevNode');

int CM_Disable_DevNode_Ex(
  int dnDevInst,
  int ulFlags,
  int hMachine,
) =>
    _CM_Disable_DevNode_Ex(
      dnDevInst,
      ulFlags,
      hMachine,
    );

late final _CM_Disable_DevNode_Ex = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Uint32 dnDevInst,
  Uint32 ulFlags,
  IntPtr hMachine,
),
    int Function(
  int dnDevInst,
  int ulFlags,
  int hMachine,
)>('CM_Disable_DevNode_Ex');

int CM_Disconnect_Machine(
  int hMachine,
) =>
    _CM_Disconnect_Machine(
      hMachine,
    );

late final _CM_Disconnect_Machine = _cfgmgr32.lookupFunction<
    Uint32 Function(
  IntPtr hMachine,
),
    int Function(
  int hMachine,
)>('CM_Disconnect_Machine');

int CM_Dup_Range_List(
  int rlhOld,
  int rlhNew,
  int ulFlags,
) =>
    _CM_Dup_Range_List(
      rlhOld,
      rlhNew,
      ulFlags,
    );

late final _CM_Dup_Range_List = _cfgmgr32.lookupFunction<
    Uint32 Function(
  IntPtr rlhOld,
  IntPtr rlhNew,
  Uint32 ulFlags,
),
    int Function(
  int rlhOld,
  int rlhNew,
  int ulFlags,
)>('CM_Dup_Range_List');

int CM_Enable_DevNode(
  int dnDevInst,
  int ulFlags,
) =>
    _CM_Enable_DevNode(
      dnDevInst,
      ulFlags,
    );

late final _CM_Enable_DevNode = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Uint32 dnDevInst,
  Uint32 ulFlags,
),
    int Function(
  int dnDevInst,
  int ulFlags,
)>('CM_Enable_DevNode');

int CM_Enable_DevNode_Ex(
  int dnDevInst,
  int ulFlags,
  int hMachine,
) =>
    _CM_Enable_DevNode_Ex(
      dnDevInst,
      ulFlags,
      hMachine,
    );

late final _CM_Enable_DevNode_Ex = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Uint32 dnDevInst,
  Uint32 ulFlags,
  IntPtr hMachine,
),
    int Function(
  int dnDevInst,
  int ulFlags,
  int hMachine,
)>('CM_Enable_DevNode_Ex');

int CM_Enumerate_Classes(
  int ulClassIndex,
  Pointer<GUID> ClassGuid,
  int ulFlags,
) =>
    _CM_Enumerate_Classes(
      ulClassIndex,
      ClassGuid,
      ulFlags,
    );

late final _CM_Enumerate_Classes = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Uint32 ulClassIndex,
  Pointer<GUID> ClassGuid,
  Uint32 ulFlags,
),
    int Function(
  int ulClassIndex,
  Pointer<GUID> ClassGuid,
  int ulFlags,
)>('CM_Enumerate_Classes');

int CM_Enumerate_Classes_Ex(
  int ulClassIndex,
  Pointer<GUID> ClassGuid,
  int ulFlags,
  int hMachine,
) =>
    _CM_Enumerate_Classes_Ex(
      ulClassIndex,
      ClassGuid,
      ulFlags,
      hMachine,
    );

late final _CM_Enumerate_Classes_Ex = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Uint32 ulClassIndex,
  Pointer<GUID> ClassGuid,
  Uint32 ulFlags,
  IntPtr hMachine,
),
    int Function(
  int ulClassIndex,
  Pointer<GUID> ClassGuid,
  int ulFlags,
  int hMachine,
)>('CM_Enumerate_Classes_Ex');

int CM_Enumerate_Enumerators(
  int ulEnumIndex,
  Pointer<Utf16> Buffer,
  Pointer<Uint32> pulLength,
  int ulFlags,
) =>
    _CM_Enumerate_Enumerators(
      ulEnumIndex,
      Buffer,
      pulLength,
      ulFlags,
    );

late final _CM_Enumerate_Enumerators = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Uint32 ulEnumIndex,
  Pointer<Utf16> Buffer,
  Pointer<Uint32> pulLength,
  Uint32 ulFlags,
),
    int Function(
  int ulEnumIndex,
  Pointer<Utf16> Buffer,
  Pointer<Uint32> pulLength,
  int ulFlags,
)>('CM_Enumerate_EnumeratorsW');

int CM_Enumerate_Enumerators_Ex(
  int ulEnumIndex,
  Pointer<Utf16> Buffer,
  Pointer<Uint32> pulLength,
  int ulFlags,
  int hMachine,
) =>
    _CM_Enumerate_Enumerators_Ex(
      ulEnumIndex,
      Buffer,
      pulLength,
      ulFlags,
      hMachine,
    );

late final _CM_Enumerate_Enumerators_Ex = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Uint32 ulEnumIndex,
  Pointer<Utf16> Buffer,
  Pointer<Uint32> pulLength,
  Uint32 ulFlags,
  IntPtr hMachine,
),
    int Function(
  int ulEnumIndex,
  Pointer<Utf16> Buffer,
  Pointer<Uint32> pulLength,
  int ulFlags,
  int hMachine,
)>('CM_Enumerate_Enumerators_ExW');

int CM_Find_Range(
  Pointer<Uint64> pullStart,
  int ullStart,
  int ulLength,
  int ullAlignment,
  int ullEnd,
  int rlh,
  int ulFlags,
) =>
    _CM_Find_Range(
      pullStart,
      ullStart,
      ulLength,
      ullAlignment,
      ullEnd,
      rlh,
      ulFlags,
    );

late final _CM_Find_Range = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<Uint64> pullStart,
  Uint64 ullStart,
  Uint32 ulLength,
  Uint64 ullAlignment,
  Uint64 ullEnd,
  IntPtr rlh,
  Uint32 ulFlags,
),
    int Function(
  Pointer<Uint64> pullStart,
  int ullStart,
  int ulLength,
  int ullAlignment,
  int ullEnd,
  int rlh,
  int ulFlags,
)>('CM_Find_Range');

int CM_First_Range(
  int rlh,
  Pointer<Uint64> pullStart,
  Pointer<Uint64> pullEnd,
  Pointer<IntPtr> preElement,
  int ulFlags,
) =>
    _CM_First_Range(
      rlh,
      pullStart,
      pullEnd,
      preElement,
      ulFlags,
    );

late final _CM_First_Range = _cfgmgr32.lookupFunction<
    Uint32 Function(
  IntPtr rlh,
  Pointer<Uint64> pullStart,
  Pointer<Uint64> pullEnd,
  Pointer<IntPtr> preElement,
  Uint32 ulFlags,
),
    int Function(
  int rlh,
  Pointer<Uint64> pullStart,
  Pointer<Uint64> pullEnd,
  Pointer<IntPtr> preElement,
  int ulFlags,
)>('CM_First_Range');

int CM_Free_Log_Conf(
  int lcLogConfToBeFreed,
  int ulFlags,
) =>
    _CM_Free_Log_Conf(
      lcLogConfToBeFreed,
      ulFlags,
    );

late final _CM_Free_Log_Conf = _cfgmgr32.lookupFunction<
    Uint32 Function(
  IntPtr lcLogConfToBeFreed,
  Uint32 ulFlags,
),
    int Function(
  int lcLogConfToBeFreed,
  int ulFlags,
)>('CM_Free_Log_Conf');

int CM_Free_Log_Conf_Ex(
  int lcLogConfToBeFreed,
  int ulFlags,
  int hMachine,
) =>
    _CM_Free_Log_Conf_Ex(
      lcLogConfToBeFreed,
      ulFlags,
      hMachine,
    );

late final _CM_Free_Log_Conf_Ex = _cfgmgr32.lookupFunction<
    Uint32 Function(
  IntPtr lcLogConfToBeFreed,
  Uint32 ulFlags,
  IntPtr hMachine,
),
    int Function(
  int lcLogConfToBeFreed,
  int ulFlags,
  int hMachine,
)>('CM_Free_Log_Conf_Ex');

int CM_Free_Log_Conf_Handle(
  int lcLogConf,
) =>
    _CM_Free_Log_Conf_Handle(
      lcLogConf,
    );

late final _CM_Free_Log_Conf_Handle = _cfgmgr32.lookupFunction<
    Uint32 Function(
  IntPtr lcLogConf,
),
    int Function(
  int lcLogConf,
)>('CM_Free_Log_Conf_Handle');

int CM_Free_Range_List(
  int rlh,
  int ulFlags,
) =>
    _CM_Free_Range_List(
      rlh,
      ulFlags,
    );

late final _CM_Free_Range_List = _cfgmgr32.lookupFunction<
    Uint32 Function(
  IntPtr rlh,
  Uint32 ulFlags,
),
    int Function(
  int rlh,
  int ulFlags,
)>('CM_Free_Range_List');

int CM_Free_Res_Des(
  Pointer<IntPtr> prdResDes,
  int rdResDes,
  int ulFlags,
) =>
    _CM_Free_Res_Des(
      prdResDes,
      rdResDes,
      ulFlags,
    );

late final _CM_Free_Res_Des = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<IntPtr> prdResDes,
  IntPtr rdResDes,
  Uint32 ulFlags,
),
    int Function(
  Pointer<IntPtr> prdResDes,
  int rdResDes,
  int ulFlags,
)>('CM_Free_Res_Des');

int CM_Free_Res_Des_Ex(
  Pointer<IntPtr> prdResDes,
  int rdResDes,
  int ulFlags,
  int hMachine,
) =>
    _CM_Free_Res_Des_Ex(
      prdResDes,
      rdResDes,
      ulFlags,
      hMachine,
    );

late final _CM_Free_Res_Des_Ex = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<IntPtr> prdResDes,
  IntPtr rdResDes,
  Uint32 ulFlags,
  IntPtr hMachine,
),
    int Function(
  Pointer<IntPtr> prdResDes,
  int rdResDes,
  int ulFlags,
  int hMachine,
)>('CM_Free_Res_Des_Ex');

int CM_Free_Res_Des_Handle(
  int rdResDes,
) =>
    _CM_Free_Res_Des_Handle(
      rdResDes,
    );

late final _CM_Free_Res_Des_Handle = _cfgmgr32.lookupFunction<
    Uint32 Function(
  IntPtr rdResDes,
),
    int Function(
  int rdResDes,
)>('CM_Free_Res_Des_Handle');

int CM_Free_Resource_Conflict_Handle(
  int clConflictList,
) =>
    _CM_Free_Resource_Conflict_Handle(
      clConflictList,
    );

late final _CM_Free_Resource_Conflict_Handle = _cfgmgr32.lookupFunction<
    Uint32 Function(
  IntPtr clConflictList,
),
    int Function(
  int clConflictList,
)>('CM_Free_Resource_Conflict_Handle');

int CM_Get_Child(
  Pointer<Uint32> pdnDevInst,
  int dnDevInst,
  int ulFlags,
) =>
    _CM_Get_Child(
      pdnDevInst,
      dnDevInst,
      ulFlags,
    );

late final _CM_Get_Child = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<Uint32> pdnDevInst,
  Uint32 dnDevInst,
  Uint32 ulFlags,
),
    int Function(
  Pointer<Uint32> pdnDevInst,
  int dnDevInst,
  int ulFlags,
)>('CM_Get_Child');

int CM_Get_Child_Ex(
  Pointer<Uint32> pdnDevInst,
  int dnDevInst,
  int ulFlags,
  int hMachine,
) =>
    _CM_Get_Child_Ex(
      pdnDevInst,
      dnDevInst,
      ulFlags,
      hMachine,
    );

late final _CM_Get_Child_Ex = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<Uint32> pdnDevInst,
  Uint32 dnDevInst,
  Uint32 ulFlags,
  IntPtr hMachine,
),
    int Function(
  Pointer<Uint32> pdnDevInst,
  int dnDevInst,
  int ulFlags,
  int hMachine,
)>('CM_Get_Child_Ex');

int CM_Get_Class_Key_Name(
  Pointer<GUID> ClassGuid,
  Pointer<Utf16> pszKeyName,
  Pointer<Uint32> pulLength,
  int ulFlags,
) =>
    _CM_Get_Class_Key_Name(
      ClassGuid,
      pszKeyName,
      pulLength,
      ulFlags,
    );

late final _CM_Get_Class_Key_Name = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<GUID> ClassGuid,
  Pointer<Utf16> pszKeyName,
  Pointer<Uint32> pulLength,
  Uint32 ulFlags,
),
    int Function(
  Pointer<GUID> ClassGuid,
  Pointer<Utf16> pszKeyName,
  Pointer<Uint32> pulLength,
  int ulFlags,
)>('CM_Get_Class_Key_NameW');

int CM_Get_Class_Key_Name_Ex(
  Pointer<GUID> ClassGuid,
  Pointer<Utf16> pszKeyName,
  Pointer<Uint32> pulLength,
  int ulFlags,
  int hMachine,
) =>
    _CM_Get_Class_Key_Name_Ex(
      ClassGuid,
      pszKeyName,
      pulLength,
      ulFlags,
      hMachine,
    );

late final _CM_Get_Class_Key_Name_Ex = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<GUID> ClassGuid,
  Pointer<Utf16> pszKeyName,
  Pointer<Uint32> pulLength,
  Uint32 ulFlags,
  IntPtr hMachine,
),
    int Function(
  Pointer<GUID> ClassGuid,
  Pointer<Utf16> pszKeyName,
  Pointer<Uint32> pulLength,
  int ulFlags,
  int hMachine,
)>('CM_Get_Class_Key_Name_ExW');

int CM_Get_Class_Name(
  Pointer<GUID> ClassGuid,
  Pointer<Utf16> Buffer,
  Pointer<Uint32> pulLength,
  int ulFlags,
) =>
    _CM_Get_Class_Name(
      ClassGuid,
      Buffer,
      pulLength,
      ulFlags,
    );

late final _CM_Get_Class_Name = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<GUID> ClassGuid,
  Pointer<Utf16> Buffer,
  Pointer<Uint32> pulLength,
  Uint32 ulFlags,
),
    int Function(
  Pointer<GUID> ClassGuid,
  Pointer<Utf16> Buffer,
  Pointer<Uint32> pulLength,
  int ulFlags,
)>('CM_Get_Class_NameW');

int CM_Get_Class_Name_Ex(
  Pointer<GUID> ClassGuid,
  Pointer<Utf16> Buffer,
  Pointer<Uint32> pulLength,
  int ulFlags,
  int hMachine,
) =>
    _CM_Get_Class_Name_Ex(
      ClassGuid,
      Buffer,
      pulLength,
      ulFlags,
      hMachine,
    );

late final _CM_Get_Class_Name_Ex = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<GUID> ClassGuid,
  Pointer<Utf16> Buffer,
  Pointer<Uint32> pulLength,
  Uint32 ulFlags,
  IntPtr hMachine,
),
    int Function(
  Pointer<GUID> ClassGuid,
  Pointer<Utf16> Buffer,
  Pointer<Uint32> pulLength,
  int ulFlags,
  int hMachine,
)>('CM_Get_Class_Name_ExW');

int CM_Get_Class_Property(
  Pointer<GUID> ClassGUID,
  Pointer<DEVPROPKEY> PropertyKey,
  Pointer<Uint32> PropertyType,
  Pointer<Uint8> PropertyBuffer,
  Pointer<Uint32> PropertyBufferSize,
  int ulFlags,
) =>
    _CM_Get_Class_Property(
      ClassGUID,
      PropertyKey,
      PropertyType,
      PropertyBuffer,
      PropertyBufferSize,
      ulFlags,
    );

late final _CM_Get_Class_Property = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<GUID> ClassGUID,
  Pointer<DEVPROPKEY> PropertyKey,
  Pointer<Uint32> PropertyType,
  Pointer<Uint8> PropertyBuffer,
  Pointer<Uint32> PropertyBufferSize,
  Uint32 ulFlags,
),
    int Function(
  Pointer<GUID> ClassGUID,
  Pointer<DEVPROPKEY> PropertyKey,
  Pointer<Uint32> PropertyType,
  Pointer<Uint8> PropertyBuffer,
  Pointer<Uint32> PropertyBufferSize,
  int ulFlags,
)>('CM_Get_Class_PropertyW');

int CM_Get_Class_Property_Ex(
  Pointer<GUID> ClassGUID,
  Pointer<DEVPROPKEY> PropertyKey,
  Pointer<Uint32> PropertyType,
  Pointer<Uint8> PropertyBuffer,
  Pointer<Uint32> PropertyBufferSize,
  int ulFlags,
  int hMachine,
) =>
    _CM_Get_Class_Property_Ex(
      ClassGUID,
      PropertyKey,
      PropertyType,
      PropertyBuffer,
      PropertyBufferSize,
      ulFlags,
      hMachine,
    );

late final _CM_Get_Class_Property_Ex = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<GUID> ClassGUID,
  Pointer<DEVPROPKEY> PropertyKey,
  Pointer<Uint32> PropertyType,
  Pointer<Uint8> PropertyBuffer,
  Pointer<Uint32> PropertyBufferSize,
  Uint32 ulFlags,
  IntPtr hMachine,
),
    int Function(
  Pointer<GUID> ClassGUID,
  Pointer<DEVPROPKEY> PropertyKey,
  Pointer<Uint32> PropertyType,
  Pointer<Uint8> PropertyBuffer,
  Pointer<Uint32> PropertyBufferSize,
  int ulFlags,
  int hMachine,
)>('CM_Get_Class_Property_ExW');

int CM_Get_Class_Property_Keys(
  Pointer<GUID> ClassGUID,
  Pointer<DEVPROPKEY> PropertyKeyArray,
  Pointer<Uint32> PropertyKeyCount,
  int ulFlags,
) =>
    _CM_Get_Class_Property_Keys(
      ClassGUID,
      PropertyKeyArray,
      PropertyKeyCount,
      ulFlags,
    );

late final _CM_Get_Class_Property_Keys = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<GUID> ClassGUID,
  Pointer<DEVPROPKEY> PropertyKeyArray,
  Pointer<Uint32> PropertyKeyCount,
  Uint32 ulFlags,
),
    int Function(
  Pointer<GUID> ClassGUID,
  Pointer<DEVPROPKEY> PropertyKeyArray,
  Pointer<Uint32> PropertyKeyCount,
  int ulFlags,
)>('CM_Get_Class_Property_Keys');

int CM_Get_Class_Property_Keys_Ex(
  Pointer<GUID> ClassGUID,
  Pointer<DEVPROPKEY> PropertyKeyArray,
  Pointer<Uint32> PropertyKeyCount,
  int ulFlags,
  int hMachine,
) =>
    _CM_Get_Class_Property_Keys_Ex(
      ClassGUID,
      PropertyKeyArray,
      PropertyKeyCount,
      ulFlags,
      hMachine,
    );

late final _CM_Get_Class_Property_Keys_Ex = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<GUID> ClassGUID,
  Pointer<DEVPROPKEY> PropertyKeyArray,
  Pointer<Uint32> PropertyKeyCount,
  Uint32 ulFlags,
  IntPtr hMachine,
),
    int Function(
  Pointer<GUID> ClassGUID,
  Pointer<DEVPROPKEY> PropertyKeyArray,
  Pointer<Uint32> PropertyKeyCount,
  int ulFlags,
  int hMachine,
)>('CM_Get_Class_Property_Keys_Ex');

int CM_Get_Class_Registry_Property(
  Pointer<GUID> ClassGuid,
  int ulProperty,
  Pointer<Uint32> pulRegDataType,
  Pointer Buffer,
  Pointer<Uint32> pulLength,
  int ulFlags,
  int hMachine,
) =>
    _CM_Get_Class_Registry_Property(
      ClassGuid,
      ulProperty,
      pulRegDataType,
      Buffer,
      pulLength,
      ulFlags,
      hMachine,
    );

late final _CM_Get_Class_Registry_Property = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<GUID> ClassGuid,
  Uint32 ulProperty,
  Pointer<Uint32> pulRegDataType,
  Pointer Buffer,
  Pointer<Uint32> pulLength,
  Uint32 ulFlags,
  IntPtr hMachine,
),
    int Function(
  Pointer<GUID> ClassGuid,
  int ulProperty,
  Pointer<Uint32> pulRegDataType,
  Pointer Buffer,
  Pointer<Uint32> pulLength,
  int ulFlags,
  int hMachine,
)>('CM_Get_Class_Registry_PropertyW');

int CM_Get_Depth(
  Pointer<Uint32> pulDepth,
  int dnDevInst,
  int ulFlags,
) =>
    _CM_Get_Depth(
      pulDepth,
      dnDevInst,
      ulFlags,
    );

late final _CM_Get_Depth = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<Uint32> pulDepth,
  Uint32 dnDevInst,
  Uint32 ulFlags,
),
    int Function(
  Pointer<Uint32> pulDepth,
  int dnDevInst,
  int ulFlags,
)>('CM_Get_Depth');

int CM_Get_Depth_Ex(
  Pointer<Uint32> pulDepth,
  int dnDevInst,
  int ulFlags,
  int hMachine,
) =>
    _CM_Get_Depth_Ex(
      pulDepth,
      dnDevInst,
      ulFlags,
      hMachine,
    );

late final _CM_Get_Depth_Ex = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<Uint32> pulDepth,
  Uint32 dnDevInst,
  Uint32 ulFlags,
  IntPtr hMachine,
),
    int Function(
  Pointer<Uint32> pulDepth,
  int dnDevInst,
  int ulFlags,
  int hMachine,
)>('CM_Get_Depth_Ex');

int CM_Get_DevNode_Custom_Property(
  int dnDevInst,
  Pointer<Utf16> pszCustomPropertyName,
  Pointer<Uint32> pulRegDataType,
  Pointer Buffer,
  Pointer<Uint32> pulLength,
  int ulFlags,
) =>
    _CM_Get_DevNode_Custom_Property(
      dnDevInst,
      pszCustomPropertyName,
      pulRegDataType,
      Buffer,
      pulLength,
      ulFlags,
    );

late final _CM_Get_DevNode_Custom_Property = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Uint32 dnDevInst,
  Pointer<Utf16> pszCustomPropertyName,
  Pointer<Uint32> pulRegDataType,
  Pointer Buffer,
  Pointer<Uint32> pulLength,
  Uint32 ulFlags,
),
    int Function(
  int dnDevInst,
  Pointer<Utf16> pszCustomPropertyName,
  Pointer<Uint32> pulRegDataType,
  Pointer Buffer,
  Pointer<Uint32> pulLength,
  int ulFlags,
)>('CM_Get_DevNode_Custom_PropertyW');

int CM_Get_DevNode_Custom_Property_Ex(
  int dnDevInst,
  Pointer<Utf16> pszCustomPropertyName,
  Pointer<Uint32> pulRegDataType,
  Pointer Buffer,
  Pointer<Uint32> pulLength,
  int ulFlags,
  int hMachine,
) =>
    _CM_Get_DevNode_Custom_Property_Ex(
      dnDevInst,
      pszCustomPropertyName,
      pulRegDataType,
      Buffer,
      pulLength,
      ulFlags,
      hMachine,
    );

late final _CM_Get_DevNode_Custom_Property_Ex = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Uint32 dnDevInst,
  Pointer<Utf16> pszCustomPropertyName,
  Pointer<Uint32> pulRegDataType,
  Pointer Buffer,
  Pointer<Uint32> pulLength,
  Uint32 ulFlags,
  IntPtr hMachine,
),
    int Function(
  int dnDevInst,
  Pointer<Utf16> pszCustomPropertyName,
  Pointer<Uint32> pulRegDataType,
  Pointer Buffer,
  Pointer<Uint32> pulLength,
  int ulFlags,
  int hMachine,
)>('CM_Get_DevNode_Custom_Property_ExW');

int CM_Get_DevNode_Property(
  int dnDevInst,
  Pointer<DEVPROPKEY> PropertyKey,
  Pointer<Uint32> PropertyType,
  Pointer<Uint8> PropertyBuffer,
  Pointer<Uint32> PropertyBufferSize,
  int ulFlags,
) =>
    _CM_Get_DevNode_Property(
      dnDevInst,
      PropertyKey,
      PropertyType,
      PropertyBuffer,
      PropertyBufferSize,
      ulFlags,
    );

late final _CM_Get_DevNode_Property = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Uint32 dnDevInst,
  Pointer<DEVPROPKEY> PropertyKey,
  Pointer<Uint32> PropertyType,
  Pointer<Uint8> PropertyBuffer,
  Pointer<Uint32> PropertyBufferSize,
  Uint32 ulFlags,
),
    int Function(
  int dnDevInst,
  Pointer<DEVPROPKEY> PropertyKey,
  Pointer<Uint32> PropertyType,
  Pointer<Uint8> PropertyBuffer,
  Pointer<Uint32> PropertyBufferSize,
  int ulFlags,
)>('CM_Get_DevNode_PropertyW');

int CM_Get_DevNode_Property_Ex(
  int dnDevInst,
  Pointer<DEVPROPKEY> PropertyKey,
  Pointer<Uint32> PropertyType,
  Pointer<Uint8> PropertyBuffer,
  Pointer<Uint32> PropertyBufferSize,
  int ulFlags,
  int hMachine,
) =>
    _CM_Get_DevNode_Property_Ex(
      dnDevInst,
      PropertyKey,
      PropertyType,
      PropertyBuffer,
      PropertyBufferSize,
      ulFlags,
      hMachine,
    );

late final _CM_Get_DevNode_Property_Ex = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Uint32 dnDevInst,
  Pointer<DEVPROPKEY> PropertyKey,
  Pointer<Uint32> PropertyType,
  Pointer<Uint8> PropertyBuffer,
  Pointer<Uint32> PropertyBufferSize,
  Uint32 ulFlags,
  IntPtr hMachine,
),
    int Function(
  int dnDevInst,
  Pointer<DEVPROPKEY> PropertyKey,
  Pointer<Uint32> PropertyType,
  Pointer<Uint8> PropertyBuffer,
  Pointer<Uint32> PropertyBufferSize,
  int ulFlags,
  int hMachine,
)>('CM_Get_DevNode_Property_ExW');

int CM_Get_DevNode_Property_Keys(
  int dnDevInst,
  Pointer<DEVPROPKEY> PropertyKeyArray,
  Pointer<Uint32> PropertyKeyCount,
  int ulFlags,
) =>
    _CM_Get_DevNode_Property_Keys(
      dnDevInst,
      PropertyKeyArray,
      PropertyKeyCount,
      ulFlags,
    );

late final _CM_Get_DevNode_Property_Keys = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Uint32 dnDevInst,
  Pointer<DEVPROPKEY> PropertyKeyArray,
  Pointer<Uint32> PropertyKeyCount,
  Uint32 ulFlags,
),
    int Function(
  int dnDevInst,
  Pointer<DEVPROPKEY> PropertyKeyArray,
  Pointer<Uint32> PropertyKeyCount,
  int ulFlags,
)>('CM_Get_DevNode_Property_Keys');

int CM_Get_DevNode_Property_Keys_Ex(
  int dnDevInst,
  Pointer<DEVPROPKEY> PropertyKeyArray,
  Pointer<Uint32> PropertyKeyCount,
  int ulFlags,
  int hMachine,
) =>
    _CM_Get_DevNode_Property_Keys_Ex(
      dnDevInst,
      PropertyKeyArray,
      PropertyKeyCount,
      ulFlags,
      hMachine,
    );

late final _CM_Get_DevNode_Property_Keys_Ex = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Uint32 dnDevInst,
  Pointer<DEVPROPKEY> PropertyKeyArray,
  Pointer<Uint32> PropertyKeyCount,
  Uint32 ulFlags,
  IntPtr hMachine,
),
    int Function(
  int dnDevInst,
  Pointer<DEVPROPKEY> PropertyKeyArray,
  Pointer<Uint32> PropertyKeyCount,
  int ulFlags,
  int hMachine,
)>('CM_Get_DevNode_Property_Keys_Ex');

int CM_Get_DevNode_Registry_Property(
  int dnDevInst,
  int ulProperty,
  Pointer<Uint32> pulRegDataType,
  Pointer Buffer,
  Pointer<Uint32> pulLength,
  int ulFlags,
) =>
    _CM_Get_DevNode_Registry_Property(
      dnDevInst,
      ulProperty,
      pulRegDataType,
      Buffer,
      pulLength,
      ulFlags,
    );

late final _CM_Get_DevNode_Registry_Property = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Uint32 dnDevInst,
  Uint32 ulProperty,
  Pointer<Uint32> pulRegDataType,
  Pointer Buffer,
  Pointer<Uint32> pulLength,
  Uint32 ulFlags,
),
    int Function(
  int dnDevInst,
  int ulProperty,
  Pointer<Uint32> pulRegDataType,
  Pointer Buffer,
  Pointer<Uint32> pulLength,
  int ulFlags,
)>('CM_Get_DevNode_Registry_PropertyW');

int CM_Get_DevNode_Registry_Property_Ex(
  int dnDevInst,
  int ulProperty,
  Pointer<Uint32> pulRegDataType,
  Pointer Buffer,
  Pointer<Uint32> pulLength,
  int ulFlags,
  int hMachine,
) =>
    _CM_Get_DevNode_Registry_Property_Ex(
      dnDevInst,
      ulProperty,
      pulRegDataType,
      Buffer,
      pulLength,
      ulFlags,
      hMachine,
    );

late final _CM_Get_DevNode_Registry_Property_Ex = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Uint32 dnDevInst,
  Uint32 ulProperty,
  Pointer<Uint32> pulRegDataType,
  Pointer Buffer,
  Pointer<Uint32> pulLength,
  Uint32 ulFlags,
  IntPtr hMachine,
),
    int Function(
  int dnDevInst,
  int ulProperty,
  Pointer<Uint32> pulRegDataType,
  Pointer Buffer,
  Pointer<Uint32> pulLength,
  int ulFlags,
  int hMachine,
)>('CM_Get_DevNode_Registry_Property_ExW');

int CM_Get_DevNode_Status(
  Pointer<Uint32> pulStatus,
  Pointer<Uint32> pulProblemNumber,
  int dnDevInst,
  int ulFlags,
) =>
    _CM_Get_DevNode_Status(
      pulStatus,
      pulProblemNumber,
      dnDevInst,
      ulFlags,
    );

late final _CM_Get_DevNode_Status = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<Uint32> pulStatus,
  Pointer<Uint32> pulProblemNumber,
  Uint32 dnDevInst,
  Uint32 ulFlags,
),
    int Function(
  Pointer<Uint32> pulStatus,
  Pointer<Uint32> pulProblemNumber,
  int dnDevInst,
  int ulFlags,
)>('CM_Get_DevNode_Status');

int CM_Get_DevNode_Status_Ex(
  Pointer<Uint32> pulStatus,
  Pointer<Uint32> pulProblemNumber,
  int dnDevInst,
  int ulFlags,
  int hMachine,
) =>
    _CM_Get_DevNode_Status_Ex(
      pulStatus,
      pulProblemNumber,
      dnDevInst,
      ulFlags,
      hMachine,
    );

late final _CM_Get_DevNode_Status_Ex = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<Uint32> pulStatus,
  Pointer<Uint32> pulProblemNumber,
  Uint32 dnDevInst,
  Uint32 ulFlags,
  IntPtr hMachine,
),
    int Function(
  Pointer<Uint32> pulStatus,
  Pointer<Uint32> pulProblemNumber,
  int dnDevInst,
  int ulFlags,
  int hMachine,
)>('CM_Get_DevNode_Status_Ex');

int CM_Get_Device_ID(
  int dnDevInst,
  Pointer<Utf16> Buffer,
  int BufferLen,
  int ulFlags,
) =>
    _CM_Get_Device_ID(
      dnDevInst,
      Buffer,
      BufferLen,
      ulFlags,
    );

late final _CM_Get_Device_ID = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Uint32 dnDevInst,
  Pointer<Utf16> Buffer,
  Uint32 BufferLen,
  Uint32 ulFlags,
),
    int Function(
  int dnDevInst,
  Pointer<Utf16> Buffer,
  int BufferLen,
  int ulFlags,
)>('CM_Get_Device_IDW');

int CM_Get_Device_ID_Ex(
  int dnDevInst,
  Pointer<Utf16> Buffer,
  int BufferLen,
  int ulFlags,
  int hMachine,
) =>
    _CM_Get_Device_ID_Ex(
      dnDevInst,
      Buffer,
      BufferLen,
      ulFlags,
      hMachine,
    );

late final _CM_Get_Device_ID_Ex = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Uint32 dnDevInst,
  Pointer<Utf16> Buffer,
  Uint32 BufferLen,
  Uint32 ulFlags,
  IntPtr hMachine,
),
    int Function(
  int dnDevInst,
  Pointer<Utf16> Buffer,
  int BufferLen,
  int ulFlags,
  int hMachine,
)>('CM_Get_Device_ID_ExW');

int CM_Get_Device_ID_List(
  Pointer<Utf16> pszFilter,
  Pointer<Utf16> Buffer,
  int BufferLen,
  int ulFlags,
) =>
    _CM_Get_Device_ID_List(
      pszFilter,
      Buffer,
      BufferLen,
      ulFlags,
    );

late final _CM_Get_Device_ID_List = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> pszFilter,
  Pointer<Utf16> Buffer,
  Uint32 BufferLen,
  Uint32 ulFlags,
),
    int Function(
  Pointer<Utf16> pszFilter,
  Pointer<Utf16> Buffer,
  int BufferLen,
  int ulFlags,
)>('CM_Get_Device_ID_ListW');

int CM_Get_Device_ID_List_Ex(
  Pointer<Utf16> pszFilter,
  Pointer<Utf16> Buffer,
  int BufferLen,
  int ulFlags,
  int hMachine,
) =>
    _CM_Get_Device_ID_List_Ex(
      pszFilter,
      Buffer,
      BufferLen,
      ulFlags,
      hMachine,
    );

late final _CM_Get_Device_ID_List_Ex = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> pszFilter,
  Pointer<Utf16> Buffer,
  Uint32 BufferLen,
  Uint32 ulFlags,
  IntPtr hMachine,
),
    int Function(
  Pointer<Utf16> pszFilter,
  Pointer<Utf16> Buffer,
  int BufferLen,
  int ulFlags,
  int hMachine,
)>('CM_Get_Device_ID_List_ExW');

int CM_Get_Device_ID_List_Size(
  Pointer<Uint32> pulLen,
  Pointer<Utf16> pszFilter,
  int ulFlags,
) =>
    _CM_Get_Device_ID_List_Size(
      pulLen,
      pszFilter,
      ulFlags,
    );

late final _CM_Get_Device_ID_List_Size = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<Uint32> pulLen,
  Pointer<Utf16> pszFilter,
  Uint32 ulFlags,
),
    int Function(
  Pointer<Uint32> pulLen,
  Pointer<Utf16> pszFilter,
  int ulFlags,
)>('CM_Get_Device_ID_List_SizeW');

int CM_Get_Device_ID_List_Size_Ex(
  Pointer<Uint32> pulLen,
  Pointer<Utf16> pszFilter,
  int ulFlags,
  int hMachine,
) =>
    _CM_Get_Device_ID_List_Size_Ex(
      pulLen,
      pszFilter,
      ulFlags,
      hMachine,
    );

late final _CM_Get_Device_ID_List_Size_Ex = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<Uint32> pulLen,
  Pointer<Utf16> pszFilter,
  Uint32 ulFlags,
  IntPtr hMachine,
),
    int Function(
  Pointer<Uint32> pulLen,
  Pointer<Utf16> pszFilter,
  int ulFlags,
  int hMachine,
)>('CM_Get_Device_ID_List_Size_ExW');

int CM_Get_Device_ID_Size(
  Pointer<Uint32> pulLen,
  int dnDevInst,
  int ulFlags,
) =>
    _CM_Get_Device_ID_Size(
      pulLen,
      dnDevInst,
      ulFlags,
    );

late final _CM_Get_Device_ID_Size = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<Uint32> pulLen,
  Uint32 dnDevInst,
  Uint32 ulFlags,
),
    int Function(
  Pointer<Uint32> pulLen,
  int dnDevInst,
  int ulFlags,
)>('CM_Get_Device_ID_Size');

int CM_Get_Device_ID_Size_Ex(
  Pointer<Uint32> pulLen,
  int dnDevInst,
  int ulFlags,
  int hMachine,
) =>
    _CM_Get_Device_ID_Size_Ex(
      pulLen,
      dnDevInst,
      ulFlags,
      hMachine,
    );

late final _CM_Get_Device_ID_Size_Ex = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<Uint32> pulLen,
  Uint32 dnDevInst,
  Uint32 ulFlags,
  IntPtr hMachine,
),
    int Function(
  Pointer<Uint32> pulLen,
  int dnDevInst,
  int ulFlags,
  int hMachine,
)>('CM_Get_Device_ID_Size_Ex');

int CM_Get_Device_Interface_Alias(
  Pointer<Utf16> pszDeviceInterface,
  Pointer<GUID> AliasInterfaceGuid,
  Pointer<Utf16> pszAliasDeviceInterface,
  Pointer<Uint32> pulLength,
  int ulFlags,
) =>
    _CM_Get_Device_Interface_Alias(
      pszDeviceInterface,
      AliasInterfaceGuid,
      pszAliasDeviceInterface,
      pulLength,
      ulFlags,
    );

late final _CM_Get_Device_Interface_Alias = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> pszDeviceInterface,
  Pointer<GUID> AliasInterfaceGuid,
  Pointer<Utf16> pszAliasDeviceInterface,
  Pointer<Uint32> pulLength,
  Uint32 ulFlags,
),
    int Function(
  Pointer<Utf16> pszDeviceInterface,
  Pointer<GUID> AliasInterfaceGuid,
  Pointer<Utf16> pszAliasDeviceInterface,
  Pointer<Uint32> pulLength,
  int ulFlags,
)>('CM_Get_Device_Interface_AliasW');

int CM_Get_Device_Interface_Alias_Ex(
  Pointer<Utf16> pszDeviceInterface,
  Pointer<GUID> AliasInterfaceGuid,
  Pointer<Utf16> pszAliasDeviceInterface,
  Pointer<Uint32> pulLength,
  int ulFlags,
  int hMachine,
) =>
    _CM_Get_Device_Interface_Alias_Ex(
      pszDeviceInterface,
      AliasInterfaceGuid,
      pszAliasDeviceInterface,
      pulLength,
      ulFlags,
      hMachine,
    );

late final _CM_Get_Device_Interface_Alias_Ex = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> pszDeviceInterface,
  Pointer<GUID> AliasInterfaceGuid,
  Pointer<Utf16> pszAliasDeviceInterface,
  Pointer<Uint32> pulLength,
  Uint32 ulFlags,
  IntPtr hMachine,
),
    int Function(
  Pointer<Utf16> pszDeviceInterface,
  Pointer<GUID> AliasInterfaceGuid,
  Pointer<Utf16> pszAliasDeviceInterface,
  Pointer<Uint32> pulLength,
  int ulFlags,
  int hMachine,
)>('CM_Get_Device_Interface_Alias_ExW');

int CM_Get_Device_Interface_List(
  Pointer<GUID> InterfaceClassGuid,
  Pointer<Uint16> pDeviceID,
  Pointer<Utf16> Buffer,
  int BufferLen,
  int ulFlags,
) =>
    _CM_Get_Device_Interface_List(
      InterfaceClassGuid,
      pDeviceID,
      Buffer,
      BufferLen,
      ulFlags,
    );

late final _CM_Get_Device_Interface_List = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<GUID> InterfaceClassGuid,
  Pointer<Uint16> pDeviceID,
  Pointer<Utf16> Buffer,
  Uint32 BufferLen,
  Uint32 ulFlags,
),
    int Function(
  Pointer<GUID> InterfaceClassGuid,
  Pointer<Uint16> pDeviceID,
  Pointer<Utf16> Buffer,
  int BufferLen,
  int ulFlags,
)>('CM_Get_Device_Interface_ListW');

int CM_Get_Device_Interface_List_Ex(
  Pointer<GUID> InterfaceClassGuid,
  Pointer<Uint16> pDeviceID,
  Pointer<Utf16> Buffer,
  int BufferLen,
  int ulFlags,
  int hMachine,
) =>
    _CM_Get_Device_Interface_List_Ex(
      InterfaceClassGuid,
      pDeviceID,
      Buffer,
      BufferLen,
      ulFlags,
      hMachine,
    );

late final _CM_Get_Device_Interface_List_Ex = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<GUID> InterfaceClassGuid,
  Pointer<Uint16> pDeviceID,
  Pointer<Utf16> Buffer,
  Uint32 BufferLen,
  Uint32 ulFlags,
  IntPtr hMachine,
),
    int Function(
  Pointer<GUID> InterfaceClassGuid,
  Pointer<Uint16> pDeviceID,
  Pointer<Utf16> Buffer,
  int BufferLen,
  int ulFlags,
  int hMachine,
)>('CM_Get_Device_Interface_List_ExW');

int CM_Get_Device_Interface_List_Size(
  Pointer<Uint32> pulLen,
  Pointer<GUID> InterfaceClassGuid,
  Pointer<Uint16> pDeviceID,
  int ulFlags,
) =>
    _CM_Get_Device_Interface_List_Size(
      pulLen,
      InterfaceClassGuid,
      pDeviceID,
      ulFlags,
    );

late final _CM_Get_Device_Interface_List_Size = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<Uint32> pulLen,
  Pointer<GUID> InterfaceClassGuid,
  Pointer<Uint16> pDeviceID,
  Uint32 ulFlags,
),
    int Function(
  Pointer<Uint32> pulLen,
  Pointer<GUID> InterfaceClassGuid,
  Pointer<Uint16> pDeviceID,
  int ulFlags,
)>('CM_Get_Device_Interface_List_SizeW');

int CM_Get_Device_Interface_List_Size_Ex(
  Pointer<Uint32> pulLen,
  Pointer<GUID> InterfaceClassGuid,
  Pointer<Uint16> pDeviceID,
  int ulFlags,
  int hMachine,
) =>
    _CM_Get_Device_Interface_List_Size_Ex(
      pulLen,
      InterfaceClassGuid,
      pDeviceID,
      ulFlags,
      hMachine,
    );

late final _CM_Get_Device_Interface_List_Size_Ex = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<Uint32> pulLen,
  Pointer<GUID> InterfaceClassGuid,
  Pointer<Uint16> pDeviceID,
  Uint32 ulFlags,
  IntPtr hMachine,
),
    int Function(
  Pointer<Uint32> pulLen,
  Pointer<GUID> InterfaceClassGuid,
  Pointer<Uint16> pDeviceID,
  int ulFlags,
  int hMachine,
)>('CM_Get_Device_Interface_List_Size_ExW');

int CM_Get_Device_Interface_Property(
  Pointer<Utf16> pszDeviceInterface,
  Pointer<DEVPROPKEY> PropertyKey,
  Pointer<Uint32> PropertyType,
  Pointer<Uint8> PropertyBuffer,
  Pointer<Uint32> PropertyBufferSize,
  int ulFlags,
) =>
    _CM_Get_Device_Interface_Property(
      pszDeviceInterface,
      PropertyKey,
      PropertyType,
      PropertyBuffer,
      PropertyBufferSize,
      ulFlags,
    );

late final _CM_Get_Device_Interface_Property = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> pszDeviceInterface,
  Pointer<DEVPROPKEY> PropertyKey,
  Pointer<Uint32> PropertyType,
  Pointer<Uint8> PropertyBuffer,
  Pointer<Uint32> PropertyBufferSize,
  Uint32 ulFlags,
),
    int Function(
  Pointer<Utf16> pszDeviceInterface,
  Pointer<DEVPROPKEY> PropertyKey,
  Pointer<Uint32> PropertyType,
  Pointer<Uint8> PropertyBuffer,
  Pointer<Uint32> PropertyBufferSize,
  int ulFlags,
)>('CM_Get_Device_Interface_PropertyW');

int CM_Get_Device_Interface_Property_Ex(
  Pointer<Utf16> pszDeviceInterface,
  Pointer<DEVPROPKEY> PropertyKey,
  Pointer<Uint32> PropertyType,
  Pointer<Uint8> PropertyBuffer,
  Pointer<Uint32> PropertyBufferSize,
  int ulFlags,
  int hMachine,
) =>
    _CM_Get_Device_Interface_Property_Ex(
      pszDeviceInterface,
      PropertyKey,
      PropertyType,
      PropertyBuffer,
      PropertyBufferSize,
      ulFlags,
      hMachine,
    );

late final _CM_Get_Device_Interface_Property_Ex = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> pszDeviceInterface,
  Pointer<DEVPROPKEY> PropertyKey,
  Pointer<Uint32> PropertyType,
  Pointer<Uint8> PropertyBuffer,
  Pointer<Uint32> PropertyBufferSize,
  Uint32 ulFlags,
  IntPtr hMachine,
),
    int Function(
  Pointer<Utf16> pszDeviceInterface,
  Pointer<DEVPROPKEY> PropertyKey,
  Pointer<Uint32> PropertyType,
  Pointer<Uint8> PropertyBuffer,
  Pointer<Uint32> PropertyBufferSize,
  int ulFlags,
  int hMachine,
)>('CM_Get_Device_Interface_Property_ExW');

int CM_Get_Device_Interface_Property_Keys(
  Pointer<Utf16> pszDeviceInterface,
  Pointer<DEVPROPKEY> PropertyKeyArray,
  Pointer<Uint32> PropertyKeyCount,
  int ulFlags,
) =>
    _CM_Get_Device_Interface_Property_Keys(
      pszDeviceInterface,
      PropertyKeyArray,
      PropertyKeyCount,
      ulFlags,
    );

late final _CM_Get_Device_Interface_Property_Keys = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> pszDeviceInterface,
  Pointer<DEVPROPKEY> PropertyKeyArray,
  Pointer<Uint32> PropertyKeyCount,
  Uint32 ulFlags,
),
    int Function(
  Pointer<Utf16> pszDeviceInterface,
  Pointer<DEVPROPKEY> PropertyKeyArray,
  Pointer<Uint32> PropertyKeyCount,
  int ulFlags,
)>('CM_Get_Device_Interface_Property_KeysW');

int CM_Get_Device_Interface_Property_Keys_Ex(
  Pointer<Utf16> pszDeviceInterface,
  Pointer<DEVPROPKEY> PropertyKeyArray,
  Pointer<Uint32> PropertyKeyCount,
  int ulFlags,
  int hMachine,
) =>
    _CM_Get_Device_Interface_Property_Keys_Ex(
      pszDeviceInterface,
      PropertyKeyArray,
      PropertyKeyCount,
      ulFlags,
      hMachine,
    );

late final _CM_Get_Device_Interface_Property_Keys_Ex = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> pszDeviceInterface,
  Pointer<DEVPROPKEY> PropertyKeyArray,
  Pointer<Uint32> PropertyKeyCount,
  Uint32 ulFlags,
  IntPtr hMachine,
),
    int Function(
  Pointer<Utf16> pszDeviceInterface,
  Pointer<DEVPROPKEY> PropertyKeyArray,
  Pointer<Uint32> PropertyKeyCount,
  int ulFlags,
  int hMachine,
)>('CM_Get_Device_Interface_Property_Keys_ExW');

int CM_Get_First_Log_Conf(
  Pointer<IntPtr> plcLogConf,
  int dnDevInst,
  int ulFlags,
) =>
    _CM_Get_First_Log_Conf(
      plcLogConf,
      dnDevInst,
      ulFlags,
    );

late final _CM_Get_First_Log_Conf = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<IntPtr> plcLogConf,
  Uint32 dnDevInst,
  Uint32 ulFlags,
),
    int Function(
  Pointer<IntPtr> plcLogConf,
  int dnDevInst,
  int ulFlags,
)>('CM_Get_First_Log_Conf');

int CM_Get_First_Log_Conf_Ex(
  Pointer<IntPtr> plcLogConf,
  int dnDevInst,
  int ulFlags,
  int hMachine,
) =>
    _CM_Get_First_Log_Conf_Ex(
      plcLogConf,
      dnDevInst,
      ulFlags,
      hMachine,
    );

late final _CM_Get_First_Log_Conf_Ex = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<IntPtr> plcLogConf,
  Uint32 dnDevInst,
  Uint32 ulFlags,
  IntPtr hMachine,
),
    int Function(
  Pointer<IntPtr> plcLogConf,
  int dnDevInst,
  int ulFlags,
  int hMachine,
)>('CM_Get_First_Log_Conf_Ex');

int CM_Get_Global_State(
  Pointer<Uint32> pulState,
  int ulFlags,
) =>
    _CM_Get_Global_State(
      pulState,
      ulFlags,
    );

late final _CM_Get_Global_State = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<Uint32> pulState,
  Uint32 ulFlags,
),
    int Function(
  Pointer<Uint32> pulState,
  int ulFlags,
)>('CM_Get_Global_State');

int CM_Get_Global_State_Ex(
  Pointer<Uint32> pulState,
  int ulFlags,
  int hMachine,
) =>
    _CM_Get_Global_State_Ex(
      pulState,
      ulFlags,
      hMachine,
    );

late final _CM_Get_Global_State_Ex = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<Uint32> pulState,
  Uint32 ulFlags,
  IntPtr hMachine,
),
    int Function(
  Pointer<Uint32> pulState,
  int ulFlags,
  int hMachine,
)>('CM_Get_Global_State_Ex');

int CM_Get_HW_Prof_Flags(
  Pointer<Uint16> pDeviceID,
  int ulHardwareProfile,
  Pointer<Uint32> pulValue,
  int ulFlags,
) =>
    _CM_Get_HW_Prof_Flags(
      pDeviceID,
      ulHardwareProfile,
      pulValue,
      ulFlags,
    );

late final _CM_Get_HW_Prof_Flags = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<Uint16> pDeviceID,
  Uint32 ulHardwareProfile,
  Pointer<Uint32> pulValue,
  Uint32 ulFlags,
),
    int Function(
  Pointer<Uint16> pDeviceID,
  int ulHardwareProfile,
  Pointer<Uint32> pulValue,
  int ulFlags,
)>('CM_Get_HW_Prof_FlagsW');

int CM_Get_HW_Prof_Flags_Ex(
  Pointer<Uint16> pDeviceID,
  int ulHardwareProfile,
  Pointer<Uint32> pulValue,
  int ulFlags,
  int hMachine,
) =>
    _CM_Get_HW_Prof_Flags_Ex(
      pDeviceID,
      ulHardwareProfile,
      pulValue,
      ulFlags,
      hMachine,
    );

late final _CM_Get_HW_Prof_Flags_Ex = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<Uint16> pDeviceID,
  Uint32 ulHardwareProfile,
  Pointer<Uint32> pulValue,
  Uint32 ulFlags,
  IntPtr hMachine,
),
    int Function(
  Pointer<Uint16> pDeviceID,
  int ulHardwareProfile,
  Pointer<Uint32> pulValue,
  int ulFlags,
  int hMachine,
)>('CM_Get_HW_Prof_Flags_ExW');

int CM_Get_Hardware_Profile_Info(
  int ulIndex,
  Pointer<HWProfileInfo_s> pHWProfileInfo,
  int ulFlags,
) =>
    _CM_Get_Hardware_Profile_Info(
      ulIndex,
      pHWProfileInfo,
      ulFlags,
    );

late final _CM_Get_Hardware_Profile_Info = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Uint32 ulIndex,
  Pointer<HWProfileInfo_s> pHWProfileInfo,
  Uint32 ulFlags,
),
    int Function(
  int ulIndex,
  Pointer<HWProfileInfo_s> pHWProfileInfo,
  int ulFlags,
)>('CM_Get_Hardware_Profile_InfoW');

int CM_Get_Hardware_Profile_Info_Ex(
  int ulIndex,
  Pointer<HWProfileInfo_s> pHWProfileInfo,
  int ulFlags,
  int hMachine,
) =>
    _CM_Get_Hardware_Profile_Info_Ex(
      ulIndex,
      pHWProfileInfo,
      ulFlags,
      hMachine,
    );

late final _CM_Get_Hardware_Profile_Info_Ex = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Uint32 ulIndex,
  Pointer<HWProfileInfo_s> pHWProfileInfo,
  Uint32 ulFlags,
  IntPtr hMachine,
),
    int Function(
  int ulIndex,
  Pointer<HWProfileInfo_s> pHWProfileInfo,
  int ulFlags,
  int hMachine,
)>('CM_Get_Hardware_Profile_Info_ExW');

int CM_Get_Log_Conf_Priority(
  int lcLogConf,
  Pointer<Uint32> pPriority,
  int ulFlags,
) =>
    _CM_Get_Log_Conf_Priority(
      lcLogConf,
      pPriority,
      ulFlags,
    );

late final _CM_Get_Log_Conf_Priority = _cfgmgr32.lookupFunction<
    Uint32 Function(
  IntPtr lcLogConf,
  Pointer<Uint32> pPriority,
  Uint32 ulFlags,
),
    int Function(
  int lcLogConf,
  Pointer<Uint32> pPriority,
  int ulFlags,
)>('CM_Get_Log_Conf_Priority');

int CM_Get_Log_Conf_Priority_Ex(
  int lcLogConf,
  Pointer<Uint32> pPriority,
  int ulFlags,
  int hMachine,
) =>
    _CM_Get_Log_Conf_Priority_Ex(
      lcLogConf,
      pPriority,
      ulFlags,
      hMachine,
    );

late final _CM_Get_Log_Conf_Priority_Ex = _cfgmgr32.lookupFunction<
    Uint32 Function(
  IntPtr lcLogConf,
  Pointer<Uint32> pPriority,
  Uint32 ulFlags,
  IntPtr hMachine,
),
    int Function(
  int lcLogConf,
  Pointer<Uint32> pPriority,
  int ulFlags,
  int hMachine,
)>('CM_Get_Log_Conf_Priority_Ex');

int CM_Get_Next_Log_Conf(
  Pointer<IntPtr> plcLogConf,
  int lcLogConf,
  int ulFlags,
) =>
    _CM_Get_Next_Log_Conf(
      plcLogConf,
      lcLogConf,
      ulFlags,
    );

late final _CM_Get_Next_Log_Conf = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<IntPtr> plcLogConf,
  IntPtr lcLogConf,
  Uint32 ulFlags,
),
    int Function(
  Pointer<IntPtr> plcLogConf,
  int lcLogConf,
  int ulFlags,
)>('CM_Get_Next_Log_Conf');

int CM_Get_Next_Log_Conf_Ex(
  Pointer<IntPtr> plcLogConf,
  int lcLogConf,
  int ulFlags,
  int hMachine,
) =>
    _CM_Get_Next_Log_Conf_Ex(
      plcLogConf,
      lcLogConf,
      ulFlags,
      hMachine,
    );

late final _CM_Get_Next_Log_Conf_Ex = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<IntPtr> plcLogConf,
  IntPtr lcLogConf,
  Uint32 ulFlags,
  IntPtr hMachine,
),
    int Function(
  Pointer<IntPtr> plcLogConf,
  int lcLogConf,
  int ulFlags,
  int hMachine,
)>('CM_Get_Next_Log_Conf_Ex');

int CM_Get_Next_Res_Des(
  Pointer<IntPtr> prdResDes,
  int rdResDes,
  int ForResource,
  Pointer<Uint32> pResourceID,
  int ulFlags,
) =>
    _CM_Get_Next_Res_Des(
      prdResDes,
      rdResDes,
      ForResource,
      pResourceID,
      ulFlags,
    );

late final _CM_Get_Next_Res_Des = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<IntPtr> prdResDes,
  IntPtr rdResDes,
  Uint32 ForResource,
  Pointer<Uint32> pResourceID,
  Uint32 ulFlags,
),
    int Function(
  Pointer<IntPtr> prdResDes,
  int rdResDes,
  int ForResource,
  Pointer<Uint32> pResourceID,
  int ulFlags,
)>('CM_Get_Next_Res_Des');

int CM_Get_Next_Res_Des_Ex(
  Pointer<IntPtr> prdResDes,
  int rdResDes,
  int ForResource,
  Pointer<Uint32> pResourceID,
  int ulFlags,
  int hMachine,
) =>
    _CM_Get_Next_Res_Des_Ex(
      prdResDes,
      rdResDes,
      ForResource,
      pResourceID,
      ulFlags,
      hMachine,
    );

late final _CM_Get_Next_Res_Des_Ex = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<IntPtr> prdResDes,
  IntPtr rdResDes,
  Uint32 ForResource,
  Pointer<Uint32> pResourceID,
  Uint32 ulFlags,
  IntPtr hMachine,
),
    int Function(
  Pointer<IntPtr> prdResDes,
  int rdResDes,
  int ForResource,
  Pointer<Uint32> pResourceID,
  int ulFlags,
  int hMachine,
)>('CM_Get_Next_Res_Des_Ex');

int CM_Get_Parent(
  Pointer<Uint32> pdnDevInst,
  int dnDevInst,
  int ulFlags,
) =>
    _CM_Get_Parent(
      pdnDevInst,
      dnDevInst,
      ulFlags,
    );

late final _CM_Get_Parent = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<Uint32> pdnDevInst,
  Uint32 dnDevInst,
  Uint32 ulFlags,
),
    int Function(
  Pointer<Uint32> pdnDevInst,
  int dnDevInst,
  int ulFlags,
)>('CM_Get_Parent');

int CM_Get_Parent_Ex(
  Pointer<Uint32> pdnDevInst,
  int dnDevInst,
  int ulFlags,
  int hMachine,
) =>
    _CM_Get_Parent_Ex(
      pdnDevInst,
      dnDevInst,
      ulFlags,
      hMachine,
    );

late final _CM_Get_Parent_Ex = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<Uint32> pdnDevInst,
  Uint32 dnDevInst,
  Uint32 ulFlags,
  IntPtr hMachine,
),
    int Function(
  Pointer<Uint32> pdnDevInst,
  int dnDevInst,
  int ulFlags,
  int hMachine,
)>('CM_Get_Parent_Ex');

int CM_Get_Res_Des_Data(
  int rdResDes,
  Pointer Buffer,
  int BufferLen,
  int ulFlags,
) =>
    _CM_Get_Res_Des_Data(
      rdResDes,
      Buffer,
      BufferLen,
      ulFlags,
    );

late final _CM_Get_Res_Des_Data = _cfgmgr32.lookupFunction<
    Uint32 Function(
  IntPtr rdResDes,
  Pointer Buffer,
  Uint32 BufferLen,
  Uint32 ulFlags,
),
    int Function(
  int rdResDes,
  Pointer Buffer,
  int BufferLen,
  int ulFlags,
)>('CM_Get_Res_Des_Data');

int CM_Get_Res_Des_Data_Ex(
  int rdResDes,
  Pointer Buffer,
  int BufferLen,
  int ulFlags,
  int hMachine,
) =>
    _CM_Get_Res_Des_Data_Ex(
      rdResDes,
      Buffer,
      BufferLen,
      ulFlags,
      hMachine,
    );

late final _CM_Get_Res_Des_Data_Ex = _cfgmgr32.lookupFunction<
    Uint32 Function(
  IntPtr rdResDes,
  Pointer Buffer,
  Uint32 BufferLen,
  Uint32 ulFlags,
  IntPtr hMachine,
),
    int Function(
  int rdResDes,
  Pointer Buffer,
  int BufferLen,
  int ulFlags,
  int hMachine,
)>('CM_Get_Res_Des_Data_Ex');

int CM_Get_Res_Des_Data_Size(
  Pointer<Uint32> pulSize,
  int rdResDes,
  int ulFlags,
) =>
    _CM_Get_Res_Des_Data_Size(
      pulSize,
      rdResDes,
      ulFlags,
    );

late final _CM_Get_Res_Des_Data_Size = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<Uint32> pulSize,
  IntPtr rdResDes,
  Uint32 ulFlags,
),
    int Function(
  Pointer<Uint32> pulSize,
  int rdResDes,
  int ulFlags,
)>('CM_Get_Res_Des_Data_Size');

int CM_Get_Res_Des_Data_Size_Ex(
  Pointer<Uint32> pulSize,
  int rdResDes,
  int ulFlags,
  int hMachine,
) =>
    _CM_Get_Res_Des_Data_Size_Ex(
      pulSize,
      rdResDes,
      ulFlags,
      hMachine,
    );

late final _CM_Get_Res_Des_Data_Size_Ex = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<Uint32> pulSize,
  IntPtr rdResDes,
  Uint32 ulFlags,
  IntPtr hMachine,
),
    int Function(
  Pointer<Uint32> pulSize,
  int rdResDes,
  int ulFlags,
  int hMachine,
)>('CM_Get_Res_Des_Data_Size_Ex');

int CM_Get_Resource_Conflict_Count(
  int clConflictList,
  Pointer<Uint32> pulCount,
) =>
    _CM_Get_Resource_Conflict_Count(
      clConflictList,
      pulCount,
    );

late final _CM_Get_Resource_Conflict_Count = _cfgmgr32.lookupFunction<
    Uint32 Function(
  IntPtr clConflictList,
  Pointer<Uint32> pulCount,
),
    int Function(
  int clConflictList,
  Pointer<Uint32> pulCount,
)>('CM_Get_Resource_Conflict_Count');

int CM_Get_Resource_Conflict_Details(
  int clConflictList,
  int ulIndex,
  Pointer<CONFLICT_DETAILS_> pConflictDetails,
) =>
    _CM_Get_Resource_Conflict_Details(
      clConflictList,
      ulIndex,
      pConflictDetails,
    );

late final _CM_Get_Resource_Conflict_Details = _cfgmgr32.lookupFunction<
    Uint32 Function(
  IntPtr clConflictList,
  Uint32 ulIndex,
  Pointer<CONFLICT_DETAILS_> pConflictDetails,
),
    int Function(
  int clConflictList,
  int ulIndex,
  Pointer<CONFLICT_DETAILS_> pConflictDetails,
)>('CM_Get_Resource_Conflict_DetailsW');

int CM_Get_Sibling(
  Pointer<Uint32> pdnDevInst,
  int dnDevInst,
  int ulFlags,
) =>
    _CM_Get_Sibling(
      pdnDevInst,
      dnDevInst,
      ulFlags,
    );

late final _CM_Get_Sibling = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<Uint32> pdnDevInst,
  Uint32 dnDevInst,
  Uint32 ulFlags,
),
    int Function(
  Pointer<Uint32> pdnDevInst,
  int dnDevInst,
  int ulFlags,
)>('CM_Get_Sibling');

int CM_Get_Sibling_Ex(
  Pointer<Uint32> pdnDevInst,
  int dnDevInst,
  int ulFlags,
  int hMachine,
) =>
    _CM_Get_Sibling_Ex(
      pdnDevInst,
      dnDevInst,
      ulFlags,
      hMachine,
    );

late final _CM_Get_Sibling_Ex = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<Uint32> pdnDevInst,
  Uint32 dnDevInst,
  Uint32 ulFlags,
  IntPtr hMachine,
),
    int Function(
  Pointer<Uint32> pdnDevInst,
  int dnDevInst,
  int ulFlags,
  int hMachine,
)>('CM_Get_Sibling_Ex');

int CM_Get_Version() => _CM_Get_Version();

late final _CM_Get_Version = _cfgmgr32
    .lookupFunction<Uint16 Function(), int Function()>('CM_Get_Version');

int CM_Get_Version_Ex(
  int hMachine,
) =>
    _CM_Get_Version_Ex(
      hMachine,
    );

late final _CM_Get_Version_Ex = _cfgmgr32.lookupFunction<
    Uint16 Function(
  IntPtr hMachine,
),
    int Function(
  int hMachine,
)>('CM_Get_Version_Ex');

int CM_Intersect_Range_List(
  int rlhOld1,
  int rlhOld2,
  int rlhNew,
  int ulFlags,
) =>
    _CM_Intersect_Range_List(
      rlhOld1,
      rlhOld2,
      rlhNew,
      ulFlags,
    );

late final _CM_Intersect_Range_List = _cfgmgr32.lookupFunction<
    Uint32 Function(
  IntPtr rlhOld1,
  IntPtr rlhOld2,
  IntPtr rlhNew,
  Uint32 ulFlags,
),
    int Function(
  int rlhOld1,
  int rlhOld2,
  int rlhNew,
  int ulFlags,
)>('CM_Intersect_Range_List');

int CM_Invert_Range_List(
  int rlhOld,
  int rlhNew,
  int ullMaxValue,
  int ulFlags,
) =>
    _CM_Invert_Range_List(
      rlhOld,
      rlhNew,
      ullMaxValue,
      ulFlags,
    );

late final _CM_Invert_Range_List = _cfgmgr32.lookupFunction<
    Uint32 Function(
  IntPtr rlhOld,
  IntPtr rlhNew,
  Uint64 ullMaxValue,
  Uint32 ulFlags,
),
    int Function(
  int rlhOld,
  int rlhNew,
  int ullMaxValue,
  int ulFlags,
)>('CM_Invert_Range_List');

int CM_Is_Dock_Station_Present(
  Pointer<Int32> pbPresent,
) =>
    _CM_Is_Dock_Station_Present(
      pbPresent,
    );

late final _CM_Is_Dock_Station_Present = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<Int32> pbPresent,
),
    int Function(
  Pointer<Int32> pbPresent,
)>('CM_Is_Dock_Station_Present');

int CM_Is_Dock_Station_Present_Ex(
  Pointer<Int32> pbPresent,
  int hMachine,
) =>
    _CM_Is_Dock_Station_Present_Ex(
      pbPresent,
      hMachine,
    );

late final _CM_Is_Dock_Station_Present_Ex = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<Int32> pbPresent,
  IntPtr hMachine,
),
    int Function(
  Pointer<Int32> pbPresent,
  int hMachine,
)>('CM_Is_Dock_Station_Present_Ex');

int CM_Is_Version_Available(
  int wVersion,
) =>
    _CM_Is_Version_Available(
      wVersion,
    );

late final _CM_Is_Version_Available = _cfgmgr32.lookupFunction<
    Int32 Function(
  Uint16 wVersion,
),
    int Function(
  int wVersion,
)>('CM_Is_Version_Available');

int CM_Is_Version_Available_Ex(
  int wVersion,
  int hMachine,
) =>
    _CM_Is_Version_Available_Ex(
      wVersion,
      hMachine,
    );

late final _CM_Is_Version_Available_Ex = _cfgmgr32.lookupFunction<
    Int32 Function(
  Uint16 wVersion,
  IntPtr hMachine,
),
    int Function(
  int wVersion,
  int hMachine,
)>('CM_Is_Version_Available_Ex');

int CM_Locate_DevNode(
  Pointer<Uint32> pdnDevInst,
  Pointer<Uint16> pDeviceID,
  int ulFlags,
) =>
    _CM_Locate_DevNode(
      pdnDevInst,
      pDeviceID,
      ulFlags,
    );

late final _CM_Locate_DevNode = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<Uint32> pdnDevInst,
  Pointer<Uint16> pDeviceID,
  Uint32 ulFlags,
),
    int Function(
  Pointer<Uint32> pdnDevInst,
  Pointer<Uint16> pDeviceID,
  int ulFlags,
)>('CM_Locate_DevNodeW');

int CM_Locate_DevNode_Ex(
  Pointer<Uint32> pdnDevInst,
  Pointer<Uint16> pDeviceID,
  int ulFlags,
  int hMachine,
) =>
    _CM_Locate_DevNode_Ex(
      pdnDevInst,
      pDeviceID,
      ulFlags,
      hMachine,
    );

late final _CM_Locate_DevNode_Ex = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<Uint32> pdnDevInst,
  Pointer<Uint16> pDeviceID,
  Uint32 ulFlags,
  IntPtr hMachine,
),
    int Function(
  Pointer<Uint32> pdnDevInst,
  Pointer<Uint16> pDeviceID,
  int ulFlags,
  int hMachine,
)>('CM_Locate_DevNode_ExW');

int CM_MapCrToWin32Err(
  int CmReturnCode,
  int DefaultErr,
) =>
    _CM_MapCrToWin32Err(
      CmReturnCode,
      DefaultErr,
    );

late final _CM_MapCrToWin32Err = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Uint32 CmReturnCode,
  Uint32 DefaultErr,
),
    int Function(
  int CmReturnCode,
  int DefaultErr,
)>('CM_MapCrToWin32Err');

int CM_Merge_Range_List(
  int rlhOld1,
  int rlhOld2,
  int rlhNew,
  int ulFlags,
) =>
    _CM_Merge_Range_List(
      rlhOld1,
      rlhOld2,
      rlhNew,
      ulFlags,
    );

late final _CM_Merge_Range_List = _cfgmgr32.lookupFunction<
    Uint32 Function(
  IntPtr rlhOld1,
  IntPtr rlhOld2,
  IntPtr rlhNew,
  Uint32 ulFlags,
),
    int Function(
  int rlhOld1,
  int rlhOld2,
  int rlhNew,
  int ulFlags,
)>('CM_Merge_Range_List');

int CM_Modify_Res_Des(
  Pointer<IntPtr> prdResDes,
  int rdResDes,
  int ResourceID,
  Pointer ResourceData,
  int ResourceLen,
  int ulFlags,
) =>
    _CM_Modify_Res_Des(
      prdResDes,
      rdResDes,
      ResourceID,
      ResourceData,
      ResourceLen,
      ulFlags,
    );

late final _CM_Modify_Res_Des = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<IntPtr> prdResDes,
  IntPtr rdResDes,
  Uint32 ResourceID,
  Pointer ResourceData,
  Uint32 ResourceLen,
  Uint32 ulFlags,
),
    int Function(
  Pointer<IntPtr> prdResDes,
  int rdResDes,
  int ResourceID,
  Pointer ResourceData,
  int ResourceLen,
  int ulFlags,
)>('CM_Modify_Res_Des');

int CM_Modify_Res_Des_Ex(
  Pointer<IntPtr> prdResDes,
  int rdResDes,
  int ResourceID,
  Pointer ResourceData,
  int ResourceLen,
  int ulFlags,
  int hMachine,
) =>
    _CM_Modify_Res_Des_Ex(
      prdResDes,
      rdResDes,
      ResourceID,
      ResourceData,
      ResourceLen,
      ulFlags,
      hMachine,
    );

late final _CM_Modify_Res_Des_Ex = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<IntPtr> prdResDes,
  IntPtr rdResDes,
  Uint32 ResourceID,
  Pointer ResourceData,
  Uint32 ResourceLen,
  Uint32 ulFlags,
  IntPtr hMachine,
),
    int Function(
  Pointer<IntPtr> prdResDes,
  int rdResDes,
  int ResourceID,
  Pointer ResourceData,
  int ResourceLen,
  int ulFlags,
  int hMachine,
)>('CM_Modify_Res_Des_Ex');

int CM_Move_DevNode(
  int dnFromDevInst,
  int dnToDevInst,
  int ulFlags,
) =>
    _CM_Move_DevNode(
      dnFromDevInst,
      dnToDevInst,
      ulFlags,
    );

late final _CM_Move_DevNode = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Uint32 dnFromDevInst,
  Uint32 dnToDevInst,
  Uint32 ulFlags,
),
    int Function(
  int dnFromDevInst,
  int dnToDevInst,
  int ulFlags,
)>('CM_Move_DevNode');

int CM_Move_DevNode_Ex(
  int dnFromDevInst,
  int dnToDevInst,
  int ulFlags,
  int hMachine,
) =>
    _CM_Move_DevNode_Ex(
      dnFromDevInst,
      dnToDevInst,
      ulFlags,
      hMachine,
    );

late final _CM_Move_DevNode_Ex = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Uint32 dnFromDevInst,
  Uint32 dnToDevInst,
  Uint32 ulFlags,
  IntPtr hMachine,
),
    int Function(
  int dnFromDevInst,
  int dnToDevInst,
  int ulFlags,
  int hMachine,
)>('CM_Move_DevNode_Ex');

int CM_Next_Range(
  Pointer<IntPtr> preElement,
  Pointer<Uint64> pullStart,
  Pointer<Uint64> pullEnd,
  int ulFlags,
) =>
    _CM_Next_Range(
      preElement,
      pullStart,
      pullEnd,
      ulFlags,
    );

late final _CM_Next_Range = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<IntPtr> preElement,
  Pointer<Uint64> pullStart,
  Pointer<Uint64> pullEnd,
  Uint32 ulFlags,
),
    int Function(
  Pointer<IntPtr> preElement,
  Pointer<Uint64> pullStart,
  Pointer<Uint64> pullEnd,
  int ulFlags,
)>('CM_Next_Range');

int CM_Open_Class_Key(
  Pointer<GUID> ClassGuid,
  Pointer<Utf16> pszClassName,
  int samDesired,
  int Disposition,
  Pointer<IntPtr> phkClass,
  int ulFlags,
) =>
    _CM_Open_Class_Key(
      ClassGuid,
      pszClassName,
      samDesired,
      Disposition,
      phkClass,
      ulFlags,
    );

late final _CM_Open_Class_Key = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<GUID> ClassGuid,
  Pointer<Utf16> pszClassName,
  Uint32 samDesired,
  Uint32 Disposition,
  Pointer<IntPtr> phkClass,
  Uint32 ulFlags,
),
    int Function(
  Pointer<GUID> ClassGuid,
  Pointer<Utf16> pszClassName,
  int samDesired,
  int Disposition,
  Pointer<IntPtr> phkClass,
  int ulFlags,
)>('CM_Open_Class_KeyW');

int CM_Open_Class_Key_Ex(
  Pointer<GUID> ClassGuid,
  Pointer<Utf16> pszClassName,
  int samDesired,
  int Disposition,
  Pointer<IntPtr> phkClass,
  int ulFlags,
  int hMachine,
) =>
    _CM_Open_Class_Key_Ex(
      ClassGuid,
      pszClassName,
      samDesired,
      Disposition,
      phkClass,
      ulFlags,
      hMachine,
    );

late final _CM_Open_Class_Key_Ex = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<GUID> ClassGuid,
  Pointer<Utf16> pszClassName,
  Uint32 samDesired,
  Uint32 Disposition,
  Pointer<IntPtr> phkClass,
  Uint32 ulFlags,
  IntPtr hMachine,
),
    int Function(
  Pointer<GUID> ClassGuid,
  Pointer<Utf16> pszClassName,
  int samDesired,
  int Disposition,
  Pointer<IntPtr> phkClass,
  int ulFlags,
  int hMachine,
)>('CM_Open_Class_Key_ExW');

int CM_Open_DevNode_Key(
  int dnDevNode,
  int samDesired,
  int ulHardwareProfile,
  int Disposition,
  Pointer<IntPtr> phkDevice,
  int ulFlags,
) =>
    _CM_Open_DevNode_Key(
      dnDevNode,
      samDesired,
      ulHardwareProfile,
      Disposition,
      phkDevice,
      ulFlags,
    );

late final _CM_Open_DevNode_Key = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Uint32 dnDevNode,
  Uint32 samDesired,
  Uint32 ulHardwareProfile,
  Uint32 Disposition,
  Pointer<IntPtr> phkDevice,
  Uint32 ulFlags,
),
    int Function(
  int dnDevNode,
  int samDesired,
  int ulHardwareProfile,
  int Disposition,
  Pointer<IntPtr> phkDevice,
  int ulFlags,
)>('CM_Open_DevNode_Key');

int CM_Open_DevNode_Key_Ex(
  int dnDevNode,
  int samDesired,
  int ulHardwareProfile,
  int Disposition,
  Pointer<IntPtr> phkDevice,
  int ulFlags,
  int hMachine,
) =>
    _CM_Open_DevNode_Key_Ex(
      dnDevNode,
      samDesired,
      ulHardwareProfile,
      Disposition,
      phkDevice,
      ulFlags,
      hMachine,
    );

late final _CM_Open_DevNode_Key_Ex = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Uint32 dnDevNode,
  Uint32 samDesired,
  Uint32 ulHardwareProfile,
  Uint32 Disposition,
  Pointer<IntPtr> phkDevice,
  Uint32 ulFlags,
  IntPtr hMachine,
),
    int Function(
  int dnDevNode,
  int samDesired,
  int ulHardwareProfile,
  int Disposition,
  Pointer<IntPtr> phkDevice,
  int ulFlags,
  int hMachine,
)>('CM_Open_DevNode_Key_Ex');

int CM_Open_Device_Interface_Key(
  Pointer<Utf16> pszDeviceInterface,
  int samDesired,
  int Disposition,
  Pointer<IntPtr> phkDeviceInterface,
  int ulFlags,
) =>
    _CM_Open_Device_Interface_Key(
      pszDeviceInterface,
      samDesired,
      Disposition,
      phkDeviceInterface,
      ulFlags,
    );

late final _CM_Open_Device_Interface_Key = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> pszDeviceInterface,
  Uint32 samDesired,
  Uint32 Disposition,
  Pointer<IntPtr> phkDeviceInterface,
  Uint32 ulFlags,
),
    int Function(
  Pointer<Utf16> pszDeviceInterface,
  int samDesired,
  int Disposition,
  Pointer<IntPtr> phkDeviceInterface,
  int ulFlags,
)>('CM_Open_Device_Interface_KeyW');

int CM_Open_Device_Interface_Key_Ex(
  Pointer<Utf16> pszDeviceInterface,
  int samDesired,
  int Disposition,
  Pointer<IntPtr> phkDeviceInterface,
  int ulFlags,
  int hMachine,
) =>
    _CM_Open_Device_Interface_Key_Ex(
      pszDeviceInterface,
      samDesired,
      Disposition,
      phkDeviceInterface,
      ulFlags,
      hMachine,
    );

late final _CM_Open_Device_Interface_Key_Ex = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> pszDeviceInterface,
  Uint32 samDesired,
  Uint32 Disposition,
  Pointer<IntPtr> phkDeviceInterface,
  Uint32 ulFlags,
  IntPtr hMachine,
),
    int Function(
  Pointer<Utf16> pszDeviceInterface,
  int samDesired,
  int Disposition,
  Pointer<IntPtr> phkDeviceInterface,
  int ulFlags,
  int hMachine,
)>('CM_Open_Device_Interface_Key_ExW');

int CM_Query_And_Remove_SubTree(
  int dnAncestor,
  Pointer<Int32> pVetoType,
  Pointer<Utf16> pszVetoName,
  int ulNameLength,
  int ulFlags,
) =>
    _CM_Query_And_Remove_SubTree(
      dnAncestor,
      pVetoType,
      pszVetoName,
      ulNameLength,
      ulFlags,
    );

late final _CM_Query_And_Remove_SubTree = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Uint32 dnAncestor,
  Pointer<Int32> pVetoType,
  Pointer<Utf16> pszVetoName,
  Uint32 ulNameLength,
  Uint32 ulFlags,
),
    int Function(
  int dnAncestor,
  Pointer<Int32> pVetoType,
  Pointer<Utf16> pszVetoName,
  int ulNameLength,
  int ulFlags,
)>('CM_Query_And_Remove_SubTreeW');

int CM_Query_And_Remove_SubTree_Ex(
  int dnAncestor,
  Pointer<Int32> pVetoType,
  Pointer<Utf16> pszVetoName,
  int ulNameLength,
  int ulFlags,
  int hMachine,
) =>
    _CM_Query_And_Remove_SubTree_Ex(
      dnAncestor,
      pVetoType,
      pszVetoName,
      ulNameLength,
      ulFlags,
      hMachine,
    );

late final _CM_Query_And_Remove_SubTree_Ex = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Uint32 dnAncestor,
  Pointer<Int32> pVetoType,
  Pointer<Utf16> pszVetoName,
  Uint32 ulNameLength,
  Uint32 ulFlags,
  IntPtr hMachine,
),
    int Function(
  int dnAncestor,
  Pointer<Int32> pVetoType,
  Pointer<Utf16> pszVetoName,
  int ulNameLength,
  int ulFlags,
  int hMachine,
)>('CM_Query_And_Remove_SubTree_ExW');

int CM_Query_Arbitrator_Free_Data(
  Pointer pData,
  int DataLen,
  int dnDevInst,
  int ResourceID,
  int ulFlags,
) =>
    _CM_Query_Arbitrator_Free_Data(
      pData,
      DataLen,
      dnDevInst,
      ResourceID,
      ulFlags,
    );

late final _CM_Query_Arbitrator_Free_Data = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer pData,
  Uint32 DataLen,
  Uint32 dnDevInst,
  Uint32 ResourceID,
  Uint32 ulFlags,
),
    int Function(
  Pointer pData,
  int DataLen,
  int dnDevInst,
  int ResourceID,
  int ulFlags,
)>('CM_Query_Arbitrator_Free_Data');

int CM_Query_Arbitrator_Free_Data_Ex(
  Pointer pData,
  int DataLen,
  int dnDevInst,
  int ResourceID,
  int ulFlags,
  int hMachine,
) =>
    _CM_Query_Arbitrator_Free_Data_Ex(
      pData,
      DataLen,
      dnDevInst,
      ResourceID,
      ulFlags,
      hMachine,
    );

late final _CM_Query_Arbitrator_Free_Data_Ex = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer pData,
  Uint32 DataLen,
  Uint32 dnDevInst,
  Uint32 ResourceID,
  Uint32 ulFlags,
  IntPtr hMachine,
),
    int Function(
  Pointer pData,
  int DataLen,
  int dnDevInst,
  int ResourceID,
  int ulFlags,
  int hMachine,
)>('CM_Query_Arbitrator_Free_Data_Ex');

int CM_Query_Arbitrator_Free_Size(
  Pointer<Uint32> pulSize,
  int dnDevInst,
  int ResourceID,
  int ulFlags,
) =>
    _CM_Query_Arbitrator_Free_Size(
      pulSize,
      dnDevInst,
      ResourceID,
      ulFlags,
    );

late final _CM_Query_Arbitrator_Free_Size = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<Uint32> pulSize,
  Uint32 dnDevInst,
  Uint32 ResourceID,
  Uint32 ulFlags,
),
    int Function(
  Pointer<Uint32> pulSize,
  int dnDevInst,
  int ResourceID,
  int ulFlags,
)>('CM_Query_Arbitrator_Free_Size');

int CM_Query_Arbitrator_Free_Size_Ex(
  Pointer<Uint32> pulSize,
  int dnDevInst,
  int ResourceID,
  int ulFlags,
  int hMachine,
) =>
    _CM_Query_Arbitrator_Free_Size_Ex(
      pulSize,
      dnDevInst,
      ResourceID,
      ulFlags,
      hMachine,
    );

late final _CM_Query_Arbitrator_Free_Size_Ex = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<Uint32> pulSize,
  Uint32 dnDevInst,
  Uint32 ResourceID,
  Uint32 ulFlags,
  IntPtr hMachine,
),
    int Function(
  Pointer<Uint32> pulSize,
  int dnDevInst,
  int ResourceID,
  int ulFlags,
  int hMachine,
)>('CM_Query_Arbitrator_Free_Size_Ex');

int CM_Query_Remove_SubTree(
  int dnAncestor,
  int ulFlags,
) =>
    _CM_Query_Remove_SubTree(
      dnAncestor,
      ulFlags,
    );

late final _CM_Query_Remove_SubTree = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Uint32 dnAncestor,
  Uint32 ulFlags,
),
    int Function(
  int dnAncestor,
  int ulFlags,
)>('CM_Query_Remove_SubTree');

int CM_Query_Remove_SubTree_Ex(
  int dnAncestor,
  int ulFlags,
  int hMachine,
) =>
    _CM_Query_Remove_SubTree_Ex(
      dnAncestor,
      ulFlags,
      hMachine,
    );

late final _CM_Query_Remove_SubTree_Ex = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Uint32 dnAncestor,
  Uint32 ulFlags,
  IntPtr hMachine,
),
    int Function(
  int dnAncestor,
  int ulFlags,
  int hMachine,
)>('CM_Query_Remove_SubTree_Ex');

int CM_Query_Resource_Conflict_List(
  Pointer<IntPtr> pclConflictList,
  int dnDevInst,
  int ResourceID,
  Pointer ResourceData,
  int ResourceLen,
  int ulFlags,
  int hMachine,
) =>
    _CM_Query_Resource_Conflict_List(
      pclConflictList,
      dnDevInst,
      ResourceID,
      ResourceData,
      ResourceLen,
      ulFlags,
      hMachine,
    );

late final _CM_Query_Resource_Conflict_List = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<IntPtr> pclConflictList,
  Uint32 dnDevInst,
  Uint32 ResourceID,
  Pointer ResourceData,
  Uint32 ResourceLen,
  Uint32 ulFlags,
  IntPtr hMachine,
),
    int Function(
  Pointer<IntPtr> pclConflictList,
  int dnDevInst,
  int ResourceID,
  Pointer ResourceData,
  int ResourceLen,
  int ulFlags,
  int hMachine,
)>('CM_Query_Resource_Conflict_List');

int CM_Reenumerate_DevNode(
  int dnDevInst,
  int ulFlags,
) =>
    _CM_Reenumerate_DevNode(
      dnDevInst,
      ulFlags,
    );

late final _CM_Reenumerate_DevNode = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Uint32 dnDevInst,
  Uint32 ulFlags,
),
    int Function(
  int dnDevInst,
  int ulFlags,
)>('CM_Reenumerate_DevNode');

int CM_Reenumerate_DevNode_Ex(
  int dnDevInst,
  int ulFlags,
  int hMachine,
) =>
    _CM_Reenumerate_DevNode_Ex(
      dnDevInst,
      ulFlags,
      hMachine,
    );

late final _CM_Reenumerate_DevNode_Ex = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Uint32 dnDevInst,
  Uint32 ulFlags,
  IntPtr hMachine,
),
    int Function(
  int dnDevInst,
  int ulFlags,
  int hMachine,
)>('CM_Reenumerate_DevNode_Ex');

int CM_Register_Device_Driver(
  int dnDevInst,
  int ulFlags,
) =>
    _CM_Register_Device_Driver(
      dnDevInst,
      ulFlags,
    );

late final _CM_Register_Device_Driver = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Uint32 dnDevInst,
  Uint32 ulFlags,
),
    int Function(
  int dnDevInst,
  int ulFlags,
)>('CM_Register_Device_Driver');

int CM_Register_Device_Driver_Ex(
  int dnDevInst,
  int ulFlags,
  int hMachine,
) =>
    _CM_Register_Device_Driver_Ex(
      dnDevInst,
      ulFlags,
      hMachine,
    );

late final _CM_Register_Device_Driver_Ex = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Uint32 dnDevInst,
  Uint32 ulFlags,
  IntPtr hMachine,
),
    int Function(
  int dnDevInst,
  int ulFlags,
  int hMachine,
)>('CM_Register_Device_Driver_Ex');

int CM_Register_Device_Interface(
  int dnDevInst,
  Pointer<GUID> InterfaceClassGuid,
  Pointer<Utf16> pszReference,
  Pointer<Utf16> pszDeviceInterface,
  Pointer<Uint32> pulLength,
  int ulFlags,
) =>
    _CM_Register_Device_Interface(
      dnDevInst,
      InterfaceClassGuid,
      pszReference,
      pszDeviceInterface,
      pulLength,
      ulFlags,
    );

late final _CM_Register_Device_Interface = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Uint32 dnDevInst,
  Pointer<GUID> InterfaceClassGuid,
  Pointer<Utf16> pszReference,
  Pointer<Utf16> pszDeviceInterface,
  Pointer<Uint32> pulLength,
  Uint32 ulFlags,
),
    int Function(
  int dnDevInst,
  Pointer<GUID> InterfaceClassGuid,
  Pointer<Utf16> pszReference,
  Pointer<Utf16> pszDeviceInterface,
  Pointer<Uint32> pulLength,
  int ulFlags,
)>('CM_Register_Device_InterfaceW');

int CM_Register_Device_Interface_Ex(
  int dnDevInst,
  Pointer<GUID> InterfaceClassGuid,
  Pointer<Utf16> pszReference,
  Pointer<Utf16> pszDeviceInterface,
  Pointer<Uint32> pulLength,
  int ulFlags,
  int hMachine,
) =>
    _CM_Register_Device_Interface_Ex(
      dnDevInst,
      InterfaceClassGuid,
      pszReference,
      pszDeviceInterface,
      pulLength,
      ulFlags,
      hMachine,
    );

late final _CM_Register_Device_Interface_Ex = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Uint32 dnDevInst,
  Pointer<GUID> InterfaceClassGuid,
  Pointer<Utf16> pszReference,
  Pointer<Utf16> pszDeviceInterface,
  Pointer<Uint32> pulLength,
  Uint32 ulFlags,
  IntPtr hMachine,
),
    int Function(
  int dnDevInst,
  Pointer<GUID> InterfaceClassGuid,
  Pointer<Utf16> pszReference,
  Pointer<Utf16> pszDeviceInterface,
  Pointer<Uint32> pulLength,
  int ulFlags,
  int hMachine,
)>('CM_Register_Device_Interface_ExW');

int CM_Register_Notification(
  Pointer<CM_NOTIFY_FILTER> pFilter,
  Pointer pContext,
  Pointer<NativeFunction<PCM_NOTIFY_CALLBACK>> pCallback,
  Pointer<IntPtr> pNotifyContext,
) =>
    _CM_Register_Notification(
      pFilter,
      pContext,
      pCallback,
      pNotifyContext,
    );

late final _CM_Register_Notification = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<CM_NOTIFY_FILTER> pFilter,
  Pointer pContext,
  Pointer<NativeFunction<PCM_NOTIFY_CALLBACK>> pCallback,
  Pointer<IntPtr> pNotifyContext,
),
    int Function(
  Pointer<CM_NOTIFY_FILTER> pFilter,
  Pointer pContext,
  Pointer<NativeFunction<PCM_NOTIFY_CALLBACK>> pCallback,
  Pointer<IntPtr> pNotifyContext,
)>('CM_Register_Notification');

int CM_Remove_SubTree(
  int dnAncestor,
  int ulFlags,
) =>
    _CM_Remove_SubTree(
      dnAncestor,
      ulFlags,
    );

late final _CM_Remove_SubTree = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Uint32 dnAncestor,
  Uint32 ulFlags,
),
    int Function(
  int dnAncestor,
  int ulFlags,
)>('CM_Remove_SubTree');

int CM_Remove_SubTree_Ex(
  int dnAncestor,
  int ulFlags,
  int hMachine,
) =>
    _CM_Remove_SubTree_Ex(
      dnAncestor,
      ulFlags,
      hMachine,
    );

late final _CM_Remove_SubTree_Ex = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Uint32 dnAncestor,
  Uint32 ulFlags,
  IntPtr hMachine,
),
    int Function(
  int dnAncestor,
  int ulFlags,
  int hMachine,
)>('CM_Remove_SubTree_Ex');

int CM_Request_Device_Eject(
  int dnDevInst,
  Pointer<Int32> pVetoType,
  Pointer<Utf16> pszVetoName,
  int ulNameLength,
  int ulFlags,
) =>
    _CM_Request_Device_Eject(
      dnDevInst,
      pVetoType,
      pszVetoName,
      ulNameLength,
      ulFlags,
    );

late final _CM_Request_Device_Eject = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Uint32 dnDevInst,
  Pointer<Int32> pVetoType,
  Pointer<Utf16> pszVetoName,
  Uint32 ulNameLength,
  Uint32 ulFlags,
),
    int Function(
  int dnDevInst,
  Pointer<Int32> pVetoType,
  Pointer<Utf16> pszVetoName,
  int ulNameLength,
  int ulFlags,
)>('CM_Request_Device_EjectW');

int CM_Request_Device_Eject_Ex(
  int dnDevInst,
  Pointer<Int32> pVetoType,
  Pointer<Utf16> pszVetoName,
  int ulNameLength,
  int ulFlags,
  int hMachine,
) =>
    _CM_Request_Device_Eject_Ex(
      dnDevInst,
      pVetoType,
      pszVetoName,
      ulNameLength,
      ulFlags,
      hMachine,
    );

late final _CM_Request_Device_Eject_Ex = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Uint32 dnDevInst,
  Pointer<Int32> pVetoType,
  Pointer<Utf16> pszVetoName,
  Uint32 ulNameLength,
  Uint32 ulFlags,
  IntPtr hMachine,
),
    int Function(
  int dnDevInst,
  Pointer<Int32> pVetoType,
  Pointer<Utf16> pszVetoName,
  int ulNameLength,
  int ulFlags,
  int hMachine,
)>('CM_Request_Device_Eject_ExW');

int CM_Request_Eject_PC() => _CM_Request_Eject_PC();

late final _CM_Request_Eject_PC = _cfgmgr32
    .lookupFunction<Uint32 Function(), int Function()>('CM_Request_Eject_PC');

int CM_Request_Eject_PC_Ex(
  int hMachine,
) =>
    _CM_Request_Eject_PC_Ex(
      hMachine,
    );

late final _CM_Request_Eject_PC_Ex = _cfgmgr32.lookupFunction<
    Uint32 Function(
  IntPtr hMachine,
),
    int Function(
  int hMachine,
)>('CM_Request_Eject_PC_Ex');

int CM_Run_Detection(
  int ulFlags,
) =>
    _CM_Run_Detection(
      ulFlags,
    );

late final _CM_Run_Detection = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Uint32 ulFlags,
),
    int Function(
  int ulFlags,
)>('CM_Run_Detection');

int CM_Run_Detection_Ex(
  int ulFlags,
  int hMachine,
) =>
    _CM_Run_Detection_Ex(
      ulFlags,
      hMachine,
    );

late final _CM_Run_Detection_Ex = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Uint32 ulFlags,
  IntPtr hMachine,
),
    int Function(
  int ulFlags,
  int hMachine,
)>('CM_Run_Detection_Ex');

int CM_Set_Class_Property(
  Pointer<GUID> ClassGUID,
  Pointer<DEVPROPKEY> PropertyKey,
  int PropertyType,
  Pointer<Uint8> PropertyBuffer,
  int PropertyBufferSize,
  int ulFlags,
) =>
    _CM_Set_Class_Property(
      ClassGUID,
      PropertyKey,
      PropertyType,
      PropertyBuffer,
      PropertyBufferSize,
      ulFlags,
    );

late final _CM_Set_Class_Property = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<GUID> ClassGUID,
  Pointer<DEVPROPKEY> PropertyKey,
  Uint32 PropertyType,
  Pointer<Uint8> PropertyBuffer,
  Uint32 PropertyBufferSize,
  Uint32 ulFlags,
),
    int Function(
  Pointer<GUID> ClassGUID,
  Pointer<DEVPROPKEY> PropertyKey,
  int PropertyType,
  Pointer<Uint8> PropertyBuffer,
  int PropertyBufferSize,
  int ulFlags,
)>('CM_Set_Class_PropertyW');

int CM_Set_Class_Property_Ex(
  Pointer<GUID> ClassGUID,
  Pointer<DEVPROPKEY> PropertyKey,
  int PropertyType,
  Pointer<Uint8> PropertyBuffer,
  int PropertyBufferSize,
  int ulFlags,
  int hMachine,
) =>
    _CM_Set_Class_Property_Ex(
      ClassGUID,
      PropertyKey,
      PropertyType,
      PropertyBuffer,
      PropertyBufferSize,
      ulFlags,
      hMachine,
    );

late final _CM_Set_Class_Property_Ex = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<GUID> ClassGUID,
  Pointer<DEVPROPKEY> PropertyKey,
  Uint32 PropertyType,
  Pointer<Uint8> PropertyBuffer,
  Uint32 PropertyBufferSize,
  Uint32 ulFlags,
  IntPtr hMachine,
),
    int Function(
  Pointer<GUID> ClassGUID,
  Pointer<DEVPROPKEY> PropertyKey,
  int PropertyType,
  Pointer<Uint8> PropertyBuffer,
  int PropertyBufferSize,
  int ulFlags,
  int hMachine,
)>('CM_Set_Class_Property_ExW');

int CM_Set_Class_Registry_Property(
  Pointer<GUID> ClassGuid,
  int ulProperty,
  Pointer Buffer,
  int ulLength,
  int ulFlags,
  int hMachine,
) =>
    _CM_Set_Class_Registry_Property(
      ClassGuid,
      ulProperty,
      Buffer,
      ulLength,
      ulFlags,
      hMachine,
    );

late final _CM_Set_Class_Registry_Property = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<GUID> ClassGuid,
  Uint32 ulProperty,
  Pointer Buffer,
  Uint32 ulLength,
  Uint32 ulFlags,
  IntPtr hMachine,
),
    int Function(
  Pointer<GUID> ClassGuid,
  int ulProperty,
  Pointer Buffer,
  int ulLength,
  int ulFlags,
  int hMachine,
)>('CM_Set_Class_Registry_PropertyW');

int CM_Set_DevNode_Problem(
  int dnDevInst,
  int ulProblem,
  int ulFlags,
) =>
    _CM_Set_DevNode_Problem(
      dnDevInst,
      ulProblem,
      ulFlags,
    );

late final _CM_Set_DevNode_Problem = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Uint32 dnDevInst,
  Uint32 ulProblem,
  Uint32 ulFlags,
),
    int Function(
  int dnDevInst,
  int ulProblem,
  int ulFlags,
)>('CM_Set_DevNode_Problem');

int CM_Set_DevNode_Problem_Ex(
  int dnDevInst,
  int ulProblem,
  int ulFlags,
  int hMachine,
) =>
    _CM_Set_DevNode_Problem_Ex(
      dnDevInst,
      ulProblem,
      ulFlags,
      hMachine,
    );

late final _CM_Set_DevNode_Problem_Ex = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Uint32 dnDevInst,
  Uint32 ulProblem,
  Uint32 ulFlags,
  IntPtr hMachine,
),
    int Function(
  int dnDevInst,
  int ulProblem,
  int ulFlags,
  int hMachine,
)>('CM_Set_DevNode_Problem_Ex');

int CM_Set_DevNode_Property(
  int dnDevInst,
  Pointer<DEVPROPKEY> PropertyKey,
  int PropertyType,
  Pointer<Uint8> PropertyBuffer,
  int PropertyBufferSize,
  int ulFlags,
) =>
    _CM_Set_DevNode_Property(
      dnDevInst,
      PropertyKey,
      PropertyType,
      PropertyBuffer,
      PropertyBufferSize,
      ulFlags,
    );

late final _CM_Set_DevNode_Property = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Uint32 dnDevInst,
  Pointer<DEVPROPKEY> PropertyKey,
  Uint32 PropertyType,
  Pointer<Uint8> PropertyBuffer,
  Uint32 PropertyBufferSize,
  Uint32 ulFlags,
),
    int Function(
  int dnDevInst,
  Pointer<DEVPROPKEY> PropertyKey,
  int PropertyType,
  Pointer<Uint8> PropertyBuffer,
  int PropertyBufferSize,
  int ulFlags,
)>('CM_Set_DevNode_PropertyW');

int CM_Set_DevNode_Property_Ex(
  int dnDevInst,
  Pointer<DEVPROPKEY> PropertyKey,
  int PropertyType,
  Pointer<Uint8> PropertyBuffer,
  int PropertyBufferSize,
  int ulFlags,
  int hMachine,
) =>
    _CM_Set_DevNode_Property_Ex(
      dnDevInst,
      PropertyKey,
      PropertyType,
      PropertyBuffer,
      PropertyBufferSize,
      ulFlags,
      hMachine,
    );

late final _CM_Set_DevNode_Property_Ex = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Uint32 dnDevInst,
  Pointer<DEVPROPKEY> PropertyKey,
  Uint32 PropertyType,
  Pointer<Uint8> PropertyBuffer,
  Uint32 PropertyBufferSize,
  Uint32 ulFlags,
  IntPtr hMachine,
),
    int Function(
  int dnDevInst,
  Pointer<DEVPROPKEY> PropertyKey,
  int PropertyType,
  Pointer<Uint8> PropertyBuffer,
  int PropertyBufferSize,
  int ulFlags,
  int hMachine,
)>('CM_Set_DevNode_Property_ExW');

int CM_Set_DevNode_Registry_Property(
  int dnDevInst,
  int ulProperty,
  Pointer Buffer,
  int ulLength,
  int ulFlags,
) =>
    _CM_Set_DevNode_Registry_Property(
      dnDevInst,
      ulProperty,
      Buffer,
      ulLength,
      ulFlags,
    );

late final _CM_Set_DevNode_Registry_Property = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Uint32 dnDevInst,
  Uint32 ulProperty,
  Pointer Buffer,
  Uint32 ulLength,
  Uint32 ulFlags,
),
    int Function(
  int dnDevInst,
  int ulProperty,
  Pointer Buffer,
  int ulLength,
  int ulFlags,
)>('CM_Set_DevNode_Registry_PropertyW');

int CM_Set_DevNode_Registry_Property_Ex(
  int dnDevInst,
  int ulProperty,
  Pointer Buffer,
  int ulLength,
  int ulFlags,
  int hMachine,
) =>
    _CM_Set_DevNode_Registry_Property_Ex(
      dnDevInst,
      ulProperty,
      Buffer,
      ulLength,
      ulFlags,
      hMachine,
    );

late final _CM_Set_DevNode_Registry_Property_Ex = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Uint32 dnDevInst,
  Uint32 ulProperty,
  Pointer Buffer,
  Uint32 ulLength,
  Uint32 ulFlags,
  IntPtr hMachine,
),
    int Function(
  int dnDevInst,
  int ulProperty,
  Pointer Buffer,
  int ulLength,
  int ulFlags,
  int hMachine,
)>('CM_Set_DevNode_Registry_Property_ExW');

int CM_Set_Device_Interface_Property(
  Pointer<Utf16> pszDeviceInterface,
  Pointer<DEVPROPKEY> PropertyKey,
  int PropertyType,
  Pointer<Uint8> PropertyBuffer,
  int PropertyBufferSize,
  int ulFlags,
) =>
    _CM_Set_Device_Interface_Property(
      pszDeviceInterface,
      PropertyKey,
      PropertyType,
      PropertyBuffer,
      PropertyBufferSize,
      ulFlags,
    );

late final _CM_Set_Device_Interface_Property = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> pszDeviceInterface,
  Pointer<DEVPROPKEY> PropertyKey,
  Uint32 PropertyType,
  Pointer<Uint8> PropertyBuffer,
  Uint32 PropertyBufferSize,
  Uint32 ulFlags,
),
    int Function(
  Pointer<Utf16> pszDeviceInterface,
  Pointer<DEVPROPKEY> PropertyKey,
  int PropertyType,
  Pointer<Uint8> PropertyBuffer,
  int PropertyBufferSize,
  int ulFlags,
)>('CM_Set_Device_Interface_PropertyW');

int CM_Set_Device_Interface_Property_Ex(
  Pointer<Utf16> pszDeviceInterface,
  Pointer<DEVPROPKEY> PropertyKey,
  int PropertyType,
  Pointer<Uint8> PropertyBuffer,
  int PropertyBufferSize,
  int ulFlags,
  int hMachine,
) =>
    _CM_Set_Device_Interface_Property_Ex(
      pszDeviceInterface,
      PropertyKey,
      PropertyType,
      PropertyBuffer,
      PropertyBufferSize,
      ulFlags,
      hMachine,
    );

late final _CM_Set_Device_Interface_Property_Ex = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> pszDeviceInterface,
  Pointer<DEVPROPKEY> PropertyKey,
  Uint32 PropertyType,
  Pointer<Uint8> PropertyBuffer,
  Uint32 PropertyBufferSize,
  Uint32 ulFlags,
  IntPtr hMachine,
),
    int Function(
  Pointer<Utf16> pszDeviceInterface,
  Pointer<DEVPROPKEY> PropertyKey,
  int PropertyType,
  Pointer<Uint8> PropertyBuffer,
  int PropertyBufferSize,
  int ulFlags,
  int hMachine,
)>('CM_Set_Device_Interface_Property_ExW');

int CM_Set_HW_Prof(
  int ulHardwareProfile,
  int ulFlags,
) =>
    _CM_Set_HW_Prof(
      ulHardwareProfile,
      ulFlags,
    );

late final _CM_Set_HW_Prof = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Uint32 ulHardwareProfile,
  Uint32 ulFlags,
),
    int Function(
  int ulHardwareProfile,
  int ulFlags,
)>('CM_Set_HW_Prof');

int CM_Set_HW_Prof_Ex(
  int ulHardwareProfile,
  int ulFlags,
  int hMachine,
) =>
    _CM_Set_HW_Prof_Ex(
      ulHardwareProfile,
      ulFlags,
      hMachine,
    );

late final _CM_Set_HW_Prof_Ex = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Uint32 ulHardwareProfile,
  Uint32 ulFlags,
  IntPtr hMachine,
),
    int Function(
  int ulHardwareProfile,
  int ulFlags,
  int hMachine,
)>('CM_Set_HW_Prof_Ex');

int CM_Set_HW_Prof_Flags(
  Pointer<Uint16> pDeviceID,
  int ulConfig,
  int ulValue,
  int ulFlags,
) =>
    _CM_Set_HW_Prof_Flags(
      pDeviceID,
      ulConfig,
      ulValue,
      ulFlags,
    );

late final _CM_Set_HW_Prof_Flags = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<Uint16> pDeviceID,
  Uint32 ulConfig,
  Uint32 ulValue,
  Uint32 ulFlags,
),
    int Function(
  Pointer<Uint16> pDeviceID,
  int ulConfig,
  int ulValue,
  int ulFlags,
)>('CM_Set_HW_Prof_FlagsW');

int CM_Set_HW_Prof_Flags_Ex(
  Pointer<Uint16> pDeviceID,
  int ulConfig,
  int ulValue,
  int ulFlags,
  int hMachine,
) =>
    _CM_Set_HW_Prof_Flags_Ex(
      pDeviceID,
      ulConfig,
      ulValue,
      ulFlags,
      hMachine,
    );

late final _CM_Set_HW_Prof_Flags_Ex = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<Uint16> pDeviceID,
  Uint32 ulConfig,
  Uint32 ulValue,
  Uint32 ulFlags,
  IntPtr hMachine,
),
    int Function(
  Pointer<Uint16> pDeviceID,
  int ulConfig,
  int ulValue,
  int ulFlags,
  int hMachine,
)>('CM_Set_HW_Prof_Flags_ExW');

int CM_Setup_DevNode(
  int dnDevInst,
  int ulFlags,
) =>
    _CM_Setup_DevNode(
      dnDevInst,
      ulFlags,
    );

late final _CM_Setup_DevNode = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Uint32 dnDevInst,
  Uint32 ulFlags,
),
    int Function(
  int dnDevInst,
  int ulFlags,
)>('CM_Setup_DevNode');

int CM_Setup_DevNode_Ex(
  int dnDevInst,
  int ulFlags,
  int hMachine,
) =>
    _CM_Setup_DevNode_Ex(
      dnDevInst,
      ulFlags,
      hMachine,
    );

late final _CM_Setup_DevNode_Ex = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Uint32 dnDevInst,
  Uint32 ulFlags,
  IntPtr hMachine,
),
    int Function(
  int dnDevInst,
  int ulFlags,
  int hMachine,
)>('CM_Setup_DevNode_Ex');

int CM_Test_Range_Available(
  int ullStartValue,
  int ullEndValue,
  int rlh,
  int ulFlags,
) =>
    _CM_Test_Range_Available(
      ullStartValue,
      ullEndValue,
      rlh,
      ulFlags,
    );

late final _CM_Test_Range_Available = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Uint64 ullStartValue,
  Uint64 ullEndValue,
  IntPtr rlh,
  Uint32 ulFlags,
),
    int Function(
  int ullStartValue,
  int ullEndValue,
  int rlh,
  int ulFlags,
)>('CM_Test_Range_Available');

int CM_Uninstall_DevNode(
  int dnDevInst,
  int ulFlags,
) =>
    _CM_Uninstall_DevNode(
      dnDevInst,
      ulFlags,
    );

late final _CM_Uninstall_DevNode = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Uint32 dnDevInst,
  Uint32 ulFlags,
),
    int Function(
  int dnDevInst,
  int ulFlags,
)>('CM_Uninstall_DevNode');

int CM_Uninstall_DevNode_Ex(
  int dnDevInst,
  int ulFlags,
  int hMachine,
) =>
    _CM_Uninstall_DevNode_Ex(
      dnDevInst,
      ulFlags,
      hMachine,
    );

late final _CM_Uninstall_DevNode_Ex = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Uint32 dnDevInst,
  Uint32 ulFlags,
  IntPtr hMachine,
),
    int Function(
  int dnDevInst,
  int ulFlags,
  int hMachine,
)>('CM_Uninstall_DevNode_Ex');

int CM_Unregister_Device_Interface(
  Pointer<Utf16> pszDeviceInterface,
  int ulFlags,
) =>
    _CM_Unregister_Device_Interface(
      pszDeviceInterface,
      ulFlags,
    );

late final _CM_Unregister_Device_Interface = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> pszDeviceInterface,
  Uint32 ulFlags,
),
    int Function(
  Pointer<Utf16> pszDeviceInterface,
  int ulFlags,
)>('CM_Unregister_Device_InterfaceW');

int CM_Unregister_Device_Interface_Ex(
  Pointer<Utf16> pszDeviceInterface,
  int ulFlags,
  int hMachine,
) =>
    _CM_Unregister_Device_Interface_Ex(
      pszDeviceInterface,
      ulFlags,
      hMachine,
    );

late final _CM_Unregister_Device_Interface_Ex = _cfgmgr32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> pszDeviceInterface,
  Uint32 ulFlags,
  IntPtr hMachine,
),
    int Function(
  Pointer<Utf16> pszDeviceInterface,
  int ulFlags,
  int hMachine,
)>('CM_Unregister_Device_Interface_ExW');

int CM_Unregister_Notification(
  int NotifyContext,
) =>
    _CM_Unregister_Notification(
      NotifyContext,
    );

late final _CM_Unregister_Notification = _cfgmgr32.lookupFunction<
    Uint32 Function(
  IntPtr NotifyContext,
),
    int Function(
  int NotifyContext,
)>('CM_Unregister_Notification');

// -----------------------------------------------------------------------
// newdev.dll
// -----------------------------------------------------------------------
final _newdev = DynamicLibrary.open('newdev.dll');

int DiInstallDevice(
  int hwndParent,
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  Pointer<SP_DRVINFO_DATA_V2_> DriverInfoData,
  int Flags,
  Pointer<Int32> NeedReboot,
) =>
    _DiInstallDevice(
      hwndParent,
      DeviceInfoSet,
      DeviceInfoData,
      DriverInfoData,
      Flags,
      NeedReboot,
    );

late final _DiInstallDevice = _newdev.lookupFunction<
    Int32 Function(
  IntPtr hwndParent,
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  Pointer<SP_DRVINFO_DATA_V2_> DriverInfoData,
  Uint32 Flags,
  Pointer<Int32> NeedReboot,
),
    int Function(
  int hwndParent,
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  Pointer<SP_DRVINFO_DATA_V2_> DriverInfoData,
  int Flags,
  Pointer<Int32> NeedReboot,
)>('DiInstallDevice');

int DiInstallDriver(
  int hwndParent,
  Pointer<Utf16> InfPath,
  int Flags,
  Pointer<Int32> NeedReboot,
) =>
    _DiInstallDriver(
      hwndParent,
      InfPath,
      Flags,
      NeedReboot,
    );

late final _DiInstallDriver = _newdev.lookupFunction<
    Int32 Function(
  IntPtr hwndParent,
  Pointer<Utf16> InfPath,
  Uint32 Flags,
  Pointer<Int32> NeedReboot,
),
    int Function(
  int hwndParent,
  Pointer<Utf16> InfPath,
  int Flags,
  Pointer<Int32> NeedReboot,
)>('DiInstallDriverW');

int DiRollbackDriver(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  int hwndParent,
  int Flags,
  Pointer<Int32> NeedReboot,
) =>
    _DiRollbackDriver(
      DeviceInfoSet,
      DeviceInfoData,
      hwndParent,
      Flags,
      NeedReboot,
    );

late final _DiRollbackDriver = _newdev.lookupFunction<
    Int32 Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  IntPtr hwndParent,
  Uint32 Flags,
  Pointer<Int32> NeedReboot,
),
    int Function(
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  int hwndParent,
  int Flags,
  Pointer<Int32> NeedReboot,
)>('DiRollbackDriver');

int DiShowUpdateDevice(
  int hwndParent,
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  int Flags,
  Pointer<Int32> NeedReboot,
) =>
    _DiShowUpdateDevice(
      hwndParent,
      DeviceInfoSet,
      DeviceInfoData,
      Flags,
      NeedReboot,
    );

late final _DiShowUpdateDevice = _newdev.lookupFunction<
    Int32 Function(
  IntPtr hwndParent,
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  Uint32 Flags,
  Pointer<Int32> NeedReboot,
),
    int Function(
  int hwndParent,
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  int Flags,
  Pointer<Int32> NeedReboot,
)>('DiShowUpdateDevice');

int DiShowUpdateDriver(
  int hwndParent,
  Pointer<Utf16> FilePath,
  int Flags,
  Pointer<Int32> NeedReboot,
) =>
    _DiShowUpdateDriver(
      hwndParent,
      FilePath,
      Flags,
      NeedReboot,
    );

late final _DiShowUpdateDriver = _newdev.lookupFunction<
    Int32 Function(
  IntPtr hwndParent,
  Pointer<Utf16> FilePath,
  Uint32 Flags,
  Pointer<Int32> NeedReboot,
),
    int Function(
  int hwndParent,
  Pointer<Utf16> FilePath,
  int Flags,
  Pointer<Int32> NeedReboot,
)>('DiShowUpdateDriver');

int DiUninstallDevice(
  int hwndParent,
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  int Flags,
  Pointer<Int32> NeedReboot,
) =>
    _DiUninstallDevice(
      hwndParent,
      DeviceInfoSet,
      DeviceInfoData,
      Flags,
      NeedReboot,
    );

late final _DiUninstallDevice = _newdev.lookupFunction<
    Int32 Function(
  IntPtr hwndParent,
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  Uint32 Flags,
  Pointer<Int32> NeedReboot,
),
    int Function(
  int hwndParent,
  Pointer DeviceInfoSet,
  Pointer<SP_DEVINFO_DATA> DeviceInfoData,
  int Flags,
  Pointer<Int32> NeedReboot,
)>('DiUninstallDevice');

int DiUninstallDriver(
  int hwndParent,
  Pointer<Utf16> InfPath,
  int Flags,
  Pointer<Int32> NeedReboot,
) =>
    _DiUninstallDriver(
      hwndParent,
      InfPath,
      Flags,
      NeedReboot,
    );

late final _DiUninstallDriver = _newdev.lookupFunction<
    Int32 Function(
  IntPtr hwndParent,
  Pointer<Utf16> InfPath,
  Uint32 Flags,
  Pointer<Int32> NeedReboot,
),
    int Function(
  int hwndParent,
  Pointer<Utf16> InfPath,
  int Flags,
  Pointer<Int32> NeedReboot,
)>('DiUninstallDriverW');

int UpdateDriverForPlugAndPlayDevices(
  int hwndParent,
  Pointer<Utf16> HardwareId,
  Pointer<Utf16> FullInfPath,
  int InstallFlags,
  Pointer<Int32> bRebootRequired,
) =>
    _UpdateDriverForPlugAndPlayDevices(
      hwndParent,
      HardwareId,
      FullInfPath,
      InstallFlags,
      bRebootRequired,
    );

late final _UpdateDriverForPlugAndPlayDevices = _newdev.lookupFunction<
    Int32 Function(
  IntPtr hwndParent,
  Pointer<Utf16> HardwareId,
  Pointer<Utf16> FullInfPath,
  Uint32 InstallFlags,
  Pointer<Int32> bRebootRequired,
),
    int Function(
  int hwndParent,
  Pointer<Utf16> HardwareId,
  Pointer<Utf16> FullInfPath,
  int InstallFlags,
  Pointer<Int32> bRebootRequired,
)>('UpdateDriverForPlugAndPlayDevicesW');
