// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Maps FFI prototypes onto the corresponding Win32 API function calls.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: specify_nonobvious_property_types, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';

import '../bstr.dart';
import '../callbacks.g.dart';
import '../com/interface.g.dart';
import '../com/iunknown.g.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../enums.g.dart';
import '../exception.dart';
import '../extensions/pointer.dart';
import '../functions.dart';
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

final _advapi32 = DynamicLibrary.open('advapi32.dll');

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
  resolveGetLastError();
  final result_ = _ChangeServiceConfig2(
    hService,
    dwInfoLevel,
    lpInfo ?? nullptr,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _ChangeServiceConfig2 = _advapi32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Pointer),
      int Function(Pointer, int, Pointer)
    >('ChangeServiceConfig2W');

/// Closes a handle to a service control manager or service object.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-closeservicehandle>.
///
/// {@category advapi32}
Win32Result<bool> CloseServiceHandle(SC_HANDLE hSCObject) {
  resolveGetLastError();
  final result_ = _CloseServiceHandle(hSCObject);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _CloseServiceHandle = _advapi32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'CloseServiceHandle',
    );

/// Closes a trace processing session that was created with OpenTrace.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/evntrace/nf-evntrace-closetrace>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
WIN32_ERROR CloseTrace(PROCESSTRACE_HANDLE traceHandle) =>
    .new(_CloseTrace(traceHandle));

final _CloseTrace = _advapi32
    .lookupFunction<Uint32 Function(Uint64), int Function(int)>('CloseTrace');

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
  resolveGetLastError();
  final result_ = _ControlService(hService, dwControl, lpServiceStatus);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _ControlService = _advapi32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Pointer<SERVICE_STATUS>),
      int Function(Pointer, int, Pointer<SERVICE_STATUS>)
    >('ControlService');

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
  resolveGetLastError();
  final result_ = _ControlServiceEx(
    hService,
    dwControl,
    dwInfoLevel,
    pControlParams,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _ControlServiceEx = _advapi32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Uint32, Pointer),
      int Function(Pointer, int, int, Pointer)
    >('ControlServiceExW');

/// Deletes a credential from the user's credential set.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wincred/nf-wincred-creddeletew>.
///
/// {@category advapi32}
Win32Result<bool> CredDelete(PCWSTR targetName, CRED_TYPE type) {
  resolveGetLastError();
  final result_ = _CredDelete(targetName, type, NULL);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _CredDelete = _advapi32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Uint32, Uint32),
      int Function(Pointer<Utf16>, int, int)
    >('CredDeleteW');

/// Frees a buffer returned by any of the credentials management functions.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wincred/nf-wincred-credfree>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
void CredFree(Pointer buffer) => _CredFree(buffer);

final _CredFree = _advapi32
    .lookupFunction<Void Function(Pointer), void Function(Pointer)>('CredFree');

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
  resolveGetLastError();
  final result_ = _CredRead(targetName, type, NULL, credential);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _CredRead = _advapi32
    .lookupFunction<
      Int32 Function(
        Pointer<Utf16>,
        Uint32,
        Uint32,
        Pointer<Pointer<CREDENTIAL>>,
      ),
      int Function(Pointer<Utf16>, int, int, Pointer<Pointer<CREDENTIAL>>)
    >('CredReadW');

