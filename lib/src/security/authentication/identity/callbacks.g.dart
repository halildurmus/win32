// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// Native callback functions that can get called by the Win32 API

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'structs.g.dart';
import '../../../combase.dart';
import '../../../guid.dart';
import '../../../security/credentials/structs.g.dart';
import '../../../security/authentication/identity/structs.g.dart';
import '../../../foundation/structs.g.dart';
import '../../../security/authentication/identity/callbacks.g.dart';
import '../../../system/kernel/structs.g.dart';
import '../../../security/structs.g.dart';
import '../../../system/threading/callbacks.g.dart';

typedef ACCEPT_SECURITY_CONTEXT_FN = Int32 Function(
  Pointer<SecHandle> param0,
  Pointer<SecHandle> param1,
  Pointer<SecBufferDesc> param2,
  Uint32 param3,
  Uint32 param4,
  Pointer<SecHandle> param5,
  Pointer<SecBufferDesc> param6,
  Pointer<Uint32> param7,
  Pointer<Int64> param8,
);
typedef ACQUIRE_CREDENTIALS_HANDLE_FN_W = Int32 Function(
  Pointer<Uint16> param0,
  Pointer<Uint16> param1,
  Uint32 param2,
  Pointer param3,
  Pointer param4,
  Pointer<NativeFunction<SEC_GET_KEY_FN>> param5,
  Pointer param6,
  Pointer<SecHandle> param7,
  Pointer<Int64> param8,
);
typedef ADD_CREDENTIALS_FN_W = Int32 Function(
  Pointer<SecHandle> param0,
  Pointer<Uint16> param1,
  Pointer<Uint16> param2,
  Uint32 param3,
  Pointer param4,
  Pointer<NativeFunction<SEC_GET_KEY_FN>> param5,
  Pointer param6,
  Pointer<Int64> param7,
);
typedef APPLY_CONTROL_TOKEN_FN = Int32 Function(
  Pointer<SecHandle> param0,
  Pointer<SecBufferDesc> param1,
);
typedef CHANGE_PASSWORD_FN_W = Int32 Function(
  Pointer<Uint16> param0,
  Pointer<Uint16> param1,
  Pointer<Uint16> param2,
  Pointer<Uint16> param3,
  Pointer<Uint16> param4,
  Uint8 param5,
  Uint32 param6,
  Pointer<SecBufferDesc> param7,
);
typedef COMPLETE_AUTH_TOKEN_FN = Int32 Function(
  Pointer<SecHandle> param0,
  Pointer<SecBufferDesc> param1,
);
typedef CredFreeCredentialsFn = Void Function(
  Uint32 Count,
  Pointer<Pointer<ENCRYPTED_CREDENTIAL>> Credentials,
);
typedef CredReadDomainCredentialsFn = Int32 Function(
  Pointer<LUID> LogonId,
  Uint32 CredFlags,
  Pointer<CREDENTIAL_TARGET_INFORMATION> TargetInfo,
  Uint32 Flags,
  Pointer<Uint32> Count,
  Pointer<Pointer<Pointer<ENCRYPTED_CREDENTIAL>>> Credential,
);
typedef CredReadFn = Int32 Function(
  Pointer<LUID> LogonId,
  Uint32 CredFlags,
  Pointer<Utf16> TargetName,
  Uint32 Type,
  Uint32 Flags,
  Pointer<Pointer<ENCRYPTED_CREDENTIAL>> Credential,
);
typedef CredWriteFn = Int32 Function(
  Pointer<LUID> LogonId,
  Uint32 CredFlags,
  Pointer<ENCRYPTED_CREDENTIAL> Credential,
  Uint32 Flags,
);
typedef CrediUnmarshalandDecodeStringFn = Int32 Function(
  Pointer<Utf16> MarshaledString,
  Pointer<Pointer<Uint8>> Blob,
  Pointer<Uint32> BlobSize,
  Pointer<Uint8> IsFailureFatal,
);
typedef DECRYPT_MESSAGE_FN = Int32 Function(
  Pointer<SecHandle> param0,
  Pointer<SecBufferDesc> param1,
  Uint32 param2,
  Pointer<Uint32> param3,
);
typedef DELETE_SECURITY_CONTEXT_FN = Int32 Function(
  Pointer<SecHandle> param0,
);
typedef ENCRYPT_MESSAGE_FN = Int32 Function(
  Pointer<SecHandle> param0,
  Uint32 param1,
  Pointer<SecBufferDesc> param2,
  Uint32 param3,
);
typedef ENUMERATE_SECURITY_PACKAGES_FN_W = Int32 Function(
  Pointer<Uint32> param0,
  Pointer<Pointer<SecPkgInfo>> param1,
);
typedef EXPORT_SECURITY_CONTEXT_FN = Int32 Function(
  Pointer<SecHandle> param0,
  Uint32 param1,
  Pointer<SecBuffer> param2,
  Pointer<Pointer> param3,
);
typedef FREE_CONTEXT_BUFFER_FN = Int32 Function(
  Pointer param0,
);
typedef FREE_CREDENTIALS_HANDLE_FN = Int32 Function(
  Pointer<SecHandle> param0,
);
typedef IMPERSONATE_SECURITY_CONTEXT_FN = Int32 Function(
  Pointer<SecHandle> param0,
);
typedef IMPORT_SECURITY_CONTEXT_FN_W = Int32 Function(
  Pointer<Uint16> param0,
  Pointer<SecBuffer> param1,
  Pointer param2,
  Pointer<SecHandle> param3,
);
typedef INITIALIZE_SECURITY_CONTEXT_FN_W = Int32 Function(
  Pointer<SecHandle> param0,
  Pointer<SecHandle> param1,
  Pointer<Uint16> param2,
  Uint32 param3,
  Uint32 param4,
  Uint32 param5,
  Pointer<SecBufferDesc> param6,
  Uint32 param7,
  Pointer<SecHandle> param8,
  Pointer<SecBufferDesc> param9,
  Pointer<Uint32> param10,
  Pointer<Int64> param11,
);
typedef INIT_SECURITY_INTERFACE_W = Pointer<SecurityFunctionTable> Function();
typedef KspCompleteTokenFn = Int32 Function(
  IntPtr ContextId,
  Pointer<SecBufferDesc> Token,
);
typedef KspDeleteContextFn = Int32 Function(
  IntPtr ContextId,
  Pointer<IntPtr> LsaContextId,
);
typedef KspGetTokenFn = Int32 Function(
  IntPtr ContextId,
  Pointer<IntPtr> ImpersonationToken,
  Pointer<Pointer> RawToken,
);
typedef KspInitContextFn = Int32 Function(
  IntPtr ContextId,
  Pointer<SecBuffer> ContextData,
  Pointer<IntPtr> NewContextId,
);
typedef KspInitPackageFn = Int32 Function(
  Pointer<SECPKG_KERNEL_FUNCTIONS> FunctionTable,
);
typedef KspMakeSignatureFn = Int32 Function(
  IntPtr ContextId,
  Uint32 fQOP,
  Pointer<SecBufferDesc> Message,
  Uint32 MessageSeqNo,
);
typedef KspMapHandleFn = Int32 Function(
  IntPtr ContextId,
  Pointer<IntPtr> LsaContextId,
);
typedef KspQueryAttributesFn = Int32 Function(
  IntPtr ContextId,
  Uint32 Attribute,
  Pointer Buffer,
);
typedef KspSealMessageFn = Int32 Function(
  IntPtr ContextId,
  Uint32 fQOP,
  Pointer<SecBufferDesc> Message,
  Uint32 MessageSeqNo,
);
typedef KspSerializeAuthDataFn = Int32 Function(
  Pointer pvAuthData,
  Pointer<Uint32> Size,
  Pointer<Pointer> SerializedData,
);
typedef KspSetPagingModeFn = Int32 Function(
  Uint8 PagingMode,
);
typedef KspUnsealMessageFn = Int32 Function(
  IntPtr ContextId,
  Pointer<SecBufferDesc> Message,
  Uint32 MessageSeqNo,
  Pointer<Uint32> pfQOP,
);
typedef KspVerifySignatureFn = Int32 Function(
  IntPtr ContextId,
  Pointer<SecBufferDesc> Message,
  Uint32 MessageSeqNo,
  Pointer<Uint32> pfQOP,
);
typedef LSA_AP_POST_LOGON_USER = Int32 Function(
  Pointer<SECPKG_POST_LOGON_USER_INFO> PostLogonUserInfo,
);
typedef MAKE_SIGNATURE_FN = Int32 Function(
  Pointer<SecHandle> param0,
  Uint32 param1,
  Pointer<SecBufferDesc> param2,
  Uint32 param3,
);
typedef PKSEC_CREATE_CONTEXT_LIST = Pointer Function(
  Int32 Type,
);
typedef PKSEC_DEREFERENCE_LIST_ENTRY = Void Function(
  Pointer<KSEC_LIST_ENTRY> Entry,
  Pointer<Uint8> Delete,
);
typedef PKSEC_INSERT_LIST_ENTRY = Void Function(
  Pointer $List,
  Pointer<KSEC_LIST_ENTRY> Entry,
);
typedef PKSEC_LOCATE_PKG_BY_ID = Pointer Function(
  Uint32 PackageId,
);
typedef PKSEC_REFERENCE_LIST_ENTRY = Int32 Function(
  Pointer<KSEC_LIST_ENTRY> Entry,
  Uint32 Signature,
  Uint8 RemoveNoRef,
);
typedef PKSEC_SERIALIZE_SCHANNEL_AUTH_DATA = Int32 Function(
  Pointer pvAuthData,
  Pointer<Uint32> Size,
  Pointer<Pointer> SerializedData,
);
typedef PKSEC_SERIALIZE_WINNT_AUTH_DATA = Int32 Function(
  Pointer pvAuthData,
  Pointer<Uint32> Size,
  Pointer<Pointer> SerializedData,
);
typedef PLSA_ADD_CREDENTIAL = Int32 Function(
  Pointer<LUID> LogonId,
  Uint32 AuthenticationPackage,
  Pointer<STRING> PrimaryKeyValue,
  Pointer<STRING> Credentials,
);
typedef PLSA_ALLOCATE_CLIENT_BUFFER = Int32 Function(
  Pointer<Pointer> ClientRequest,
  Uint32 LengthRequired,
  Pointer<Pointer> ClientBaseAddress,
);
typedef PLSA_ALLOCATE_LSA_HEAP = Pointer Function(
  Uint32 Length,
);
typedef PLSA_ALLOCATE_PRIVATE_HEAP = Pointer Function(
  IntPtr Length,
);
typedef PLSA_ALLOCATE_SHARED_MEMORY = Pointer Function(
  Pointer SharedMem,
  Uint32 Size,
);
typedef PLSA_AP_CALL_PACKAGE = Int32 Function(
  Pointer<Pointer> ClientRequest,
  Pointer ProtocolSubmitBuffer,
  Pointer ClientBufferBase,
  Uint32 SubmitBufferLength,
  Pointer<Pointer> ProtocolReturnBuffer,
  Pointer<Uint32> ReturnBufferLength,
  Pointer<Int32> ProtocolStatus,
);
typedef PLSA_AP_CALL_PACKAGE_PASSTHROUGH = Int32 Function(
  Pointer<Pointer> ClientRequest,
  Pointer ProtocolSubmitBuffer,
  Pointer ClientBufferBase,
  Uint32 SubmitBufferLength,
  Pointer<Pointer> ProtocolReturnBuffer,
  Pointer<Uint32> ReturnBufferLength,
  Pointer<Int32> ProtocolStatus,
);
typedef PLSA_AP_INITIALIZE_PACKAGE = Int32 Function(
  Uint32 AuthenticationPackageId,
  Pointer<LSA_DISPATCH_TABLE> LsaDispatchTable,
  Pointer<STRING> Database,
  Pointer<STRING> Confidentiality,
  Pointer<Pointer<STRING>> AuthenticationPackageName,
);
typedef PLSA_AP_LOGON_TERMINATED = Void Function(
  Pointer<LUID> LogonId,
);
typedef PLSA_AP_LOGON_USER = Int32 Function(
  Pointer<Pointer> ClientRequest,
  Int32 LogonType,
  Pointer AuthenticationInformation,
  Pointer ClientAuthenticationBase,
  Uint32 AuthenticationInformationLength,
  Pointer<Pointer> ProfileBuffer,
  Pointer<Uint32> ProfileBufferLength,
  Pointer<LUID> LogonId,
  Pointer<Int32> SubStatus,
  Pointer<Int32> TokenInformationType,
  Pointer<Pointer> TokenInformation,
  Pointer<Pointer<UNICODE_STRING>> AccountName,
  Pointer<Pointer<UNICODE_STRING>> AuthenticatingAuthority,
);
typedef PLSA_AP_LOGON_USER_EX = Int32 Function(
  Pointer<Pointer> ClientRequest,
  Int32 LogonType,
  Pointer AuthenticationInformation,
  Pointer ClientAuthenticationBase,
  Uint32 AuthenticationInformationLength,
  Pointer<Pointer> ProfileBuffer,
  Pointer<Uint32> ProfileBufferLength,
  Pointer<LUID> LogonId,
  Pointer<Int32> SubStatus,
  Pointer<Int32> TokenInformationType,
  Pointer<Pointer> TokenInformation,
  Pointer<Pointer<UNICODE_STRING>> AccountName,
  Pointer<Pointer<UNICODE_STRING>> AuthenticatingAuthority,
  Pointer<Pointer<UNICODE_STRING>> MachineName,
);
typedef PLSA_AP_LOGON_USER_EX2 = Int32 Function(
  Pointer<Pointer> ClientRequest,
  Int32 LogonType,
  Pointer ProtocolSubmitBuffer,
  Pointer ClientBufferBase,
  Uint32 SubmitBufferSize,
  Pointer<Pointer> ProfileBuffer,
  Pointer<Uint32> ProfileBufferSize,
  Pointer<LUID> LogonId,
  Pointer<Int32> SubStatus,
  Pointer<Int32> TokenInformationType,
  Pointer<Pointer> TokenInformation,
  Pointer<Pointer<UNICODE_STRING>> AccountName,
  Pointer<Pointer<UNICODE_STRING>> AuthenticatingAuthority,
  Pointer<Pointer<UNICODE_STRING>> MachineName,
  Pointer<SECPKG_PRIMARY_CRED> PrimaryCredentials,
  Pointer<Pointer<SECPKG_SUPPLEMENTAL_CRED_ARRAY>> SupplementalCredentials,
);
typedef PLSA_AP_LOGON_USER_EX3 = Int32 Function(
  Pointer<Pointer> ClientRequest,
  Int32 LogonType,
  Pointer ProtocolSubmitBuffer,
  Pointer ClientBufferBase,
  Uint32 SubmitBufferSize,
  Pointer<SECPKG_SURROGATE_LOGON> SurrogateLogon,
  Pointer<Pointer> ProfileBuffer,
  Pointer<Uint32> ProfileBufferSize,
  Pointer<LUID> LogonId,
  Pointer<Int32> SubStatus,
  Pointer<Int32> TokenInformationType,
  Pointer<Pointer> TokenInformation,
  Pointer<Pointer<UNICODE_STRING>> AccountName,
  Pointer<Pointer<UNICODE_STRING>> AuthenticatingAuthority,
  Pointer<Pointer<UNICODE_STRING>> MachineName,
  Pointer<SECPKG_PRIMARY_CRED> PrimaryCredentials,
  Pointer<Pointer<SECPKG_SUPPLEMENTAL_CRED_ARRAY>> SupplementalCredentials,
);
typedef PLSA_AP_POST_LOGON_USER_SURROGATE = Int32 Function(
  Pointer<Pointer> ClientRequest,
  Int32 LogonType,
  Pointer ProtocolSubmitBuffer,
  Pointer ClientBufferBase,
  Uint32 SubmitBufferSize,
  Pointer<SECPKG_SURROGATE_LOGON> SurrogateLogon,
  Pointer ProfileBuffer,
  Uint32 ProfileBufferSize,
  Pointer<LUID> LogonId,
  Int32 Status,
  Int32 SubStatus,
  Int32 TokenInformationType,
  Pointer TokenInformation,
  Pointer<UNICODE_STRING> AccountName,
  Pointer<UNICODE_STRING> AuthenticatingAuthority,
  Pointer<UNICODE_STRING> MachineName,
  Pointer<SECPKG_PRIMARY_CRED> PrimaryCredentials,
  Pointer<SECPKG_SUPPLEMENTAL_CRED_ARRAY> SupplementalCredentials,
);
typedef PLSA_AP_PRE_LOGON_USER_SURROGATE = Int32 Function(
  Pointer<Pointer> ClientRequest,
  Int32 LogonType,
  Pointer ProtocolSubmitBuffer,
  Pointer ClientBufferBase,
  Uint32 SubmitBufferSize,
  Pointer<SECPKG_SURROGATE_LOGON> SurrogateLogon,
  Pointer<Int32> SubStatus,
);
typedef PLSA_AUDIT_ACCOUNT_LOGON = Int32 Function(
  Uint32 AuditId,
  Uint8 Success,
  Pointer<UNICODE_STRING> Source,
  Pointer<UNICODE_STRING> ClientName,
  Pointer<UNICODE_STRING> MappedName,
  Int32 Status,
);
typedef PLSA_AUDIT_LOGON = Void Function(
  Int32 Status,
  Int32 SubStatus,
  Pointer<UNICODE_STRING> AccountName,
  Pointer<UNICODE_STRING> AuthenticatingAuthority,
  Pointer<UNICODE_STRING> WorkstationName,
  IntPtr UserSid,
  Int32 LogonType,
  Pointer<TOKEN_SOURCE> TokenSource,
  Pointer<LUID> LogonId,
);
typedef PLSA_AUDIT_LOGON_EX = Void Function(
  Int32 Status,
  Int32 SubStatus,
  Pointer<UNICODE_STRING> AccountName,
  Pointer<UNICODE_STRING> AuthenticatingAuthority,
  Pointer<UNICODE_STRING> WorkstationName,
  IntPtr UserSid,
  Int32 LogonType,
  Int32 ImpersonationLevel,
  Pointer<TOKEN_SOURCE> TokenSource,
  Pointer<LUID> LogonId,
);
typedef PLSA_CALLBACK_FUNCTION = Int32 Function(
  IntPtr Argument1,
  IntPtr Argument2,
  Pointer<SecBuffer> InputBuffer,
  Pointer<SecBuffer> OutputBuffer,
);
typedef PLSA_CALL_PACKAGE = Int32 Function(
  Pointer<UNICODE_STRING> AuthenticationPackage,
  Pointer ProtocolSubmitBuffer,
  Uint32 SubmitBufferLength,
  Pointer<Pointer> ProtocolReturnBuffer,
  Pointer<Uint32> ReturnBufferLength,
  Pointer<Int32> ProtocolStatus,
);
typedef PLSA_CALL_PACKAGEEX = Int32 Function(
  Pointer<UNICODE_STRING> AuthenticationPackage,
  Pointer ClientBufferBase,
  Pointer ProtocolSubmitBuffer,
  Uint32 SubmitBufferLength,
  Pointer<Pointer> ProtocolReturnBuffer,
  Pointer<Uint32> ReturnBufferLength,
  Pointer<Int32> ProtocolStatus,
);
typedef PLSA_CALL_PACKAGE_PASSTHROUGH = Int32 Function(
  Pointer<UNICODE_STRING> AuthenticationPackage,
  Pointer ClientBufferBase,
  Pointer ProtocolSubmitBuffer,
  Uint32 SubmitBufferLength,
  Pointer<Pointer> ProtocolReturnBuffer,
  Pointer<Uint32> ReturnBufferLength,
  Pointer<Int32> ProtocolStatus,
);
typedef PLSA_CANCEL_NOTIFICATION = Int32 Function(
  IntPtr NotifyHandle,
);
typedef PLSA_CHECK_PROTECTED_USER_BY_TOKEN = Int32 Function(
  IntPtr UserToken,
  Pointer<Uint8> ProtectedUser,
);
typedef PLSA_CLIENT_CALLBACK = Int32 Function(
  Pointer<Utf8> Callback,
  IntPtr Argument1,
  IntPtr Argument2,
  Pointer<SecBuffer> Input,
  Pointer<SecBuffer> Output,
);
typedef PLSA_CLOSE_SAM_USER = Int32 Function(
  Pointer UserHandle,
);
typedef PLSA_CONVERT_AUTH_DATA_TO_TOKEN = Int32 Function(
  Pointer UserAuthData,
  Uint32 UserAuthDataSize,
  Int32 ImpersonationLevel,
  Pointer<TOKEN_SOURCE> TokenSource,
  Int32 LogonType,
  Pointer<UNICODE_STRING> AuthorityName,
  Pointer<IntPtr> Token,
  Pointer<LUID> LogonId,
  Pointer<UNICODE_STRING> AccountName,
  Pointer<Int32> SubStatus,
);
typedef PLSA_COPY_FROM_CLIENT_BUFFER = Int32 Function(
  Pointer<Pointer> ClientRequest,
  Uint32 Length,
  Pointer BufferToCopy,
  Pointer ClientBaseAddress,
);
typedef PLSA_COPY_TO_CLIENT_BUFFER = Int32 Function(
  Pointer<Pointer> ClientRequest,
  Uint32 Length,
  Pointer ClientBaseAddress,
  Pointer BufferToCopy,
);
typedef PLSA_CRACK_SINGLE_NAME = Int32 Function(
  Uint32 FormatOffered,
  Uint8 PerformAtGC,
  Pointer<UNICODE_STRING> NameInput,
  Pointer<UNICODE_STRING> Prefix,
  Uint32 RequestedFormat,
  Pointer<UNICODE_STRING> CrackedName,
  Pointer<UNICODE_STRING> DnsDomainName,
  Pointer<Uint32> SubStatus,
);
typedef PLSA_CREATE_LOGON_SESSION = Int32 Function(
  Pointer<LUID> LogonId,
);
typedef PLSA_CREATE_SHARED_MEMORY = Pointer Function(
  Uint32 MaxSize,
  Uint32 InitialSize,
);
typedef PLSA_CREATE_THREAD = IntPtr Function(
  Pointer<SECURITY_ATTRIBUTES> SecurityAttributes,
  Uint32 StackSize,
  Pointer<NativeFunction<LPTHREAD_START_ROUTINE>> StartFunction,
  Pointer ThreadParameter,
  Uint32 CreationFlags,
  Pointer<Uint32> ThreadId,
);
typedef PLSA_CREATE_TOKEN = Int32 Function(
  Pointer<LUID> LogonId,
  Pointer<TOKEN_SOURCE> TokenSource,
  Int32 LogonType,
  Int32 ImpersonationLevel,
  Int32 TokenInformationType,
  Pointer TokenInformation,
  Pointer<TOKEN_GROUPS> TokenGroups,
  Pointer<UNICODE_STRING> AccountName,
  Pointer<UNICODE_STRING> AuthorityName,
  Pointer<UNICODE_STRING> Workstation,
  Pointer<UNICODE_STRING> ProfilePath,
  Pointer<IntPtr> Token,
  Pointer<Int32> SubStatus,
);
typedef PLSA_CREATE_TOKEN_EX = Int32 Function(
  Pointer<LUID> LogonId,
  Pointer<TOKEN_SOURCE> TokenSource,
  Int32 LogonType,
  Int32 ImpersonationLevel,
  Int32 TokenInformationType,
  Pointer TokenInformation,
  Pointer<TOKEN_GROUPS> TokenGroups,
  Pointer<UNICODE_STRING> Workstation,
  Pointer<UNICODE_STRING> ProfilePath,
  Pointer SessionInformation,
  Int32 SessionInformationType,
  Pointer<IntPtr> Token,
  Pointer<Int32> SubStatus,
);
typedef PLSA_DELETE_CREDENTIAL = Int32 Function(
  Pointer<LUID> LogonId,
  Uint32 AuthenticationPackage,
  Pointer<STRING> PrimaryKeyValue,
);
typedef PLSA_DELETE_LOGON_SESSION = Int32 Function(
  Pointer<LUID> LogonId,
);
typedef PLSA_DELETE_SHARED_MEMORY = Uint8 Function(
  Pointer SharedMem,
);
typedef PLSA_DUPLICATE_HANDLE = Int32 Function(
  IntPtr SourceHandle,
  Pointer<IntPtr> DestionationHandle,
);
typedef PLSA_EXPAND_AUTH_DATA_FOR_DOMAIN = Int32 Function(
  Pointer<Uint8> UserAuthData,
  Uint32 UserAuthDataSize,
  Pointer Reserved,
  Pointer<Pointer<Uint8>> ExpandedAuthData,
  Pointer<Uint32> ExpandedAuthDataSize,
);
typedef PLSA_FREE_CLIENT_BUFFER = Int32 Function(
  Pointer<Pointer> ClientRequest,
  Pointer ClientBaseAddress,
);
typedef PLSA_FREE_LSA_HEAP = Void Function(
  Pointer Base,
);
typedef PLSA_FREE_PRIVATE_HEAP = Void Function(
  Pointer Base,
);
typedef PLSA_FREE_SHARED_MEMORY = Void Function(
  Pointer SharedMem,
  Pointer Memory,
);
typedef PLSA_GET_APP_MODE_INFO = Int32 Function(
  Pointer<Uint32> UserFunction,
  Pointer<IntPtr> Argument1,
  Pointer<IntPtr> Argument2,
  Pointer<SecBuffer> UserData,
  Pointer<Uint8> ReturnToLsa,
);
typedef PLSA_GET_AUTH_DATA_FOR_USER = Int32 Function(
  Pointer<UNICODE_STRING> Name,
  Int32 NameType,
  Pointer<UNICODE_STRING> Prefix,
  Pointer<Pointer<Uint8>> UserAuthData,
  Pointer<Uint32> UserAuthDataSize,
  Pointer<UNICODE_STRING> UserFlatName,
);
typedef PLSA_GET_CALL_INFO = Uint8 Function(
  Pointer<SECPKG_CALL_INFO> Info,
);
typedef PLSA_GET_CLIENT_INFO = Int32 Function(
  Pointer<SECPKG_CLIENT_INFO> ClientInfo,
);
typedef PLSA_GET_CREDENTIALS = Int32 Function(
  Pointer<LUID> LogonId,
  Uint32 AuthenticationPackage,
  Pointer<Uint32> QueryContext,
  Uint8 RetrieveAllCredentials,
  Pointer<STRING> PrimaryKeyValue,
  Pointer<Uint32> PrimaryKeyLength,
  Pointer<STRING> Credentials,
);
typedef PLSA_GET_EXTENDED_CALL_FLAGS = Int32 Function(
  Pointer<Uint32> Flags,
);
typedef PLSA_GET_SERVICE_ACCOUNT_PASSWORD = Int32 Function(
  Pointer<UNICODE_STRING> AccountName,
  Pointer<UNICODE_STRING> DomainName,
  Int32 CredFetch,
  Pointer<FILETIME> FileTimeExpiry,
  Pointer<UNICODE_STRING> CurrentPassword,
  Pointer<UNICODE_STRING> PreviousPassword,
  Pointer<FILETIME> FileTimeCurrPwdValidForOutbound,
);
typedef PLSA_GET_USER_AUTH_DATA = Int32 Function(
  Pointer UserHandle,
  Pointer<Pointer<Uint8>> UserAuthData,
  Pointer<Uint32> UserAuthDataSize,
);
typedef PLSA_GET_USER_CREDENTIALS = Int32 Function(
  Pointer UserHandle,
  Pointer<Pointer> PrimaryCreds,
  Pointer<Uint32> PrimaryCredsSize,
  Pointer<Pointer> SupplementalCreds,
  Pointer<Uint32> SupplementalCredsSize,
);
typedef PLSA_IMPERSONATE_CLIENT = Int32 Function();
typedef PLSA_LOCATE_PKG_BY_ID = Pointer Function(
  Uint32 PackgeId,
);
typedef PLSA_MAP_BUFFER = Int32 Function(
  Pointer<SecBuffer> InputBuffer,
  Pointer<SecBuffer> OutputBuffer,
);
typedef PLSA_OPEN_SAM_USER = Int32 Function(
  Pointer<UNICODE_STRING> Name,
  Int32 NameType,
  Pointer<UNICODE_STRING> Prefix,
  Uint8 AllowGuest,
  Uint32 Reserved,
  Pointer<Pointer> UserHandle,
);
typedef PLSA_OPEN_TOKEN_BY_LOGON_ID = Int32 Function(
  Pointer<LUID> LogonId,
  Pointer<IntPtr> RetTokenHandle,
);
typedef PLSA_PROTECT_MEMORY = Void Function(
  Pointer Buffer,
  Uint32 BufferSize,
);
typedef PLSA_QUERY_CLIENT_REQUEST = Int32 Function(
  Pointer<Pointer> ClientRequest,
  Uint32 QueryType,
  Pointer<Pointer> ReplyBuffer,
);
typedef PLSA_REDIRECTED_LOGON_CALLBACK = Int32 Function(
  IntPtr RedirectedLogonHandle,
  Pointer Buffer,
  Uint32 BufferLength,
  Pointer<Pointer> ReturnBuffer,
  Pointer<Uint32> ReturnBufferLength,
);
typedef PLSA_REDIRECTED_LOGON_CLEANUP_CALLBACK = Void Function(
  IntPtr RedirectedLogonHandle,
);
typedef PLSA_REDIRECTED_LOGON_GET_LOGON_CREDS = Int32 Function(
  IntPtr RedirectedLogonHandle,
  Pointer<Pointer<Uint8>> LogonBuffer,
  Pointer<Uint32> LogonBufferLength,
);
typedef PLSA_REDIRECTED_LOGON_GET_SUPP_CREDS = Int32 Function(
  IntPtr RedirectedLogonHandle,
  Pointer<Pointer<SECPKG_SUPPLEMENTAL_CRED_ARRAY>> SupplementalCredentials,
);
typedef PLSA_REDIRECTED_LOGON_INIT = Int32 Function(
  IntPtr RedirectedLogonHandle,
  Pointer<UNICODE_STRING> PackageName,
  Uint32 SessionId,
  Pointer<LUID> LogonId,
);
typedef PLSA_REGISTER_CALLBACK = Int32 Function(
  Uint32 CallbackId,
  Pointer<NativeFunction<PLSA_CALLBACK_FUNCTION>> Callback,
);
typedef PLSA_REGISTER_NOTIFICATION = IntPtr Function(
  Pointer<NativeFunction<LPTHREAD_START_ROUTINE>> StartFunction,
  Pointer Parameter,
  Uint32 NotificationType,
  Uint32 NotificationClass,
  Uint32 NotificationFlags,
  Uint32 IntervalMinutes,
  IntPtr WaitEvent,
);
typedef PLSA_SAVE_SUPPLEMENTAL_CREDENTIALS = Int32 Function(
  Pointer<LUID> LogonId,
  Uint32 SupplementalCredSize,
  Pointer SupplementalCreds,
  Uint8 Synchronous,
);
typedef PLSA_SET_APP_MODE_INFO = Int32 Function(
  Uint32 UserFunction,
  IntPtr Argument1,
  IntPtr Argument2,
  Pointer<SecBuffer> UserData,
  Uint8 ReturnToLsa,
);
typedef PLSA_UNLOAD_PACKAGE = Int32 Function();
typedef PLSA_UPDATE_PRIMARY_CREDENTIALS = Int32 Function(
  Pointer<SECPKG_PRIMARY_CRED> PrimaryCredentials,
  Pointer<SECPKG_SUPPLEMENTAL_CRED_ARRAY> Credentials,
);
typedef PSAM_CREDENTIAL_UPDATE_FREE_ROUTINE = Void Function(
  Pointer p,
);
typedef PSAM_CREDENTIAL_UPDATE_NOTIFY_ROUTINE = Int32 Function(
  Pointer<UNICODE_STRING> ClearPassword,
  Pointer OldCredentials,
  Uint32 OldCredentialSize,
  Uint32 UserAccountControl,
  Pointer<UNICODE_STRING> UPN,
  Pointer<UNICODE_STRING> UserName,
  Pointer<UNICODE_STRING> NetbiosDomainName,
  Pointer<UNICODE_STRING> DnsDomainName,
  Pointer<Pointer> NewCredentials,
  Pointer<Uint32> NewCredentialSize,
);
typedef PSAM_CREDENTIAL_UPDATE_REGISTER_MAPPED_ENTRYPOINTS_ROUTINE = Int32
    Function(
  Pointer<SAM_REGISTER_MAPPING_TABLE> Table,
);
typedef PSAM_CREDENTIAL_UPDATE_REGISTER_ROUTINE = Uint8 Function(
  Pointer<UNICODE_STRING> CredentialName,
);
typedef PSAM_INIT_NOTIFICATION_ROUTINE = Uint8 Function();
typedef PSAM_PASSWORD_FILTER_ROUTINE = Uint8 Function(
  Pointer<UNICODE_STRING> AccountName,
  Pointer<UNICODE_STRING> FullName,
  Pointer<UNICODE_STRING> Password,
  Uint8 SetOperation,
);
typedef PSAM_PASSWORD_NOTIFICATION_ROUTINE = Int32 Function(
  Pointer<UNICODE_STRING> UserName,
  Uint32 RelativeId,
  Pointer<UNICODE_STRING> NewPassword,
);
typedef QUERY_CONTEXT_ATTRIBUTES_EX_FN_W = Int32 Function(
  Pointer<SecHandle> param0,
  Uint32 param1,
  Pointer param2,
  Uint32 param3,
);
typedef QUERY_CONTEXT_ATTRIBUTES_FN_W = Int32 Function(
  Pointer<SecHandle> param0,
  Uint32 param1,
  Pointer param2,
);
typedef QUERY_CREDENTIALS_ATTRIBUTES_EX_FN_W = Int32 Function(
  Pointer<SecHandle> param0,
  Uint32 param1,
  Pointer param2,
  Uint32 param3,
);
typedef QUERY_CREDENTIALS_ATTRIBUTES_FN_W = Int32 Function(
  Pointer<SecHandle> param0,
  Uint32 param1,
  Pointer param2,
);
typedef QUERY_SECURITY_CONTEXT_TOKEN_FN = Int32 Function(
  Pointer<SecHandle> param0,
  Pointer<Pointer> param1,
);
typedef QUERY_SECURITY_PACKAGE_INFO_FN_W = Int32 Function(
  Pointer<Uint16> param0,
  Pointer<Pointer<SecPkgInfo>> param1,
);
typedef REVERT_SECURITY_CONTEXT_FN = Int32 Function(
  Pointer<SecHandle> param0,
);
typedef SEC_GET_KEY_FN = Void Function(
  Pointer Arg,
  Pointer Principal,
  Uint32 KeyVer,
  Pointer<Pointer> Key,
  Pointer<Int32> Status,
);
typedef SET_CONTEXT_ATTRIBUTES_FN_W = Int32 Function(
  Pointer<SecHandle> param0,
  Uint32 param1,
  Pointer param2,
  Uint32 param3,
);
typedef SET_CREDENTIALS_ATTRIBUTES_FN_W = Int32 Function(
  Pointer<SecHandle> param0,
  Uint32 param1,
  Pointer param2,
  Uint32 param3,
);
typedef SSL_CRACK_CERTIFICATE_FN = Int32 Function(
  Pointer<Uint8> pbCertificate,
  Uint32 cbCertificate,
  Int32 VerifySignature,
  Pointer<Pointer<X509Certificate>> ppCertificate,
);
typedef SSL_EMPTY_CACHE_FN_W = Int32 Function(
  Pointer<Utf16> pszTargetName,
  Uint32 dwFlags,
);
typedef SSL_FREE_CERTIFICATE_FN = Void Function(
  Pointer<X509Certificate> pCertificate,
);
typedef SpAcceptCredentialsFn = Int32 Function(
  Int32 LogonType,
  Pointer<UNICODE_STRING> AccountName,
  Pointer<SECPKG_PRIMARY_CRED> PrimaryCredentials,
  Pointer<SECPKG_SUPPLEMENTAL_CRED> SupplementalCredentials,
);
typedef SpAcceptLsaModeContextFn = Int32 Function(
  IntPtr CredentialHandle,
  IntPtr ContextHandle,
  Pointer<SecBufferDesc> InputBuffer,
  Uint32 ContextRequirements,
  Uint32 TargetDataRep,
  Pointer<IntPtr> NewContextHandle,
  Pointer<SecBufferDesc> OutputBuffer,
  Pointer<Uint32> ContextAttributes,
  Pointer<Int64> ExpirationTime,
  Pointer<Uint8> MappedContext,
  Pointer<SecBuffer> ContextData,
);
typedef SpAcquireCredentialsHandleFn = Int32 Function(
  Pointer<UNICODE_STRING> PrincipalName,
  Uint32 CredentialUseFlags,
  Pointer<LUID> LogonId,
  Pointer AuthorizationData,
  Pointer GetKeyFunciton,
  Pointer GetKeyArgument,
  Pointer<IntPtr> CredentialHandle,
  Pointer<Int64> ExpirationTime,
);
typedef SpAddCredentialsFn = Int32 Function(
  IntPtr CredentialHandle,
  Pointer<UNICODE_STRING> PrincipalName,
  Pointer<UNICODE_STRING> Package,
  Uint32 CredentialUseFlags,
  Pointer AuthorizationData,
  Pointer GetKeyFunciton,
  Pointer GetKeyArgument,
  Pointer<Int64> ExpirationTime,
);
typedef SpApplyControlTokenFn = Int32 Function(
  IntPtr ContextHandle,
  Pointer<SecBufferDesc> ControlToken,
);
typedef SpChangeAccountPasswordFn = Int32 Function(
  Pointer<UNICODE_STRING> pDomainName,
  Pointer<UNICODE_STRING> pAccountName,
  Pointer<UNICODE_STRING> pOldPassword,
  Pointer<UNICODE_STRING> pNewPassword,
  Uint8 Impersonating,
  Pointer<SecBufferDesc> pOutput,
);
typedef SpCompleteAuthTokenFn = Int32 Function(
  IntPtr ContextHandle,
  Pointer<SecBufferDesc> InputBuffer,
);
typedef SpDeleteContextFn = Int32 Function(
  IntPtr ContextHandle,
);
typedef SpDeleteCredentialsFn = Int32 Function(
  IntPtr CredentialHandle,
  Pointer<SecBuffer> Key,
);
typedef SpExchangeMetaDataFn = Int32 Function(
  IntPtr CredentialHandle,
  Pointer<UNICODE_STRING> TargetName,
  Uint32 ContextRequirements,
  Uint32 MetaDataLength,
  Pointer<Uint8> MetaData,
  Pointer<IntPtr> ContextHandle,
);
typedef SpExportSecurityContextFn = Int32 Function(
  IntPtr phContext,
  Uint32 fFlags,
  Pointer<SecBuffer> pPackedContext,
  Pointer<IntPtr> pToken,
);
typedef SpFormatCredentialsFn = Int32 Function(
  Pointer<SecBuffer> Credentials,
  Pointer<SecBuffer> FormattedCredentials,
);
typedef SpFreeCredentialsHandleFn = Int32 Function(
  IntPtr CredentialHandle,
);
typedef SpGetContextTokenFn = Int32 Function(
  IntPtr ContextHandle,
  Pointer<IntPtr> ImpersonationToken,
);
typedef SpGetCredUIContextFn = Int32 Function(
  IntPtr ContextHandle,
  Pointer<GUID> CredType,
  Pointer<Uint32> FlatCredUIContextLength,
  Pointer<Pointer<Uint8>> FlatCredUIContext,
);
typedef SpGetCredentialsFn = Int32 Function(
  IntPtr CredentialHandle,
  Pointer<SecBuffer> Credentials,
);
typedef SpGetExtendedInformationFn = Int32 Function(
  Int32 Class,
  Pointer<Pointer<SECPKG_EXTENDED_INFORMATION>> ppInformation,
);
typedef SpGetInfoFn = Int32 Function(
  Pointer<SecPkgInfo> PackageInfo,
);
typedef SpGetRemoteCredGuardLogonBufferFn = Int32 Function(
  IntPtr CredHandle,
  IntPtr ContextHandle,
  Pointer<UNICODE_STRING> TargetName,
  Pointer<IntPtr> RedirectedLogonHandle,
  Pointer<Pointer<NativeFunction<PLSA_REDIRECTED_LOGON_CALLBACK>>> Callback,
  Pointer<Pointer<NativeFunction<PLSA_REDIRECTED_LOGON_CLEANUP_CALLBACK>>>
      CleanupCallback,
  Pointer<Uint32> LogonBufferSize,
  Pointer<Pointer> LogonBuffer,
);
typedef SpGetRemoteCredGuardSupplementalCredsFn = Int32 Function(
  IntPtr CredHandle,
  Pointer<UNICODE_STRING> TargetName,
  Pointer<IntPtr> RedirectedLogonHandle,
  Pointer<Pointer<NativeFunction<PLSA_REDIRECTED_LOGON_CALLBACK>>> Callback,
  Pointer<Pointer<NativeFunction<PLSA_REDIRECTED_LOGON_CLEANUP_CALLBACK>>>
      CleanupCallback,
  Pointer<Uint32> SupplementalCredsSize,
  Pointer<Pointer> SupplementalCreds,
);
typedef SpGetTbalSupplementalCredsFn = Int32 Function(
  LUID LogonId,
  Pointer<Uint32> SupplementalCredsSize,
  Pointer<Pointer> SupplementalCreds,
);
typedef SpGetUserInfoFn = Int32 Function(
  Pointer<LUID> LogonId,
  Uint32 Flags,
  Pointer<Pointer<SECURITY_USER_DATA>> UserData,
);
typedef SpImportSecurityContextFn = Int32 Function(
  Pointer<SecBuffer> pPackedContext,
  IntPtr Token,
  Pointer<IntPtr> phContext,
);
typedef SpInitLsaModeContextFn = Int32 Function(
  IntPtr CredentialHandle,
  IntPtr ContextHandle,
  Pointer<UNICODE_STRING> TargetName,
  Uint32 ContextRequirements,
  Uint32 TargetDataRep,
  Pointer<SecBufferDesc> InputBuffers,
  Pointer<IntPtr> NewContextHandle,
  Pointer<SecBufferDesc> OutputBuffers,
  Pointer<Uint32> ContextAttributes,
  Pointer<Int64> ExpirationTime,
  Pointer<Uint8> MappedContext,
  Pointer<SecBuffer> ContextData,
);
typedef SpInitUserModeContextFn = Int32 Function(
  IntPtr ContextHandle,
  Pointer<SecBuffer> PackedContext,
);
typedef SpInitializeFn = Int32 Function(
  IntPtr PackageId,
  Pointer<SECPKG_PARAMETERS> Parameters,
  Pointer<LSA_SECPKG_FUNCTION_TABLE> FunctionTable,
);
typedef SpInstanceInitFn = Int32 Function(
  Uint32 Version,
  Pointer<SECPKG_DLL_FUNCTIONS> FunctionTable,
  Pointer<Pointer> UserFunctions,
);
typedef SpLsaModeInitializeFn = Int32 Function(
  Uint32 LsaVersion,
  Pointer<Uint32> PackageVersion,
  Pointer<Pointer<SECPKG_FUNCTION_TABLE>> ppTables,
  Pointer<Uint32> pcTables,
);
typedef SpMakeSignatureFn = Int32 Function(
  IntPtr ContextHandle,
  Uint32 QualityOfProtection,
  Pointer<SecBufferDesc> MessageBuffers,
  Uint32 MessageSequenceNumber,
);
typedef SpMarshalAttributeDataFn = Int32 Function(
  Uint32 AttributeInfo,
  Uint32 Attribute,
  Uint32 AttributeDataSize,
  Pointer<Uint8> AttributeData,
  Pointer<Uint32> MarshaledAttributeDataSize,
  Pointer<Pointer<Uint8>> MarshaledAttributeData,
);
typedef SpMarshallSupplementalCredsFn = Int32 Function(
  Uint32 CredentialSize,
  Pointer<Uint8> Credentials,
  Pointer<Uint32> MarshalledCredSize,
  Pointer<Pointer> MarshalledCreds,
);
typedef SpQueryContextAttributesFn = Int32 Function(
  IntPtr ContextHandle,
  Uint32 ContextAttribute,
  Pointer Buffer,
);
typedef SpQueryCredentialsAttributesFn = Int32 Function(
  IntPtr CredentialHandle,
  Uint32 CredentialAttribute,
  Pointer Buffer,
);
typedef SpQueryMetaDataFn = Int32 Function(
  IntPtr CredentialHandle,
  Pointer<UNICODE_STRING> TargetName,
  Uint32 ContextRequirements,
  Pointer<Uint32> MetaDataLength,
  Pointer<Pointer<Uint8>> MetaData,
  Pointer<IntPtr> ContextHandle,
);
typedef SpSaveCredentialsFn = Int32 Function(
  IntPtr CredentialHandle,
  Pointer<SecBuffer> Credentials,
);
typedef SpSealMessageFn = Int32 Function(
  IntPtr ContextHandle,
  Uint32 QualityOfProtection,
  Pointer<SecBufferDesc> MessageBuffers,
  Uint32 MessageSequenceNumber,
);
typedef SpSetContextAttributesFn = Int32 Function(
  IntPtr ContextHandle,
  Uint32 ContextAttribute,
  Pointer Buffer,
  Uint32 BufferSize,
);
typedef SpSetCredentialsAttributesFn = Int32 Function(
  IntPtr CredentialHandle,
  Uint32 CredentialAttribute,
  Pointer Buffer,
  Uint32 BufferSize,
);
typedef SpSetExtendedInformationFn = Int32 Function(
  Int32 Class,
  Pointer<SECPKG_EXTENDED_INFORMATION> Info,
);
typedef SpShutdownFn = Int32 Function();
typedef SpUnsealMessageFn = Int32 Function(
  IntPtr ContextHandle,
  Pointer<SecBufferDesc> MessageBuffers,
  Uint32 MessageSequenceNumber,
  Pointer<Uint32> QualityOfProtection,
);
typedef SpUpdateCredentialsFn = Int32 Function(
  IntPtr ContextHandle,
  Pointer<GUID> CredType,
  Uint32 FlatCredUIContextLength,
  Pointer<Uint8> FlatCredUIContext,
);
typedef SpUserModeInitializeFn = Int32 Function(
  Uint32 LsaVersion,
  Pointer<Uint32> PackageVersion,
  Pointer<Pointer<SECPKG_USER_FUNCTION_TABLE>> ppTables,
  Pointer<Uint32> pcTables,
);
typedef SpValidateTargetInfoFn = Int32 Function(
  Pointer<Pointer> ClientRequest,
  Pointer ProtocolSubmitBuffer,
  Pointer ClientBufferBase,
  Uint32 SubmitBufferLength,
  Pointer<SECPKG_TARGETINFO> TargetInfo,
);
typedef SpVerifySignatureFn = Int32 Function(
  IntPtr ContextHandle,
  Pointer<SecBufferDesc> MessageBuffers,
  Uint32 MessageSequenceNumber,
  Pointer<Uint32> QualityOfProtection,
);
typedef SslGetExtensionsFn = Int32 Function(
  Pointer<Uint8> clientHello,
  Uint32 clientHelloByteSize,
  Pointer<SCH_EXTENSION_DATA> genericExtensions,
  Uint8 genericExtensionsCount,
  Pointer<Uint32> bytesToRead,
  Uint32 flags,
);
typedef SslGetServerIdentityFn = Int32 Function(
  Pointer<Uint8> ClientHello,
  Uint32 ClientHelloSize,
  Pointer<Pointer<Uint8>> ServerIdentity,
  Pointer<Uint32> ServerIdentitySize,
  Uint32 Flags,
);
typedef VERIFY_SIGNATURE_FN = Int32 Function(
  Pointer<SecHandle> param0,
  Pointer<SecBufferDesc> param1,
  Uint32 param2,
  Pointer<Uint32> param3,
);
