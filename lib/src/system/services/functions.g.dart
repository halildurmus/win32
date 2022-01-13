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
import '../../security/structs.g.dart';
import '../../system/services/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../system/services/callbacks.g.dart';
import '../../system/registry/structs.g.dart'; // -----------------------------------------------------------------------

// advapi32.dll
// -----------------------------------------------------------------------
final _advapi32 = DynamicLibrary.open('advapi32.dll');

int ChangeServiceConfig2(
  int hService,
  int dwInfoLevel,
  Pointer lpInfo,
) =>
    _ChangeServiceConfig2(
      hService,
      dwInfoLevel,
      lpInfo,
    );

late final _ChangeServiceConfig2 = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr hService,
  Uint32 dwInfoLevel,
  Pointer lpInfo,
),
    int Function(
  int hService,
  int dwInfoLevel,
  Pointer lpInfo,
)>('ChangeServiceConfig2W');

int ChangeServiceConfig(
  int hService,
  int dwServiceType,
  int dwStartType,
  int dwErrorControl,
  Pointer<Utf16> lpBinaryPathName,
  Pointer<Utf16> lpLoadOrderGroup,
  Pointer<Uint32> lpdwTagId,
  Pointer<Utf16> lpDependencies,
  Pointer<Utf16> lpServiceStartName,
  Pointer<Utf16> lpPassword,
  Pointer<Utf16> lpDisplayName,
) =>
    _ChangeServiceConfig(
      hService,
      dwServiceType,
      dwStartType,
      dwErrorControl,
      lpBinaryPathName,
      lpLoadOrderGroup,
      lpdwTagId,
      lpDependencies,
      lpServiceStartName,
      lpPassword,
      lpDisplayName,
    );

late final _ChangeServiceConfig = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr hService,
  Uint32 dwServiceType,
  Uint32 dwStartType,
  Uint32 dwErrorControl,
  Pointer<Utf16> lpBinaryPathName,
  Pointer<Utf16> lpLoadOrderGroup,
  Pointer<Uint32> lpdwTagId,
  Pointer<Utf16> lpDependencies,
  Pointer<Utf16> lpServiceStartName,
  Pointer<Utf16> lpPassword,
  Pointer<Utf16> lpDisplayName,
),
    int Function(
  int hService,
  int dwServiceType,
  int dwStartType,
  int dwErrorControl,
  Pointer<Utf16> lpBinaryPathName,
  Pointer<Utf16> lpLoadOrderGroup,
  Pointer<Uint32> lpdwTagId,
  Pointer<Utf16> lpDependencies,
  Pointer<Utf16> lpServiceStartName,
  Pointer<Utf16> lpPassword,
  Pointer<Utf16> lpDisplayName,
)>('ChangeServiceConfigW');

int CloseServiceHandle(
  int hSCObject,
) =>
    _CloseServiceHandle(
      hSCObject,
    );

late final _CloseServiceHandle = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr hSCObject,
),
    int Function(
  int hSCObject,
)>('CloseServiceHandle');

int ControlService(
  int hService,
  int dwControl,
  Pointer<SERVICE_STATUS> lpServiceStatus,
) =>
    _ControlService(
      hService,
      dwControl,
      lpServiceStatus,
    );

late final _ControlService = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr hService,
  Uint32 dwControl,
  Pointer<SERVICE_STATUS> lpServiceStatus,
),
    int Function(
  int hService,
  int dwControl,
  Pointer<SERVICE_STATUS> lpServiceStatus,
)>('ControlService');

int ControlServiceEx(
  int hService,
  int dwControl,
  int dwInfoLevel,
  Pointer pControlParams,
) =>
    _ControlServiceEx(
      hService,
      dwControl,
      dwInfoLevel,
      pControlParams,
    );

late final _ControlServiceEx = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr hService,
  Uint32 dwControl,
  Uint32 dwInfoLevel,
  Pointer pControlParams,
),
    int Function(
  int hService,
  int dwControl,
  int dwInfoLevel,
  Pointer pControlParams,
)>('ControlServiceExW');

