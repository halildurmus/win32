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
import '../../security/authorization/structs.g.dart';
import '../../security/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../security/authorization/callbacks.g.dart';
import '../../system/threading/callbacks.g.dart'; // -----------------------------------------------------------------------

// authz.dll
// -----------------------------------------------------------------------
final _authz = DynamicLibrary.open('authz.dll');

int AuthzAccessCheck(
  int Flags,
  int hAuthzClientContext,
  Pointer<AUTHZ_ACCESS_REQUEST> pRequest,
  int hAuditEvent,
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> OptionalSecurityDescriptorArray,
  int OptionalSecurityDescriptorCount,
  Pointer<AUTHZ_ACCESS_REPLY> pReply,
  Pointer<IntPtr> phAccessCheckResults,
) =>
    _AuthzAccessCheck(
      Flags,
      hAuthzClientContext,
      pRequest,
      hAuditEvent,
      pSecurityDescriptor,
      OptionalSecurityDescriptorArray,
      OptionalSecurityDescriptorCount,
      pReply,
      phAccessCheckResults,
    );

late final _AuthzAccessCheck = _authz.lookupFunction<
    Int32 Function(
  Uint32 Flags,
  IntPtr hAuthzClientContext,
  Pointer<AUTHZ_ACCESS_REQUEST> pRequest,
  IntPtr hAuditEvent,
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> OptionalSecurityDescriptorArray,
  Uint32 OptionalSecurityDescriptorCount,
  Pointer<AUTHZ_ACCESS_REPLY> pReply,
  Pointer<IntPtr> phAccessCheckResults,
),
    int Function(
  int Flags,
  int hAuthzClientContext,
  Pointer<AUTHZ_ACCESS_REQUEST> pRequest,
  int hAuditEvent,
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> OptionalSecurityDescriptorArray,
  int OptionalSecurityDescriptorCount,
  Pointer<AUTHZ_ACCESS_REPLY> pReply,
  Pointer<IntPtr> phAccessCheckResults,
)>('AuthzAccessCheck');

int AuthzAddSidsToContext(
  int hAuthzClientContext,
  Pointer<SID_AND_ATTRIBUTES> Sids,
  int SidCount,
  Pointer<SID_AND_ATTRIBUTES> RestrictedSids,
  int RestrictedSidCount,
  Pointer<IntPtr> phNewAuthzClientContext,
) =>
    _AuthzAddSidsToContext(
      hAuthzClientContext,
      Sids,
      SidCount,
      RestrictedSids,
      RestrictedSidCount,
      phNewAuthzClientContext,
    );

late final _AuthzAddSidsToContext = _authz.lookupFunction<
    Int32 Function(
  IntPtr hAuthzClientContext,
  Pointer<SID_AND_ATTRIBUTES> Sids,
  Uint32 SidCount,
  Pointer<SID_AND_ATTRIBUTES> RestrictedSids,
  Uint32 RestrictedSidCount,
  Pointer<IntPtr> phNewAuthzClientContext,
),
    int Function(
  int hAuthzClientContext,
  Pointer<SID_AND_ATTRIBUTES> Sids,
  int SidCount,
  Pointer<SID_AND_ATTRIBUTES> RestrictedSids,
  int RestrictedSidCount,
  Pointer<IntPtr> phNewAuthzClientContext,
)>('AuthzAddSidsToContext');

int AuthzCachedAccessCheck(
  int Flags,
  int hAccessCheckResults,
  Pointer<AUTHZ_ACCESS_REQUEST> pRequest,
  int hAuditEvent,
  Pointer<AUTHZ_ACCESS_REPLY> pReply,
) =>
    _AuthzCachedAccessCheck(
      Flags,
      hAccessCheckResults,
      pRequest,
      hAuditEvent,
      pReply,
    );

late final _AuthzCachedAccessCheck = _authz.lookupFunction<
    Int32 Function(
  Uint32 Flags,
  IntPtr hAccessCheckResults,
  Pointer<AUTHZ_ACCESS_REQUEST> pRequest,
  IntPtr hAuditEvent,
  Pointer<AUTHZ_ACCESS_REPLY> pReply,
),
    int Function(
  int Flags,
  int hAccessCheckResults,
  Pointer<AUTHZ_ACCESS_REQUEST> pRequest,
  int hAuditEvent,
  Pointer<AUTHZ_ACCESS_REPLY> pReply,
)>('AuthzCachedAccessCheck');

int AuthzEnumerateSecurityEventSources(
  int dwFlags,
  Pointer<AUTHZ_SOURCE_SCHEMA_REGISTRATION> Buffer,
  Pointer<Uint32> pdwCount,
  Pointer<Uint32> pdwLength,
) =>
    _AuthzEnumerateSecurityEventSources(
      dwFlags,
      Buffer,
      pdwCount,
      pdwLength,
    );

late final _AuthzEnumerateSecurityEventSources = _authz.lookupFunction<
    Int32 Function(
  Uint32 dwFlags,
  Pointer<AUTHZ_SOURCE_SCHEMA_REGISTRATION> Buffer,
  Pointer<Uint32> pdwCount,
  Pointer<Uint32> pdwLength,
),
    int Function(
  int dwFlags,
  Pointer<AUTHZ_SOURCE_SCHEMA_REGISTRATION> Buffer,
  Pointer<Uint32> pdwCount,
  Pointer<Uint32> pdwLength,
)>('AuthzEnumerateSecurityEventSources');

int AuthzEvaluateSacl(
  int AuthzClientContext,
  Pointer<AUTHZ_ACCESS_REQUEST> pRequest,
  Pointer<ACL> Sacl,
  int GrantedAccess,
  int AccessGranted,
  Pointer<Int32> pbGenerateAudit,
) =>
    _AuthzEvaluateSacl(
      AuthzClientContext,
      pRequest,
      Sacl,
      GrantedAccess,
      AccessGranted,
      pbGenerateAudit,
    );

late final _AuthzEvaluateSacl = _authz.lookupFunction<
    Int32 Function(
  IntPtr AuthzClientContext,
  Pointer<AUTHZ_ACCESS_REQUEST> pRequest,
  Pointer<ACL> Sacl,
  Uint32 GrantedAccess,
  Int32 AccessGranted,
  Pointer<Int32> pbGenerateAudit,
),
    int Function(
  int AuthzClientContext,
  Pointer<AUTHZ_ACCESS_REQUEST> pRequest,
  Pointer<ACL> Sacl,
  int GrantedAccess,
  int AccessGranted,
  Pointer<Int32> pbGenerateAudit,
)>('AuthzEvaluateSacl');

int AuthzFreeAuditEvent(
  int hAuditEvent,
) =>
    _AuthzFreeAuditEvent(
      hAuditEvent,
    );

late final _AuthzFreeAuditEvent = _authz.lookupFunction<
    Int32 Function(
  IntPtr hAuditEvent,
),
    int Function(
  int hAuditEvent,
)>('AuthzFreeAuditEvent');

int AuthzFreeCentralAccessPolicyCache() => _AuthzFreeCentralAccessPolicyCache();

late final _AuthzFreeCentralAccessPolicyCache =
    _authz.lookupFunction<Int32 Function(), int Function()>(
        'AuthzFreeCentralAccessPolicyCache');

int AuthzFreeContext(
  int hAuthzClientContext,
) =>
    _AuthzFreeContext(
      hAuthzClientContext,
    );

late final _AuthzFreeContext = _authz.lookupFunction<
    Int32 Function(
  IntPtr hAuthzClientContext,
),
    int Function(
  int hAuthzClientContext,
)>('AuthzFreeContext');

int AuthzFreeHandle(
  int hAccessCheckResults,
) =>
    _AuthzFreeHandle(
      hAccessCheckResults,
    );

