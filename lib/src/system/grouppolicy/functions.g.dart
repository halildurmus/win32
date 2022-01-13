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
import '../../system/grouppolicy/structs.g.dart';
import '../../security/structs.g.dart';
import '../../system/wmi/IWbemServices.dart';
import '../../system/wmi/IWbemClassObject.dart';
import '../../ui/shell/structs.g.dart'; // -----------------------------------------------------------------------

// userenv.dll
// -----------------------------------------------------------------------
final _userenv = DynamicLibrary.open('userenv.dll');

int EnterCriticalPolicySection(
  int bMachine,
) =>
    _EnterCriticalPolicySection(
      bMachine,
    );

late final _EnterCriticalPolicySection = _userenv.lookupFunction<
    IntPtr Function(
  Int32 bMachine,
),
    int Function(
  int bMachine,
)>('EnterCriticalPolicySection');

int FreeGPOList(
  Pointer<GROUP_POLICY_OBJECT> pGPOList,
) =>
    _FreeGPOList(
      pGPOList,
    );

late final _FreeGPOList = _userenv.lookupFunction<
    Int32 Function(
  Pointer<GROUP_POLICY_OBJECT> pGPOList,
),
    int Function(
  Pointer<GROUP_POLICY_OBJECT> pGPOList,
)>('FreeGPOListW');

int GenerateGPNotification(
  int bMachine,
  Pointer<Utf16> lpwszMgmtProduct,
  int dwMgmtProductOptions,
) =>
    _GenerateGPNotification(
      bMachine,
      lpwszMgmtProduct,
      dwMgmtProductOptions,
    );

late final _GenerateGPNotification = _userenv.lookupFunction<
    Uint32 Function(
  Int32 bMachine,
  Pointer<Utf16> lpwszMgmtProduct,
  Uint32 dwMgmtProductOptions,
),
    int Function(
  int bMachine,
  Pointer<Utf16> lpwszMgmtProduct,
  int dwMgmtProductOptions,
)>('GenerateGPNotification');

int GetAppliedGPOList(
  int dwFlags,
  Pointer<Utf16> pMachineName,
  int pSidUser,
  Pointer<GUID> pGuidExtension,
  Pointer<Pointer<GROUP_POLICY_OBJECT>> ppGPOList,
) =>
    _GetAppliedGPOList(
      dwFlags,
      pMachineName,
      pSidUser,
      pGuidExtension,
      ppGPOList,
    );

late final _GetAppliedGPOList = _userenv.lookupFunction<
    Uint32 Function(
  Uint32 dwFlags,
  Pointer<Utf16> pMachineName,
  IntPtr pSidUser,
  Pointer<GUID> pGuidExtension,
  Pointer<Pointer<GROUP_POLICY_OBJECT>> ppGPOList,
),
    int Function(
  int dwFlags,
  Pointer<Utf16> pMachineName,
  int pSidUser,
  Pointer<GUID> pGuidExtension,
  Pointer<Pointer<GROUP_POLICY_OBJECT>> ppGPOList,
)>('GetAppliedGPOListW');

int GetGPOList(
  int hToken,
  Pointer<Utf16> lpName,
  Pointer<Utf16> lpHostName,
  Pointer<Utf16> lpComputerName,
  int dwFlags,
  Pointer<Pointer<GROUP_POLICY_OBJECT>> pGPOList,
) =>
    _GetGPOList(
      hToken,
      lpName,
      lpHostName,
      lpComputerName,
      dwFlags,
      pGPOList,
    );

late final _GetGPOList = _userenv.lookupFunction<
    Int32 Function(
  IntPtr hToken,
  Pointer<Utf16> lpName,
  Pointer<Utf16> lpHostName,
  Pointer<Utf16> lpComputerName,
  Uint32 dwFlags,
  Pointer<Pointer<GROUP_POLICY_OBJECT>> pGPOList,
),
    int Function(
  int hToken,
  Pointer<Utf16> lpName,
  Pointer<Utf16> lpHostName,
  Pointer<Utf16> lpComputerName,
  int dwFlags,
  Pointer<Pointer<GROUP_POLICY_OBJECT>> pGPOList,
)>('GetGPOListW');

