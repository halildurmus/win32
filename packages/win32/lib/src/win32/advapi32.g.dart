// Maps FFI prototypes onto the corresponding Win32 API function calls.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../_internal/advapi32.g.dart';
import '../allocator.dart';
import '../bstr.dart';
import '../callbacks.g.dart';
import '../com/interface.g.dart';
import '../com/iunknown.g.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../enums.g.dart';
import '../exception.dart';
import '../extensions/pointer.dart';
import '../hresult.dart';
import '../hstring.dart';
import '../macros.dart';
import '../ntstatus.dart';
import '../pcstr.dart';
import '../pcwstr.dart';
import '../pstr.dart';
import '../pwstr.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';

/// Changes the optional configuration parameters of a service.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-changeserviceconfig2w>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
bool ChangeServiceConfig2(
  int hService,
  SERVICE_CONFIG dwInfoLevel,
  Pointer? lpInfo,
) =>
    ChangeServiceConfig2W_Wrapper(hService, dwInfoLevel, lpInfo ?? nullptr) !=
    FALSE;

/// Closes a handle to a service control manager or service object.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-closeservicehandle>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
bool CloseServiceHandle(int hSCObject) =>
    CloseServiceHandle_Wrapper(hSCObject) != FALSE;

/// Sends a control code to a service.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-controlservice>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
bool ControlService(
  int hService,
  int dwControl,
  Pointer<SERVICE_STATUS> lpServiceStatus,
) => ControlService_Wrapper(hService, dwControl, lpServiceStatus) != FALSE;

/// Sends a control code to a service.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-controlserviceexw>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
bool ControlServiceEx(
  int hService,
  int dwControl,
  int dwInfoLevel,
  Pointer pControlParams,
) =>
    ControlServiceExW_Wrapper(
      hService,
      dwControl,
      dwInfoLevel,
      pControlParams,
    ) !=
    FALSE;

/// Deletes a credential from the user's credential set.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wincred/nf-wincred-creddeletew>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
bool CredDelete(PCWSTR targetName, CRED_TYPE type) =>
    CredDeleteW_Wrapper(targetName, type, NULL) != FALSE;

/// Frees a buffer returned by any of the credentials management functions.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wincred/nf-wincred-credfree>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
void CredFree(Pointer buffer) => _CredFree(buffer);

@Native<Void Function(Pointer)>(symbol: 'CredFree')
external void _CredFree(Pointer buffer);

/// Reads a credential from the user's credential set.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wincred/nf-wincred-credreadw>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
bool CredRead(
  PCWSTR targetName,
  CRED_TYPE type,
  Pointer<Pointer<CREDENTIAL>> credential,
) => CredReadW_Wrapper(targetName, type, NULL, credential) != FALSE;

/// Creates a new credential or modifies an existing credential in the user's
/// credential set.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wincred/nf-wincred-credwritew>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
bool CredWrite(Pointer<CREDENTIAL> credential, int flags) =>
    CredWriteW_Wrapper(credential, flags) != FALSE;

/// Decrypts an encrypted file or directory.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-decryptfilew>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
bool DecryptFile(PCWSTR lpFileName) =>
    DecryptFileW_Wrapper(lpFileName, NULL) != FALSE;

/// Marks the specified service for deletion from the service control manager
/// database.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-deleteservice>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
bool DeleteService(int hService) => DeleteService_Wrapper(hService) != FALSE;

/// Encrypts a file or directory.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-encryptfilew>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
bool EncryptFile(PCWSTR lpFileName) =>
    EncryptFileW_Wrapper(lpFileName) != FALSE;

/// Retrieves the name and status of each service that depends on the specified
/// service.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-enumdependentservicesw>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
bool EnumDependentServices(
  int hService,
  ENUM_SERVICE_STATE dwServiceState,
  Pointer<ENUM_SERVICE_STATUS>? lpServices,
  int cbBufSize,
  Pointer<Uint32> pcbBytesNeeded,
  Pointer<Uint32> lpServicesReturned,
) =>
    EnumDependentServicesW_Wrapper(
      hService,
      dwServiceState,
      lpServices ?? nullptr,
      cbBufSize,
      pcbBytesNeeded,
      lpServicesReturned,
    ) !=
    FALSE;

/// Enumerates services in the specified service control manager database.
///
/// The name and status of each service are provided.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-enumservicesstatusw>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
bool EnumServicesStatus(
  int hSCManager,
  ENUM_SERVICE_TYPE dwServiceType,
  ENUM_SERVICE_STATE dwServiceState,
  Pointer<ENUM_SERVICE_STATUS>? lpServices,
  int cbBufSize,
  Pointer<Uint32> pcbBytesNeeded,
  Pointer<Uint32> lpServicesReturned,
  Pointer<Uint32>? lpResumeHandle,
) =>
    EnumServicesStatusW_Wrapper(
      hSCManager,
      dwServiceType,
      dwServiceState,
      lpServices ?? nullptr,
      cbBufSize,
      pcbBytesNeeded,
      lpServicesReturned,
      lpResumeHandle ?? nullptr,
    ) !=
    FALSE;

/// Enumerates services in the specified service control manager database.
///
/// The name and status of each service are provided, along with additional data
/// based on the specified information level.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-enumservicesstatusexw>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
bool EnumServicesStatusEx(
  int hSCManager,
  SC_ENUM_TYPE infoLevel,
  ENUM_SERVICE_TYPE dwServiceType,
  ENUM_SERVICE_STATE dwServiceState,
  Pointer<Uint8>? lpServices,
  int cbBufSize,
  Pointer<Uint32> pcbBytesNeeded,
  Pointer<Uint32> lpServicesReturned,
  Pointer<Uint32>? lpResumeHandle,
  PCWSTR? pszGroupName,
) =>
    EnumServicesStatusExW_Wrapper(
      hSCManager,
      infoLevel,
      dwServiceType,
      dwServiceState,
      lpServices ?? nullptr,
      cbBufSize,
      pcbBytesNeeded,
      lpServicesReturned,
      lpResumeHandle ?? nullptr,
      pszGroupName ?? nullptr,
    ) !=
    FALSE;

/// Retrieves the encryption status of the specified file.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-fileencryptionstatusw>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
bool FileEncryptionStatus(PCWSTR lpFileName, Pointer<Uint32> lpStatus) =>
    FileEncryptionStatusW_Wrapper(lpFileName, lpStatus) != FALSE;