late final _AuthzFreeHandle = _authz.lookupFunction<
    Int32 Function(
  IntPtr hAccessCheckResults,
),
    int Function(
  int hAccessCheckResults,
)>('AuthzFreeHandle');

int AuthzFreeResourceManager(
  int hAuthzResourceManager,
) =>
    _AuthzFreeResourceManager(
      hAuthzResourceManager,
    );

late final _AuthzFreeResourceManager = _authz.lookupFunction<
    Int32 Function(
  IntPtr hAuthzResourceManager,
),
    int Function(
  int hAuthzResourceManager,
)>('AuthzFreeResourceManager');

int AuthzGetInformationFromContext(
  int hAuthzClientContext,
  int InfoClass,
  int BufferSize,
  Pointer<Uint32> pSizeRequired,
  Pointer Buffer,
) =>
    _AuthzGetInformationFromContext(
      hAuthzClientContext,
      InfoClass,
      BufferSize,
      pSizeRequired,
      Buffer,
    );

late final _AuthzGetInformationFromContext = _authz.lookupFunction<
    Int32 Function(
  IntPtr hAuthzClientContext,
  Int32 InfoClass,
  Uint32 BufferSize,
  Pointer<Uint32> pSizeRequired,
  Pointer Buffer,
),
    int Function(
  int hAuthzClientContext,
  int InfoClass,
  int BufferSize,
  Pointer<Uint32> pSizeRequired,
  Pointer Buffer,
)>('AuthzGetInformationFromContext');

int AuthzInitializeCompoundContext(
  int UserContext,
  int DeviceContext,
  Pointer<IntPtr> phCompoundContext,
) =>
    _AuthzInitializeCompoundContext(
      UserContext,
      DeviceContext,
      phCompoundContext,
    );

late final _AuthzInitializeCompoundContext = _authz.lookupFunction<
    Int32 Function(
  IntPtr UserContext,
  IntPtr DeviceContext,
  Pointer<IntPtr> phCompoundContext,
),
    int Function(
  int UserContext,
  int DeviceContext,
  Pointer<IntPtr> phCompoundContext,
)>('AuthzInitializeCompoundContext');

int AuthzInitializeContextFromAuthzContext(
  int Flags,
  int hAuthzClientContext,
  Pointer<Int64> pExpirationTime,
  LUID Identifier,
  Pointer DynamicGroupArgs,
  Pointer<IntPtr> phNewAuthzClientContext,
) =>
    _AuthzInitializeContextFromAuthzContext(
      Flags,
      hAuthzClientContext,
      pExpirationTime,
      Identifier,
      DynamicGroupArgs,
      phNewAuthzClientContext,
    );

late final _AuthzInitializeContextFromAuthzContext = _authz.lookupFunction<
    Int32 Function(
  Uint32 Flags,
  IntPtr hAuthzClientContext,
  Pointer<Int64> pExpirationTime,
  LUID Identifier,
  Pointer DynamicGroupArgs,
  Pointer<IntPtr> phNewAuthzClientContext,
),
    int Function(
  int Flags,
  int hAuthzClientContext,
  Pointer<Int64> pExpirationTime,
  LUID Identifier,
  Pointer DynamicGroupArgs,
  Pointer<IntPtr> phNewAuthzClientContext,
)>('AuthzInitializeContextFromAuthzContext');

int AuthzInitializeContextFromSid(
  int Flags,
  int UserSid,
  int hAuthzResourceManager,
  Pointer<Int64> pExpirationTime,
  LUID Identifier,
  Pointer DynamicGroupArgs,
  Pointer<IntPtr> phAuthzClientContext,
) =>
    _AuthzInitializeContextFromSid(
      Flags,
      UserSid,
      hAuthzResourceManager,
      pExpirationTime,
      Identifier,
      DynamicGroupArgs,
      phAuthzClientContext,
    );

late final _AuthzInitializeContextFromSid = _authz.lookupFunction<
    Int32 Function(
  Uint32 Flags,
  IntPtr UserSid,
  IntPtr hAuthzResourceManager,
  Pointer<Int64> pExpirationTime,
  LUID Identifier,
  Pointer DynamicGroupArgs,
  Pointer<IntPtr> phAuthzClientContext,
),
    int Function(
  int Flags,
  int UserSid,
  int hAuthzResourceManager,
  Pointer<Int64> pExpirationTime,
  LUID Identifier,
  Pointer DynamicGroupArgs,
  Pointer<IntPtr> phAuthzClientContext,
)>('AuthzInitializeContextFromSid');

int AuthzInitializeContextFromToken(
  int Flags,
  int TokenHandle,
  int hAuthzResourceManager,
  Pointer<Int64> pExpirationTime,
  LUID Identifier,
  Pointer DynamicGroupArgs,
  Pointer<IntPtr> phAuthzClientContext,
) =>
    _AuthzInitializeContextFromToken(
      Flags,
      TokenHandle,
      hAuthzResourceManager,
      pExpirationTime,
      Identifier,
      DynamicGroupArgs,
      phAuthzClientContext,
    );

late final _AuthzInitializeContextFromToken = _authz.lookupFunction<
    Int32 Function(
  Uint32 Flags,
  IntPtr TokenHandle,
  IntPtr hAuthzResourceManager,
  Pointer<Int64> pExpirationTime,
  LUID Identifier,
  Pointer DynamicGroupArgs,
  Pointer<IntPtr> phAuthzClientContext,
),
    int Function(
  int Flags,
  int TokenHandle,
  int hAuthzResourceManager,
  Pointer<Int64> pExpirationTime,
  LUID Identifier,
  Pointer DynamicGroupArgs,
  Pointer<IntPtr> phAuthzClientContext,
)>('AuthzInitializeContextFromToken');

int AuthzInitializeObjectAccessAuditEvent(
  int Flags,
  int hAuditEventType,
  Pointer<Utf16> szOperationType,
  Pointer<Utf16> szObjectType,
  Pointer<Utf16> szObjectName,
  Pointer<Utf16> szAdditionalInfo,
  Pointer<IntPtr> phAuditEvent,
  int dwAdditionalParameterCount,
) =>
    _AuthzInitializeObjectAccessAuditEvent(
      Flags,
      hAuditEventType,
      szOperationType,
      szObjectType,
      szObjectName,
      szAdditionalInfo,
      phAuditEvent,
      dwAdditionalParameterCount,
    );

late final _AuthzInitializeObjectAccessAuditEvent = _authz.lookupFunction<
    Int32 Function(
  Uint32 Flags,
  IntPtr hAuditEventType,
  Pointer<Utf16> szOperationType,
  Pointer<Utf16> szObjectType,
  Pointer<Utf16> szObjectName,
  Pointer<Utf16> szAdditionalInfo,
  Pointer<IntPtr> phAuditEvent,
  Uint32 dwAdditionalParameterCount,
),
    int Function(
  int Flags,
  int hAuditEventType,
  Pointer<Utf16> szOperationType,
  Pointer<Utf16> szObjectType,
  Pointer<Utf16> szObjectName,
  Pointer<Utf16> szAdditionalInfo,
  Pointer<IntPtr> phAuditEvent,
  int dwAdditionalParameterCount,
)>('AuthzInitializeObjectAccessAuditEvent');

int AuthzInitializeObjectAccessAuditEvent2(
  int Flags,
  int hAuditEventType,
  Pointer<Utf16> szOperationType,
  Pointer<Utf16> szObjectType,
  Pointer<Utf16> szObjectName,
  Pointer<Utf16> szAdditionalInfo,
  Pointer<Utf16> szAdditionalInfo2,
  Pointer<IntPtr> phAuditEvent,
  int dwAdditionalParameterCount,
) =>
    _AuthzInitializeObjectAccessAuditEvent2(
      Flags,
      hAuditEventType,
      szOperationType,
      szObjectType,
      szObjectName,
      szAdditionalInfo,
      szAdditionalInfo2,
      phAuditEvent,
      dwAdditionalParameterCount,
    );