int LeaveCriticalPolicySection(
  int hSection,
) =>
    _LeaveCriticalPolicySection(
      hSection,
    );

late final _LeaveCriticalPolicySection = _userenv.lookupFunction<
    Int32 Function(
  IntPtr hSection,
),
    int Function(
  int hSection,
)>('LeaveCriticalPolicySection');

int ProcessGroupPolicyCompleted(
  Pointer<GUID> extensionId,
  int pAsyncHandle,
  int dwStatus,
) =>
    _ProcessGroupPolicyCompleted(
      extensionId,
      pAsyncHandle,
      dwStatus,
    );

late final _ProcessGroupPolicyCompleted = _userenv.lookupFunction<
    Uint32 Function(
  Pointer<GUID> extensionId,
  IntPtr pAsyncHandle,
  Uint32 dwStatus,
),
    int Function(
  Pointer<GUID> extensionId,
  int pAsyncHandle,
  int dwStatus,
)>('ProcessGroupPolicyCompleted');

int ProcessGroupPolicyCompletedEx(
  Pointer<GUID> extensionId,
  int pAsyncHandle,
  int dwStatus,
  int RsopStatus,
) =>
    _ProcessGroupPolicyCompletedEx(
      extensionId,
      pAsyncHandle,
      dwStatus,
      RsopStatus,
    );

late final _ProcessGroupPolicyCompletedEx = _userenv.lookupFunction<
    Uint32 Function(
  Pointer<GUID> extensionId,
  IntPtr pAsyncHandle,
  Uint32 dwStatus,
  Int32 RsopStatus,
),
    int Function(
  Pointer<GUID> extensionId,
  int pAsyncHandle,
  int dwStatus,
  int RsopStatus,
)>('ProcessGroupPolicyCompletedEx');

int RefreshPolicy(
  int bMachine,
) =>
    _RefreshPolicy(
      bMachine,
    );

late final _RefreshPolicy = _userenv.lookupFunction<
    Int32 Function(
  Int32 bMachine,
),
    int Function(
  int bMachine,
)>('RefreshPolicy');

int RefreshPolicyEx(
  int bMachine,
  int dwOptions,
) =>
    _RefreshPolicyEx(
      bMachine,
      dwOptions,
    );

late final _RefreshPolicyEx = _userenv.lookupFunction<
    Int32 Function(
  Int32 bMachine,
  Uint32 dwOptions,
),
    int Function(
  int bMachine,
  int dwOptions,
)>('RefreshPolicyEx');

int RegisterGPNotification(
  int hEvent,
  int bMachine,
) =>
    _RegisterGPNotification(
      hEvent,
      bMachine,
    );

late final _RegisterGPNotification = _userenv.lookupFunction<
    Int32 Function(
  IntPtr hEvent,
  Int32 bMachine,
),
    int Function(
  int hEvent,
  int bMachine,
)>('RegisterGPNotification');

int RsopAccessCheckByType(
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
  int pPrincipalSelfSid,
  Pointer pRsopToken,
  int dwDesiredAccessMask,
  Pointer<OBJECT_TYPE_LIST> pObjectTypeList,
  int ObjectTypeListLength,
  Pointer<GENERIC_MAPPING> pGenericMapping,
  Pointer<PRIVILEGE_SET> pPrivilegeSet,
  Pointer<Uint32> pdwPrivilegeSetLength,
  Pointer<Uint32> pdwGrantedAccessMask,
  Pointer<Int32> pbAccessStatus,
) =>
    _RsopAccessCheckByType(
      pSecurityDescriptor,
      pPrincipalSelfSid,
      pRsopToken,
      dwDesiredAccessMask,
      pObjectTypeList,
      ObjectTypeListLength,
      pGenericMapping,
      pPrivilegeSet,
      pdwPrivilegeSetLength,
      pdwGrantedAccessMask,
      pbAccessStatus,
    );