/// Retrieves the display name of the specified service.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-getservicedisplaynamew>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
bool GetServiceDisplayName(
  int hSCManager,
  PCWSTR lpServiceName,
  PWSTR? lpDisplayName,
  Pointer<Uint32> lpcchBuffer,
) =>
    GetServiceDisplayNameW_Wrapper(
      hSCManager,
      lpServiceName,
      lpDisplayName ?? nullptr,
      lpcchBuffer,
    ) !=
    FALSE;

/// Retrieves the service name of the specified service.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-getservicekeynamew>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
bool GetServiceKeyName(
  int hSCManager,
  PCWSTR lpDisplayName,
  PWSTR? lpServiceName,
  Pointer<Uint32> lpcchBuffer,
) =>
    GetServiceKeyNameW_Wrapper(
      hSCManager,
      lpDisplayName,
      lpServiceName ?? nullptr,
      lpcchBuffer,
    ) !=
    FALSE;

/// Retrieves a specified type of information about an access token.
///
/// The calling process must have appropriate access rights to obtain the
/// information.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/securitybaseapi/nf-securitybaseapi-gettokeninformation>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
bool GetTokenInformation(
  int tokenHandle,
  TOKEN_INFORMATION_CLASS tokenInformationClass,
  Pointer? tokenInformation,
  int tokenInformationLength,
  Pointer<Uint32> returnLength,
) =>
    GetTokenInformation_Wrapper(
      tokenHandle,
      tokenInformationClass,
      tokenInformation ?? nullptr,
      tokenInformationLength,
      returnLength,
    ) !=
    FALSE;

/// Retrieves the name of the user associated with the current thread.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-getusernamew>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
bool GetUserName(PWSTR? lpBuffer, Pointer<Uint32> pcbBuffer) =>
    GetUserNameW_Wrapper(lpBuffer ?? nullptr, pcbBuffer) != FALSE;

/// Initiates a shutdown and restart of the specified computer, and restarts any
/// applications that have been registered for restart.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-initiateshutdownw>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
int InitiateShutdown(
  PCWSTR? lpMachineName,
  PCWSTR? lpMessage,
  int dwGracePeriod,
  SHUTDOWN_FLAGS dwShutdownFlags,
  SHUTDOWN_REASON dwReason,
) => _InitiateShutdown(
  lpMachineName ?? nullptr,
  lpMessage ?? nullptr,
  dwGracePeriod,
  dwShutdownFlags,
  dwReason,
);

@Native<Uint32 Function(PCWSTR, PCWSTR, Uint32, Uint32, Uint32)>(
  symbol: 'InitiateShutdownW',
)
external int _InitiateShutdown(
  PCWSTR lpMachineName,
  PCWSTR lpMessage,
  int dwGracePeriod,
  int dwShutdownFlags,
  int dwReason,
);

/// Reports the boot status to the service control manager.
///
/// It is used by boot verification programs.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-notifybootconfigstatus>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
bool NotifyBootConfigStatus(bool bootAcceptable) =>
    NotifyBootConfigStatus_Wrapper(bootAcceptable ? TRUE : FALSE) != FALSE;

/// Enables an application to receive notification when the specified service is
/// created or deleted or when its status changes.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-notifyservicestatuschangew>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
int NotifyServiceStatusChange(
  int hService,
  SERVICE_NOTIFY dwNotifyMask,
  Pointer<SERVICE_NOTIFY_2> pNotifyBuffer,
) => _NotifyServiceStatusChange(hService, dwNotifyMask, pNotifyBuffer);

@Native<Uint32 Function(SC_HANDLE, Uint32, Pointer<SERVICE_NOTIFY_2>)>(
  symbol: 'NotifyServiceStatusChangeW',
)
external int _NotifyServiceStatusChange(
  int hService,
  int dwNotifyMask,
  Pointer<SERVICE_NOTIFY_2> pNotifyBuffer,
);

/// Opens the access token associated with a process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-openprocesstoken>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
bool OpenProcessToken(
  int processHandle,
  TOKEN_ACCESS_MASK desiredAccess,
  Pointer<HANDLE> tokenHandle,
) =>
    OpenProcessToken_Wrapper(processHandle, desiredAccess, tokenHandle) !=
    FALSE;

/// Establishes a connection to the service control manager on the specified
/// computer and opens the specified service control manager database.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-openscmanagerw>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
int OpenSCManager(
  PCWSTR? lpMachineName,
  PCWSTR? lpDatabaseName,
  int dwDesiredAccess,
) => OpenSCManagerW_Wrapper(
  lpMachineName ?? nullptr,
  lpDatabaseName ?? nullptr,
  dwDesiredAccess,
);

/// Opens an existing service.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-openservicew>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
int OpenService(int hSCManager, PCWSTR lpServiceName, int dwDesiredAccess) =>
    OpenServiceW_Wrapper(hSCManager, lpServiceName, dwDesiredAccess);

/// Opens the access token associated with a thread.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-openthreadtoken>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
bool OpenThreadToken(
  int threadHandle,
  TOKEN_ACCESS_MASK desiredAccess,
  bool openAsSelf,
  Pointer<HANDLE> tokenHandle,
) =>
    OpenThreadToken_Wrapper(
      threadHandle,
      desiredAccess,
      openAsSelf ? TRUE : FALSE,
      tokenHandle,
    ) !=
    FALSE;

/// Retrieves the configuration parameters of the specified service.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-queryserviceconfigw>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
bool QueryServiceConfig(
  int hService,
  Pointer<QUERY_SERVICE_CONFIG>? lpServiceConfig,
  int cbBufSize,
  Pointer<Uint32> pcbBytesNeeded,
) =>
    QueryServiceConfigW_Wrapper(
      hService,
      lpServiceConfig ?? nullptr,
      cbBufSize,
      pcbBytesNeeded,
    ) !=
    FALSE;

/// Retrieves the optional configuration parameters of the specified service.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-queryserviceconfig2w>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
bool QueryServiceConfig2(
  int hService,
  SERVICE_CONFIG dwInfoLevel,
  Pointer<Uint8>? lpBuffer,
  int cbBufSize,
  Pointer<Uint32> pcbBytesNeeded,
) =>
    QueryServiceConfig2W_Wrapper(
      hService,
      dwInfoLevel,
      lpBuffer ?? nullptr,
      cbBufSize,
      pcbBytesNeeded,
    ) !=
    FALSE;

/// Retrieves dynamic information related to the current service start.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-queryservicedynamicinformation>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
bool QueryServiceDynamicInformation(
  int hServiceStatus,
  int dwInfoLevel,
  Pointer<Pointer> ppDynamicInfo,
) =>
    QueryServiceDynamicInformation_Wrapper(
      hServiceStatus,
      dwInfoLevel,
      ppDynamicInfo,
    ) !=
    FALSE;

