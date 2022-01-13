// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';

import '../../../combase.dart';
import '../../../guid.dart';
import '../../../security/credentials/structs.g.dart';
import '../../../security/authentication/identity/structs.g.dart';
import '../../../foundation/structs.g.dart';
import '../../../security/authentication/identity/callbacks.g.dart';
import '../../../system/kernel/structs.g.dart';
import '../../../security/structs.g.dart';
import '../../../system/windowsprogramming/structs.g.dart'; // -----------------------------------------------------------------------

// secur32.dll
// -----------------------------------------------------------------------
final _secur32 = DynamicLibrary.open('secur32.dll');

int AcceptSecurityContext(
  Pointer<SecHandle> phCredential,
  Pointer<SecHandle> phContext,
  Pointer<SecBufferDesc> pInput,
  int fContextReq,
  int TargetDataRep,
  Pointer<SecHandle> phNewContext,
  Pointer<SecBufferDesc> pOutput,
  Pointer<Uint32> pfContextAttr,
  Pointer<Int64> ptsExpiry,
) =>
    _AcceptSecurityContext(
      phCredential,
      phContext,
      pInput,
      fContextReq,
      TargetDataRep,
      phNewContext,
      pOutput,
      pfContextAttr,
      ptsExpiry,
    );

late final _AcceptSecurityContext = _secur32.lookupFunction<
    Int32 Function(
  Pointer<SecHandle> phCredential,
  Pointer<SecHandle> phContext,
  Pointer<SecBufferDesc> pInput,
  Uint32 fContextReq,
  Uint32 TargetDataRep,
  Pointer<SecHandle> phNewContext,
  Pointer<SecBufferDesc> pOutput,
  Pointer<Uint32> pfContextAttr,
  Pointer<Int64> ptsExpiry,
),
    int Function(
  Pointer<SecHandle> phCredential,
  Pointer<SecHandle> phContext,
  Pointer<SecBufferDesc> pInput,
  int fContextReq,
  int TargetDataRep,
  Pointer<SecHandle> phNewContext,
  Pointer<SecBufferDesc> pOutput,
  Pointer<Uint32> pfContextAttr,
  Pointer<Int64> ptsExpiry,
)>('AcceptSecurityContext');

int AcquireCredentialsHandle(
  Pointer<Utf16> pszPrincipal,
  Pointer<Utf16> pszPackage,
  int fCredentialUse,
  Pointer pvLogonId,
  Pointer pAuthData,
  Pointer<NativeFunction<SEC_GET_KEY_FN>> pGetKeyFn,
  Pointer pvGetKeyArgument,
  Pointer<SecHandle> phCredential,
  Pointer<Int64> ptsExpiry,
) =>
    _AcquireCredentialsHandle(
      pszPrincipal,
      pszPackage,
      fCredentialUse,
      pvLogonId,
      pAuthData,
      pGetKeyFn,
      pvGetKeyArgument,
      phCredential,
      ptsExpiry,
    );

late final _AcquireCredentialsHandle = _secur32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszPrincipal,
  Pointer<Utf16> pszPackage,
  Uint32 fCredentialUse,
  Pointer pvLogonId,
  Pointer pAuthData,
  Pointer<NativeFunction<SEC_GET_KEY_FN>> pGetKeyFn,
  Pointer pvGetKeyArgument,
  Pointer<SecHandle> phCredential,
  Pointer<Int64> ptsExpiry,
),
    int Function(
  Pointer<Utf16> pszPrincipal,
  Pointer<Utf16> pszPackage,
  int fCredentialUse,
  Pointer pvLogonId,
  Pointer pAuthData,
  Pointer<NativeFunction<SEC_GET_KEY_FN>> pGetKeyFn,
  Pointer pvGetKeyArgument,
  Pointer<SecHandle> phCredential,
  Pointer<Int64> ptsExpiry,
)>('AcquireCredentialsHandleW');

int AddCredentials(
  Pointer<SecHandle> hCredentials,
  Pointer<Utf16> pszPrincipal,
  Pointer<Utf16> pszPackage,
  int fCredentialUse,
  Pointer pAuthData,
  Pointer<NativeFunction<SEC_GET_KEY_FN>> pGetKeyFn,
  Pointer pvGetKeyArgument,
  Pointer<Int64> ptsExpiry,
) =>
    _AddCredentials(
      hCredentials,
      pszPrincipal,
      pszPackage,
      fCredentialUse,
      pAuthData,
      pGetKeyFn,
      pvGetKeyArgument,
      ptsExpiry,
    );

late final _AddCredentials = _secur32.lookupFunction<
    Int32 Function(
  Pointer<SecHandle> hCredentials,
  Pointer<Utf16> pszPrincipal,
  Pointer<Utf16> pszPackage,
  Uint32 fCredentialUse,
  Pointer pAuthData,
  Pointer<NativeFunction<SEC_GET_KEY_FN>> pGetKeyFn,
  Pointer pvGetKeyArgument,
  Pointer<Int64> ptsExpiry,
),
    int Function(
  Pointer<SecHandle> hCredentials,
  Pointer<Utf16> pszPrincipal,
  Pointer<Utf16> pszPackage,
  int fCredentialUse,
  Pointer pAuthData,
  Pointer<NativeFunction<SEC_GET_KEY_FN>> pGetKeyFn,
  Pointer pvGetKeyArgument,
  Pointer<Int64> ptsExpiry,
)>('AddCredentialsW');

int AddSecurityPackage(
  Pointer<Utf16> pszPackageName,
  Pointer<SECURITY_PACKAGE_OPTIONS> pOptions,
) =>
    _AddSecurityPackage(
      pszPackageName,
      pOptions,
    );

late final _AddSecurityPackage = _secur32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszPackageName,
  Pointer<SECURITY_PACKAGE_OPTIONS> pOptions,
),
    int Function(
  Pointer<Utf16> pszPackageName,
  Pointer<SECURITY_PACKAGE_OPTIONS> pOptions,
)>('AddSecurityPackageW');

int ApplyControlToken(
  Pointer<SecHandle> phContext,
  Pointer<SecBufferDesc> pInput,
) =>
    _ApplyControlToken(
      phContext,
      pInput,
    );

late final _ApplyControlToken = _secur32.lookupFunction<
    Int32 Function(
  Pointer<SecHandle> phContext,
  Pointer<SecBufferDesc> pInput,
),
    int Function(
  Pointer<SecHandle> phContext,
  Pointer<SecBufferDesc> pInput,
)>('ApplyControlToken');

int ChangeAccountPassword(
  Pointer<Uint16> pszPackageName,
  Pointer<Uint16> pszDomainName,
  Pointer<Uint16> pszAccountName,
  Pointer<Uint16> pszOldPassword,
  Pointer<Uint16> pszNewPassword,
  int bImpersonating,
  int dwReserved,
  Pointer<SecBufferDesc> pOutput,
) =>
    _ChangeAccountPassword(
      pszPackageName,
      pszDomainName,
      pszAccountName,
      pszOldPassword,
      pszNewPassword,
      bImpersonating,
      dwReserved,
      pOutput,
    );

late final _ChangeAccountPassword = _secur32.lookupFunction<
    Int32 Function(
  Pointer<Uint16> pszPackageName,
  Pointer<Uint16> pszDomainName,
  Pointer<Uint16> pszAccountName,
  Pointer<Uint16> pszOldPassword,
  Pointer<Uint16> pszNewPassword,
  Uint8 bImpersonating,
  Uint32 dwReserved,
  Pointer<SecBufferDesc> pOutput,
),
    int Function(
  Pointer<Uint16> pszPackageName,
  Pointer<Uint16> pszDomainName,
  Pointer<Uint16> pszAccountName,
  Pointer<Uint16> pszOldPassword,
  Pointer<Uint16> pszNewPassword,
  int bImpersonating,
  int dwReserved,
  Pointer<SecBufferDesc> pOutput,
)>('ChangeAccountPasswordW');

int CompleteAuthToken(
  Pointer<SecHandle> phContext,
  Pointer<SecBufferDesc> pToken,
) =>
    _CompleteAuthToken(
      phContext,
      pToken,
    );

late final _CompleteAuthToken = _secur32.lookupFunction<
    Int32 Function(
  Pointer<SecHandle> phContext,
  Pointer<SecBufferDesc> pToken,
),
    int Function(
  Pointer<SecHandle> phContext,
  Pointer<SecBufferDesc> pToken,
)>('CompleteAuthToken');

int CredMarshalTargetInfo(
  Pointer<CREDENTIAL_TARGET_INFORMATION> InTargetInfo,
  Pointer<Pointer<Uint16>> Buffer,
  Pointer<Uint32> BufferSize,
) =>
    _CredMarshalTargetInfo(
      InTargetInfo,
      Buffer,
      BufferSize,
    );

late final _CredMarshalTargetInfo = _secur32.lookupFunction<
    Int32 Function(
  Pointer<CREDENTIAL_TARGET_INFORMATION> InTargetInfo,
  Pointer<Pointer<Uint16>> Buffer,
  Pointer<Uint32> BufferSize,
),
    int Function(
  Pointer<CREDENTIAL_TARGET_INFORMATION> InTargetInfo,
  Pointer<Pointer<Uint16>> Buffer,
  Pointer<Uint32> BufferSize,
)>('CredMarshalTargetInfo');

int CredUnmarshalTargetInfo(
  Pointer<Uint16> Buffer,
  int BufferSize,
  Pointer<Pointer<CREDENTIAL_TARGET_INFORMATION>> RetTargetInfo,
  Pointer<Uint32> RetActualSize,
) =>
    _CredUnmarshalTargetInfo(
      Buffer,
      BufferSize,
      RetTargetInfo,
      RetActualSize,
    );

late final _CredUnmarshalTargetInfo = _secur32.lookupFunction<
    Int32 Function(
  Pointer<Uint16> Buffer,
  Uint32 BufferSize,
  Pointer<Pointer<CREDENTIAL_TARGET_INFORMATION>> RetTargetInfo,
  Pointer<Uint32> RetActualSize,
),
    int Function(
  Pointer<Uint16> Buffer,
  int BufferSize,
  Pointer<Pointer<CREDENTIAL_TARGET_INFORMATION>> RetTargetInfo,
  Pointer<Uint32> RetActualSize,
)>('CredUnmarshalTargetInfo');

int DecryptMessage(
  Pointer<SecHandle> phContext,
  Pointer<SecBufferDesc> pMessage,
  int MessageSeqNo,
  Pointer<Uint32> pfQOP,
) =>
    _DecryptMessage(
      phContext,
      pMessage,
      MessageSeqNo,
      pfQOP,
    );

late final _DecryptMessage = _secur32.lookupFunction<
    Int32 Function(
  Pointer<SecHandle> phContext,
  Pointer<SecBufferDesc> pMessage,
  Uint32 MessageSeqNo,
  Pointer<Uint32> pfQOP,
),
    int Function(
  Pointer<SecHandle> phContext,
  Pointer<SecBufferDesc> pMessage,
  int MessageSeqNo,
  Pointer<Uint32> pfQOP,
)>('DecryptMessage');

int DeleteSecurityContext(
  Pointer<SecHandle> phContext,
) =>
    _DeleteSecurityContext(
      phContext,
    );

late final _DeleteSecurityContext = _secur32.lookupFunction<
    Int32 Function(
  Pointer<SecHandle> phContext,
),
    int Function(
  Pointer<SecHandle> phContext,
)>('DeleteSecurityContext');

int DeleteSecurityPackage(
  Pointer<Utf16> pszPackageName,
) =>
    _DeleteSecurityPackage(
      pszPackageName,
    );

late final _DeleteSecurityPackage = _secur32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszPackageName,
),
    int Function(
  Pointer<Utf16> pszPackageName,
)>('DeleteSecurityPackageW');

int EncryptMessage(
  Pointer<SecHandle> phContext,
  int fQOP,
  Pointer<SecBufferDesc> pMessage,
  int MessageSeqNo,
) =>
    _EncryptMessage(
      phContext,
      fQOP,
      pMessage,
      MessageSeqNo,
    );

late final _EncryptMessage = _secur32.lookupFunction<
    Int32 Function(
  Pointer<SecHandle> phContext,
  Uint32 fQOP,
  Pointer<SecBufferDesc> pMessage,
  Uint32 MessageSeqNo,
),
    int Function(
  Pointer<SecHandle> phContext,
  int fQOP,
  Pointer<SecBufferDesc> pMessage,
  int MessageSeqNo,
)>('EncryptMessage');

int EnumerateSecurityPackages(
  Pointer<Uint32> pcPackages,
  Pointer<Pointer<SecPkgInfo>> ppPackageInfo,
) =>
    _EnumerateSecurityPackages(
      pcPackages,
      ppPackageInfo,
    );

late final _EnumerateSecurityPackages = _secur32.lookupFunction<
    Int32 Function(
  Pointer<Uint32> pcPackages,
  Pointer<Pointer<SecPkgInfo>> ppPackageInfo,
),
    int Function(
  Pointer<Uint32> pcPackages,
  Pointer<Pointer<SecPkgInfo>> ppPackageInfo,
)>('EnumerateSecurityPackagesW');

int ExportSecurityContext(
  Pointer<SecHandle> phContext,
  int fFlags,
  Pointer<SecBuffer> pPackedContext,
  Pointer<Pointer> pToken,
) =>
    _ExportSecurityContext(
      phContext,
      fFlags,
      pPackedContext,
      pToken,
    );

late final _ExportSecurityContext = _secur32.lookupFunction<
    Int32 Function(
  Pointer<SecHandle> phContext,
  Uint32 fFlags,
  Pointer<SecBuffer> pPackedContext,
  Pointer<Pointer> pToken,
),
    int Function(
  Pointer<SecHandle> phContext,
  int fFlags,
  Pointer<SecBuffer> pPackedContext,
  Pointer<Pointer> pToken,
)>('ExportSecurityContext');

int FreeContextBuffer(
  Pointer pvContextBuffer,
) =>
    _FreeContextBuffer(
      pvContextBuffer,
    );

late final _FreeContextBuffer = _secur32.lookupFunction<
    Int32 Function(
  Pointer pvContextBuffer,
),
    int Function(
  Pointer pvContextBuffer,
)>('FreeContextBuffer');

int FreeCredentialsHandle(
  Pointer<SecHandle> phCredential,
) =>
    _FreeCredentialsHandle(
      phCredential,
    );

late final _FreeCredentialsHandle = _secur32.lookupFunction<
    Int32 Function(
  Pointer<SecHandle> phCredential,
),
    int Function(
  Pointer<SecHandle> phCredential,
)>('FreeCredentialsHandle');

int GetComputerObjectName(
  int NameFormat,
  Pointer<Utf16> lpNameBuffer,
  Pointer<Uint32> nSize,
) =>
    _GetComputerObjectName(
      NameFormat,
      lpNameBuffer,
      nSize,
    );

late final _GetComputerObjectName = _secur32.lookupFunction<
    Uint8 Function(
  Int32 NameFormat,
  Pointer<Utf16> lpNameBuffer,
  Pointer<Uint32> nSize,
),
    int Function(
  int NameFormat,
  Pointer<Utf16> lpNameBuffer,
  Pointer<Uint32> nSize,
)>('GetComputerObjectNameW');

int GetUserNameEx(
  int NameFormat,
  Pointer<Utf16> lpNameBuffer,
  Pointer<Uint32> nSize,
) =>
    _GetUserNameEx(
      NameFormat,
      lpNameBuffer,
      nSize,
    );

late final _GetUserNameEx = _secur32.lookupFunction<
    Uint8 Function(
  Int32 NameFormat,
  Pointer<Utf16> lpNameBuffer,
  Pointer<Uint32> nSize,
),
    int Function(
  int NameFormat,
  Pointer<Utf16> lpNameBuffer,
  Pointer<Uint32> nSize,
)>('GetUserNameExW');

int ImpersonateSecurityContext(
  Pointer<SecHandle> phContext,
) =>
    _ImpersonateSecurityContext(
      phContext,
    );

late final _ImpersonateSecurityContext = _secur32.lookupFunction<
    Int32 Function(
  Pointer<SecHandle> phContext,
),
    int Function(
  Pointer<SecHandle> phContext,
)>('ImpersonateSecurityContext');

int ImportSecurityContext(
  Pointer<Utf16> pszPackage,
  Pointer<SecBuffer> pPackedContext,
  Pointer Token,
  Pointer<SecHandle> phContext,
) =>
    _ImportSecurityContext(
      pszPackage,
      pPackedContext,
      Token,
      phContext,
    );

late final _ImportSecurityContext = _secur32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszPackage,
  Pointer<SecBuffer> pPackedContext,
  Pointer Token,
  Pointer<SecHandle> phContext,
),
    int Function(
  Pointer<Utf16> pszPackage,
  Pointer<SecBuffer> pPackedContext,
  Pointer Token,
  Pointer<SecHandle> phContext,
)>('ImportSecurityContextW');

Pointer<SecurityFunctionTable> InitSecurityInterface() =>
    _InitSecurityInterface();

late final _InitSecurityInterface = _secur32.lookupFunction<
    Pointer<SecurityFunctionTable> Function(),
    Pointer<SecurityFunctionTable> Function()>('InitSecurityInterfaceW');

int InitializeSecurityContext(
  Pointer<SecHandle> phCredential,
  Pointer<SecHandle> phContext,
  Pointer<Uint16> pszTargetName,
  int fContextReq,
  int Reserved1,
  int TargetDataRep,
  Pointer<SecBufferDesc> pInput,
  int Reserved2,
  Pointer<SecHandle> phNewContext,
  Pointer<SecBufferDesc> pOutput,
  Pointer<Uint32> pfContextAttr,
  Pointer<Int64> ptsExpiry,
) =>
    _InitializeSecurityContext(
      phCredential,
      phContext,
      pszTargetName,
      fContextReq,
      Reserved1,
      TargetDataRep,
      pInput,
      Reserved2,
      phNewContext,
      pOutput,
      pfContextAttr,
      ptsExpiry,
    );