late final _AuthzInitializeObjectAccessAuditEvent2 = _authz.lookupFunction<
    Int32 Function(
  Uint32 Flags,
  IntPtr hAuditEventType,
  Pointer<Utf16> szOperationType,
  Pointer<Utf16> szObjectType,
  Pointer<Utf16> szObjectName,
  Pointer<Utf16> szAdditionalInfo,
  Pointer<Utf16> szAdditionalInfo2,
  Pointer<IntPtr> phAuditEvent,
  Uint32 dwAdditionalParameterCount,
),
    int Function(
  int Flags,
  int hAuditEventType,
  Pointer<Utf16> szOperationType,
  Pointer<Utf16> szObjectType,
  Pointer<Utf16> szObjectName,
  Pointer<Utf16> szAdditionalInfo,
  Pointer<Utf16> szAdditionalInfo2,
  Pointer<IntPtr> phAuditEvent,
  int dwAdditionalParameterCount,
)>('AuthzInitializeObjectAccessAuditEvent2');

int AuthzInitializeRemoteResourceManager(
  Pointer<AUTHZ_RPC_INIT_INFO_CLIENT> pRpcInitInfo,
  Pointer<IntPtr> phAuthzResourceManager,
) =>
    _AuthzInitializeRemoteResourceManager(
      pRpcInitInfo,
      phAuthzResourceManager,
    );

late final _AuthzInitializeRemoteResourceManager = _authz.lookupFunction<
    Int32 Function(
  Pointer<AUTHZ_RPC_INIT_INFO_CLIENT> pRpcInitInfo,
  Pointer<IntPtr> phAuthzResourceManager,
),
    int Function(
  Pointer<AUTHZ_RPC_INIT_INFO_CLIENT> pRpcInitInfo,
  Pointer<IntPtr> phAuthzResourceManager,
)>('AuthzInitializeRemoteResourceManager');

int AuthzInitializeResourceManager(
  int Flags,
  Pointer<NativeFunction<PFN_AUTHZ_DYNAMIC_ACCESS_CHECK>> pfnDynamicAccessCheck,
  Pointer<NativeFunction<PFN_AUTHZ_COMPUTE_DYNAMIC_GROUPS>>
      pfnComputeDynamicGroups,
  Pointer<NativeFunction<PFN_AUTHZ_FREE_DYNAMIC_GROUPS>> pfnFreeDynamicGroups,
  Pointer<Utf16> szResourceManagerName,
  Pointer<IntPtr> phAuthzResourceManager,
) =>
    _AuthzInitializeResourceManager(
      Flags,
      pfnDynamicAccessCheck,
      pfnComputeDynamicGroups,
      pfnFreeDynamicGroups,
      szResourceManagerName,
      phAuthzResourceManager,
    );

late final _AuthzInitializeResourceManager = _authz.lookupFunction<
    Int32 Function(
  Uint32 Flags,
  Pointer<NativeFunction<PFN_AUTHZ_DYNAMIC_ACCESS_CHECK>> pfnDynamicAccessCheck,
  Pointer<NativeFunction<PFN_AUTHZ_COMPUTE_DYNAMIC_GROUPS>>
      pfnComputeDynamicGroups,
  Pointer<NativeFunction<PFN_AUTHZ_FREE_DYNAMIC_GROUPS>> pfnFreeDynamicGroups,
  Pointer<Utf16> szResourceManagerName,
  Pointer<IntPtr> phAuthzResourceManager,
),
    int Function(
  int Flags,
  Pointer<NativeFunction<PFN_AUTHZ_DYNAMIC_ACCESS_CHECK>> pfnDynamicAccessCheck,
  Pointer<NativeFunction<PFN_AUTHZ_COMPUTE_DYNAMIC_GROUPS>>
      pfnComputeDynamicGroups,
  Pointer<NativeFunction<PFN_AUTHZ_FREE_DYNAMIC_GROUPS>> pfnFreeDynamicGroups,
  Pointer<Utf16> szResourceManagerName,
  Pointer<IntPtr> phAuthzResourceManager,
)>('AuthzInitializeResourceManager');

int AuthzInitializeResourceManagerEx(
  int Flags,
  Pointer<AUTHZ_INIT_INFO> pAuthzInitInfo,
  Pointer<IntPtr> phAuthzResourceManager,
) =>
    _AuthzInitializeResourceManagerEx(
      Flags,
      pAuthzInitInfo,
      phAuthzResourceManager,
    );

late final _AuthzInitializeResourceManagerEx = _authz.lookupFunction<
    Int32 Function(
  Uint32 Flags,
  Pointer<AUTHZ_INIT_INFO> pAuthzInitInfo,
  Pointer<IntPtr> phAuthzResourceManager,
),
    int Function(
  int Flags,
  Pointer<AUTHZ_INIT_INFO> pAuthzInitInfo,
  Pointer<IntPtr> phAuthzResourceManager,
)>('AuthzInitializeResourceManagerEx');

int AuthzInstallSecurityEventSource(
  int dwFlags,
  Pointer<AUTHZ_SOURCE_SCHEMA_REGISTRATION> pRegistration,
) =>
    _AuthzInstallSecurityEventSource(
      dwFlags,
      pRegistration,
    );

late final _AuthzInstallSecurityEventSource = _authz.lookupFunction<
    Int32 Function(
  Uint32 dwFlags,
  Pointer<AUTHZ_SOURCE_SCHEMA_REGISTRATION> pRegistration,
),
    int Function(
  int dwFlags,
  Pointer<AUTHZ_SOURCE_SCHEMA_REGISTRATION> pRegistration,
)>('AuthzInstallSecurityEventSource');

int AuthzModifyClaims(
  int hAuthzClientContext,
  int ClaimClass,
  Pointer<Int32> pClaimOperations,
  Pointer<AUTHZ_SECURITY_ATTRIBUTES_INFORMATION> pClaims,
) =>
    _AuthzModifyClaims(
      hAuthzClientContext,
      ClaimClass,
      pClaimOperations,
      pClaims,
    );

late final _AuthzModifyClaims = _authz.lookupFunction<
    Int32 Function(
  IntPtr hAuthzClientContext,
  Int32 ClaimClass,
  Pointer<Int32> pClaimOperations,
  Pointer<AUTHZ_SECURITY_ATTRIBUTES_INFORMATION> pClaims,
),
    int Function(
  int hAuthzClientContext,
  int ClaimClass,
  Pointer<Int32> pClaimOperations,
  Pointer<AUTHZ_SECURITY_ATTRIBUTES_INFORMATION> pClaims,
)>('AuthzModifyClaims');

int AuthzModifySecurityAttributes(
  int hAuthzClientContext,
  Pointer<Int32> pOperations,
  Pointer<AUTHZ_SECURITY_ATTRIBUTES_INFORMATION> pAttributes,
) =>
    _AuthzModifySecurityAttributes(
      hAuthzClientContext,
      pOperations,
      pAttributes,
    );

late final _AuthzModifySecurityAttributes = _authz.lookupFunction<
    Int32 Function(
  IntPtr hAuthzClientContext,
  Pointer<Int32> pOperations,
  Pointer<AUTHZ_SECURITY_ATTRIBUTES_INFORMATION> pAttributes,
),
    int Function(
  int hAuthzClientContext,
  Pointer<Int32> pOperations,
  Pointer<AUTHZ_SECURITY_ATTRIBUTES_INFORMATION> pAttributes,
)>('AuthzModifySecurityAttributes');

int AuthzModifySids(
  int hAuthzClientContext,
  int SidClass,
  Pointer<Int32> pSidOperations,
  Pointer<TOKEN_GROUPS> pSids,
) =>
    _AuthzModifySids(
      hAuthzClientContext,
      SidClass,
      pSidOperations,
      pSids,
    );