/// Retrieves a copy of the security descriptor associated with a service
/// object.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-queryserviceobjectsecurity>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
bool QueryServiceObjectSecurity(
  int hService,
  int dwSecurityInformation,
  int? lpSecurityDescriptor,
  int cbBufSize,
  Pointer<Uint32> pcbBytesNeeded,
) =>
    QueryServiceObjectSecurity_Wrapper(
      hService,
      dwSecurityInformation,
      lpSecurityDescriptor ?? NULL,
      cbBufSize,
      pcbBytesNeeded,
    ) !=
    FALSE;

/// Retrieves the current status of the specified service.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-queryservicestatus>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
bool QueryServiceStatus(
  int hService,
  Pointer<SERVICE_STATUS> lpServiceStatus,
) => QueryServiceStatus_Wrapper(hService, lpServiceStatus) != FALSE;

/// Retrieves the current status of the specified service based on the specified
/// information level.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-queryservicestatusex>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
bool QueryServiceStatusEx(
  int hService,
  SC_STATUS_TYPE infoLevel,
  Pointer<Uint8>? lpBuffer,
  int cbBufSize,
  Pointer<Uint32> pcbBytesNeeded,
) =>
    QueryServiceStatusEx_Wrapper(
      hService,
      infoLevel,
      lpBuffer ?? nullptr,
      cbBufSize,
      pcbBytesNeeded,
    ) !=
    FALSE;

/// Closes a handle to the specified registry key.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regclosekey>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
WIN32_ERROR RegCloseKey(int hKey) => WIN32_ERROR(_RegCloseKey(hKey));

@Native<Uint32 Function(HKEY)>(symbol: 'RegCloseKey')
external int _RegCloseKey(int hKey);

/// Establishes a connection to a predefined registry key on another computer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regconnectregistryw>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
WIN32_ERROR RegConnectRegistry(
  PCWSTR? lpMachineName,
  int hKey,
  Pointer<HKEY> phkResult,
) =>
    WIN32_ERROR(_RegConnectRegistry(lpMachineName ?? nullptr, hKey, phkResult));

@Native<Uint32 Function(PCWSTR, HKEY, Pointer<HKEY>)>(
  symbol: 'RegConnectRegistryW',
)
external int _RegConnectRegistry(
  PCWSTR lpMachineName,
  int hKey,
  Pointer<HKEY> phkResult,
);

/// Copies the specified registry key, along with its values and subkeys, to the
/// specified destination key.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regcopytreew>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
WIN32_ERROR RegCopyTree(int hKeySrc, PCWSTR? lpSubKey, int hKeyDest) =>
    WIN32_ERROR(_RegCopyTree(hKeySrc, lpSubKey ?? nullptr, hKeyDest));

@Native<Uint32 Function(HKEY, PCWSTR, HKEY)>(symbol: 'RegCopyTreeW')
external int _RegCopyTree(int hKeySrc, PCWSTR lpSubKey, int hKeyDest);

/// Creates the specified registry key.
///
/// If the key already exists in the registry, the function opens it.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regcreatekeyw>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
WIN32_ERROR RegCreateKey(int hKey, PCWSTR? lpSubKey, Pointer<HKEY> phkResult) =>
    WIN32_ERROR(_RegCreateKey(hKey, lpSubKey ?? nullptr, phkResult));

@Native<Uint32 Function(HKEY, PCWSTR, Pointer<HKEY>)>(symbol: 'RegCreateKeyW')
external int _RegCreateKey(int hKey, PCWSTR lpSubKey, Pointer<HKEY> phkResult);

/// Creates the specified registry key.
///
/// If the key already exists, the function opens it. Note that key names are
/// not case sensitive.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regcreatekeyexw>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
WIN32_ERROR RegCreateKeyEx(
  int hKey,
  PCWSTR lpSubKey,
  PCWSTR? lpClass,
  REG_OPEN_CREATE_OPTIONS dwOptions,
  REG_SAM_FLAGS samDesired,
  Pointer<SECURITY_ATTRIBUTES>? lpSecurityAttributes,
  Pointer<HKEY> phkResult,
  Pointer<Uint32>? lpdwDisposition,
) => WIN32_ERROR(
  _RegCreateKeyEx(
    hKey,
    lpSubKey,
    NULL,
    lpClass ?? nullptr,
    dwOptions,
    samDesired,
    lpSecurityAttributes ?? nullptr,
    phkResult,
    lpdwDisposition ?? nullptr,
  ),
);

@Native<
  Uint32 Function(
    HKEY,
    PCWSTR,
    Uint32,
    PCWSTR,
    Uint32,
    Uint32,
    Pointer<SECURITY_ATTRIBUTES>,
    Pointer<HKEY>,
    Pointer<Uint32>,
  )
>(symbol: 'RegCreateKeyExW')
external int _RegCreateKeyEx(
  int hKey,
  PCWSTR lpSubKey,
  int reserved,
  PCWSTR lpClass,
  int dwOptions,
  int samDesired,
  Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
  Pointer<HKEY> phkResult,
  Pointer<Uint32> lpdwDisposition,
);

/// Creates the specified registry key and associates it with a transaction.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regcreatekeytransactedw>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
WIN32_ERROR RegCreateKeyTransacted(
  int hKey,
  PCWSTR lpSubKey,
  PCWSTR? lpClass,
  REG_OPEN_CREATE_OPTIONS dwOptions,
  REG_SAM_FLAGS samDesired,
  Pointer<SECURITY_ATTRIBUTES>? lpSecurityAttributes,
  Pointer<HKEY> phkResult,
  Pointer<Uint32>? lpdwDisposition,
  int hTransaction,
) => WIN32_ERROR(
  _RegCreateKeyTransacted(
    hKey,
    lpSubKey,
    NULL,
    lpClass ?? nullptr,
    dwOptions,
    samDesired,
    lpSecurityAttributes ?? nullptr,
    phkResult,
    lpdwDisposition ?? nullptr,
    hTransaction,
    nullptr,
  ),
);

@Native<
  Uint32 Function(
    HKEY,
    PCWSTR,
    Uint32,
    PCWSTR,
    Uint32,
    Uint32,
    Pointer<SECURITY_ATTRIBUTES>,
    Pointer<HKEY>,
    Pointer<Uint32>,
    HANDLE,
    Pointer,
  )
>(symbol: 'RegCreateKeyTransactedW')
external int _RegCreateKeyTransacted(
  int hKey,
  PCWSTR lpSubKey,
  int reserved,
  PCWSTR lpClass,
  int dwOptions,
  int samDesired,
  Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
  Pointer<HKEY> phkResult,
  Pointer<Uint32> lpdwDisposition,
  int hTransaction,
  Pointer pExtendedParemeter,
);