/// Creates a new credential or modifies an existing credential in the user's
/// credential set.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wincred/nf-wincred-credwritew>.
///
/// {@category advapi32}
Win32Result<bool> CredWrite(Pointer<CREDENTIAL> credential, int flags) {
  resolveGetLastError();
  final result_ = _CredWrite(credential, flags);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _CredWrite = _advapi32
    .lookupFunction<
      Int32 Function(Pointer<CREDENTIAL>, Uint32),
      int Function(Pointer<CREDENTIAL>, int)
    >('CredWriteW');

/// Decrypts an encrypted file or directory.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-decryptfilew>.
///
/// {@category advapi32}
Win32Result<bool> DecryptFile(PCWSTR lpFileName) {
  resolveGetLastError();
  final result_ = _DecryptFile(lpFileName, NULL);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _DecryptFile = _advapi32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Uint32),
      int Function(Pointer<Utf16>, int)
    >('DecryptFileW');

/// Marks the specified service for deletion from the service control manager
/// database.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-deleteservice>.
///
/// {@category advapi32}
Win32Result<bool> DeleteService(SC_HANDLE hService) {
  resolveGetLastError();
  final result_ = _DeleteService(hService);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _DeleteService = _advapi32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'DeleteService',
    );

/// Encrypts a file or directory.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-encryptfilew>.
///
/// {@category advapi32}
Win32Result<bool> EncryptFile(PCWSTR lpFileName) {
  resolveGetLastError();
  final result_ = _EncryptFile(lpFileName);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _EncryptFile = _advapi32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>),
      int Function(Pointer<Utf16>)
    >('EncryptFileW');

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
  resolveGetLastError();
  final result_ = _EnumDependentServices(
    hService,
    dwServiceState,
    lpServices ?? nullptr,
    cbBufSize,
    pcbBytesNeeded,
    lpServicesReturned,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _EnumDependentServices = _advapi32
    .lookupFunction<
      Int32 Function(
        Pointer,
        Uint32,
        Pointer<ENUM_SERVICE_STATUS>,
        Uint32,
        Pointer<Uint32>,
        Pointer<Uint32>,
      ),
      int Function(
        Pointer,
        int,
        Pointer<ENUM_SERVICE_STATUS>,
        int,
        Pointer<Uint32>,
        Pointer<Uint32>,
      )
    >('EnumDependentServicesW');

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
  resolveGetLastError();
  final result_ = _EnumServicesStatus(
    hSCManager,
    dwServiceType,
    dwServiceState,
    lpServices ?? nullptr,
    cbBufSize,
    pcbBytesNeeded,
    lpServicesReturned,
    lpResumeHandle ?? nullptr,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _EnumServicesStatus = _advapi32
    .lookupFunction<
      Int32 Function(
        Pointer,
        Uint32,
        Uint32,
        Pointer<ENUM_SERVICE_STATUS>,
        Uint32,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<Uint32>,
      ),
      int Function(
        Pointer,
        int,
        int,
        Pointer<ENUM_SERVICE_STATUS>,
        int,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<Uint32>,
      )
    >('EnumServicesStatusW');

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
  resolveGetLastError();
  final result_ = _EnumServicesStatusEx(
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
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _EnumServicesStatusEx = _advapi32
    .lookupFunction<
      Int32 Function(
        Pointer,
        Int32,
        Uint32,
        Uint32,
        Pointer<Uint8>,
        Uint32,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<Utf16>,
      ),
      int Function(
        Pointer,
        int,
        int,
        int,
        Pointer<Uint8>,
        int,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<Utf16>,
      )
    >('EnumServicesStatusExW');

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
  resolveGetLastError();
  final result_ = _FileEncryptionStatus(lpFileName, lpStatus);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _FileEncryptionStatus = _advapi32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Pointer<Uint32>),
      int Function(Pointer<Utf16>, Pointer<Uint32>)
    >('FileEncryptionStatusW');

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
  resolveGetLastError();
  final result_ = _GetServiceDisplayName(
    hSCManager,
    lpServiceName,
    lpDisplayName ?? nullptr,
    lpcchBuffer,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetServiceDisplayName = _advapi32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Utf16>, Pointer<Utf16>, Pointer<Uint32>),
      int Function(Pointer, Pointer<Utf16>, Pointer<Utf16>, Pointer<Uint32>)
    >('GetServiceDisplayNameW');

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
  resolveGetLastError();
  final result_ = _GetServiceKeyName(
    hSCManager,
    lpDisplayName,
    lpServiceName ?? nullptr,
    lpcchBuffer,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetServiceKeyName = _advapi32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Utf16>, Pointer<Utf16>, Pointer<Uint32>),
      int Function(Pointer, Pointer<Utf16>, Pointer<Utf16>, Pointer<Uint32>)
    >('GetServiceKeyNameW');

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
  resolveGetLastError();
  final result_ = _GetTokenInformation(
    tokenHandle,
    tokenInformationClass,
    tokenInformation ?? nullptr,
    tokenInformationLength,
    returnLength,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetTokenInformation = _advapi32
    .lookupFunction<
      Int32 Function(Pointer, Int32, Pointer, Uint32, Pointer<Uint32>),
      int Function(Pointer, int, Pointer, int, Pointer<Uint32>)
    >('GetTokenInformation');

/// Retrieves the name of the user associated with the current thread.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-getusernamew>.
///
/// {@category advapi32}
Win32Result<bool> GetUserName(PWSTR? lpBuffer, Pointer<Uint32> pcbBuffer) {
  resolveGetLastError();
  final result_ = _GetUserName(lpBuffer ?? nullptr, pcbBuffer);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetUserName = _advapi32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Pointer<Uint32>),
      int Function(Pointer<Utf16>, Pointer<Uint32>)
    >('GetUserNameW');

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

final _InitiateShutdown = _advapi32
    .lookupFunction<
      Uint32 Function(Pointer<Utf16>, Pointer<Utf16>, Uint32, Uint32, Uint32),
      int Function(Pointer<Utf16>, Pointer<Utf16>, int, int, int)
    >('InitiateShutdownW');

/// Reports the boot status to the service control manager.
///
/// It is used by boot verification programs.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-notifybootconfigstatus>.
///
/// {@category advapi32}
Win32Result<bool> NotifyBootConfigStatus(bool bootAcceptable) {
  resolveGetLastError();
  final result_ = _NotifyBootConfigStatus(bootAcceptable ? TRUE : FALSE);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _NotifyBootConfigStatus = _advapi32
    .lookupFunction<Int32 Function(Int32), int Function(int)>(
      'NotifyBootConfigStatus',
    );

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

final _NotifyServiceStatusChange = _advapi32
    .lookupFunction<
      Uint32 Function(Pointer, Uint32, Pointer<SERVICE_NOTIFY_2>),
      int Function(Pointer, int, Pointer<SERVICE_NOTIFY_2>)
    >('NotifyServiceStatusChangeW');

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
  resolveGetLastError();
  final result_ = _OpenProcessToken(processHandle, desiredAccess, tokenHandle);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _OpenProcessToken = _advapi32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Pointer<Pointer>),
      int Function(Pointer, int, Pointer<Pointer>)
    >('OpenProcessToken');

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
  resolveGetLastError();
  final result_ = _OpenSCManager(
    lpMachineName ?? nullptr,
    lpDatabaseName ?? nullptr,
    dwDesiredAccess,
  );
  return .new(value: .new(result_), error: GetLastError());
}

final _OpenSCManager = _advapi32
    .lookupFunction<
      Pointer Function(Pointer<Utf16>, Pointer<Utf16>, Uint32),
      Pointer Function(Pointer<Utf16>, Pointer<Utf16>, int)
    >('OpenSCManagerW');

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
  resolveGetLastError();
  final result_ = _OpenService(hSCManager, lpServiceName, dwDesiredAccess);
  return .new(value: .new(result_), error: GetLastError());
}

final _OpenService = _advapi32
    .lookupFunction<
      Pointer Function(Pointer, Pointer<Utf16>, Uint32),
      Pointer Function(Pointer, Pointer<Utf16>, int)
    >('OpenServiceW');

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
  resolveGetLastError();
  final result_ = _OpenThreadToken(
    threadHandle,
    desiredAccess,
    openAsSelf ? TRUE : FALSE,
    tokenHandle,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _OpenThreadToken = _advapi32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Int32, Pointer<Pointer>),
      int Function(Pointer, int, int, Pointer<Pointer>)
    >('OpenThreadToken');

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
  resolveGetLastError();
  final result_ = _QueryServiceConfig(
    hService,
    lpServiceConfig ?? nullptr,
    cbBufSize,
    pcbBytesNeeded,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _QueryServiceConfig = _advapi32
    .lookupFunction<
      Int32 Function(
        Pointer,
        Pointer<QUERY_SERVICE_CONFIG>,
        Uint32,
        Pointer<Uint32>,
      ),
      int Function(Pointer, Pointer<QUERY_SERVICE_CONFIG>, int, Pointer<Uint32>)
    >('QueryServiceConfigW');

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
  resolveGetLastError();
  final result_ = _QueryServiceConfig2(
    hService,
    dwInfoLevel,
    lpBuffer ?? nullptr,
    cbBufSize,
    pcbBytesNeeded,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _QueryServiceConfig2 = _advapi32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Pointer<Uint8>, Uint32, Pointer<Uint32>),
      int Function(Pointer, int, Pointer<Uint8>, int, Pointer<Uint32>)
    >('QueryServiceConfig2W');

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
  resolveGetLastError();
  final result_ = _QueryServiceDynamicInformation(
    hServiceStatus,
    dwInfoLevel,
    ppDynamicInfo,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _QueryServiceDynamicInformation = _advapi32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Pointer<Pointer>),
      int Function(Pointer, int, Pointer<Pointer>)
    >('QueryServiceDynamicInformation');

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
  resolveGetLastError();
  final result_ = _QueryServiceObjectSecurity(
    hService,
    dwSecurityInformation,
    lpSecurityDescriptor ?? nullptr,
    cbBufSize,
    pcbBytesNeeded,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _QueryServiceObjectSecurity = _advapi32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Pointer, Uint32, Pointer<Uint32>),
      int Function(Pointer, int, Pointer, int, Pointer<Uint32>)
    >('QueryServiceObjectSecurity');

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
  resolveGetLastError();
  final result_ = _QueryServiceStatus(hService, lpServiceStatus);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _QueryServiceStatus = _advapi32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<SERVICE_STATUS>),
      int Function(Pointer, Pointer<SERVICE_STATUS>)
    >('QueryServiceStatus');

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
  resolveGetLastError();
  final result_ = _QueryServiceStatusEx(
    hService,
    infoLevel,
    lpBuffer ?? nullptr,
    cbBufSize,
    pcbBytesNeeded,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _QueryServiceStatusEx = _advapi32
    .lookupFunction<
      Int32 Function(Pointer, Int32, Pointer<Uint8>, Uint32, Pointer<Uint32>),
      int Function(Pointer, int, Pointer<Uint8>, int, Pointer<Uint32>)
    >('QueryServiceStatusEx');

/// Closes a handle to the specified registry key.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regclosekey>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
WIN32_ERROR RegCloseKey(HKEY hKey) => .new(_RegCloseKey(hKey));

final _RegCloseKey = _advapi32
    .lookupFunction<Uint32 Function(Pointer), int Function(Pointer)>(
      'RegCloseKey',
    );

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
) => .new(_RegConnectRegistry(lpMachineName ?? nullptr, hKey, phkResult));

final _RegConnectRegistry = _advapi32
    .lookupFunction<
      Uint32 Function(Pointer<Utf16>, Pointer, Pointer<Pointer>),
      int Function(Pointer<Utf16>, Pointer, Pointer<Pointer>)
    >('RegConnectRegistryW');

/// Copies the specified registry key, along with its values and subkeys, to the
/// specified destination key.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regcopytreew>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
WIN32_ERROR RegCopyTree(HKEY hKeySrc, PCWSTR? lpSubKey, HKEY hKeyDest) =>
    .new(_RegCopyTree(hKeySrc, lpSubKey ?? nullptr, hKeyDest));

final _RegCopyTree = _advapi32
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Utf16>, Pointer),
      int Function(Pointer, Pointer<Utf16>, Pointer)
    >('RegCopyTreeW');

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
) => .new(_RegCreateKey(hKey, lpSubKey ?? nullptr, phkResult));