int CreateService(
  int hSCManager,
  Pointer<Utf16> lpServiceName,
  Pointer<Utf16> lpDisplayName,
  int dwDesiredAccess,
  int dwServiceType,
  int dwStartType,
  int dwErrorControl,
  Pointer<Utf16> lpBinaryPathName,
  Pointer<Utf16> lpLoadOrderGroup,
  Pointer<Uint32> lpdwTagId,
  Pointer<Utf16> lpDependencies,
  Pointer<Utf16> lpServiceStartName,
  Pointer<Utf16> lpPassword,
) =>
    _CreateService(
      hSCManager,
      lpServiceName,
      lpDisplayName,
      dwDesiredAccess,
      dwServiceType,
      dwStartType,
      dwErrorControl,
      lpBinaryPathName,
      lpLoadOrderGroup,
      lpdwTagId,
      lpDependencies,
      lpServiceStartName,
      lpPassword,
    );

late final _CreateService = _advapi32.lookupFunction<
    IntPtr Function(
  IntPtr hSCManager,
  Pointer<Utf16> lpServiceName,
  Pointer<Utf16> lpDisplayName,
  Uint32 dwDesiredAccess,
  Uint32 dwServiceType,
  Uint32 dwStartType,
  Uint32 dwErrorControl,
  Pointer<Utf16> lpBinaryPathName,
  Pointer<Utf16> lpLoadOrderGroup,
  Pointer<Uint32> lpdwTagId,
  Pointer<Utf16> lpDependencies,
  Pointer<Utf16> lpServiceStartName,
  Pointer<Utf16> lpPassword,
),
    int Function(
  int hSCManager,
  Pointer<Utf16> lpServiceName,
  Pointer<Utf16> lpDisplayName,
  int dwDesiredAccess,
  int dwServiceType,
  int dwStartType,
  int dwErrorControl,
  Pointer<Utf16> lpBinaryPathName,
  Pointer<Utf16> lpLoadOrderGroup,
  Pointer<Uint32> lpdwTagId,
  Pointer<Utf16> lpDependencies,
  Pointer<Utf16> lpServiceStartName,
  Pointer<Utf16> lpPassword,
)>('CreateServiceW');

int DeleteService(
  int hService,
) =>
    _DeleteService(
      hService,
    );

late final _DeleteService = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr hService,
),
    int Function(
  int hService,
)>('DeleteService');

int EnumDependentServices(
  int hService,
  int dwServiceState,
  Pointer<ENUM_SERVICE_STATUS> lpServices,
  int cbBufSize,
  Pointer<Uint32> pcbBytesNeeded,
  Pointer<Uint32> lpServicesReturned,
) =>
    _EnumDependentServices(
      hService,
      dwServiceState,
      lpServices,
      cbBufSize,
      pcbBytesNeeded,
      lpServicesReturned,
    );

late final _EnumDependentServices = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr hService,
  Uint32 dwServiceState,
  Pointer<ENUM_SERVICE_STATUS> lpServices,
  Uint32 cbBufSize,
  Pointer<Uint32> pcbBytesNeeded,
  Pointer<Uint32> lpServicesReturned,
),
    int Function(
  int hService,
  int dwServiceState,
  Pointer<ENUM_SERVICE_STATUS> lpServices,
  int cbBufSize,
  Pointer<Uint32> pcbBytesNeeded,
  Pointer<Uint32> lpServicesReturned,
)>('EnumDependentServicesW');

int EnumServicesStatusEx(
  int hSCManager,
  int InfoLevel,
  int dwServiceType,
  int dwServiceState,
  Pointer<Uint8> lpServices,
  int cbBufSize,
  Pointer<Uint32> pcbBytesNeeded,
  Pointer<Uint32> lpServicesReturned,
  Pointer<Uint32> lpResumeHandle,
  Pointer<Utf16> pszGroupName,
) =>
    _EnumServicesStatusEx(
      hSCManager,
      InfoLevel,
      dwServiceType,
      dwServiceState,
      lpServices,
      cbBufSize,
      pcbBytesNeeded,
      lpServicesReturned,
      lpResumeHandle,
      pszGroupName,
    );

late final _EnumServicesStatusEx = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr hSCManager,
  Int32 InfoLevel,
  Uint32 dwServiceType,
  Uint32 dwServiceState,
  Pointer<Uint8> lpServices,
  Uint32 cbBufSize,
  Pointer<Uint32> pcbBytesNeeded,
  Pointer<Uint32> lpServicesReturned,
  Pointer<Uint32> lpResumeHandle,
  Pointer<Utf16> pszGroupName,
),
    int Function(
  int hSCManager,
  int InfoLevel,
  int dwServiceType,
  int dwServiceState,
  Pointer<Uint8> lpServices,
  int cbBufSize,
  Pointer<Uint32> pcbBytesNeeded,
  Pointer<Uint32> lpServicesReturned,
  Pointer<Uint32> lpResumeHandle,
  Pointer<Utf16> pszGroupName,
)>('EnumServicesStatusExW');

