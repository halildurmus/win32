// Wrappers for Win32 API functions.
//
// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// ignore_for_file: non_constant_identifier_names, unused_import

@DefaultAsset('package:win32/win32.dart')
library;

import 'dart:ffi';

import 'package:meta/meta.dart';

import '../callbacks.g.dart';
import '../functions.dart';
import '../guid.dart';
import '../pcstr.dart';
import '../pcwstr.dart';
import '../structs.g.dart';
import '../types.dart';

@internal
@Native<BOOL Function(SC_HANDLE, Uint32, Pointer)>()
external int ChangeServiceConfig2W_Wrapper(
  int hService,
  int dwInfoLevel,
  Pointer lpInfo,
);

@internal
@Native<BOOL Function(SC_HANDLE)>()
external int CloseServiceHandle_Wrapper(int hSCObject);

@internal
@Native<BOOL Function(SC_HANDLE, Uint32, Pointer<SERVICE_STATUS>)>()
external int ControlService_Wrapper(
  int hService,
  int dwControl,
  Pointer<SERVICE_STATUS> lpServiceStatus,
);

@internal
@Native<BOOL Function(SC_HANDLE, Uint32, Uint32, Pointer)>()
external int ControlServiceExW_Wrapper(
  int hService,
  int dwControl,
  int dwInfoLevel,
  Pointer pControlParams,
);

@internal
@Native<BOOL Function(PCWSTR, Uint32, Uint32)>()
external int CredDeleteW_Wrapper(PCWSTR targetName, int type, int flags);

@internal
@Native<BOOL Function(PCWSTR, Uint32, Uint32, Pointer<Pointer<CREDENTIAL>>)>()
external int CredReadW_Wrapper(
  PCWSTR targetName,
  int type,
  int flags,
  Pointer<Pointer<CREDENTIAL>> credential,
);

@internal
@Native<BOOL Function(Pointer<CREDENTIAL>, Uint32)>()
external int CredWriteW_Wrapper(Pointer<CREDENTIAL> credential, int flags);

@internal
@Native<BOOL Function(PCWSTR, Uint32)>()
external int DecryptFileW_Wrapper(PCWSTR lpFileName, int dwReserved);

@internal
@Native<BOOL Function(SC_HANDLE)>()
external int DeleteService_Wrapper(int hService);

@internal
@Native<BOOL Function(PCWSTR)>()
external int EncryptFileW_Wrapper(PCWSTR lpFileName);

@internal
@Native<
  BOOL Function(
    SC_HANDLE,
    Uint32,
    Pointer<ENUM_SERVICE_STATUS>,
    Uint32,
    Pointer<Uint32>,
    Pointer<Uint32>,
  )
>()
external int EnumDependentServicesW_Wrapper(
  int hService,
  int dwServiceState,
  Pointer<ENUM_SERVICE_STATUS> lpServices,
  int cbBufSize,
  Pointer<Uint32> pcbBytesNeeded,
  Pointer<Uint32> lpServicesReturned,
);

@internal
@Native<
  BOOL Function(
    SC_HANDLE,
    Uint32,
    Uint32,
    Pointer<ENUM_SERVICE_STATUS>,
    Uint32,
    Pointer<Uint32>,
    Pointer<Uint32>,
    Pointer<Uint32>,
  )
>()
external int EnumServicesStatusW_Wrapper(
  int hSCManager,
  int dwServiceType,
  int dwServiceState,
  Pointer<ENUM_SERVICE_STATUS> lpServices,
  int cbBufSize,
  Pointer<Uint32> pcbBytesNeeded,
  Pointer<Uint32> lpServicesReturned,
  Pointer<Uint32> lpResumeHandle,
);

@internal
@Native<
  BOOL Function(
    SC_HANDLE,
    Int32,
    Uint32,
    Uint32,
    Pointer<Uint8>,
    Uint32,
    Pointer<Uint32>,
    Pointer<Uint32>,
    Pointer<Uint32>,
    PCWSTR,
  )
>()
external int EnumServicesStatusExW_Wrapper(
  int hSCManager,
  int infoLevel,
  int dwServiceType,
  int dwServiceState,
  Pointer<Uint8> lpServices,
  int cbBufSize,
  Pointer<Uint32> pcbBytesNeeded,
  Pointer<Uint32> lpServicesReturned,
  Pointer<Uint32> lpResumeHandle,
  PCWSTR pszGroupName,
);

@internal
@Native<BOOL Function(PCWSTR, Pointer<Uint32>)>()
external int FileEncryptionStatusW_Wrapper(
  PCWSTR lpFileName,
  Pointer<Uint32> lpStatus,
);

@internal
@Native<BOOL Function(SC_HANDLE, PCWSTR, PWSTR, Pointer<Uint32>)>()
external int GetServiceDisplayNameW_Wrapper(
  int hSCManager,
  PCWSTR lpServiceName,
  PWSTR lpDisplayName,
  Pointer<Uint32> lpcchBuffer,
);

@internal
@Native<BOOL Function(SC_HANDLE, PCWSTR, PWSTR, Pointer<Uint32>)>()
external int GetServiceKeyNameW_Wrapper(
  int hSCManager,
  PCWSTR lpDisplayName,
  PWSTR lpServiceName,
  Pointer<Uint32> lpcchBuffer,
);

@internal
@Native<BOOL Function(HANDLE, Int32, Pointer, Uint32, Pointer<Uint32>)>()
external int GetTokenInformation_Wrapper(
  int tokenHandle,
  int tokenInformationClass,
  Pointer tokenInformation,
  int tokenInformationLength,
  Pointer<Uint32> returnLength,
);