late final _InitializeSecurityContext = _secur32.lookupFunction<
    Int32 Function(
  Pointer<SecHandle> phCredential,
  Pointer<SecHandle> phContext,
  Pointer<Uint16> pszTargetName,
  Uint32 fContextReq,
  Uint32 Reserved1,
  Uint32 TargetDataRep,
  Pointer<SecBufferDesc> pInput,
  Uint32 Reserved2,
  Pointer<SecHandle> phNewContext,
  Pointer<SecBufferDesc> pOutput,
  Pointer<Uint32> pfContextAttr,
  Pointer<Int64> ptsExpiry,
),
    int Function(
  Pointer<SecHandle> phCredential,
  Pointer<SecHandle> phContext,
  Pointer<Uint16> pszTargetName,
  int fContextReq,
  int Reserved1,
  int TargetDataRep,
  Pointer<SecBufferDesc> pInput,
  int Reserved2,
  Pointer<SecHandle> phNewContext,
  Pointer<SecBufferDesc> pOutput,
  Pointer<Uint32> pfContextAttr,
  Pointer<Int64> ptsExpiry,
)>('InitializeSecurityContextW');

int LsaCallAuthenticationPackage(
  int LsaHandle,
  int AuthenticationPackage,
  Pointer ProtocolSubmitBuffer,
  int SubmitBufferLength,
  Pointer<Pointer> ProtocolReturnBuffer,
  Pointer<Uint32> ReturnBufferLength,
  Pointer<Int32> ProtocolStatus,
) =>
    _LsaCallAuthenticationPackage(
      LsaHandle,
      AuthenticationPackage,
      ProtocolSubmitBuffer,
      SubmitBufferLength,
      ProtocolReturnBuffer,
      ReturnBufferLength,
      ProtocolStatus,
    );

late final _LsaCallAuthenticationPackage = _secur32.lookupFunction<
    Int32 Function(
  IntPtr LsaHandle,
  Uint32 AuthenticationPackage,
  Pointer ProtocolSubmitBuffer,
  Uint32 SubmitBufferLength,
  Pointer<Pointer> ProtocolReturnBuffer,
  Pointer<Uint32> ReturnBufferLength,
  Pointer<Int32> ProtocolStatus,
),
    int Function(
  int LsaHandle,
  int AuthenticationPackage,
  Pointer ProtocolSubmitBuffer,
  int SubmitBufferLength,
  Pointer<Pointer> ProtocolReturnBuffer,
  Pointer<Uint32> ReturnBufferLength,
  Pointer<Int32> ProtocolStatus,
)>('LsaCallAuthenticationPackage');

int LsaConnectUntrusted(
  Pointer<IntPtr> LsaHandle,
) =>
    _LsaConnectUntrusted(
      LsaHandle,
    );

late final _LsaConnectUntrusted = _secur32.lookupFunction<
    Int32 Function(
  Pointer<IntPtr> LsaHandle,
),
    int Function(
  Pointer<IntPtr> LsaHandle,
)>('LsaConnectUntrusted');

int LsaDeregisterLogonProcess(
  int LsaHandle,
) =>
    _LsaDeregisterLogonProcess(
      LsaHandle,
    );

late final _LsaDeregisterLogonProcess = _secur32.lookupFunction<
    Int32 Function(
  IntPtr LsaHandle,
),
    int Function(
  int LsaHandle,
)>('LsaDeregisterLogonProcess');

int LsaEnumerateLogonSessions(
  Pointer<Uint32> LogonSessionCount,
  Pointer<Pointer<LUID>> LogonSessionList,
) =>
    _LsaEnumerateLogonSessions(
      LogonSessionCount,
      LogonSessionList,
    );

late final _LsaEnumerateLogonSessions = _secur32.lookupFunction<
    Int32 Function(
  Pointer<Uint32> LogonSessionCount,
  Pointer<Pointer<LUID>> LogonSessionList,
),
    int Function(
  Pointer<Uint32> LogonSessionCount,
  Pointer<Pointer<LUID>> LogonSessionList,
)>('LsaEnumerateLogonSessions');

int LsaFreeReturnBuffer(
  Pointer Buffer,
) =>
    _LsaFreeReturnBuffer(
      Buffer,
    );

late final _LsaFreeReturnBuffer = _secur32.lookupFunction<
    Int32 Function(
  Pointer Buffer,
),
    int Function(
  Pointer Buffer,
)>('LsaFreeReturnBuffer');

int LsaGetLogonSessionData(
  Pointer<LUID> LogonId,
  Pointer<Pointer<SECURITY_LOGON_SESSION_DATA>> ppLogonSessionData,
) =>
    _LsaGetLogonSessionData(
      LogonId,
      ppLogonSessionData,
    );

late final _LsaGetLogonSessionData = _secur32.lookupFunction<
    Int32 Function(
  Pointer<LUID> LogonId,
  Pointer<Pointer<SECURITY_LOGON_SESSION_DATA>> ppLogonSessionData,
),
    int Function(
  Pointer<LUID> LogonId,
  Pointer<Pointer<SECURITY_LOGON_SESSION_DATA>> ppLogonSessionData,
)>('LsaGetLogonSessionData');

int LsaLogonUser(
  int LsaHandle,
  Pointer<STRING> OriginName,
  int LogonType,
  int AuthenticationPackage,
  Pointer AuthenticationInformation,
  int AuthenticationInformationLength,
  Pointer<TOKEN_GROUPS> LocalGroups,
  Pointer<TOKEN_SOURCE> SourceContext,
  Pointer<Pointer> ProfileBuffer,
  Pointer<Uint32> ProfileBufferLength,
  Pointer<LUID> LogonId,
  Pointer<IntPtr> Token,
  Pointer<QUOTA_LIMITS> Quotas,
  Pointer<Int32> SubStatus,
) =>
    _LsaLogonUser(
      LsaHandle,
      OriginName,
      LogonType,
      AuthenticationPackage,
      AuthenticationInformation,
      AuthenticationInformationLength,
      LocalGroups,
      SourceContext,
      ProfileBuffer,
      ProfileBufferLength,
      LogonId,
      Token,
      Quotas,
      SubStatus,
    );

late final _LsaLogonUser = _secur32.lookupFunction<
    Int32 Function(
  IntPtr LsaHandle,
  Pointer<STRING> OriginName,
  Int32 LogonType,
  Uint32 AuthenticationPackage,
  Pointer AuthenticationInformation,
  Uint32 AuthenticationInformationLength,
  Pointer<TOKEN_GROUPS> LocalGroups,
  Pointer<TOKEN_SOURCE> SourceContext,
  Pointer<Pointer> ProfileBuffer,
  Pointer<Uint32> ProfileBufferLength,
  Pointer<LUID> LogonId,
  Pointer<IntPtr> Token,
  Pointer<QUOTA_LIMITS> Quotas,
  Pointer<Int32> SubStatus,
),
    int Function(
  int LsaHandle,
  Pointer<STRING> OriginName,
  int LogonType,
  int AuthenticationPackage,
  Pointer AuthenticationInformation,
  int AuthenticationInformationLength,
  Pointer<TOKEN_GROUPS> LocalGroups,
  Pointer<TOKEN_SOURCE> SourceContext,
  Pointer<Pointer> ProfileBuffer,
  Pointer<Uint32> ProfileBufferLength,
  Pointer<LUID> LogonId,
  Pointer<IntPtr> Token,
  Pointer<QUOTA_LIMITS> Quotas,
  Pointer<Int32> SubStatus,
)>('LsaLogonUser');

int LsaLookupAuthenticationPackage(
  int LsaHandle,
  Pointer<STRING> PackageName,
  Pointer<Uint32> AuthenticationPackage,
) =>
    _LsaLookupAuthenticationPackage(
      LsaHandle,
      PackageName,
      AuthenticationPackage,
    );

late final _LsaLookupAuthenticationPackage = _secur32.lookupFunction<
    Int32 Function(
  IntPtr LsaHandle,
  Pointer<STRING> PackageName,
  Pointer<Uint32> AuthenticationPackage,
),
    int Function(
  int LsaHandle,
  Pointer<STRING> PackageName,
  Pointer<Uint32> AuthenticationPackage,
)>('LsaLookupAuthenticationPackage');

int LsaRegisterLogonProcess(
  Pointer<STRING> LogonProcessName,
  Pointer<IntPtr> LsaHandle,
  Pointer<Uint32> SecurityMode,
) =>
    _LsaRegisterLogonProcess(
      LogonProcessName,
      LsaHandle,
      SecurityMode,
    );

late final _LsaRegisterLogonProcess = _secur32.lookupFunction<
    Int32 Function(
  Pointer<STRING> LogonProcessName,
  Pointer<IntPtr> LsaHandle,
  Pointer<Uint32> SecurityMode,
),
    int Function(
  Pointer<STRING> LogonProcessName,
  Pointer<IntPtr> LsaHandle,
  Pointer<Uint32> SecurityMode,
)>('LsaRegisterLogonProcess');

int LsaRegisterPolicyChangeNotification(
  int InformationClass,
  int NotificationEventHandle,
) =>
    _LsaRegisterPolicyChangeNotification(
      InformationClass,
      NotificationEventHandle,
    );

late final _LsaRegisterPolicyChangeNotification = _secur32.lookupFunction<
    Int32 Function(
  Int32 InformationClass,
  IntPtr NotificationEventHandle,
),
    int Function(
  int InformationClass,
  int NotificationEventHandle,
)>('LsaRegisterPolicyChangeNotification');

int LsaUnregisterPolicyChangeNotification(
  int InformationClass,
  int NotificationEventHandle,
) =>
    _LsaUnregisterPolicyChangeNotification(
      InformationClass,
      NotificationEventHandle,
    );

late final _LsaUnregisterPolicyChangeNotification = _secur32.lookupFunction<
    Int32 Function(
  Int32 InformationClass,
  IntPtr NotificationEventHandle,
),
    int Function(
  int InformationClass,
  int NotificationEventHandle,
)>('LsaUnregisterPolicyChangeNotification');

int MakeSignature(
  Pointer<SecHandle> phContext,
  int fQOP,
  Pointer<SecBufferDesc> pMessage,
  int MessageSeqNo,
) =>
    _MakeSignature(
      phContext,
      fQOP,
      pMessage,
      MessageSeqNo,
    );

late final _MakeSignature = _secur32.lookupFunction<
    Int32 Function(
  Pointer<SecHandle> phContext,
  Uint32 fQOP,
  Pointer<SecBufferDesc> pMessage,
  Uint32 MessageSeqNo,
),
    int Function(
  Pointer<SecHandle> phContext,
  int fQOP,
  Pointer<SecBufferDesc> pMessage,
  int MessageSeqNo,
)>('MakeSignature');

int QueryContextAttributes(
  Pointer<SecHandle> phContext,
  int ulAttribute,
  Pointer pBuffer,
) =>
    _QueryContextAttributes(
      phContext,
      ulAttribute,
      pBuffer,
    );

late final _QueryContextAttributes = _secur32.lookupFunction<
    Int32 Function(
  Pointer<SecHandle> phContext,
  Uint32 ulAttribute,
  Pointer pBuffer,
),
    int Function(
  Pointer<SecHandle> phContext,
  int ulAttribute,
  Pointer pBuffer,
)>('QueryContextAttributesW');

int QueryCredentialsAttributes(
  Pointer<SecHandle> phCredential,
  int ulAttribute,
  Pointer pBuffer,
) =>
    _QueryCredentialsAttributes(
      phCredential,
      ulAttribute,
      pBuffer,
    );

late final _QueryCredentialsAttributes = _secur32.lookupFunction<
    Int32 Function(
  Pointer<SecHandle> phCredential,
  Uint32 ulAttribute,
  Pointer pBuffer,
),
    int Function(
  Pointer<SecHandle> phCredential,
  int ulAttribute,
  Pointer pBuffer,
)>('QueryCredentialsAttributesW');

int QuerySecurityContextToken(
  Pointer<SecHandle> phContext,
  Pointer<Pointer> Token,
) =>
    _QuerySecurityContextToken(
      phContext,
      Token,
    );

late final _QuerySecurityContextToken = _secur32.lookupFunction<
    Int32 Function(
  Pointer<SecHandle> phContext,
  Pointer<Pointer> Token,
),
    int Function(
  Pointer<SecHandle> phContext,
  Pointer<Pointer> Token,
)>('QuerySecurityContextToken');

int QuerySecurityPackageInfo(
  Pointer<Utf16> pszPackageName,
  Pointer<Pointer<SecPkgInfo>> ppPackageInfo,
) =>
    _QuerySecurityPackageInfo(
      pszPackageName,
      ppPackageInfo,
    );

late final _QuerySecurityPackageInfo = _secur32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszPackageName,
  Pointer<Pointer<SecPkgInfo>> ppPackageInfo,
),
    int Function(
  Pointer<Utf16> pszPackageName,
  Pointer<Pointer<SecPkgInfo>> ppPackageInfo,
)>('QuerySecurityPackageInfoW');

int RevertSecurityContext(
  Pointer<SecHandle> phContext,
) =>
    _RevertSecurityContext(
      phContext,
    );

late final _RevertSecurityContext = _secur32.lookupFunction<
    Int32 Function(
  Pointer<SecHandle> phContext,
),
    int Function(
  Pointer<SecHandle> phContext,
)>('RevertSecurityContext');

int SaslAcceptSecurityContext(
  Pointer<SecHandle> phCredential,
  Pointer<SecHandle> phContext,
  Pointer<SecBufferDesc> pInput,
  int fContextReq,
  int TargetDataRep,
  Pointer<SecHandle> phNewContext,
  Pointer<SecBufferDesc> pOutput,
  Pointer<Uint32> pfContextAttr,
  Pointer<Int64> ptsExpiry,
) =>
    _SaslAcceptSecurityContext(
      phCredential,
      phContext,
      pInput,
      fContextReq,
      TargetDataRep,
      phNewContext,
      pOutput,
      pfContextAttr,
      ptsExpiry,
    );

late final _SaslAcceptSecurityContext = _secur32.lookupFunction<
    Int32 Function(
  Pointer<SecHandle> phCredential,
  Pointer<SecHandle> phContext,
  Pointer<SecBufferDesc> pInput,
  Uint32 fContextReq,
  Uint32 TargetDataRep,
  Pointer<SecHandle> phNewContext,
  Pointer<SecBufferDesc> pOutput,
  Pointer<Uint32> pfContextAttr,
  Pointer<Int64> ptsExpiry,
),
    int Function(
  Pointer<SecHandle> phCredential,
  Pointer<SecHandle> phContext,
  Pointer<SecBufferDesc> pInput,
  int fContextReq,
  int TargetDataRep,
  Pointer<SecHandle> phNewContext,
  Pointer<SecBufferDesc> pOutput,
  Pointer<Uint32> pfContextAttr,
  Pointer<Int64> ptsExpiry,
)>('SaslAcceptSecurityContext');

int SaslEnumerateProfiles(
  Pointer<Pointer<Utf16>> ProfileList,
  Pointer<Uint32> ProfileCount,
) =>
    _SaslEnumerateProfiles(
      ProfileList,
      ProfileCount,
    );

late final _SaslEnumerateProfiles = _secur32.lookupFunction<
    Int32 Function(
  Pointer<Pointer<Utf16>> ProfileList,
  Pointer<Uint32> ProfileCount,
),
    int Function(
  Pointer<Pointer<Utf16>> ProfileList,
  Pointer<Uint32> ProfileCount,
)>('SaslEnumerateProfilesW');

int SaslGetContextOption(
  Pointer<SecHandle> ContextHandle,
  int Option,
  Pointer Value,
  int Size,
  Pointer<Uint32> Needed,
) =>
    _SaslGetContextOption(
      ContextHandle,
      Option,
      Value,
      Size,
      Needed,
    );

late final _SaslGetContextOption = _secur32.lookupFunction<
    Int32 Function(
  Pointer<SecHandle> ContextHandle,
  Uint32 Option,
  Pointer Value,
  Uint32 Size,
  Pointer<Uint32> Needed,
),
    int Function(
  Pointer<SecHandle> ContextHandle,
  int Option,
  Pointer Value,
  int Size,
  Pointer<Uint32> Needed,
)>('SaslGetContextOption');

int SaslGetProfilePackage(
  Pointer<Utf16> ProfileName,
  Pointer<Pointer<SecPkgInfo>> PackageInfo,
) =>
    _SaslGetProfilePackage(
      ProfileName,
      PackageInfo,
    );

late final _SaslGetProfilePackage = _secur32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> ProfileName,
  Pointer<Pointer<SecPkgInfo>> PackageInfo,
),
    int Function(
  Pointer<Utf16> ProfileName,
  Pointer<Pointer<SecPkgInfo>> PackageInfo,
)>('SaslGetProfilePackageW');

int SaslIdentifyPackage(
  Pointer<SecBufferDesc> pInput,
  Pointer<Pointer<SecPkgInfo>> PackageInfo,
) =>
    _SaslIdentifyPackage(
      pInput,
      PackageInfo,
    );

late final _SaslIdentifyPackage = _secur32.lookupFunction<
    Int32 Function(
  Pointer<SecBufferDesc> pInput,
  Pointer<Pointer<SecPkgInfo>> PackageInfo,
),
    int Function(
  Pointer<SecBufferDesc> pInput,
  Pointer<Pointer<SecPkgInfo>> PackageInfo,
)>('SaslIdentifyPackageW');

int SaslInitializeSecurityContext(
  Pointer<SecHandle> phCredential,
  Pointer<SecHandle> phContext,
  Pointer<Utf16> pszTargetName,
  int fContextReq,
  int Reserved1,
  int TargetDataRep,
  Pointer<SecBufferDesc> pInput,
  int Reserved2,
  Pointer<SecHandle> phNewContext,
  Pointer<SecBufferDesc> pOutput,
  Pointer<Uint32> pfContextAttr,
  Pointer<Int64> ptsExpiry,
) =>
    _SaslInitializeSecurityContext(
      phCredential,
      phContext,
      pszTargetName,
      fContextReq,
      Reserved1,
      TargetDataRep,
      pInput,
      Reserved2,
      phNewContext,
      pOutput,
      pfContextAttr,
      ptsExpiry,
    );

