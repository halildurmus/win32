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

import 'package:ffi/ffi.dart';
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
@Native<NativeWin32Result Function(Pointer, Uint32, Pointer)>()
external NativeWin32Result ChangeServiceConfig2W_Wrapper(
  Pointer hService,
  int dwInfoLevel,
  Pointer lpInfo,
);

@internal
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result CloseServiceHandle_Wrapper(Pointer hSCObject);

@internal
@Native<NativeWin32Result Function(Pointer, Uint32, Pointer<SERVICE_STATUS>)>()
external NativeWin32Result ControlService_Wrapper(
  Pointer hService,
  int dwControl,
  Pointer<SERVICE_STATUS> lpServiceStatus,
);

@internal
@Native<NativeWin32Result Function(Pointer, Uint32, Uint32, Pointer)>()
external NativeWin32Result ControlServiceExW_Wrapper(
  Pointer hService,
  int dwControl,
  int dwInfoLevel,
  Pointer pControlParams,
);

@internal
@Native<NativeWin32Result Function(Pointer<Utf16>, Uint32, Uint32)>()
external NativeWin32Result CredDeleteW_Wrapper(
  Pointer<Utf16> targetName,
  int type,
  int flags,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer<Utf16>,
    Uint32,
    Uint32,
    Pointer<Pointer<CREDENTIAL>>,
  )