final _RegCreateKey = _advapi32
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Utf16>, Pointer<Pointer>),
      int Function(Pointer, Pointer<Utf16>, Pointer<Pointer>)
    >('RegCreateKeyW');

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
) => .new(
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

final _RegCreateKeyEx = _advapi32
    .lookupFunction<
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
      ),
      int Function(
        Pointer,
        Pointer<Utf16>,
        int,
        Pointer<Utf16>,
        int,
        int,
        Pointer<SECURITY_ATTRIBUTES>,
        Pointer<Pointer>,
        Pointer<Uint32>,
      )
    >('RegCreateKeyExW');

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
) => .new(
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

final _RegCreateKeyTransacted = _advapi32
    .lookupFunction<
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
      ),
      int Function(
        Pointer,
        Pointer<Utf16>,
        int,
        Pointer<Utf16>,
        int,
        int,
        Pointer<SECURITY_ATTRIBUTES>,
        Pointer<Pointer>,
        Pointer<Uint32>,
        Pointer,
        Pointer,
      )
    >('RegCreateKeyTransactedW');

/// Deletes a subkey and its values.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regdeletekeyw>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
WIN32_ERROR RegDeleteKey(HKEY hKey, PCWSTR lpSubKey) =>
    .new(_RegDeleteKey(hKey, lpSubKey));