late final _SaslInitializeSecurityContext = _secur32.lookupFunction<
    Int32 Function(
  Pointer<SecHandle> phCredential,
  Pointer<SecHandle> phContext,
  Pointer<Utf16> pszTargetName,
  Uint32 fContextReq,
  Uint32 Reserved1,
  Uint32 TargetDataRep,
  Pointer<SecBufferDesc> pInput,
  Uint32 Reserved2,
  Pointer<SecHandle> phNewContext,
  Pointer<SecBufferDesc> pOutput,
  Pointer<Uint32> pfContextAttr,
  Pointer<Int64> ptsExpiry,
),
    int Function(
  Pointer<SecHandle> phCredential,
  Pointer<SecHandle> phContext,
  Pointer<Utf16> pszTargetName,
  int fContextReq,
  int Reserved1,
  int TargetDataRep,
  Pointer<SecBufferDesc> pInput,
  int Reserved2,
  Pointer<SecHandle> phNewContext,
  Pointer<SecBufferDesc> pOutput,
  Pointer<Uint32> pfContextAttr,
  Pointer<Int64> ptsExpiry,
)>('SaslInitializeSecurityContextW');

int SaslSetContextOption(
  Pointer<SecHandle> ContextHandle,
  int Option,
  Pointer Value,
  int Size,
) =>
    _SaslSetContextOption(
      ContextHandle,
      Option,
      Value,
      Size,
    );

late final _SaslSetContextOption = _secur32.lookupFunction<
    Int32 Function(
  Pointer<SecHandle> ContextHandle,
  Uint32 Option,
  Pointer Value,
  Uint32 Size,
),
    int Function(
  Pointer<SecHandle> ContextHandle,
  int Option,
  Pointer Value,
  int Size,
)>('SaslSetContextOption');

int SetContextAttributes(
  Pointer<SecHandle> phContext,
  int ulAttribute,
  Pointer pBuffer,
  int cbBuffer,
) =>
    _SetContextAttributes(
      phContext,
      ulAttribute,
      pBuffer,
      cbBuffer,
    );

late final _SetContextAttributes = _secur32.lookupFunction<
    Int32 Function(
  Pointer<SecHandle> phContext,
  Uint32 ulAttribute,
  Pointer pBuffer,
  Uint32 cbBuffer,
),
    int Function(
  Pointer<SecHandle> phContext,
  int ulAttribute,
  Pointer pBuffer,
  int cbBuffer,
)>('SetContextAttributesW');

int SetCredentialsAttributes(
  Pointer<SecHandle> phCredential,
  int ulAttribute,
  Pointer pBuffer,
  int cbBuffer,
) =>
    _SetCredentialsAttributes(
      phCredential,
      ulAttribute,
      pBuffer,
      cbBuffer,
    );

late final _SetCredentialsAttributes = _secur32.lookupFunction<
    Int32 Function(
  Pointer<SecHandle> phCredential,
  Uint32 ulAttribute,
  Pointer pBuffer,
  Uint32 cbBuffer,
),
    int Function(
  Pointer<SecHandle> phCredential,
  int ulAttribute,
  Pointer pBuffer,
  int cbBuffer,
)>('SetCredentialsAttributesW');

int SspiCompareAuthIdentities(
  Pointer AuthIdentity1,
  Pointer AuthIdentity2,
  Pointer<Uint8> SameSuppliedUser,
  Pointer<Uint8> SameSuppliedIdentity,
) =>
    _SspiCompareAuthIdentities(
      AuthIdentity1,
      AuthIdentity2,
      SameSuppliedUser,
      SameSuppliedIdentity,
    );

late final _SspiCompareAuthIdentities = _secur32.lookupFunction<
    Int32 Function(
  Pointer AuthIdentity1,
  Pointer AuthIdentity2,
  Pointer<Uint8> SameSuppliedUser,
  Pointer<Uint8> SameSuppliedIdentity,
),
    int Function(
  Pointer AuthIdentity1,
  Pointer AuthIdentity2,
  Pointer<Uint8> SameSuppliedUser,
  Pointer<Uint8> SameSuppliedIdentity,
)>('SspiCompareAuthIdentities');

int SspiCopyAuthIdentity(
  Pointer AuthData,
  Pointer<Pointer> AuthDataCopy,
) =>
    _SspiCopyAuthIdentity(
      AuthData,
      AuthDataCopy,
    );

late final _SspiCopyAuthIdentity = _secur32.lookupFunction<
    Int32 Function(
  Pointer AuthData,
  Pointer<Pointer> AuthDataCopy,
),
    int Function(
  Pointer AuthData,
  Pointer<Pointer> AuthDataCopy,
)>('SspiCopyAuthIdentity');

int SspiDecryptAuthIdentity(
  Pointer EncryptedAuthData,
) =>
    _SspiDecryptAuthIdentity(
      EncryptedAuthData,
    );

late final _SspiDecryptAuthIdentity = _secur32.lookupFunction<
    Int32 Function(
  Pointer EncryptedAuthData,
),
    int Function(
  Pointer EncryptedAuthData,
)>('SspiDecryptAuthIdentity');

int SspiEncodeAuthIdentityAsStrings(
  Pointer pAuthIdentity,
  Pointer<Pointer<Utf16>> ppszUserName,
  Pointer<Pointer<Utf16>> ppszDomainName,
  Pointer<Pointer<Utf16>> ppszPackedCredentialsString,
) =>
    _SspiEncodeAuthIdentityAsStrings(
      pAuthIdentity,
      ppszUserName,
      ppszDomainName,
      ppszPackedCredentialsString,
    );

late final _SspiEncodeAuthIdentityAsStrings = _secur32.lookupFunction<
    Int32 Function(
  Pointer pAuthIdentity,
  Pointer<Pointer<Utf16>> ppszUserName,
  Pointer<Pointer<Utf16>> ppszDomainName,
  Pointer<Pointer<Utf16>> ppszPackedCredentialsString,
),
    int Function(
  Pointer pAuthIdentity,
  Pointer<Pointer<Utf16>> ppszUserName,
  Pointer<Pointer<Utf16>> ppszDomainName,
  Pointer<Pointer<Utf16>> ppszPackedCredentialsString,
)>('SspiEncodeAuthIdentityAsStrings');

int SspiEncodeStringsAsAuthIdentity(
  Pointer<Utf16> pszUserName,
  Pointer<Utf16> pszDomainName,
  Pointer<Utf16> pszPackedCredentialsString,
  Pointer<Pointer> ppAuthIdentity,
) =>
    _SspiEncodeStringsAsAuthIdentity(
      pszUserName,
      pszDomainName,
      pszPackedCredentialsString,
      ppAuthIdentity,
    );

late final _SspiEncodeStringsAsAuthIdentity = _secur32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszUserName,
  Pointer<Utf16> pszDomainName,
  Pointer<Utf16> pszPackedCredentialsString,
  Pointer<Pointer> ppAuthIdentity,
),
    int Function(
  Pointer<Utf16> pszUserName,
  Pointer<Utf16> pszDomainName,
  Pointer<Utf16> pszPackedCredentialsString,
  Pointer<Pointer> ppAuthIdentity,
)>('SspiEncodeStringsAsAuthIdentity');

int SspiEncryptAuthIdentity(
  Pointer AuthData,
) =>
    _SspiEncryptAuthIdentity(
      AuthData,
    );

late final _SspiEncryptAuthIdentity = _secur32.lookupFunction<
    Int32 Function(
  Pointer AuthData,
),
    int Function(
  Pointer AuthData,
)>('SspiEncryptAuthIdentity');

int SspiExcludePackage(
  Pointer AuthIdentity,
  Pointer<Utf16> pszPackageName,
  Pointer<Pointer> ppNewAuthIdentity,
) =>
    _SspiExcludePackage(
      AuthIdentity,
      pszPackageName,
      ppNewAuthIdentity,
    );

late final _SspiExcludePackage = _secur32.lookupFunction<
    Int32 Function(
  Pointer AuthIdentity,
  Pointer<Utf16> pszPackageName,
  Pointer<Pointer> ppNewAuthIdentity,
),
    int Function(
  Pointer AuthIdentity,
  Pointer<Utf16> pszPackageName,
  Pointer<Pointer> ppNewAuthIdentity,
)>('SspiExcludePackage');

void SspiFreeAuthIdentity(
  Pointer AuthData,
) =>
    _SspiFreeAuthIdentity(
      AuthData,
    );

late final _SspiFreeAuthIdentity = _secur32.lookupFunction<
    Void Function(
  Pointer AuthData,
),
    void Function(
  Pointer AuthData,
)>('SspiFreeAuthIdentity');

int SspiGetTargetHostName(
  Pointer<Utf16> pszTargetName,
  Pointer<Pointer<Utf16>> pszHostName,
) =>
    _SspiGetTargetHostName(
      pszTargetName,
      pszHostName,
    );

late final _SspiGetTargetHostName = _secur32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszTargetName,
  Pointer<Pointer<Utf16>> pszHostName,
),
    int Function(
  Pointer<Utf16> pszTargetName,
  Pointer<Pointer<Utf16>> pszHostName,
)>('SspiGetTargetHostName');

int SspiIsAuthIdentityEncrypted(
  Pointer EncryptedAuthData,
) =>
    _SspiIsAuthIdentityEncrypted(
      EncryptedAuthData,
    );

late final _SspiIsAuthIdentityEncrypted = _secur32.lookupFunction<
    Uint8 Function(
  Pointer EncryptedAuthData,
),
    int Function(
  Pointer EncryptedAuthData,
)>('SspiIsAuthIdentityEncrypted');

void SspiLocalFree(
  Pointer DataBuffer,
) =>
    _SspiLocalFree(
      DataBuffer,
    );

late final _SspiLocalFree = _secur32.lookupFunction<
    Void Function(
  Pointer DataBuffer,
),
    void Function(
  Pointer DataBuffer,
)>('SspiLocalFree');

int SspiMarshalAuthIdentity(
  Pointer AuthIdentity,
  Pointer<Uint32> AuthIdentityLength,
  Pointer<Pointer<Int8>> AuthIdentityByteArray,
) =>
    _SspiMarshalAuthIdentity(
      AuthIdentity,
      AuthIdentityLength,
      AuthIdentityByteArray,
    );

late final _SspiMarshalAuthIdentity = _secur32.lookupFunction<
    Int32 Function(
  Pointer AuthIdentity,
  Pointer<Uint32> AuthIdentityLength,
  Pointer<Pointer<Int8>> AuthIdentityByteArray,
),
    int Function(
  Pointer AuthIdentity,
  Pointer<Uint32> AuthIdentityLength,
  Pointer<Pointer<Int8>> AuthIdentityByteArray,
)>('SspiMarshalAuthIdentity');

int SspiPrepareForCredRead(
  Pointer AuthIdentity,
  Pointer<Utf16> pszTargetName,
  Pointer<Uint32> pCredmanCredentialType,
  Pointer<Pointer<Utf16>> ppszCredmanTargetName,
) =>
    _SspiPrepareForCredRead(
      AuthIdentity,
      pszTargetName,
      pCredmanCredentialType,
      ppszCredmanTargetName,
    );

late final _SspiPrepareForCredRead = _secur32.lookupFunction<
    Int32 Function(
  Pointer AuthIdentity,
  Pointer<Utf16> pszTargetName,
  Pointer<Uint32> pCredmanCredentialType,
  Pointer<Pointer<Utf16>> ppszCredmanTargetName,
),
    int Function(
  Pointer AuthIdentity,
  Pointer<Utf16> pszTargetName,
  Pointer<Uint32> pCredmanCredentialType,
  Pointer<Pointer<Utf16>> ppszCredmanTargetName,
)>('SspiPrepareForCredRead');

int SspiPrepareForCredWrite(
  Pointer AuthIdentity,
  Pointer<Utf16> pszTargetName,
  Pointer<Uint32> pCredmanCredentialType,
  Pointer<Pointer<Utf16>> ppszCredmanTargetName,
  Pointer<Pointer<Utf16>> ppszCredmanUserName,
  Pointer<Pointer<Uint8>> ppCredentialBlob,
  Pointer<Uint32> pCredentialBlobSize,
) =>
    _SspiPrepareForCredWrite(
      AuthIdentity,
      pszTargetName,
      pCredmanCredentialType,
      ppszCredmanTargetName,
      ppszCredmanUserName,
      ppCredentialBlob,
      pCredentialBlobSize,
    );

late final _SspiPrepareForCredWrite = _secur32.lookupFunction<
    Int32 Function(
  Pointer AuthIdentity,
  Pointer<Utf16> pszTargetName,
  Pointer<Uint32> pCredmanCredentialType,
  Pointer<Pointer<Utf16>> ppszCredmanTargetName,
  Pointer<Pointer<Utf16>> ppszCredmanUserName,
  Pointer<Pointer<Uint8>> ppCredentialBlob,
  Pointer<Uint32> pCredentialBlobSize,
),
    int Function(
  Pointer AuthIdentity,
  Pointer<Utf16> pszTargetName,
  Pointer<Uint32> pCredmanCredentialType,
  Pointer<Pointer<Utf16>> ppszCredmanTargetName,
  Pointer<Pointer<Utf16>> ppszCredmanUserName,
  Pointer<Pointer<Uint8>> ppCredentialBlob,
  Pointer<Uint32> pCredentialBlobSize,
)>('SspiPrepareForCredWrite');

int SspiUnmarshalAuthIdentity(
  int AuthIdentityLength,
  Pointer<Utf8> AuthIdentityByteArray,
  Pointer<Pointer> ppAuthIdentity,
) =>
    _SspiUnmarshalAuthIdentity(
      AuthIdentityLength,
      AuthIdentityByteArray,
      ppAuthIdentity,
    );

late final _SspiUnmarshalAuthIdentity = _secur32.lookupFunction<
    Int32 Function(
  Uint32 AuthIdentityLength,
  Pointer<Utf8> AuthIdentityByteArray,
  Pointer<Pointer> ppAuthIdentity,
),
    int Function(
  int AuthIdentityLength,
  Pointer<Utf8> AuthIdentityByteArray,
  Pointer<Pointer> ppAuthIdentity,
)>('SspiUnmarshalAuthIdentity');

int SspiValidateAuthIdentity(
  Pointer AuthData,
) =>
    _SspiValidateAuthIdentity(
      AuthData,
    );

late final _SspiValidateAuthIdentity = _secur32.lookupFunction<
    Int32 Function(
  Pointer AuthData,
),
    int Function(
  Pointer AuthData,
)>('SspiValidateAuthIdentity');

void SspiZeroAuthIdentity(
  Pointer AuthData,
) =>
    _SspiZeroAuthIdentity(
      AuthData,
    );

late final _SspiZeroAuthIdentity = _secur32.lookupFunction<
    Void Function(
  Pointer AuthData,
),
    void Function(
  Pointer AuthData,
)>('SspiZeroAuthIdentity');

int TranslateName(
  Pointer<Utf16> lpAccountName,
  int AccountNameFormat,
  int DesiredNameFormat,
  Pointer<Utf16> lpTranslatedName,
  Pointer<Uint32> nSize,
) =>
    _TranslateName(
      lpAccountName,
      AccountNameFormat,
      DesiredNameFormat,
      lpTranslatedName,
      nSize,
    );

late final _TranslateName = _secur32.lookupFunction<
    Uint8 Function(
  Pointer<Utf16> lpAccountName,
  Int32 AccountNameFormat,
  Int32 DesiredNameFormat,
  Pointer<Utf16> lpTranslatedName,
  Pointer<Uint32> nSize,
),
    int Function(
  Pointer<Utf16> lpAccountName,
  int AccountNameFormat,
  int DesiredNameFormat,
  Pointer<Utf16> lpTranslatedName,
  Pointer<Uint32> nSize,
)>('TranslateNameW');

int VerifySignature(
  Pointer<SecHandle> phContext,
  Pointer<SecBufferDesc> pMessage,
  int MessageSeqNo,
  Pointer<Uint32> pfQOP,
) =>
    _VerifySignature(
      phContext,
      pMessage,
      MessageSeqNo,
      pfQOP,
    );

late final _VerifySignature = _secur32.lookupFunction<
    Int32 Function(
  Pointer<SecHandle> phContext,
  Pointer<SecBufferDesc> pMessage,
  Uint32 MessageSeqNo,
  Pointer<Uint32> pfQOP,
),
    int Function(
  Pointer<SecHandle> phContext,
  Pointer<SecBufferDesc> pMessage,
  int MessageSeqNo,
  Pointer<Uint32> pfQOP,
)>('VerifySignature');

// -----------------------------------------------------------------------
// advapi32.dll
// -----------------------------------------------------------------------
final _advapi32 = DynamicLibrary.open('advapi32.dll');

int AuditComputeEffectivePolicyBySid(
  int pSid,
  Pointer<GUID> pSubCategoryGuids,
  int dwPolicyCount,
  Pointer<Pointer<AUDIT_POLICY_INFORMATION>> ppAuditPolicy,
) =>
    _AuditComputeEffectivePolicyBySid(
      pSid,
      pSubCategoryGuids,
      dwPolicyCount,
      ppAuditPolicy,
    );

late final _AuditComputeEffectivePolicyBySid = _advapi32.lookupFunction<
    Uint8 Function(
  IntPtr pSid,
  Pointer<GUID> pSubCategoryGuids,
  Uint32 dwPolicyCount,
  Pointer<Pointer<AUDIT_POLICY_INFORMATION>> ppAuditPolicy,
),
    int Function(
  int pSid,
  Pointer<GUID> pSubCategoryGuids,
  int dwPolicyCount,
  Pointer<Pointer<AUDIT_POLICY_INFORMATION>> ppAuditPolicy,
)>('AuditComputeEffectivePolicyBySid');

int AuditComputeEffectivePolicyByToken(
  int hTokenHandle,
  Pointer<GUID> pSubCategoryGuids,
  int dwPolicyCount,
  Pointer<Pointer<AUDIT_POLICY_INFORMATION>> ppAuditPolicy,
) =>
    _AuditComputeEffectivePolicyByToken(
      hTokenHandle,
      pSubCategoryGuids,
      dwPolicyCount,
      ppAuditPolicy,
    );

late final _AuditComputeEffectivePolicyByToken = _advapi32.lookupFunction<
    Uint8 Function(
  IntPtr hTokenHandle,
  Pointer<GUID> pSubCategoryGuids,
  Uint32 dwPolicyCount,
  Pointer<Pointer<AUDIT_POLICY_INFORMATION>> ppAuditPolicy,
),
    int Function(
  int hTokenHandle,
  Pointer<GUID> pSubCategoryGuids,
  int dwPolicyCount,
  Pointer<Pointer<AUDIT_POLICY_INFORMATION>> ppAuditPolicy,
)>('AuditComputeEffectivePolicyByToken');