late final _RsopAccessCheckByType = _userenv.lookupFunction<
    Int32 Function(
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
  IntPtr pPrincipalSelfSid,
  Pointer pRsopToken,
  Uint32 dwDesiredAccessMask,
  Pointer<OBJECT_TYPE_LIST> pObjectTypeList,
  Uint32 ObjectTypeListLength,
  Pointer<GENERIC_MAPPING> pGenericMapping,
  Pointer<PRIVILEGE_SET> pPrivilegeSet,
  Pointer<Uint32> pdwPrivilegeSetLength,
  Pointer<Uint32> pdwGrantedAccessMask,
  Pointer<Int32> pbAccessStatus,
),
    int Function(
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
  int pPrincipalSelfSid,
  Pointer pRsopToken,
  int dwDesiredAccessMask,
  Pointer<OBJECT_TYPE_LIST> pObjectTypeList,
  int ObjectTypeListLength,
  Pointer<GENERIC_MAPPING> pGenericMapping,
  Pointer<PRIVILEGE_SET> pPrivilegeSet,
  Pointer<Uint32> pdwPrivilegeSetLength,
  Pointer<Uint32> pdwGrantedAccessMask,
  Pointer<Int32> pbAccessStatus,
)>('RsopAccessCheckByType');

int RsopFileAccessCheck(
  Pointer<Utf16> pszFileName,
  Pointer pRsopToken,
  int dwDesiredAccessMask,
  Pointer<Uint32> pdwGrantedAccessMask,
  Pointer<Int32> pbAccessStatus,
) =>
    _RsopFileAccessCheck(
      pszFileName,
      pRsopToken,
      dwDesiredAccessMask,
      pdwGrantedAccessMask,
      pbAccessStatus,
    );

late final _RsopFileAccessCheck = _userenv.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszFileName,
  Pointer pRsopToken,
  Uint32 dwDesiredAccessMask,
  Pointer<Uint32> pdwGrantedAccessMask,
  Pointer<Int32> pbAccessStatus,
),
    int Function(
  Pointer<Utf16> pszFileName,
  Pointer pRsopToken,
  int dwDesiredAccessMask,
  Pointer<Uint32> pdwGrantedAccessMask,
  Pointer<Int32> pbAccessStatus,
)>('RsopFileAccessCheck');

int RsopResetPolicySettingStatus(
  int dwFlags,
  Pointer<COMObject> pServices,
  Pointer<COMObject> pSettingInstance,
) =>
    _RsopResetPolicySettingStatus(
      dwFlags,
      pServices,
      pSettingInstance,
    );

late final _RsopResetPolicySettingStatus = _userenv.lookupFunction<
    Int32 Function(
  Uint32 dwFlags,
  Pointer<COMObject> pServices,
  Pointer<COMObject> pSettingInstance,
),
    int Function(
  int dwFlags,
  Pointer<COMObject> pServices,
  Pointer<COMObject> pSettingInstance,
)>('RsopResetPolicySettingStatus');

int RsopSetPolicySettingStatus(
  int dwFlags,
  Pointer<COMObject> pServices,
  Pointer<COMObject> pSettingInstance,
  int nInfo,
  Pointer<POLICYSETTINGSTATUSINFO> pStatus,
) =>
    _RsopSetPolicySettingStatus(
      dwFlags,
      pServices,
      pSettingInstance,
      nInfo,
      pStatus,
    );

late final _RsopSetPolicySettingStatus = _userenv.lookupFunction<
    Int32 Function(
  Uint32 dwFlags,
  Pointer<COMObject> pServices,
  Pointer<COMObject> pSettingInstance,
  Uint32 nInfo,
  Pointer<POLICYSETTINGSTATUSINFO> pStatus,
),
    int Function(
  int dwFlags,
  Pointer<COMObject> pServices,
  Pointer<COMObject> pSettingInstance,
  int nInfo,
  Pointer<POLICYSETTINGSTATUSINFO> pStatus,
)>('RsopSetPolicySettingStatus');

int UnregisterGPNotification(
  int hEvent,
) =>
    _UnregisterGPNotification(
      hEvent,
    );

