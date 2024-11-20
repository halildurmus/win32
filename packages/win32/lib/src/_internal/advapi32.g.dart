// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Wrappers for Win32 API functions that wrap the native APIs and preserve the
// result of GetLastError(), making it easier to debug issues and handle errors
// reliably.
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
import 'win32.dart' show NativeWin32Result;

@internal
@Native<NativeWin32Result Function(SC_HANDLE, Uint32, Pointer)>()
external NativeWin32Result ChangeServiceConfig2W_Wrapper(
  int hService,
  int dwInfoLevel,
  Pointer lpInfo,
);

@internal
@Native<NativeWin32Result Function(SC_HANDLE)>()
external NativeWin32Result CloseServiceHandle_Wrapper(int hSCObject);

@internal
@Native<
  NativeWin32Result Function(SC_HANDLE, Uint32, Pointer<SERVICE_STATUS>)
>()
external NativeWin32Result ControlService_Wrapper(
  int hService,
  int dwControl,
  Pointer<SERVICE_STATUS> lpServiceStatus,
);

@internal
@Native<NativeWin32Result Function(SC_HANDLE, Uint32, Uint32, Pointer)>()
external NativeWin32Result ControlServiceExW_Wrapper(
  int hService,
  int dwControl,
  int dwInfoLevel,
  Pointer pControlParams,
);

@internal
@Native<NativeWin32Result Function(PCWSTR, Uint32, Uint32)>()
external NativeWin32Result CredDeleteW_Wrapper(
  PCWSTR targetName,
  int type,
  int flags,
);

@internal
@Native<
  NativeWin32Result Function(
    PCWSTR,
    Uint32,
    Uint32,
    Pointer<Pointer<CREDENTIAL>>,
  )
>()
external NativeWin32Result CredReadW_Wrapper(
  PCWSTR targetName,
  int type,
  int flags,
  Pointer<Pointer<CREDENTIAL>> credential,
);

@internal
@Native<NativeWin32Result Function(Pointer<CREDENTIAL>, Uint32)>()
external NativeWin32Result CredWriteW_Wrapper(
  Pointer<CREDENTIAL> credential,
  int flags,
);

@internal
@Native<NativeWin32Result Function(PCWSTR, Uint32)>()
external NativeWin32Result DecryptFileW_Wrapper(
  PCWSTR lpFileName,
  int dwReserved,
);

@internal
@Native<NativeWin32Result Function(SC_HANDLE)>()
external NativeWin32Result DeleteService_Wrapper(int hService);

@internal
@Native<NativeWin32Result Function(PCWSTR)>()
external NativeWin32Result EncryptFileW_Wrapper(PCWSTR lpFileName);

@internal
@Native<
  NativeWin32Result Function(
    SC_HANDLE,
    Uint32,
    Pointer<ENUM_SERVICE_STATUS>,
    Uint32,
    Pointer<Uint32>,
    Pointer<Uint32>,
  )
>()
external NativeWin32Result EnumDependentServicesW_Wrapper(
  int hService,
  int dwServiceState,
  Pointer<ENUM_SERVICE_STATUS> lpServices,
  int cbBufSize,
  Pointer<Uint32> pcbBytesNeeded,
  Pointer<Uint32> lpServicesReturned,
);