final _RegDeleteKey = _advapi32
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Utf16>),
      int Function(Pointer, Pointer<Utf16>)
    >('RegDeleteKeyW');

/// Deletes a subkey and its values from the specified platform-specific view of
/// the registry.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regdeletekeyexw>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
WIN32_ERROR RegDeleteKeyEx(HKEY hKey, PCWSTR lpSubKey, int samDesired) =>
    .new(_RegDeleteKeyEx(hKey, lpSubKey, samDesired, NULL));

final _RegDeleteKeyEx = _advapi32
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Utf16>, Uint32, Uint32),
      int Function(Pointer, Pointer<Utf16>, int, int)
    >('RegDeleteKeyExW');

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
) => .new(
  _RegDeleteKeyTransacted(
    hKey,
    lpSubKey,
    samDesired,
    NULL,
    hTransaction,
    nullptr,
  ),
);

final _RegDeleteKeyTransacted = _advapi32
    .lookupFunction<
      Uint32 Function(
        Pointer,
        Pointer<Utf16>,
        Uint32,
        Uint32,
        Pointer,
        Pointer,
      ),
      int Function(Pointer, Pointer<Utf16>, int, int, Pointer, Pointer)
    >('RegDeleteKeyTransactedW');

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
) =>
    .new(_RegDeleteKeyValue(hKey, lpSubKey ?? nullptr, lpValueName ?? nullptr));

final _RegDeleteKeyValue = _advapi32
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Utf16>, Pointer<Utf16>),
      int Function(Pointer, Pointer<Utf16>, Pointer<Utf16>)
    >('RegDeleteKeyValueW');