int AuditEnumerateCategories(
  Pointer<Pointer<GUID>> ppAuditCategoriesArray,
  Pointer<Uint32> pdwCountReturned,
) =>
    _AuditEnumerateCategories(
      ppAuditCategoriesArray,
      pdwCountReturned,
    );

late final _AuditEnumerateCategories = _advapi32.lookupFunction<
    Uint8 Function(
  Pointer<Pointer<GUID>> ppAuditCategoriesArray,
  Pointer<Uint32> pdwCountReturned,
),
    int Function(
  Pointer<Pointer<GUID>> ppAuditCategoriesArray,
  Pointer<Uint32> pdwCountReturned,
)>('AuditEnumerateCategories');

int AuditEnumeratePerUserPolicy(
  Pointer<Pointer<POLICY_AUDIT_SID_ARRAY>> ppAuditSidArray,
) =>
    _AuditEnumeratePerUserPolicy(
      ppAuditSidArray,
    );

late final _AuditEnumeratePerUserPolicy = _advapi32.lookupFunction<
    Uint8 Function(
  Pointer<Pointer<POLICY_AUDIT_SID_ARRAY>> ppAuditSidArray,
),
    int Function(
  Pointer<Pointer<POLICY_AUDIT_SID_ARRAY>> ppAuditSidArray,
)>('AuditEnumeratePerUserPolicy');

int AuditEnumerateSubCategories(
  Pointer<GUID> pAuditCategoryGuid,
  int bRetrieveAllSubCategories,
  Pointer<Pointer<GUID>> ppAuditSubCategoriesArray,
  Pointer<Uint32> pdwCountReturned,
) =>
    _AuditEnumerateSubCategories(
      pAuditCategoryGuid,
      bRetrieveAllSubCategories,
      ppAuditSubCategoriesArray,
      pdwCountReturned,
    );

late final _AuditEnumerateSubCategories = _advapi32.lookupFunction<
    Uint8 Function(
  Pointer<GUID> pAuditCategoryGuid,
  Uint8 bRetrieveAllSubCategories,
  Pointer<Pointer<GUID>> ppAuditSubCategoriesArray,
  Pointer<Uint32> pdwCountReturned,
),
    int Function(
  Pointer<GUID> pAuditCategoryGuid,
  int bRetrieveAllSubCategories,
  Pointer<Pointer<GUID>> ppAuditSubCategoriesArray,
  Pointer<Uint32> pdwCountReturned,
)>('AuditEnumerateSubCategories');

void AuditFree(
  Pointer Buffer,
) =>
    _AuditFree(
      Buffer,
    );

late final _AuditFree = _advapi32.lookupFunction<
    Void Function(
  Pointer Buffer,
),
    void Function(
  Pointer Buffer,
)>('AuditFree');

int AuditLookupCategoryGuidFromCategoryId(
  int AuditCategoryId,
  Pointer<GUID> pAuditCategoryGuid,
) =>
    _AuditLookupCategoryGuidFromCategoryId(
      AuditCategoryId,
      pAuditCategoryGuid,
    );

late final _AuditLookupCategoryGuidFromCategoryId = _advapi32.lookupFunction<
    Uint8 Function(
  Int32 AuditCategoryId,
  Pointer<GUID> pAuditCategoryGuid,
),
    int Function(
  int AuditCategoryId,
  Pointer<GUID> pAuditCategoryGuid,
)>('AuditLookupCategoryGuidFromCategoryId');

int AuditLookupCategoryIdFromCategoryGuid(
  Pointer<GUID> pAuditCategoryGuid,
  Pointer<Int32> pAuditCategoryId,
) =>
    _AuditLookupCategoryIdFromCategoryGuid(
      pAuditCategoryGuid,
      pAuditCategoryId,
    );

late final _AuditLookupCategoryIdFromCategoryGuid = _advapi32.lookupFunction<
    Uint8 Function(
  Pointer<GUID> pAuditCategoryGuid,
  Pointer<Int32> pAuditCategoryId,
),
    int Function(
  Pointer<GUID> pAuditCategoryGuid,
  Pointer<Int32> pAuditCategoryId,
)>('AuditLookupCategoryIdFromCategoryGuid');

int AuditLookupCategoryName(
  Pointer<GUID> pAuditCategoryGuid,
  Pointer<Pointer<Utf16>> ppszCategoryName,
) =>
    _AuditLookupCategoryName(
      pAuditCategoryGuid,
      ppszCategoryName,
    );

late final _AuditLookupCategoryName = _advapi32.lookupFunction<
    Uint8 Function(
  Pointer<GUID> pAuditCategoryGuid,
  Pointer<Pointer<Utf16>> ppszCategoryName,
),
    int Function(
  Pointer<GUID> pAuditCategoryGuid,
  Pointer<Pointer<Utf16>> ppszCategoryName,
)>('AuditLookupCategoryNameW');

int AuditLookupSubCategoryName(
  Pointer<GUID> pAuditSubCategoryGuid,
  Pointer<Pointer<Utf16>> ppszSubCategoryName,
) =>
    _AuditLookupSubCategoryName(
      pAuditSubCategoryGuid,
      ppszSubCategoryName,
    );

late final _AuditLookupSubCategoryName = _advapi32.lookupFunction<
    Uint8 Function(
  Pointer<GUID> pAuditSubCategoryGuid,
  Pointer<Pointer<Utf16>> ppszSubCategoryName,
),
    int Function(
  Pointer<GUID> pAuditSubCategoryGuid,
  Pointer<Pointer<Utf16>> ppszSubCategoryName,
)>('AuditLookupSubCategoryNameW');

int AuditQueryGlobalSacl(
  Pointer<Utf16> ObjectTypeName,
  Pointer<Pointer<ACL>> Acl,
) =>
    _AuditQueryGlobalSacl(
      ObjectTypeName,
      Acl,
    );

late final _AuditQueryGlobalSacl = _advapi32.lookupFunction<
    Uint8 Function(
  Pointer<Utf16> ObjectTypeName,
  Pointer<Pointer<ACL>> Acl,
),
    int Function(
  Pointer<Utf16> ObjectTypeName,
  Pointer<Pointer<ACL>> Acl,
)>('AuditQueryGlobalSaclW');

int AuditQueryPerUserPolicy(
  int pSid,
  Pointer<GUID> pSubCategoryGuids,
  int dwPolicyCount,
  Pointer<Pointer<AUDIT_POLICY_INFORMATION>> ppAuditPolicy,
) =>
    _AuditQueryPerUserPolicy(
      pSid,
      pSubCategoryGuids,
      dwPolicyCount,
      ppAuditPolicy,
    );

late final _AuditQueryPerUserPolicy = _advapi32.lookupFunction<
    Uint8 Function(
  IntPtr pSid,
  Pointer<GUID> pSubCategoryGuids,
  Uint32 dwPolicyCount,
  Pointer<Pointer<AUDIT_POLICY_INFORMATION>> ppAuditPolicy,
),
    int Function(
  int pSid,
  Pointer<GUID> pSubCategoryGuids,
  int dwPolicyCount,
  Pointer<Pointer<AUDIT_POLICY_INFORMATION>> ppAuditPolicy,
)>('AuditQueryPerUserPolicy');

int AuditQuerySecurity(
  int SecurityInformation,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> ppSecurityDescriptor,
) =>
    _AuditQuerySecurity(
      SecurityInformation,
      ppSecurityDescriptor,
    );

late final _AuditQuerySecurity = _advapi32.lookupFunction<
    Uint8 Function(
  Uint32 SecurityInformation,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> ppSecurityDescriptor,
),
    int Function(
  int SecurityInformation,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> ppSecurityDescriptor,
)>('AuditQuerySecurity');

int AuditQuerySystemPolicy(
  Pointer<GUID> pSubCategoryGuids,
  int dwPolicyCount,
  Pointer<Pointer<AUDIT_POLICY_INFORMATION>> ppAuditPolicy,
) =>
    _AuditQuerySystemPolicy(
      pSubCategoryGuids,
      dwPolicyCount,
      ppAuditPolicy,
    );

late final _AuditQuerySystemPolicy = _advapi32.lookupFunction<
    Uint8 Function(
  Pointer<GUID> pSubCategoryGuids,
  Uint32 dwPolicyCount,
  Pointer<Pointer<AUDIT_POLICY_INFORMATION>> ppAuditPolicy,
),
    int Function(
  Pointer<GUID> pSubCategoryGuids,
  int dwPolicyCount,
  Pointer<Pointer<AUDIT_POLICY_INFORMATION>> ppAuditPolicy,
)>('AuditQuerySystemPolicy');

int AuditSetGlobalSacl(
  Pointer<Utf16> ObjectTypeName,
  Pointer<ACL> Acl,
) =>
    _AuditSetGlobalSacl(
      ObjectTypeName,
      Acl,
    );

late final _AuditSetGlobalSacl = _advapi32.lookupFunction<
    Uint8 Function(
  Pointer<Utf16> ObjectTypeName,
  Pointer<ACL> Acl,
),
    int Function(
  Pointer<Utf16> ObjectTypeName,
  Pointer<ACL> Acl,
)>('AuditSetGlobalSaclW');

int AuditSetPerUserPolicy(
  int pSid,
  Pointer<AUDIT_POLICY_INFORMATION> pAuditPolicy,
  int dwPolicyCount,
) =>
    _AuditSetPerUserPolicy(
      pSid,
      pAuditPolicy,
      dwPolicyCount,
    );

late final _AuditSetPerUserPolicy = _advapi32.lookupFunction<
    Uint8 Function(
  IntPtr pSid,
  Pointer<AUDIT_POLICY_INFORMATION> pAuditPolicy,
  Uint32 dwPolicyCount,
),
    int Function(
  int pSid,
  Pointer<AUDIT_POLICY_INFORMATION> pAuditPolicy,
  int dwPolicyCount,
)>('AuditSetPerUserPolicy');

int AuditSetSecurity(
  int SecurityInformation,
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
) =>
    _AuditSetSecurity(
      SecurityInformation,
      pSecurityDescriptor,
    );

late final _AuditSetSecurity = _advapi32.lookupFunction<
    Uint8 Function(
  Uint32 SecurityInformation,
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
),
    int Function(
  int SecurityInformation,
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
)>('AuditSetSecurity');

int AuditSetSystemPolicy(
  Pointer<AUDIT_POLICY_INFORMATION> pAuditPolicy,
  int dwPolicyCount,
) =>
    _AuditSetSystemPolicy(
      pAuditPolicy,
      dwPolicyCount,
    );

late final _AuditSetSystemPolicy = _advapi32.lookupFunction<
    Uint8 Function(
  Pointer<AUDIT_POLICY_INFORMATION> pAuditPolicy,
  Uint32 dwPolicyCount,
),
    int Function(
  Pointer<AUDIT_POLICY_INFORMATION> pAuditPolicy,
  int dwPolicyCount,
)>('AuditSetSystemPolicy');

int LsaAddAccountRights(
  Pointer PolicyHandle,
  int AccountSid,
  Pointer<UNICODE_STRING> UserRights,
  int CountOfRights,
) =>
    _LsaAddAccountRights(
      PolicyHandle,
      AccountSid,
      UserRights,
      CountOfRights,
    );

late final _LsaAddAccountRights = _advapi32.lookupFunction<
    Int32 Function(
  Pointer PolicyHandle,
  IntPtr AccountSid,
  Pointer<UNICODE_STRING> UserRights,
  Uint32 CountOfRights,
),
    int Function(
  Pointer PolicyHandle,
  int AccountSid,
  Pointer<UNICODE_STRING> UserRights,
  int CountOfRights,
)>('LsaAddAccountRights');

int LsaClose(
  Pointer ObjectHandle,
) =>
    _LsaClose(
      ObjectHandle,
    );

late final _LsaClose = _advapi32.lookupFunction<
    Int32 Function(
  Pointer ObjectHandle,
),
    int Function(
  Pointer ObjectHandle,
)>('LsaClose');

int LsaCreateTrustedDomainEx(
  Pointer PolicyHandle,
  Pointer<TRUSTED_DOMAIN_INFORMATION_EX> TrustedDomainInformation,
  Pointer<TRUSTED_DOMAIN_AUTH_INFORMATION> AuthenticationInformation,
  int DesiredAccess,
  Pointer<Pointer> TrustedDomainHandle,
) =>
    _LsaCreateTrustedDomainEx(
      PolicyHandle,
      TrustedDomainInformation,
      AuthenticationInformation,
      DesiredAccess,
      TrustedDomainHandle,
    );

late final _LsaCreateTrustedDomainEx = _advapi32.lookupFunction<
    Int32 Function(
  Pointer PolicyHandle,
  Pointer<TRUSTED_DOMAIN_INFORMATION_EX> TrustedDomainInformation,
  Pointer<TRUSTED_DOMAIN_AUTH_INFORMATION> AuthenticationInformation,
  Uint32 DesiredAccess,
  Pointer<Pointer> TrustedDomainHandle,
),
    int Function(
  Pointer PolicyHandle,
  Pointer<TRUSTED_DOMAIN_INFORMATION_EX> TrustedDomainInformation,
  Pointer<TRUSTED_DOMAIN_AUTH_INFORMATION> AuthenticationInformation,
  int DesiredAccess,
  Pointer<Pointer> TrustedDomainHandle,
)>('LsaCreateTrustedDomainEx');

int LsaDeleteTrustedDomain(
  Pointer PolicyHandle,
  int TrustedDomainSid,
) =>
    _LsaDeleteTrustedDomain(
      PolicyHandle,
      TrustedDomainSid,
    );

late final _LsaDeleteTrustedDomain = _advapi32.lookupFunction<
    Int32 Function(
  Pointer PolicyHandle,
  IntPtr TrustedDomainSid,
),
    int Function(
  Pointer PolicyHandle,
  int TrustedDomainSid,
)>('LsaDeleteTrustedDomain');

int LsaEnumerateAccountRights(
  Pointer PolicyHandle,
  int AccountSid,
  Pointer<Pointer<UNICODE_STRING>> UserRights,
  Pointer<Uint32> CountOfRights,
) =>
    _LsaEnumerateAccountRights(
      PolicyHandle,
      AccountSid,
      UserRights,
      CountOfRights,
    );

late final _LsaEnumerateAccountRights = _advapi32.lookupFunction<
    Int32 Function(
  Pointer PolicyHandle,
  IntPtr AccountSid,
  Pointer<Pointer<UNICODE_STRING>> UserRights,
  Pointer<Uint32> CountOfRights,
),
    int Function(
  Pointer PolicyHandle,
  int AccountSid,
  Pointer<Pointer<UNICODE_STRING>> UserRights,
  Pointer<Uint32> CountOfRights,
)>('LsaEnumerateAccountRights');

int LsaEnumerateAccountsWithUserRight(
  Pointer PolicyHandle,
  Pointer<UNICODE_STRING> UserRight,
  Pointer<Pointer> Buffer,
  Pointer<Uint32> CountReturned,
) =>
    _LsaEnumerateAccountsWithUserRight(
      PolicyHandle,
      UserRight,
      Buffer,
      CountReturned,
    );

late final _LsaEnumerateAccountsWithUserRight = _advapi32.lookupFunction<
    Int32 Function(
  Pointer PolicyHandle,
  Pointer<UNICODE_STRING> UserRight,
  Pointer<Pointer> Buffer,
  Pointer<Uint32> CountReturned,
),
    int Function(
  Pointer PolicyHandle,
  Pointer<UNICODE_STRING> UserRight,
  Pointer<Pointer> Buffer,
  Pointer<Uint32> CountReturned,
)>('LsaEnumerateAccountsWithUserRight');

int LsaEnumerateTrustedDomains(
  Pointer PolicyHandle,
  Pointer<Uint32> EnumerationContext,
  Pointer<Pointer> Buffer,
  int PreferedMaximumLength,
  Pointer<Uint32> CountReturned,
) =>
    _LsaEnumerateTrustedDomains(
      PolicyHandle,
      EnumerationContext,
      Buffer,
      PreferedMaximumLength,
      CountReturned,
    );

late final _LsaEnumerateTrustedDomains = _advapi32.lookupFunction<
    Int32 Function(
  Pointer PolicyHandle,
  Pointer<Uint32> EnumerationContext,
  Pointer<Pointer> Buffer,
  Uint32 PreferedMaximumLength,
  Pointer<Uint32> CountReturned,
),
    int Function(
  Pointer PolicyHandle,
  Pointer<Uint32> EnumerationContext,
  Pointer<Pointer> Buffer,
  int PreferedMaximumLength,
  Pointer<Uint32> CountReturned,
)>('LsaEnumerateTrustedDomains');

int LsaEnumerateTrustedDomainsEx(
  Pointer PolicyHandle,
  Pointer<Uint32> EnumerationContext,
  Pointer<Pointer> Buffer,
  int PreferedMaximumLength,
  Pointer<Uint32> CountReturned,
) =>
    _LsaEnumerateTrustedDomainsEx(
      PolicyHandle,
      EnumerationContext,
      Buffer,
      PreferedMaximumLength,
      CountReturned,
    );

late final _LsaEnumerateTrustedDomainsEx = _advapi32.lookupFunction<
    Int32 Function(
  Pointer PolicyHandle,
  Pointer<Uint32> EnumerationContext,
  Pointer<Pointer> Buffer,
  Uint32 PreferedMaximumLength,
  Pointer<Uint32> CountReturned,
),
    int Function(
  Pointer PolicyHandle,
  Pointer<Uint32> EnumerationContext,
  Pointer<Pointer> Buffer,
  int PreferedMaximumLength,
  Pointer<Uint32> CountReturned,
)>('LsaEnumerateTrustedDomainsEx');

int LsaFreeMemory(
  Pointer Buffer,
) =>
    _LsaFreeMemory(
      Buffer,
    );

late final _LsaFreeMemory = _advapi32.lookupFunction<
    Int32 Function(
  Pointer Buffer,
),
    int Function(
  Pointer Buffer,
)>('LsaFreeMemory');