late final _AuthzModifySids = _authz.lookupFunction<
    Int32 Function(
  IntPtr hAuthzClientContext,
  Int32 SidClass,
  Pointer<Int32> pSidOperations,
  Pointer<TOKEN_GROUPS> pSids,
),
    int Function(
  int hAuthzClientContext,
  int SidClass,
  Pointer<Int32> pSidOperations,
  Pointer<TOKEN_GROUPS> pSids,
)>('AuthzModifySids');

int AuthzOpenObjectAudit(
  int Flags,
  int hAuthzClientContext,
  Pointer<AUTHZ_ACCESS_REQUEST> pRequest,
  int hAuditEvent,
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> OptionalSecurityDescriptorArray,
  int OptionalSecurityDescriptorCount,
  Pointer<AUTHZ_ACCESS_REPLY> pReply,
) =>
    _AuthzOpenObjectAudit(
      Flags,
      hAuthzClientContext,
      pRequest,
      hAuditEvent,
      pSecurityDescriptor,
      OptionalSecurityDescriptorArray,
      OptionalSecurityDescriptorCount,
      pReply,
    );

late final _AuthzOpenObjectAudit = _authz.lookupFunction<
    Int32 Function(
  Uint32 Flags,
  IntPtr hAuthzClientContext,
  Pointer<AUTHZ_ACCESS_REQUEST> pRequest,
  IntPtr hAuditEvent,
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> OptionalSecurityDescriptorArray,
  Uint32 OptionalSecurityDescriptorCount,
  Pointer<AUTHZ_ACCESS_REPLY> pReply,
),
    int Function(
  int Flags,
  int hAuthzClientContext,
  Pointer<AUTHZ_ACCESS_REQUEST> pRequest,
  int hAuditEvent,
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> OptionalSecurityDescriptorArray,
  int OptionalSecurityDescriptorCount,
  Pointer<AUTHZ_ACCESS_REPLY> pReply,
)>('AuthzOpenObjectAudit');

int AuthzRegisterCapChangeNotification(
  Pointer<Pointer<AUTHZ_CAP_CHANGE_SUBSCRIPTION_HANDLE__>>
      phCapChangeSubscription,
  Pointer<NativeFunction<LPTHREAD_START_ROUTINE>> pfnCapChangeCallback,
  Pointer pCallbackContext,
) =>
    _AuthzRegisterCapChangeNotification(
      phCapChangeSubscription,
      pfnCapChangeCallback,
      pCallbackContext,
    );

late final _AuthzRegisterCapChangeNotification = _authz.lookupFunction<
    Int32 Function(
  Pointer<Pointer<AUTHZ_CAP_CHANGE_SUBSCRIPTION_HANDLE__>>
      phCapChangeSubscription,
  Pointer<NativeFunction<LPTHREAD_START_ROUTINE>> pfnCapChangeCallback,
  Pointer pCallbackContext,
),
    int Function(
  Pointer<Pointer<AUTHZ_CAP_CHANGE_SUBSCRIPTION_HANDLE__>>
      phCapChangeSubscription,
  Pointer<NativeFunction<LPTHREAD_START_ROUTINE>> pfnCapChangeCallback,
  Pointer pCallbackContext,
)>('AuthzRegisterCapChangeNotification');

int AuthzRegisterSecurityEventSource(
  int dwFlags,
  Pointer<Utf16> szEventSourceName,
  Pointer<IntPtr> phEventProvider,
) =>
    _AuthzRegisterSecurityEventSource(
      dwFlags,
      szEventSourceName,
      phEventProvider,
    );

late final _AuthzRegisterSecurityEventSource = _authz.lookupFunction<
    Int32 Function(
  Uint32 dwFlags,
  Pointer<Utf16> szEventSourceName,
  Pointer<IntPtr> phEventProvider,
),
    int Function(
  int dwFlags,
  Pointer<Utf16> szEventSourceName,
  Pointer<IntPtr> phEventProvider,
)>('AuthzRegisterSecurityEventSource');

int AuthzReportSecurityEvent(
  int dwFlags,
  int hEventProvider,
  int dwAuditId,
  int pUserSid,
  int dwCount,
) =>
    _AuthzReportSecurityEvent(
      dwFlags,
      hEventProvider,
      dwAuditId,
      pUserSid,
      dwCount,
    );

late final _AuthzReportSecurityEvent = _authz.lookupFunction<
    Int32 Function(
  Uint32 dwFlags,
  IntPtr hEventProvider,
  Uint32 dwAuditId,
  IntPtr pUserSid,
  Uint32 dwCount,
),
    int Function(
  int dwFlags,
  int hEventProvider,
  int dwAuditId,
  int pUserSid,
  int dwCount,
)>('AuthzReportSecurityEvent');

int AuthzReportSecurityEventFromParams(
  int dwFlags,
  int hEventProvider,
  int dwAuditId,
  int pUserSid,
  Pointer<AUDIT_PARAMS> pParams,
) =>
    _AuthzReportSecurityEventFromParams(
      dwFlags,
      hEventProvider,
      dwAuditId,
      pUserSid,
      pParams,
    );

late final _AuthzReportSecurityEventFromParams = _authz.lookupFunction<
    Int32 Function(
  Uint32 dwFlags,
  IntPtr hEventProvider,
  Uint32 dwAuditId,
  IntPtr pUserSid,
  Pointer<AUDIT_PARAMS> pParams,
),
    int Function(
  int dwFlags,
  int hEventProvider,
  int dwAuditId,
  int pUserSid,
  Pointer<AUDIT_PARAMS> pParams,
)>('AuthzReportSecurityEventFromParams');

int AuthzSetAppContainerInformation(
  int hAuthzClientContext,
  int pAppContainerSid,
  int CapabilityCount,
  Pointer<SID_AND_ATTRIBUTES> pCapabilitySids,
) =>
    _AuthzSetAppContainerInformation(
      hAuthzClientContext,
      pAppContainerSid,
      CapabilityCount,
      pCapabilitySids,
    );

late final _AuthzSetAppContainerInformation = _authz.lookupFunction<
    Int32 Function(
  IntPtr hAuthzClientContext,
  IntPtr pAppContainerSid,
  Uint32 CapabilityCount,
  Pointer<SID_AND_ATTRIBUTES> pCapabilitySids,
),
    int Function(
  int hAuthzClientContext,
  int pAppContainerSid,
  int CapabilityCount,
  Pointer<SID_AND_ATTRIBUTES> pCapabilitySids,
)>('AuthzSetAppContainerInformation');

int AuthzUninstallSecurityEventSource(
  int dwFlags,
  Pointer<Utf16> szEventSourceName,
) =>
    _AuthzUninstallSecurityEventSource(
      dwFlags,
      szEventSourceName,
    );

late final _AuthzUninstallSecurityEventSource = _authz.lookupFunction<
    Int32 Function(
  Uint32 dwFlags,
  Pointer<Utf16> szEventSourceName,
),
    int Function(
  int dwFlags,
  Pointer<Utf16> szEventSourceName,
)>('AuthzUninstallSecurityEventSource');

int AuthzUnregisterCapChangeNotification(
  Pointer<AUTHZ_CAP_CHANGE_SUBSCRIPTION_HANDLE__> hCapChangeSubscription,
) =>
    _AuthzUnregisterCapChangeNotification(
      hCapChangeSubscription,
    );

late final _AuthzUnregisterCapChangeNotification = _authz.lookupFunction<
    Int32 Function(
  Pointer<AUTHZ_CAP_CHANGE_SUBSCRIPTION_HANDLE__> hCapChangeSubscription,
),
    int Function(
  Pointer<AUTHZ_CAP_CHANGE_SUBSCRIPTION_HANDLE__> hCapChangeSubscription,
)>('AuthzUnregisterCapChangeNotification');