/// Deletes a subkey and its values.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regdeletekeyw>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
WIN32_ERROR RegDeleteKey(int hKey, PCWSTR lpSubKey) =>
    WIN32_ERROR(_RegDeleteKey(hKey, lpSubKey));

@Native<Uint32 Function(HKEY, PCWSTR)>(symbol: 'RegDeleteKeyW')
external int _RegDeleteKey(int hKey, PCWSTR lpSubKey);

/// Deletes a subkey and its values from the specified platform-specific view of
/// the registry.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regdeletekeyexw>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
WIN32_ERROR RegDeleteKeyEx(int hKey, PCWSTR lpSubKey, int samDesired) =>
    WIN32_ERROR(_RegDeleteKeyEx(hKey, lpSubKey, samDesired, NULL));

@Native<Uint32 Function(HKEY, PCWSTR, Uint32, Uint32)>(
  symbol: 'RegDeleteKeyExW',
)
external int _RegDeleteKeyEx(
  int hKey,
  PCWSTR lpSubKey,
  int samDesired,
  int reserved,
);

/// Deletes a subkey and its values from the specified platform-specific view of
/// the registry as a transacted operation.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regdeletekeytransactedw>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
WIN32_ERROR RegDeleteKeyTransacted(
  int hKey,
  PCWSTR lpSubKey,
  int samDesired,
  int hTransaction,
) => WIN32_ERROR(
  _RegDeleteKeyTransacted(
    hKey,
    lpSubKey,
    samDesired,
    NULL,
    hTransaction,
    nullptr,
  ),
);

@Native<Uint32 Function(HKEY, PCWSTR, Uint32, Uint32, HANDLE, Pointer)>(
  symbol: 'RegDeleteKeyTransactedW',
)
external int _RegDeleteKeyTransacted(
  int hKey,
  PCWSTR lpSubKey,
  int samDesired,
  int reserved,
  int hTransaction,
  Pointer pExtendedParameter,
);

/// Removes the specified value from the specified registry key and subkey.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regdeletekeyvaluew>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
WIN32_ERROR RegDeleteKeyValue(
  int hKey,
  PCWSTR? lpSubKey,
  PCWSTR? lpValueName,
) => WIN32_ERROR(
  _RegDeleteKeyValue(hKey, lpSubKey ?? nullptr, lpValueName ?? nullptr),
);

@Native<Uint32 Function(HKEY, PCWSTR, PCWSTR)>(symbol: 'RegDeleteKeyValueW')
external int _RegDeleteKeyValue(int hKey, PCWSTR lpSubKey, PCWSTR lpValueName);

/// Deletes the subkeys and values of the specified key recursively.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regdeletetreew>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
WIN32_ERROR RegDeleteTree(int hKey, PCWSTR? lpSubKey) =>
    WIN32_ERROR(_RegDeleteTree(hKey, lpSubKey ?? nullptr));

@Native<Uint32 Function(HKEY, PCWSTR)>(symbol: 'RegDeleteTreeW')
external int _RegDeleteTree(int hKey, PCWSTR lpSubKey);

/// Removes a named value from the specified registry key.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regdeletevaluew>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
WIN32_ERROR RegDeleteValue(int hKey, PCWSTR? lpValueName) =>
    WIN32_ERROR(_RegDeleteValue(hKey, lpValueName ?? nullptr));

@Native<Uint32 Function(HKEY, PCWSTR)>(symbol: 'RegDeleteValueW')
external int _RegDeleteValue(int hKey, PCWSTR lpValueName);

/// Disables handle caching of the predefined registry handle for
/// HKEY_CURRENT_USER for the current process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regdisablepredefinedcache>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
WIN32_ERROR RegDisablePredefinedCache() =>
    WIN32_ERROR(_RegDisablePredefinedCache());

@Native<Uint32 Function()>(symbol: 'RegDisablePredefinedCache')
external int _RegDisablePredefinedCache();

/// Disables handle caching for all predefined registry handles for the current
/// process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regdisablepredefinedcacheex>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
WIN32_ERROR RegDisablePredefinedCacheEx() =>
    WIN32_ERROR(_RegDisablePredefinedCacheEx());

@Native<Uint32 Function()>(symbol: 'RegDisablePredefinedCacheEx')
external int _RegDisablePredefinedCacheEx();

/// Disables registry reflection for the specified key.
///
/// Disabling reflection for a key does not affect reflection of any subkeys.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regdisablereflectionkey>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
WIN32_ERROR RegDisableReflectionKey(int hBase) =>
    WIN32_ERROR(_RegDisableReflectionKey(hBase));

@Native<Uint32 Function(HKEY)>(symbol: 'RegDisableReflectionKey')
external int _RegDisableReflectionKey(int hBase);

/// Restores registry reflection for the specified disabled key.
///
/// Restoring reflection for a key does not affect reflection of any subkeys.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regenablereflectionkey>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
WIN32_ERROR RegEnableReflectionKey(int hBase) =>
    WIN32_ERROR(_RegEnableReflectionKey(hBase));

@Native<Uint32 Function(HKEY)>(symbol: 'RegEnableReflectionKey')
external int _RegEnableReflectionKey(int hBase);

/// Enumerates the subkeys of the specified open registry key.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regenumkeyw>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
WIN32_ERROR RegEnumKey(int hKey, int dwIndex, PWSTR? lpName, int cchName) =>
    WIN32_ERROR(_RegEnumKey(hKey, dwIndex, lpName ?? nullptr, cchName));

@Native<Uint32 Function(HKEY, Uint32, PWSTR, Uint32)>(symbol: 'RegEnumKeyW')
external int _RegEnumKey(int hKey, int dwIndex, PWSTR lpName, int cchName);

/// Enumerates the subkeys of the specified open registry key.
///
/// The function retrieves information about one subkey each time it is called.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regenumkeyexw>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
WIN32_ERROR RegEnumKeyEx(
  int hKey,
  int dwIndex,
  PWSTR? lpName,
  Pointer<Uint32> lpcchName,
  PWSTR? lpClass,
  Pointer<Uint32>? lpcchClass,
  Pointer<FILETIME>? lpftLastWriteTime,
) => WIN32_ERROR(
  _RegEnumKeyEx(
    hKey,
    dwIndex,
    lpName ?? nullptr,
    lpcchName,
    nullptr,
    lpClass ?? nullptr,
    lpcchClass ?? nullptr,
    lpftLastWriteTime ?? nullptr,
  ),
);