int LsaGetAppliedCAPIDs(
  Pointer<UNICODE_STRING> SystemName,
  Pointer<Pointer<IntPtr>> CAPIDs,
  Pointer<Uint32> CAPIDCount,
) =>
    _LsaGetAppliedCAPIDs(
      SystemName,
      CAPIDs,
      CAPIDCount,
    );

late final _LsaGetAppliedCAPIDs = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<UNICODE_STRING> SystemName,
  Pointer<Pointer<IntPtr>> CAPIDs,
  Pointer<Uint32> CAPIDCount,
),
    int Function(
  Pointer<UNICODE_STRING> SystemName,
  Pointer<Pointer<IntPtr>> CAPIDs,
  Pointer<Uint32> CAPIDCount,
)>('LsaGetAppliedCAPIDs');

int LsaLookupNames(
  Pointer PolicyHandle,
  int Count,
  Pointer<UNICODE_STRING> Names,
  Pointer<Pointer<LSA_REFERENCED_DOMAIN_LIST>> ReferencedDomains,
  Pointer<Pointer<LSA_TRANSLATED_SID>> Sids,
) =>
    _LsaLookupNames(
      PolicyHandle,
      Count,
      Names,
      ReferencedDomains,
      Sids,
    );

late final _LsaLookupNames = _advapi32.lookupFunction<
    Int32 Function(
  Pointer PolicyHandle,
  Uint32 Count,
  Pointer<UNICODE_STRING> Names,
  Pointer<Pointer<LSA_REFERENCED_DOMAIN_LIST>> ReferencedDomains,
  Pointer<Pointer<LSA_TRANSLATED_SID>> Sids,
),
    int Function(
  Pointer PolicyHandle,
  int Count,
  Pointer<UNICODE_STRING> Names,
  Pointer<Pointer<LSA_REFERENCED_DOMAIN_LIST>> ReferencedDomains,
  Pointer<Pointer<LSA_TRANSLATED_SID>> Sids,
)>('LsaLookupNames');

int LsaLookupNames2(
  Pointer PolicyHandle,
  int Flags,
  int Count,
  Pointer<UNICODE_STRING> Names,
  Pointer<Pointer<LSA_REFERENCED_DOMAIN_LIST>> ReferencedDomains,
  Pointer<Pointer<LSA_TRANSLATED_SID2>> Sids,
) =>
    _LsaLookupNames2(
      PolicyHandle,
      Flags,
      Count,
      Names,
      ReferencedDomains,
      Sids,
    );

late final _LsaLookupNames2 = _advapi32.lookupFunction<
    Int32 Function(
  Pointer PolicyHandle,
  Uint32 Flags,
  Uint32 Count,
  Pointer<UNICODE_STRING> Names,
  Pointer<Pointer<LSA_REFERENCED_DOMAIN_LIST>> ReferencedDomains,
  Pointer<Pointer<LSA_TRANSLATED_SID2>> Sids,
),
    int Function(
  Pointer PolicyHandle,
  int Flags,
  int Count,
  Pointer<UNICODE_STRING> Names,
  Pointer<Pointer<LSA_REFERENCED_DOMAIN_LIST>> ReferencedDomains,
  Pointer<Pointer<LSA_TRANSLATED_SID2>> Sids,
)>('LsaLookupNames2');

int LsaLookupSids(
  Pointer PolicyHandle,
  int Count,
  Pointer<IntPtr> Sids,
  Pointer<Pointer<LSA_REFERENCED_DOMAIN_LIST>> ReferencedDomains,
  Pointer<Pointer<LSA_TRANSLATED_NAME>> Names,
) =>
    _LsaLookupSids(
      PolicyHandle,
      Count,
      Sids,
      ReferencedDomains,
      Names,
    );

late final _LsaLookupSids = _advapi32.lookupFunction<
    Int32 Function(
  Pointer PolicyHandle,
  Uint32 Count,
  Pointer<IntPtr> Sids,
  Pointer<Pointer<LSA_REFERENCED_DOMAIN_LIST>> ReferencedDomains,
  Pointer<Pointer<LSA_TRANSLATED_NAME>> Names,
),
    int Function(
  Pointer PolicyHandle,
  int Count,
  Pointer<IntPtr> Sids,
  Pointer<Pointer<LSA_REFERENCED_DOMAIN_LIST>> ReferencedDomains,
  Pointer<Pointer<LSA_TRANSLATED_NAME>> Names,
)>('LsaLookupSids');

int LsaLookupSids2(
  Pointer PolicyHandle,
  int LookupOptions,
  int Count,
  Pointer<IntPtr> Sids,
  Pointer<Pointer<LSA_REFERENCED_DOMAIN_LIST>> ReferencedDomains,
  Pointer<Pointer<LSA_TRANSLATED_NAME>> Names,
) =>
    _LsaLookupSids2(
      PolicyHandle,
      LookupOptions,
      Count,
      Sids,
      ReferencedDomains,
      Names,
    );

late final _LsaLookupSids2 = _advapi32.lookupFunction<
    Int32 Function(
  Pointer PolicyHandle,
  Uint32 LookupOptions,
  Uint32 Count,
  Pointer<IntPtr> Sids,
  Pointer<Pointer<LSA_REFERENCED_DOMAIN_LIST>> ReferencedDomains,
  Pointer<Pointer<LSA_TRANSLATED_NAME>> Names,
),
    int Function(
  Pointer PolicyHandle,
  int LookupOptions,
  int Count,
  Pointer<IntPtr> Sids,
  Pointer<Pointer<LSA_REFERENCED_DOMAIN_LIST>> ReferencedDomains,
  Pointer<Pointer<LSA_TRANSLATED_NAME>> Names,
)>('LsaLookupSids2');

int LsaNtStatusToWinError(
  int Status,
) =>
    _LsaNtStatusToWinError(
      Status,
    );

late final _LsaNtStatusToWinError = _advapi32.lookupFunction<
    Uint32 Function(
  Int32 Status,
),
    int Function(
  int Status,
)>('LsaNtStatusToWinError');

int LsaOpenPolicy(
  Pointer<UNICODE_STRING> SystemName,
  Pointer<OBJECT_ATTRIBUTES> ObjectAttributes,
  int DesiredAccess,
  Pointer<Pointer> PolicyHandle,
) =>
    _LsaOpenPolicy(
      SystemName,
      ObjectAttributes,
      DesiredAccess,
      PolicyHandle,
    );

late final _LsaOpenPolicy = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<UNICODE_STRING> SystemName,
  Pointer<OBJECT_ATTRIBUTES> ObjectAttributes,
  Uint32 DesiredAccess,
  Pointer<Pointer> PolicyHandle,
),
    int Function(
  Pointer<UNICODE_STRING> SystemName,
  Pointer<OBJECT_ATTRIBUTES> ObjectAttributes,
  int DesiredAccess,
  Pointer<Pointer> PolicyHandle,
)>('LsaOpenPolicy');

int LsaOpenTrustedDomainByName(
  Pointer PolicyHandle,
  Pointer<UNICODE_STRING> TrustedDomainName,
  int DesiredAccess,
  Pointer<Pointer> TrustedDomainHandle,
) =>
    _LsaOpenTrustedDomainByName(
      PolicyHandle,
      TrustedDomainName,
      DesiredAccess,
      TrustedDomainHandle,
    );

late final _LsaOpenTrustedDomainByName = _advapi32.lookupFunction<
    Int32 Function(
  Pointer PolicyHandle,
  Pointer<UNICODE_STRING> TrustedDomainName,
  Uint32 DesiredAccess,
  Pointer<Pointer> TrustedDomainHandle,
),
    int Function(
  Pointer PolicyHandle,
  Pointer<UNICODE_STRING> TrustedDomainName,
  int DesiredAccess,
  Pointer<Pointer> TrustedDomainHandle,
)>('LsaOpenTrustedDomainByName');

int LsaQueryCAPs(
  Pointer<IntPtr> CAPIDs,
  int CAPIDCount,
  Pointer<Pointer<CENTRAL_ACCESS_POLICY>> CAPs,
  Pointer<Uint32> CAPCount,
) =>
    _LsaQueryCAPs(
      CAPIDs,
      CAPIDCount,
      CAPs,
      CAPCount,
    );

late final _LsaQueryCAPs = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<IntPtr> CAPIDs,
  Uint32 CAPIDCount,
  Pointer<Pointer<CENTRAL_ACCESS_POLICY>> CAPs,
  Pointer<Uint32> CAPCount,
),
    int Function(
  Pointer<IntPtr> CAPIDs,
  int CAPIDCount,
  Pointer<Pointer<CENTRAL_ACCESS_POLICY>> CAPs,
  Pointer<Uint32> CAPCount,
)>('LsaQueryCAPs');

int LsaQueryDomainInformationPolicy(
  Pointer PolicyHandle,
  int InformationClass,
  Pointer<Pointer> Buffer,
) =>
    _LsaQueryDomainInformationPolicy(
      PolicyHandle,
      InformationClass,
      Buffer,
    );

late final _LsaQueryDomainInformationPolicy = _advapi32.lookupFunction<
    Int32 Function(
  Pointer PolicyHandle,
  Int32 InformationClass,
  Pointer<Pointer> Buffer,
),
    int Function(
  Pointer PolicyHandle,
  int InformationClass,
  Pointer<Pointer> Buffer,
)>('LsaQueryDomainInformationPolicy');

int LsaQueryForestTrustInformation(
  Pointer PolicyHandle,
  Pointer<UNICODE_STRING> TrustedDomainName,
  Pointer<Pointer<LSA_FOREST_TRUST_INFORMATION>> ForestTrustInfo,
) =>
    _LsaQueryForestTrustInformation(
      PolicyHandle,
      TrustedDomainName,
      ForestTrustInfo,
    );

late final _LsaQueryForestTrustInformation = _advapi32.lookupFunction<
    Int32 Function(
  Pointer PolicyHandle,
  Pointer<UNICODE_STRING> TrustedDomainName,
  Pointer<Pointer<LSA_FOREST_TRUST_INFORMATION>> ForestTrustInfo,
),
    int Function(
  Pointer PolicyHandle,
  Pointer<UNICODE_STRING> TrustedDomainName,
  Pointer<Pointer<LSA_FOREST_TRUST_INFORMATION>> ForestTrustInfo,
)>('LsaQueryForestTrustInformation');

int LsaQueryInformationPolicy(
  Pointer PolicyHandle,
  int InformationClass,
  Pointer<Pointer> Buffer,
) =>
    _LsaQueryInformationPolicy(
      PolicyHandle,
      InformationClass,
      Buffer,
    );

late final _LsaQueryInformationPolicy = _advapi32.lookupFunction<
    Int32 Function(
  Pointer PolicyHandle,
  Int32 InformationClass,
  Pointer<Pointer> Buffer,
),
    int Function(
  Pointer PolicyHandle,
  int InformationClass,
  Pointer<Pointer> Buffer,
)>('LsaQueryInformationPolicy');

int LsaQueryTrustedDomainInfo(
  Pointer PolicyHandle,
  int TrustedDomainSid,
  int InformationClass,
  Pointer<Pointer> Buffer,
) =>
    _LsaQueryTrustedDomainInfo(
      PolicyHandle,
      TrustedDomainSid,
      InformationClass,
      Buffer,
    );

late final _LsaQueryTrustedDomainInfo = _advapi32.lookupFunction<
    Int32 Function(
  Pointer PolicyHandle,
  IntPtr TrustedDomainSid,
  Int32 InformationClass,
  Pointer<Pointer> Buffer,
),
    int Function(
  Pointer PolicyHandle,
  int TrustedDomainSid,
  int InformationClass,
  Pointer<Pointer> Buffer,
)>('LsaQueryTrustedDomainInfo');

int LsaQueryTrustedDomainInfoByName(
  Pointer PolicyHandle,
  Pointer<UNICODE_STRING> TrustedDomainName,
  int InformationClass,
  Pointer<Pointer> Buffer,
) =>
    _LsaQueryTrustedDomainInfoByName(
      PolicyHandle,
      TrustedDomainName,
      InformationClass,
      Buffer,
    );

late final _LsaQueryTrustedDomainInfoByName = _advapi32.lookupFunction<
    Int32 Function(
  Pointer PolicyHandle,
  Pointer<UNICODE_STRING> TrustedDomainName,
  Int32 InformationClass,
  Pointer<Pointer> Buffer,
),
    int Function(
  Pointer PolicyHandle,
  Pointer<UNICODE_STRING> TrustedDomainName,
  int InformationClass,
  Pointer<Pointer> Buffer,
)>('LsaQueryTrustedDomainInfoByName');

int LsaRemoveAccountRights(
  Pointer PolicyHandle,
  int AccountSid,
  int AllRights,
  Pointer<UNICODE_STRING> UserRights,
  int CountOfRights,
) =>
    _LsaRemoveAccountRights(
      PolicyHandle,
      AccountSid,
      AllRights,
      UserRights,
      CountOfRights,
    );

late final _LsaRemoveAccountRights = _advapi32.lookupFunction<
    Int32 Function(
  Pointer PolicyHandle,
  IntPtr AccountSid,
  Uint8 AllRights,
  Pointer<UNICODE_STRING> UserRights,
  Uint32 CountOfRights,
),
    int Function(
  Pointer PolicyHandle,
  int AccountSid,
  int AllRights,
  Pointer<UNICODE_STRING> UserRights,
  int CountOfRights,
)>('LsaRemoveAccountRights');

int LsaRetrievePrivateData(
  Pointer PolicyHandle,
  Pointer<UNICODE_STRING> KeyName,
  Pointer<Pointer<UNICODE_STRING>> PrivateData,
) =>
    _LsaRetrievePrivateData(
      PolicyHandle,
      KeyName,
      PrivateData,
    );

late final _LsaRetrievePrivateData = _advapi32.lookupFunction<
    Int32 Function(
  Pointer PolicyHandle,
  Pointer<UNICODE_STRING> KeyName,
  Pointer<Pointer<UNICODE_STRING>> PrivateData,
),
    int Function(
  Pointer PolicyHandle,
  Pointer<UNICODE_STRING> KeyName,
  Pointer<Pointer<UNICODE_STRING>> PrivateData,
)>('LsaRetrievePrivateData');

int LsaSetCAPs(
  Pointer<UNICODE_STRING> CAPDNs,
  int CAPDNCount,
  int Flags,
) =>
    _LsaSetCAPs(
      CAPDNs,
      CAPDNCount,
      Flags,
    );

late final _LsaSetCAPs = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<UNICODE_STRING> CAPDNs,
  Uint32 CAPDNCount,
  Uint32 Flags,
),
    int Function(
  Pointer<UNICODE_STRING> CAPDNs,
  int CAPDNCount,
  int Flags,
)>('LsaSetCAPs');

int LsaSetDomainInformationPolicy(
  Pointer PolicyHandle,
  int InformationClass,
  Pointer Buffer,
) =>
    _LsaSetDomainInformationPolicy(
      PolicyHandle,
      InformationClass,
      Buffer,
    );

late final _LsaSetDomainInformationPolicy = _advapi32.lookupFunction<
    Int32 Function(
  Pointer PolicyHandle,
  Int32 InformationClass,
  Pointer Buffer,
),
    int Function(
  Pointer PolicyHandle,
  int InformationClass,
  Pointer Buffer,
)>('LsaSetDomainInformationPolicy');

int LsaSetForestTrustInformation(
  Pointer PolicyHandle,
  Pointer<UNICODE_STRING> TrustedDomainName,
  Pointer<LSA_FOREST_TRUST_INFORMATION> ForestTrustInfo,
  int CheckOnly,
  Pointer<Pointer<LSA_FOREST_TRUST_COLLISION_INFORMATION>> CollisionInfo,
) =>
    _LsaSetForestTrustInformation(
      PolicyHandle,
      TrustedDomainName,
      ForestTrustInfo,
      CheckOnly,
      CollisionInfo,
    );

late final _LsaSetForestTrustInformation = _advapi32.lookupFunction<
    Int32 Function(
  Pointer PolicyHandle,
  Pointer<UNICODE_STRING> TrustedDomainName,
  Pointer<LSA_FOREST_TRUST_INFORMATION> ForestTrustInfo,
  Uint8 CheckOnly,
  Pointer<Pointer<LSA_FOREST_TRUST_COLLISION_INFORMATION>> CollisionInfo,
),
    int Function(
  Pointer PolicyHandle,
  Pointer<UNICODE_STRING> TrustedDomainName,
  Pointer<LSA_FOREST_TRUST_INFORMATION> ForestTrustInfo,
  int CheckOnly,
  Pointer<Pointer<LSA_FOREST_TRUST_COLLISION_INFORMATION>> CollisionInfo,
)>('LsaSetForestTrustInformation');

int LsaSetInformationPolicy(
  Pointer PolicyHandle,
  int InformationClass,
  Pointer Buffer,
) =>
    _LsaSetInformationPolicy(
      PolicyHandle,
      InformationClass,
      Buffer,
    );

late final _LsaSetInformationPolicy = _advapi32.lookupFunction<
    Int32 Function(
  Pointer PolicyHandle,
  Int32 InformationClass,
  Pointer Buffer,
),
    int Function(
  Pointer PolicyHandle,
  int InformationClass,
  Pointer Buffer,
)>('LsaSetInformationPolicy');

int LsaSetTrustedDomainInfoByName(
  Pointer PolicyHandle,
  Pointer<UNICODE_STRING> TrustedDomainName,
  int InformationClass,
  Pointer Buffer,
) =>
    _LsaSetTrustedDomainInfoByName(
      PolicyHandle,
      TrustedDomainName,
      InformationClass,
      Buffer,
    );

late final _LsaSetTrustedDomainInfoByName = _advapi32.lookupFunction<
    Int32 Function(
  Pointer PolicyHandle,
  Pointer<UNICODE_STRING> TrustedDomainName,
  Int32 InformationClass,
  Pointer Buffer,
),
    int Function(
  Pointer PolicyHandle,
  Pointer<UNICODE_STRING> TrustedDomainName,
  int InformationClass,
  Pointer Buffer,
)>('LsaSetTrustedDomainInfoByName');