int AuthzUnregisterSecurityEventSource(
  int dwFlags,
  Pointer<IntPtr> phEventProvider,
) =>
    _AuthzUnregisterSecurityEventSource(
      dwFlags,
      phEventProvider,
    );

late final _AuthzUnregisterSecurityEventSource = _authz.lookupFunction<
    Int32 Function(
  Uint32 dwFlags,
  Pointer<IntPtr> phEventProvider,
),
    int Function(
  int dwFlags,
  Pointer<IntPtr> phEventProvider,
)>('AuthzUnregisterSecurityEventSource');

// -----------------------------------------------------------------------
// advapi32.dll
// -----------------------------------------------------------------------
final _advapi32 = DynamicLibrary.open('advapi32.dll');

void BuildExplicitAccessWithName(
  Pointer<EXPLICIT_ACCESS_> pExplicitAccess,
  Pointer<Utf16> pTrusteeName,
  int AccessPermissions,
  int AccessMode,
  int Inheritance,
) =>
    _BuildExplicitAccessWithName(
      pExplicitAccess,
      pTrusteeName,
      AccessPermissions,
      AccessMode,
      Inheritance,
    );

late final _BuildExplicitAccessWithName = _advapi32.lookupFunction<
    Void Function(
  Pointer<EXPLICIT_ACCESS_> pExplicitAccess,
  Pointer<Utf16> pTrusteeName,
  Uint32 AccessPermissions,
  Int32 AccessMode,
  Uint32 Inheritance,
),
    void Function(
  Pointer<EXPLICIT_ACCESS_> pExplicitAccess,
  Pointer<Utf16> pTrusteeName,
  int AccessPermissions,
  int AccessMode,
  int Inheritance,
)>('BuildExplicitAccessWithNameW');

void BuildImpersonateExplicitAccessWithName(
  Pointer<EXPLICIT_ACCESS_> pExplicitAccess,
  Pointer<Utf16> pTrusteeName,
  Pointer<TRUSTEE_> pTrustee,
  int AccessPermissions,
  int AccessMode,
  int Inheritance,
) =>
    _BuildImpersonateExplicitAccessWithName(
      pExplicitAccess,
      pTrusteeName,
      pTrustee,
      AccessPermissions,
      AccessMode,
      Inheritance,
    );

late final _BuildImpersonateExplicitAccessWithName = _advapi32.lookupFunction<
    Void Function(
  Pointer<EXPLICIT_ACCESS_> pExplicitAccess,
  Pointer<Utf16> pTrusteeName,
  Pointer<TRUSTEE_> pTrustee,
  Uint32 AccessPermissions,
  Int32 AccessMode,
  Uint32 Inheritance,
),
    void Function(
  Pointer<EXPLICIT_ACCESS_> pExplicitAccess,
  Pointer<Utf16> pTrusteeName,
  Pointer<TRUSTEE_> pTrustee,
  int AccessPermissions,
  int AccessMode,
  int Inheritance,
)>('BuildImpersonateExplicitAccessWithNameW');

void BuildImpersonateTrustee(
  Pointer<TRUSTEE_> pTrustee,
  Pointer<TRUSTEE_> pImpersonateTrustee,
) =>
    _BuildImpersonateTrustee(
      pTrustee,
      pImpersonateTrustee,
    );

late final _BuildImpersonateTrustee = _advapi32.lookupFunction<
    Void Function(
  Pointer<TRUSTEE_> pTrustee,
  Pointer<TRUSTEE_> pImpersonateTrustee,
),
    void Function(
  Pointer<TRUSTEE_> pTrustee,
  Pointer<TRUSTEE_> pImpersonateTrustee,
)>('BuildImpersonateTrusteeW');

int BuildSecurityDescriptor(
  Pointer<TRUSTEE_> pOwner,
  Pointer<TRUSTEE_> pGroup,
  int cCountOfAccessEntries,
  Pointer<EXPLICIT_ACCESS_> pListOfAccessEntries,
  int cCountOfAuditEntries,
  Pointer<EXPLICIT_ACCESS_> pListOfAuditEntries,
  Pointer<SECURITY_DESCRIPTOR> pOldSD,
  Pointer<Uint32> pSizeNewSD,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> pNewSD,
) =>
    _BuildSecurityDescriptor(
      pOwner,
      pGroup,
      cCountOfAccessEntries,
      pListOfAccessEntries,
      cCountOfAuditEntries,
      pListOfAuditEntries,
      pOldSD,
      pSizeNewSD,
      pNewSD,
    );

late final _BuildSecurityDescriptor = _advapi32.lookupFunction<
    Uint32 Function(
  Pointer<TRUSTEE_> pOwner,
  Pointer<TRUSTEE_> pGroup,
  Uint32 cCountOfAccessEntries,
  Pointer<EXPLICIT_ACCESS_> pListOfAccessEntries,
  Uint32 cCountOfAuditEntries,
  Pointer<EXPLICIT_ACCESS_> pListOfAuditEntries,
  Pointer<SECURITY_DESCRIPTOR> pOldSD,
  Pointer<Uint32> pSizeNewSD,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> pNewSD,
),
    int Function(
  Pointer<TRUSTEE_> pOwner,
  Pointer<TRUSTEE_> pGroup,
  int cCountOfAccessEntries,
  Pointer<EXPLICIT_ACCESS_> pListOfAccessEntries,
  int cCountOfAuditEntries,
  Pointer<EXPLICIT_ACCESS_> pListOfAuditEntries,
  Pointer<SECURITY_DESCRIPTOR> pOldSD,
  Pointer<Uint32> pSizeNewSD,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> pNewSD,
)>('BuildSecurityDescriptorW');

void BuildTrusteeWithName(
  Pointer<TRUSTEE_> pTrustee,
  Pointer<Utf16> pName,
) =>
    _BuildTrusteeWithName(
      pTrustee,
      pName,
    );

late final _BuildTrusteeWithName = _advapi32.lookupFunction<
    Void Function(
  Pointer<TRUSTEE_> pTrustee,
  Pointer<Utf16> pName,
),
    void Function(
  Pointer<TRUSTEE_> pTrustee,
  Pointer<Utf16> pName,
)>('BuildTrusteeWithNameW');

void BuildTrusteeWithObjectsAndName(
  Pointer<TRUSTEE_> pTrustee,
  Pointer<OBJECTS_AND_NAME_> pObjName,
  int ObjectType,
  Pointer<Utf16> ObjectTypeName,
  Pointer<Utf16> InheritedObjectTypeName,
  Pointer<Utf16> Name,
) =>
    _BuildTrusteeWithObjectsAndName(
      pTrustee,
      pObjName,
      ObjectType,
      ObjectTypeName,
      InheritedObjectTypeName,
      Name,
    );

late final _BuildTrusteeWithObjectsAndName = _advapi32.lookupFunction<
    Void Function(
  Pointer<TRUSTEE_> pTrustee,
  Pointer<OBJECTS_AND_NAME_> pObjName,
  Int32 ObjectType,
  Pointer<Utf16> ObjectTypeName,
  Pointer<Utf16> InheritedObjectTypeName,
  Pointer<Utf16> Name,
),
    void Function(
  Pointer<TRUSTEE_> pTrustee,
  Pointer<OBJECTS_AND_NAME_> pObjName,
  int ObjectType,
  Pointer<Utf16> ObjectTypeName,
  Pointer<Utf16> InheritedObjectTypeName,
  Pointer<Utf16> Name,
)>('BuildTrusteeWithObjectsAndNameW');

