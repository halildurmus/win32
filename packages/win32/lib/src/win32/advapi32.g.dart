// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Maps FFI prototypes onto the corresponding Win32 API function calls.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';

import '../_internal/advapi32.g.dart';
import '../_internal/win32.dart';
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
import '../rpc_status.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import '../win32_error.dart';
import '../win32_result.dart';

/// Changes the optional configuration parameters of a service.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-changeserviceconfig2w>.
///
/// {@category advapi32}
Win32Result<bool> ChangeServiceConfig2(
  SC_HANDLE hService,
  SERVICE_CONFIG dwInfoLevel,
  Pointer? lpInfo,
) {
  final result_ = ChangeServiceConfig2W_Wrapper(
    hService,
    dwInfoLevel,
    lpInfo ?? nullptr,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Closes a handle to a service control manager or service object.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-closeservicehandle>.
///
/// {@category advapi32}
Win32Result<bool> CloseServiceHandle(SC_HANDLE hSCObject) {
  final result_ = CloseServiceHandle_Wrapper(hSCObject);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Closes a trace processing session that was created with OpenTrace.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/evntrace/nf-evntrace-closetrace>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
WIN32_ERROR CloseTrace(PROCESSTRACE_HANDLE traceHandle) =>
    WIN32_ERROR(_CloseTrace(traceHandle));

@Native<Uint32 Function(Uint64)>(symbol: 'CloseTrace')
external int _CloseTrace(int traceHandle);

/// Sends a control code to a service.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-controlservice>.
///
/// {@category advapi32}
Win32Result<bool> ControlService(
  SC_HANDLE hService,
  int dwControl,
  Pointer<SERVICE_STATUS> lpServiceStatus,
) {
  final result_ = ControlService_Wrapper(hService, dwControl, lpServiceStatus);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Sends a control code to a service.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-controlserviceexw>.
///
/// {@category advapi32}
Win32Result<bool> ControlServiceEx(
  SC_HANDLE hService,
  int dwControl,
  int dwInfoLevel,
  Pointer pControlParams,
) {
  final result_ = ControlServiceExW_Wrapper(
    hService,
    dwControl,
    dwInfoLevel,
    pControlParams,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Deletes a credential from the user's credential set.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wincred/nf-wincred-creddeletew>.
///
/// {@category advapi32}
Win32Result<bool> CredDelete(PCWSTR targetName, CRED_TYPE type) {
  final result_ = CredDeleteW_Wrapper(targetName, type, NULL);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

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
Win32Result<bool> CredRead(
  PCWSTR targetName,
  CRED_TYPE type,
  Pointer<Pointer<CREDENTIAL>> credential,
) {
  final result_ = CredReadW_Wrapper(targetName, type, NULL, credential);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Creates a new credential or modifies an existing credential in the user's
/// credential set.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wincred/nf-wincred-credwritew>.
///
/// {@category advapi32}
Win32Result<bool> CredWrite(Pointer<CREDENTIAL> credential, int flags) {
  final result_ = CredWriteW_Wrapper(credential, flags);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Decrypts an encrypted file or directory.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-decryptfilew>.
///
/// {@category advapi32}
Win32Result<bool> DecryptFile(PCWSTR lpFileName) {
  final result_ = DecryptFileW_Wrapper(lpFileName, NULL);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Marks the specified service for deletion from the service control manager
/// database.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-deleteservice>.
///
/// {@category advapi32}
Win32Result<bool> DeleteService(SC_HANDLE hService) {
  final result_ = DeleteService_Wrapper(hService);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Encrypts a file or directory.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-encryptfilew>.
///
/// {@category advapi32}
Win32Result<bool> EncryptFile(PCWSTR lpFileName) {
  final result_ = EncryptFileW_Wrapper(lpFileName);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves the name and status of each service that depends on the specified
/// service.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-enumdependentservicesw>.
///
/// {@category advapi32}
Win32Result<bool> EnumDependentServices(
  SC_HANDLE hService,
  ENUM_SERVICE_STATE dwServiceState,
  Pointer<ENUM_SERVICE_STATUS>? lpServices,
  int cbBufSize,
  Pointer<Uint32> pcbBytesNeeded,
  Pointer<Uint32> lpServicesReturned,
) {
  final result_ = EnumDependentServicesW_Wrapper(
    hService,
    dwServiceState,
    lpServices ?? nullptr,
    cbBufSize,
    pcbBytesNeeded,
    lpServicesReturned,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Enumerates services in the specified service control manager database.
///
/// The name and status of each service are provided.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-enumservicesstatusw>.
///
/// {@category advapi32}
Win32Result<bool> EnumServicesStatus(
  SC_HANDLE hSCManager,
  ENUM_SERVICE_TYPE dwServiceType,
  ENUM_SERVICE_STATE dwServiceState,
  Pointer<ENUM_SERVICE_STATUS>? lpServices,
  int cbBufSize,
  Pointer<Uint32> pcbBytesNeeded,
  Pointer<Uint32> lpServicesReturned,
  Pointer<Uint32>? lpResumeHandle,
) {
  final result_ = EnumServicesStatusW_Wrapper(
    hSCManager,
    dwServiceType,
    dwServiceState,
    lpServices ?? nullptr,
    cbBufSize,
    pcbBytesNeeded,
    lpServicesReturned,
    lpResumeHandle ?? nullptr,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Enumerates services in the specified service control manager database.
///
/// The name and status of each service are provided, along with additional data
/// based on the specified information level.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-enumservicesstatusexw>.
///
/// {@category advapi32}
Win32Result<bool> EnumServicesStatusEx(
  SC_HANDLE hSCManager,
  SC_ENUM_TYPE infoLevel,
  ENUM_SERVICE_TYPE dwServiceType,
  ENUM_SERVICE_STATE dwServiceState,
  Pointer<Uint8>? lpServices,
  int cbBufSize,
  Pointer<Uint32> pcbBytesNeeded,
  Pointer<Uint32> lpServicesReturned,
  Pointer<Uint32>? lpResumeHandle,
  PCWSTR? pszGroupName,
) {
  final result_ = EnumServicesStatusExW_Wrapper(
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
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves the encryption status of the specified file.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-fileencryptionstatusw>.
///
/// {@category advapi32}
Win32Result<bool> FileEncryptionStatus(
  PCWSTR lpFileName,
  Pointer<Uint32> lpStatus,
) {
  final result_ = FileEncryptionStatusW_Wrapper(lpFileName, lpStatus);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves the display name of the specified service.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-getservicedisplaynamew>.
///
/// {@category advapi32}
Win32Result<bool> GetServiceDisplayName(
  SC_HANDLE hSCManager,
  PCWSTR lpServiceName,
  PWSTR? lpDisplayName,
  Pointer<Uint32> lpcchBuffer,
) {
  final result_ = GetServiceDisplayNameW_Wrapper(
    hSCManager,
    lpServiceName,
    lpDisplayName ?? nullptr,
    lpcchBuffer,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves the service name of the specified service.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-getservicekeynamew>.
///
/// {@category advapi32}
Win32Result<bool> GetServiceKeyName(
  SC_HANDLE hSCManager,
  PCWSTR lpDisplayName,
  PWSTR? lpServiceName,
  Pointer<Uint32> lpcchBuffer,
) {
  final result_ = GetServiceKeyNameW_Wrapper(
    hSCManager,
    lpDisplayName,
    lpServiceName ?? nullptr,
    lpcchBuffer,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves a specified type of information about an access token.
///
/// The calling process must have appropriate access rights to obtain the
/// information.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/securitybaseapi/nf-securitybaseapi-gettokeninformation>.
///
/// {@category advapi32}
Win32Result<bool> GetTokenInformation(
  HANDLE tokenHandle,
  TOKEN_INFORMATION_CLASS tokenInformationClass,
  Pointer? tokenInformation,
  int tokenInformationLength,
  Pointer<Uint32> returnLength,
) {
  final result_ = GetTokenInformation_Wrapper(
    tokenHandle,
    tokenInformationClass,
    tokenInformation ?? nullptr,
    tokenInformationLength,
    returnLength,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves the name of the user associated with the current thread.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-getusernamew>.
///
/// {@category advapi32}
Win32Result<bool> GetUserName(PWSTR? lpBuffer, Pointer<Uint32> pcbBuffer) {
  final result_ = GetUserNameW_Wrapper(lpBuffer ?? nullptr, pcbBuffer);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

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

@Native<
  Uint32 Function(Pointer<Utf16>, Pointer<Utf16>, Uint32, Uint32, Uint32)
>(symbol: 'InitiateShutdownW')
external int _InitiateShutdown(
  Pointer<Utf16> lpMachineName,
  Pointer<Utf16> lpMessage,
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
Win32Result<bool> NotifyBootConfigStatus(bool bootAcceptable) {
  final result_ = NotifyBootConfigStatus_Wrapper(bootAcceptable ? TRUE : FALSE);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Enables an application to receive notification when the specified service is
/// created or deleted or when its status changes.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-notifyservicestatuschangew>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
int NotifyServiceStatusChange(
  SC_HANDLE hService,
  SERVICE_NOTIFY dwNotifyMask,
  Pointer<SERVICE_NOTIFY_2> pNotifyBuffer,
) => _NotifyServiceStatusChange(hService, dwNotifyMask, pNotifyBuffer);

@Native<Uint32 Function(Pointer, Uint32, Pointer<SERVICE_NOTIFY_2>)>(
  symbol: 'NotifyServiceStatusChangeW',
)
external int _NotifyServiceStatusChange(
  Pointer hService,
  int dwNotifyMask,
  Pointer<SERVICE_NOTIFY_2> pNotifyBuffer,
);

/// Opens the access token associated with a process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-openprocesstoken>.
///
/// {@category advapi32}
Win32Result<bool> OpenProcessToken(
  HANDLE processHandle,
  TOKEN_ACCESS_MASK desiredAccess,
  Pointer<Pointer> tokenHandle,
) {
  final result_ = OpenProcessToken_Wrapper(
    processHandle,
    desiredAccess,
    tokenHandle,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Establishes a connection to the service control manager on the specified
/// computer and opens the specified service control manager database.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-openscmanagerw>.
///
/// {@category advapi32}
Win32Result<SC_HANDLE> OpenSCManager(
  PCWSTR? lpMachineName,
  PCWSTR? lpDatabaseName,
  int dwDesiredAccess,
) {
  final result_ = OpenSCManagerW_Wrapper(
    lpMachineName ?? nullptr,
    lpDatabaseName ?? nullptr,
    dwDesiredAccess,
  );
  return Win32Result(value: SC_HANDLE(result_.value.ptr), error: result_.error);
}

/// Opens an existing service.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-openservicew>.
///
/// {@category advapi32}
Win32Result<SC_HANDLE> OpenService(
  SC_HANDLE hSCManager,
  PCWSTR lpServiceName,
  int dwDesiredAccess,
) {
  final result_ = OpenServiceW_Wrapper(
    hSCManager,
    lpServiceName,
    dwDesiredAccess,
  );
  return Win32Result(value: SC_HANDLE(result_.value.ptr), error: result_.error);
}

/// Opens the access token associated with a thread.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-openthreadtoken>.
///
/// {@category advapi32}
Win32Result<bool> OpenThreadToken(
  HANDLE threadHandle,
  TOKEN_ACCESS_MASK desiredAccess,
  bool openAsSelf,
  Pointer<Pointer> tokenHandle,
) {
  final result_ = OpenThreadToken_Wrapper(
    threadHandle,
    desiredAccess,
    openAsSelf ? TRUE : FALSE,
    tokenHandle,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves the configuration parameters of the specified service.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-queryserviceconfigw>.
///
/// {@category advapi32}
Win32Result<bool> QueryServiceConfig(
  SC_HANDLE hService,
  Pointer<QUERY_SERVICE_CONFIG>? lpServiceConfig,
  int cbBufSize,
  Pointer<Uint32> pcbBytesNeeded,
) {
  final result_ = QueryServiceConfigW_Wrapper(
    hService,
    lpServiceConfig ?? nullptr,
    cbBufSize,
    pcbBytesNeeded,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves the optional configuration parameters of the specified service.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-queryserviceconfig2w>.
///
/// {@category advapi32}
Win32Result<bool> QueryServiceConfig2(
  SC_HANDLE hService,
  SERVICE_CONFIG dwInfoLevel,
  Pointer<Uint8>? lpBuffer,
  int cbBufSize,
  Pointer<Uint32> pcbBytesNeeded,
) {
  final result_ = QueryServiceConfig2W_Wrapper(
    hService,
    dwInfoLevel,
    lpBuffer ?? nullptr,
    cbBufSize,
    pcbBytesNeeded,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves dynamic information related to the current service start.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-queryservicedynamicinformation>.
///
/// {@category advapi32}
Win32Result<bool> QueryServiceDynamicInformation(
  SERVICE_STATUS_HANDLE hServiceStatus,
  int dwInfoLevel,
  Pointer<Pointer> ppDynamicInfo,
) {
  final result_ = QueryServiceDynamicInformation_Wrapper(
    hServiceStatus,
    dwInfoLevel,
    ppDynamicInfo,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves a copy of the security descriptor associated with a service
/// object.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-queryserviceobjectsecurity>.
///
/// {@category advapi32}
Win32Result<bool> QueryServiceObjectSecurity(
  SC_HANDLE hService,
  int dwSecurityInformation,
  PSECURITY_DESCRIPTOR? lpSecurityDescriptor,
  int cbBufSize,
  Pointer<Uint32> pcbBytesNeeded,
) {
  final result_ = QueryServiceObjectSecurity_Wrapper(
    hService,
    dwSecurityInformation,
    lpSecurityDescriptor ?? nullptr,
    cbBufSize,
    pcbBytesNeeded,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves the current status of the specified service.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-queryservicestatus>.
///
/// {@category advapi32}
Win32Result<bool> QueryServiceStatus(
  SC_HANDLE hService,
  Pointer<SERVICE_STATUS> lpServiceStatus,
) {
  final result_ = QueryServiceStatus_Wrapper(hService, lpServiceStatus);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves the current status of the specified service based on the specified
/// information level.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-queryservicestatusex>.
///
/// {@category advapi32}
Win32Result<bool> QueryServiceStatusEx(
  SC_HANDLE hService,
  SC_STATUS_TYPE infoLevel,
  Pointer<Uint8>? lpBuffer,
  int cbBufSize,
  Pointer<Uint32> pcbBytesNeeded,
) {
  final result_ = QueryServiceStatusEx_Wrapper(
    hService,
    infoLevel,
    lpBuffer ?? nullptr,
    cbBufSize,
    pcbBytesNeeded,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Closes a handle to the specified registry key.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regclosekey>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
WIN32_ERROR RegCloseKey(HKEY hKey) => WIN32_ERROR(_RegCloseKey(hKey));

@Native<Uint32 Function(Pointer)>(symbol: 'RegCloseKey')
external int _RegCloseKey(Pointer hKey);

/// Establishes a connection to a predefined registry key on another computer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regconnectregistryw>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
WIN32_ERROR RegConnectRegistry(
  PCWSTR? lpMachineName,
  HKEY hKey,
  Pointer<Pointer> phkResult,
) =>
    WIN32_ERROR(_RegConnectRegistry(lpMachineName ?? nullptr, hKey, phkResult));

@Native<Uint32 Function(Pointer<Utf16>, Pointer, Pointer<Pointer>)>(
  symbol: 'RegConnectRegistryW',
)
external int _RegConnectRegistry(
  Pointer<Utf16> lpMachineName,
  Pointer hKey,
  Pointer<Pointer> phkResult,
);

/// Copies the specified registry key, along with its values and subkeys, to the
/// specified destination key.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regcopytreew>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
WIN32_ERROR RegCopyTree(HKEY hKeySrc, PCWSTR? lpSubKey, HKEY hKeyDest) =>
    WIN32_ERROR(_RegCopyTree(hKeySrc, lpSubKey ?? nullptr, hKeyDest));

@Native<Uint32 Function(Pointer, Pointer<Utf16>, Pointer)>(
  symbol: 'RegCopyTreeW',
)
external int _RegCopyTree(
  Pointer hKeySrc,
  Pointer<Utf16> lpSubKey,
  Pointer hKeyDest,
);

/// Creates the specified registry key.
///
/// If the key already exists in the registry, the function opens it.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regcreatekeyw>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
WIN32_ERROR RegCreateKey(
  HKEY hKey,
  PCWSTR? lpSubKey,
  Pointer<Pointer> phkResult,
) => WIN32_ERROR(_RegCreateKey(hKey, lpSubKey ?? nullptr, phkResult));

@Native<Uint32 Function(Pointer, Pointer<Utf16>, Pointer<Pointer>)>(
  symbol: 'RegCreateKeyW',
)
external int _RegCreateKey(
  Pointer hKey,
  Pointer<Utf16> lpSubKey,
  Pointer<Pointer> phkResult,
);

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
  HKEY hKey,
  PCWSTR lpSubKey,
  PCWSTR? lpClass,
  REG_OPEN_CREATE_OPTIONS dwOptions,
  REG_SAM_FLAGS samDesired,
  Pointer<SECURITY_ATTRIBUTES>? lpSecurityAttributes,
  Pointer<Pointer> phkResult,
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
    Pointer,
    Pointer<Utf16>,
    Uint32,
    Pointer<Utf16>,
    Uint32,
    Uint32,
    Pointer<SECURITY_ATTRIBUTES>,
    Pointer<Pointer>,
    Pointer<Uint32>,
  )
>(symbol: 'RegCreateKeyExW')
external int _RegCreateKeyEx(
  Pointer hKey,
  Pointer<Utf16> lpSubKey,
  int reserved,
  Pointer<Utf16> lpClass,
  int dwOptions,
  int samDesired,
  Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
  Pointer<Pointer> phkResult,
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
  HKEY hKey,
  PCWSTR lpSubKey,
  PCWSTR? lpClass,
  REG_OPEN_CREATE_OPTIONS dwOptions,
  REG_SAM_FLAGS samDesired,
  Pointer<SECURITY_ATTRIBUTES>? lpSecurityAttributes,
  Pointer<Pointer> phkResult,
  Pointer<Uint32>? lpdwDisposition,
  HANDLE hTransaction,
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
    Pointer,
    Pointer<Utf16>,
    Uint32,
    Pointer<Utf16>,
    Uint32,
    Uint32,
    Pointer<SECURITY_ATTRIBUTES>,
    Pointer<Pointer>,
    Pointer<Uint32>,
    Pointer,
    Pointer,
  )
>(symbol: 'RegCreateKeyTransactedW')
external int _RegCreateKeyTransacted(
  Pointer hKey,
  Pointer<Utf16> lpSubKey,
  int reserved,
  Pointer<Utf16> lpClass,
  int dwOptions,
  int samDesired,
  Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
  Pointer<Pointer> phkResult,
  Pointer<Uint32> lpdwDisposition,
  Pointer hTransaction,
  Pointer pExtendedParemeter,
);

/// Deletes a subkey and its values.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regdeletekeyw>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
WIN32_ERROR RegDeleteKey(HKEY hKey, PCWSTR lpSubKey) =>
    WIN32_ERROR(_RegDeleteKey(hKey, lpSubKey));

@Native<Uint32 Function(Pointer, Pointer<Utf16>)>(symbol: 'RegDeleteKeyW')
external int _RegDeleteKey(Pointer hKey, Pointer<Utf16> lpSubKey);

/// Deletes a subkey and its values from the specified platform-specific view of
/// the registry.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regdeletekeyexw>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
WIN32_ERROR RegDeleteKeyEx(HKEY hKey, PCWSTR lpSubKey, int samDesired) =>
    WIN32_ERROR(_RegDeleteKeyEx(hKey, lpSubKey, samDesired, NULL));

@Native<Uint32 Function(Pointer, Pointer<Utf16>, Uint32, Uint32)>(
  symbol: 'RegDeleteKeyExW',
)
external int _RegDeleteKeyEx(
  Pointer hKey,
  Pointer<Utf16> lpSubKey,
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
  HKEY hKey,
  PCWSTR lpSubKey,
  int samDesired,
  HANDLE hTransaction,
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

@Native<
  Uint32 Function(Pointer, Pointer<Utf16>, Uint32, Uint32, Pointer, Pointer)
>(symbol: 'RegDeleteKeyTransactedW')
external int _RegDeleteKeyTransacted(
  Pointer hKey,
  Pointer<Utf16> lpSubKey,
  int samDesired,
  int reserved,
  Pointer hTransaction,
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
  HKEY hKey,
  PCWSTR? lpSubKey,
  PCWSTR? lpValueName,
) => WIN32_ERROR(
  _RegDeleteKeyValue(hKey, lpSubKey ?? nullptr, lpValueName ?? nullptr),
);

@Native<Uint32 Function(Pointer, Pointer<Utf16>, Pointer<Utf16>)>(
  symbol: 'RegDeleteKeyValueW',
)
external int _RegDeleteKeyValue(
  Pointer hKey,
  Pointer<Utf16> lpSubKey,
  Pointer<Utf16> lpValueName,
);

/// Deletes the subkeys and values of the specified key recursively.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regdeletetreew>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
WIN32_ERROR RegDeleteTree(HKEY hKey, PCWSTR? lpSubKey) =>
    WIN32_ERROR(_RegDeleteTree(hKey, lpSubKey ?? nullptr));

@Native<Uint32 Function(Pointer, Pointer<Utf16>)>(symbol: 'RegDeleteTreeW')
external int _RegDeleteTree(Pointer hKey, Pointer<Utf16> lpSubKey);

/// Removes a named value from the specified registry key.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regdeletevaluew>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
WIN32_ERROR RegDeleteValue(HKEY hKey, PCWSTR? lpValueName) =>
    WIN32_ERROR(_RegDeleteValue(hKey, lpValueName ?? nullptr));

@Native<Uint32 Function(Pointer, Pointer<Utf16>)>(symbol: 'RegDeleteValueW')
external int _RegDeleteValue(Pointer hKey, Pointer<Utf16> lpValueName);

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
WIN32_ERROR RegDisableReflectionKey(HKEY hBase) =>
    WIN32_ERROR(_RegDisableReflectionKey(hBase));

@Native<Uint32 Function(Pointer)>(symbol: 'RegDisableReflectionKey')
external int _RegDisableReflectionKey(Pointer hBase);

/// Restores registry reflection for the specified disabled key.
///
/// Restoring reflection for a key does not affect reflection of any subkeys.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regenablereflectionkey>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
WIN32_ERROR RegEnableReflectionKey(HKEY hBase) =>
    WIN32_ERROR(_RegEnableReflectionKey(hBase));

@Native<Uint32 Function(Pointer)>(symbol: 'RegEnableReflectionKey')
external int _RegEnableReflectionKey(Pointer hBase);

/// Enumerates the subkeys of the specified open registry key.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regenumkeyw>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
WIN32_ERROR RegEnumKey(HKEY hKey, int dwIndex, PWSTR? lpName, int cchName) =>
    WIN32_ERROR(_RegEnumKey(hKey, dwIndex, lpName ?? nullptr, cchName));

@Native<Uint32 Function(Pointer, Uint32, Pointer<Utf16>, Uint32)>(
  symbol: 'RegEnumKeyW',
)
external int _RegEnumKey(
  Pointer hKey,
  int dwIndex,
  Pointer<Utf16> lpName,
  int cchName,
);

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
  HKEY hKey,
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
    Pointer,
    Uint32,
    Pointer<Utf16>,
    Pointer<Uint32>,
    Pointer<Uint32>,
    Pointer<Utf16>,
    Pointer<Uint32>,
    Pointer<FILETIME>,
  )
>(symbol: 'RegEnumKeyExW')
external int _RegEnumKeyEx(
  Pointer hKey,
  int dwIndex,
  Pointer<Utf16> lpName,
  Pointer<Uint32> lpcchName,
  Pointer<Uint32> lpReserved,
  Pointer<Utf16> lpClass,
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
  HKEY hKey,
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
    Pointer,
    Uint32,
    Pointer<Utf16>,
    Pointer<Uint32>,
    Pointer<Uint32>,
    Pointer<Uint32>,
    Pointer<Uint8>,
    Pointer<Uint32>,
  )
>(symbol: 'RegEnumValueW')
external int _RegEnumValue(
  Pointer hKey,
  int dwIndex,
  Pointer<Utf16> lpValueName,
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
WIN32_ERROR RegFlushKey(HKEY hKey) => WIN32_ERROR(_RegFlushKey(hKey));

@Native<Uint32 Function(Pointer)>(symbol: 'RegFlushKey')
external int _RegFlushKey(Pointer hKey);

/// Retrieves the type and data for the specified registry value.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-reggetvaluew>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
WIN32_ERROR RegGetValue(
  HKEY hkey,
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
    Pointer,
    Pointer<Utf16>,
    Pointer<Utf16>,
    Uint32,
    Pointer<Uint32>,
    Pointer,
    Pointer<Uint32>,
  )
>(symbol: 'RegGetValueW')
external int _RegGetValue(
  Pointer hkey,
  Pointer<Utf16> lpSubKey,
  Pointer<Utf16> lpValue,
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
Win32Result<SERVICE_STATUS_HANDLE> RegisterServiceCtrlHandler(
  PCWSTR lpServiceName,
  Pointer<NativeFunction<LPHANDLER_FUNCTION>> lpHandlerProc,
) {
  final result_ = RegisterServiceCtrlHandlerW_Wrapper(
    lpServiceName,
    lpHandlerProc,
  );
  return Win32Result(
    value: SERVICE_STATUS_HANDLE(result_.value.ptr),
    error: result_.error,
  );
}

/// Registers a function to handle extended service control requests.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-registerservicectrlhandlerexw>.
///
/// {@category advapi32}
Win32Result<SERVICE_STATUS_HANDLE> RegisterServiceCtrlHandlerEx(
  PCWSTR lpServiceName,
  Pointer<NativeFunction<LPHANDLER_FUNCTION_EX>> lpHandlerProc,
  Pointer? lpContext,
) {
  final result_ = RegisterServiceCtrlHandlerExW_Wrapper(
    lpServiceName,
    lpHandlerProc,
    lpContext ?? nullptr,
  );
  return Win32Result(
    value: SERVICE_STATUS_HANDLE(result_.value.ptr),
    error: result_.error,
  );
}

/// Loads the specified registry hive as an application hive.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regloadappkeyw>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
WIN32_ERROR RegLoadAppKey(
  PCWSTR lpFile,
  Pointer<Pointer> phkResult,
  int samDesired,
  int dwOptions,
) =>
    WIN32_ERROR(_RegLoadAppKey(lpFile, phkResult, samDesired, dwOptions, NULL));

@Native<
  Uint32 Function(Pointer<Utf16>, Pointer<Pointer>, Uint32, Uint32, Uint32)
>(symbol: 'RegLoadAppKeyW')
external int _RegLoadAppKey(
  Pointer<Utf16> lpFile,
  Pointer<Pointer> phkResult,
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
WIN32_ERROR RegLoadKey(HKEY hKey, PCWSTR? lpSubKey, PCWSTR lpFile) =>
    WIN32_ERROR(_RegLoadKey(hKey, lpSubKey ?? nullptr, lpFile));

@Native<Uint32 Function(Pointer, Pointer<Utf16>, Pointer<Utf16>)>(
  symbol: 'RegLoadKeyW',
)
external int _RegLoadKey(
  Pointer hKey,
  Pointer<Utf16> lpSubKey,
  Pointer<Utf16> lpFile,
);

/// Loads the specified string from the specified key and subkey.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regloadmuistringw>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
WIN32_ERROR RegLoadMUIString(
  HKEY hKey,
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
  Uint32 Function(
    Pointer,
    Pointer<Utf16>,
    Pointer<Utf16>,
    Uint32,
    Pointer<Uint32>,
    Uint32,
    Pointer<Utf16>,
  )
>(symbol: 'RegLoadMUIStringW')
external int _RegLoadMUIString(
  Pointer hKey,
  Pointer<Utf16> pszValue,
  Pointer<Utf16> pszOutBuf,
  int cbOutBuf,
  Pointer<Uint32> pcbData,
  int flags,
  Pointer<Utf16> pszDirectory,
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
  HKEY hKey,
  bool bWatchSubtree,
  REG_NOTIFY_FILTER dwNotifyFilter,
  HANDLE? hEvent,
  bool fAsynchronous,
) => WIN32_ERROR(
  _RegNotifyChangeKeyValue(
    hKey,
    bWatchSubtree ? TRUE : FALSE,
    dwNotifyFilter,
    hEvent ?? nullptr,
    fAsynchronous ? TRUE : FALSE,
  ),
);

@Native<Uint32 Function(Pointer, Int32, Uint32, Pointer, Int32)>(
  symbol: 'RegNotifyChangeKeyValue',
)
external int _RegNotifyChangeKeyValue(
  Pointer hKey,
  int bWatchSubtree,
  int dwNotifyFilter,
  Pointer hEvent,
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
WIN32_ERROR RegOpenCurrentUser(int samDesired, Pointer<Pointer> phkResult) =>
    WIN32_ERROR(_RegOpenCurrentUser(samDesired, phkResult));

@Native<Uint32 Function(Uint32, Pointer<Pointer>)>(symbol: 'RegOpenCurrentUser')
external int _RegOpenCurrentUser(int samDesired, Pointer<Pointer> phkResult);

/// Opens the specified registry key.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regopenkeyw>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
WIN32_ERROR RegOpenKey(
  HKEY hKey,
  PCWSTR? lpSubKey,
  Pointer<Pointer> phkResult,
) => WIN32_ERROR(_RegOpenKey(hKey, lpSubKey ?? nullptr, phkResult));

@Native<Uint32 Function(Pointer, Pointer<Utf16>, Pointer<Pointer>)>(
  symbol: 'RegOpenKeyW',
)
external int _RegOpenKey(
  Pointer hKey,
  Pointer<Utf16> lpSubKey,
  Pointer<Pointer> phkResult,
);

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
  HKEY hKey,
  PCWSTR? lpSubKey,
  int? ulOptions,
  REG_SAM_FLAGS samDesired,
  Pointer<Pointer> phkResult,
) => WIN32_ERROR(
  _RegOpenKeyEx(
    hKey,
    lpSubKey ?? nullptr,
    ulOptions ?? NULL,
    samDesired,
    phkResult,
  ),
);

@Native<
  Uint32 Function(Pointer, Pointer<Utf16>, Uint32, Uint32, Pointer<Pointer>)
>(symbol: 'RegOpenKeyExW')
external int _RegOpenKeyEx(
  Pointer hKey,
  Pointer<Utf16> lpSubKey,
  int ulOptions,
  int samDesired,
  Pointer<Pointer> phkResult,
);

/// Opens the specified registry key and associates it with a transaction.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regopenkeytransactedw>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
WIN32_ERROR RegOpenKeyTransacted(
  HKEY hKey,
  PCWSTR? lpSubKey,
  int? ulOptions,
  REG_SAM_FLAGS samDesired,
  Pointer<Pointer> phkResult,
  HANDLE hTransaction,
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
  Uint32 Function(
    Pointer,
    Pointer<Utf16>,
    Uint32,
    Uint32,
    Pointer<Pointer>,
    Pointer,
    Pointer,
  )
>(symbol: 'RegOpenKeyTransactedW')
external int _RegOpenKeyTransacted(
  Pointer hKey,
  Pointer<Utf16> lpSubKey,
  int ulOptions,
  int samDesired,
  Pointer<Pointer> phkResult,
  Pointer hTransaction,
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
  HANDLE hToken,
  int samDesired,
  Pointer<Pointer> phkResult,
) => WIN32_ERROR(_RegOpenUserClassesRoot(hToken, NULL, samDesired, phkResult));

@Native<Uint32 Function(Pointer, Uint32, Uint32, Pointer<Pointer>)>(
  symbol: 'RegOpenUserClassesRoot',
)
external int _RegOpenUserClassesRoot(
  Pointer hToken,
  int dwOptions,
  int samDesired,
  Pointer<Pointer> phkResult,
);

/// Maps a predefined registry key to the specified registry key.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regoverridepredefkey>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
WIN32_ERROR RegOverridePredefKey(HKEY hKey, HKEY? hNewHKey) =>
    WIN32_ERROR(_RegOverridePredefKey(hKey, hNewHKey ?? nullptr));

@Native<Uint32 Function(Pointer, Pointer)>(symbol: 'RegOverridePredefKey')
external int _RegOverridePredefKey(Pointer hKey, Pointer hNewHKey);

/// Retrieves information about the specified registry key.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regqueryinfokeyw>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
WIN32_ERROR RegQueryInfoKey(
  HKEY hKey,
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
    Pointer,
    Pointer<Utf16>,
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
  Pointer hKey,
  Pointer<Utf16> lpClass,
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
  HKEY hKey,
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

@Native<
  Uint32 Function(
    Pointer,
    Pointer<VALENT>,
    Uint32,
    Pointer<Utf16>,
    Pointer<Uint32>,
  )
>(symbol: 'RegQueryMultipleValuesW')
external int _RegQueryMultipleValues(
  Pointer hKey,
  Pointer<VALENT> val_list,
  int num_vals,
  Pointer<Utf16> lpValueBuf,
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
  HKEY hBase,
  Pointer<Int32> bIsReflectionDisabled,
) => WIN32_ERROR(_RegQueryReflectionKey(hBase, bIsReflectionDisabled));

@Native<Uint32 Function(Pointer, Pointer<Int32>)>(
  symbol: 'RegQueryReflectionKey',
)
external int _RegQueryReflectionKey(
  Pointer hBase,
  Pointer<Int32> bIsReflectionDisabled,
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
  HKEY hKey,
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

@Native<
  Uint32 Function(Pointer, Pointer<Utf16>, Pointer<Utf16>, Pointer<Int32>)
>(symbol: 'RegQueryValueW')
external int _RegQueryValue(
  Pointer hKey,
  Pointer<Utf16> lpSubKey,
  Pointer<Utf16> lpData,
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
  HKEY hKey,
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
    Pointer,
    Pointer<Utf16>,
    Pointer<Uint32>,
    Pointer<Uint32>,
    Pointer<Uint8>,
    Pointer<Uint32>,
  )
>(symbol: 'RegQueryValueExW')
external int _RegQueryValueEx(
  Pointer hKey,
  Pointer<Utf16> lpValueName,
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
WIN32_ERROR RegRenameKey(
  HKEY hKey,
  PCWSTR? lpSubKeyName,
  PCWSTR lpNewKeyName,
) => WIN32_ERROR(_RegRenameKey(hKey, lpSubKeyName ?? nullptr, lpNewKeyName));

@Native<Uint32 Function(Pointer, Pointer<Utf16>, Pointer<Utf16>)>(
  symbol: 'RegRenameKey',
)
external int _RegRenameKey(
  Pointer hKey,
  Pointer<Utf16> lpSubKeyName,
  Pointer<Utf16> lpNewKeyName,
);

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
  HKEY hKey,
  PCWSTR? lpSubKey,
  PCWSTR lpNewFile,
  PCWSTR lpOldFile,
) => WIN32_ERROR(
  _RegReplaceKey(hKey, lpSubKey ?? nullptr, lpNewFile, lpOldFile),
);

@Native<
  Uint32 Function(Pointer, Pointer<Utf16>, Pointer<Utf16>, Pointer<Utf16>)
>(symbol: 'RegReplaceKeyW')
external int _RegReplaceKey(
  Pointer hKey,
  Pointer<Utf16> lpSubKey,
  Pointer<Utf16> lpNewFile,
  Pointer<Utf16> lpOldFile,
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
  HKEY hKey,
  PCWSTR lpFile,
  REG_RESTORE_KEY_FLAGS dwFlags,
) => WIN32_ERROR(_RegRestoreKey(hKey, lpFile, dwFlags));

@Native<Uint32 Function(Pointer, Pointer<Utf16>, Uint32)>(
  symbol: 'RegRestoreKeyW',
)
external int _RegRestoreKey(Pointer hKey, Pointer<Utf16> lpFile, int dwFlags);

/// Saves the specified key and all of its subkeys and values to a new file, in
/// the standard format.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regsavekeyw>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
WIN32_ERROR RegSaveKey(
  HKEY hKey,
  PCWSTR lpFile,
  Pointer<SECURITY_ATTRIBUTES>? lpSecurityAttributes,
) => WIN32_ERROR(_RegSaveKey(hKey, lpFile, lpSecurityAttributes ?? nullptr));

@Native<Uint32 Function(Pointer, Pointer<Utf16>, Pointer<SECURITY_ATTRIBUTES>)>(
  symbol: 'RegSaveKeyW',
)
external int _RegSaveKey(
  Pointer hKey,
  Pointer<Utf16> lpFile,
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
  HKEY hKey,
  PCWSTR lpFile,
  Pointer<SECURITY_ATTRIBUTES>? lpSecurityAttributes,
  REG_SAVE_FORMAT flags,
) => WIN32_ERROR(
  _RegSaveKeyEx(hKey, lpFile, lpSecurityAttributes ?? nullptr, flags),
);

@Native<
  Uint32 Function(Pointer, Pointer<Utf16>, Pointer<SECURITY_ATTRIBUTES>, Uint32)
>(symbol: 'RegSaveKeyExW')
external int _RegSaveKeyEx(
  Pointer hKey,
  Pointer<Utf16> lpFile,
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
  HKEY hKey,
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

@Native<
  Uint32 Function(
    Pointer,
    Pointer<Utf16>,
    Pointer<Utf16>,
    Uint32,
    Pointer,
    Uint32,
  )
>(symbol: 'RegSetKeyValueW')
external int _RegSetKeyValue(
  Pointer hKey,
  Pointer<Utf16> lpSubKey,
  Pointer<Utf16> lpValueName,
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
  HKEY hKey,
  PCWSTR? lpSubKey,
  REG_VALUE_TYPE dwType,
  PCWSTR? lpData,
  int cbData,
) => WIN32_ERROR(
  _RegSetValue(hKey, lpSubKey ?? nullptr, dwType, lpData ?? nullptr, cbData),
);

@Native<
  Uint32 Function(Pointer, Pointer<Utf16>, Uint32, Pointer<Utf16>, Uint32)
>(symbol: 'RegSetValueW')
external int _RegSetValue(
  Pointer hKey,
  Pointer<Utf16> lpSubKey,
  int dwType,
  Pointer<Utf16> lpData,
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
  HKEY hKey,
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

@Native<
  Uint32 Function(
    Pointer,
    Pointer<Utf16>,
    Uint32,
    Uint32,
    Pointer<Uint8>,
    Uint32,
  )
>(symbol: 'RegSetValueExW')
external int _RegSetValueEx(
  Pointer hKey,
  Pointer<Utf16> lpValueName,
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
WIN32_ERROR RegUnLoadKey(HKEY hKey, PCWSTR? lpSubKey) =>
    WIN32_ERROR(_RegUnLoadKey(hKey, lpSubKey ?? nullptr));

@Native<Uint32 Function(Pointer, Pointer<Utf16>)>(symbol: 'RegUnLoadKeyW')
external int _RegUnLoadKey(Pointer hKey, Pointer<Utf16> lpSubKey);

/// Sets the security descriptor of a service object.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-setserviceobjectsecurity>.
///
/// {@category advapi32}
Win32Result<bool> SetServiceObjectSecurity(
  SC_HANDLE hService,
  OBJECT_SECURITY_INFORMATION dwSecurityInformation,
  PSECURITY_DESCRIPTOR lpSecurityDescriptor,
) {
  final result_ = SetServiceObjectSecurity_Wrapper(
    hService,
    dwSecurityInformation,
    lpSecurityDescriptor,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Updates the service control manager's status information for the calling
/// service.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-setservicestatus>.
///
/// {@category advapi32}
Win32Result<bool> SetServiceStatus(
  SERVICE_STATUS_HANDLE hServiceStatus,
  Pointer<SERVICE_STATUS> lpServiceStatus,
) {
  final result_ = SetServiceStatus_Wrapper(hServiceStatus, lpServiceStatus);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Assigns an impersonation token to a thread.
///
/// The function can also cause a thread to stop using an impersonation token.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-setthreadtoken>.
///
/// {@category advapi32}
Win32Result<bool> SetThreadToken(Pointer<Pointer>? thread, HANDLE? token) {
  final result_ = SetThreadToken_Wrapper(thread ?? nullptr, token ?? nullptr);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Starts a service.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-startservicew>.
///
/// {@category advapi32}
Win32Result<bool> StartService(
  SC_HANDLE hService,
  int dwNumServiceArgs,
  Pointer<Pointer<Utf16>>? lpServiceArgVectors,
) {
  final result_ = StartServiceW_Wrapper(
    hService,
    dwNumServiceArgs,
    lpServiceArgVectors ?? nullptr,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Connects the main thread of a service process to the service control
/// manager, which causes the thread to be the service control dispatcher thread
/// for the calling process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-startservicectrldispatcherw>.
///
/// {@category advapi32}
Win32Result<bool> StartServiceCtrlDispatcher(
  Pointer<SERVICE_TABLE_ENTRY> lpServiceStartTable,
) {
  final result_ = StartServiceCtrlDispatcherW_Wrapper(lpServiceStartTable);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}