@internal
@Native<BOOL Function(PWSTR, Pointer<Uint32>)>()
external int GetUserNameW_Wrapper(PWSTR lpBuffer, Pointer<Uint32> pcbBuffer);

@internal
@Native<BOOL Function(BOOL)>()
external int NotifyBootConfigStatus_Wrapper(int bootAcceptable);

@internal
@Native<BOOL Function(HANDLE, Uint32, Pointer<HANDLE>)>()
external int OpenProcessToken_Wrapper(
  int processHandle,
  int desiredAccess,
  Pointer<HANDLE> tokenHandle,
);

@internal
@Native<SC_HANDLE Function(PCWSTR, PCWSTR, Uint32)>()
external int OpenSCManagerW_Wrapper(
  PCWSTR lpMachineName,
  PCWSTR lpDatabaseName,
  int dwDesiredAccess,
);

@internal
@Native<SC_HANDLE Function(SC_HANDLE, PCWSTR, Uint32)>()
external int OpenServiceW_Wrapper(
  int hSCManager,
  PCWSTR lpServiceName,
  int dwDesiredAccess,
);

@internal
@Native<BOOL Function(HANDLE, Uint32, BOOL, Pointer<HANDLE>)>()
external int OpenThreadToken_Wrapper(
  int threadHandle,
  int desiredAccess,
  int openAsSelf,
  Pointer<HANDLE> tokenHandle,
);

@internal
@Native<
  BOOL Function(
    SC_HANDLE,
    Pointer<QUERY_SERVICE_CONFIG>,
    Uint32,
    Pointer<Uint32>,
  )
>()
external int QueryServiceConfigW_Wrapper(
  int hService,
  Pointer<QUERY_SERVICE_CONFIG> lpServiceConfig,
  int cbBufSize,
  Pointer<Uint32> pcbBytesNeeded,
);

@internal
@Native<
  BOOL Function(SC_HANDLE, Uint32, Pointer<Uint8>, Uint32, Pointer<Uint32>)
>()
external int QueryServiceConfig2W_Wrapper(
  int hService,
  int dwInfoLevel,
  Pointer<Uint8> lpBuffer,
  int cbBufSize,
  Pointer<Uint32> pcbBytesNeeded,
);

@internal
@Native<BOOL Function(SERVICE_STATUS_HANDLE, Uint32, Pointer<Pointer>)>()
external int QueryServiceDynamicInformation_Wrapper(
  int hServiceStatus,
  int dwInfoLevel,
  Pointer<Pointer> ppDynamicInfo,
);

@internal
@Native<
  BOOL Function(
    SC_HANDLE,
    Uint32,
    PSECURITY_DESCRIPTOR,
    Uint32,
    Pointer<Uint32>,
  )
>()
external int QueryServiceObjectSecurity_Wrapper(
  int hService,
  int dwSecurityInformation,
  int lpSecurityDescriptor,
  int cbBufSize,
  Pointer<Uint32> pcbBytesNeeded,
);

@internal
@Native<BOOL Function(SC_HANDLE, Pointer<SERVICE_STATUS>)>()
external int QueryServiceStatus_Wrapper(
  int hService,
  Pointer<SERVICE_STATUS> lpServiceStatus,
);

@internal
@Native<
  BOOL Function(SC_HANDLE, Int32, Pointer<Uint8>, Uint32, Pointer<Uint32>)
>()
external int QueryServiceStatusEx_Wrapper(
  int hService,
  int infoLevel,
  Pointer<Uint8> lpBuffer,
  int cbBufSize,
  Pointer<Uint32> pcbBytesNeeded,
);

@internal
@Native<
  SERVICE_STATUS_HANDLE Function(
    PCWSTR,
    Pointer<NativeFunction<LPHANDLER_FUNCTION>>,
  )
>()
external int RegisterServiceCtrlHandlerW_Wrapper(
  PCWSTR lpServiceName,
  Pointer<NativeFunction<LPHANDLER_FUNCTION>> lpHandlerProc,
);

@internal
@Native<
  SERVICE_STATUS_HANDLE Function(
    PCWSTR,
    Pointer<NativeFunction<LPHANDLER_FUNCTION_EX>>,
    Pointer,
  )
>()
external int RegisterServiceCtrlHandlerExW_Wrapper(
  PCWSTR lpServiceName,
  Pointer<NativeFunction<LPHANDLER_FUNCTION_EX>> lpHandlerProc,
  Pointer lpContext,
);

@internal
@Native<BOOL Function(SC_HANDLE, Uint32, PSECURITY_DESCRIPTOR)>()
external int SetServiceObjectSecurity_Wrapper(
  int hService,
  int dwSecurityInformation,
  int lpSecurityDescriptor,
);

@internal
@Native<BOOL Function(SERVICE_STATUS_HANDLE, Pointer<SERVICE_STATUS>)>()
external int SetServiceStatus_Wrapper(
  int hServiceStatus,
  Pointer<SERVICE_STATUS> lpServiceStatus,
);

@internal
@Native<BOOL Function(Pointer<HANDLE>, HANDLE)>()
external int SetThreadToken_Wrapper(Pointer<HANDLE> thread, int token);

@internal
@Native<BOOL Function(SC_HANDLE, Uint32, Pointer<PCWSTR>)>()
external int StartServiceW_Wrapper(
  int hService,
  int dwNumServiceArgs,
  Pointer<PCWSTR> lpServiceArgVectors,
);

@internal
@Native<BOOL Function(Pointer<SERVICE_TABLE_ENTRY>)>()
external int StartServiceCtrlDispatcherW_Wrapper(
  Pointer<SERVICE_TABLE_ENTRY> lpServiceStartTable,
);