int EnumServicesStatus(
  int hSCManager,
  int dwServiceType,
  int dwServiceState,
  Pointer<ENUM_SERVICE_STATUS> lpServices,
  int cbBufSize,
  Pointer<Uint32> pcbBytesNeeded,
  Pointer<Uint32> lpServicesReturned,
  Pointer<Uint32> lpResumeHandle,
) =>
    _EnumServicesStatus(
      hSCManager,
      dwServiceType,
      dwServiceState,
      lpServices,
      cbBufSize,
      pcbBytesNeeded,
      lpServicesReturned,
      lpResumeHandle,
    );

late final _EnumServicesStatus = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr hSCManager,
  Uint32 dwServiceType,
  Uint32 dwServiceState,
  Pointer<ENUM_SERVICE_STATUS> lpServices,
  Uint32 cbBufSize,
  Pointer<Uint32> pcbBytesNeeded,
  Pointer<Uint32> lpServicesReturned,
  Pointer<Uint32> lpResumeHandle,
),
    int Function(
  int hSCManager,
  int dwServiceType,
  int dwServiceState,
  Pointer<ENUM_SERVICE_STATUS> lpServices,
  int cbBufSize,
  Pointer<Uint32> pcbBytesNeeded,
  Pointer<Uint32> lpServicesReturned,
  Pointer<Uint32> lpResumeHandle,
)>('EnumServicesStatusW');

int GetServiceDisplayName(
  int hSCManager,
  Pointer<Utf16> lpServiceName,
  Pointer<Utf16> lpDisplayName,
  Pointer<Uint32> lpcchBuffer,
) =>
    _GetServiceDisplayName(
      hSCManager,
      lpServiceName,
      lpDisplayName,
      lpcchBuffer,
    );

late final _GetServiceDisplayName = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr hSCManager,
  Pointer<Utf16> lpServiceName,
  Pointer<Utf16> lpDisplayName,
  Pointer<Uint32> lpcchBuffer,
),
    int Function(
  int hSCManager,
  Pointer<Utf16> lpServiceName,
  Pointer<Utf16> lpDisplayName,
  Pointer<Uint32> lpcchBuffer,
)>('GetServiceDisplayNameW');

int GetServiceKeyName(
  int hSCManager,
  Pointer<Utf16> lpDisplayName,
  Pointer<Utf16> lpServiceName,
  Pointer<Uint32> lpcchBuffer,
) =>
    _GetServiceKeyName(
      hSCManager,
      lpDisplayName,
      lpServiceName,
      lpcchBuffer,
    );

late final _GetServiceKeyName = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr hSCManager,
  Pointer<Utf16> lpDisplayName,
  Pointer<Utf16> lpServiceName,
  Pointer<Uint32> lpcchBuffer,
),
    int Function(
  int hSCManager,
  Pointer<Utf16> lpDisplayName,
  Pointer<Utf16> lpServiceName,
  Pointer<Uint32> lpcchBuffer,
)>('GetServiceKeyNameW');

Pointer LockServiceDatabase(
  int hSCManager,
) =>
    _LockServiceDatabase(
      hSCManager,
    );

late final _LockServiceDatabase = _advapi32.lookupFunction<
    Pointer Function(
  IntPtr hSCManager,
),
    Pointer Function(
  int hSCManager,
)>('LockServiceDatabase');

int NotifyBootConfigStatus(
  int BootAcceptable,
) =>
    _NotifyBootConfigStatus(
      BootAcceptable,
    );

late final _NotifyBootConfigStatus = _advapi32.lookupFunction<
    Int32 Function(
  Int32 BootAcceptable,
),
    int Function(
  int BootAcceptable,
)>('NotifyBootConfigStatus');

int NotifyServiceStatusChange(
  int hService,
  int dwNotifyMask,
  Pointer<SERVICE_NOTIFY_2> pNotifyBuffer,
) =>
    _NotifyServiceStatusChange(
      hService,
      dwNotifyMask,
      pNotifyBuffer,
    );