/// Deletes the subkeys and values of the specified key recursively.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regdeletetreew>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
WIN32_ERROR RegDeleteTree(HKEY hKey, PCWSTR? lpSubKey) =>
    .new(_RegDeleteTree(hKey, lpSubKey ?? nullptr));

final _RegDeleteTree = _advapi32
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Utf16>),
      int Function(Pointer, Pointer<Utf16>)
    >('RegDeleteTreeW');

/// Removes a named value from the specified registry key.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regdeletevaluew>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
WIN32_ERROR RegDeleteValue(HKEY hKey, PCWSTR? lpValueName) =>
    .new(_RegDeleteValue(hKey, lpValueName ?? nullptr));

final _RegDeleteValue = _advapi32
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Utf16>),
      int Function(Pointer, Pointer<Utf16>)
    >('RegDeleteValueW');

/// Disables handle caching of the predefined registry handle for
/// HKEY_CURRENT_USER for the current process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regdisablepredefinedcache>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
WIN32_ERROR RegDisablePredefinedCache() => .new(_RegDisablePredefinedCache());

final _RegDisablePredefinedCache = _advapi32
    .lookupFunction<Uint32 Function(), int Function()>(
      'RegDisablePredefinedCache',
    );

/// Disables handle caching for all predefined registry handles for the current
/// process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regdisablepredefinedcacheex>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
WIN32_ERROR RegDisablePredefinedCacheEx() =>
    .new(_RegDisablePredefinedCacheEx());

final _RegDisablePredefinedCacheEx = _advapi32
    .lookupFunction<Uint32 Function(), int Function()>(
      'RegDisablePredefinedCacheEx',
    );

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
    .new(_RegDisableReflectionKey(hBase));

final _RegDisableReflectionKey = _advapi32
    .lookupFunction<Uint32 Function(Pointer), int Function(Pointer)>(
      'RegDisableReflectionKey',
    );

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
    .new(_RegEnableReflectionKey(hBase));

final _RegEnableReflectionKey = _advapi32
    .lookupFunction<Uint32 Function(Pointer), int Function(Pointer)>(
      'RegEnableReflectionKey',
    );

/// Enumerates the subkeys of the specified open registry key.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regenumkeyw>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
WIN32_ERROR RegEnumKey(HKEY hKey, int dwIndex, PWSTR? lpName, int cchName) =>
    .new(_RegEnumKey(hKey, dwIndex, lpName ?? nullptr, cchName));

final _RegEnumKey = _advapi32
    .lookupFunction<
      Uint32 Function(Pointer, Uint32, Pointer<Utf16>, Uint32),
      int Function(Pointer, int, Pointer<Utf16>, int)
    >('RegEnumKeyW');

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
) => .new(
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

final _RegEnumKeyEx = _advapi32
    .lookupFunction<
      Uint32 Function(
        Pointer,
        Uint32,
        Pointer<Utf16>,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<Utf16>,
        Pointer<Uint32>,
        Pointer<FILETIME>,
      ),
      int Function(
        Pointer,
        int,
        Pointer<Utf16>,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<Utf16>,
        Pointer<Uint32>,
        Pointer<FILETIME>,
      )
    >('RegEnumKeyExW');

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
) => .new(
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

final _RegEnumValue = _advapi32
    .lookupFunction<
      Uint32 Function(
        Pointer,
        Uint32,
        Pointer<Utf16>,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<Uint8>,
        Pointer<Uint32>,
      ),
      int Function(
        Pointer,
        int,
        Pointer<Utf16>,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<Uint8>,
        Pointer<Uint32>,
      )
    >('RegEnumValueW');

/// Writes all the attributes of the specified open registry key into the
/// registry.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regflushkey>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
WIN32_ERROR RegFlushKey(HKEY hKey) => .new(_RegFlushKey(hKey));

final _RegFlushKey = _advapi32
    .lookupFunction<Uint32 Function(Pointer), int Function(Pointer)>(
      'RegFlushKey',
    );

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
) => .new(
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

final _RegGetValue = _advapi32
    .lookupFunction<
      Uint32 Function(
        Pointer,
        Pointer<Utf16>,
        Pointer<Utf16>,
        Uint32,
        Pointer<Uint32>,
        Pointer,
        Pointer<Uint32>,
      ),
      int Function(
        Pointer,
        Pointer<Utf16>,
        Pointer<Utf16>,
        int,
        Pointer<Uint32>,
        Pointer,
        Pointer<Uint32>,
      )
    >('RegGetValueW');

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
  resolveGetLastError();
  final result_ = _RegisterServiceCtrlHandler(lpServiceName, lpHandlerProc);
  return .new(value: .new(result_), error: GetLastError());
}