int LsaSetTrustedDomainInformation(
  Pointer PolicyHandle,
  int TrustedDomainSid,
  int InformationClass,
  Pointer Buffer,
) =>
    _LsaSetTrustedDomainInformation(
      PolicyHandle,
      TrustedDomainSid,
      InformationClass,
      Buffer,
    );

late final _LsaSetTrustedDomainInformation = _advapi32.lookupFunction<
    Int32 Function(
  Pointer PolicyHandle,
  IntPtr TrustedDomainSid,
  Int32 InformationClass,
  Pointer Buffer,
),
    int Function(
  Pointer PolicyHandle,
  int TrustedDomainSid,
  int InformationClass,
  Pointer Buffer,
)>('LsaSetTrustedDomainInformation');

int LsaStorePrivateData(
  Pointer PolicyHandle,
  Pointer<UNICODE_STRING> KeyName,
  Pointer<UNICODE_STRING> PrivateData,
) =>
    _LsaStorePrivateData(
      PolicyHandle,
      KeyName,
      PrivateData,
    );

late final _LsaStorePrivateData = _advapi32.lookupFunction<
    Int32 Function(
  Pointer PolicyHandle,
  Pointer<UNICODE_STRING> KeyName,
  Pointer<UNICODE_STRING> PrivateData,
),
    int Function(
  Pointer PolicyHandle,
  Pointer<UNICODE_STRING> KeyName,
  Pointer<UNICODE_STRING> PrivateData,
)>('LsaStorePrivateData');

int SystemFunction036(
  Pointer RandomBuffer,
  int RandomBufferLength,
) =>
    _SystemFunction036(
      RandomBuffer,
      RandomBufferLength,
    );

late final _SystemFunction036 = _advapi32.lookupFunction<
    Uint8 Function(
  Pointer RandomBuffer,
  Uint32 RandomBufferLength,
),
    int Function(
  Pointer RandomBuffer,
  int RandomBufferLength,
)>('SystemFunction036');

int SystemFunction040(
  Pointer Memory,
  int MemorySize,
  int OptionFlags,
) =>
    _SystemFunction040(
      Memory,
      MemorySize,
      OptionFlags,
    );

late final _SystemFunction040 = _advapi32.lookupFunction<
    Int32 Function(
  Pointer Memory,
  Uint32 MemorySize,
  Uint32 OptionFlags,
),
    int Function(
  Pointer Memory,
  int MemorySize,
  int OptionFlags,
)>('SystemFunction040');

int SystemFunction041(
  Pointer Memory,
  int MemorySize,
  int OptionFlags,
) =>
    _SystemFunction041(
      Memory,
      MemorySize,
      OptionFlags,
    );

late final _SystemFunction041 = _advapi32.lookupFunction<
    Int32 Function(
  Pointer Memory,
  Uint32 MemorySize,
  Uint32 OptionFlags,
),
    int Function(
  Pointer Memory,
  int MemorySize,
  int OptionFlags,
)>('SystemFunction041');

// -----------------------------------------------------------------------
// sspicli.dll
// -----------------------------------------------------------------------
final _sspicli = DynamicLibrary.open('sspicli.dll');

int QueryContextAttributesEx(
  Pointer<SecHandle> phContext,
  int ulAttribute,
  Pointer pBuffer,
  int cbBuffer,
) =>
    _QueryContextAttributesEx(
      phContext,
      ulAttribute,
      pBuffer,
      cbBuffer,
    );

late final _QueryContextAttributesEx = _sspicli.lookupFunction<
    Int32 Function(
  Pointer<SecHandle> phContext,
  Uint32 ulAttribute,
  Pointer pBuffer,
  Uint32 cbBuffer,
),
    int Function(
  Pointer<SecHandle> phContext,
  int ulAttribute,
  Pointer pBuffer,
  int cbBuffer,
)>('QueryContextAttributesExW');

int QueryCredentialsAttributesEx(
  Pointer<SecHandle> phCredential,
  int ulAttribute,
  Pointer pBuffer,
  int cbBuffer,
) =>
    _QueryCredentialsAttributesEx(
      phCredential,
      ulAttribute,
      pBuffer,
      cbBuffer,
    );

late final _QueryCredentialsAttributesEx = _sspicli.lookupFunction<
    Int32 Function(
  Pointer<SecHandle> phCredential,
  Uint32 ulAttribute,
  Pointer pBuffer,
  Uint32 cbBuffer,
),
    int Function(
  Pointer<SecHandle> phCredential,
  int ulAttribute,
  Pointer pBuffer,
  int cbBuffer,
)>('QueryCredentialsAttributesExW');

int SspiDecryptAuthIdentityEx(
  int Options,
  Pointer EncryptedAuthData,
) =>
    _SspiDecryptAuthIdentityEx(
      Options,
      EncryptedAuthData,
    );

late final _SspiDecryptAuthIdentityEx = _sspicli.lookupFunction<
    Int32 Function(
  Uint32 Options,
  Pointer EncryptedAuthData,
),
    int Function(
  int Options,
  Pointer EncryptedAuthData,
)>('SspiDecryptAuthIdentityEx');

int SspiEncryptAuthIdentityEx(
  int Options,
  Pointer AuthData,
) =>
    _SspiEncryptAuthIdentityEx(
      Options,
      AuthData,
    );

late final _SspiEncryptAuthIdentityEx = _sspicli.lookupFunction<
    Int32 Function(
  Uint32 Options,
  Pointer AuthData,
),
    int Function(
  int Options,
  Pointer AuthData,
)>('SspiEncryptAuthIdentityEx');

// -----------------------------------------------------------------------
// credui.dll
// -----------------------------------------------------------------------
final _credui = DynamicLibrary.open('credui.dll');

int SspiIsPromptingNeeded(
  int ErrorOrNtStatus,
) =>
    _SspiIsPromptingNeeded(
      ErrorOrNtStatus,
    );

late final _SspiIsPromptingNeeded = _credui.lookupFunction<
    Uint8 Function(
  Uint32 ErrorOrNtStatus,
),
    int Function(
  int ErrorOrNtStatus,
)>('SspiIsPromptingNeeded');

int SspiPromptForCredentials(
  Pointer<Utf16> pszTargetName,
  Pointer pUiInfo,
  int dwAuthError,
  Pointer<Utf16> pszPackage,
  Pointer pInputAuthIdentity,
  Pointer<Pointer> ppAuthIdentity,
  Pointer<Int32> pfSave,
  int dwFlags,
) =>
    _SspiPromptForCredentials(
      pszTargetName,
      pUiInfo,
      dwAuthError,
      pszPackage,
      pInputAuthIdentity,
      ppAuthIdentity,
      pfSave,
      dwFlags,
    );

late final _SspiPromptForCredentials = _credui.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> pszTargetName,
  Pointer pUiInfo,
  Uint32 dwAuthError,
  Pointer<Utf16> pszPackage,
  Pointer pInputAuthIdentity,
  Pointer<Pointer> ppAuthIdentity,
  Pointer<Int32> pfSave,
  Uint32 dwFlags,
),
    int Function(
  Pointer<Utf16> pszTargetName,
  Pointer pUiInfo,
  int dwAuthError,
  Pointer<Utf16> pszPackage,
  Pointer pInputAuthIdentity,
  Pointer<Pointer> ppAuthIdentity,
  Pointer<Int32> pfSave,
  int dwFlags,
)>('SspiPromptForCredentialsW');

// -----------------------------------------------------------------------
// schannel.dll
// -----------------------------------------------------------------------
final _schannel = DynamicLibrary.open('schannel.dll');

int SslCrackCertificate(
  Pointer<Uint8> pbCertificate,
  int cbCertificate,
  int dwFlags,
  Pointer<Pointer<X509Certificate>> ppCertificate,
) =>
    _SslCrackCertificate(
      pbCertificate,
      cbCertificate,
      dwFlags,
      ppCertificate,
    );

late final _SslCrackCertificate = _schannel.lookupFunction<
    Int32 Function(
  Pointer<Uint8> pbCertificate,
  Uint32 cbCertificate,
  Uint32 dwFlags,
  Pointer<Pointer<X509Certificate>> ppCertificate,
),
    int Function(
  Pointer<Uint8> pbCertificate,
  int cbCertificate,
  int dwFlags,
  Pointer<Pointer<X509Certificate>> ppCertificate,
)>('SslCrackCertificate');

int SslEmptyCache(
  Pointer<Utf16> pszTargetName,
  int dwFlags,
) =>
    _SslEmptyCache(
      pszTargetName,
      dwFlags,
    );

late final _SslEmptyCache = _schannel.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszTargetName,
  Uint32 dwFlags,
),
    int Function(
  Pointer<Utf16> pszTargetName,
  int dwFlags,
)>('SslEmptyCacheW');

void SslFreeCertificate(
  Pointer<X509Certificate> pCertificate,
) =>
    _SslFreeCertificate(
      pCertificate,
    );

late final _SslFreeCertificate = _schannel.lookupFunction<
    Void Function(
  Pointer<X509Certificate> pCertificate,
),
    void Function(
  Pointer<X509Certificate> pCertificate,
)>('SslFreeCertificate');

void SslGenerateRandomBits(
  Pointer<Uint8> pRandomData,
  int cRandomData,
) =>
    _SslGenerateRandomBits(
      pRandomData,
      cRandomData,
    );

late final _SslGenerateRandomBits = _schannel.lookupFunction<
    Void Function(
  Pointer<Uint8> pRandomData,
  Int32 cRandomData,
),
    void Function(
  Pointer<Uint8> pRandomData,
  int cRandomData,
)>('SslGenerateRandomBits');

int SslGetExtensions(
  Pointer<Uint8> clientHello,
  int clientHelloByteSize,
  Pointer<SCH_EXTENSION_DATA> genericExtensions,
  int genericExtensionsCount,
  Pointer<Uint32> bytesToRead,
  int flags,
) =>
    _SslGetExtensions(
      clientHello,
      clientHelloByteSize,
      genericExtensions,
      genericExtensionsCount,
      bytesToRead,
      flags,
    );

late final _SslGetExtensions = _schannel.lookupFunction<
    Int32 Function(
  Pointer<Uint8> clientHello,
  Uint32 clientHelloByteSize,
  Pointer<SCH_EXTENSION_DATA> genericExtensions,
  Uint8 genericExtensionsCount,
  Pointer<Uint32> bytesToRead,
  Uint32 flags,
),
    int Function(
  Pointer<Uint8> clientHello,
  int clientHelloByteSize,
  Pointer<SCH_EXTENSION_DATA> genericExtensions,
  int genericExtensionsCount,
  Pointer<Uint32> bytesToRead,
  int flags,
)>('SslGetExtensions');

int SslGetMaximumKeySize(
  int Reserved,
) =>
    _SslGetMaximumKeySize(
      Reserved,
    );

late final _SslGetMaximumKeySize = _schannel.lookupFunction<
    Uint32 Function(
  Uint32 Reserved,
),
    int Function(
  int Reserved,
)>('SslGetMaximumKeySize');

int SslGetServerIdentity(
  Pointer<Uint8> ClientHello,
  int ClientHelloSize,
  Pointer<Pointer<Uint8>> ServerIdentity,
  Pointer<Uint32> ServerIdentitySize,
  int Flags,
) =>
    _SslGetServerIdentity(
      ClientHello,
      ClientHelloSize,
      ServerIdentity,
      ServerIdentitySize,
      Flags,
    );

late final _SslGetServerIdentity = _schannel.lookupFunction<
    Int32 Function(
  Pointer<Uint8> ClientHello,
  Uint32 ClientHelloSize,
  Pointer<Pointer<Uint8>> ServerIdentity,
  Pointer<Uint32> ServerIdentitySize,
  Uint32 Flags,
),
    int Function(
  Pointer<Uint8> ClientHello,
  int ClientHelloSize,
  Pointer<Pointer<Uint8>> ServerIdentity,
  Pointer<Uint32> ServerIdentitySize,
  int Flags,
)>('SslGetServerIdentity');

// -----------------------------------------------------------------------
// tokenbinding.dll
// -----------------------------------------------------------------------
final _tokenbinding = DynamicLibrary.open('tokenbinding.dll');

int TokenBindingDeleteAllBindings() => _TokenBindingDeleteAllBindings();

late final _TokenBindingDeleteAllBindings =
    _tokenbinding.lookupFunction<Int32 Function(), int Function()>(
        'TokenBindingDeleteAllBindings');

int TokenBindingDeleteBinding(
  Pointer<Utf16> targetURL,
) =>
    _TokenBindingDeleteBinding(
      targetURL,
    );

late final _TokenBindingDeleteBinding = _tokenbinding.lookupFunction<
    Int32 Function(
  Pointer<Utf16> targetURL,
),
    int Function(
  Pointer<Utf16> targetURL,
)>('TokenBindingDeleteBinding');

int TokenBindingGenerateBinding(
  int keyType,
  Pointer<Utf16> targetURL,
  int bindingType,
  Pointer tlsEKM,
  int tlsEKMSize,
  int extensionFormat,
  Pointer extensionData,
  Pointer<Pointer> tokenBinding,
  Pointer<Uint32> tokenBindingSize,
  Pointer<Pointer<TOKENBINDING_RESULT_DATA>> resultData,
) =>
    _TokenBindingGenerateBinding(
      keyType,
      targetURL,
      bindingType,
      tlsEKM,
      tlsEKMSize,
      extensionFormat,
      extensionData,
      tokenBinding,
      tokenBindingSize,
      resultData,
    );

late final _TokenBindingGenerateBinding = _tokenbinding.lookupFunction<
    Int32 Function(
  Int32 keyType,
  Pointer<Utf16> targetURL,
  Int32 bindingType,
  Pointer tlsEKM,
  Uint32 tlsEKMSize,
  Int32 extensionFormat,
  Pointer extensionData,
  Pointer<Pointer> tokenBinding,
  Pointer<Uint32> tokenBindingSize,
  Pointer<Pointer<TOKENBINDING_RESULT_DATA>> resultData,
),
    int Function(
  int keyType,
  Pointer<Utf16> targetURL,
  int bindingType,
  Pointer tlsEKM,
  int tlsEKMSize,
  int extensionFormat,
  Pointer extensionData,
  Pointer<Pointer> tokenBinding,
  Pointer<Uint32> tokenBindingSize,
  Pointer<Pointer<TOKENBINDING_RESULT_DATA>> resultData,
)>('TokenBindingGenerateBinding');

int TokenBindingGenerateID(
  int keyType,
  Pointer publicKey,
  int publicKeySize,
  Pointer<Pointer<TOKENBINDING_RESULT_DATA>> resultData,
) =>
    _TokenBindingGenerateID(
      keyType,
      publicKey,
      publicKeySize,
      resultData,
    );

late final _TokenBindingGenerateID = _tokenbinding.lookupFunction<
    Int32 Function(
  Int32 keyType,
  Pointer publicKey,
  Uint32 publicKeySize,
  Pointer<Pointer<TOKENBINDING_RESULT_DATA>> resultData,
),
    int Function(
  int keyType,
  Pointer publicKey,
  int publicKeySize,
  Pointer<Pointer<TOKENBINDING_RESULT_DATA>> resultData,
)>('TokenBindingGenerateID');

int TokenBindingGenerateIDForUri(
  int keyType,
  Pointer<Utf16> targetUri,
  Pointer<Pointer<TOKENBINDING_RESULT_DATA>> resultData,
) =>
    _TokenBindingGenerateIDForUri(
      keyType,
      targetUri,
      resultData,
    );

late final _TokenBindingGenerateIDForUri = _tokenbinding.lookupFunction<
    Int32 Function(
  Int32 keyType,
  Pointer<Utf16> targetUri,
  Pointer<Pointer<TOKENBINDING_RESULT_DATA>> resultData,
),
    int Function(
  int keyType,
  Pointer<Utf16> targetUri,
  Pointer<Pointer<TOKENBINDING_RESULT_DATA>> resultData,
)>('TokenBindingGenerateIDForUri');

int TokenBindingGenerateMessage(
  Pointer<Pointer> tokenBindings,
  Pointer<Uint32> tokenBindingsSize,
  int tokenBindingsCount,
  Pointer<Pointer> tokenBindingMessage,
  Pointer<Uint32> tokenBindingMessageSize,
) =>
    _TokenBindingGenerateMessage(
      tokenBindings,
      tokenBindingsSize,
      tokenBindingsCount,
      tokenBindingMessage,
      tokenBindingMessageSize,
    );

late final _TokenBindingGenerateMessage = _tokenbinding.lookupFunction<
    Int32 Function(
  Pointer<Pointer> tokenBindings,
  Pointer<Uint32> tokenBindingsSize,
  Uint32 tokenBindingsCount,
  Pointer<Pointer> tokenBindingMessage,
  Pointer<Uint32> tokenBindingMessageSize,
),
    int Function(
  Pointer<Pointer> tokenBindings,
  Pointer<Uint32> tokenBindingsSize,
  int tokenBindingsCount,
  Pointer<Pointer> tokenBindingMessage,
  Pointer<Uint32> tokenBindingMessageSize,
)>('TokenBindingGenerateMessage');

int TokenBindingGetHighestSupportedVersion(
  Pointer<Uint8> majorVersion,
  Pointer<Uint8> minorVersion,
) =>
    _TokenBindingGetHighestSupportedVersion(
      majorVersion,
      minorVersion,
    );

late final _TokenBindingGetHighestSupportedVersion =
    _tokenbinding.lookupFunction<
        Int32 Function(
  Pointer<Uint8> majorVersion,
  Pointer<Uint8> minorVersion,
),
        int Function(
  Pointer<Uint8> majorVersion,
  Pointer<Uint8> minorVersion,
)>('TokenBindingGetHighestSupportedVersion');

int TokenBindingGetKeyTypesClient(
  Pointer<Pointer<TOKENBINDING_KEY_TYPES>> keyTypes,
) =>
    _TokenBindingGetKeyTypesClient(
      keyTypes,
    );

late final _TokenBindingGetKeyTypesClient = _tokenbinding.lookupFunction<
    Int32 Function(
  Pointer<Pointer<TOKENBINDING_KEY_TYPES>> keyTypes,
),
    int Function(
  Pointer<Pointer<TOKENBINDING_KEY_TYPES>> keyTypes,
)>('TokenBindingGetKeyTypesClient');