late final _UnregisterGPNotification = _userenv.lookupFunction<
    Int32 Function(
  IntPtr hEvent,
),
    int Function(
  int hEvent,
)>('UnregisterGPNotification');

// -----------------------------------------------------------------------
// advapi32.dll
// -----------------------------------------------------------------------
final _advapi32 = DynamicLibrary.open('advapi32.dll');

int CommandLineFromMsiDescriptor(
  Pointer<Utf16> Descriptor,
  Pointer<Utf16> CommandLine,
  Pointer<Uint32> CommandLineLength,
) =>
    _CommandLineFromMsiDescriptor(
      Descriptor,
      CommandLine,
      CommandLineLength,
    );

late final _CommandLineFromMsiDescriptor = _advapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> Descriptor,
  Pointer<Utf16> CommandLine,
  Pointer<Uint32> CommandLineLength,
),
    int Function(
  Pointer<Utf16> Descriptor,
  Pointer<Utf16> CommandLine,
  Pointer<Uint32> CommandLineLength,
)>('CommandLineFromMsiDescriptor');

void GetLocalManagedApplicationData(
  Pointer<Utf16> ProductCode,
  Pointer<Pointer<Utf16>> DisplayName,
  Pointer<Pointer<Utf16>> SupportUrl,
) =>
    _GetLocalManagedApplicationData(
      ProductCode,
      DisplayName,
      SupportUrl,
    );

late final _GetLocalManagedApplicationData = _advapi32.lookupFunction<
    Void Function(
  Pointer<Utf16> ProductCode,
  Pointer<Pointer<Utf16>> DisplayName,
  Pointer<Pointer<Utf16>> SupportUrl,
),
    void Function(
  Pointer<Utf16> ProductCode,
  Pointer<Pointer<Utf16>> DisplayName,
  Pointer<Pointer<Utf16>> SupportUrl,
)>('GetLocalManagedApplicationData');

int GetLocalManagedApplications(
  int bUserApps,
  Pointer<Uint32> pdwApps,
  Pointer<Pointer<LOCALMANAGEDAPPLICATION>> prgLocalApps,
) =>
    _GetLocalManagedApplications(
      bUserApps,
      pdwApps,
      prgLocalApps,
    );

late final _GetLocalManagedApplications = _advapi32.lookupFunction<
    Uint32 Function(
  Int32 bUserApps,
  Pointer<Uint32> pdwApps,
  Pointer<Pointer<LOCALMANAGEDAPPLICATION>> prgLocalApps,
),
    int Function(
  int bUserApps,
  Pointer<Uint32> pdwApps,
  Pointer<Pointer<LOCALMANAGEDAPPLICATION>> prgLocalApps,
)>('GetLocalManagedApplications');

int GetManagedApplicationCategories(
  int dwReserved,
  Pointer<APPCATEGORYINFOLIST> pAppCategory,
) =>
    _GetManagedApplicationCategories(
      dwReserved,
      pAppCategory,
    );

late final _GetManagedApplicationCategories = _advapi32.lookupFunction<
    Uint32 Function(
  Uint32 dwReserved,
  Pointer<APPCATEGORYINFOLIST> pAppCategory,
),
    int Function(
  int dwReserved,
  Pointer<APPCATEGORYINFOLIST> pAppCategory,
)>('GetManagedApplicationCategories');

int GetManagedApplications(
  Pointer<GUID> pCategory,
  int dwQueryFlags,
  int dwInfoLevel,
  Pointer<Uint32> pdwApps,
  Pointer<Pointer<MANAGEDAPPLICATION>> prgManagedApps,
) =>
    _GetManagedApplications(
      pCategory,
      dwQueryFlags,
      dwInfoLevel,
      pdwApps,
      prgManagedApps,
    );

late final _GetManagedApplications = _advapi32.lookupFunction<
    Uint32 Function(
  Pointer<GUID> pCategory,
  Uint32 dwQueryFlags,
  Uint32 dwInfoLevel,
  Pointer<Uint32> pdwApps,
  Pointer<Pointer<MANAGEDAPPLICATION>> prgManagedApps,
),
    int Function(
  Pointer<GUID> pCategory,
  int dwQueryFlags,
  int dwInfoLevel,
  Pointer<Uint32> pdwApps,
  Pointer<Pointer<MANAGEDAPPLICATION>> prgManagedApps,
)>('GetManagedApplications');