void BuildTrusteeWithObjectsAndSid(
  Pointer<TRUSTEE_> pTrustee,
  Pointer<OBJECTS_AND_SID> pObjSid,
  Pointer<GUID> pObjectGuid,
  Pointer<GUID> pInheritedObjectGuid,
  int pSid,
) =>
    _BuildTrusteeWithObjectsAndSid(
      pTrustee,
      pObjSid,
      pObjectGuid,
      pInheritedObjectGuid,
      pSid,
    );

late final _BuildTrusteeWithObjectsAndSid = _advapi32.lookupFunction<
    Void Function(
  Pointer<TRUSTEE_> pTrustee,
  Pointer<OBJECTS_AND_SID> pObjSid,
  Pointer<GUID> pObjectGuid,
  Pointer<GUID> pInheritedObjectGuid,
  IntPtr pSid,
),
    void Function(
  Pointer<TRUSTEE_> pTrustee,
  Pointer<OBJECTS_AND_SID> pObjSid,
  Pointer<GUID> pObjectGuid,
  Pointer<GUID> pInheritedObjectGuid,
  int pSid,
)>('BuildTrusteeWithObjectsAndSidW');

void BuildTrusteeWithSid(
  Pointer<TRUSTEE_> pTrustee,
  int pSid,
) =>
    _BuildTrusteeWithSid(
      pTrustee,
      pSid,
    );

late final _BuildTrusteeWithSid = _advapi32.lookupFunction<
    Void Function(
  Pointer<TRUSTEE_> pTrustee,
  IntPtr pSid,
),
    void Function(
  Pointer<TRUSTEE_> pTrustee,
  int pSid,
)>('BuildTrusteeWithSidW');

int ConvertSecurityDescriptorToStringSecurityDescriptor(
  Pointer<SECURITY_DESCRIPTOR> SecurityDescriptor,
  int RequestedStringSDRevision,
  int SecurityInformation,
  Pointer<Pointer<Utf16>> StringSecurityDescriptor,
  Pointer<Uint32> StringSecurityDescriptorLen,
) =>
    _ConvertSecurityDescriptorToStringSecurityDescriptor(
      SecurityDescriptor,
      RequestedStringSDRevision,
      SecurityInformation,
      StringSecurityDescriptor,
      StringSecurityDescriptorLen,
    );

late final _ConvertSecurityDescriptorToStringSecurityDescriptor =
    _advapi32.lookupFunction<
        Int32 Function(
  Pointer<SECURITY_DESCRIPTOR> SecurityDescriptor,
  Uint32 RequestedStringSDRevision,
  Uint32 SecurityInformation,
  Pointer<Pointer<Utf16>> StringSecurityDescriptor,
  Pointer<Uint32> StringSecurityDescriptorLen,
),
        int Function(
  Pointer<SECURITY_DESCRIPTOR> SecurityDescriptor,
  int RequestedStringSDRevision,
  int SecurityInformation,
  Pointer<Pointer<Utf16>> StringSecurityDescriptor,
  Pointer<Uint32> StringSecurityDescriptorLen,
)>('ConvertSecurityDescriptorToStringSecurityDescriptorW');

int ConvertSidToStringSid(
  int Sid,
  Pointer<Pointer<Utf16>> StringSid,
) =>
    _ConvertSidToStringSid(
      Sid,
      StringSid,
    );

late final _ConvertSidToStringSid = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr Sid,
  Pointer<Pointer<Utf16>> StringSid,
),
    int Function(
  int Sid,
  Pointer<Pointer<Utf16>> StringSid,
)>('ConvertSidToStringSidW');

int ConvertStringSecurityDescriptorToSecurityDescriptor(
  Pointer<Utf16> StringSecurityDescriptor,
  int StringSDRevision,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> SecurityDescriptor,
  Pointer<Uint32> SecurityDescriptorSize,
) =>
    _ConvertStringSecurityDescriptorToSecurityDescriptor(
      StringSecurityDescriptor,
      StringSDRevision,
      SecurityDescriptor,
      SecurityDescriptorSize,
    );

late final _ConvertStringSecurityDescriptorToSecurityDescriptor =
    _advapi32.lookupFunction<
        Int32 Function(
  Pointer<Utf16> StringSecurityDescriptor,
  Uint32 StringSDRevision,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> SecurityDescriptor,
  Pointer<Uint32> SecurityDescriptorSize,
),
        int Function(
  Pointer<Utf16> StringSecurityDescriptor,
  int StringSDRevision,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> SecurityDescriptor,
  Pointer<Uint32> SecurityDescriptorSize,
)>('ConvertStringSecurityDescriptorToSecurityDescriptorW');

int ConvertStringSidToSid(
  Pointer<Utf16> StringSid,
  Pointer<IntPtr> Sid,
) =>
    _ConvertStringSidToSid(
      StringSid,
      Sid,
    );

late final _ConvertStringSidToSid = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> StringSid,
  Pointer<IntPtr> Sid,
),
    int Function(
  Pointer<Utf16> StringSid,
  Pointer<IntPtr> Sid,
)>('ConvertStringSidToSidW');

int FreeInheritedFromArray(
  Pointer<INHERITED_FROM> pInheritArray,
  int AceCnt,
  Pointer<FN_OBJECT_MGR_FUNCTIONS> pfnArray,
) =>
    _FreeInheritedFromArray(
      pInheritArray,
      AceCnt,
      pfnArray,
    );

late final _FreeInheritedFromArray = _advapi32.lookupFunction<
    Uint32 Function(
  Pointer<INHERITED_FROM> pInheritArray,
  Uint16 AceCnt,
  Pointer<FN_OBJECT_MGR_FUNCTIONS> pfnArray,
),
    int Function(
  Pointer<INHERITED_FROM> pInheritArray,
  int AceCnt,
  Pointer<FN_OBJECT_MGR_FUNCTIONS> pfnArray,
)>('FreeInheritedFromArray');

int GetAuditedPermissionsFromAcl(
  Pointer<ACL> pacl,
  Pointer<TRUSTEE_> pTrustee,
  Pointer<Uint32> pSuccessfulAuditedRights,
  Pointer<Uint32> pFailedAuditRights,
) =>
    _GetAuditedPermissionsFromAcl(
      pacl,
      pTrustee,
      pSuccessfulAuditedRights,
      pFailedAuditRights,
    );

late final _GetAuditedPermissionsFromAcl = _advapi32.lookupFunction<
    Uint32 Function(
  Pointer<ACL> pacl,
  Pointer<TRUSTEE_> pTrustee,
  Pointer<Uint32> pSuccessfulAuditedRights,
  Pointer<Uint32> pFailedAuditRights,
),
    int Function(
  Pointer<ACL> pacl,
  Pointer<TRUSTEE_> pTrustee,
  Pointer<Uint32> pSuccessfulAuditedRights,
  Pointer<Uint32> pFailedAuditRights,
)>('GetAuditedPermissionsFromAclW');

int GetEffectiveRightsFromAcl(
  Pointer<ACL> pacl,
  Pointer<TRUSTEE_> pTrustee,
  Pointer<Uint32> pAccessRights,
) =>
    _GetEffectiveRightsFromAcl(
      pacl,
      pTrustee,
      pAccessRights,
    );

late final _GetEffectiveRightsFromAcl = _advapi32.lookupFunction<
    Uint32 Function(
  Pointer<ACL> pacl,
  Pointer<TRUSTEE_> pTrustee,
  Pointer<Uint32> pAccessRights,
),
    int Function(
  Pointer<ACL> pacl,
  Pointer<TRUSTEE_> pTrustee,
  Pointer<Uint32> pAccessRights,
)>('GetEffectiveRightsFromAclW');

int GetExplicitEntriesFromAcl(
  Pointer<ACL> pacl,
  Pointer<Uint32> pcCountOfExplicitEntries,
  Pointer<Pointer<EXPLICIT_ACCESS_>> pListOfExplicitEntries,
) =>
    _GetExplicitEntriesFromAcl(
      pacl,
      pcCountOfExplicitEntries,
      pListOfExplicitEntries,
    );