late final _NotifyServiceStatusChange = _advapi32.lookupFunction<
    Uint32 Function(
  IntPtr hService,
  Uint32 dwNotifyMask,
  Pointer<SERVICE_NOTIFY_2> pNotifyBuffer,
),
    int Function(
  int hService,
  int dwNotifyMask,
  Pointer<SERVICE_NOTIFY_2> pNotifyBuffer,
)>('NotifyServiceStatusChangeW');

int OpenSCManager(
  Pointer<Utf16> lpMachineName,
  Pointer<Utf16> lpDatabaseName,
  int dwDesiredAccess,
) =>
    _OpenSCManager(
      lpMachineName,
      lpDatabaseName,
      dwDesiredAccess,
    );

late final _OpenSCManager = _advapi32.lookupFunction<
    IntPtr Function(
  Pointer<Utf16> lpMachineName,
  Pointer<Utf16> lpDatabaseName,
  Uint32 dwDesiredAccess,
),
    int Function(
  Pointer<Utf16> lpMachineName,
  Pointer<Utf16> lpDatabaseName,
  int dwDesiredAccess,
)>('OpenSCManagerW');

int OpenService(
  int hSCManager,
  Pointer<Utf16> lpServiceName,
  int dwDesiredAccess,
) =>
    _OpenService(
      hSCManager,
      lpServiceName,
      dwDesiredAccess,
    );

late final _OpenService = _advapi32.lookupFunction<
    IntPtr Function(
  IntPtr hSCManager,
  Pointer<Utf16> lpServiceName,
  Uint32 dwDesiredAccess,
),
    int Function(
  int hSCManager,
  Pointer<Utf16> lpServiceName,
  int dwDesiredAccess,
)>('OpenServiceW');

int QueryServiceConfig2(
  int hService,
  int dwInfoLevel,
  Pointer<Uint8> lpBuffer,
  int cbBufSize,
  Pointer<Uint32> pcbBytesNeeded,
) =>
    _QueryServiceConfig2(
      hService,
      dwInfoLevel,
      lpBuffer,
      cbBufSize,
      pcbBytesNeeded,
    );

late final _QueryServiceConfig2 = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr hService,
  Uint32 dwInfoLevel,
  Pointer<Uint8> lpBuffer,
  Uint32 cbBufSize,
  Pointer<Uint32> pcbBytesNeeded,
),
    int Function(
  int hService,
  int dwInfoLevel,
  Pointer<Uint8> lpBuffer,
  int cbBufSize,
  Pointer<Uint32> pcbBytesNeeded,
)>('QueryServiceConfig2W');

int QueryServiceConfig(
  int hService,
  Pointer<QUERY_SERVICE_CONFIG> lpServiceConfig,
  int cbBufSize,
  Pointer<Uint32> pcbBytesNeeded,
) =>
    _QueryServiceConfig(
      hService,
      lpServiceConfig,
      cbBufSize,
      pcbBytesNeeded,
    );

late final _QueryServiceConfig = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr hService,
  Pointer<QUERY_SERVICE_CONFIG> lpServiceConfig,
  Uint32 cbBufSize,
  Pointer<Uint32> pcbBytesNeeded,
),
    int Function(
  int hService,
  Pointer<QUERY_SERVICE_CONFIG> lpServiceConfig,
  int cbBufSize,
  Pointer<Uint32> pcbBytesNeeded,
)>('QueryServiceConfigW');

int QueryServiceDynamicInformation(
  int hServiceStatus,
  int dwInfoLevel,
  Pointer<Pointer> ppDynamicInfo,
) =>
    _QueryServiceDynamicInformation(
      hServiceStatus,
      dwInfoLevel,
      ppDynamicInfo,
    );

late final _QueryServiceDynamicInformation = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr hServiceStatus,
  Uint32 dwInfoLevel,
  Pointer<Pointer> ppDynamicInfo,
),
    int Function(
  int hServiceStatus,
  int dwInfoLevel,
  Pointer<Pointer> ppDynamicInfo,
)>('QueryServiceDynamicInformation');

int QueryServiceLockStatus(
  int hSCManager,
  Pointer<QUERY_SERVICE_LOCK_STATUS> lpLockStatus,
  int cbBufSize,
  Pointer<Uint32> pcbBytesNeeded,
) =>
    _QueryServiceLockStatus(
      hSCManager,
      lpLockStatus,
      cbBufSize,
      pcbBytesNeeded,
    );