@internal
@Native<
  NativeWin32Result Function(
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
external NativeWin32Result EnumServicesStatusW_Wrapper(
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
  NativeWin32Result Function(
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
external NativeWin32Result EnumServicesStatusExW_Wrapper(
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
@Native<NativeWin32Result Function(PCWSTR, Pointer<Uint32>)>()
external NativeWin32Result FileEncryptionStatusW_Wrapper(
  PCWSTR lpFileName,
  Pointer<Uint32> lpStatus,
);

@internal
@Native<NativeWin32Result Function(SC_HANDLE, PCWSTR, PWSTR, Pointer<Uint32>)>()
external NativeWin32Result GetServiceDisplayNameW_Wrapper(
  int hSCManager,
  PCWSTR lpServiceName,
  PWSTR lpDisplayName,
  Pointer<Uint32> lpcchBuffer,
);

@internal
@Native<NativeWin32Result Function(SC_HANDLE, PCWSTR, PWSTR, Pointer<Uint32>)>()
external NativeWin32Result GetServiceKeyNameW_Wrapper(
  int hSCManager,
  PCWSTR lpDisplayName,
  PWSTR lpServiceName,
  Pointer<Uint32> lpcchBuffer,
);

@internal
@Native<
  NativeWin32Result Function(HANDLE, Int32, Pointer, Uint32, Pointer<Uint32>)
>()
external NativeWin32Result GetTokenInformation_Wrapper(
  int tokenHandle,
  int tokenInformationClass,
  Pointer tokenInformation,
  int tokenInformationLength,
  Pointer<Uint32> returnLength,
);

@internal
@Native<NativeWin32Result Function(PWSTR, Pointer<Uint32>)>()
external NativeWin32Result GetUserNameW_Wrapper(
  PWSTR lpBuffer,
  Pointer<Uint32> pcbBuffer,
);

@internal
@Native<NativeWin32Result Function(BOOL)>()
external NativeWin32Result NotifyBootConfigStatus_Wrapper(int bootAcceptable);

@internal
@Native<NativeWin32Result Function(HANDLE, Uint32, Pointer<HANDLE>)>()
external NativeWin32Result OpenProcessToken_Wrapper(
  int processHandle,
  int desiredAccess,
  Pointer<HANDLE> tokenHandle,
);

@internal
@Native<NativeWin32Result Function(PCWSTR, PCWSTR, Uint32)>()
external NativeWin32Result OpenSCManagerW_Wrapper(
  PCWSTR lpMachineName,
  PCWSTR lpDatabaseName,
  int dwDesiredAccess,
);

@internal
@Native<NativeWin32Result Function(SC_HANDLE, PCWSTR, Uint32)>()
external NativeWin32Result OpenServiceW_Wrapper(
  int hSCManager,
  PCWSTR lpServiceName,
  int dwDesiredAccess,
);

@internal
@Native<NativeWin32Result Function(HANDLE, Uint32, BOOL, Pointer<HANDLE>)>()
external NativeWin32Result OpenThreadToken_Wrapper(
  int threadHandle,
  int desiredAccess,
  int openAsSelf,
  Pointer<HANDLE> tokenHandle,
);

@internal
@Native<
  NativeWin32Result Function(
    SC_HANDLE,
    Pointer<QUERY_SERVICE_CONFIG>,
    Uint32,
    Pointer<Uint32>,
  )
>()
external NativeWin32Result QueryServiceConfigW_Wrapper(
  int hService,
  Pointer<QUERY_SERVICE_CONFIG> lpServiceConfig,
  int cbBufSize,
  Pointer<Uint32> pcbBytesNeeded,
);

@internal
@Native<
  NativeWin32Result Function(
    SC_HANDLE,
    Uint32,
    Pointer<Uint8>,
    Uint32,
    Pointer<Uint32>,
  )
>()
external NativeWin32Result QueryServiceConfig2W_Wrapper(
  int hService,
  int dwInfoLevel,
  Pointer<Uint8> lpBuffer,
  int cbBufSize,
  Pointer<Uint32> pcbBytesNeeded,
);

@internal
@Native<
  NativeWin32Result Function(SERVICE_STATUS_HANDLE, Uint32, Pointer<Pointer>)
>()
external NativeWin32Result QueryServiceDynamicInformation_Wrapper(
  int hServiceStatus,
  int dwInfoLevel,
  Pointer<Pointer> ppDynamicInfo,
);

@internal
@Native<
  NativeWin32Result Function(
    SC_HANDLE,
    Uint32,
    PSECURITY_DESCRIPTOR,
    Uint32,
    Pointer<Uint32>,
  )
>()
external NativeWin32Result QueryServiceObjectSecurity_Wrapper(
  int hService,
  int dwSecurityInformation,
  int lpSecurityDescriptor,
  int cbBufSize,
  Pointer<Uint32> pcbBytesNeeded,
);

@internal
@Native<NativeWin32Result Function(SC_HANDLE, Pointer<SERVICE_STATUS>)>()
external NativeWin32Result QueryServiceStatus_Wrapper(
  int hService,
  Pointer<SERVICE_STATUS> lpServiceStatus,
);

@internal
@Native<
  NativeWin32Result Function(
    SC_HANDLE,
    Int32,
    Pointer<Uint8>,
    Uint32,
    Pointer<Uint32>,
  )
>()
external NativeWin32Result QueryServiceStatusEx_Wrapper(
  int hService,
  int infoLevel,
  Pointer<Uint8> lpBuffer,
  int cbBufSize,
  Pointer<Uint32> pcbBytesNeeded,
);

@internal
@Native<
  NativeWin32Result Function(
    PCWSTR,
    Pointer<NativeFunction<LPHANDLER_FUNCTION>>,
  )
>()
external NativeWin32Result RegisterServiceCtrlHandlerW_Wrapper(
  PCWSTR lpServiceName,
  Pointer<NativeFunction<LPHANDLER_FUNCTION>> lpHandlerProc,
);

@internal
@Native<
  NativeWin32Result Function(
    PCWSTR,
    Pointer<NativeFunction<LPHANDLER_FUNCTION_EX>>,
    Pointer,
  )
>()
external NativeWin32Result RegisterServiceCtrlHandlerExW_Wrapper(
  PCWSTR lpServiceName,
  Pointer<NativeFunction<LPHANDLER_FUNCTION_EX>> lpHandlerProc,
  Pointer lpContext,
);

@internal
@Native<NativeWin32Result Function(SC_HANDLE, Uint32, PSECURITY_DESCRIPTOR)>()
external NativeWin32Result SetServiceObjectSecurity_Wrapper(
  int hService,
  int dwSecurityInformation,
  int lpSecurityDescriptor,
);

@internal
@Native<
  NativeWin32Result Function(SERVICE_STATUS_HANDLE, Pointer<SERVICE_STATUS>)
>()
external NativeWin32Result SetServiceStatus_Wrapper(
  int hServiceStatus,
  Pointer<SERVICE_STATUS> lpServiceStatus,
);

@internal
@Native<NativeWin32Result Function(Pointer<HANDLE>, HANDLE)>()
external NativeWin32Result SetThreadToken_Wrapper(
  Pointer<HANDLE> thread,
  int token,
);

@internal
@Native<NativeWin32Result Function(SC_HANDLE, Uint32, Pointer<PCWSTR>)>()
external NativeWin32Result StartServiceW_Wrapper(
  int hService,
  int dwNumServiceArgs,
  Pointer<PCWSTR> lpServiceArgVectors,
);

@internal
@Native<NativeWin32Result Function(Pointer<SERVICE_TABLE_ENTRY>)>()
external NativeWin32Result StartServiceCtrlDispatcherW_Wrapper(
  Pointer<SERVICE_TABLE_ENTRY> lpServiceStartTable,
);