int InstallApplication(
  Pointer<INSTALLDATA> pInstallInfo,
) =>
    _InstallApplication(
      pInstallInfo,
    );

late final _InstallApplication = _advapi32.lookupFunction<
    Uint32 Function(
  Pointer<INSTALLDATA> pInstallInfo,
),
    int Function(
  Pointer<INSTALLDATA> pInstallInfo,
)>('InstallApplication');

int UninstallApplication(
  Pointer<Utf16> ProductCode,
  int dwStatus,
) =>
    _UninstallApplication(
      ProductCode,
      dwStatus,
    );

late final _UninstallApplication = _advapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> ProductCode,
  Uint32 dwStatus,
),
    int Function(
  Pointer<Utf16> ProductCode,
  int dwStatus,
)>('UninstallApplication');

// -----------------------------------------------------------------------
// gpedit.dll
// -----------------------------------------------------------------------
final _gpedit = DynamicLibrary.open('gpedit.dll');

int BrowseForGPO(
  Pointer<GPOBROWSEINFO> lpBrowseInfo,
) =>
    _BrowseForGPO(
      lpBrowseInfo,
    );

late final _BrowseForGPO = _gpedit.lookupFunction<
    Int32 Function(
  Pointer<GPOBROWSEINFO> lpBrowseInfo,
),
    int Function(
  Pointer<GPOBROWSEINFO> lpBrowseInfo,
)>('BrowseForGPO');

int CreateGPOLink(
  Pointer<Utf16> lpGPO,
  Pointer<Utf16> lpContainer,
  int fHighPriority,
) =>
    _CreateGPOLink(
      lpGPO,
      lpContainer,
      fHighPriority,
    );

late final _CreateGPOLink = _gpedit.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpGPO,
  Pointer<Utf16> lpContainer,
  Int32 fHighPriority,
),
    int Function(
  Pointer<Utf16> lpGPO,
  Pointer<Utf16> lpContainer,
  int fHighPriority,
)>('CreateGPOLink');

int DeleteAllGPOLinks(
  Pointer<Utf16> lpContainer,
) =>
    _DeleteAllGPOLinks(
      lpContainer,
    );

late final _DeleteAllGPOLinks = _gpedit.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpContainer,
),
    int Function(
  Pointer<Utf16> lpContainer,
)>('DeleteAllGPOLinks');

int DeleteGPOLink(
  Pointer<Utf16> lpGPO,
  Pointer<Utf16> lpContainer,
) =>
    _DeleteGPOLink(
      lpGPO,
      lpContainer,
    );

late final _DeleteGPOLink = _gpedit.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpGPO,
  Pointer<Utf16> lpContainer,
),
    int Function(
  Pointer<Utf16> lpGPO,
  Pointer<Utf16> lpContainer,
)>('DeleteGPOLink');

int ExportRSoPData(
  Pointer<Utf16> lpNameSpace,
  Pointer<Utf16> lpFileName,
) =>
    _ExportRSoPData(
      lpNameSpace,
      lpFileName,
    );

late final _ExportRSoPData = _gpedit.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpNameSpace,
  Pointer<Utf16> lpFileName,
),
    int Function(
  Pointer<Utf16> lpNameSpace,
  Pointer<Utf16> lpFileName,
)>('ExportRSoPData');

int ImportRSoPData(
  Pointer<Utf16> lpNameSpace,
  Pointer<Utf16> lpFileName,
) =>
    _ImportRSoPData(
      lpNameSpace,
      lpFileName,
    );

late final _ImportRSoPData = _gpedit.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpNameSpace,
  Pointer<Utf16> lpFileName,
),
    int Function(
  Pointer<Utf16> lpNameSpace,
  Pointer<Utf16> lpFileName,
)>('ImportRSoPData');