@Native<
  Uint32 Function(
    HKEY,
    Uint32,
    PWSTR,
    Pointer<Uint32>,
    Pointer<Uint32>,
    PWSTR,
    Pointer<Uint32>,
    Pointer<FILETIME>,
  )
>(symbol: 'RegEnumKeyExW')
external int _RegEnumKeyEx(
  int hKey,
  int dwIndex,
  PWSTR lpName,
  Pointer<Uint32> lpcchName,
  Pointer<Uint32> lpReserved,
  PWSTR lpClass,
  Pointer<Uint32> lpcchClass,
  Pointer<FILETIME> lpftLastWriteTime,
);

/// Enumerates the values for the specified open registry key.
///
/// The function copies one indexed value name and data block for the key each
/// time it is called.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regenumvaluew>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
WIN32_ERROR RegEnumValue(
  int hKey,
  int dwIndex,
  PWSTR? lpValueName,
  Pointer<Uint32> lpcchValueName,
  Pointer<Uint32>? lpType,
  Pointer<Uint8>? lpData,
  Pointer<Uint32>? lpcbData,
) => WIN32_ERROR(
  _RegEnumValue(
    hKey,
    dwIndex,
    lpValueName ?? nullptr,
    lpcchValueName,
    nullptr,
    lpType ?? nullptr,
    lpData ?? nullptr,
    lpcbData ?? nullptr,
  ),
);

@Native<
  Uint32 Function(
    HKEY,
    Uint32,
    PWSTR,
    Pointer<Uint32>,
    Pointer<Uint32>,
    Pointer<Uint32>,
    Pointer<Uint8>,
    Pointer<Uint32>,
  )
>(symbol: 'RegEnumValueW')
external int _RegEnumValue(
  int hKey,
  int dwIndex,
  PWSTR lpValueName,
  Pointer<Uint32> lpcchValueName,
  Pointer<Uint32> lpReserved,
  Pointer<Uint32> lpType,
  Pointer<Uint8> lpData,
  Pointer<Uint32> lpcbData,
);

/// Writes all the attributes of the specified open registry key into the
/// registry.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regflushkey>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
WIN32_ERROR RegFlushKey(int hKey) => WIN32_ERROR(_RegFlushKey(hKey));

@Native<Uint32 Function(HKEY)>(symbol: 'RegFlushKey')
external int _RegFlushKey(int hKey);

/// Retrieves the type and data for the specified registry value.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-reggetvaluew>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
WIN32_ERROR RegGetValue(
  int hkey,
  PCWSTR? lpSubKey,
  PCWSTR? lpValue,
  REG_ROUTINE_FLAGS dwFlags,
  Pointer<Uint32>? pdwType,
  Pointer? pvData,
  Pointer<Uint32>? pcbData,
) => WIN32_ERROR(
  _RegGetValue(
    hkey,
    lpSubKey ?? nullptr,
    lpValue ?? nullptr,
    dwFlags,
    pdwType ?? nullptr,
    pvData ?? nullptr,
    pcbData ?? nullptr,
  ),
);

@Native<
  Uint32 Function(
    HKEY,
    PCWSTR,
    PCWSTR,
    Uint32,
    Pointer<Uint32>,
    Pointer,
    Pointer<Uint32>,
  )
>(symbol: 'RegGetValueW')
external int _RegGetValue(
  int hkey,
  PCWSTR lpSubKey,
  PCWSTR lpValue,
  int dwFlags,
  Pointer<Uint32> pdwType,
  Pointer pvData,
  Pointer<Uint32> pcbData,
);

/// Registers a function to handle service control requests.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-registerservicectrlhandlerw>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
int RegisterServiceCtrlHandler(
  PCWSTR lpServiceName,
  Pointer<NativeFunction<LPHANDLER_FUNCTION>> lpHandlerProc,
) => RegisterServiceCtrlHandlerW_Wrapper(lpServiceName, lpHandlerProc);

/// Registers a function to handle extended service control requests.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-registerservicectrlhandlerexw>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
int RegisterServiceCtrlHandlerEx(
  PCWSTR lpServiceName,
  Pointer<NativeFunction<LPHANDLER_FUNCTION_EX>> lpHandlerProc,
  Pointer? lpContext,
) => RegisterServiceCtrlHandlerExW_Wrapper(
  lpServiceName,
  lpHandlerProc,
  lpContext ?? nullptr,
);

/// Loads the specified registry hive as an application hive.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regloadappkeyw>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
WIN32_ERROR RegLoadAppKey(
  PCWSTR lpFile,
  Pointer<HKEY> phkResult,
  int samDesired,
  int dwOptions,
) =>
    WIN32_ERROR(_RegLoadAppKey(lpFile, phkResult, samDesired, dwOptions, NULL));

@Native<Uint32 Function(PCWSTR, Pointer<HKEY>, Uint32, Uint32, Uint32)>(
  symbol: 'RegLoadAppKeyW',
)
external int _RegLoadAppKey(
  PCWSTR lpFile,
  Pointer<HKEY> phkResult,
  int samDesired,
  int dwOptions,
  int reserved,
);

/// Creates a subkey under HKEY_USERS or HKEY_LOCAL_MACHINE and loads the data
/// from the specified registry hive into that subkey.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regloadkeyw>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
WIN32_ERROR RegLoadKey(int hKey, PCWSTR? lpSubKey, PCWSTR lpFile) =>
    WIN32_ERROR(_RegLoadKey(hKey, lpSubKey ?? nullptr, lpFile));

@Native<Uint32 Function(HKEY, PCWSTR, PCWSTR)>(symbol: 'RegLoadKeyW')
external int _RegLoadKey(int hKey, PCWSTR lpSubKey, PCWSTR lpFile);

/// Loads the specified string from the specified key and subkey.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regloadmuistringw>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
WIN32_ERROR RegLoadMUIString(
  int hKey,
  PCWSTR? pszValue,
  PWSTR? pszOutBuf,
  int cbOutBuf,
  Pointer<Uint32>? pcbData,
  int flags,
  PCWSTR? pszDirectory,
) => WIN32_ERROR(
  _RegLoadMUIString(
    hKey,
    pszValue ?? nullptr,
    pszOutBuf ?? nullptr,
    cbOutBuf,
    pcbData ?? nullptr,
    flags,
    pszDirectory ?? nullptr,
  ),
);

@Native<
  Uint32 Function(HKEY, PCWSTR, PWSTR, Uint32, Pointer<Uint32>, Uint32, PCWSTR)