>()
external NativeWin32Result CredReadW_Wrapper(
  Pointer<Utf16> targetName,
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
@Native<NativeWin32Result Function(Pointer<Utf16>, Uint32)>()
external NativeWin32Result DecryptFileW_Wrapper(
  Pointer<Utf16> lpFileName,
  int dwReserved,
);

@internal
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result DeleteService_Wrapper(Pointer hService);

@internal
@Native<NativeWin32Result Function(Pointer<Utf16>)>()
external NativeWin32Result EncryptFileW_Wrapper(Pointer<Utf16> lpFileName);

@internal
@Native<
  NativeWin32Result Function(
    Pointer,
    Uint32,
    Pointer<ENUM_SERVICE_STATUS>,
    Uint32,
    Pointer<Uint32>,
    Pointer<Uint32>,
  )
>()
external NativeWin32Result EnumDependentServicesW_Wrapper(
  Pointer hService,
  int dwServiceState,
  Pointer<ENUM_SERVICE_STATUS> lpServices,
  int cbBufSize,
  Pointer<Uint32> pcbBytesNeeded,
  Pointer<Uint32> lpServicesReturned,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer,
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
  Pointer hSCManager,
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
  )
>()
external NativeWin32Result EnumServicesStatusExW_Wrapper(
  Pointer hSCManager,
  int infoLevel,
  int dwServiceType,
  int dwServiceState,
  Pointer<Uint8> lpServices,
  int cbBufSize,
  Pointer<Uint32> pcbBytesNeeded,
  Pointer<Uint32> lpServicesReturned,
  Pointer<Uint32> lpResumeHandle,
  Pointer<Utf16> pszGroupName,
);

@internal
@Native<NativeWin32Result Function(Pointer<Utf16>, Pointer<Uint32>)>()
external NativeWin32Result FileEncryptionStatusW_Wrapper(
  Pointer<Utf16> lpFileName,
  Pointer<Uint32> lpStatus,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer,
    Pointer<Utf16>,
    Pointer<Utf16>,
    Pointer<Uint32>,
  )
>()
external NativeWin32Result GetServiceDisplayNameW_Wrapper(
  Pointer hSCManager,
  Pointer<Utf16> lpServiceName,
  Pointer<Utf16> lpDisplayName,
  Pointer<Uint32> lpcchBuffer,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer,
    Pointer<Utf16>,
    Pointer<Utf16>,
    Pointer<Uint32>,
  )
>()
external NativeWin32Result GetServiceKeyNameW_Wrapper(
  Pointer hSCManager,
  Pointer<Utf16> lpDisplayName,
  Pointer<Utf16> lpServiceName,
  Pointer<Uint32> lpcchBuffer,
);

@internal
@Native<
  NativeWin32Result Function(Pointer, Int32, Pointer, Uint32, Pointer<Uint32>)
>()
external NativeWin32Result GetTokenInformation_Wrapper(
  Pointer tokenHandle,
  int tokenInformationClass,
  Pointer tokenInformation,
  int tokenInformationLength,
  Pointer<Uint32> returnLength,
);

@internal
@Native<NativeWin32Result Function(Pointer<Utf16>, Pointer<Uint32>)>()
external NativeWin32Result GetUserNameW_Wrapper(
  Pointer<Utf16> lpBuffer,
  Pointer<Uint32> pcbBuffer,
);

@internal
@Native<NativeWin32Result Function(Int32)>()
external NativeWin32Result NotifyBootConfigStatus_Wrapper(int bootAcceptable);

@internal
@Native<NativeWin32Result Function(Pointer, Uint32, Pointer<Pointer>)>()
external NativeWin32Result OpenProcessToken_Wrapper(
  Pointer processHandle,
  int desiredAccess,
  Pointer<Pointer> tokenHandle,
);

@internal
@Native<NativeWin32Result Function(Pointer<Utf16>, Pointer<Utf16>, Uint32)>()
external NativeWin32Result OpenSCManagerW_Wrapper(
  Pointer<Utf16> lpMachineName,
  Pointer<Utf16> lpDatabaseName,
  int dwDesiredAccess,
);

@internal
@Native<NativeWin32Result Function(Pointer, Pointer<Utf16>, Uint32)>()
external NativeWin32Result OpenServiceW_Wrapper(
  Pointer hSCManager,
  Pointer<Utf16> lpServiceName,
  int dwDesiredAccess,
);

@internal
@Native<NativeWin32Result Function(Pointer, Uint32, Int32, Pointer<Pointer>)>()
external NativeWin32Result OpenThreadToken_Wrapper(
  Pointer threadHandle,
  int desiredAccess,
  int openAsSelf,
  Pointer<Pointer> tokenHandle,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer,
    Pointer<QUERY_SERVICE_CONFIG>,
    Uint32,
    Pointer<Uint32>,
  )
>()
external NativeWin32Result QueryServiceConfigW_Wrapper(
  Pointer hService,
  Pointer<QUERY_SERVICE_CONFIG> lpServiceConfig,
  int cbBufSize,
  Pointer<Uint32> pcbBytesNeeded,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer,
    Uint32,
    Pointer<Uint8>,
    Uint32,
    Pointer<Uint32>,
  )
>()
external NativeWin32Result QueryServiceConfig2W_Wrapper(
  Pointer hService,
  int dwInfoLevel,
  Pointer<Uint8> lpBuffer,
  int cbBufSize,
  Pointer<Uint32> pcbBytesNeeded,
);

@internal
@Native<NativeWin32Result Function(Pointer, Uint32, Pointer<Pointer>)>()
external NativeWin32Result QueryServiceDynamicInformation_Wrapper(
  Pointer hServiceStatus,
  int dwInfoLevel,
  Pointer<Pointer> ppDynamicInfo,
);

@internal
@Native<
  NativeWin32Result Function(Pointer, Uint32, Pointer, Uint32, Pointer<Uint32>)
>()
external NativeWin32Result QueryServiceObjectSecurity_Wrapper(
  Pointer hService,
  int dwSecurityInformation,
  Pointer lpSecurityDescriptor,
  int cbBufSize,
  Pointer<Uint32> pcbBytesNeeded,
);

@internal
@Native<NativeWin32Result Function(Pointer, Pointer<SERVICE_STATUS>)>()
external NativeWin32Result QueryServiceStatus_Wrapper(
  Pointer hService,
  Pointer<SERVICE_STATUS> lpServiceStatus,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer,
    Int32,
    Pointer<Uint8>,
    Uint32,
    Pointer<Uint32>,
  )
>()
external NativeWin32Result QueryServiceStatusEx_Wrapper(
  Pointer hService,
  int infoLevel,
  Pointer<Uint8> lpBuffer,
  int cbBufSize,
  Pointer<Uint32> pcbBytesNeeded,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer<Utf16>,
    Pointer<NativeFunction<LPHANDLER_FUNCTION>>,
  )
>()
external NativeWin32Result RegisterServiceCtrlHandlerW_Wrapper(
  Pointer<Utf16> lpServiceName,
  Pointer<NativeFunction<LPHANDLER_FUNCTION>> lpHandlerProc,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer<Utf16>,
    Pointer<NativeFunction<LPHANDLER_FUNCTION_EX>>,
    Pointer,
  )
>()
external NativeWin32Result RegisterServiceCtrlHandlerExW_Wrapper(
  Pointer<Utf16> lpServiceName,
  Pointer<NativeFunction<LPHANDLER_FUNCTION_EX>> lpHandlerProc,
  Pointer lpContext,
);

@internal
@Native<NativeWin32Result Function(Pointer, Uint32, Pointer)>()
external NativeWin32Result SetServiceObjectSecurity_Wrapper(
  Pointer hService,
  int dwSecurityInformation,
  Pointer lpSecurityDescriptor,
);

@internal
@Native<NativeWin32Result Function(Pointer, Pointer<SERVICE_STATUS>)>()
external NativeWin32Result SetServiceStatus_Wrapper(
  Pointer hServiceStatus,
  Pointer<SERVICE_STATUS> lpServiceStatus,
);

@internal
@Native<NativeWin32Result Function(Pointer<Pointer>, Pointer)>()
external NativeWin32Result SetThreadToken_Wrapper(
  Pointer<Pointer> thread,
  Pointer token,
);

@internal
@Native<NativeWin32Result Function(Pointer, Uint32, Pointer<Pointer<Utf16>>)>()
external NativeWin32Result StartServiceW_Wrapper(
  Pointer hService,
  int dwNumServiceArgs,
  Pointer<Pointer<Utf16>> lpServiceArgVectors,
);

@internal
@Native<NativeWin32Result Function(Pointer<SERVICE_TABLE_ENTRY>)>()
external NativeWin32Result StartServiceCtrlDispatcherW_Wrapper(
  Pointer<SERVICE_TABLE_ENTRY> lpServiceStartTable,
);