late final _QueryServiceLockStatus = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr hSCManager,
  Pointer<QUERY_SERVICE_LOCK_STATUS> lpLockStatus,
  Uint32 cbBufSize,
  Pointer<Uint32> pcbBytesNeeded,
),
    int Function(
  int hSCManager,
  Pointer<QUERY_SERVICE_LOCK_STATUS> lpLockStatus,
  int cbBufSize,
  Pointer<Uint32> pcbBytesNeeded,
)>('QueryServiceLockStatusW');

int QueryServiceObjectSecurity(
  int hService,
  int dwSecurityInformation,
  Pointer<SECURITY_DESCRIPTOR> lpSecurityDescriptor,
  int cbBufSize,
  Pointer<Uint32> pcbBytesNeeded,
) =>
    _QueryServiceObjectSecurity(
      hService,
      dwSecurityInformation,
      lpSecurityDescriptor,
      cbBufSize,
      pcbBytesNeeded,
    );

late final _QueryServiceObjectSecurity = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr hService,
  Uint32 dwSecurityInformation,
  Pointer<SECURITY_DESCRIPTOR> lpSecurityDescriptor,
  Uint32 cbBufSize,
  Pointer<Uint32> pcbBytesNeeded,
),
    int Function(
  int hService,
  int dwSecurityInformation,
  Pointer<SECURITY_DESCRIPTOR> lpSecurityDescriptor,
  int cbBufSize,
  Pointer<Uint32> pcbBytesNeeded,
)>('QueryServiceObjectSecurity');

int QueryServiceStatus(
  int hService,
  Pointer<SERVICE_STATUS> lpServiceStatus,
) =>
    _QueryServiceStatus(
      hService,
      lpServiceStatus,
    );

late final _QueryServiceStatus = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr hService,
  Pointer<SERVICE_STATUS> lpServiceStatus,
),
    int Function(
  int hService,
  Pointer<SERVICE_STATUS> lpServiceStatus,
)>('QueryServiceStatus');

int QueryServiceStatusEx(
  int hService,
  int InfoLevel,
  Pointer<Uint8> lpBuffer,
  int cbBufSize,
  Pointer<Uint32> pcbBytesNeeded,
) =>
    _QueryServiceStatusEx(
      hService,
      InfoLevel,
      lpBuffer,
      cbBufSize,
      pcbBytesNeeded,
    );

late final _QueryServiceStatusEx = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr hService,
  Int32 InfoLevel,
  Pointer<Uint8> lpBuffer,
  Uint32 cbBufSize,
  Pointer<Uint32> pcbBytesNeeded,
),
    int Function(
  int hService,
  int InfoLevel,
  Pointer<Uint8> lpBuffer,
  int cbBufSize,
  Pointer<Uint32> pcbBytesNeeded,
)>('QueryServiceStatusEx');

int RegisterServiceCtrlHandlerEx(
  Pointer<Utf16> lpServiceName,
  Pointer<NativeFunction<LPHANDLER_FUNCTION_EX>> lpHandlerProc,
  Pointer lpContext,
) =>
    _RegisterServiceCtrlHandlerEx(
      lpServiceName,
      lpHandlerProc,
      lpContext,
    );

late final _RegisterServiceCtrlHandlerEx = _advapi32.lookupFunction<
    IntPtr Function(
  Pointer<Utf16> lpServiceName,
  Pointer<NativeFunction<LPHANDLER_FUNCTION_EX>> lpHandlerProc,
  Pointer lpContext,
),
    int Function(
  Pointer<Utf16> lpServiceName,
  Pointer<NativeFunction<LPHANDLER_FUNCTION_EX>> lpHandlerProc,
  Pointer lpContext,
)>('RegisterServiceCtrlHandlerExW');

int RegisterServiceCtrlHandler(
  Pointer<Utf16> lpServiceName,
  Pointer<NativeFunction<LPHANDLER_FUNCTION>> lpHandlerProc,
) =>
    _RegisterServiceCtrlHandler(
      lpServiceName,
      lpHandlerProc,
    );