>(symbol: 'RegLoadMUIStringW')
external int _RegLoadMUIString(
  int hKey,
  PCWSTR pszValue,
  PWSTR pszOutBuf,
  int cbOutBuf,
  Pointer<Uint32> pcbData,
  int flags,
  PCWSTR pszDirectory,
);

/// Notifies the caller about changes to the attributes or contents of a
/// specified registry key.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regnotifychangekeyvalue>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
WIN32_ERROR RegNotifyChangeKeyValue(
  int hKey,
  bool bWatchSubtree,
  REG_NOTIFY_FILTER dwNotifyFilter,
  int? hEvent,
  bool fAsynchronous,
) => WIN32_ERROR(
  _RegNotifyChangeKeyValue(
    hKey,
    bWatchSubtree ? TRUE : FALSE,
    dwNotifyFilter,
    hEvent ?? NULL,
    fAsynchronous ? TRUE : FALSE,
  ),
);

@Native<Uint32 Function(HKEY, BOOL, Uint32, HANDLE, BOOL)>(
  symbol: 'RegNotifyChangeKeyValue',
)
external int _RegNotifyChangeKeyValue(
  int hKey,
  int bWatchSubtree,
  int dwNotifyFilter,
  int hEvent,
  int fAsynchronous,
);

/// Retrieves a handle to the HKEY_CURRENT_USER key for the user the current
/// thread is impersonating.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regopencurrentuser>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
WIN32_ERROR RegOpenCurrentUser(int samDesired, Pointer<HKEY> phkResult) =>
    WIN32_ERROR(_RegOpenCurrentUser(samDesired, phkResult));

@Native<Uint32 Function(Uint32, Pointer<HKEY>)>(symbol: 'RegOpenCurrentUser')
external int _RegOpenCurrentUser(int samDesired, Pointer<HKEY> phkResult);

/// Opens the specified registry key.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regopenkeyw>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
WIN32_ERROR RegOpenKey(int hKey, PCWSTR? lpSubKey, Pointer<HKEY> phkResult) =>
    WIN32_ERROR(_RegOpenKey(hKey, lpSubKey ?? nullptr, phkResult));

@Native<Uint32 Function(HKEY, PCWSTR, Pointer<HKEY>)>(symbol: 'RegOpenKeyW')
external int _RegOpenKey(int hKey, PCWSTR lpSubKey, Pointer<HKEY> phkResult);

/// Opens the specified registry key.
///
/// Note that key names are not case sensitive.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regopenkeyexw>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
WIN32_ERROR RegOpenKeyEx(
  int hKey,
  PCWSTR? lpSubKey,
  int? ulOptions,
  REG_SAM_FLAGS samDesired,
  Pointer<HKEY> phkResult,
) => WIN32_ERROR(
  _RegOpenKeyEx(
    hKey,
    lpSubKey ?? nullptr,
    ulOptions ?? NULL,
    samDesired,
    phkResult,
  ),
);

@Native<Uint32 Function(HKEY, PCWSTR, Uint32, Uint32, Pointer<HKEY>)>(
  symbol: 'RegOpenKeyExW',
)
external int _RegOpenKeyEx(
  int hKey,
  PCWSTR lpSubKey,
  int ulOptions,
  int samDesired,
  Pointer<HKEY> phkResult,
);

/// Opens the specified registry key and associates it with a transaction.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regopenkeytransactedw>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
WIN32_ERROR RegOpenKeyTransacted(
  int hKey,
  PCWSTR? lpSubKey,
  int? ulOptions,
  REG_SAM_FLAGS samDesired,
  Pointer<HKEY> phkResult,
  int hTransaction,
) => WIN32_ERROR(
  _RegOpenKeyTransacted(
    hKey,
    lpSubKey ?? nullptr,
    ulOptions ?? NULL,
    samDesired,
    phkResult,
    hTransaction,
    nullptr,
  ),
);

@Native<
  Uint32 Function(HKEY, PCWSTR, Uint32, Uint32, Pointer<HKEY>, HANDLE, Pointer)
>(symbol: 'RegOpenKeyTransactedW')
external int _RegOpenKeyTransacted(
  int hKey,
  PCWSTR lpSubKey,
  int ulOptions,
  int samDesired,
  Pointer<HKEY> phkResult,
  int hTransaction,
  Pointer pExtendedParemeter,
);

/// Retrieves a handle to the HKEY_CLASSES_ROOT key for a specified user.
///
/// The user is identified by an access token.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regopenuserclassesroot>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
WIN32_ERROR RegOpenUserClassesRoot(
  int hToken,
  int samDesired,
  Pointer<HKEY> phkResult,
) => WIN32_ERROR(_RegOpenUserClassesRoot(hToken, NULL, samDesired, phkResult));

@Native<Uint32 Function(HANDLE, Uint32, Uint32, Pointer<HKEY>)>(
  symbol: 'RegOpenUserClassesRoot',
)
external int _RegOpenUserClassesRoot(
  int hToken,
  int dwOptions,
  int samDesired,
  Pointer<HKEY> phkResult,
);

/// Maps a predefined registry key to the specified registry key.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regoverridepredefkey>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
WIN32_ERROR RegOverridePredefKey(int hKey, int? hNewHKey) =>
    WIN32_ERROR(_RegOverridePredefKey(hKey, hNewHKey ?? NULL));

@Native<Uint32 Function(HKEY, HKEY)>(symbol: 'RegOverridePredefKey')
external int _RegOverridePredefKey(int hKey, int hNewHKey);

/// Retrieves information about the specified registry key.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regqueryinfokeyw>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
WIN32_ERROR RegQueryInfoKey(
  int hKey,
  PWSTR? lpClass,
  Pointer<Uint32>? lpcchClass,
  Pointer<Uint32>? lpcSubKeys,
  Pointer<Uint32>? lpcbMaxSubKeyLen,
  Pointer<Uint32>? lpcbMaxClassLen,
  Pointer<Uint32>? lpcValues,
  Pointer<Uint32>? lpcbMaxValueNameLen,
  Pointer<Uint32>? lpcbMaxValueLen,
  Pointer<Uint32>? lpcbSecurityDescriptor,
  Pointer<FILETIME>? lpftLastWriteTime,
) => WIN32_ERROR(
  _RegQueryInfoKey(
    hKey,
    lpClass ?? nullptr,
    lpcchClass ?? nullptr,
    nullptr,
    lpcSubKeys ?? nullptr,
    lpcbMaxSubKeyLen ?? nullptr,
    lpcbMaxClassLen ?? nullptr,
    lpcValues ?? nullptr,
    lpcbMaxValueNameLen ?? nullptr,
    lpcbMaxValueLen ?? nullptr,
    lpcbSecurityDescriptor ?? nullptr,
    lpftLastWriteTime ?? nullptr,
  ),
);