final _RegisterServiceCtrlHandler = _advapi32
    .lookupFunction<
      Pointer Function(
        Pointer<Utf16>,
        Pointer<NativeFunction<LPHANDLER_FUNCTION>>,
      ),
      Pointer Function(
        Pointer<Utf16>,
        Pointer<NativeFunction<LPHANDLER_FUNCTION>>,
      )
    >('RegisterServiceCtrlHandlerW');

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
  resolveGetLastError();
  final result_ = _RegisterServiceCtrlHandlerEx(
    lpServiceName,
    lpHandlerProc,
    lpContext ?? nullptr,
  );
  return .new(value: .new(result_), error: GetLastError());
}

final _RegisterServiceCtrlHandlerEx = _advapi32
    .lookupFunction<
      Pointer Function(
        Pointer<Utf16>,
        Pointer<NativeFunction<LPHANDLER_FUNCTION_EX>>,
        Pointer,
      ),
      Pointer Function(
        Pointer<Utf16>,
        Pointer<NativeFunction<LPHANDLER_FUNCTION_EX>>,
        Pointer,
      )
    >('RegisterServiceCtrlHandlerExW');

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
) => .new(_RegLoadAppKey(lpFile, phkResult, samDesired, dwOptions, NULL));

final _RegLoadAppKey = _advapi32
    .lookupFunction<
      Uint32 Function(Pointer<Utf16>, Pointer<Pointer>, Uint32, Uint32, Uint32),
      int Function(Pointer<Utf16>, Pointer<Pointer>, int, int, int)
    >('RegLoadAppKeyW');

/// Creates a subkey under HKEY_USERS or HKEY_LOCAL_MACHINE and loads the data
/// from the specified registry hive into that subkey.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regloadkeyw>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
WIN32_ERROR RegLoadKey(HKEY hKey, PCWSTR? lpSubKey, PCWSTR lpFile) =>
    .new(_RegLoadKey(hKey, lpSubKey ?? nullptr, lpFile));

final _RegLoadKey = _advapi32
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Utf16>, Pointer<Utf16>),
      int Function(Pointer, Pointer<Utf16>, Pointer<Utf16>)
    >('RegLoadKeyW');

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
) => .new(
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

final _RegLoadMUIString = _advapi32
    .lookupFunction<
      Uint32 Function(
        Pointer,
        Pointer<Utf16>,
        Pointer<Utf16>,
        Uint32,
        Pointer<Uint32>,
        Uint32,
        Pointer<Utf16>,
      ),
      int Function(
        Pointer,
        Pointer<Utf16>,
        Pointer<Utf16>,
        int,
        Pointer<Uint32>,
        int,
        Pointer<Utf16>,
      )
    >('RegLoadMUIStringW');

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
) => .new(
  _RegNotifyChangeKeyValue(
    hKey,
    bWatchSubtree ? TRUE : FALSE,
    dwNotifyFilter,
    hEvent ?? nullptr,
    fAsynchronous ? TRUE : FALSE,
  ),
);

final _RegNotifyChangeKeyValue = _advapi32
    .lookupFunction<
      Uint32 Function(Pointer, Int32, Uint32, Pointer, Int32),
      int Function(Pointer, int, int, Pointer, int)
    >('RegNotifyChangeKeyValue');

/// Retrieves a handle to the HKEY_CURRENT_USER key for the user the current
/// thread is impersonating.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regopencurrentuser>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
WIN32_ERROR RegOpenCurrentUser(int samDesired, Pointer<Pointer> phkResult) =>
    .new(_RegOpenCurrentUser(samDesired, phkResult));

final _RegOpenCurrentUser = _advapi32
    .lookupFunction<
      Uint32 Function(Uint32, Pointer<Pointer>),
      int Function(int, Pointer<Pointer>)
    >('RegOpenCurrentUser');

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
) => .new(_RegOpenKey(hKey, lpSubKey ?? nullptr, phkResult));

final _RegOpenKey = _advapi32
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Utf16>, Pointer<Pointer>),
      int Function(Pointer, Pointer<Utf16>, Pointer<Pointer>)
    >('RegOpenKeyW');

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
) => .new(
  _RegOpenKeyEx(
    hKey,
    lpSubKey ?? nullptr,
    ulOptions ?? NULL,
    samDesired,
    phkResult,
  ),
);