late final _GetExplicitEntriesFromAcl = _advapi32.lookupFunction<
    Uint32 Function(
  Pointer<ACL> pacl,
  Pointer<Uint32> pcCountOfExplicitEntries,
  Pointer<Pointer<EXPLICIT_ACCESS_>> pListOfExplicitEntries,
),
    int Function(
  Pointer<ACL> pacl,
  Pointer<Uint32> pcCountOfExplicitEntries,
  Pointer<Pointer<EXPLICIT_ACCESS_>> pListOfExplicitEntries,
)>('GetExplicitEntriesFromAclW');

int GetInheritanceSource(
  Pointer<Utf16> pObjectName,
  int ObjectType,
  int SecurityInfo,
  int Container,
  Pointer<Pointer<GUID>> pObjectClassGuids,
  int GuidCount,
  Pointer<ACL> pAcl,
  Pointer<FN_OBJECT_MGR_FUNCTIONS> pfnArray,
  Pointer<GENERIC_MAPPING> pGenericMapping,
  Pointer<INHERITED_FROM> pInheritArray,
) =>
    _GetInheritanceSource(
      pObjectName,
      ObjectType,
      SecurityInfo,
      Container,
      pObjectClassGuids,
      GuidCount,
      pAcl,
      pfnArray,
      pGenericMapping,
      pInheritArray,
    );

late final _GetInheritanceSource = _advapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> pObjectName,
  Int32 ObjectType,
  Uint32 SecurityInfo,
  Int32 Container,
  Pointer<Pointer<GUID>> pObjectClassGuids,
  Uint32 GuidCount,
  Pointer<ACL> pAcl,
  Pointer<FN_OBJECT_MGR_FUNCTIONS> pfnArray,
  Pointer<GENERIC_MAPPING> pGenericMapping,
  Pointer<INHERITED_FROM> pInheritArray,
),
    int Function(
  Pointer<Utf16> pObjectName,
  int ObjectType,
  int SecurityInfo,
  int Container,
  Pointer<Pointer<GUID>> pObjectClassGuids,
  int GuidCount,
  Pointer<ACL> pAcl,
  Pointer<FN_OBJECT_MGR_FUNCTIONS> pfnArray,
  Pointer<GENERIC_MAPPING> pGenericMapping,
  Pointer<INHERITED_FROM> pInheritArray,
)>('GetInheritanceSourceW');

int GetMultipleTrusteeOperation(
  Pointer<TRUSTEE_> pTrustee,
) =>
    _GetMultipleTrusteeOperation(
      pTrustee,
    );

late final _GetMultipleTrusteeOperation = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<TRUSTEE_> pTrustee,
),
    int Function(
  Pointer<TRUSTEE_> pTrustee,
)>('GetMultipleTrusteeOperationW');

Pointer<TRUSTEE_> GetMultipleTrustee(
  Pointer<TRUSTEE_> pTrustee,
) =>
    _GetMultipleTrustee(
      pTrustee,
    );

late final _GetMultipleTrustee = _advapi32.lookupFunction<
    Pointer<TRUSTEE_> Function(
  Pointer<TRUSTEE_> pTrustee,
),
    Pointer<TRUSTEE_> Function(
  Pointer<TRUSTEE_> pTrustee,
)>('GetMultipleTrusteeW');

int GetNamedSecurityInfo(
  Pointer<Utf16> pObjectName,
  int ObjectType,
  int SecurityInfo,
  Pointer<IntPtr> ppsidOwner,
  Pointer<IntPtr> ppsidGroup,
  Pointer<Pointer<ACL>> ppDacl,
  Pointer<Pointer<ACL>> ppSacl,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> ppSecurityDescriptor,
) =>
    _GetNamedSecurityInfo(
      pObjectName,
      ObjectType,
      SecurityInfo,
      ppsidOwner,
      ppsidGroup,
      ppDacl,
      ppSacl,
      ppSecurityDescriptor,
    );

late final _GetNamedSecurityInfo = _advapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> pObjectName,
  Int32 ObjectType,
  Uint32 SecurityInfo,
  Pointer<IntPtr> ppsidOwner,
  Pointer<IntPtr> ppsidGroup,
  Pointer<Pointer<ACL>> ppDacl,
  Pointer<Pointer<ACL>> ppSacl,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> ppSecurityDescriptor,
),
    int Function(
  Pointer<Utf16> pObjectName,
  int ObjectType,
  int SecurityInfo,
  Pointer<IntPtr> ppsidOwner,
  Pointer<IntPtr> ppsidGroup,
  Pointer<Pointer<ACL>> ppDacl,
  Pointer<Pointer<ACL>> ppSacl,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> ppSecurityDescriptor,
)>('GetNamedSecurityInfoW');

int GetSecurityInfo(
  int handle,
  int ObjectType,
  int SecurityInfo,
  Pointer<IntPtr> ppsidOwner,
  Pointer<IntPtr> ppsidGroup,
  Pointer<Pointer<ACL>> ppDacl,
  Pointer<Pointer<ACL>> ppSacl,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> ppSecurityDescriptor,
) =>
    _GetSecurityInfo(
      handle,
      ObjectType,
      SecurityInfo,
      ppsidOwner,
      ppsidGroup,
      ppDacl,
      ppSacl,
      ppSecurityDescriptor,
    );

late final _GetSecurityInfo = _advapi32.lookupFunction<
    Uint32 Function(
  IntPtr handle,
  Int32 ObjectType,
  Uint32 SecurityInfo,
  Pointer<IntPtr> ppsidOwner,
  Pointer<IntPtr> ppsidGroup,
  Pointer<Pointer<ACL>> ppDacl,
  Pointer<Pointer<ACL>> ppSacl,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> ppSecurityDescriptor,
),
    int Function(
  int handle,
  int ObjectType,
  int SecurityInfo,
  Pointer<IntPtr> ppsidOwner,
  Pointer<IntPtr> ppsidGroup,
  Pointer<Pointer<ACL>> ppDacl,
  Pointer<Pointer<ACL>> ppSacl,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> ppSecurityDescriptor,
)>('GetSecurityInfo');

int GetTrusteeForm(
  Pointer<TRUSTEE_> pTrustee,
) =>
    _GetTrusteeForm(
      pTrustee,
    );

late final _GetTrusteeForm = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<TRUSTEE_> pTrustee,
),
    int Function(
  Pointer<TRUSTEE_> pTrustee,
)>('GetTrusteeFormW');

Pointer<Utf16> GetTrusteeName(
  Pointer<TRUSTEE_> pTrustee,
) =>
    _GetTrusteeName(
      pTrustee,
    );

late final _GetTrusteeName = _advapi32.lookupFunction<
    Pointer<Utf16> Function(
  Pointer<TRUSTEE_> pTrustee,
),
    Pointer<Utf16> Function(
  Pointer<TRUSTEE_> pTrustee,
)>('GetTrusteeNameW');

int GetTrusteeType(
  Pointer<TRUSTEE_> pTrustee,
) =>
    _GetTrusteeType(
      pTrustee,
    );

late final _GetTrusteeType = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<TRUSTEE_> pTrustee,
),
    int Function(
  Pointer<TRUSTEE_> pTrustee,
)>('GetTrusteeTypeW');

int LookupSecurityDescriptorParts(
  Pointer<Pointer<TRUSTEE_>> ppOwner,
  Pointer<Pointer<TRUSTEE_>> ppGroup,
  Pointer<Uint32> pcCountOfAccessEntries,
  Pointer<Pointer<EXPLICIT_ACCESS_>> ppListOfAccessEntries,
  Pointer<Uint32> pcCountOfAuditEntries,
  Pointer<Pointer<EXPLICIT_ACCESS_>> ppListOfAuditEntries,
  Pointer<SECURITY_DESCRIPTOR> pSD,
) =>
    _LookupSecurityDescriptorParts(
      ppOwner,
      ppGroup,
      pcCountOfAccessEntries,
      ppListOfAccessEntries,
      pcCountOfAuditEntries,
      ppListOfAuditEntries,
      pSD,
    );