@Native<
  Uint32 Function(
    HKEY,
    PWSTR,
    Pointer<Uint32>,
    Pointer<Uint32>,
    Pointer<Uint32>,
    Pointer<Uint32>,
    Pointer<Uint32>,
    Pointer<Uint32>,
    Pointer<Uint32>,
    Pointer<Uint32>,
    Pointer<Uint32>,
    Pointer<FILETIME>,
  )
>(symbol: 'RegQueryInfoKeyW')
external int _RegQueryInfoKey(
  int hKey,
  PWSTR lpClass,
  Pointer<Uint32> lpcchClass,
  Pointer<Uint32> lpReserved,
  Pointer<Uint32> lpcSubKeys,
  Pointer<Uint32> lpcbMaxSubKeyLen,
  Pointer<Uint32> lpcbMaxClassLen,
  Pointer<Uint32> lpcValues,
  Pointer<Uint32> lpcbMaxValueNameLen,
  Pointer<Uint32> lpcbMaxValueLen,
  Pointer<Uint32> lpcbSecurityDescriptor,
  Pointer<FILETIME> lpftLastWriteTime,
);

/// Retrieves the type and data for a list of value names associated with an
/// open registry key.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regquerymultiplevaluesw>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
WIN32_ERROR RegQueryMultipleValues(
  int hKey,
  Pointer<VALENT> val_list,
  int num_vals,
  PWSTR? lpValueBuf,
  Pointer<Uint32>? ldwTotsize,
) => WIN32_ERROR(
  _RegQueryMultipleValues(
    hKey,
    val_list,
    num_vals,
    lpValueBuf ?? nullptr,
    ldwTotsize ?? nullptr,
  ),
);

@Native<Uint32 Function(HKEY, Pointer<VALENT>, Uint32, PWSTR, Pointer<Uint32>)>(
  symbol: 'RegQueryMultipleValuesW',
)
external int _RegQueryMultipleValues(
  int hKey,
  Pointer<VALENT> val_list,
  int num_vals,
  PWSTR lpValueBuf,
  Pointer<Uint32> ldwTotsize,
);

/// Determines whether reflection has been disabled or enabled for the specified
/// key.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regqueryreflectionkey>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
WIN32_ERROR RegQueryReflectionKey(
  int hBase,
  Pointer<BOOL> bIsReflectionDisabled,
) => WIN32_ERROR(_RegQueryReflectionKey(hBase, bIsReflectionDisabled));

@Native<Uint32 Function(HKEY, Pointer<BOOL>)>(symbol: 'RegQueryReflectionKey')
external int _RegQueryReflectionKey(
  int hBase,
  Pointer<BOOL> bIsReflectionDisabled,
);

/// Retrieves the data associated with the default or unnamed value of a
/// specified registry key.
///
/// The data must be a null-terminated string.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regqueryvaluew>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
WIN32_ERROR RegQueryValue(
  int hKey,
  PCWSTR? lpSubKey,
  PWSTR? lpData,
  Pointer<Int32>? lpcbData,
) => WIN32_ERROR(
  _RegQueryValue(
    hKey,
    lpSubKey ?? nullptr,
    lpData ?? nullptr,
    lpcbData ?? nullptr,
  ),
);

@Native<Uint32 Function(HKEY, PCWSTR, PWSTR, Pointer<Int32>)>(
  symbol: 'RegQueryValueW',
)
external int _RegQueryValue(
  int hKey,
  PCWSTR lpSubKey,
  PWSTR lpData,
  Pointer<Int32> lpcbData,
);

/// Retrieves the type and data for the specified value name associated with an
/// open registry key.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regqueryvalueexw>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
WIN32_ERROR RegQueryValueEx(
  int hKey,
  PCWSTR? lpValueName,
  Pointer<Uint32>? lpType,
  Pointer<Uint8>? lpData,
  Pointer<Uint32>? lpcbData,
) => WIN32_ERROR(
  _RegQueryValueEx(
    hKey,
    lpValueName ?? nullptr,
    nullptr,
    lpType ?? nullptr,
    lpData ?? nullptr,
    lpcbData ?? nullptr,
  ),
);

@Native<
  Uint32 Function(
    HKEY,
    PCWSTR,
    Pointer<Uint32>,
    Pointer<Uint32>,
    Pointer<Uint8>,
    Pointer<Uint32>,
  )
>(symbol: 'RegQueryValueExW')
external int _RegQueryValueEx(
  int hKey,
  PCWSTR lpValueName,
  Pointer<Uint32> lpReserved,
  Pointer<Uint32> lpType,
  Pointer<Uint8> lpData,
  Pointer<Uint32> lpcbData,
);

/// Changes the name of the specified registry key.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regrenamekey>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
WIN32_ERROR RegRenameKey(int hKey, PCWSTR? lpSubKeyName, PCWSTR lpNewKeyName) =>
    WIN32_ERROR(_RegRenameKey(hKey, lpSubKeyName ?? nullptr, lpNewKeyName));

@Native<Uint32 Function(HKEY, PCWSTR, PCWSTR)>(symbol: 'RegRenameKey')
external int _RegRenameKey(int hKey, PCWSTR lpSubKeyName, PCWSTR lpNewKeyName);

/// Replaces the file backing a registry key and all its subkeys with another
/// file, so that when the system is next started, the key and subkeys will have
/// the values stored in the new file.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regreplacekeyw>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
WIN32_ERROR RegReplaceKey(
  int hKey,
  PCWSTR? lpSubKey,
  PCWSTR lpNewFile,
  PCWSTR lpOldFile,
) => WIN32_ERROR(
  _RegReplaceKey(hKey, lpSubKey ?? nullptr, lpNewFile, lpOldFile),
);

@Native<Uint32 Function(HKEY, PCWSTR, PCWSTR, PCWSTR)>(symbol: 'RegReplaceKeyW')
external int _RegReplaceKey(
  int hKey,
  PCWSTR lpSubKey,
  PCWSTR lpNewFile,
  PCWSTR lpOldFile,
);

/// Reads the registry information in a specified file and copies it over the
/// specified key.
///
/// This registry information may be in the form of a key and multiple levels of
/// subkeys.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regrestorekeyw>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
WIN32_ERROR RegRestoreKey(
  int hKey,
  PCWSTR lpFile,
  REG_RESTORE_KEY_FLAGS dwFlags,
) => WIN32_ERROR(_RegRestoreKey(hKey, lpFile, dwFlags));