final _RegOpenKeyEx = _advapi32
    .lookupFunction<
      Uint32 Function(
        Pointer,
        Pointer<Utf16>,
        Uint32,
        Uint32,
        Pointer<Pointer>,
      ),
      int Function(Pointer, Pointer<Utf16>, int, int, Pointer<Pointer>)
    >('RegOpenKeyExW');

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
) => .new(
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

final _RegOpenKeyTransacted = _advapi32
    .lookupFunction<
      Uint32 Function(
        Pointer,
        Pointer<Utf16>,
        Uint32,
        Uint32,
        Pointer<Pointer>,
        Pointer,
        Pointer,
      ),
      int Function(
        Pointer,
        Pointer<Utf16>,
        int,
        int,
        Pointer<Pointer>,
        Pointer,
        Pointer,
      )
    >('RegOpenKeyTransactedW');

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
) => .new(_RegOpenUserClassesRoot(hToken, NULL, samDesired, phkResult));

final _RegOpenUserClassesRoot = _advapi32
    .lookupFunction<
      Uint32 Function(Pointer, Uint32, Uint32, Pointer<Pointer>),
      int Function(Pointer, int, int, Pointer<Pointer>)
    >('RegOpenUserClassesRoot');

/// Maps a predefined registry key to the specified registry key.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regoverridepredefkey>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
WIN32_ERROR RegOverridePredefKey(HKEY hKey, HKEY? hNewHKey) =>
    .new(_RegOverridePredefKey(hKey, hNewHKey ?? nullptr));

final _RegOverridePredefKey = _advapi32
    .lookupFunction<
      Uint32 Function(Pointer, Pointer),
      int Function(Pointer, Pointer)
    >('RegOverridePredefKey');

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
) => .new(
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

final _RegQueryInfoKey = _advapi32
    .lookupFunction<
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
      ),
      int Function(
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
    >('RegQueryInfoKeyW');

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
) => .new(
  _RegQueryMultipleValues(
    hKey,
    val_list,
    num_vals,
    lpValueBuf ?? nullptr,
    ldwTotsize ?? nullptr,
  ),
);

final _RegQueryMultipleValues = _advapi32
    .lookupFunction<
      Uint32 Function(
        Pointer,
        Pointer<VALENT>,
        Uint32,
        Pointer<Utf16>,
        Pointer<Uint32>,
      ),
      int Function(
        Pointer,
        Pointer<VALENT>,
        int,
        Pointer<Utf16>,
        Pointer<Uint32>,
      )
    >('RegQueryMultipleValuesW');

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
) => .new(_RegQueryReflectionKey(hBase, bIsReflectionDisabled));

final _RegQueryReflectionKey = _advapi32
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Int32>),
      int Function(Pointer, Pointer<Int32>)
    >('RegQueryReflectionKey');

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
) => .new(
  _RegQueryValue(
    hKey,
    lpSubKey ?? nullptr,
    lpData ?? nullptr,
    lpcbData ?? nullptr,
  ),
);

final _RegQueryValue = _advapi32
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Utf16>, Pointer<Utf16>, Pointer<Int32>),
      int Function(Pointer, Pointer<Utf16>, Pointer<Utf16>, Pointer<Int32>)
    >('RegQueryValueW');

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
) => .new(
  _RegQueryValueEx(
    hKey,
    lpValueName ?? nullptr,
    nullptr,
    lpType ?? nullptr,
    lpData ?? nullptr,
    lpcbData ?? nullptr,
  ),
);

final _RegQueryValueEx = _advapi32
    .lookupFunction<
      Uint32 Function(
        Pointer,
        Pointer<Utf16>,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<Uint8>,
        Pointer<Uint32>,
      ),
      int Function(
        Pointer,
        Pointer<Utf16>,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<Uint8>,
        Pointer<Uint32>,
      )
    >('RegQueryValueExW');

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
) => .new(_RegRenameKey(hKey, lpSubKeyName ?? nullptr, lpNewKeyName));

final _RegRenameKey = _advapi32
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Utf16>, Pointer<Utf16>),
      int Function(Pointer, Pointer<Utf16>, Pointer<Utf16>)
    >('RegRenameKey');

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
) => .new(_RegReplaceKey(hKey, lpSubKey ?? nullptr, lpNewFile, lpOldFile));

final _RegReplaceKey = _advapi32
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Utf16>, Pointer<Utf16>, Pointer<Utf16>),
      int Function(Pointer, Pointer<Utf16>, Pointer<Utf16>, Pointer<Utf16>)
    >('RegReplaceKeyW');

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
) => .new(_RegRestoreKey(hKey, lpFile, dwFlags));

final _RegRestoreKey = _advapi32
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Utf16>, Uint32),
      int Function(Pointer, Pointer<Utf16>, int)
    >('RegRestoreKeyW');

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
) => .new(_RegSaveKey(hKey, lpFile, lpSecurityAttributes ?? nullptr));