late final _RegisterServiceCtrlHandler = _advapi32.lookupFunction<
    IntPtr Function(
  Pointer<Utf16> lpServiceName,
  Pointer<NativeFunction<LPHANDLER_FUNCTION>> lpHandlerProc,
),
    int Function(
  Pointer<Utf16> lpServiceName,
  Pointer<NativeFunction<LPHANDLER_FUNCTION>> lpHandlerProc,
)>('RegisterServiceCtrlHandlerW');

int SetServiceBits(
  int hServiceStatus,
  int dwServiceBits,
  int bSetBitsOn,
  int bUpdateImmediately,
) =>
    _SetServiceBits(
      hServiceStatus,
      dwServiceBits,
      bSetBitsOn,
      bUpdateImmediately,
    );

late final _SetServiceBits = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr hServiceStatus,
  Uint32 dwServiceBits,
  Int32 bSetBitsOn,
  Int32 bUpdateImmediately,
),
    int Function(
  int hServiceStatus,
  int dwServiceBits,
  int bSetBitsOn,
  int bUpdateImmediately,
)>('SetServiceBits');

int SetServiceObjectSecurity(
  int hService,
  int dwSecurityInformation,
  Pointer<SECURITY_DESCRIPTOR> lpSecurityDescriptor,
) =>
    _SetServiceObjectSecurity(
      hService,
      dwSecurityInformation,
      lpSecurityDescriptor,
    );

late final _SetServiceObjectSecurity = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr hService,
  Uint32 dwSecurityInformation,
  Pointer<SECURITY_DESCRIPTOR> lpSecurityDescriptor,
),
    int Function(
  int hService,
  int dwSecurityInformation,
  Pointer<SECURITY_DESCRIPTOR> lpSecurityDescriptor,
)>('SetServiceObjectSecurity');

int SetServiceStatus(
  int hServiceStatus,
  Pointer<SERVICE_STATUS> lpServiceStatus,
) =>
    _SetServiceStatus(
      hServiceStatus,
      lpServiceStatus,
    );

late final _SetServiceStatus = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr hServiceStatus,
  Pointer<SERVICE_STATUS> lpServiceStatus,
),
    int Function(
  int hServiceStatus,
  Pointer<SERVICE_STATUS> lpServiceStatus,
)>('SetServiceStatus');

int StartServiceCtrlDispatcher(
  Pointer<SERVICE_TABLE_ENTRY> lpServiceStartTable,
) =>
    _StartServiceCtrlDispatcher(
      lpServiceStartTable,
    );

late final _StartServiceCtrlDispatcher = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<SERVICE_TABLE_ENTRY> lpServiceStartTable,
),
    int Function(
  Pointer<SERVICE_TABLE_ENTRY> lpServiceStartTable,
)>('StartServiceCtrlDispatcherW');

int StartService(
  int hService,
  int dwNumServiceArgs,
  Pointer<Pointer<Utf16>> lpServiceArgVectors,
) =>
    _StartService(
      hService,
      dwNumServiceArgs,
      lpServiceArgVectors,
    );

late final _StartService = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr hService,
  Uint32 dwNumServiceArgs,
  Pointer<Pointer<Utf16>> lpServiceArgVectors,
),
    int Function(
  int hService,
  int dwNumServiceArgs,
  Pointer<Pointer<Utf16>> lpServiceArgVectors,
)>('StartServiceW');

int UnlockServiceDatabase(
  Pointer ScLock,
) =>
    _UnlockServiceDatabase(
      ScLock,
    );

late final _UnlockServiceDatabase = _advapi32.lookupFunction<
    Int32 Function(
  Pointer ScLock,
),
    int Function(
  Pointer ScLock,
)>('UnlockServiceDatabase');

int WaitServiceState(
  int hService,
  int dwNotify,
  int dwTimeout,
  int hCancelEvent,
) =>
    _WaitServiceState(
      hService,
      dwNotify,
      dwTimeout,
      hCancelEvent,
    );

late final _WaitServiceState = _advapi32.lookupFunction<
    Uint32 Function(
  IntPtr hService,
  Uint32 dwNotify,
  Uint32 dwTimeout,
  IntPtr hCancelEvent,
),
    int Function(
  int hService,
  int dwNotify,
  int dwTimeout,
  int hCancelEvent,
)>('WaitServiceState');

// -----------------------------------------------------------------------
// api-ms-win-service-core-l1-1-3.dll
// -----------------------------------------------------------------------
final _api_ms_win_service_core_l1_1_3 =
    DynamicLibrary.open('api-ms-win-service-core-l1-1-3.dll');