int TokenBindingGetKeyTypesServer(
  Pointer<Pointer<TOKENBINDING_KEY_TYPES>> keyTypes,
) =>
    _TokenBindingGetKeyTypesServer(
      keyTypes,
    );

late final _TokenBindingGetKeyTypesServer = _tokenbinding.lookupFunction<
    Int32 Function(
  Pointer<Pointer<TOKENBINDING_KEY_TYPES>> keyTypes,
),
    int Function(
  Pointer<Pointer<TOKENBINDING_KEY_TYPES>> keyTypes,
)>('TokenBindingGetKeyTypesServer');

int TokenBindingVerifyMessage(
  Pointer tokenBindingMessage,
  int tokenBindingMessageSize,
  int keyType,
  Pointer tlsEKM,
  int tlsEKMSize,
  Pointer<Pointer<TOKENBINDING_RESULT_LIST>> resultList,
) =>
    _TokenBindingVerifyMessage(
      tokenBindingMessage,
      tokenBindingMessageSize,
      keyType,
      tlsEKM,
      tlsEKMSize,
      resultList,
    );

late final _TokenBindingVerifyMessage = _tokenbinding.lookupFunction<
    Int32 Function(
  Pointer tokenBindingMessage,
  Uint32 tokenBindingMessageSize,
  Int32 keyType,
  Pointer tlsEKM,
  Uint32 tlsEKMSize,
  Pointer<Pointer<TOKENBINDING_RESULT_LIST>> resultList,
),
    int Function(
  Pointer tokenBindingMessage,
  int tokenBindingMessageSize,
  int keyType,
  Pointer tlsEKM,
  int tlsEKMSize,
  Pointer<Pointer<TOKENBINDING_RESULT_LIST>> resultList,
)>('TokenBindingVerifyMessage');

// -----------------------------------------------------------------------
// slc.dll
// -----------------------------------------------------------------------
final _slc = DynamicLibrary.open('slc.dll');

int SLClose(
  Pointer hSLC,
) =>
    _SLClose(
      hSLC,
    );

late final _SLClose = _slc.lookupFunction<
    Int32 Function(
  Pointer hSLC,
),
    int Function(
  Pointer hSLC,
)>('SLClose');

int SLConsumeRight(
  Pointer hSLC,
  Pointer<GUID> pAppId,
  Pointer<GUID> pProductSkuId,
  Pointer<Utf16> pwszRightName,
  Pointer pvReserved,
) =>
    _SLConsumeRight(
      hSLC,
      pAppId,
      pProductSkuId,
      pwszRightName,
      pvReserved,
    );

late final _SLConsumeRight = _slc.lookupFunction<
    Int32 Function(
  Pointer hSLC,
  Pointer<GUID> pAppId,
  Pointer<GUID> pProductSkuId,
  Pointer<Utf16> pwszRightName,
  Pointer pvReserved,
),
    int Function(
  Pointer hSLC,
  Pointer<GUID> pAppId,
  Pointer<GUID> pProductSkuId,
  Pointer<Utf16> pwszRightName,
  Pointer pvReserved,
)>('SLConsumeRight');

int SLDepositOfflineConfirmationId(
  Pointer hSLC,
  Pointer<GUID> pProductSkuId,
  Pointer<Utf16> pwszInstallationId,
  Pointer<Utf16> pwszConfirmationId,
) =>
    _SLDepositOfflineConfirmationId(
      hSLC,
      pProductSkuId,
      pwszInstallationId,
      pwszConfirmationId,
    );

late final _SLDepositOfflineConfirmationId = _slc.lookupFunction<
    Int32 Function(
  Pointer hSLC,
  Pointer<GUID> pProductSkuId,
  Pointer<Utf16> pwszInstallationId,
  Pointer<Utf16> pwszConfirmationId,
),
    int Function(
  Pointer hSLC,
  Pointer<GUID> pProductSkuId,
  Pointer<Utf16> pwszInstallationId,
  Pointer<Utf16> pwszConfirmationId,
)>('SLDepositOfflineConfirmationId');

int SLDepositOfflineConfirmationIdEx(
  Pointer hSLC,
  Pointer<GUID> pProductSkuId,
  Pointer<SL_ACTIVATION_INFO_HEADER> pActivationInfo,
  Pointer<Utf16> pwszInstallationId,
  Pointer<Utf16> pwszConfirmationId,
) =>
    _SLDepositOfflineConfirmationIdEx(
      hSLC,
      pProductSkuId,
      pActivationInfo,
      pwszInstallationId,
      pwszConfirmationId,
    );

late final _SLDepositOfflineConfirmationIdEx = _slc.lookupFunction<
    Int32 Function(
  Pointer hSLC,
  Pointer<GUID> pProductSkuId,
  Pointer<SL_ACTIVATION_INFO_HEADER> pActivationInfo,
  Pointer<Utf16> pwszInstallationId,
  Pointer<Utf16> pwszConfirmationId,
),
    int Function(
  Pointer hSLC,
  Pointer<GUID> pProductSkuId,
  Pointer<SL_ACTIVATION_INFO_HEADER> pActivationInfo,
  Pointer<Utf16> pwszInstallationId,
  Pointer<Utf16> pwszConfirmationId,
)>('SLDepositOfflineConfirmationIdEx');

int SLFireEvent(
  Pointer hSLC,
  Pointer<Utf16> pwszEventId,
  Pointer<GUID> pApplicationId,
) =>
    _SLFireEvent(
      hSLC,
      pwszEventId,
      pApplicationId,
    );

late final _SLFireEvent = _slc.lookupFunction<
    Int32 Function(
  Pointer hSLC,
  Pointer<Utf16> pwszEventId,
  Pointer<GUID> pApplicationId,
),
    int Function(
  Pointer hSLC,
  Pointer<Utf16> pwszEventId,
  Pointer<GUID> pApplicationId,
)>('SLFireEvent');

int SLGenerateOfflineInstallationId(
  Pointer hSLC,
  Pointer<GUID> pProductSkuId,
  Pointer<Pointer<Utf16>> ppwszInstallationId,
) =>
    _SLGenerateOfflineInstallationId(
      hSLC,
      pProductSkuId,
      ppwszInstallationId,
    );

late final _SLGenerateOfflineInstallationId = _slc.lookupFunction<
    Int32 Function(
  Pointer hSLC,
  Pointer<GUID> pProductSkuId,
  Pointer<Pointer<Utf16>> ppwszInstallationId,
),
    int Function(
  Pointer hSLC,
  Pointer<GUID> pProductSkuId,
  Pointer<Pointer<Utf16>> ppwszInstallationId,
)>('SLGenerateOfflineInstallationId');

int SLGenerateOfflineInstallationIdEx(
  Pointer hSLC,
  Pointer<GUID> pProductSkuId,
  Pointer<SL_ACTIVATION_INFO_HEADER> pActivationInfo,
  Pointer<Pointer<Utf16>> ppwszInstallationId,
) =>
    _SLGenerateOfflineInstallationIdEx(
      hSLC,
      pProductSkuId,
      pActivationInfo,
      ppwszInstallationId,
    );

late final _SLGenerateOfflineInstallationIdEx = _slc.lookupFunction<
    Int32 Function(
  Pointer hSLC,
  Pointer<GUID> pProductSkuId,
  Pointer<SL_ACTIVATION_INFO_HEADER> pActivationInfo,
  Pointer<Pointer<Utf16>> ppwszInstallationId,
),
    int Function(
  Pointer hSLC,
  Pointer<GUID> pProductSkuId,
  Pointer<SL_ACTIVATION_INFO_HEADER> pActivationInfo,
  Pointer<Pointer<Utf16>> ppwszInstallationId,
)>('SLGenerateOfflineInstallationIdEx');

int SLGetApplicationInformation(
  Pointer hSLC,
  Pointer<GUID> pApplicationId,
  Pointer<Utf16> pwszValueName,
  Pointer<Uint32> peDataType,
  Pointer<Uint32> pcbValue,
  Pointer<Pointer<Uint8>> ppbValue,
) =>
    _SLGetApplicationInformation(
      hSLC,
      pApplicationId,
      pwszValueName,
      peDataType,
      pcbValue,
      ppbValue,
    );

late final _SLGetApplicationInformation = _slc.lookupFunction<
    Int32 Function(
  Pointer hSLC,
  Pointer<GUID> pApplicationId,
  Pointer<Utf16> pwszValueName,
  Pointer<Uint32> peDataType,
  Pointer<Uint32> pcbValue,
  Pointer<Pointer<Uint8>> ppbValue,
),
    int Function(
  Pointer hSLC,
  Pointer<GUID> pApplicationId,
  Pointer<Utf16> pwszValueName,
  Pointer<Uint32> peDataType,
  Pointer<Uint32> pcbValue,
  Pointer<Pointer<Uint8>> ppbValue,
)>('SLGetApplicationInformation');

int SLGetGenuineInformation(
  Pointer<GUID> pQueryId,
  Pointer<Utf16> pwszValueName,
  Pointer<Uint32> peDataType,
  Pointer<Uint32> pcbValue,
  Pointer<Pointer<Uint8>> ppbValue,
) =>
    _SLGetGenuineInformation(
      pQueryId,
      pwszValueName,
      peDataType,
      pcbValue,
      ppbValue,
    );

late final _SLGetGenuineInformation = _slc.lookupFunction<
    Int32 Function(
  Pointer<GUID> pQueryId,
  Pointer<Utf16> pwszValueName,
  Pointer<Uint32> peDataType,
  Pointer<Uint32> pcbValue,
  Pointer<Pointer<Uint8>> ppbValue,
),
    int Function(
  Pointer<GUID> pQueryId,
  Pointer<Utf16> pwszValueName,
  Pointer<Uint32> peDataType,
  Pointer<Uint32> pcbValue,
  Pointer<Pointer<Uint8>> ppbValue,
)>('SLGetGenuineInformation');

int SLGetInstalledProductKeyIds(
  Pointer hSLC,
  Pointer<GUID> pProductSkuId,
  Pointer<Uint32> pnProductKeyIds,
  Pointer<Pointer<GUID>> ppProductKeyIds,
) =>
    _SLGetInstalledProductKeyIds(
      hSLC,
      pProductSkuId,
      pnProductKeyIds,
      ppProductKeyIds,
    );

late final _SLGetInstalledProductKeyIds = _slc.lookupFunction<
    Int32 Function(
  Pointer hSLC,
  Pointer<GUID> pProductSkuId,
  Pointer<Uint32> pnProductKeyIds,
  Pointer<Pointer<GUID>> ppProductKeyIds,
),
    int Function(
  Pointer hSLC,
  Pointer<GUID> pProductSkuId,
  Pointer<Uint32> pnProductKeyIds,
  Pointer<Pointer<GUID>> ppProductKeyIds,
)>('SLGetInstalledProductKeyIds');

int SLGetLicense(
  Pointer hSLC,
  Pointer<GUID> pLicenseFileId,
  Pointer<Uint32> pcbLicenseFile,
  Pointer<Pointer<Uint8>> ppbLicenseFile,
) =>
    _SLGetLicense(
      hSLC,
      pLicenseFileId,
      pcbLicenseFile,
      ppbLicenseFile,
    );

late final _SLGetLicense = _slc.lookupFunction<
    Int32 Function(
  Pointer hSLC,
  Pointer<GUID> pLicenseFileId,
  Pointer<Uint32> pcbLicenseFile,
  Pointer<Pointer<Uint8>> ppbLicenseFile,
),
    int Function(
  Pointer hSLC,
  Pointer<GUID> pLicenseFileId,
  Pointer<Uint32> pcbLicenseFile,
  Pointer<Pointer<Uint8>> ppbLicenseFile,
)>('SLGetLicense');

int SLGetLicenseFileId(
  Pointer hSLC,
  int cbLicenseBlob,
  Pointer<Uint8> pbLicenseBlob,
  Pointer<GUID> pLicenseFileId,
) =>
    _SLGetLicenseFileId(
      hSLC,
      cbLicenseBlob,
      pbLicenseBlob,
      pLicenseFileId,
    );

late final _SLGetLicenseFileId = _slc.lookupFunction<
    Int32 Function(
  Pointer hSLC,
  Uint32 cbLicenseBlob,
  Pointer<Uint8> pbLicenseBlob,
  Pointer<GUID> pLicenseFileId,
),
    int Function(
  Pointer hSLC,
  int cbLicenseBlob,
  Pointer<Uint8> pbLicenseBlob,
  Pointer<GUID> pLicenseFileId,
)>('SLGetLicenseFileId');

int SLGetLicenseInformation(
  Pointer hSLC,
  Pointer<GUID> pSLLicenseId,
  Pointer<Utf16> pwszValueName,
  Pointer<Uint32> peDataType,
  Pointer<Uint32> pcbValue,
  Pointer<Pointer<Uint8>> ppbValue,
) =>
    _SLGetLicenseInformation(
      hSLC,
      pSLLicenseId,
      pwszValueName,
      peDataType,
      pcbValue,
      ppbValue,
    );

late final _SLGetLicenseInformation = _slc.lookupFunction<
    Int32 Function(
  Pointer hSLC,
  Pointer<GUID> pSLLicenseId,
  Pointer<Utf16> pwszValueName,
  Pointer<Uint32> peDataType,
  Pointer<Uint32> pcbValue,
  Pointer<Pointer<Uint8>> ppbValue,
),
    int Function(
  Pointer hSLC,
  Pointer<GUID> pSLLicenseId,
  Pointer<Utf16> pwszValueName,
  Pointer<Uint32> peDataType,
  Pointer<Uint32> pcbValue,
  Pointer<Pointer<Uint8>> ppbValue,
)>('SLGetLicenseInformation');

int SLGetLicensingStatusInformation(
  Pointer hSLC,
  Pointer<GUID> pAppID,
  Pointer<GUID> pProductSkuId,
  Pointer<Utf16> pwszRightName,
  Pointer<Uint32> pnStatusCount,
  Pointer<Pointer<SL_LICENSING_STATUS>> ppLicensingStatus,
) =>
    _SLGetLicensingStatusInformation(
      hSLC,
      pAppID,
      pProductSkuId,
      pwszRightName,
      pnStatusCount,
      ppLicensingStatus,
    );

late final _SLGetLicensingStatusInformation = _slc.lookupFunction<
    Int32 Function(
  Pointer hSLC,
  Pointer<GUID> pAppID,
  Pointer<GUID> pProductSkuId,
  Pointer<Utf16> pwszRightName,
  Pointer<Uint32> pnStatusCount,
  Pointer<Pointer<SL_LICENSING_STATUS>> ppLicensingStatus,
),
    int Function(
  Pointer hSLC,
  Pointer<GUID> pAppID,
  Pointer<GUID> pProductSkuId,
  Pointer<Utf16> pwszRightName,
  Pointer<Uint32> pnStatusCount,
  Pointer<Pointer<SL_LICENSING_STATUS>> ppLicensingStatus,
)>('SLGetLicensingStatusInformation');

int SLGetPKeyId(
  Pointer hSLC,
  Pointer<Utf16> pwszPKeyAlgorithm,
  Pointer<Utf16> pwszPKeyString,
  int cbPKeySpecificData,
  Pointer<Uint8> pbPKeySpecificData,
  Pointer<GUID> pPKeyId,
) =>
    _SLGetPKeyId(
      hSLC,
      pwszPKeyAlgorithm,
      pwszPKeyString,
      cbPKeySpecificData,
      pbPKeySpecificData,
      pPKeyId,
    );

late final _SLGetPKeyId = _slc.lookupFunction<
    Int32 Function(
  Pointer hSLC,
  Pointer<Utf16> pwszPKeyAlgorithm,
  Pointer<Utf16> pwszPKeyString,
  Uint32 cbPKeySpecificData,
  Pointer<Uint8> pbPKeySpecificData,
  Pointer<GUID> pPKeyId,
),
    int Function(
  Pointer hSLC,
  Pointer<Utf16> pwszPKeyAlgorithm,
  Pointer<Utf16> pwszPKeyString,
  int cbPKeySpecificData,
  Pointer<Uint8> pbPKeySpecificData,
  Pointer<GUID> pPKeyId,
)>('SLGetPKeyId');

int SLGetPKeyInformation(
  Pointer hSLC,
  Pointer<GUID> pPKeyId,
  Pointer<Utf16> pwszValueName,
  Pointer<Uint32> peDataType,
  Pointer<Uint32> pcbValue,
  Pointer<Pointer<Uint8>> ppbValue,
) =>
    _SLGetPKeyInformation(
      hSLC,
      pPKeyId,
      pwszValueName,
      peDataType,
      pcbValue,
      ppbValue,
    );

late final _SLGetPKeyInformation = _slc.lookupFunction<
    Int32 Function(
  Pointer hSLC,
  Pointer<GUID> pPKeyId,
  Pointer<Utf16> pwszValueName,
  Pointer<Uint32> peDataType,
  Pointer<Uint32> pcbValue,
  Pointer<Pointer<Uint8>> ppbValue,
),
    int Function(
  Pointer hSLC,
  Pointer<GUID> pPKeyId,
  Pointer<Utf16> pwszValueName,
  Pointer<Uint32> peDataType,
  Pointer<Uint32> pcbValue,
  Pointer<Pointer<Uint8>> ppbValue,
)>('SLGetPKeyInformation');

int SLGetPolicyInformation(
  Pointer hSLC,
  Pointer<Utf16> pwszValueName,
  Pointer<Uint32> peDataType,
  Pointer<Uint32> pcbValue,
  Pointer<Pointer<Uint8>> ppbValue,
) =>
    _SLGetPolicyInformation(
      hSLC,
      pwszValueName,
      peDataType,
      pcbValue,
      ppbValue,
    );

late final _SLGetPolicyInformation = _slc.lookupFunction<
    Int32 Function(
  Pointer hSLC,
  Pointer<Utf16> pwszValueName,
  Pointer<Uint32> peDataType,
  Pointer<Uint32> pcbValue,
  Pointer<Pointer<Uint8>> ppbValue,
),
    int Function(
  Pointer hSLC,
  Pointer<Utf16> pwszValueName,
  Pointer<Uint32> peDataType,
  Pointer<Uint32> pcbValue,
  Pointer<Pointer<Uint8>> ppbValue,
)>('SLGetPolicyInformation');