@Native<Uint32 Function(HKEY, PCWSTR, Uint32)>(symbol: 'RegRestoreKeyW')
external int _RegRestoreKey(int hKey, PCWSTR lpFile, int dwFlags);

/// Saves the specified key and all of its subkeys and values to a new file, in
/// the standard format.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regsavekeyw>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
WIN32_ERROR RegSaveKey(
  int hKey,
  PCWSTR lpFile,
  Pointer<SECURITY_ATTRIBUTES>? lpSecurityAttributes,
) => WIN32_ERROR(_RegSaveKey(hKey, lpFile, lpSecurityAttributes ?? nullptr));

@Native<Uint32 Function(HKEY, PCWSTR, Pointer<SECURITY_ATTRIBUTES>)>(
  symbol: 'RegSaveKeyW',
)
external int _RegSaveKey(
  int hKey,
  PCWSTR lpFile,
  Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
);

/// Saves the specified key and all of its subkeys and values to a registry
/// file, in the specified format.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regsavekeyexw>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
WIN32_ERROR RegSaveKeyEx(
  int hKey,
  PCWSTR lpFile,
  Pointer<SECURITY_ATTRIBUTES>? lpSecurityAttributes,
  REG_SAVE_FORMAT flags,
) => WIN32_ERROR(
  _RegSaveKeyEx(hKey, lpFile, lpSecurityAttributes ?? nullptr, flags),
);

@Native<Uint32 Function(HKEY, PCWSTR, Pointer<SECURITY_ATTRIBUTES>, Uint32)>(
  symbol: 'RegSaveKeyExW',
)
external int _RegSaveKeyEx(
  int hKey,
  PCWSTR lpFile,
  Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
  int flags,
);

/// Sets the data for the specified value in the specified registry key and
/// subkey.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regsetkeyvaluew>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
WIN32_ERROR RegSetKeyValue(
  int hKey,
  PCWSTR? lpSubKey,
  PCWSTR? lpValueName,
  int dwType,
  Pointer? lpData,
  int cbData,
) => WIN32_ERROR(
  _RegSetKeyValue(
    hKey,
    lpSubKey ?? nullptr,
    lpValueName ?? nullptr,
    dwType,
    lpData ?? nullptr,
    cbData,
  ),
);

@Native<Uint32 Function(HKEY, PCWSTR, PCWSTR, Uint32, Pointer, Uint32)>(
  symbol: 'RegSetKeyValueW',
)
external int _RegSetKeyValue(
  int hKey,
  PCWSTR lpSubKey,
  PCWSTR lpValueName,
  int dwType,
  Pointer lpData,
  int cbData,
);

/// Sets the data for the default or unnamed value of a specified registry key.
///
/// The data must be a text string.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regsetvaluew>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
WIN32_ERROR RegSetValue(
  int hKey,
  PCWSTR? lpSubKey,
  REG_VALUE_TYPE dwType,
  PCWSTR? lpData,
  int cbData,
) => WIN32_ERROR(
  _RegSetValue(hKey, lpSubKey ?? nullptr, dwType, lpData ?? nullptr, cbData),
);

@Native<Uint32 Function(HKEY, PCWSTR, Uint32, PCWSTR, Uint32)>(
  symbol: 'RegSetValueW',
)
external int _RegSetValue(
  int hKey,
  PCWSTR lpSubKey,
  int dwType,
  PCWSTR lpData,
  int cbData,
);

/// Sets the data and type of a specified value under a registry key.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regsetvalueexw>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
WIN32_ERROR RegSetValueEx(
  int hKey,
  PCWSTR? lpValueName,
  REG_VALUE_TYPE dwType,
  Pointer<Uint8>? lpData,
  int cbData,
) => WIN32_ERROR(
  _RegSetValueEx(
    hKey,
    lpValueName ?? nullptr,
    NULL,
    dwType,
    lpData ?? nullptr,
    cbData,
  ),
);

@Native<Uint32 Function(HKEY, PCWSTR, Uint32, Uint32, Pointer<Uint8>, Uint32)>(
  symbol: 'RegSetValueExW',
)
external int _RegSetValueEx(
  int hKey,
  PCWSTR lpValueName,
  int reserved,
  int dwType,
  Pointer<Uint8> lpData,
  int cbData,
);

/// Unloads the specified registry key and its subkeys from the registry.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regunloadkeyw>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
WIN32_ERROR RegUnLoadKey(int hKey, PCWSTR? lpSubKey) =>
    WIN32_ERROR(_RegUnLoadKey(hKey, lpSubKey ?? nullptr));

@Native<Uint32 Function(HKEY, PCWSTR)>(symbol: 'RegUnLoadKeyW')
external int _RegUnLoadKey(int hKey, PCWSTR lpSubKey);

/// Sets the security descriptor of a service object.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-setserviceobjectsecurity>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
bool SetServiceObjectSecurity(
  int hService,
  OBJECT_SECURITY_INFORMATION dwSecurityInformation,
  int lpSecurityDescriptor,
) =>
    SetServiceObjectSecurity_Wrapper(
      hService,
      dwSecurityInformation,
      lpSecurityDescriptor,
    ) !=
    FALSE;

/// Updates the service control manager's status information for the calling
/// service.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-setservicestatus>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
bool SetServiceStatus(
  int hServiceStatus,
  Pointer<SERVICE_STATUS> lpServiceStatus,
) => SetServiceStatus_Wrapper(hServiceStatus, lpServiceStatus) != FALSE;

/// Assigns an impersonation token to a thread.
///
/// The function can also cause a thread to stop using an impersonation token.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-setthreadtoken>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
bool SetThreadToken(Pointer<HANDLE>? thread, int? token) =>
    SetThreadToken_Wrapper(thread ?? nullptr, token ?? NULL) != FALSE;

/// Starts a service.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-startservicew>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
bool StartService(
  int hService,
  int dwNumServiceArgs,
  Pointer<PCWSTR>? lpServiceArgVectors,
) =>
    StartServiceW_Wrapper(
      hService,
      dwNumServiceArgs,
      lpServiceArgVectors ?? nullptr,
    ) !=
    FALSE;

/// Connects the main thread of a service process to the service control
/// manager, which causes the thread to be the service control dispatcher thread
/// for the calling process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-startservicectrldispatcherw>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
bool StartServiceCtrlDispatcher(
  Pointer<SERVICE_TABLE_ENTRY> lpServiceStartTable,
) => StartServiceCtrlDispatcherW_Wrapper(lpServiceStartTable) != FALSE;