late final _LookupSecurityDescriptorParts = _advapi32.lookupFunction<
    Uint32 Function(
  Pointer<Pointer<TRUSTEE_>> ppOwner,
  Pointer<Pointer<TRUSTEE_>> ppGroup,
  Pointer<Uint32> pcCountOfAccessEntries,
  Pointer<Pointer<EXPLICIT_ACCESS_>> ppListOfAccessEntries,
  Pointer<Uint32> pcCountOfAuditEntries,
  Pointer<Pointer<EXPLICIT_ACCESS_>> ppListOfAuditEntries,
  Pointer<SECURITY_DESCRIPTOR> pSD,
),
    int Function(
  Pointer<Pointer<TRUSTEE_>> ppOwner,
  Pointer<Pointer<TRUSTEE_>> ppGroup,
  Pointer<Uint32> pcCountOfAccessEntries,
  Pointer<Pointer<EXPLICIT_ACCESS_>> ppListOfAccessEntries,
  Pointer<Uint32> pcCountOfAuditEntries,
  Pointer<Pointer<EXPLICIT_ACCESS_>> ppListOfAuditEntries,
  Pointer<SECURITY_DESCRIPTOR> pSD,
)>('LookupSecurityDescriptorPartsW');

int SetEntriesInAcl(
  int cCountOfExplicitEntries,
  Pointer<EXPLICIT_ACCESS_> pListOfExplicitEntries,
  Pointer<ACL> OldAcl,
  Pointer<Pointer<ACL>> NewAcl,
) =>
    _SetEntriesInAcl(
      cCountOfExplicitEntries,
      pListOfExplicitEntries,
      OldAcl,
      NewAcl,
    );

late final _SetEntriesInAcl = _advapi32.lookupFunction<
    Uint32 Function(
  Uint32 cCountOfExplicitEntries,
  Pointer<EXPLICIT_ACCESS_> pListOfExplicitEntries,
  Pointer<ACL> OldAcl,
  Pointer<Pointer<ACL>> NewAcl,
),
    int Function(
  int cCountOfExplicitEntries,
  Pointer<EXPLICIT_ACCESS_> pListOfExplicitEntries,
  Pointer<ACL> OldAcl,
  Pointer<Pointer<ACL>> NewAcl,
)>('SetEntriesInAclW');

int SetNamedSecurityInfo(
  Pointer<Utf16> pObjectName,
  int ObjectType,
  int SecurityInfo,
  int psidOwner,
  int psidGroup,
  Pointer<ACL> pDacl,
  Pointer<ACL> pSacl,
) =>
    _SetNamedSecurityInfo(
      pObjectName,
      ObjectType,
      SecurityInfo,
      psidOwner,
      psidGroup,
      pDacl,
      pSacl,
    );

late final _SetNamedSecurityInfo = _advapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> pObjectName,
  Int32 ObjectType,
  Uint32 SecurityInfo,
  IntPtr psidOwner,
  IntPtr psidGroup,
  Pointer<ACL> pDacl,
  Pointer<ACL> pSacl,
),
    int Function(
  Pointer<Utf16> pObjectName,
  int ObjectType,
  int SecurityInfo,
  int psidOwner,
  int psidGroup,
  Pointer<ACL> pDacl,
  Pointer<ACL> pSacl,
)>('SetNamedSecurityInfoW');

int SetSecurityInfo(
  int handle,
  int ObjectType,
  int SecurityInfo,
  int psidOwner,
  int psidGroup,
  Pointer<ACL> pDacl,
  Pointer<ACL> pSacl,
) =>
    _SetSecurityInfo(
      handle,
      ObjectType,
      SecurityInfo,
      psidOwner,
      psidGroup,
      pDacl,
      pSacl,
    );

late final _SetSecurityInfo = _advapi32.lookupFunction<
    Uint32 Function(
  IntPtr handle,
  Int32 ObjectType,
  Uint32 SecurityInfo,
  IntPtr psidOwner,
  IntPtr psidGroup,
  Pointer<ACL> pDacl,
  Pointer<ACL> pSacl,
),
    int Function(
  int handle,
  int ObjectType,
  int SecurityInfo,
  int psidOwner,
  int psidGroup,
  Pointer<ACL> pDacl,
  Pointer<ACL> pSacl,
)>('SetSecurityInfo');

int TreeResetNamedSecurityInfo(
  Pointer<Utf16> pObjectName,
  int ObjectType,
  int SecurityInfo,
  int pOwner,
  int pGroup,
  Pointer<ACL> pDacl,
  Pointer<ACL> pSacl,
  int KeepExplicit,
  Pointer<NativeFunction<FN_PROGRESS>> fnProgress,
  int ProgressInvokeSetting,
  Pointer Args,
) =>
    _TreeResetNamedSecurityInfo(
      pObjectName,
      ObjectType,
      SecurityInfo,
      pOwner,
      pGroup,
      pDacl,
      pSacl,
      KeepExplicit,
      fnProgress,
      ProgressInvokeSetting,
      Args,
    );

late final _TreeResetNamedSecurityInfo = _advapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> pObjectName,
  Int32 ObjectType,
  Uint32 SecurityInfo,
  IntPtr pOwner,
  IntPtr pGroup,
  Pointer<ACL> pDacl,
  Pointer<ACL> pSacl,
  Int32 KeepExplicit,
  Pointer<NativeFunction<FN_PROGRESS>> fnProgress,
  Int32 ProgressInvokeSetting,
  Pointer Args,
),
    int Function(
  Pointer<Utf16> pObjectName,
  int ObjectType,
  int SecurityInfo,
  int pOwner,
  int pGroup,
  Pointer<ACL> pDacl,
  Pointer<ACL> pSacl,
  int KeepExplicit,
  Pointer<NativeFunction<FN_PROGRESS>> fnProgress,
  int ProgressInvokeSetting,
  Pointer Args,
)>('TreeResetNamedSecurityInfoW');

int TreeSetNamedSecurityInfo(
  Pointer<Utf16> pObjectName,
  int ObjectType,
  int SecurityInfo,
  int pOwner,
  int pGroup,
  Pointer<ACL> pDacl,
  Pointer<ACL> pSacl,
  int dwAction,
  Pointer<NativeFunction<FN_PROGRESS>> fnProgress,
  int ProgressInvokeSetting,
  Pointer Args,
) =>
    _TreeSetNamedSecurityInfo(
      pObjectName,
      ObjectType,
      SecurityInfo,
      pOwner,
      pGroup,
      pDacl,
      pSacl,
      dwAction,
      fnProgress,
      ProgressInvokeSetting,
      Args,
    );

late final _TreeSetNamedSecurityInfo = _advapi32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> pObjectName,
  Int32 ObjectType,
  Uint32 SecurityInfo,
  IntPtr pOwner,
  IntPtr pGroup,
  Pointer<ACL> pDacl,
  Pointer<ACL> pSacl,
  Uint32 dwAction,
  Pointer<NativeFunction<FN_PROGRESS>> fnProgress,
  Int32 ProgressInvokeSetting,
  Pointer Args,
),
    int Function(
  Pointer<Utf16> pObjectName,
  int ObjectType,
  int SecurityInfo,
  int pOwner,
  int pGroup,
  Pointer<ACL> pDacl,
  Pointer<ACL> pSacl,
  int dwAction,
  Pointer<NativeFunction<FN_PROGRESS>> fnProgress,
  int ProgressInvokeSetting,
  Pointer Args,
)>('TreeSetNamedSecurityInfoW');