final _RegSaveKey = _advapi32
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Utf16>, Pointer<SECURITY_ATTRIBUTES>),
      int Function(Pointer, Pointer<Utf16>, Pointer<SECURITY_ATTRIBUTES>)
    >('RegSaveKeyW');

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
) => .new(_RegSaveKeyEx(hKey, lpFile, lpSecurityAttributes ?? nullptr, flags));

final _RegSaveKeyEx = _advapi32
    .lookupFunction<
      Uint32 Function(
        Pointer,
        Pointer<Utf16>,
        Pointer<SECURITY_ATTRIBUTES>,
        Uint32,
      ),
      int Function(Pointer, Pointer<Utf16>, Pointer<SECURITY_ATTRIBUTES>, int)
    >('RegSaveKeyExW');

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
) => .new(
  _RegSetKeyValue(
    hKey,
    lpSubKey ?? nullptr,
    lpValueName ?? nullptr,
    dwType,
    lpData ?? nullptr,
    cbData,
  ),
);

final _RegSetKeyValue = _advapi32
    .lookupFunction<
      Uint32 Function(
        Pointer,
        Pointer<Utf16>,
        Pointer<Utf16>,
        Uint32,
        Pointer,
        Uint32,
      ),
      int Function(Pointer, Pointer<Utf16>, Pointer<Utf16>, int, Pointer, int)
    >('RegSetKeyValueW');

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
) => .new(
  _RegSetValue(hKey, lpSubKey ?? nullptr, dwType, lpData ?? nullptr, cbData),
);

final _RegSetValue = _advapi32
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Utf16>, Uint32, Pointer<Utf16>, Uint32),
      int Function(Pointer, Pointer<Utf16>, int, Pointer<Utf16>, int)
    >('RegSetValueW');

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
) => .new(
  _RegSetValueEx(
    hKey,
    lpValueName ?? nullptr,
    NULL,
    dwType,
    lpData ?? nullptr,
    cbData,
  ),
);

final _RegSetValueEx = _advapi32
    .lookupFunction<
      Uint32 Function(
        Pointer,
        Pointer<Utf16>,
        Uint32,
        Uint32,
        Pointer<Uint8>,
        Uint32,
      ),
      int Function(Pointer, Pointer<Utf16>, int, int, Pointer<Uint8>, int)
    >('RegSetValueExW');

/// Unloads the specified registry key and its subkeys from the registry.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winreg/nf-winreg-regunloadkeyw>.
///
/// {@category advapi32}
@pragma('vm:prefer-inline')
WIN32_ERROR RegUnLoadKey(HKEY hKey, PCWSTR? lpSubKey) =>
    .new(_RegUnLoadKey(hKey, lpSubKey ?? nullptr));

final _RegUnLoadKey = _advapi32
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Utf16>),
      int Function(Pointer, Pointer<Utf16>)
    >('RegUnLoadKeyW');

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
  resolveGetLastError();
  final result_ = _SetServiceObjectSecurity(
    hService,
    dwSecurityInformation,
    lpSecurityDescriptor,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SetServiceObjectSecurity = _advapi32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Pointer),
      int Function(Pointer, int, Pointer)
    >('SetServiceObjectSecurity');

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
  resolveGetLastError();
  final result_ = _SetServiceStatus(hServiceStatus, lpServiceStatus);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SetServiceStatus = _advapi32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<SERVICE_STATUS>),
      int Function(Pointer, Pointer<SERVICE_STATUS>)
    >('SetServiceStatus');

/// Assigns an impersonation token to a thread.
///
/// The function can also cause a thread to stop using an impersonation token.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-setthreadtoken>.
///
/// {@category advapi32}
Win32Result<bool> SetThreadToken(Pointer<Pointer>? thread, HANDLE? token) {
  resolveGetLastError();
  final result_ = _SetThreadToken(thread ?? nullptr, token ?? nullptr);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SetThreadToken = _advapi32
    .lookupFunction<
      Int32 Function(Pointer<Pointer>, Pointer),
      int Function(Pointer<Pointer>, Pointer)
    >('SetThreadToken');

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
  resolveGetLastError();
  final result_ = _StartService(
    hService,
    dwNumServiceArgs,
    lpServiceArgVectors ?? nullptr,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _StartService = _advapi32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Pointer<Pointer<Utf16>>),
      int Function(Pointer, int, Pointer<Pointer<Utf16>>)
    >('StartServiceW');

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
  resolveGetLastError();
  final result_ = _StartServiceCtrlDispatcher(lpServiceStartTable);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _StartServiceCtrlDispatcher = _advapi32
    .lookupFunction<
      Int32 Function(Pointer<SERVICE_TABLE_ENTRY>),
      int Function(Pointer<SERVICE_TABLE_ENTRY>)
    >('StartServiceCtrlDispatcherW');