int SLGetPolicyInformationDWORD(
  Pointer hSLC,
  Pointer<Utf16> pwszValueName,
  Pointer<Uint32> pdwValue,
) =>
    _SLGetPolicyInformationDWORD(
      hSLC,
      pwszValueName,
      pdwValue,
    );

late final _SLGetPolicyInformationDWORD = _slc.lookupFunction<
    Int32 Function(
  Pointer hSLC,
  Pointer<Utf16> pwszValueName,
  Pointer<Uint32> pdwValue,
),
    int Function(
  Pointer hSLC,
  Pointer<Utf16> pwszValueName,
  Pointer<Uint32> pdwValue,
)>('SLGetPolicyInformationDWORD');

int SLGetProductSkuInformation(
  Pointer hSLC,
  Pointer<GUID> pProductSkuId,
  Pointer<Utf16> pwszValueName,
  Pointer<Uint32> peDataType,
  Pointer<Uint32> pcbValue,
  Pointer<Pointer<Uint8>> ppbValue,
) =>
    _SLGetProductSkuInformation(
      hSLC,
      pProductSkuId,
      pwszValueName,
      peDataType,
      pcbValue,
      ppbValue,
    );

late final _SLGetProductSkuInformation = _slc.lookupFunction<
    Int32 Function(
  Pointer hSLC,
  Pointer<GUID> pProductSkuId,
  Pointer<Utf16> pwszValueName,
  Pointer<Uint32> peDataType,
  Pointer<Uint32> pcbValue,
  Pointer<Pointer<Uint8>> ppbValue,
),
    int Function(
  Pointer hSLC,
  Pointer<GUID> pProductSkuId,
  Pointer<Utf16> pwszValueName,
  Pointer<Uint32> peDataType,
  Pointer<Uint32> pcbValue,
  Pointer<Pointer<Uint8>> ppbValue,
)>('SLGetProductSkuInformation');

int SLGetSLIDList(
  Pointer hSLC,
  int eQueryIdType,
  Pointer<GUID> pQueryId,
  int eReturnIdType,
  Pointer<Uint32> pnReturnIds,
  Pointer<Pointer<GUID>> ppReturnIds,
) =>
    _SLGetSLIDList(
      hSLC,
      eQueryIdType,
      pQueryId,
      eReturnIdType,
      pnReturnIds,
      ppReturnIds,
    );

late final _SLGetSLIDList = _slc.lookupFunction<
    Int32 Function(
  Pointer hSLC,
  Int32 eQueryIdType,
  Pointer<GUID> pQueryId,
  Int32 eReturnIdType,
  Pointer<Uint32> pnReturnIds,
  Pointer<Pointer<GUID>> ppReturnIds,
),
    int Function(
  Pointer hSLC,
  int eQueryIdType,
  Pointer<GUID> pQueryId,
  int eReturnIdType,
  Pointer<Uint32> pnReturnIds,
  Pointer<Pointer<GUID>> ppReturnIds,
)>('SLGetSLIDList');

int SLGetServiceInformation(
  Pointer hSLC,
  Pointer<Utf16> pwszValueName,
  Pointer<Uint32> peDataType,
  Pointer<Uint32> pcbValue,
  Pointer<Pointer<Uint8>> ppbValue,
) =>
    _SLGetServiceInformation(
      hSLC,
      pwszValueName,
      peDataType,
      pcbValue,
      ppbValue,
    );

late final _SLGetServiceInformation = _slc.lookupFunction<
    Int32 Function(
  Pointer hSLC,
  Pointer<Utf16> pwszValueName,
  Pointer<Uint32> peDataType,
  Pointer<Uint32> pcbValue,
  Pointer<Pointer<Uint8>> ppbValue,
),
    int Function(
  Pointer hSLC,
  Pointer<Utf16> pwszValueName,
  Pointer<Uint32> peDataType,
  Pointer<Uint32> pcbValue,
  Pointer<Pointer<Uint8>> ppbValue,
)>('SLGetServiceInformation');

int SLGetWindowsInformation(
  Pointer<Utf16> pwszValueName,
  Pointer<Uint32> peDataType,
  Pointer<Uint32> pcbValue,
  Pointer<Pointer<Uint8>> ppbValue,
) =>
    _SLGetWindowsInformation(
      pwszValueName,
      peDataType,
      pcbValue,
      ppbValue,
    );

late final _SLGetWindowsInformation = _slc.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwszValueName,
  Pointer<Uint32> peDataType,
  Pointer<Uint32> pcbValue,
  Pointer<Pointer<Uint8>> ppbValue,
),
    int Function(
  Pointer<Utf16> pwszValueName,
  Pointer<Uint32> peDataType,
  Pointer<Uint32> pcbValue,
  Pointer<Pointer<Uint8>> ppbValue,
)>('SLGetWindowsInformation');

int SLGetWindowsInformationDWORD(
  Pointer<Utf16> pwszValueName,
  Pointer<Uint32> pdwValue,
) =>
    _SLGetWindowsInformationDWORD(
      pwszValueName,
      pdwValue,
    );

late final _SLGetWindowsInformationDWORD = _slc.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwszValueName,
  Pointer<Uint32> pdwValue,
),
    int Function(
  Pointer<Utf16> pwszValueName,
  Pointer<Uint32> pdwValue,
)>('SLGetWindowsInformationDWORD');

int SLInstallLicense(
  Pointer hSLC,
  int cbLicenseBlob,
  Pointer<Uint8> pbLicenseBlob,
  Pointer<GUID> pLicenseFileId,
) =>
    _SLInstallLicense(
      hSLC,
      cbLicenseBlob,
      pbLicenseBlob,
      pLicenseFileId,
    );

late final _SLInstallLicense = _slc.lookupFunction<
    Int32 Function(
  Pointer hSLC,
  Uint32 cbLicenseBlob,
  Pointer<Uint8> pbLicenseBlob,
  Pointer<GUID> pLicenseFileId,
),
    int Function(
  Pointer hSLC,
  int cbLicenseBlob,
  Pointer<Uint8> pbLicenseBlob,
  Pointer<GUID> pLicenseFileId,
)>('SLInstallLicense');

int SLInstallProofOfPurchase(
  Pointer hSLC,
  Pointer<Utf16> pwszPKeyAlgorithm,
  Pointer<Utf16> pwszPKeyString,
  int cbPKeySpecificData,
  Pointer<Uint8> pbPKeySpecificData,
  Pointer<GUID> pPkeyId,
) =>
    _SLInstallProofOfPurchase(
      hSLC,
      pwszPKeyAlgorithm,
      pwszPKeyString,
      cbPKeySpecificData,
      pbPKeySpecificData,
      pPkeyId,
    );

late final _SLInstallProofOfPurchase = _slc.lookupFunction<
    Int32 Function(
  Pointer hSLC,
  Pointer<Utf16> pwszPKeyAlgorithm,
  Pointer<Utf16> pwszPKeyString,
  Uint32 cbPKeySpecificData,
  Pointer<Uint8> pbPKeySpecificData,
  Pointer<GUID> pPkeyId,
),
    int Function(
  Pointer hSLC,
  Pointer<Utf16> pwszPKeyAlgorithm,
  Pointer<Utf16> pwszPKeyString,
  int cbPKeySpecificData,
  Pointer<Uint8> pbPKeySpecificData,
  Pointer<GUID> pPkeyId,
)>('SLInstallProofOfPurchase');

int SLOpen(
  Pointer<Pointer> phSLC,
) =>
    _SLOpen(
      phSLC,
    );

late final _SLOpen = _slc.lookupFunction<
    Int32 Function(
  Pointer<Pointer> phSLC,
),
    int Function(
  Pointer<Pointer> phSLC,
)>('SLOpen');

int SLRegisterEvent(
  Pointer hSLC,
  Pointer<Utf16> pwszEventId,
  Pointer<GUID> pApplicationId,
  int hEvent,
) =>
    _SLRegisterEvent(
      hSLC,
      pwszEventId,
      pApplicationId,
      hEvent,
    );

late final _SLRegisterEvent = _slc.lookupFunction<
    Int32 Function(
  Pointer hSLC,
  Pointer<Utf16> pwszEventId,
  Pointer<GUID> pApplicationId,
  IntPtr hEvent,
),
    int Function(
  Pointer hSLC,
  Pointer<Utf16> pwszEventId,
  Pointer<GUID> pApplicationId,
  int hEvent,
)>('SLRegisterEvent');

int SLSetCurrentProductKey(
  Pointer hSLC,
  Pointer<GUID> pProductSkuId,
  Pointer<GUID> pProductKeyId,
) =>
    _SLSetCurrentProductKey(
      hSLC,
      pProductSkuId,
      pProductKeyId,
    );

late final _SLSetCurrentProductKey = _slc.lookupFunction<
    Int32 Function(
  Pointer hSLC,
  Pointer<GUID> pProductSkuId,
  Pointer<GUID> pProductKeyId,
),
    int Function(
  Pointer hSLC,
  Pointer<GUID> pProductSkuId,
  Pointer<GUID> pProductKeyId,
)>('SLSetCurrentProductKey');

int SLSetGenuineInformation(
  Pointer<GUID> pQueryId,
  Pointer<Utf16> pwszValueName,
  int eDataType,
  int cbValue,
  Pointer<Uint8> pbValue,
) =>
    _SLSetGenuineInformation(
      pQueryId,
      pwszValueName,
      eDataType,
      cbValue,
      pbValue,
    );

late final _SLSetGenuineInformation = _slc.lookupFunction<
    Int32 Function(
  Pointer<GUID> pQueryId,
  Pointer<Utf16> pwszValueName,
  Uint32 eDataType,
  Uint32 cbValue,
  Pointer<Uint8> pbValue,
),
    int Function(
  Pointer<GUID> pQueryId,
  Pointer<Utf16> pwszValueName,
  int eDataType,
  int cbValue,
  Pointer<Uint8> pbValue,
)>('SLSetGenuineInformation');

int SLUninstallLicense(
  Pointer hSLC,
  Pointer<GUID> pLicenseFileId,
) =>
    _SLUninstallLicense(
      hSLC,
      pLicenseFileId,
    );

late final _SLUninstallLicense = _slc.lookupFunction<
    Int32 Function(
  Pointer hSLC,
  Pointer<GUID> pLicenseFileId,
),
    int Function(
  Pointer hSLC,
  Pointer<GUID> pLicenseFileId,
)>('SLUninstallLicense');

int SLUninstallProofOfPurchase(
  Pointer hSLC,
  Pointer<GUID> pPKeyId,
) =>
    _SLUninstallProofOfPurchase(
      hSLC,
      pPKeyId,
    );

late final _SLUninstallProofOfPurchase = _slc.lookupFunction<
    Int32 Function(
  Pointer hSLC,
  Pointer<GUID> pPKeyId,
),
    int Function(
  Pointer hSLC,
  Pointer<GUID> pPKeyId,
)>('SLUninstallProofOfPurchase');

int SLUnregisterEvent(
  Pointer hSLC,
  Pointer<Utf16> pwszEventId,
  Pointer<GUID> pApplicationId,
  int hEvent,
) =>
    _SLUnregisterEvent(
      hSLC,
      pwszEventId,
      pApplicationId,
      hEvent,
    );

late final _SLUnregisterEvent = _slc.lookupFunction<
    Int32 Function(
  Pointer hSLC,
  Pointer<Utf16> pwszEventId,
  Pointer<GUID> pApplicationId,
  IntPtr hEvent,
),
    int Function(
  Pointer hSLC,
  Pointer<Utf16> pwszEventId,
  Pointer<GUID> pApplicationId,
  int hEvent,
)>('SLUnregisterEvent');

// -----------------------------------------------------------------------
// slcext.dll
// -----------------------------------------------------------------------
final _slcext = DynamicLibrary.open('slcext.dll');

int SLAcquireGenuineTicket(
  Pointer<Pointer> ppTicketBlob,
  Pointer<Uint32> pcbTicketBlob,
  Pointer<Utf16> pwszTemplateId,
  Pointer<Utf16> pwszServerUrl,
  Pointer<Utf16> pwszClientToken,
) =>
    _SLAcquireGenuineTicket(
      ppTicketBlob,
      pcbTicketBlob,
      pwszTemplateId,
      pwszServerUrl,
      pwszClientToken,
    );

late final _SLAcquireGenuineTicket = _slcext.lookupFunction<
    Int32 Function(
  Pointer<Pointer> ppTicketBlob,
  Pointer<Uint32> pcbTicketBlob,
  Pointer<Utf16> pwszTemplateId,
  Pointer<Utf16> pwszServerUrl,
  Pointer<Utf16> pwszClientToken,
),
    int Function(
  Pointer<Pointer> ppTicketBlob,
  Pointer<Uint32> pcbTicketBlob,
  Pointer<Utf16> pwszTemplateId,
  Pointer<Utf16> pwszServerUrl,
  Pointer<Utf16> pwszClientToken,
)>('SLAcquireGenuineTicket');

int SLActivateProduct(
  Pointer hSLC,
  Pointer<GUID> pProductSkuId,
  int cbAppSpecificData,
  Pointer pvAppSpecificData,
  Pointer<SL_ACTIVATION_INFO_HEADER> pActivationInfo,
  Pointer<Utf16> pwszProxyServer,
  int wProxyPort,
) =>
    _SLActivateProduct(
      hSLC,
      pProductSkuId,
      cbAppSpecificData,
      pvAppSpecificData,
      pActivationInfo,
      pwszProxyServer,
      wProxyPort,
    );

late final _SLActivateProduct = _slcext.lookupFunction<
    Int32 Function(
  Pointer hSLC,
  Pointer<GUID> pProductSkuId,
  Uint32 cbAppSpecificData,
  Pointer pvAppSpecificData,
  Pointer<SL_ACTIVATION_INFO_HEADER> pActivationInfo,
  Pointer<Utf16> pwszProxyServer,
  Uint16 wProxyPort,
),
    int Function(
  Pointer hSLC,
  Pointer<GUID> pProductSkuId,
  int cbAppSpecificData,
  Pointer pvAppSpecificData,
  Pointer<SL_ACTIVATION_INFO_HEADER> pActivationInfo,
  Pointer<Utf16> pwszProxyServer,
  int wProxyPort,
)>('SLActivateProduct');

int SLGetReferralInformation(
  Pointer hSLC,
  int eReferralType,
  Pointer<GUID> pSkuOrAppId,
  Pointer<Utf16> pwszValueName,
  Pointer<Pointer<Utf16>> ppwszValue,
) =>
    _SLGetReferralInformation(
      hSLC,
      eReferralType,
      pSkuOrAppId,
      pwszValueName,
      ppwszValue,
    );

late final _SLGetReferralInformation = _slcext.lookupFunction<
    Int32 Function(
  Pointer hSLC,
  Int32 eReferralType,
  Pointer<GUID> pSkuOrAppId,
  Pointer<Utf16> pwszValueName,
  Pointer<Pointer<Utf16>> ppwszValue,
),
    int Function(
  Pointer hSLC,
  int eReferralType,
  Pointer<GUID> pSkuOrAppId,
  Pointer<Utf16> pwszValueName,
  Pointer<Pointer<Utf16>> ppwszValue,
)>('SLGetReferralInformation');

int SLGetServerStatus(
  Pointer<Utf16> pwszServerURL,
  Pointer<Utf16> pwszAcquisitionType,
  Pointer<Utf16> pwszProxyServer,
  int wProxyPort,
  Pointer<Int32> phrStatus,
) =>
    _SLGetServerStatus(
      pwszServerURL,
      pwszAcquisitionType,
      pwszProxyServer,
      wProxyPort,
      phrStatus,
    );

late final _SLGetServerStatus = _slcext.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwszServerURL,
  Pointer<Utf16> pwszAcquisitionType,
  Pointer<Utf16> pwszProxyServer,
  Uint16 wProxyPort,
  Pointer<Int32> phrStatus,
),
    int Function(
  Pointer<Utf16> pwszServerURL,
  Pointer<Utf16> pwszAcquisitionType,
  Pointer<Utf16> pwszProxyServer,
  int wProxyPort,
  Pointer<Int32> phrStatus,
)>('SLGetServerStatus');

// -----------------------------------------------------------------------
// slwga.dll
// -----------------------------------------------------------------------
final _slwga = DynamicLibrary.open('slwga.dll');

int SLIsGenuineLocal(
  Pointer<GUID> pAppId,
  Pointer<Int32> pGenuineState,
  Pointer<SL_NONGENUINE_UI_OPTIONS> pUIOptions,
) =>
    _SLIsGenuineLocal(
      pAppId,
      pGenuineState,
      pUIOptions,
    );

late final _SLIsGenuineLocal = _slwga.lookupFunction<
    Int32 Function(
  Pointer<GUID> pAppId,
  Pointer<Int32> pGenuineState,
  Pointer<SL_NONGENUINE_UI_OPTIONS> pUIOptions,
),
    int Function(
  Pointer<GUID> pAppId,
  Pointer<Int32> pGenuineState,
  Pointer<SL_NONGENUINE_UI_OPTIONS> pUIOptions,
)>('SLIsGenuineLocal');

// -----------------------------------------------------------------------
// api-ms-win-core-slapi-l1-1-0.dll
// -----------------------------------------------------------------------
final _api_ms_win_core_slapi_l1_1_0 =
    DynamicLibrary.open('api-ms-win-core-slapi-l1-1-0.dll');

int SLQueryLicenseValueFromApp(
  Pointer<Utf16> valueName,
  Pointer<Uint32> valueType,
  Pointer dataBuffer,
  int dataSize,
  Pointer<Uint32> resultDataSize,
) =>
    _SLQueryLicenseValueFromApp(
      valueName,
      valueType,
      dataBuffer,
      dataSize,
      resultDataSize,
    );

late final _SLQueryLicenseValueFromApp =
    _api_ms_win_core_slapi_l1_1_0.lookupFunction<
        Int32 Function(
  Pointer<Utf16> valueName,
  Pointer<Uint32> valueType,
  Pointer dataBuffer,
  Uint32 dataSize,
  Pointer<Uint32> resultDataSize,
),
        int Function(
  Pointer<Utf16> valueName,
  Pointer<Uint32> valueType,
  Pointer dataBuffer,
  int dataSize,
  Pointer<Uint32> resultDataSize,
)>('SLQueryLicenseValueFromApp');