int GetServiceRegistryStateKey(
  int ServiceStatusHandle,
  int StateType,
  int AccessMask,
  Pointer<IntPtr> ServiceStateKey,
) =>
    _GetServiceRegistryStateKey(
      ServiceStatusHandle,
      StateType,
      AccessMask,
      ServiceStateKey,
    );

late final _GetServiceRegistryStateKey =
    _api_ms_win_service_core_l1_1_3.lookupFunction<
        Uint32 Function(
  IntPtr ServiceStatusHandle,
  Int32 StateType,
  Uint32 AccessMask,
  Pointer<IntPtr> ServiceStateKey,
),
        int Function(
  int ServiceStatusHandle,
  int StateType,
  int AccessMask,
  Pointer<IntPtr> ServiceStateKey,
)>('GetServiceRegistryStateKey');

// -----------------------------------------------------------------------
// api-ms-win-service-core-l1-1-4.dll
// -----------------------------------------------------------------------
final _api_ms_win_service_core_l1_1_4 =
    DynamicLibrary.open('api-ms-win-service-core-l1-1-4.dll');

int GetServiceDirectory(
  int hServiceStatus,
  int eDirectoryType,
  Pointer<Utf16> lpPathBuffer,
  int cchPathBufferLength,
  Pointer<Uint32> lpcchRequiredBufferLength,
) =>
    _GetServiceDirectory(
      hServiceStatus,
      eDirectoryType,
      lpPathBuffer,
      cchPathBufferLength,
      lpcchRequiredBufferLength,
    );

late final _GetServiceDirectory =
    _api_ms_win_service_core_l1_1_4.lookupFunction<
        Uint32 Function(
  IntPtr hServiceStatus,
  Int32 eDirectoryType,
  Pointer<Utf16> lpPathBuffer,
  Uint32 cchPathBufferLength,
  Pointer<Uint32> lpcchRequiredBufferLength,
),
        int Function(
  int hServiceStatus,
  int eDirectoryType,
  Pointer<Utf16> lpPathBuffer,
  int cchPathBufferLength,
  Pointer<Uint32> lpcchRequiredBufferLength,
)>('GetServiceDirectory');

// -----------------------------------------------------------------------
// api-ms-win-service-core-l1-1-5.dll
// -----------------------------------------------------------------------
final _api_ms_win_service_core_l1_1_5 =
    DynamicLibrary.open('api-ms-win-service-core-l1-1-5.dll');

int GetSharedServiceDirectory(
  int ServiceHandle,
  int DirectoryType,
  Pointer<Utf16> PathBuffer,
  int PathBufferLength,
  Pointer<Uint32> RequiredBufferLength,
) =>
    _GetSharedServiceDirectory(
      ServiceHandle,
      DirectoryType,
      PathBuffer,
      PathBufferLength,
      RequiredBufferLength,
    );

late final _GetSharedServiceDirectory =
    _api_ms_win_service_core_l1_1_5.lookupFunction<
        Uint32 Function(
  IntPtr ServiceHandle,
  Int32 DirectoryType,
  Pointer<Utf16> PathBuffer,
  Uint32 PathBufferLength,
  Pointer<Uint32> RequiredBufferLength,
),
        int Function(
  int ServiceHandle,
  int DirectoryType,
  Pointer<Utf16> PathBuffer,
  int PathBufferLength,
  Pointer<Uint32> RequiredBufferLength,
)>('GetSharedServiceDirectory');

int GetSharedServiceRegistryStateKey(
  int ServiceHandle,
  int StateType,
  int AccessMask,
  Pointer<IntPtr> ServiceStateKey,
) =>
    _GetSharedServiceRegistryStateKey(
      ServiceHandle,
      StateType,
      AccessMask,
      ServiceStateKey,
    );

late final _GetSharedServiceRegistryStateKey =
    _api_ms_win_service_core_l1_1_5.lookupFunction<
        Uint32 Function(
  IntPtr ServiceHandle,
  Int32 StateType,
  Uint32 AccessMask,
  Pointer<IntPtr> ServiceStateKey,
),
        int Function(
  int ServiceHandle,
  int StateType,
  int AccessMask,
  Pointer<IntPtr> ServiceStateKey,
)>('GetSharedServiceRegistryStateKey');
