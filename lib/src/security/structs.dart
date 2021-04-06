// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// -----------------------------------------------------------------------------
// Linter exceptions
// -----------------------------------------------------------------------------
// ignore_for_file: camel_case_types ignore_for_file: camel_case_extensions
//
// Why? The linter defaults to throw a warning for types not named as camel
// case. We deliberately break this convention to match the Win32 underlying
// types.
//
//
// ignore_for_file: unused_field
//
// Why? The linter complains about unused fields (e.g. a class that contains
// underscore-prefixed members that are not used in the library. In this class,
// we use this feature to ensure that sizeOf<STRUCT_NAME> returns a size at
// least as large as the underlying native struct. See, for example,
// ENUMLOGFONTEX.
//
//
// ignore_for_file: unnecessary_getters_setters
//
// Why? In structs like VARIANT, we're using getters and setters to project the
// same underlying data property to various union types. The trivial overhead is
// outweighed by readability.
//
//
// ignore_for_file: unused_import
//
// Why? We speculatively include some imports that we might generate a
// requirement for.
// -----------------------------------------------------------------------------

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';

class HCRYPTASYNC extends Struct {
  @IntPtr() external int Value;
}

class HCERTCHAINENGINE extends Struct {
  @IntPtr() external int Value;
}

class LsaHandle extends Struct {
  @IntPtr() external int Value;
}

class PSID extends Struct {
  @IntPtr() external int Value;
}

class AUTHZ_ACCESS_CHECK_RESULTS_HANDLE extends Struct {
  @IntPtr() external int Value;
}

class AUTHZ_CLIENT_CONTEXT_HANDLE extends Struct {
  @IntPtr() external int Value;
}

class AUTHZ_RESOURCE_MANAGER_HANDLE extends Struct {
  @IntPtr() external int Value;
}

class AUTHZ_AUDIT_EVENT_HANDLE extends Struct {
  @IntPtr() external int Value;
}

class AUTHZ_AUDIT_EVENT_TYPE_HANDLE extends Struct {
  @IntPtr() external int Value;
}

class AUTHZ_SECURITY_EVENT_PROVIDER_HANDLE extends Struct {
  @IntPtr() external int Value;
}

class HDIAGNOSTIC_DATA_QUERY_SESSION extends Struct {
  @IntPtr() external int Value;
}

class HDIAGNOSTIC_REPORT extends Struct {
  @IntPtr() external int Value;
}

class HDIAGNOSTIC_EVENT_TAG_DESCRIPTION extends Struct {
  @IntPtr() external int Value;
}

class HDIAGNOSTIC_EVENT_PRODUCER_DESCRIPTION extends Struct {
  @IntPtr() external int Value;
}

class HDIAGNOSTIC_EVENT_CATEGORY_DESCRIPTION extends Struct {
  @IntPtr() external int Value;
}

class HDIAGNOSTIC_RECORD extends Struct {
  @IntPtr() external int Value;
}

class NCRYPT_DESCRIPTOR_HANDLE extends Struct {
  @IntPtr() external int Value;
}

class NCRYPT_STREAM_HANDLE extends Struct {
  @IntPtr() external int Value;
}

class SAFER_LEVEL_HANDLE extends Struct {
  @IntPtr() external int Value;
}

class SC_HANDLE extends Struct {
  @IntPtr() external int Value;
}

class SERVICE_STATUS_HANDLE extends Struct {
  @IntPtr() external int Value;
}

class SEC_WINNT_AUTH_IDENTITY_W extends Struct {
  external Pointer<Uint16> User;
  @Uint32() external int UserLength;
  external Pointer<Uint16> Domain;
  @Uint32() external int DomainLength;
  external Pointer<Uint16> Password;
  @Uint32() external int PasswordLength;
  @Uint32() external int Flags;
}

class SEC_WINNT_AUTH_IDENTITY_A extends Struct {
  external Pointer<Uint8> User;
  @Uint32() external int UserLength;
  external Pointer<Uint8> Domain;
  @Uint32() external int DomainLength;
  external Pointer<Uint8> Password;
  @Uint32() external int PasswordLength;
  @Uint32() external int Flags;
}

class MSA_INFO_0 extends Struct {
  @Uint32() external int State;
}

class GENERIC_MAPPING extends Struct {
  @Uint32() external int GenericRead;
  @Uint32() external int GenericWrite;
  @Uint32() external int GenericExecute;
  @Uint32() external int GenericAll;
}

class LUID_AND_ATTRIBUTES extends Struct {
  external LUID Luid;
  @Uint32() external int Attributes;
}

class SID_IDENTIFIER_AUTHORITY extends Struct {
  @Array(6)
  external Array<Uint8> Value;
}

class SID extends Struct {
  @Uint8() external int Revision;
  @Uint8() external int SubAuthorityCount;
  @Uint8() external int IdentifierAuthority;
  @Array(1)
  external Array<Uint32> SubAuthority;
}

class SID_AND_ATTRIBUTES extends Struct {
  external Pointer Sid;
  @Uint32() external int Attributes;
}

class SID_AND_ATTRIBUTES_HASH extends Struct {
  @Uint32() external int SidCount;
  external Pointer<SID_AND_ATTRIBUTES> SidAttr;
  @Array(32)
  external Array<IntPtr> Hash;
}

class ACL extends Struct {
  @Uint8() external int AclRevision;
  @Uint8() external int Sbz1;
  @Uint16() external int AclSize;
  @Uint16() external int AceCount;
  @Uint16() external int Sbz2;
}

class ACE_HEADER extends Struct {
  @Uint8() external int AceType;
  @Uint8() external int AceFlags;
  @Uint16() external int AceSize;
}

class ACCESS_ALLOWED_ACE extends Struct {
  external ACE_HEADER Header;
  @Uint32() external int Mask;
  @Uint32() external int SidStart;
}

class ACCESS_DENIED_ACE extends Struct {
  external ACE_HEADER Header;
  @Uint32() external int Mask;
  @Uint32() external int SidStart;
}

class SYSTEM_AUDIT_ACE extends Struct {
  external ACE_HEADER Header;
  @Uint32() external int Mask;
  @Uint32() external int SidStart;
}

class SYSTEM_ALARM_ACE extends Struct {
  external ACE_HEADER Header;
  @Uint32() external int Mask;
  @Uint32() external int SidStart;
}

class SYSTEM_RESOURCE_ATTRIBUTE_ACE extends Struct {
  external ACE_HEADER Header;
  @Uint32() external int Mask;
  @Uint32() external int SidStart;
}

class SYSTEM_SCOPED_POLICY_ID_ACE extends Struct {
  external ACE_HEADER Header;
  @Uint32() external int Mask;
  @Uint32() external int SidStart;
}

class SYSTEM_MANDATORY_LABEL_ACE extends Struct {
  external ACE_HEADER Header;
  @Uint32() external int Mask;
  @Uint32() external int SidStart;
}

class ACCESS_ALLOWED_OBJECT_ACE extends Struct {
  external ACE_HEADER Header;
  @Uint32() external int Mask;
  @Uint32() external int Flags;
  external GUID ObjectType;
  external GUID InheritedObjectType;
  @Uint32() external int SidStart;
}

class ACCESS_DENIED_OBJECT_ACE extends Struct {
  external ACE_HEADER Header;
  @Uint32() external int Mask;
  @Uint32() external int Flags;
  external GUID ObjectType;
  external GUID InheritedObjectType;
  @Uint32() external int SidStart;
}

class SYSTEM_AUDIT_OBJECT_ACE extends Struct {
  external ACE_HEADER Header;
  @Uint32() external int Mask;
  @Uint32() external int Flags;
  external GUID ObjectType;
  external GUID InheritedObjectType;
  @Uint32() external int SidStart;
}

class SYSTEM_ALARM_OBJECT_ACE extends Struct {
  external ACE_HEADER Header;
  @Uint32() external int Mask;
  @Uint32() external int Flags;
  external GUID ObjectType;
  external GUID InheritedObjectType;
  @Uint32() external int SidStart;
}

class ACCESS_ALLOWED_CALLBACK_ACE extends Struct {
  external ACE_HEADER Header;
  @Uint32() external int Mask;
  @Uint32() external int SidStart;
}

class ACCESS_DENIED_CALLBACK_ACE extends Struct {
  external ACE_HEADER Header;
  @Uint32() external int Mask;
  @Uint32() external int SidStart;
}

class SYSTEM_AUDIT_CALLBACK_ACE extends Struct {
  external ACE_HEADER Header;
  @Uint32() external int Mask;
  @Uint32() external int SidStart;
}

class SYSTEM_ALARM_CALLBACK_ACE extends Struct {
  external ACE_HEADER Header;
  @Uint32() external int Mask;
  @Uint32() external int SidStart;
}

class ACCESS_ALLOWED_CALLBACK_OBJECT_ACE extends Struct {
  external ACE_HEADER Header;
  @Uint32() external int Mask;
  @Uint32() external int Flags;
  external GUID ObjectType;
  external GUID InheritedObjectType;
  @Uint32() external int SidStart;
}

class ACCESS_DENIED_CALLBACK_OBJECT_ACE extends Struct {
  external ACE_HEADER Header;
  @Uint32() external int Mask;
  @Uint32() external int Flags;
  external GUID ObjectType;
  external GUID InheritedObjectType;
  @Uint32() external int SidStart;
}

class SYSTEM_AUDIT_CALLBACK_OBJECT_ACE extends Struct {
  external ACE_HEADER Header;
  @Uint32() external int Mask;
  @Uint32() external int Flags;
  external GUID ObjectType;
  external GUID InheritedObjectType;
  @Uint32() external int SidStart;
}

class SYSTEM_ALARM_CALLBACK_OBJECT_ACE extends Struct {
  external ACE_HEADER Header;
  @Uint32() external int Mask;
  @Uint32() external int Flags;
  external GUID ObjectType;
  external GUID InheritedObjectType;
  @Uint32() external int SidStart;
}

class ACL_REVISION_INFORMATION extends Struct {
  @Uint32() external int AclRevision;
}

class ACL_SIZE_INFORMATION extends Struct {
  @Uint32() external int AceCount;
  @Uint32() external int AclBytesInUse;
  @Uint32() external int AclBytesFree;
}

class SECURITY_DESCRIPTOR extends Struct {
  @Uint8() external int Revision;
  @Uint8() external int Sbz1;
  @Uint16() external int Control;
  external Pointer Owner;
  external Pointer Group;
  external Pointer<ACL> Sacl;
  external Pointer<ACL> Dacl;
}

class OBJECT_TYPE_LIST extends Struct {
  @Uint16() external int Level;
  @Uint16() external int Sbz;
  external Pointer<GUID> ObjectType;
}

class PRIVILEGE_SET extends Struct {
  @Uint32() external int PrivilegeCount;
  @Uint32() external int Control;
  @Array(1)
  external Array<LUID_AND_ATTRIBUTES> Privilege;
}

class TOKEN_USER extends Struct {
  external SID_AND_ATTRIBUTES User;
}

class TOKEN_GROUPS extends Struct {
  @Uint32() external int GroupCount;
  @Array(1)
  external Array<SID_AND_ATTRIBUTES> Groups;
}

class TOKEN_PRIVILEGES extends Struct {
  @Uint32() external int PrivilegeCount;
  @Array(1)
  external Array<LUID_AND_ATTRIBUTES> Privileges;
}

class TOKEN_OWNER extends Struct {
  external Pointer Owner;
}

class TOKEN_PRIMARY_GROUP extends Struct {
  external Pointer PrimaryGroup;
}

class TOKEN_DEFAULT_DACL extends Struct {
  external Pointer<ACL> DefaultDacl;
}

class TOKEN_USER_CLAIMS extends Struct {
  external Pointer UserClaims;
}

class TOKEN_DEVICE_CLAIMS extends Struct {
  external Pointer DeviceClaims;
}

class TOKEN_GROUPS_AND_PRIVILEGES extends Struct {
  @Uint32() external int SidCount;
  @Uint32() external int SidLength;
  external Pointer<SID_AND_ATTRIBUTES> Sids;
  @Uint32() external int RestrictedSidCount;
  @Uint32() external int RestrictedSidLength;
  external Pointer<SID_AND_ATTRIBUTES> RestrictedSids;
  @Uint32() external int PrivilegeCount;
  @Uint32() external int PrivilegeLength;
  external Pointer<LUID_AND_ATTRIBUTES> Privileges;
  external LUID AuthenticationId;
}

class TOKEN_LINKED_TOKEN extends Struct {
  @IntPtr() external int LinkedToken;
}

class TOKEN_ELEVATION extends Struct {
  @Uint32() external int TokenIsElevated;
}

class TOKEN_MANDATORY_LABEL extends Struct {
  external SID_AND_ATTRIBUTES Label;
}

class TOKEN_MANDATORY_POLICY extends Struct {
  @Uint32() external int Policy;
}

class TOKEN_ACCESS_INFORMATION extends Struct {
  external Pointer<SID_AND_ATTRIBUTES_HASH> SidHash;
  external Pointer<SID_AND_ATTRIBUTES_HASH> RestrictedSidHash;
  external Pointer<TOKEN_PRIVILEGES> Privileges;
  external LUID AuthenticationId;
  @Uint32() external int TokenType;
  @Uint32() external int ImpersonationLevel;
  external TOKEN_MANDATORY_POLICY MandatoryPolicy;
  @Uint32() external int Flags;
  @Uint32() external int AppContainerNumber;
  external Pointer PackageSid;
  external Pointer<SID_AND_ATTRIBUTES_HASH> CapabilitiesHash;
  external Pointer TrustLevelSid;
  external Pointer SecurityAttributes;
}

class TOKEN_AUDIT_POLICY extends Struct {
  @Array(30)
  external Array<Uint8> PerUserPolicy;
}

class TOKEN_SOURCE extends Struct {
  @Array(8)
  external Array<Int8> SourceName;
  external LUID SourceIdentifier;
}

class TOKEN_STATISTICS extends Struct {
  external LUID TokenId;
  external LUID AuthenticationId;
  @Int64() external int ExpirationTime;
  @Uint32() external int TokenType;
  @Uint32() external int ImpersonationLevel;
  @Uint32() external int DynamicCharged;
  @Uint32() external int DynamicAvailable;
  @Uint32() external int GroupCount;
  @Uint32() external int PrivilegeCount;
  external LUID ModifiedId;
}

class TOKEN_CONTROL extends Struct {
  external LUID TokenId;
  external LUID AuthenticationId;
  external LUID ModifiedId;
  external TOKEN_SOURCE TokenSource;
}

class TOKEN_ORIGIN extends Struct {
  external LUID OriginatingLogonSession;
}

class TOKEN_APPCONTAINER_INFORMATION extends Struct {
  external Pointer TokenAppContainer;
}

class CLAIM_SECURITY_ATTRIBUTE_FQBN_VALUE extends Struct {
  @Uint64() external int Version;
  external Pointer<Utf16> Name;
}

class CLAIM_SECURITY_ATTRIBUTE_OCTET_STRING_VALUE extends Struct {
  external Pointer pValue;
  @Uint32() external int ValueLength;
}

class CLAIM_SECURITY_ATTRIBUTE_V1 extends Struct {
  external Pointer<Utf16> Name;
  @Uint32() external int ValueType;
  @Uint16() external int Reserved;
  @Uint32() external int Flags;
  @Uint32() external int ValueCount;
  @Uint32() external int Values;
}

class CLAIM_SECURITY_ATTRIBUTE_RELATIVE_V1 extends Struct {
  @Uint32() external int Name;
  @Uint32() external int ValueType;
  @Uint16() external int Reserved;
  @Uint32() external int Flags;
  @Uint32() external int ValueCount;
  @Uint32() external int Values;
}

class CLAIM_SECURITY_ATTRIBUTES_INFORMATION extends Struct {
  @Uint16() external int Version;
  @Uint16() external int Reserved;
  @Uint32() external int AttributeCount;
  @Uint32() external int Attribute;
}

class SECURITY_QUALITY_OF_SERVICE extends Struct {
  @Uint32() external int Length;
  @Uint32() external int ImpersonationLevel;
  @Uint8() external int ContextTrackingMode;
  @Uint8() external int EffectiveOnly;
}

class SECURITY_CAPABILITIES extends Struct {
  external Pointer AppContainerSid;
  external Pointer<SID_AND_ATTRIBUTES> Capabilities;
  @Uint32() external int CapabilityCount;
  @Uint32() external int Reserved;
}

class QUOTA_LIMITS extends Struct {
  @IntPtr() external int PagedPoolLimit;
  @IntPtr() external int NonPagedPoolLimit;
  @IntPtr() external int MinimumWorkingSetSize;
  @IntPtr() external int MaximumWorkingSetSize;
  @IntPtr() external int PagefileLimit;
  @Int64() external int TimeLimit;
}

class UNICODE_STRING extends Struct {
  @Uint16() external int Length;
  @Uint16() external int MaximumLength;
  external Pointer<Utf16> Buffer;
}

class SERVICE_TRIGGER_CUSTOM_STATE_ID extends Struct {
  @Array(2)
  external Array<Uint32> Data;
}

class SERVICE_CUSTOM_SYSTEM_STATE_CHANGE_DATA_ITEM extends Struct {
  @Uint32() external int u;
}

class SERVICE_DESCRIPTIONA extends Struct {
  external Pointer<Utf8> lpDescription;
}

class SERVICE_DESCRIPTIONW extends Struct {
  external Pointer<Utf16> lpDescription;
}

class SC_ACTION extends Struct {
  @Uint32() external int Type;
  @Uint32() external int Delay;
}

class SERVICE_FAILURE_ACTIONSA extends Struct {
  @Uint32() external int dwResetPeriod;
  external Pointer<Utf8> lpRebootMsg;
  external Pointer<Utf8> lpCommand;
  @Uint32() external int cActions;
  external Pointer<SC_ACTION> lpsaActions;
}

class SERVICE_FAILURE_ACTIONSW extends Struct {
  @Uint32() external int dwResetPeriod;
  external Pointer<Utf16> lpRebootMsg;
  external Pointer<Utf16> lpCommand;
  @Uint32() external int cActions;
  external Pointer<SC_ACTION> lpsaActions;
}

class SERVICE_DELAYED_AUTO_START_INFO extends Struct {
  @Int32() external int fDelayedAutostart;
}

class SERVICE_FAILURE_ACTIONS_FLAG extends Struct {
  @Int32() external int fFailureActionsOnNonCrashFailures;
}

class SERVICE_SID_INFO extends Struct {
  @Uint32() external int dwServiceSidType;
}

class SERVICE_REQUIRED_PRIVILEGES_INFOA extends Struct {
  external Pointer<Utf8> pmszRequiredPrivileges;
}

class SERVICE_REQUIRED_PRIVILEGES_INFOW extends Struct {
  external Pointer<Utf16> pmszRequiredPrivileges;
}

class SERVICE_PRESHUTDOWN_INFO extends Struct {
  @Uint32() external int dwPreshutdownTimeout;
}

class SERVICE_TRIGGER_SPECIFIC_DATA_ITEM extends Struct {
  @Uint32() external int dwDataType;
  @Uint32() external int cbData;
  external Pointer<Uint8> pData;
}

class SERVICE_TRIGGER extends Struct {
  @Uint32() external int dwTriggerType;
  @Uint32() external int dwAction;
  external Pointer<GUID> pTriggerSubtype;
  @Uint32() external int cDataItems;
  external Pointer<SERVICE_TRIGGER_SPECIFIC_DATA_ITEM> pDataItems;
}

class SERVICE_TRIGGER_INFO extends Struct {
  @Uint32() external int cTriggers;
  external Pointer<SERVICE_TRIGGER> pTriggers;
  external Pointer<Uint8> pReserved;
}

class SERVICE_PREFERRED_NODE_INFO extends Struct {
  @Uint16() external int usPreferredNode;
  @Uint8() external int fDelete;
}

class SERVICE_TIMECHANGE_INFO extends Struct {
  @Int64() external int liNewTime;
  @Int64() external int liOldTime;
}

class SERVICE_LAUNCH_PROTECTED_INFO extends Struct {
  @Uint32() external int dwLaunchProtected;
}

class SERVICE_STATUS extends Struct {
  @Uint32() external int dwServiceType;
  @Uint32() external int dwCurrentState;
  @Uint32() external int dwControlsAccepted;
  @Uint32() external int dwWin32ExitCode;
  @Uint32() external int dwServiceSpecificExitCode;
  @Uint32() external int dwCheckPoint;
  @Uint32() external int dwWaitHint;
}

class SERVICE_STATUS_PROCESS extends Struct {
  @Uint32() external int dwServiceType;
  @Uint32() external int dwCurrentState;
  @Uint32() external int dwControlsAccepted;
  @Uint32() external int dwWin32ExitCode;
  @Uint32() external int dwServiceSpecificExitCode;
  @Uint32() external int dwCheckPoint;
  @Uint32() external int dwWaitHint;
  @Uint32() external int dwProcessId;
  @Uint32() external int dwServiceFlags;
}

class ENUM_SERVICE_STATUSA extends Struct {
  external Pointer<Utf8> lpServiceName;
  external Pointer<Utf8> lpDisplayName;
  external SERVICE_STATUS ServiceStatus;
}

class ENUM_SERVICE_STATUSW extends Struct {
  external Pointer<Utf16> lpServiceName;
  external Pointer<Utf16> lpDisplayName;
  external SERVICE_STATUS ServiceStatus;
}

class ENUM_SERVICE_STATUS_PROCESSA extends Struct {
  external Pointer<Utf8> lpServiceName;
  external Pointer<Utf8> lpDisplayName;
  external SERVICE_STATUS_PROCESS ServiceStatusProcess;
}

class ENUM_SERVICE_STATUS_PROCESSW extends Struct {
  external Pointer<Utf16> lpServiceName;
  external Pointer<Utf16> lpDisplayName;
  external SERVICE_STATUS_PROCESS ServiceStatusProcess;
}

class QUERY_SERVICE_LOCK_STATUSA extends Struct {
  @Uint32() external int fIsLocked;
  external Pointer<Utf8> lpLockOwner;
  @Uint32() external int dwLockDuration;
}

class QUERY_SERVICE_LOCK_STATUSW extends Struct {
  @Uint32() external int fIsLocked;
  external Pointer<Utf16> lpLockOwner;
  @Uint32() external int dwLockDuration;
}

class QUERY_SERVICE_CONFIGA extends Struct {
  @Uint32() external int dwServiceType;
  @Uint32() external int dwStartType;
  @Uint32() external int dwErrorControl;
  external Pointer<Utf8> lpBinaryPathName;
  external Pointer<Utf8> lpLoadOrderGroup;
  @Uint32() external int dwTagId;
  external Pointer<Utf8> lpDependencies;
  external Pointer<Utf8> lpServiceStartName;
  external Pointer<Utf8> lpDisplayName;
}

class QUERY_SERVICE_CONFIGW extends Struct {
  @Uint32() external int dwServiceType;
  @Uint32() external int dwStartType;
  @Uint32() external int dwErrorControl;
  external Pointer<Utf16> lpBinaryPathName;
  external Pointer<Utf16> lpLoadOrderGroup;
  @Uint32() external int dwTagId;
  external Pointer<Utf16> lpDependencies;
  external Pointer<Utf16> lpServiceStartName;
  external Pointer<Utf16> lpDisplayName;
}

class SERVICE_TABLE_ENTRYA extends Struct {
  external Pointer<Utf8> lpServiceName;
  external Pointer<SERVICE_MAIN_FUNCTIONA> lpServiceProc;
}

class SERVICE_TABLE_ENTRYW extends Struct {
  external Pointer<Utf16> lpServiceName;
  external Pointer<SERVICE_MAIN_FUNCTIONW> lpServiceProc;
}

class SERVICE_NOTIFY_1 extends Struct {
  @Uint32() external int dwVersion;
  external PFN_SC_NOTIFY_CALLBACK pfnNotifyCallback;
  external Pointer pContext;
  @Uint32() external int dwNotificationStatus;
  external SERVICE_STATUS_PROCESS ServiceStatus;
}

class SERVICE_NOTIFY_2A extends Struct {
  @Uint32() external int dwVersion;
  external PFN_SC_NOTIFY_CALLBACK pfnNotifyCallback;
  external Pointer pContext;
  @Uint32() external int dwNotificationStatus;
  external SERVICE_STATUS_PROCESS ServiceStatus;
  @Uint32() external int dwNotificationTriggered;
  external Pointer<Utf8> pszServiceNames;
}

class SERVICE_NOTIFY_2W extends Struct {
  @Uint32() external int dwVersion;
  external PFN_SC_NOTIFY_CALLBACK pfnNotifyCallback;
  external Pointer pContext;
  @Uint32() external int dwNotificationStatus;
  external SERVICE_STATUS_PROCESS ServiceStatus;
  @Uint32() external int dwNotificationTriggered;
  external Pointer<Utf16> pszServiceNames;
}

class SERVICE_CONTROL_STATUS_REASON_PARAMSA extends Struct {
  @Uint32() external int dwReason;
  external Pointer<Utf8> pszComment;
  external SERVICE_STATUS_PROCESS ServiceStatus;
}

class SERVICE_CONTROL_STATUS_REASON_PARAMSW extends Struct {
  @Uint32() external int dwReason;
  external Pointer<Utf16> pszComment;
  external SERVICE_STATUS_PROCESS ServiceStatus;
}

class SERVICE_START_REASON extends Struct {
  @Uint32() external int dwReason;
}

class _SC_NOTIFICATION_REGISTRATION extends Struct {
}

class LSA_TRUST_INFORMATION extends Struct {
  external UNICODE_STRING Name;
  external Pointer Sid;
}

class LSA_REFERENCED_DOMAIN_LIST extends Struct {
  @Uint32() external int Entries;
  external Pointer<LSA_TRUST_INFORMATION> Domains;
}

class LSA_TRANSLATED_SID2 extends Struct {
  @Uint32() external int Use;
  external Pointer Sid;
  @Int32() external int DomainIndex;
  @Uint32() external int Flags;
}

class LSA_TRANSLATED_NAME extends Struct {
  @Uint32() external int Use;
  external UNICODE_STRING Name;
  @Int32() external int DomainIndex;
}

class POLICY_ACCOUNT_DOMAIN_INFO extends Struct {
  external UNICODE_STRING DomainName;
  external Pointer DomainSid;
}

class POLICY_DNS_DOMAIN_INFO extends Struct {
  external UNICODE_STRING Name;
  external UNICODE_STRING DnsDomainName;
  external UNICODE_STRING DnsForestName;
  external GUID DomainGuid;
  external Pointer Sid;
}

class SE_ADT_OBJECT_TYPE extends Struct {
  external GUID ObjectType;
  @Uint16() external int Flags;
  @Uint16() external int Level;
  @Uint32() external int AccessMask;
}

class SE_ADT_PARAMETER_ARRAY_ENTRY extends Struct {
  @Uint32() external int Type;
  @Uint32() external int Length;
  @Array(2)
  external Array<IntPtr> Data;
  external Pointer Address;
}

class SE_ADT_ACCESS_REASON extends Struct {
  @Uint32() external int AccessMask;
  @Array(32)
  external Array<Uint32> AccessReasons;
  @Uint32() external int ObjectTypeIndex;
  @Uint32() external int AccessGranted;
  external Pointer<SECURITY_DESCRIPTOR> SecurityDescriptor;
}

class SE_ADT_CLAIMS extends Struct {
  @Uint32() external int Length;
  external Pointer Claims;
}

class SE_ADT_PARAMETER_ARRAY extends Struct {
  @Uint32() external int CategoryId;
  @Uint32() external int AuditId;
  @Uint32() external int ParameterCount;
  @Uint32() external int Length;
  @Uint16() external int FlatSubCategoryId;
  @Uint16() external int Type;
  @Uint32() external int Flags;
  @Array(32)
  external Array<SE_ADT_PARAMETER_ARRAY_ENTRY> Parameters;
}

class SE_ADT_PARAMETER_ARRAY_EX extends Struct {
  @Uint32() external int CategoryId;
  @Uint32() external int AuditId;
  @Uint32() external int Version;
  @Uint32() external int ParameterCount;
  @Uint32() external int Length;
  @Uint16() external int FlatSubCategoryId;
  @Uint16() external int Type;
  @Uint32() external int Flags;
  @Array(32)
  external Array<SE_ADT_PARAMETER_ARRAY_ENTRY> Parameters;
}

class LSA_TRANSLATED_SID extends Struct {
  @Uint32() external int Use;
  @Uint32() external int RelativeId;
  @Int32() external int DomainIndex;
}

class POLICY_AUDIT_LOG_INFO extends Struct {
  @Uint32() external int AuditLogPercentFull;
  @Uint32() external int MaximumLogSize;
  @Int64() external int AuditRetentionPeriod;
  @Uint8() external int AuditLogFullShutdownInProgress;
  @Int64() external int TimeToShutdown;
  @Uint32() external int NextAuditRecordId;
}

class POLICY_AUDIT_EVENTS_INFO extends Struct {
  @Uint8() external int AuditingMode;
  external Pointer<Uint32> EventAuditingOptions;
  @Uint32() external int MaximumAuditEventCount;
}

class POLICY_AUDIT_SUBCATEGORIES_INFO extends Struct {
  @Uint32() external int MaximumSubCategoryCount;
  external Pointer<Uint32> EventAuditingOptions;
}

class POLICY_AUDIT_CATEGORIES_INFO extends Struct {
  @Uint32() external int MaximumCategoryCount;
  external Pointer<POLICY_AUDIT_SUBCATEGORIES_INFO> SubCategoriesInfo;
}

class POLICY_PRIMARY_DOMAIN_INFO extends Struct {
  external UNICODE_STRING Name;
  external Pointer Sid;
}

class POLICY_PD_ACCOUNT_INFO extends Struct {
  external UNICODE_STRING Name;
}

class POLICY_LSA_SERVER_ROLE_INFO extends Struct {
  @Uint32() external int LsaServerRole;
}

class POLICY_REPLICA_SOURCE_INFO extends Struct {
  external UNICODE_STRING ReplicaSource;
  external UNICODE_STRING ReplicaAccountName;
}

class POLICY_DEFAULT_QUOTA_INFO extends Struct {
  external QUOTA_LIMITS QuotaLimits;
}

class POLICY_MODIFICATION_INFO extends Struct {
  @Int64() external int ModifiedId;
  @Int64() external int DatabaseCreationTime;
}

class POLICY_AUDIT_FULL_SET_INFO extends Struct {
  @Uint8() external int ShutDownOnFull;
}

class POLICY_AUDIT_FULL_QUERY_INFO extends Struct {
  @Uint8() external int ShutDownOnFull;
  @Uint8() external int LogIsFull;
}

class POLICY_DOMAIN_EFS_INFO extends Struct {
  @Uint32() external int InfoLength;
  external Pointer<Uint8> EfsBlob;
}

class POLICY_DOMAIN_KERBEROS_TICKET_INFO extends Struct {
  @Uint32() external int AuthenticationOptions;
  @Int64() external int MaxServiceTicketAge;
  @Int64() external int MaxTicketAge;
  @Int64() external int MaxRenewAge;
  @Int64() external int MaxClockSkew;
  @Int64() external int Reserved;
}

class POLICY_MACHINE_ACCT_INFO extends Struct {
  @Uint32() external int Rid;
  external Pointer Sid;
}

class TRUSTED_DOMAIN_NAME_INFO extends Struct {
  external UNICODE_STRING Name;
}

class TRUSTED_CONTROLLERS_INFO extends Struct {
  @Uint32() external int Entries;
  external Pointer<UNICODE_STRING> Names;
}

class TRUSTED_POSIX_OFFSET_INFO extends Struct {
  @Uint32() external int Offset;
}

class TRUSTED_PASSWORD_INFO extends Struct {
  external UNICODE_STRING Password;
  external UNICODE_STRING OldPassword;
}

class TRUSTED_DOMAIN_INFORMATION_EX extends Struct {
  external UNICODE_STRING Name;
  external UNICODE_STRING FlatName;
  external Pointer Sid;
  @Uint32() external int TrustDirection;
  @Uint32() external int TrustType;
  @Uint32() external int TrustAttributes;
}

class TRUSTED_DOMAIN_INFORMATION_EX2 extends Struct {
  external UNICODE_STRING Name;
  external UNICODE_STRING FlatName;
  external Pointer Sid;
  @Uint32() external int TrustDirection;
  @Uint32() external int TrustType;
  @Uint32() external int TrustAttributes;
  @Uint32() external int ForestTrustLength;
  external Pointer<Uint8> ForestTrustInfo;
}

class LSA_AUTH_INFORMATION extends Struct {
  @Int64() external int LastUpdateTime;
  @Uint32() external int AuthType;
  @Uint32() external int AuthInfoLength;
  external Pointer<Uint8> AuthInfo;
}

class TRUSTED_DOMAIN_AUTH_INFORMATION extends Struct {
  @Uint32() external int IncomingAuthInfos;
  external Pointer<LSA_AUTH_INFORMATION> IncomingAuthenticationInformation;
  external Pointer<LSA_AUTH_INFORMATION> IncomingPreviousAuthenticationInformation;
  @Uint32() external int OutgoingAuthInfos;
  external Pointer<LSA_AUTH_INFORMATION> OutgoingAuthenticationInformation;
  external Pointer<LSA_AUTH_INFORMATION> OutgoingPreviousAuthenticationInformation;
}

class TRUSTED_DOMAIN_FULL_INFORMATION extends Struct {
  external TRUSTED_DOMAIN_INFORMATION_EX Information;
  external TRUSTED_POSIX_OFFSET_INFO PosixOffset;
  external TRUSTED_DOMAIN_AUTH_INFORMATION AuthInformation;
}

class TRUSTED_DOMAIN_FULL_INFORMATION2 extends Struct {
  external TRUSTED_DOMAIN_INFORMATION_EX2 Information;
  external TRUSTED_POSIX_OFFSET_INFO PosixOffset;
  external TRUSTED_DOMAIN_AUTH_INFORMATION AuthInformation;
}

class TRUSTED_DOMAIN_SUPPORTED_ENCRYPTION_TYPES extends Struct {
  @Uint32() external int SupportedEncryptionTypes;
}

class LSA_FOREST_TRUST_DOMAIN_INFO extends Struct {
  external Pointer Sid;
  external UNICODE_STRING DnsName;
  external UNICODE_STRING NetbiosName;
}

class LSA_FOREST_TRUST_BINARY_DATA extends Struct {
  @Uint32() external int Length;
  external Pointer<Uint8> Buffer;
}

class LSA_FOREST_TRUST_RECORD extends Struct {
  @Uint32() external int Flags;
  @Uint32() external int ForestTrustType;
  @Int64() external int Time;
  @Uint32() external int ForestTrustData;
}

class LSA_FOREST_TRUST_INFORMATION extends Struct {
  @Uint32() external int RecordCount;
  external Pointer<Pointer<LSA_FOREST_TRUST_RECORD>> Entries;
}

class LSA_FOREST_TRUST_COLLISION_RECORD extends Struct {
  @Uint32() external int Index;
  @Uint32() external int Type;
  @Uint32() external int Flags;
  external UNICODE_STRING Name;
}

class LSA_FOREST_TRUST_COLLISION_INFORMATION extends Struct {
  @Uint32() external int RecordCount;
  external Pointer<Pointer<LSA_FOREST_TRUST_COLLISION_RECORD>> Entries;
}

class LSA_ENUMERATION_INFORMATION extends Struct {
  external Pointer Sid;
}

class LSA_LAST_INTER_LOGON_INFO extends Struct {
  @Int64() external int LastSuccessfulLogon;
  @Int64() external int LastFailedLogon;
  @Uint32() external int FailedAttemptCountSinceLastSuccessfulLogon;
}

class SECURITY_LOGON_SESSION_DATA extends Struct {
  @Uint32() external int Size;
  external LUID LogonId;
  external UNICODE_STRING UserName;
  external UNICODE_STRING LogonDomain;
  external UNICODE_STRING AuthenticationPackage;
  @Uint32() external int LogonType;
  @Uint32() external int Session;
  external Pointer Sid;
  @Int64() external int LogonTime;
  external UNICODE_STRING LogonServer;
  external UNICODE_STRING DnsDomainName;
  external UNICODE_STRING Upn;
  @Uint32() external int UserFlags;
  external LSA_LAST_INTER_LOGON_INFO LastLogonInfo;
  external UNICODE_STRING LogonScript;
  external UNICODE_STRING ProfilePath;
  external UNICODE_STRING HomeDirectory;
  external UNICODE_STRING HomeDirectoryDrive;
  @Int64() external int LogoffTime;
  @Int64() external int KickOffTime;
  @Int64() external int PasswordLastSet;
  @Int64() external int PasswordCanChange;
  @Int64() external int PasswordMustChange;
}

class CENTRAL_ACCESS_POLICY_ENTRY extends Struct {
  external UNICODE_STRING Name;
  external UNICODE_STRING Description;
  external UNICODE_STRING ChangeId;
  @Uint32() external int LengthAppliesTo;
  external Pointer<Uint8> AppliesTo;
  @Uint32() external int LengthSD;
  external Pointer<SECURITY_DESCRIPTOR> SD;
  @Uint32() external int LengthStagedSD;
  external Pointer<SECURITY_DESCRIPTOR> StagedSD;
  @Uint32() external int Flags;
}

class CENTRAL_ACCESS_POLICY extends Struct {
  external Pointer CAPID;
  external UNICODE_STRING Name;
  external UNICODE_STRING Description;
  external UNICODE_STRING ChangeId;
  @Uint32() external int Flags;
  @Uint32() external int CAPECount;
  external Pointer<Pointer<CENTRAL_ACCESS_POLICY_ENTRY>> CAPEs;
}

class NEGOTIATE_PACKAGE_PREFIX extends Struct {
  @IntPtr() external int PackageId;
  external Pointer PackageDataA;
  external Pointer PackageDataW;
  @IntPtr() external int PrefixLen;
  @Array(32)
  external Array<Uint8> Prefix;
}

class NEGOTIATE_PACKAGE_PREFIXES extends Struct {
  @Uint32() external int MessageType;
  @Uint32() external int PrefixCount;
  @Uint32() external int Offset;
  @Uint32() external int Pad;
}

class NEGOTIATE_CALLER_NAME_REQUEST extends Struct {
  @Uint32() external int MessageType;
  external LUID LogonId;
}

class NEGOTIATE_CALLER_NAME_RESPONSE extends Struct {
  @Uint32() external int MessageType;
  external Pointer<Utf16> CallerName;
}

class DOMAIN_PASSWORD_INFORMATION extends Struct {
  @Uint16() external int MinPasswordLength;
  @Uint16() external int PasswordHistoryLength;
  @Uint32() external int PasswordProperties;
  @Int64() external int MaxPasswordAge;
  @Int64() external int MinPasswordAge;
}

class MSV1_0_INTERACTIVE_LOGON extends Struct {
  @Uint32() external int MessageType;
  external UNICODE_STRING LogonDomainName;
  external UNICODE_STRING UserName;
  external UNICODE_STRING Password;
}

class MSV1_0_INTERACTIVE_PROFILE extends Struct {
  @Uint32() external int MessageType;
  @Uint16() external int LogonCount;
  @Uint16() external int BadPasswordCount;
  @Int64() external int LogonTime;
  @Int64() external int LogoffTime;
  @Int64() external int KickOffTime;
  @Int64() external int PasswordLastSet;
  @Int64() external int PasswordCanChange;
  @Int64() external int PasswordMustChange;
  external UNICODE_STRING LogonScript;
  external UNICODE_STRING HomeDirectory;
  external UNICODE_STRING FullName;
  external UNICODE_STRING ProfilePath;
  external UNICODE_STRING HomeDirectoryDrive;
  external UNICODE_STRING LogonServer;
  @Uint32() external int UserFlags;
}

class MSV1_0_LM20_LOGON extends Struct {
  @Uint32() external int MessageType;
  external UNICODE_STRING LogonDomainName;
  external UNICODE_STRING UserName;
  external UNICODE_STRING Workstation;
  @Array(8)
  external Array<Uint8> ChallengeToClient;
  external STRING CaseSensitiveChallengeResponse;
  external STRING CaseInsensitiveChallengeResponse;
  @Uint32() external int ParameterControl;
}

class MSV1_0_SUBAUTH_LOGON extends Struct {
  @Uint32() external int MessageType;
  external UNICODE_STRING LogonDomainName;
  external UNICODE_STRING UserName;
  external UNICODE_STRING Workstation;
  @Array(8)
  external Array<Uint8> ChallengeToClient;
  external STRING AuthenticationInfo1;
  external STRING AuthenticationInfo2;
  @Uint32() external int ParameterControl;
  @Uint32() external int SubAuthPackageId;
}

class MSV1_0_S4U_LOGON extends Struct {
  @Uint32() external int MessageType;
  @Uint32() external int Flags;
  external UNICODE_STRING UserPrincipalName;
  external UNICODE_STRING DomainName;
}

class MSV1_0_LM20_LOGON_PROFILE extends Struct {
  @Uint32() external int MessageType;
  @Int64() external int KickOffTime;
  @Int64() external int LogoffTime;
  @Uint32() external int UserFlags;
  @Array(16)
  external Array<Uint8> UserSessionKey;
  external UNICODE_STRING LogonDomainName;
  @Array(8)
  external Array<Uint8> LanmanSessionKey;
  external UNICODE_STRING LogonServer;
  external UNICODE_STRING UserParameters;
}

class MSV1_0_CREDENTIAL_KEY extends Struct {
  @Array(20)
  external Array<Uint8> Data;
}

class MSV1_0_SUPPLEMENTAL_CREDENTIAL extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Flags;
  @Array(16)
  external Array<Uint8> LmPassword;
  @Array(16)
  external Array<Uint8> NtPassword;
}

class MSV1_0_SUPPLEMENTAL_CREDENTIAL_V2 extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Flags;
  @Array(16)
  external Array<Uint8> NtPassword;
  external MSV1_0_CREDENTIAL_KEY CredentialKey;
}

class MSV1_0_SUPPLEMENTAL_CREDENTIAL_V3 extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Flags;
  @Uint32() external int CredentialKeyType;
  @Array(16)
  external Array<Uint8> NtPassword;
  external MSV1_0_CREDENTIAL_KEY CredentialKey;
  @Array(20)
  external Array<Uint8> ShaPassword;
}

class MSV1_0_IUM_SUPPLEMENTAL_CREDENTIAL extends Struct {
  @Uint32() external int Version;
  @Uint32() external int EncryptedCredsSize;
  @Array(1)
  external Array<Uint8> EncryptedCreds;
}

class MSV1_0_REMOTE_SUPPLEMENTAL_CREDENTIAL extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Flags;
  external MSV1_0_CREDENTIAL_KEY CredentialKey;
  @Uint32() external int CredentialKeyType;
  @Uint32() external int EncryptedCredsSize;
  @Array(1)
  external Array<Uint8> EncryptedCreds;
}

class MSV1_0_NTLM3_RESPONSE extends Struct {
  @Array(16)
  external Array<Uint8> Response;
  @Uint8() external int RespType;
  @Uint8() external int HiRespType;
  @Uint16() external int Flags;
  @Uint32() external int MsgWord;
  @Uint64() external int TimeStamp;
  @Array(8)
  external Array<Uint8> ChallengeFromClient;
  @Uint32() external int AvPairsOff;
  @Array(1)
  external Array<Uint8> Buffer;
}

class MSV1_0_AV_PAIR extends Struct {
  @Uint16() external int AvId;
  @Uint16() external int AvLen;
}

class MSV1_0_CHANGEPASSWORD_REQUEST extends Struct {
  @Uint32() external int MessageType;
  external UNICODE_STRING DomainName;
  external UNICODE_STRING AccountName;
  external UNICODE_STRING OldPassword;
  external UNICODE_STRING NewPassword;
  @Uint8() external int Impersonating;
}

class MSV1_0_CHANGEPASSWORD_RESPONSE extends Struct {
  @Uint32() external int MessageType;
  @Uint8() external int PasswordInfoValid;
  external DOMAIN_PASSWORD_INFORMATION DomainPasswordInfo;
}

class MSV1_0_PASSTHROUGH_REQUEST extends Struct {
  @Uint32() external int MessageType;
  external UNICODE_STRING DomainName;
  external UNICODE_STRING PackageName;
  @Uint32() external int DataLength;
  external Pointer<Uint8> LogonData;
  @Uint32() external int Pad;
}

class MSV1_0_PASSTHROUGH_RESPONSE extends Struct {
  @Uint32() external int MessageType;
  @Uint32() external int Pad;
  @Uint32() external int DataLength;
  external Pointer<Uint8> ValidationData;
}

class MSV1_0_SUBAUTH_REQUEST extends Struct {
  @Uint32() external int MessageType;
  @Uint32() external int SubAuthPackageId;
  @Uint32() external int SubAuthInfoLength;
  external Pointer<Uint8> SubAuthSubmitBuffer;
}

class MSV1_0_SUBAUTH_RESPONSE extends Struct {
  @Uint32() external int MessageType;
  @Uint32() external int SubAuthInfoLength;
  external Pointer<Uint8> SubAuthReturnBuffer;
}

class KERB_INTERACTIVE_LOGON extends Struct {
  @Uint32() external int MessageType;
  external UNICODE_STRING LogonDomainName;
  external UNICODE_STRING UserName;
  external UNICODE_STRING Password;
}

class KERB_INTERACTIVE_UNLOCK_LOGON extends Struct {
  external KERB_INTERACTIVE_LOGON Logon;
  external LUID LogonId;
}

class KERB_SMART_CARD_LOGON extends Struct {
  @Uint32() external int MessageType;
  external UNICODE_STRING Pin;
  @Uint32() external int CspDataLength;
  external Pointer<Uint8> CspData;
}

class KERB_SMART_CARD_UNLOCK_LOGON extends Struct {
  external KERB_SMART_CARD_LOGON Logon;
  external LUID LogonId;
}

class KERB_CERTIFICATE_LOGON extends Struct {
  @Uint32() external int MessageType;
  external UNICODE_STRING DomainName;
  external UNICODE_STRING UserName;
  external UNICODE_STRING Pin;
  @Uint32() external int Flags;
  @Uint32() external int CspDataLength;
  external Pointer<Uint8> CspData;
}

class KERB_CERTIFICATE_UNLOCK_LOGON extends Struct {
  external KERB_CERTIFICATE_LOGON Logon;
  external LUID LogonId;
}

class KERB_CERTIFICATE_S4U_LOGON extends Struct {
  @Uint32() external int MessageType;
  @Uint32() external int Flags;
  external UNICODE_STRING UserPrincipalName;
  external UNICODE_STRING DomainName;
  @Uint32() external int CertificateLength;
  external Pointer<Uint8> Certificate;
}

class KERB_TICKET_LOGON extends Struct {
  @Uint32() external int MessageType;
  @Uint32() external int Flags;
  @Uint32() external int ServiceTicketLength;
  @Uint32() external int TicketGrantingTicketLength;
  external Pointer<Uint8> ServiceTicket;
  external Pointer<Uint8> TicketGrantingTicket;
}

class KERB_TICKET_UNLOCK_LOGON extends Struct {
  external KERB_TICKET_LOGON Logon;
  external LUID LogonId;
}

class KERB_S4U_LOGON extends Struct {
  @Uint32() external int MessageType;
  @Uint32() external int Flags;
  external UNICODE_STRING ClientUpn;
  external UNICODE_STRING ClientRealm;
}

class KERB_INTERACTIVE_PROFILE extends Struct {
  @Uint32() external int MessageType;
  @Uint16() external int LogonCount;
  @Uint16() external int BadPasswordCount;
  @Int64() external int LogonTime;
  @Int64() external int LogoffTime;
  @Int64() external int KickOffTime;
  @Int64() external int PasswordLastSet;
  @Int64() external int PasswordCanChange;
  @Int64() external int PasswordMustChange;
  external UNICODE_STRING LogonScript;
  external UNICODE_STRING HomeDirectory;
  external UNICODE_STRING FullName;
  external UNICODE_STRING ProfilePath;
  external UNICODE_STRING HomeDirectoryDrive;
  external UNICODE_STRING LogonServer;
  @Uint32() external int UserFlags;
}

class KERB_SMART_CARD_PROFILE extends Struct {
  external KERB_INTERACTIVE_PROFILE Profile;
  @Uint32() external int CertificateSize;
  external Pointer<Uint8> CertificateData;
}

class KERB_CRYPTO_KEY extends Struct {
  @Uint32() external int KeyType;
  @Uint32() external int Length;
  external Pointer<Uint8> Value;
}

class KERB_CRYPTO_KEY32 extends Struct {
  @Int32() external int KeyType;
  @Uint32() external int Length;
  @Uint32() external int Offset;
}

class KERB_TICKET_PROFILE extends Struct {
  external KERB_INTERACTIVE_PROFILE Profile;
  external KERB_CRYPTO_KEY SessionKey;
}

class KERB_QUERY_TKT_CACHE_REQUEST extends Struct {
  @Uint32() external int MessageType;
  external LUID LogonId;
}

class KERB_TICKET_CACHE_INFO extends Struct {
  external UNICODE_STRING ServerName;
  external UNICODE_STRING RealmName;
  @Int64() external int StartTime;
  @Int64() external int EndTime;
  @Int64() external int RenewTime;
  @Int32() external int EncryptionType;
  @Uint32() external int TicketFlags;
}

class KERB_TICKET_CACHE_INFO_EX extends Struct {
  external UNICODE_STRING ClientName;
  external UNICODE_STRING ClientRealm;
  external UNICODE_STRING ServerName;
  external UNICODE_STRING ServerRealm;
  @Int64() external int StartTime;
  @Int64() external int EndTime;
  @Int64() external int RenewTime;
  @Int32() external int EncryptionType;
  @Uint32() external int TicketFlags;
}

class KERB_TICKET_CACHE_INFO_EX2 extends Struct {
  external UNICODE_STRING ClientName;
  external UNICODE_STRING ClientRealm;
  external UNICODE_STRING ServerName;
  external UNICODE_STRING ServerRealm;
  @Int64() external int StartTime;
  @Int64() external int EndTime;
  @Int64() external int RenewTime;
  @Int32() external int EncryptionType;
  @Uint32() external int TicketFlags;
  @Uint32() external int SessionKeyType;
  @Uint32() external int BranchId;
}

class KERB_TICKET_CACHE_INFO_EX3 extends Struct {
  external UNICODE_STRING ClientName;
  external UNICODE_STRING ClientRealm;
  external UNICODE_STRING ServerName;
  external UNICODE_STRING ServerRealm;
  @Int64() external int StartTime;
  @Int64() external int EndTime;
  @Int64() external int RenewTime;
  @Int32() external int EncryptionType;
  @Uint32() external int TicketFlags;
  @Uint32() external int SessionKeyType;
  @Uint32() external int BranchId;
  @Uint32() external int CacheFlags;
  external UNICODE_STRING KdcCalled;
}

class KERB_QUERY_TKT_CACHE_RESPONSE extends Struct {
  @Uint32() external int MessageType;
  @Uint32() external int CountOfTickets;
  @Array(1)
  external Array<KERB_TICKET_CACHE_INFO> Tickets;
}

class KERB_QUERY_TKT_CACHE_EX_RESPONSE extends Struct {
  @Uint32() external int MessageType;
  @Uint32() external int CountOfTickets;
  @Array(1)
  external Array<KERB_TICKET_CACHE_INFO_EX> Tickets;
}

class KERB_QUERY_TKT_CACHE_EX2_RESPONSE extends Struct {
  @Uint32() external int MessageType;
  @Uint32() external int CountOfTickets;
  @Array(1)
  external Array<KERB_TICKET_CACHE_INFO_EX2> Tickets;
}

class KERB_QUERY_TKT_CACHE_EX3_RESPONSE extends Struct {
  @Uint32() external int MessageType;
  @Uint32() external int CountOfTickets;
  @Array(1)
  external Array<KERB_TICKET_CACHE_INFO_EX3> Tickets;
}

class SecHandle extends Struct {
  @IntPtr() external int dwLower;
  @IntPtr() external int dwUpper;
}

class KERB_AUTH_DATA extends Struct {
  @Uint32() external int Type;
  @Uint32() external int Length;
  external Pointer<Uint8> Data;
}

class KERB_NET_ADDRESS extends Struct {
  @Uint32() external int Family;
  @Uint32() external int Length;
  external Pointer<Utf8> Address;
}

class KERB_NET_ADDRESSES extends Struct {
  @Uint32() external int Number;
  @Array(1)
  external Array<KERB_NET_ADDRESS> Addresses;
}

class KERB_EXTERNAL_NAME extends Struct {
  @Int16() external int NameType;
  @Uint16() external int NameCount;
  @Array(1)
  external Array<UNICODE_STRING> Names;
}

class KERB_EXTERNAL_TICKET extends Struct {
  external Pointer<KERB_EXTERNAL_NAME> ServiceName;
  external Pointer<KERB_EXTERNAL_NAME> TargetName;
  external Pointer<KERB_EXTERNAL_NAME> ClientName;
  external UNICODE_STRING DomainName;
  external UNICODE_STRING TargetDomainName;
  external UNICODE_STRING AltTargetDomainName;
  external KERB_CRYPTO_KEY SessionKey;
  @Uint32() external int TicketFlags;
  @Uint32() external int Flags;
  @Int64() external int KeyExpirationTime;
  @Int64() external int StartTime;
  @Int64() external int EndTime;
  @Int64() external int RenewUntil;
  @Int64() external int TimeSkew;
  @Uint32() external int EncodedTicketSize;
  external Pointer<Uint8> EncodedTicket;
}

class KERB_RETRIEVE_TKT_REQUEST extends Struct {
  @Uint32() external int MessageType;
  external LUID LogonId;
  external UNICODE_STRING TargetName;
  @Uint32() external int TicketFlags;
  @Uint32() external int CacheOptions;
  @Uint32() external int EncryptionType;
  external SecHandle CredentialsHandle;
}

class KERB_RETRIEVE_TKT_RESPONSE extends Struct {
  external KERB_EXTERNAL_TICKET Ticket;
}

class KERB_PURGE_TKT_CACHE_REQUEST extends Struct {
  @Uint32() external int MessageType;
  external LUID LogonId;
  external UNICODE_STRING ServerName;
  external UNICODE_STRING RealmName;
}

class KERB_PURGE_TKT_CACHE_EX_REQUEST extends Struct {
  @Uint32() external int MessageType;
  external LUID LogonId;
  @Uint32() external int Flags;
  external KERB_TICKET_CACHE_INFO_EX TicketTemplate;
}

class KERB_SUBMIT_TKT_REQUEST extends Struct {
  @Uint32() external int MessageType;
  external LUID LogonId;
  @Uint32() external int Flags;
  external KERB_CRYPTO_KEY32 Key;
  @Uint32() external int KerbCredSize;
  @Uint32() external int KerbCredOffset;
}

class KERB_QUERY_KDC_PROXY_CACHE_REQUEST extends Struct {
  @Uint32() external int MessageType;
  @Uint32() external int Flags;
  external LUID LogonId;
}

class KDC_PROXY_CACHE_ENTRY_DATA extends Struct {
  @Uint64() external int SinceLastUsed;
  external UNICODE_STRING DomainName;
  external UNICODE_STRING ProxyServerName;
  external UNICODE_STRING ProxyServerVdir;
  @Uint16() external int ProxyServerPort;
  external LUID LogonId;
  external UNICODE_STRING CredUserName;
  external UNICODE_STRING CredDomainName;
  @Uint8() external int GlobalCache;
}

class KERB_QUERY_KDC_PROXY_CACHE_RESPONSE extends Struct {
  @Uint32() external int MessageType;
  @Uint32() external int CountOfEntries;
  external Pointer<KDC_PROXY_CACHE_ENTRY_DATA> Entries;
}

class KERB_PURGE_KDC_PROXY_CACHE_REQUEST extends Struct {
  @Uint32() external int MessageType;
  @Uint32() external int Flags;
  external LUID LogonId;
}

class KERB_PURGE_KDC_PROXY_CACHE_RESPONSE extends Struct {
  @Uint32() external int MessageType;
  @Uint32() external int CountOfPurged;
}

class KERB_S4U2PROXY_CACHE_ENTRY_INFO extends Struct {
  external UNICODE_STRING ServerName;
  @Uint32() external int Flags;
  @Int32() external int LastStatus;
  @Int64() external int Expiry;
}

class KERB_S4U2PROXY_CRED extends Struct {
  external UNICODE_STRING UserName;
  external UNICODE_STRING DomainName;
  @Uint32() external int Flags;
  @Int32() external int LastStatus;
  @Int64() external int Expiry;
  @Uint32() external int CountOfEntries;
  external Pointer<KERB_S4U2PROXY_CACHE_ENTRY_INFO> Entries;
}

class KERB_QUERY_S4U2PROXY_CACHE_REQUEST extends Struct {
  @Uint32() external int MessageType;
  @Uint32() external int Flags;
  external LUID LogonId;
}

class KERB_QUERY_S4U2PROXY_CACHE_RESPONSE extends Struct {
  @Uint32() external int MessageType;
  @Uint32() external int CountOfCreds;
  external Pointer<KERB_S4U2PROXY_CRED> Creds;
}

class KERB_RETRIEVE_KEY_TAB_REQUEST extends Struct {
  @Uint32() external int MessageType;
  @Uint32() external int Flags;
  external UNICODE_STRING UserName;
  external UNICODE_STRING DomainName;
  external UNICODE_STRING Password;
}

class KERB_RETRIEVE_KEY_TAB_RESPONSE extends Struct {
  @Uint32() external int MessageType;
  @Uint32() external int KeyTabLength;
  external Pointer<Uint8> KeyTab;
}

class KERB_CHANGEPASSWORD_REQUEST extends Struct {
  @Uint32() external int MessageType;
  external UNICODE_STRING DomainName;
  external UNICODE_STRING AccountName;
  external UNICODE_STRING OldPassword;
  external UNICODE_STRING NewPassword;
  @Uint8() external int Impersonating;
}

class KERB_SETPASSWORD_REQUEST extends Struct {
  @Uint32() external int MessageType;
  external LUID LogonId;
  external SecHandle CredentialsHandle;
  @Uint32() external int Flags;
  external UNICODE_STRING DomainName;
  external UNICODE_STRING AccountName;
  external UNICODE_STRING Password;
}

class KERB_SETPASSWORD_EX_REQUEST extends Struct {
  @Uint32() external int MessageType;
  external LUID LogonId;
  external SecHandle CredentialsHandle;
  @Uint32() external int Flags;
  external UNICODE_STRING AccountRealm;
  external UNICODE_STRING AccountName;
  external UNICODE_STRING Password;
  external UNICODE_STRING ClientRealm;
  external UNICODE_STRING ClientName;
  @Uint8() external int Impersonating;
  external UNICODE_STRING KdcAddress;
  @Uint32() external int KdcAddressType;
}

class KERB_DECRYPT_REQUEST extends Struct {
  @Uint32() external int MessageType;
  external LUID LogonId;
  @Uint32() external int Flags;
  @Int32() external int CryptoType;
  @Int32() external int KeyUsage;
  external KERB_CRYPTO_KEY Key;
  @Uint32() external int EncryptedDataSize;
  @Uint32() external int InitialVectorSize;
  external Pointer<Uint8> InitialVector;
  external Pointer<Uint8> EncryptedData;
}

class KERB_DECRYPT_RESPONSE extends Struct {
  @Array(1)
  external Array<Uint8> DecryptedData;
}

class KERB_ADD_BINDING_CACHE_ENTRY_REQUEST extends Struct {
  @Uint32() external int MessageType;
  external UNICODE_STRING RealmName;
  external UNICODE_STRING KdcAddress;
  @Uint32() external int AddressType;
}

class KERB_REFRESH_SCCRED_REQUEST extends Struct {
  @Uint32() external int MessageType;
  external UNICODE_STRING CredentialBlob;
  external LUID LogonId;
  @Uint32() external int Flags;
}

class KERB_ADD_CREDENTIALS_REQUEST extends Struct {
  @Uint32() external int MessageType;
  external UNICODE_STRING UserName;
  external UNICODE_STRING DomainName;
  external UNICODE_STRING Password;
  external LUID LogonId;
  @Uint32() external int Flags;
}

class KERB_ADD_CREDENTIALS_REQUEST_EX extends Struct {
  external KERB_ADD_CREDENTIALS_REQUEST Credentials;
  @Uint32() external int PrincipalNameCount;
  @Array(1)
  external Array<UNICODE_STRING> PrincipalNames;
}

class KERB_TRANSFER_CRED_REQUEST extends Struct {
  @Uint32() external int MessageType;
  external LUID OriginLogonId;
  external LUID DestinationLogonId;
  @Uint32() external int Flags;
}

class KERB_CLEANUP_MACHINE_PKINIT_CREDS_REQUEST extends Struct {
  @Uint32() external int MessageType;
  external LUID LogonId;
}

class KERB_BINDING_CACHE_ENTRY_DATA extends Struct {
  @Uint64() external int DiscoveryTime;
  external UNICODE_STRING RealmName;
  external UNICODE_STRING KdcAddress;
  @Uint32() external int AddressType;
  @Uint32() external int Flags;
  @Uint32() external int DcFlags;
  @Uint32() external int CacheFlags;
  external UNICODE_STRING KdcName;
}

class KERB_QUERY_BINDING_CACHE_RESPONSE extends Struct {
  @Uint32() external int MessageType;
  @Uint32() external int CountOfEntries;
  external Pointer<KERB_BINDING_CACHE_ENTRY_DATA> Entries;
}

class KERB_ADD_BINDING_CACHE_ENTRY_EX_REQUEST extends Struct {
  @Uint32() external int MessageType;
  external UNICODE_STRING RealmName;
  external UNICODE_STRING KdcAddress;
  @Uint32() external int AddressType;
  @Uint32() external int DcFlags;
}

class KERB_QUERY_BINDING_CACHE_REQUEST extends Struct {
  @Uint32() external int MessageType;
}

class KERB_PURGE_BINDING_CACHE_REQUEST extends Struct {
  @Uint32() external int MessageType;
}

class KERB_QUERY_DOMAIN_EXTENDED_POLICIES_REQUEST extends Struct {
  @Uint32() external int MessageType;
  @Uint32() external int Flags;
  external UNICODE_STRING DomainName;
}

class KERB_QUERY_DOMAIN_EXTENDED_POLICIES_RESPONSE extends Struct {
  @Uint32() external int MessageType;
  @Uint32() external int Flags;
  @Uint32() external int ExtendedPolicies;
  @Uint32() external int DsFlags;
}

class KERB_CERTIFICATE_HASHINFO extends Struct {
  @Uint16() external int StoreNameLength;
  @Uint16() external int HashLength;
}

class KERB_CERTIFICATE_INFO extends Struct {
  @Uint32() external int CertInfoSize;
  @Uint32() external int InfoType;
}

class POLICY_AUDIT_SID_ARRAY extends Struct {
  @Uint32() external int UsersCount;
  external Pointer<Pointer> UserSidArray;
}

class AUDIT_POLICY_INFORMATION extends Struct {
  external GUID AuditSubCategoryGuid;
  @Uint32() external int AuditingInformation;
  external GUID AuditCategoryGuid;
}

class PKU2U_CERT_BLOB extends Struct {
  @Uint32() external int CertOffset;
  @Uint16() external int CertLength;
}

class PKU2U_CREDUI_CONTEXT extends Struct {
  @Uint64() external int Version;
  @Uint16() external int cbHeaderLength;
  @Uint32() external int cbStructureLength;
  @Uint16() external int CertArrayCount;
  @Uint32() external int CertArrayOffset;
}

class PKU2U_CERTIFICATE_S4U_LOGON extends Struct {
  @Uint32() external int MessageType;
  @Uint32() external int Flags;
  external UNICODE_STRING UserPrincipalName;
  external UNICODE_STRING DomainName;
  @Uint32() external int CertificateLength;
  external Pointer<Uint8> Certificate;
}

class SecPkgInfoW extends Struct {
  @Uint32() external int fCapabilities;
  @Uint16() external int wVersion;
  @Uint16() external int wRPCID;
  @Uint32() external int cbMaxToken;
  external Pointer<Uint16> Name;
  external Pointer<Uint16> Comment;
}

class SecPkgInfoA extends Struct {
  @Uint32() external int fCapabilities;
  @Uint16() external int wVersion;
  @Uint16() external int wRPCID;
  @Uint32() external int cbMaxToken;
  external Pointer<Int8> Name;
  external Pointer<Int8> Comment;
}

class SecBuffer extends Struct {
  @Uint32() external int cbBuffer;
  @Uint32() external int BufferType;
  external Pointer pvBuffer;
}

class SecBufferDesc extends Struct {
  @Uint32() external int ulVersion;
  @Uint32() external int cBuffers;
  external Pointer<SecBuffer> pBuffers;
}

class SEC_NEGOTIATION_INFO extends Struct {
  @Uint32() external int Size;
  @Uint32() external int NameLength;
  external Pointer<Uint16> Name;
  external Pointer Reserved;
}

class SEC_CHANNEL_BINDINGS extends Struct {
  @Uint32() external int dwInitiatorAddrType;
  @Uint32() external int cbInitiatorLength;
  @Uint32() external int dwInitiatorOffset;
  @Uint32() external int dwAcceptorAddrType;
  @Uint32() external int cbAcceptorLength;
  @Uint32() external int dwAcceptorOffset;
  @Uint32() external int cbApplicationDataLength;
  @Uint32() external int dwApplicationDataOffset;
}

class SEC_APPLICATION_PROTOCOL_LIST extends Struct {
  @Uint32() external int ProtoNegoExt;
  @Uint16() external int ProtocolListSize;
  @Array(1)
  external Array<Uint8> ProtocolList;
}

class SEC_APPLICATION_PROTOCOLS extends Struct {
  @Uint32() external int ProtocolListsSize;
  @Array(1)
  external Array<SEC_APPLICATION_PROTOCOL_LIST> ProtocolLists;
}

class SEC_SRTP_PROTECTION_PROFILES extends Struct {
  @Uint16() external int ProfilesSize;
  @Array(1)
  external Array<Uint16> ProfilesList;
}

class SEC_SRTP_MASTER_KEY_IDENTIFIER extends Struct {
  @Uint8() external int MasterKeyIdentifierSize;
  @Array(1)
  external Array<Uint8> MasterKeyIdentifier;
}

class SEC_TOKEN_BINDING extends Struct {
  @Uint8() external int MajorVersion;
  @Uint8() external int MinorVersion;
  @Uint16() external int KeyParametersSize;
  @Array(1)
  external Array<Uint8> KeyParameters;
}

class SEC_PRESHAREDKEY extends Struct {
  @Uint16() external int KeySize;
  @Array(1)
  external Array<Uint8> Key;
}

class SEC_PRESHAREDKEY_IDENTITY extends Struct {
  @Uint16() external int KeyIdentitySize;
  @Array(1)
  external Array<Uint8> KeyIdentity;
}

class SEC_DTLS_MTU extends Struct {
  @Uint16() external int PathMTU;
}

class SEC_FLAGS extends Struct {
  @Uint64() external int Flags;
}

class SEC_TRAFFIC_SECRETS extends Struct {
  @Array(64)
  external Array<Uint16> SymmetricAlgId;
  @Array(64)
  external Array<Uint16> ChainingMode;
  @Array(64)
  external Array<Uint16> HashAlgId;
  @Uint16() external int KeySize;
  @Uint16() external int IvSize;
  @Uint16() external int MsgSequenceStart;
  @Uint16() external int MsgSequenceEnd;
  @Uint32() external int TrafficSecretType;
  @Uint16() external int TrafficSecretSize;
  @Array(1)
  external Array<Uint8> TrafficSecret;
}

class SecPkgCredentials_NamesW extends Struct {
  external Pointer<Uint16> sUserName;
}

class SecPkgCredentials_NamesA extends Struct {
  external Pointer<Int8> sUserName;
}

class SecPkgCredentials_SSIProviderW extends Struct {
  external Pointer<Uint16> sProviderName;
  @Uint32() external int ProviderInfoLength;
  external Pointer<Utf8> ProviderInfo;
}

class SecPkgCredentials_SSIProviderA extends Struct {
  external Pointer<Int8> sProviderName;
  @Uint32() external int ProviderInfoLength;
  external Pointer<Utf8> ProviderInfo;
}

class SecPkgCredentials_KdcProxySettingsW extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Flags;
  @Uint16() external int ProxyServerOffset;
  @Uint16() external int ProxyServerLength;
  @Uint16() external int ClientTlsCredOffset;
  @Uint16() external int ClientTlsCredLength;
}

class SecPkgCredentials_Cert extends Struct {
  @Uint32() external int EncodedCertSize;
  external Pointer<Uint8> EncodedCert;
}

class SecPkgContext_SubjectAttributes extends Struct {
  external Pointer AttributeInfo;
}

class SecPkgContext_CredInfo extends Struct {
  @Uint32() external int CredClass;
  @Uint32() external int IsPromptingNeeded;
}

class SecPkgContext_NegoPackageInfo extends Struct {
  @Uint32() external int PackageMask;
}

class SecPkgContext_NegoStatus extends Struct {
  @Uint32() external int LastStatus;
}

class SecPkgContext_Sizes extends Struct {
  @Uint32() external int cbMaxToken;
  @Uint32() external int cbMaxSignature;
  @Uint32() external int cbBlockSize;
  @Uint32() external int cbSecurityTrailer;
}

class SecPkgContext_StreamSizes extends Struct {
  @Uint32() external int cbHeader;
  @Uint32() external int cbTrailer;
  @Uint32() external int cbMaximumMessage;
  @Uint32() external int cBuffers;
  @Uint32() external int cbBlockSize;
}

class SecPkgContext_NamesW extends Struct {
  external Pointer<Uint16> sUserName;
}

class SecPkgContext_LastClientTokenStatus extends Struct {
  @Uint32() external int LastClientTokenStatus;
}

class SecPkgContext_NamesA extends Struct {
  external Pointer<Int8> sUserName;
}

class SecPkgContext_Lifespan extends Struct {
  @Int64() external int tsStart;
  @Int64() external int tsExpiry;
}

class SecPkgContext_DceInfo extends Struct {
  @Uint32() external int AuthzSvc;
  external Pointer pPac;
}

class SecPkgContext_KeyInfoA extends Struct {
  external Pointer<Int8> sSignatureAlgorithmName;
  external Pointer<Int8> sEncryptAlgorithmName;
  @Uint32() external int KeySize;
  @Uint32() external int SignatureAlgorithm;
  @Uint32() external int EncryptAlgorithm;
}

class SecPkgContext_KeyInfoW extends Struct {
  external Pointer<Uint16> sSignatureAlgorithmName;
  external Pointer<Uint16> sEncryptAlgorithmName;
  @Uint32() external int KeySize;
  @Uint32() external int SignatureAlgorithm;
  @Uint32() external int EncryptAlgorithm;
}

class SecPkgContext_AuthorityA extends Struct {
  external Pointer<Int8> sAuthorityName;
}

class SecPkgContext_AuthorityW extends Struct {
  external Pointer<Uint16> sAuthorityName;
}

class SecPkgContext_ProtoInfoA extends Struct {
  external Pointer<Int8> sProtocolName;
  @Uint32() external int majorVersion;
  @Uint32() external int minorVersion;
}

class SecPkgContext_ProtoInfoW extends Struct {
  external Pointer<Uint16> sProtocolName;
  @Uint32() external int majorVersion;
  @Uint32() external int minorVersion;
}

class SecPkgContext_PasswordExpiry extends Struct {
  @Int64() external int tsPasswordExpires;
}

class SecPkgContext_LogoffTime extends Struct {
  @Int64() external int tsLogoffTime;
}

class SecPkgContext_SessionKey extends Struct {
  @Uint32() external int SessionKeyLength;
  external Pointer<Uint8> SessionKey;
}

class SecPkgContext_NegoKeys extends Struct {
  @Uint32() external int KeyType;
  @Uint16() external int KeyLength;
  external Pointer<Uint8> KeyValue;
  @Uint32() external int VerifyKeyType;
  @Uint16() external int VerifyKeyLength;
  external Pointer<Uint8> VerifyKeyValue;
}

class SecPkgContext_PackageInfoW extends Struct {
  external Pointer<SecPkgInfo> PackageInfo;
}

class SecPkgContext_PackageInfoA extends Struct {
  external Pointer<SecPkgInfoA> PackageInfo;
}

class SecPkgContext_UserFlags extends Struct {
  @Uint32() external int UserFlags;
}

class SecPkgContext_Flags extends Struct {
  @Uint32() external int Flags;
}

class SecPkgContext_NegotiationInfoA extends Struct {
  external Pointer<SecPkgInfoA> PackageInfo;
  @Uint32() external int NegotiationState;
}

class SecPkgContext_NegotiationInfoW extends Struct {
  external Pointer<SecPkgInfo> PackageInfo;
  @Uint32() external int NegotiationState;
}

class SecPkgContext_NativeNamesW extends Struct {
  external Pointer<Uint16> sClientName;
  external Pointer<Uint16> sServerName;
}

class SecPkgContext_NativeNamesA extends Struct {
  external Pointer<Int8> sClientName;
  external Pointer<Int8> sServerName;
}

class SecPkgContext_CredentialNameW extends Struct {
  @Uint32() external int CredentialType;
  external Pointer<Uint16> sCredentialName;
}

class SecPkgContext_CredentialNameA extends Struct {
  @Uint32() external int CredentialType;
  external Pointer<Int8> sCredentialName;
}

class SecPkgContext_AccessToken extends Struct {
  external Pointer AccessToken;
}

class SecPkgContext_TargetInformation extends Struct {
  @Uint32() external int MarshalledTargetInfoLength;
  external Pointer<Uint8> MarshalledTargetInfo;
}

class SecPkgContext_AuthzID extends Struct {
  @Uint32() external int AuthzIDLength;
  external Pointer<Utf8> AuthzID;
}

class SecPkgContext_Target extends Struct {
  @Uint32() external int TargetLength;
  external Pointer<Utf8> Target;
}

class SecPkgContext_ClientSpecifiedTarget extends Struct {
  external Pointer<Uint16> sTargetName;
}

class SecPkgContext_Bindings extends Struct {
  @Uint32() external int BindingsLength;
  external Pointer<SEC_CHANNEL_BINDINGS> Bindings;
}

class SecPkgContext_ApplicationProtocol extends Struct {
  @Uint32() external int ProtoNegoStatus;
  @Uint32() external int ProtoNegoExt;
  @Uint8() external int ProtocolIdSize;
  @Array(128)
  external Array<Uint8> ProtocolId;
}

class SecPkgContext_NegotiatedTlsExtensions extends Struct {
  @Uint32() external int ExtensionsCount;
  external Pointer<Uint16> Extensions;
}

class SECPKG_APP_MODE_INFO extends Struct {
  @Uint32() external int UserFunction;
  @IntPtr() external int Argument1;
  @IntPtr() external int Argument2;
  external SecBuffer UserData;
  @Uint8() external int ReturnToLsa;
}

class SecurityFunctionTableW extends Struct {
  @Uint32() external int dwVersion;
  external ENUMERATE_SECURITY_PACKAGES_FN_W EnumerateSecurityPackagesW;
  external QUERY_CREDENTIALS_ATTRIBUTES_FN_W QueryCredentialsAttributesW;
  external ACQUIRE_CREDENTIALS_HANDLE_FN_W AcquireCredentialsHandleW;
  external FREE_CREDENTIALS_HANDLE_FN FreeCredentialsHandle;
  external Pointer Reserved2;
  external INITIALIZE_SECURITY_CONTEXT_FN_W InitializeSecurityContextW;
  external ACCEPT_SECURITY_CONTEXT_FN AcceptSecurityContext;
  external COMPLETE_AUTH_TOKEN_FN CompleteAuthToken;
  external DELETE_SECURITY_CONTEXT_FN DeleteSecurityContext;
  external APPLY_CONTROL_TOKEN_FN ApplyControlToken;
  external QUERY_CONTEXT_ATTRIBUTES_FN_W QueryContextAttributesW;
  external IMPERSONATE_SECURITY_CONTEXT_FN ImpersonateSecurityContext;
  external REVERT_SECURITY_CONTEXT_FN RevertSecurityContext;
  external MAKE_SIGNATURE_FN MakeSignature;
  external VERIFY_SIGNATURE_FN VerifySignature;
  external FREE_CONTEXT_BUFFER_FN FreeContextBuffer;
  external QUERY_SECURITY_PACKAGE_INFO_FN_W QuerySecurityPackageInfoW;
  external Pointer Reserved3;
  external Pointer Reserved4;
  external EXPORT_SECURITY_CONTEXT_FN ExportSecurityContext;
  external IMPORT_SECURITY_CONTEXT_FN_W ImportSecurityContextW;
  external ADD_CREDENTIALS_FN_W AddCredentialsW;
  external Pointer Reserved8;
  external QUERY_SECURITY_CONTEXT_TOKEN_FN QuerySecurityContextToken;
  external ENCRYPT_MESSAGE_FN EncryptMessage;
  external DECRYPT_MESSAGE_FN DecryptMessage;
  external SET_CONTEXT_ATTRIBUTES_FN_W SetContextAttributesW;
  external SET_CREDENTIALS_ATTRIBUTES_FN_W SetCredentialsAttributesW;
  external CHANGE_PASSWORD_FN_W ChangeAccountPasswordW;
  external QUERY_CONTEXT_ATTRIBUTES_EX_FN_W QueryContextAttributesExW;
  external QUERY_CREDENTIALS_ATTRIBUTES_EX_FN_W QueryCredentialsAttributesExW;
}

class SecurityFunctionTableA extends Struct {
  @Uint32() external int dwVersion;
  external ENUMERATE_SECURITY_PACKAGES_FN_A EnumerateSecurityPackagesA;
  external QUERY_CREDENTIALS_ATTRIBUTES_FN_A QueryCredentialsAttributesA;
  external ACQUIRE_CREDENTIALS_HANDLE_FN_A AcquireCredentialsHandleA;
  external FREE_CREDENTIALS_HANDLE_FN FreeCredentialsHandle;
  external Pointer Reserved2;
  external INITIALIZE_SECURITY_CONTEXT_FN_A InitializeSecurityContextA;
  external ACCEPT_SECURITY_CONTEXT_FN AcceptSecurityContext;
  external COMPLETE_AUTH_TOKEN_FN CompleteAuthToken;
  external DELETE_SECURITY_CONTEXT_FN DeleteSecurityContext;
  external APPLY_CONTROL_TOKEN_FN ApplyControlToken;
  external QUERY_CONTEXT_ATTRIBUTES_FN_A QueryContextAttributesA;
  external IMPERSONATE_SECURITY_CONTEXT_FN ImpersonateSecurityContext;
  external REVERT_SECURITY_CONTEXT_FN RevertSecurityContext;
  external MAKE_SIGNATURE_FN MakeSignature;
  external VERIFY_SIGNATURE_FN VerifySignature;
  external FREE_CONTEXT_BUFFER_FN FreeContextBuffer;
  external QUERY_SECURITY_PACKAGE_INFO_FN_A QuerySecurityPackageInfoA;
  external Pointer Reserved3;
  external Pointer Reserved4;
  external EXPORT_SECURITY_CONTEXT_FN ExportSecurityContext;
  external IMPORT_SECURITY_CONTEXT_FN_A ImportSecurityContextA;
  external ADD_CREDENTIALS_FN_A AddCredentialsA;
  external Pointer Reserved8;
  external QUERY_SECURITY_CONTEXT_TOKEN_FN QuerySecurityContextToken;
  external ENCRYPT_MESSAGE_FN EncryptMessage;
  external DECRYPT_MESSAGE_FN DecryptMessage;
  external SET_CONTEXT_ATTRIBUTES_FN_A SetContextAttributesA;
  external SET_CREDENTIALS_ATTRIBUTES_FN_A SetCredentialsAttributesA;
  external CHANGE_PASSWORD_FN_A ChangeAccountPasswordA;
  external QUERY_CONTEXT_ATTRIBUTES_EX_FN_A QueryContextAttributesExA;
  external QUERY_CREDENTIALS_ATTRIBUTES_EX_FN_A QueryCredentialsAttributesExA;
}

class SEC_WINNT_AUTH_IDENTITY_EX2 extends Struct {
  @Uint32() external int Version;
  @Uint16() external int cbHeaderLength;
  @Uint32() external int cbStructureLength;
  @Uint32() external int UserOffset;
  @Uint16() external int UserLength;
  @Uint32() external int DomainOffset;
  @Uint16() external int DomainLength;
  @Uint32() external int PackedCredentialsOffset;
  @Uint16() external int PackedCredentialsLength;
  @Uint32() external int Flags;
  @Uint32() external int PackageListOffset;
  @Uint16() external int PackageListLength;
}

class SEC_WINNT_AUTH_IDENTITY_EXW extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Length;
  external Pointer<Uint16> User;
  @Uint32() external int UserLength;
  external Pointer<Uint16> Domain;
  @Uint32() external int DomainLength;
  external Pointer<Uint16> Password;
  @Uint32() external int PasswordLength;
  @Uint32() external int Flags;
  external Pointer<Uint16> PackageList;
  @Uint32() external int PackageListLength;
}

class SEC_WINNT_AUTH_IDENTITY_EXA extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Length;
  external Pointer<Uint8> User;
  @Uint32() external int UserLength;
  external Pointer<Uint8> Domain;
  @Uint32() external int DomainLength;
  external Pointer<Uint8> Password;
  @Uint32() external int PasswordLength;
  @Uint32() external int Flags;
  external Pointer<Uint8> PackageList;
  @Uint32() external int PackageListLength;
}

class SEC_WINNT_AUTH_IDENTITY_INFO extends Struct {
  external SEC_WINNT_AUTH_IDENTITY_EXW AuthIdExw;
  external SEC_WINNT_AUTH_IDENTITY_EXA AuthIdExa;
  external SEC_WINNT_AUTH_IDENTITY_A AuthId_a;
  external SEC_WINNT_AUTH_IDENTITY_W AuthId_w;
  external SEC_WINNT_AUTH_IDENTITY_EX2 AuthIdEx2;
}

class SECURITY_PACKAGE_OPTIONS extends Struct {
  @Uint32() external int Size;
  @Uint32() external int Type;
  @Uint32() external int Flags;
  @Uint32() external int SignatureSize;
  external Pointer Signature;
}

class CREDENTIAL_ATTRIBUTEA extends Struct {
  external Pointer<Utf8> Keyword;
  @Uint32() external int Flags;
  @Uint32() external int ValueSize;
  external Pointer<Uint8> Value;
}

class CREDENTIAL_ATTRIBUTEW extends Struct {
  external Pointer<Utf16> Keyword;
  @Uint32() external int Flags;
  @Uint32() external int ValueSize;
  external Pointer<Uint8> Value;
}

class CREDENTIALA extends Struct {
  @Uint32() external int Flags;
  @Uint32() external int Type;
  external Pointer<Utf8> TargetName;
  external Pointer<Utf8> Comment;
  external FILETIME LastWritten;
  @Uint32() external int CredentialBlobSize;
  external Pointer<Uint8> CredentialBlob;
  @Uint32() external int Persist;
  @Uint32() external int AttributeCount;
  external Pointer<CREDENTIAL_ATTRIBUTEA> Attributes;
  external Pointer<Utf8> TargetAlias;
  external Pointer<Utf8> UserName;
}

class CREDENTIALW extends Struct {
  @Uint32() external int Flags;
  @Uint32() external int Type;
  external Pointer<Utf16> TargetName;
  external Pointer<Utf16> Comment;
  external FILETIME LastWritten;
  @Uint32() external int CredentialBlobSize;
  external Pointer<Uint8> CredentialBlob;
  @Uint32() external int Persist;
  @Uint32() external int AttributeCount;
  external Pointer<CREDENTIAL_ATTRIBUTE> Attributes;
  external Pointer<Utf16> TargetAlias;
  external Pointer<Utf16> UserName;
}

class CREDENTIAL_TARGET_INFORMATIONA extends Struct {
  external Pointer<Utf8> TargetName;
  external Pointer<Utf8> NetbiosServerName;
  external Pointer<Utf8> DnsServerName;
  external Pointer<Utf8> NetbiosDomainName;
  external Pointer<Utf8> DnsDomainName;
  external Pointer<Utf8> DnsTreeName;
  external Pointer<Utf8> PackageName;
  @Uint32() external int Flags;
  @Uint32() external int CredTypeCount;
  external Pointer<Uint32> CredTypes;
}

class CREDENTIAL_TARGET_INFORMATIONW extends Struct {
  external Pointer<Utf16> TargetName;
  external Pointer<Utf16> NetbiosServerName;
  external Pointer<Utf16> DnsServerName;
  external Pointer<Utf16> NetbiosDomainName;
  external Pointer<Utf16> DnsDomainName;
  external Pointer<Utf16> DnsTreeName;
  external Pointer<Utf16> PackageName;
  @Uint32() external int Flags;
  @Uint32() external int CredTypeCount;
  external Pointer<Uint32> CredTypes;
}

class CERT_CREDENTIAL_INFO extends Struct {
  @Uint32() external int cbSize;
  @Array(20)
  external Array<Uint8> rgbHashOfCert;
}

class USERNAME_TARGET_CREDENTIAL_INFO extends Struct {
  external Pointer<Utf16> UserName;
}

class BINARY_BLOB_CREDENTIAL_INFO extends Struct {
  @Uint32() external int cbBlob;
  external Pointer<Uint8> pbBlob;
}

class CREDUI_INFOA extends Struct {
  @Uint32() external int cbSize;
  @IntPtr() external int hwndParent;
  external Pointer<Utf8> pszMessageText;
  external Pointer<Utf8> pszCaptionText;
  @IntPtr() external int hbmBanner;
}

class CREDUI_INFOW extends Struct {
  @Uint32() external int cbSize;
  @IntPtr() external int hwndParent;
  external Pointer<Utf16> pszMessageText;
  external Pointer<Utf16> pszCaptionText;
  @IntPtr() external int hbmBanner;
}

class LSA_TOKEN_INFORMATION_NULL extends Struct {
  @Int64() external int ExpirationTime;
  external Pointer<TOKEN_GROUPS> Groups;
}

class LSA_TOKEN_INFORMATION_V1 extends Struct {
  @Int64() external int ExpirationTime;
  external TOKEN_USER User;
  external Pointer<TOKEN_GROUPS> Groups;
  external TOKEN_PRIMARY_GROUP PrimaryGroup;
  external Pointer<TOKEN_PRIVILEGES> Privileges;
  external TOKEN_OWNER Owner;
  external TOKEN_DEFAULT_DACL DefaultDacl;
}

class LSA_TOKEN_INFORMATION_V3 extends Struct {
  @Int64() external int ExpirationTime;
  external TOKEN_USER User;
  external Pointer<TOKEN_GROUPS> Groups;
  external TOKEN_PRIMARY_GROUP PrimaryGroup;
  external Pointer<TOKEN_PRIVILEGES> Privileges;
  external TOKEN_OWNER Owner;
  external TOKEN_DEFAULT_DACL DefaultDacl;
  external TOKEN_USER_CLAIMS UserClaims;
  external TOKEN_DEVICE_CLAIMS DeviceClaims;
  external Pointer<TOKEN_GROUPS> DeviceGroups;
}

class LSA_DISPATCH_TABLE extends Struct {
  external PLSA_CREATE_LOGON_SESSION CreateLogonSession;
  external PLSA_DELETE_LOGON_SESSION DeleteLogonSession;
  external PLSA_ADD_CREDENTIAL AddCredential;
  external PLSA_GET_CREDENTIALS GetCredentials;
  external PLSA_DELETE_CREDENTIAL DeleteCredential;
  external PLSA_ALLOCATE_LSA_HEAP AllocateLsaHeap;
  external PLSA_FREE_LSA_HEAP FreeLsaHeap;
  external PLSA_ALLOCATE_CLIENT_BUFFER AllocateClientBuffer;
  external PLSA_FREE_CLIENT_BUFFER FreeClientBuffer;
  external PLSA_COPY_TO_CLIENT_BUFFER CopyToClientBuffer;
  external PLSA_COPY_FROM_CLIENT_BUFFER CopyFromClientBuffer;
}

class SAM_REGISTER_MAPPING_ELEMENT extends Struct {
  external Pointer<Utf8> Original;
  external Pointer<Utf8> Mapped;
  @Uint8() external int Continuable;
}

class SAM_REGISTER_MAPPING_LIST extends Struct {
  @Uint32() external int Count;
  external Pointer<SAM_REGISTER_MAPPING_ELEMENT> Elements;
}

class SAM_REGISTER_MAPPING_TABLE extends Struct {
  @Uint32() external int Count;
  external Pointer<SAM_REGISTER_MAPPING_LIST> Lists;
}

class SECPKG_CLIENT_INFO extends Struct {
  external LUID LogonId;
  @Uint32() external int ProcessID;
  @Uint32() external int ThreadID;
  @Uint8() external int HasTcbPrivilege;
  @Uint8() external int Impersonating;
  @Uint8() external int Restricted;
  @Uint8() external int ClientFlags;
  @Uint32() external int ImpersonationLevel;
  @IntPtr() external int ClientToken;
}

class SECPKG_CALL_INFO extends Struct {
  @Uint32() external int ProcessId;
  @Uint32() external int ThreadId;
  @Uint32() external int Attributes;
  @Uint32() external int CallCount;
  external Pointer MechOid;
}

class SECPKG_SUPPLEMENTAL_CRED extends Struct {
  external UNICODE_STRING PackageName;
  @Uint32() external int CredentialSize;
  external Pointer<Uint8> Credentials;
}

class SECPKG_BYTE_VECTOR extends Struct {
  @Uint32() external int ByteArrayOffset;
  @Uint16() external int ByteArrayLength;
}

class SECPKG_SHORT_VECTOR extends Struct {
  @Uint32() external int ShortArrayOffset;
  @Uint16() external int ShortArrayCount;
}

class SECPKG_SUPPLIED_CREDENTIAL extends Struct {
  @Uint16() external int cbHeaderLength;
  @Uint16() external int cbStructureLength;
  external SECPKG_SHORT_VECTOR UserName;
  external SECPKG_SHORT_VECTOR DomainName;
  external SECPKG_BYTE_VECTOR PackedCredentials;
  @Uint32() external int CredFlags;
}

class SECPKG_CREDENTIAL extends Struct {
  @Uint64() external int Version;
  @Uint16() external int cbHeaderLength;
  @Uint32() external int cbStructureLength;
  @Uint32() external int ClientProcess;
  @Uint32() external int ClientThread;
  external LUID LogonId;
  @IntPtr() external int ClientToken;
  @Uint32() external int SessionId;
  external LUID ModifiedId;
  @Uint32() external int fCredentials;
  @Uint32() external int Flags;
  external SECPKG_BYTE_VECTOR PrincipalName;
  external SECPKG_BYTE_VECTOR PackageList;
  external SECPKG_BYTE_VECTOR MarshaledSuppliedCreds;
}

class SECPKG_SUPPLEMENTAL_CRED_ARRAY extends Struct {
  @Uint32() external int CredentialCount;
  @Array(1)
  external Array<SECPKG_SUPPLEMENTAL_CRED> Credentials;
}

class SECPKG_SURROGATE_LOGON_ENTRY extends Struct {
  external GUID Type;
  external Pointer Data;
}

class SECPKG_SURROGATE_LOGON extends Struct {
  @Uint32() external int Version;
  external LUID SurrogateLogonID;
  @Uint32() external int EntryCount;
  external Pointer<SECPKG_SURROGATE_LOGON_ENTRY> Entries;
}

class SECPKG_PRIMARY_CRED extends Struct {
  external LUID LogonId;
  external UNICODE_STRING DownlevelName;
  external UNICODE_STRING DomainName;
  external UNICODE_STRING Password;
  external UNICODE_STRING OldPassword;
  external Pointer UserSid;
  @Uint32() external int Flags;
  external UNICODE_STRING DnsDomainName;
  external UNICODE_STRING Upn;
  external UNICODE_STRING LogonServer;
  external UNICODE_STRING Spare1;
  external UNICODE_STRING Spare2;
  external UNICODE_STRING Spare3;
  external UNICODE_STRING Spare4;
}

class SECPKG_PRIMARY_CRED_EX extends Struct {
  external LUID LogonId;
  external UNICODE_STRING DownlevelName;
  external UNICODE_STRING DomainName;
  external UNICODE_STRING Password;
  external UNICODE_STRING OldPassword;
  external Pointer UserSid;
  @Uint32() external int Flags;
  external UNICODE_STRING DnsDomainName;
  external UNICODE_STRING Upn;
  external UNICODE_STRING LogonServer;
  external UNICODE_STRING Spare1;
  external UNICODE_STRING Spare2;
  external UNICODE_STRING Spare3;
  external UNICODE_STRING Spare4;
  @IntPtr() external int PackageId;
  external LUID PrevLogonId;
}

class SECPKG_PARAMETERS extends Struct {
  @Uint32() external int Version;
  @Uint32() external int MachineState;
  @Uint32() external int SetupMode;
  external Pointer DomainSid;
  external UNICODE_STRING DomainName;
  external UNICODE_STRING DnsDomainName;
  external GUID DomainGuid;
}

class SECPKG_GSS_INFO extends Struct {
  @Uint32() external int EncodedIdLength;
  @Array(4)
  external Array<Uint8> EncodedId;
}

class SECPKG_CONTEXT_THUNKS extends Struct {
  @Uint32() external int InfoLevelCount;
  @Array(1)
  external Array<Uint32> Levels;
}

class SECPKG_MUTUAL_AUTH_LEVEL extends Struct {
  @Uint32() external int MutualAuthLevel;
}

class SECPKG_WOW_CLIENT_DLL extends Struct {
  external UNICODE_STRING WowClientDllPath;
}

class SECPKG_SERIALIZED_OID extends Struct {
  @Uint32() external int OidLength;
  @Uint32() external int OidAttributes;
  @Array(32)
  external Array<Uint8> OidValue;
}

class SECPKG_EXTRA_OIDS extends Struct {
  @Uint32() external int OidCount;
  @Array(1)
  external Array<SECPKG_SERIALIZED_OID> Oids;
}

class SECPKG_NEGO2_INFO extends Struct {
  @Array(16)
  external Array<Uint8> AuthScheme;
  @Uint32() external int PackageFlags;
}

class SECPKG_EXTENDED_INFORMATION extends Struct {
  @Uint32() external int Class;
  @Uint32() external int Info;
}

class SECPKG_TARGETINFO extends Struct {
  external Pointer DomainSid;
  external Pointer<Utf16> ComputerName;
}

class SecPkgContext_SaslContext extends Struct {
  external Pointer SaslContext;
}

class SECURITY_USER_DATA extends Struct {
  external UNICODE_STRING UserName;
  external UNICODE_STRING LogonDomainName;
  external UNICODE_STRING LogonServer;
  external Pointer pSid;
}

class SECPKG_CALL_PACKAGE_PIN_DC_REQUEST extends Struct {
  @Uint32() external int MessageType;
  @Uint32() external int Flags;
  external UNICODE_STRING DomainName;
  external UNICODE_STRING DcName;
  @Uint32() external int DcFlags;
}

class SECPKG_CALL_PACKAGE_UNPIN_ALL_DCS_REQUEST extends Struct {
  @Uint32() external int MessageType;
  @Uint32() external int Flags;
}

class SECPKG_CALL_PACKAGE_TRANSFER_CRED_REQUEST extends Struct {
  @Uint32() external int MessageType;
  external LUID OriginLogonId;
  external LUID DestinationLogonId;
  @Uint32() external int Flags;
}

class SECPKG_REDIRECTED_LOGON_BUFFER extends Struct {
  external GUID RedirectedLogonGuid;
  @IntPtr() external int RedirectedLogonHandle;
  external PLSA_REDIRECTED_LOGON_INIT Init;
  external PLSA_REDIRECTED_LOGON_CALLBACK Callback;
  external PLSA_REDIRECTED_LOGON_CLEANUP_CALLBACK CleanupCallback;
  external PLSA_REDIRECTED_LOGON_GET_LOGON_CREDS GetLogonCreds;
  external PLSA_REDIRECTED_LOGON_GET_SUPP_CREDS GetSupplementalCreds;
}

class SECPKG_POST_LOGON_USER_INFO extends Struct {
  @Uint32() external int Flags;
  external LUID LogonId;
  external LUID LinkedLogonId;
}

class SECPKG_EVENT_PACKAGE_CHANGE extends Struct {
  @Uint32() external int ChangeType;
  @IntPtr() external int PackageId;
  external UNICODE_STRING PackageName;
}

class SECPKG_EVENT_ROLE_CHANGE extends Struct {
  @Uint32() external int PreviousRole;
  @Uint32() external int NewRole;
}

class SECPKG_EVENT_NOTIFY extends Struct {
  @Uint32() external int EventClass;
  @Uint32() external int Reserved;
  @Uint32() external int EventDataSize;
  external Pointer EventData;
  external Pointer PackageParameter;
}

class ENCRYPTED_CREDENTIALW extends Struct {
  external CREDENTIALW Cred;
  @Uint32() external int ClearCredentialBlobSize;
}

class SEC_WINNT_AUTH_IDENTITY32 extends Struct {
  @Uint32() external int User;
  @Uint32() external int UserLength;
  @Uint32() external int Domain;
  @Uint32() external int DomainLength;
  @Uint32() external int Password;
  @Uint32() external int PasswordLength;
  @Uint32() external int Flags;
}

class SEC_WINNT_AUTH_IDENTITY_EX32 extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Length;
  @Uint32() external int User;
  @Uint32() external int UserLength;
  @Uint32() external int Domain;
  @Uint32() external int DomainLength;
  @Uint32() external int Password;
  @Uint32() external int PasswordLength;
  @Uint32() external int Flags;
  @Uint32() external int PackageList;
  @Uint32() external int PackageListLength;
}

class LSA_SECPKG_FUNCTION_TABLE extends Struct {
  external PLSA_CREATE_LOGON_SESSION CreateLogonSession;
  external PLSA_DELETE_LOGON_SESSION DeleteLogonSession;
  external PLSA_ADD_CREDENTIAL AddCredential;
  external PLSA_GET_CREDENTIALS GetCredentials;
  external PLSA_DELETE_CREDENTIAL DeleteCredential;
  external PLSA_ALLOCATE_LSA_HEAP AllocateLsaHeap;
  external PLSA_FREE_LSA_HEAP FreeLsaHeap;
  external PLSA_ALLOCATE_CLIENT_BUFFER AllocateClientBuffer;
  external PLSA_FREE_CLIENT_BUFFER FreeClientBuffer;
  external PLSA_COPY_TO_CLIENT_BUFFER CopyToClientBuffer;
  external PLSA_COPY_FROM_CLIENT_BUFFER CopyFromClientBuffer;
  external PLSA_IMPERSONATE_CLIENT ImpersonateClient;
  external PLSA_UNLOAD_PACKAGE UnloadPackage;
  external PLSA_DUPLICATE_HANDLE DuplicateHandle;
  external PLSA_SAVE_SUPPLEMENTAL_CREDENTIALS SaveSupplementalCredentials;
  external PLSA_CREATE_THREAD CreateThread;
  external PLSA_GET_CLIENT_INFO GetClientInfo;
  external PLSA_REGISTER_NOTIFICATION RegisterNotification;
  external PLSA_CANCEL_NOTIFICATION CancelNotification;
  external PLSA_MAP_BUFFER MapBuffer;
  external PLSA_CREATE_TOKEN CreateToken;
  external PLSA_AUDIT_LOGON AuditLogon;
  external PLSA_CALL_PACKAGE CallPackage;
  external PLSA_FREE_LSA_HEAP FreeReturnBuffer;
  external PLSA_GET_CALL_INFO GetCallInfo;
  external PLSA_CALL_PACKAGEEX CallPackageEx;
  external PLSA_CREATE_SHARED_MEMORY CreateSharedMemory;
  external PLSA_ALLOCATE_SHARED_MEMORY AllocateSharedMemory;
  external PLSA_FREE_SHARED_MEMORY FreeSharedMemory;
  external PLSA_DELETE_SHARED_MEMORY DeleteSharedMemory;
  external PLSA_OPEN_SAM_USER OpenSamUser;
  external PLSA_GET_USER_CREDENTIALS GetUserCredentials;
  external PLSA_GET_USER_AUTH_DATA GetUserAuthData;
  external PLSA_CLOSE_SAM_USER CloseSamUser;
  external PLSA_CONVERT_AUTH_DATA_TO_TOKEN ConvertAuthDataToToken;
  external PLSA_CLIENT_CALLBACK ClientCallback;
  external PLSA_UPDATE_PRIMARY_CREDENTIALS UpdateCredentials;
  external PLSA_GET_AUTH_DATA_FOR_USER GetAuthDataForUser;
  external PLSA_CRACK_SINGLE_NAME CrackSingleName;
  external PLSA_AUDIT_ACCOUNT_LOGON AuditAccountLogon;
  external PLSA_CALL_PACKAGE_PASSTHROUGH CallPackagePassthrough;
  external CredReadFn CrediRead;
  external CredReadDomainCredentialsFn CrediReadDomainCredentials;
  external CredFreeCredentialsFn CrediFreeCredentials;
  external PLSA_PROTECT_MEMORY LsaProtectMemory;
  external PLSA_PROTECT_MEMORY LsaUnprotectMemory;
  external PLSA_OPEN_TOKEN_BY_LOGON_ID OpenTokenByLogonId;
  external PLSA_EXPAND_AUTH_DATA_FOR_DOMAIN ExpandAuthDataForDomain;
  external PLSA_ALLOCATE_PRIVATE_HEAP AllocatePrivateHeap;
  external PLSA_FREE_PRIVATE_HEAP FreePrivateHeap;
  external PLSA_CREATE_TOKEN_EX CreateTokenEx;
  external CredWriteFn CrediWrite;
  external CrediUnmarshalandDecodeStringFn CrediUnmarshalandDecodeString;
  external PLSA_PROTECT_MEMORY DummyFunction6;
  external PLSA_GET_EXTENDED_CALL_FLAGS GetExtendedCallFlags;
  external PLSA_DUPLICATE_HANDLE DuplicateTokenHandle;
  external PLSA_GET_SERVICE_ACCOUNT_PASSWORD GetServiceAccountPassword;
  external PLSA_PROTECT_MEMORY DummyFunction7;
  external PLSA_AUDIT_LOGON_EX AuditLogonEx;
  external PLSA_CHECK_PROTECTED_USER_BY_TOKEN CheckProtectedUserByToken;
  external PLSA_QUERY_CLIENT_REQUEST QueryClientRequest;
  external PLSA_GET_APP_MODE_INFO GetAppModeInfo;
  external PLSA_SET_APP_MODE_INFO SetAppModeInfo;
}

class SECPKG_DLL_FUNCTIONS extends Struct {
  external PLSA_ALLOCATE_LSA_HEAP AllocateHeap;
  external PLSA_FREE_LSA_HEAP FreeHeap;
  external PLSA_REGISTER_CALLBACK RegisterCallback;
  external PLSA_LOCATE_PKG_BY_ID LocatePackageById;
}

class SECPKG_FUNCTION_TABLE extends Struct {
  external PLSA_AP_INITIALIZE_PACKAGE InitializePackage;
  external PLSA_AP_LOGON_USER LogonUserA;
  external PLSA_AP_CALL_PACKAGE CallPackage;
  external PLSA_AP_LOGON_TERMINATED LogonTerminated;
  external PLSA_AP_CALL_PACKAGE CallPackageUntrusted;
  external PLSA_AP_CALL_PACKAGE_PASSTHROUGH CallPackagePassthrough;
  external PLSA_AP_LOGON_USER_EX LogonUserExA;
  external PLSA_AP_LOGON_USER_EX2 LogonUserEx2;
  external SpInitializeFn Initialize;
  external SpShutdownFn Shutdown;
  external SpGetInfoFn GetInfo;
  external SpAcceptCredentialsFn AcceptCredentials;
  external SpAcquireCredentialsHandleFn AcquireCredentialsHandleA;
  external SpQueryCredentialsAttributesFn QueryCredentialsAttributesA;
  external SpFreeCredentialsHandleFn FreeCredentialsHandle;
  external SpSaveCredentialsFn SaveCredentials;
  external SpGetCredentialsFn GetCredentials;
  external SpDeleteCredentialsFn DeleteCredentials;
  external SpInitLsaModeContextFn InitLsaModeContext;
  external SpAcceptLsaModeContextFn AcceptLsaModeContext;
  external SpDeleteContextFn DeleteContext;
  external SpApplyControlTokenFn ApplyControlToken;
  external SpGetUserInfoFn GetUserInfo;
  external SpGetExtendedInformationFn GetExtendedInformation;
  external SpQueryContextAttributesFn QueryContextAttributesA;
  external SpAddCredentialsFn AddCredentialsA;
  external SpSetExtendedInformationFn SetExtendedInformation;
  external SpSetContextAttributesFn SetContextAttributesA;
  external SpSetCredentialsAttributesFn SetCredentialsAttributesA;
  external SpChangeAccountPasswordFn ChangeAccountPasswordA;
  external SpQueryMetaDataFn QueryMetaData;
  external SpExchangeMetaDataFn ExchangeMetaData;
  external SpGetCredUIContextFn GetCredUIContext;
  external SpUpdateCredentialsFn UpdateCredentials;
  external SpValidateTargetInfoFn ValidateTargetInfo;
  external LSA_AP_POST_LOGON_USER PostLogonUser;
  external SpGetRemoteCredGuardLogonBufferFn GetRemoteCredGuardLogonBuffer;
  external SpGetRemoteCredGuardSupplementalCredsFn GetRemoteCredGuardSupplementalCreds;
  external SpGetTbalSupplementalCredsFn GetTbalSupplementalCreds;
  external PLSA_AP_LOGON_USER_EX3 LogonUserEx3;
  external PLSA_AP_PRE_LOGON_USER_SURROGATE PreLogonUserSurrogate;
  external PLSA_AP_POST_LOGON_USER_SURROGATE PostLogonUserSurrogate;
}

class SECPKG_USER_FUNCTION_TABLE extends Struct {
  external SpInstanceInitFn InstanceInit;
  external SpInitUserModeContextFn InitUserModeContext;
  external SpMakeSignatureFn MakeSignature;
  external SpVerifySignatureFn VerifySignature;
  external SpSealMessageFn SealMessage;
  external SpUnsealMessageFn UnsealMessage;
  external SpGetContextTokenFn GetContextToken;
  external SpQueryContextAttributesFn QueryContextAttributesA;
  external SpCompleteAuthTokenFn CompleteAuthToken;
  external SpDeleteContextFn DeleteUserModeContext;
  external SpFormatCredentialsFn FormatCredentials;
  external SpMarshallSupplementalCredsFn MarshallSupplementalCreds;
  external SpExportSecurityContextFn ExportContext;
  external SpImportSecurityContextFn ImportContext;
}

class KSEC_LIST_ENTRY extends Struct {
  external LIST_ENTRY List;
  @Int32() external int RefCount;
  @Uint32() external int Signature;
  external Pointer OwningList;
  external Pointer Reserved;
}

class SECPKG_KERNEL_FUNCTIONS extends Struct {
  external PLSA_ALLOCATE_LSA_HEAP AllocateHeap;
  external PLSA_FREE_LSA_HEAP FreeHeap;
  external PKSEC_CREATE_CONTEXT_LIST CreateContextList;
  external PKSEC_INSERT_LIST_ENTRY InsertListEntry;
  external PKSEC_REFERENCE_LIST_ENTRY ReferenceListEntry;
  external PKSEC_DEREFERENCE_LIST_ENTRY DereferenceListEntry;
  external PKSEC_SERIALIZE_WINNT_AUTH_DATA SerializeWinntAuthData;
  external PKSEC_SERIALIZE_SCHANNEL_AUTH_DATA SerializeSchannelAuthData;
  external PKSEC_LOCATE_PKG_BY_ID LocatePackageById;
}

class SECPKG_KERNEL_FUNCTION_TABLE extends Struct {
  external KspInitPackageFn Initialize;
  external KspDeleteContextFn DeleteContext;
  external KspInitContextFn InitContext;
  external KspMapHandleFn MapHandle;
  external KspMakeSignatureFn Sign;
  external KspVerifySignatureFn Verify;
  external KspSealMessageFn Seal;
  external KspUnsealMessageFn Unseal;
  external KspGetTokenFn GetToken;
  external KspQueryAttributesFn QueryAttributes;
  external KspCompleteTokenFn CompleteToken;
  external SpExportSecurityContextFn ExportContext;
  external SpImportSecurityContextFn ImportContext;
  external KspSetPagingModeFn SetPackagePagingMode;
  external KspSerializeAuthDataFn SerializeAuthData;
}

class SecPkgCred_SupportedAlgs extends Struct {
  @Uint32() external int cSupportedAlgs;
  external Pointer<Uint32> palgSupportedAlgs;
}

class SecPkgCred_CipherStrengths extends Struct {
  @Uint32() external int dwMinimumCipherStrength;
  @Uint32() external int dwMaximumCipherStrength;
}

class SecPkgCred_SupportedProtocols extends Struct {
  @Uint32() external int grbitProtocol;
}

class SecPkgCred_ClientCertPolicy extends Struct {
  @Uint32() external int dwFlags;
  external GUID guidPolicyId;
  @Uint32() external int dwCertFlags;
  @Uint32() external int dwUrlRetrievalTimeout;
  @Int32() external int fCheckRevocationFreshnessTime;
  @Uint32() external int dwRevocationFreshnessTime;
  @Int32() external int fOmitUsageCheck;
  external Pointer<Utf16> pwszSslCtlStoreName;
  external Pointer<Utf16> pwszSslCtlIdentifier;
}

class CMS_KEY_INFO extends Struct {
  @Uint32() external int dwVersion;
  @Uint32() external int Algid;
  external Pointer<Uint8> pbOID;
  @Uint32() external int cbOID;
}

class HMAC_Info extends Struct {
  @Uint32() external int HashAlgid;
  external Pointer<Uint8> pbInnerString;
  @Uint32() external int cbInnerString;
  external Pointer<Uint8> pbOuterString;
  @Uint32() external int cbOuterString;
}

class SCHANNEL_ALG extends Struct {
  @Uint32() external int dwUse;
  @Uint32() external int Algid;
  @Uint32() external int cBits;
  @Uint32() external int dwFlags;
  @Uint32() external int dwReserved;
}

class PROV_ENUMALGS extends Struct {
  @Uint32() external int aiAlgid;
  @Uint32() external int dwBitLen;
  @Uint32() external int dwNameLen;
  @Array(20)
  external Array<Int8> szName;
}

class PROV_ENUMALGS_EX extends Struct {
  @Uint32() external int aiAlgid;
  @Uint32() external int dwDefaultLen;
  @Uint32() external int dwMinLen;
  @Uint32() external int dwMaxLen;
  @Uint32() external int dwProtocols;
  @Uint32() external int dwNameLen;
  @Array(20)
  external Array<Int8> szName;
  @Uint32() external int dwLongNameLen;
  @Array(40)
  external Array<Int8> szLongName;
}

class PUBLICKEYSTRUC extends Struct {
  @Uint8() external int bType;
  @Uint8() external int bVersion;
  @Uint16() external int reserved;
  @Uint32() external int aiKeyAlg;
}

class RSAPUBKEY extends Struct {
  @Uint32() external int magic;
  @Uint32() external int bitlen;
  @Uint32() external int pubexp;
}

class PUBKEY extends Struct {
  @Uint32() external int magic;
  @Uint32() external int bitlen;
}

class DSSSEED extends Struct {
  @Uint32() external int counter;
  @Array(20)
  external Array<Uint8> seed;
}

class PUBKEYVER3 extends Struct {
  @Uint32() external int magic;
  @Uint32() external int bitlenP;
  @Uint32() external int bitlenQ;
  @Uint32() external int bitlenJ;
  external DSSSEED DSSSeed;
}

class PRIVKEYVER3 extends Struct {
  @Uint32() external int magic;
  @Uint32() external int bitlenP;
  @Uint32() external int bitlenQ;
  @Uint32() external int bitlenJ;
  @Uint32() external int bitlenX;
  external DSSSEED DSSSeed;
}

class KEY_TYPE_SUBTYPE extends Struct {
  @Uint32() external int dwKeySpec;
  external GUID Type;
  external GUID Subtype;
}

class CERT_FORTEZZA_DATA_PROP extends Struct {
  @Array(8)
  external Array<Uint8> SerialNumber;
  @Int32() external int CertIndex;
  @Array(36)
  external Array<Uint8> CertLabel;
}

class CRYPT_RC4_KEY_STATE extends Struct {
  @Array(16)
  external Array<Uint8> Key;
  @Array(129)
  external Array<Uint8> SBox;
  @Uint8() external int i;
  @Uint8() external int j;
}

class CRYPT_DES_KEY_STATE extends Struct {
  @Array(8)
  external Array<Uint8> Key;
  @Array(8)
  external Array<Uint8> IV;
  @Array(8)
  external Array<Uint8> Feedback;
}

class CRYPT_3DES_KEY_STATE extends Struct {
  @Array(24)
  external Array<Uint8> Key;
  @Array(8)
  external Array<Uint8> IV;
  @Array(8)
  external Array<Uint8> Feedback;
}

class CRYPT_AES_128_KEY_STATE extends Struct {
  @Array(16)
  external Array<Uint8> Key;
  @Array(16)
  external Array<Uint8> IV;
  @Array(128)
  external Array<Uint8> EncryptionState;
  @Array(128)
  external Array<Uint8> DecryptionState;
  @Array(16)
  external Array<Uint8> Feedback;
}

class CRYPT_AES_256_KEY_STATE extends Struct {
  @Array(32)
  external Array<Uint8> Key;
  @Array(16)
  external Array<Uint8> IV;
  @Array(128)
  external Array<Uint8> EncryptionState;
  @Array(128)
  external Array<Uint8> DecryptionState;
  @Array(16)
  external Array<Uint8> Feedback;
}

class CRYPTOAPI_BLOB extends Struct {
  @Uint32() external int cbData;
  external Pointer<Uint8> pbData;
}

class CMS_DH_KEY_INFO extends Struct {
  @Uint32() external int dwVersion;
  @Uint32() external int Algid;
  external Pointer<Utf8> pszContentEncObjId;
  external CRYPTOAPI_BLOB PubInfo;
  external Pointer pReserved;
}

class BCRYPT_KEY_LENGTHS_STRUCT extends Struct {
  @Uint32() external int dwMinLength;
  @Uint32() external int dwMaxLength;
  @Uint32() external int dwIncrement;
}

class BCRYPT_OID extends Struct {
  @Uint32() external int cbOID;
  external Pointer<Uint8> pbOID;
}

class BCRYPT_OID_LIST extends Struct {
  @Uint32() external int dwOIDCount;
  external Pointer<BCRYPT_OID> pOIDs;
}

class BCRYPT_PKCS1_PADDING_INFO extends Struct {
  external Pointer<Utf16> pszAlgId;
}

class BCRYPT_PSS_PADDING_INFO extends Struct {
  external Pointer<Utf16> pszAlgId;
  @Uint32() external int cbSalt;
}

class BCRYPT_OAEP_PADDING_INFO extends Struct {
  external Pointer<Utf16> pszAlgId;
  external Pointer<Uint8> pbLabel;
  @Uint32() external int cbLabel;
}

class BCRYPT_AUTHENTICATED_CIPHER_MODE_INFO extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int dwInfoVersion;
  external Pointer<Uint8> pbNonce;
  @Uint32() external int cbNonce;
  external Pointer<Uint8> pbAuthData;
  @Uint32() external int cbAuthData;
  external Pointer<Uint8> pbTag;
  @Uint32() external int cbTag;
  external Pointer<Uint8> pbMacContext;
  @Uint32() external int cbMacContext;
  @Uint32() external int cbAAD;
  @Uint64() external int cbData;
  @Uint32() external int dwFlags;
}

class BCryptBuffer extends Struct {
  @Uint32() external int cbBuffer;
  @Uint32() external int BufferType;
  external Pointer pvBuffer;
}

class BCryptBufferDesc extends Struct {
  @Uint32() external int ulVersion;
  @Uint32() external int cBuffers;
  external Pointer<BCryptBuffer> pBuffers;
}

class BCRYPT_KEY_BLOB extends Struct {
  @Uint32() external int Magic;
}

class BCRYPT_RSAKEY_BLOB extends Struct {
  @Uint32() external int Magic;
  @Uint32() external int BitLength;
  @Uint32() external int cbPublicExp;
  @Uint32() external int cbModulus;
  @Uint32() external int cbPrime1;
  @Uint32() external int cbPrime2;
}

class BCRYPT_ECCKEY_BLOB extends Struct {
  @Uint32() external int dwMagic;
  @Uint32() external int cbKey;
}

class SSL_ECCKEY_BLOB extends Struct {
  @Uint32() external int dwCurveType;
  @Uint32() external int cbKey;
}

class BCRYPT_ECCFULLKEY_BLOB extends Struct {
  @Uint32() external int dwMagic;
  @Uint32() external int dwVersion;
  @Uint32() external int dwCurveType;
  @Uint32() external int dwCurveGenerationAlgId;
  @Uint32() external int cbFieldLength;
  @Uint32() external int cbSubgroupOrder;
  @Uint32() external int cbCofactor;
  @Uint32() external int cbSeed;
}

class BCRYPT_DH_KEY_BLOB extends Struct {
  @Uint32() external int dwMagic;
  @Uint32() external int cbKey;
}

class BCRYPT_DH_PARAMETER_HEADER extends Struct {
  @Uint32() external int cbLength;
  @Uint32() external int dwMagic;
  @Uint32() external int cbKeyLength;
}

class BCRYPT_DSA_KEY_BLOB extends Struct {
  @Uint32() external int dwMagic;
  @Uint32() external int cbKey;
  @Array(4)
  external Array<Uint8> Count;
  @Array(20)
  external Array<Uint8> Seed;
  @Array(20)
  external Array<Uint8> q;
}

class BCRYPT_DSA_KEY_BLOB_V2 extends Struct {
  @Uint32() external int dwMagic;
  @Uint32() external int cbKey;
  @Uint32() external int hashAlgorithm;
  @Uint32() external int standardVersion;
  @Uint32() external int cbSeedLength;
  @Uint32() external int cbGroupSize;
  @Array(4)
  external Array<Uint8> Count;
}

class BCRYPT_KEY_DATA_BLOB_HEADER extends Struct {
  @Uint32() external int dwMagic;
  @Uint32() external int dwVersion;
  @Uint32() external int cbKeyData;
}

class BCRYPT_DSA_PARAMETER_HEADER extends Struct {
  @Uint32() external int cbLength;
  @Uint32() external int dwMagic;
  @Uint32() external int cbKeyLength;
  @Array(4)
  external Array<Uint8> Count;
  @Array(20)
  external Array<Uint8> Seed;
  @Array(20)
  external Array<Uint8> q;
}

class BCRYPT_DSA_PARAMETER_HEADER_V2 extends Struct {
  @Uint32() external int cbLength;
  @Uint32() external int dwMagic;
  @Uint32() external int cbKeyLength;
  @Uint32() external int hashAlgorithm;
  @Uint32() external int standardVersion;
  @Uint32() external int cbSeedLength;
  @Uint32() external int cbGroupSize;
  @Array(4)
  external Array<Uint8> Count;
}

class BCRYPT_ECC_CURVE_NAMES extends Struct {
  @Uint32() external int dwEccCurveNames;
  external Pointer<Pointer<Utf16>> pEccCurveNames;
}

class BCRYPT_MULTI_HASH_OPERATION extends Struct {
  @Uint32() external int iHash;
  @Uint32() external int hashOperation;
  external Pointer<Uint8> pbBuffer;
  @Uint32() external int cbBuffer;
}

class BCRYPT_MULTI_OBJECT_LENGTH_STRUCT extends Struct {
  @Uint32() external int cbPerObject;
  @Uint32() external int cbPerElement;
}

class BCRYPT_ALGORITHM_IDENTIFIER extends Struct {
  external Pointer<Utf16> pszName;
  @Uint32() external int dwClass;
  @Uint32() external int dwFlags;
}

class BCRYPT_PROVIDER_NAME extends Struct {
  external Pointer<Utf16> pszProviderName;
}

class BCRYPT_INTERFACE_VERSION extends Struct {
  @Uint16() external int MajorVersion;
  @Uint16() external int MinorVersion;
}

class CRYPT_INTERFACE_REG extends Struct {
  @Uint32() external int dwInterface;
  @Uint32() external int dwFlags;
  @Uint32() external int cFunctions;
  external Pointer<Pointer<Utf16>> rgpszFunctions;
}

class CRYPT_IMAGE_REG extends Struct {
  external Pointer<Utf16> pszImage;
  @Uint32() external int cInterfaces;
  external Pointer<Pointer<CRYPT_INTERFACE_REG>> rgpInterfaces;
}

class CRYPT_PROVIDER_REG extends Struct {
  @Uint32() external int cAliases;
  external Pointer<Pointer<Utf16>> rgpszAliases;
  external Pointer<CRYPT_IMAGE_REG> pUM;
  external Pointer<CRYPT_IMAGE_REG> pKM;
}

class CRYPT_PROVIDERS extends Struct {
  @Uint32() external int cProviders;
  external Pointer<Pointer<Utf16>> rgpszProviders;
}

class CRYPT_CONTEXT_CONFIG extends Struct {
  @Uint32() external int dwFlags;
  @Uint32() external int dwReserved;
}

class CRYPT_CONTEXT_FUNCTION_CONFIG extends Struct {
  @Uint32() external int dwFlags;
  @Uint32() external int dwReserved;
}

class CRYPT_CONTEXTS extends Struct {
  @Uint32() external int cContexts;
  external Pointer<Pointer<Utf16>> rgpszContexts;
}

class CRYPT_CONTEXT_FUNCTIONS extends Struct {
  @Uint32() external int cFunctions;
  external Pointer<Pointer<Utf16>> rgpszFunctions;
}

class CRYPT_CONTEXT_FUNCTION_PROVIDERS extends Struct {
  @Uint32() external int cProviders;
  external Pointer<Pointer<Utf16>> rgpszProviders;
}

class CRYPT_PROPERTY_REF extends Struct {
  external Pointer<Utf16> pszProperty;
  @Uint32() external int cbValue;
  external Pointer<Uint8> pbValue;
}

class CRYPT_IMAGE_REF extends Struct {
  external Pointer<Utf16> pszImage;
  @Uint32() external int dwFlags;
}

class CRYPT_PROVIDER_REF extends Struct {
  @Uint32() external int dwInterface;
  external Pointer<Utf16> pszFunction;
  external Pointer<Utf16> pszProvider;
  @Uint32() external int cProperties;
  external Pointer<Pointer<CRYPT_PROPERTY_REF>> rgpProperties;
  external Pointer<CRYPT_IMAGE_REF> pUM;
  external Pointer<CRYPT_IMAGE_REF> pKM;
}

class CRYPT_PROVIDER_REFS extends Struct {
  @Uint32() external int cProviders;
  external Pointer<Pointer<CRYPT_PROVIDER_REF>> rgpProviders;
}

class NCRYPT_ALLOC_PARA extends Struct {
  @Uint32() external int cbSize;
  external PFN_NCRYPT_ALLOC pfnAlloc;
  external PFN_NCRYPT_FREE pfnFree;
}

class NCRYPT_CIPHER_PADDING_INFO extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int dwFlags;
  external Pointer<Uint8> pbIV;
  @Uint32() external int cbIV;
  external Pointer<Uint8> pbOtherInfo;
  @Uint32() external int cbOtherInfo;
}

class NCRYPT_PLATFORM_ATTEST_PADDING_INFO extends Struct {
  @Uint32() external int magic;
  @Uint32() external int pcrMask;
}

class NCRYPT_KEY_ATTEST_PADDING_INFO extends Struct {
  @Uint32() external int magic;
  external Pointer<Uint8> pbKeyBlob;
  @Uint32() external int cbKeyBlob;
  external Pointer<Uint8> pbKeyAuth;
  @Uint32() external int cbKeyAuth;
}

class NCRYPT_ISOLATED_KEY_ATTESTED_ATTRIBUTES extends Struct {
  @Uint32() external int Version;
  @Uint32() external int Flags;
  @Uint32() external int cbPublicKeyBlob;
}

class NCRYPT_VSM_KEY_ATTESTATION_STATEMENT extends Struct {
  @Uint32() external int Magic;
  @Uint32() external int Version;
  @Uint32() external int cbSignature;
  @Uint32() external int cbReport;
  @Uint32() external int cbAttributes;
}

class NCRYPT_VSM_KEY_ATTESTATION_CLAIM_RESTRICTIONS extends Struct {
  @Uint32() external int Version;
  @Uint64() external int TrustletId;
  @Uint32() external int MinSvn;
  @Uint32() external int FlagsMask;
  @Uint32() external int FlagsExpected;
  @Uint32() external int _bitfield;
}

class NCRYPT_EXPORTED_ISOLATED_KEY_HEADER extends Struct {
  @Uint32() external int Version;
  @Uint32() external int KeyUsage;
  @Uint32() external int _bitfield;
  @Uint32() external int cbAlgName;
  @Uint32() external int cbNonce;
  @Uint32() external int cbAuthTag;
  @Uint32() external int cbWrappingKey;
  @Uint32() external int cbIsolatedKey;
}

class NCRYPT_EXPORTED_ISOLATED_KEY_ENVELOPE extends Struct {
  external NCRYPT_EXPORTED_ISOLATED_KEY_HEADER Header;
}

class __NCRYPT_PCP_TPM_WEB_AUTHN_ATTESTATION_STATEMENT extends Struct {
  @Uint32() external int Magic;
  @Uint32() external int Version;
  @Uint32() external int HeaderSize;
  @Uint32() external int cbCertifyInfo;
  @Uint32() external int cbSignature;
  @Uint32() external int cbTpmPublic;
}

class NCRYPT_TPM_PLATFORM_ATTESTATION_STATEMENT extends Struct {
  @Uint32() external int Magic;
  @Uint32() external int Version;
  @Uint32() external int pcrAlg;
  @Uint32() external int cbSignature;
  @Uint32() external int cbQuote;
  @Uint32() external int cbPcrs;
}

class NCryptAlgorithmName extends Struct {
  external Pointer<Utf16> pszName;
  @Uint32() external int dwClass;
  @Uint32() external int dwAlgOperations;
  @Uint32() external int dwFlags;
}

class NCryptKeyName extends Struct {
  external Pointer<Utf16> pszName;
  external Pointer<Utf16> pszAlgid;
  @Uint32() external int dwLegacyKeySpec;
  @Uint32() external int dwFlags;
}

class NCryptProviderName extends Struct {
  external Pointer<Utf16> pszName;
  external Pointer<Utf16> pszComment;
}

class NCRYPT_UI_POLICY extends Struct {
  @Uint32() external int dwVersion;
  @Uint32() external int dwFlags;
  external Pointer<Utf16> pszCreationTitle;
  external Pointer<Utf16> pszFriendlyName;
  external Pointer<Utf16> pszDescription;
}

class __NCRYPT_KEY_ACCESS_POLICY_BLOB extends Struct {
  @Uint32() external int dwVersion;
  @Uint32() external int dwPolicyFlags;
  @Uint32() external int cbUserSid;
  @Uint32() external int cbApplicationSid;
}

class NCRYPT_SUPPORTED_LENGTHS extends Struct {
  @Uint32() external int dwMinLength;
  @Uint32() external int dwMaxLength;
  @Uint32() external int dwIncrement;
  @Uint32() external int dwDefaultLength;
}

class __NCRYPT_PCP_HMAC_AUTH_SIGNATURE_INFO extends Struct {
  @Uint32() external int dwVersion;
  @Int32() external int iExpiration;
  @Array(32)
  external Array<Uint8> pabNonce;
  @Array(32)
  external Array<Uint8> pabPolicyRef;
  @Array(32)
  external Array<Uint8> pabHMAC;
}

class __NCRYPT_PCP_TPM_FW_VERSION_INFO extends Struct {
  @Uint16() external int major1;
  @Uint16() external int major2;
  @Uint16() external int minor1;
  @Uint16() external int minor2;
}

class __NCRYPT_PCP_RAW_POLICYDIGEST extends Struct {
  @Uint32() external int dwVersion;
  @Uint32() external int cbDigest;
}

class NCRYPT_KEY_BLOB_HEADER extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int dwMagic;
  @Uint32() external int cbAlgName;
  @Uint32() external int cbKeyData;
}

class NCRYPT_TPM_LOADABLE_KEY_BLOB_HEADER extends Struct {
  @Uint32() external int magic;
  @Uint32() external int cbHeader;
  @Uint32() external int cbPublic;
  @Uint32() external int cbPrivate;
  @Uint32() external int cbName;
}

class CRYPT_BIT_BLOB extends Struct {
  @Uint32() external int cbData;
  external Pointer<Uint8> pbData;
  @Uint32() external int cUnusedBits;
}

class CRYPT_ALGORITHM_IDENTIFIER extends Struct {
  external Pointer<Utf8> pszObjId;
  external CRYPTOAPI_BLOB Parameters;
}

class CRYPT_OBJID_TABLE extends Struct {
  @Uint32() external int dwAlgId;
  external Pointer<Utf8> pszObjId;
}

class CRYPT_HASH_INFO extends Struct {
  external CRYPT_ALGORITHM_IDENTIFIER HashAlgorithm;
  external CRYPTOAPI_BLOB Hash;
}

class CERT_EXTENSION extends Struct {
  external Pointer<Utf8> pszObjId;
  @Int32() external int fCritical;
  external CRYPTOAPI_BLOB Value;
}

class CRYPT_ATTRIBUTE_TYPE_VALUE extends Struct {
  external Pointer<Utf8> pszObjId;
  external CRYPTOAPI_BLOB Value;
}

class CRYPT_ATTRIBUTE extends Struct {
  external Pointer<Utf8> pszObjId;
  @Uint32() external int cValue;
  external Pointer<CRYPTOAPI_BLOB> rgValue;
}

class CRYPT_ATTRIBUTES extends Struct {
  @Uint32() external int cAttr;
  external Pointer<CRYPT_ATTRIBUTE> rgAttr;
}

class CERT_RDN_ATTR extends Struct {
  external Pointer<Utf8> pszObjId;
  @Uint32() external int dwValueType;
  external CRYPTOAPI_BLOB Value;
}

class CERT_RDN extends Struct {
  @Uint32() external int cRDNAttr;
  external Pointer<CERT_RDN_ATTR> rgRDNAttr;
}

class CERT_NAME_INFO extends Struct {
  @Uint32() external int cRDN;
  external Pointer<CERT_RDN> rgRDN;
}

class CERT_NAME_VALUE extends Struct {
  @Uint32() external int dwValueType;
  external CRYPTOAPI_BLOB Value;
}

class CERT_PUBLIC_KEY_INFO extends Struct {
  external CRYPT_ALGORITHM_IDENTIFIER Algorithm;
  external CRYPT_BIT_BLOB PublicKey;
}

class CRYPT_ECC_PRIVATE_KEY_INFO extends Struct {
  @Uint32() external int dwVersion;
  external CRYPTOAPI_BLOB PrivateKey;
  external Pointer<Utf8> szCurveOid;
  external CRYPT_BIT_BLOB PublicKey;
}

class CRYPT_PRIVATE_KEY_INFO extends Struct {
  @Uint32() external int Version;
  external CRYPT_ALGORITHM_IDENTIFIER Algorithm;
  external CRYPTOAPI_BLOB PrivateKey;
  external Pointer<CRYPT_ATTRIBUTES> pAttributes;
}

class CRYPT_ENCRYPTED_PRIVATE_KEY_INFO extends Struct {
  external CRYPT_ALGORITHM_IDENTIFIER EncryptionAlgorithm;
  external CRYPTOAPI_BLOB EncryptedPrivateKey;
}

class CRYPT_PKCS8_IMPORT_PARAMS extends Struct {
  external CRYPTOAPI_BLOB PrivateKey;
  external PCRYPT_RESOLVE_HCRYPTPROV_FUNC pResolvehCryptProvFunc;
  external Pointer pVoidResolveFunc;
  external PCRYPT_DECRYPT_PRIVATE_KEY_FUNC pDecryptPrivateKeyFunc;
  external Pointer pVoidDecryptFunc;
}

class CRYPT_PKCS8_EXPORT_PARAMS extends Struct {
  @IntPtr() external int hCryptProv;
  @Uint32() external int dwKeySpec;
  external Pointer<Utf8> pszPrivateKeyObjId;
  external PCRYPT_ENCRYPT_PRIVATE_KEY_FUNC pEncryptPrivateKeyFunc;
  external Pointer pVoidEncryptFunc;
}

class CERT_INFO extends Struct {
  @Uint32() external int dwVersion;
  external CRYPTOAPI_BLOB SerialNumber;
  external CRYPT_ALGORITHM_IDENTIFIER SignatureAlgorithm;
  external CRYPTOAPI_BLOB Issuer;
  external FILETIME NotBefore;
  external FILETIME NotAfter;
  external CRYPTOAPI_BLOB Subject;
  external CERT_PUBLIC_KEY_INFO SubjectPublicKeyInfo;
  external CRYPT_BIT_BLOB IssuerUniqueId;
  external CRYPT_BIT_BLOB SubjectUniqueId;
  @Uint32() external int cExtension;
  external Pointer<CERT_EXTENSION> rgExtension;
}

class CRL_ENTRY extends Struct {
  external CRYPTOAPI_BLOB SerialNumber;
  external FILETIME RevocationDate;
  @Uint32() external int cExtension;
  external Pointer<CERT_EXTENSION> rgExtension;
}

class CRL_INFO extends Struct {
  @Uint32() external int dwVersion;
  external CRYPT_ALGORITHM_IDENTIFIER SignatureAlgorithm;
  external CRYPTOAPI_BLOB Issuer;
  external FILETIME ThisUpdate;
  external FILETIME NextUpdate;
  @Uint32() external int cCRLEntry;
  external Pointer<CRL_ENTRY> rgCRLEntry;
  @Uint32() external int cExtension;
  external Pointer<CERT_EXTENSION> rgExtension;
}

class CERT_OR_CRL_BLOB extends Struct {
  @Uint32() external int dwChoice;
  @Uint32() external int cbEncoded;
  external Pointer<Uint8> pbEncoded;
}

class CERT_OR_CRL_BUNDLE extends Struct {
  @Uint32() external int cItem;
  external Pointer<CERT_OR_CRL_BLOB> rgItem;
}

class CERT_REQUEST_INFO extends Struct {
  @Uint32() external int dwVersion;
  external CRYPTOAPI_BLOB Subject;
  external CERT_PUBLIC_KEY_INFO SubjectPublicKeyInfo;
  @Uint32() external int cAttribute;
  external Pointer<CRYPT_ATTRIBUTE> rgAttribute;
}

class CERT_KEYGEN_REQUEST_INFO extends Struct {
  @Uint32() external int dwVersion;
  external CERT_PUBLIC_KEY_INFO SubjectPublicKeyInfo;
  external Pointer<Utf16> pwszChallengeString;
}

class CERT_SIGNED_CONTENT_INFO extends Struct {
  external CRYPTOAPI_BLOB ToBeSigned;
  external CRYPT_ALGORITHM_IDENTIFIER SignatureAlgorithm;
  external CRYPT_BIT_BLOB Signature;
}

class CTL_USAGE extends Struct {
  @Uint32() external int cUsageIdentifier;
  external Pointer<Pointer<Utf8>> rgpszUsageIdentifier;
}

class CTL_ENTRY extends Struct {
  external CRYPTOAPI_BLOB SubjectIdentifier;
  @Uint32() external int cAttribute;
  external Pointer<CRYPT_ATTRIBUTE> rgAttribute;
}

class CTL_INFO extends Struct {
  @Uint32() external int dwVersion;
  external CTL_USAGE SubjectUsage;
  external CRYPTOAPI_BLOB ListIdentifier;
  external CRYPTOAPI_BLOB SequenceNumber;
  external FILETIME ThisUpdate;
  external FILETIME NextUpdate;
  external CRYPT_ALGORITHM_IDENTIFIER SubjectAlgorithm;
  @Uint32() external int cCTLEntry;
  external Pointer<CTL_ENTRY> rgCTLEntry;
  @Uint32() external int cExtension;
  external Pointer<CERT_EXTENSION> rgExtension;
}

class CRYPT_TIME_STAMP_REQUEST_INFO extends Struct {
  external Pointer<Utf8> pszTimeStampAlgorithm;
  external Pointer<Utf8> pszContentType;
  external CRYPTOAPI_BLOB Content;
  @Uint32() external int cAttribute;
  external Pointer<CRYPT_ATTRIBUTE> rgAttribute;
}

class CRYPT_ENROLLMENT_NAME_VALUE_PAIR extends Struct {
  external Pointer<Utf16> pwszName;
  external Pointer<Utf16> pwszValue;
}

class CRYPT_CSP_PROVIDER extends Struct {
  @Uint32() external int dwKeySpec;
  external Pointer<Utf16> pwszProviderName;
  external CRYPT_BIT_BLOB Signature;
}

class CRYPT_ENCODE_PARA extends Struct {
  @Uint32() external int cbSize;
  external PFN_CRYPT_ALLOC pfnAlloc;
  external PFN_CRYPT_FREE pfnFree;
}

class CRYPT_DECODE_PARA extends Struct {
  @Uint32() external int cbSize;
  external PFN_CRYPT_ALLOC pfnAlloc;
  external PFN_CRYPT_FREE pfnFree;
}

class CERT_EXTENSIONS extends Struct {
  @Uint32() external int cExtension;
  external Pointer<CERT_EXTENSION> rgExtension;
}

class CERT_AUTHORITY_KEY_ID_INFO extends Struct {
  external CRYPTOAPI_BLOB KeyId;
  external CRYPTOAPI_BLOB CertIssuer;
  external CRYPTOAPI_BLOB CertSerialNumber;
}

class CERT_PRIVATE_KEY_VALIDITY extends Struct {
  external FILETIME NotBefore;
  external FILETIME NotAfter;
}

class CERT_KEY_ATTRIBUTES_INFO extends Struct {
  external CRYPTOAPI_BLOB KeyId;
  external CRYPT_BIT_BLOB IntendedKeyUsage;
  external Pointer<CERT_PRIVATE_KEY_VALIDITY> pPrivateKeyUsagePeriod;
}

class CERT_POLICY_ID extends Struct {
  @Uint32() external int cCertPolicyElementId;
  external Pointer<Pointer<Utf8>> rgpszCertPolicyElementId;
}

class CERT_KEY_USAGE_RESTRICTION_INFO extends Struct {
  @Uint32() external int cCertPolicyId;
  external Pointer<CERT_POLICY_ID> rgCertPolicyId;
  external CRYPT_BIT_BLOB RestrictedKeyUsage;
}

class CERT_OTHER_NAME extends Struct {
  external Pointer<Utf8> pszObjId;
  external CRYPTOAPI_BLOB Value;
}

class CERT_ALT_NAME_ENTRY extends Struct {
  @Uint32() external int dwAltNameChoice;
  @Uint32() external int Anonymous;
}

class CERT_ALT_NAME_INFO extends Struct {
  @Uint32() external int cAltEntry;
  external Pointer<CERT_ALT_NAME_ENTRY> rgAltEntry;
}

class CERT_BASIC_CONSTRAINTS_INFO extends Struct {
  external CRYPT_BIT_BLOB SubjectType;
  @Int32() external int fPathLenConstraint;
  @Uint32() external int dwPathLenConstraint;
  @Uint32() external int cSubtreesConstraint;
  external Pointer<CRYPTOAPI_BLOB> rgSubtreesConstraint;
}

class CERT_BASIC_CONSTRAINTS2_INFO extends Struct {
  @Int32() external int fCA;
  @Int32() external int fPathLenConstraint;
  @Uint32() external int dwPathLenConstraint;
}

class CERT_POLICY_QUALIFIER_INFO extends Struct {
  external Pointer<Utf8> pszPolicyQualifierId;
  external CRYPTOAPI_BLOB Qualifier;
}

class CERT_POLICY_INFO extends Struct {
  external Pointer<Utf8> pszPolicyIdentifier;
  @Uint32() external int cPolicyQualifier;
  external Pointer<CERT_POLICY_QUALIFIER_INFO> rgPolicyQualifier;
}

class CERT_POLICIES_INFO extends Struct {
  @Uint32() external int cPolicyInfo;
  external Pointer<CERT_POLICY_INFO> rgPolicyInfo;
}

class CERT_POLICY_QUALIFIER_NOTICE_REFERENCE extends Struct {
  external Pointer<Utf8> pszOrganization;
  @Uint32() external int cNoticeNumbers;
  external Pointer<Int32> rgNoticeNumbers;
}

class CERT_POLICY_QUALIFIER_USER_NOTICE extends Struct {
  external Pointer<CERT_POLICY_QUALIFIER_NOTICE_REFERENCE> pNoticeReference;
  external Pointer<Utf16> pszDisplayText;
}

class CPS_URLS extends Struct {
  external Pointer<Utf16> pszURL;
  external Pointer<CRYPT_ALGORITHM_IDENTIFIER> pAlgorithm;
  external Pointer<CRYPTOAPI_BLOB> pDigest;
}

class CERT_POLICY95_QUALIFIER1 extends Struct {
  external Pointer<Utf16> pszPracticesReference;
  external Pointer<Utf8> pszNoticeIdentifier;
  external Pointer<Utf8> pszNSINoticeIdentifier;
  @Uint32() external int cCPSURLs;
  external Pointer<CPS_URLS> rgCPSURLs;
}

class CERT_POLICY_MAPPING extends Struct {
  external Pointer<Utf8> pszIssuerDomainPolicy;
  external Pointer<Utf8> pszSubjectDomainPolicy;
}

class CERT_POLICY_MAPPINGS_INFO extends Struct {
  @Uint32() external int cPolicyMapping;
  external Pointer<CERT_POLICY_MAPPING> rgPolicyMapping;
}

class CERT_POLICY_CONSTRAINTS_INFO extends Struct {
  @Int32() external int fRequireExplicitPolicy;
  @Uint32() external int dwRequireExplicitPolicySkipCerts;
  @Int32() external int fInhibitPolicyMapping;
  @Uint32() external int dwInhibitPolicyMappingSkipCerts;
}

class CRYPT_CONTENT_INFO_SEQUENCE_OF_ANY extends Struct {
  external Pointer<Utf8> pszObjId;
  @Uint32() external int cValue;
  external Pointer<CRYPTOAPI_BLOB> rgValue;
}

class CRYPT_CONTENT_INFO extends Struct {
  external Pointer<Utf8> pszObjId;
  external CRYPTOAPI_BLOB Content;
}

class CRYPT_SEQUENCE_OF_ANY extends Struct {
  @Uint32() external int cValue;
  external Pointer<CRYPTOAPI_BLOB> rgValue;
}

class CERT_AUTHORITY_KEY_ID2_INFO extends Struct {
  external CRYPTOAPI_BLOB KeyId;
  external CERT_ALT_NAME_INFO AuthorityCertIssuer;
  external CRYPTOAPI_BLOB AuthorityCertSerialNumber;
}

class CERT_ACCESS_DESCRIPTION extends Struct {
  external Pointer<Utf8> pszAccessMethod;
  external CERT_ALT_NAME_ENTRY AccessLocation;
}

class CERT_AUTHORITY_INFO_ACCESS extends Struct {
  @Uint32() external int cAccDescr;
  external Pointer<CERT_ACCESS_DESCRIPTION> rgAccDescr;
}

class CRL_DIST_POINT_NAME extends Struct {
  @Uint32() external int dwDistPointNameChoice;
  @Uint32() external int Anonymous;
}

class CRL_DIST_POINT extends Struct {
  external CRL_DIST_POINT_NAME DistPointName;
  external CRYPT_BIT_BLOB ReasonFlags;
  external CERT_ALT_NAME_INFO CRLIssuer;
}

class CRL_DIST_POINTS_INFO extends Struct {
  @Uint32() external int cDistPoint;
  external Pointer<CRL_DIST_POINT> rgDistPoint;
}

class CROSS_CERT_DIST_POINTS_INFO extends Struct {
  @Uint32() external int dwSyncDeltaTime;
  @Uint32() external int cDistPoint;
  external Pointer<CERT_ALT_NAME_INFO> rgDistPoint;
}

class CERT_PAIR extends Struct {
  external CRYPTOAPI_BLOB Forward;
  external CRYPTOAPI_BLOB Reverse;
}

class CRL_ISSUING_DIST_POINT extends Struct {
  external CRL_DIST_POINT_NAME DistPointName;
  @Int32() external int fOnlyContainsUserCerts;
  @Int32() external int fOnlyContainsCACerts;
  external CRYPT_BIT_BLOB OnlySomeReasonFlags;
  @Int32() external int fIndirectCRL;
}

class CERT_GENERAL_SUBTREE extends Struct {
  external CERT_ALT_NAME_ENTRY Base;
  @Uint32() external int dwMinimum;
  @Int32() external int fMaximum;
  @Uint32() external int dwMaximum;
}

class CERT_NAME_CONSTRAINTS_INFO extends Struct {
  @Uint32() external int cPermittedSubtree;
  external Pointer<CERT_GENERAL_SUBTREE> rgPermittedSubtree;
  @Uint32() external int cExcludedSubtree;
  external Pointer<CERT_GENERAL_SUBTREE> rgExcludedSubtree;
}

class CERT_DSS_PARAMETERS extends Struct {
  external CRYPTOAPI_BLOB p;
  external CRYPTOAPI_BLOB q;
  external CRYPTOAPI_BLOB g;
}

class CERT_DH_PARAMETERS extends Struct {
  external CRYPTOAPI_BLOB p;
  external CRYPTOAPI_BLOB g;
}

class CERT_ECC_SIGNATURE extends Struct {
  external CRYPTOAPI_BLOB r;
  external CRYPTOAPI_BLOB s;
}

class CERT_X942_DH_VALIDATION_PARAMS extends Struct {
  external CRYPT_BIT_BLOB seed;
  @Uint32() external int pgenCounter;
}

class CERT_X942_DH_PARAMETERS extends Struct {
  external CRYPTOAPI_BLOB p;
  external CRYPTOAPI_BLOB g;
  external CRYPTOAPI_BLOB q;
  external CRYPTOAPI_BLOB j;
  external Pointer<CERT_X942_DH_VALIDATION_PARAMS> pValidationParams;
}

class CRYPT_X942_OTHER_INFO extends Struct {
  external Pointer<Utf8> pszContentEncryptionObjId;
  @Array(4)
  external Array<Uint8> rgbCounter;
  @Array(4)
  external Array<Uint8> rgbKeyLength;
  external CRYPTOAPI_BLOB PubInfo;
}

class CRYPT_ECC_CMS_SHARED_INFO extends Struct {
  external CRYPT_ALGORITHM_IDENTIFIER Algorithm;
  external CRYPTOAPI_BLOB EntityUInfo;
  @Array(4)
  external Array<Uint8> rgbSuppPubInfo;
}

class CRYPT_RC2_CBC_PARAMETERS extends Struct {
  @Uint32() external int dwVersion;
  @Int32() external int fIV;
  @Array(8)
  external Array<Uint8> rgbIV;
}

class CRYPT_SMIME_CAPABILITY extends Struct {
  external Pointer<Utf8> pszObjId;
  external CRYPTOAPI_BLOB Parameters;
}

class CRYPT_SMIME_CAPABILITIES extends Struct {
  @Uint32() external int cCapability;
  external Pointer<CRYPT_SMIME_CAPABILITY> rgCapability;
}

class CERT_QC_STATEMENT extends Struct {
  external Pointer<Utf8> pszStatementId;
  external CRYPTOAPI_BLOB StatementInfo;
}

class CERT_QC_STATEMENTS_EXT_INFO extends Struct {
  @Uint32() external int cStatement;
  external Pointer<CERT_QC_STATEMENT> rgStatement;
}

class CRYPT_MASK_GEN_ALGORITHM extends Struct {
  external Pointer<Utf8> pszObjId;
  external CRYPT_ALGORITHM_IDENTIFIER HashAlgorithm;
}

class CRYPT_RSA_SSA_PSS_PARAMETERS extends Struct {
  external CRYPT_ALGORITHM_IDENTIFIER HashAlgorithm;
  external CRYPT_MASK_GEN_ALGORITHM MaskGenAlgorithm;
  @Uint32() external int dwSaltLength;
  @Uint32() external int dwTrailerField;
}

class CRYPT_PSOURCE_ALGORITHM extends Struct {
  external Pointer<Utf8> pszObjId;
  external CRYPTOAPI_BLOB EncodingParameters;
}

class CRYPT_RSAES_OAEP_PARAMETERS extends Struct {
  external CRYPT_ALGORITHM_IDENTIFIER HashAlgorithm;
  external CRYPT_MASK_GEN_ALGORITHM MaskGenAlgorithm;
  external CRYPT_PSOURCE_ALGORITHM PSourceAlgorithm;
}

class CMC_TAGGED_ATTRIBUTE extends Struct {
  @Uint32() external int dwBodyPartID;
  external CRYPT_ATTRIBUTE Attribute;
}

class CMC_TAGGED_CERT_REQUEST extends Struct {
  @Uint32() external int dwBodyPartID;
  external CRYPTOAPI_BLOB SignedCertRequest;
}

class CMC_TAGGED_REQUEST extends Struct {
  @Uint32() external int dwTaggedRequestChoice;
  @Uint32() external int Anonymous;
}

class CMC_TAGGED_CONTENT_INFO extends Struct {
  @Uint32() external int dwBodyPartID;
  external CRYPTOAPI_BLOB EncodedContentInfo;
}

class CMC_TAGGED_OTHER_MSG extends Struct {
  @Uint32() external int dwBodyPartID;
  external Pointer<Utf8> pszObjId;
  external CRYPTOAPI_BLOB Value;
}

class CMC_DATA_INFO extends Struct {
  @Uint32() external int cTaggedAttribute;
  external Pointer<CMC_TAGGED_ATTRIBUTE> rgTaggedAttribute;
  @Uint32() external int cTaggedRequest;
  external Pointer<CMC_TAGGED_REQUEST> rgTaggedRequest;
  @Uint32() external int cTaggedContentInfo;
  external Pointer<CMC_TAGGED_CONTENT_INFO> rgTaggedContentInfo;
  @Uint32() external int cTaggedOtherMsg;
  external Pointer<CMC_TAGGED_OTHER_MSG> rgTaggedOtherMsg;
}

class CMC_RESPONSE_INFO extends Struct {
  @Uint32() external int cTaggedAttribute;
  external Pointer<CMC_TAGGED_ATTRIBUTE> rgTaggedAttribute;
  @Uint32() external int cTaggedContentInfo;
  external Pointer<CMC_TAGGED_CONTENT_INFO> rgTaggedContentInfo;
  @Uint32() external int cTaggedOtherMsg;
  external Pointer<CMC_TAGGED_OTHER_MSG> rgTaggedOtherMsg;
}

class CMC_PEND_INFO extends Struct {
  external CRYPTOAPI_BLOB PendToken;
  external FILETIME PendTime;
}

class CMC_STATUS_INFO extends Struct {
  @Uint32() external int dwStatus;
  @Uint32() external int cBodyList;
  external Pointer<Uint32> rgdwBodyList;
  external Pointer<Utf16> pwszStatusString;
  @Uint32() external int dwOtherInfoChoice;
  @Uint32() external int Anonymous;
}

class CMC_ADD_EXTENSIONS_INFO extends Struct {
  @Uint32() external int dwCmcDataReference;
  @Uint32() external int cCertReference;
  external Pointer<Uint32> rgdwCertReference;
  @Uint32() external int cExtension;
  external Pointer<CERT_EXTENSION> rgExtension;
}

class CMC_ADD_ATTRIBUTES_INFO extends Struct {
  @Uint32() external int dwCmcDataReference;
  @Uint32() external int cCertReference;
  external Pointer<Uint32> rgdwCertReference;
  @Uint32() external int cAttribute;
  external Pointer<CRYPT_ATTRIBUTE> rgAttribute;
}

class CERT_TEMPLATE_EXT extends Struct {
  external Pointer<Utf8> pszObjId;
  @Uint32() external int dwMajorVersion;
  @Int32() external int fMinorVersion;
  @Uint32() external int dwMinorVersion;
}

class CERT_HASHED_URL extends Struct {
  external CRYPT_ALGORITHM_IDENTIFIER HashAlgorithm;
  external CRYPTOAPI_BLOB Hash;
  external Pointer<Utf16> pwszUrl;
}

class CERT_LOGOTYPE_DETAILS extends Struct {
  external Pointer<Utf16> pwszMimeType;
  @Uint32() external int cHashedUrl;
  external Pointer<CERT_HASHED_URL> rgHashedUrl;
}

class CERT_LOGOTYPE_REFERENCE extends Struct {
  @Uint32() external int cHashedUrl;
  external Pointer<CERT_HASHED_URL> rgHashedUrl;
}

class CERT_LOGOTYPE_IMAGE_INFO extends Struct {
  @Uint32() external int dwLogotypeImageInfoChoice;
  @Uint32() external int dwFileSize;
  @Uint32() external int dwXSize;
  @Uint32() external int dwYSize;
  @Uint32() external int dwLogotypeImageResolutionChoice;
  @Uint32() external int Anonymous;
  external Pointer<Utf16> pwszLanguage;
}

class CERT_LOGOTYPE_IMAGE extends Struct {
  external CERT_LOGOTYPE_DETAILS LogotypeDetails;
  external Pointer<CERT_LOGOTYPE_IMAGE_INFO> pLogotypeImageInfo;
}

class CERT_LOGOTYPE_AUDIO_INFO extends Struct {
  @Uint32() external int dwFileSize;
  @Uint32() external int dwPlayTime;
  @Uint32() external int dwChannels;
  @Uint32() external int dwSampleRate;
  external Pointer<Utf16> pwszLanguage;
}

class CERT_LOGOTYPE_AUDIO extends Struct {
  external CERT_LOGOTYPE_DETAILS LogotypeDetails;
  external Pointer<CERT_LOGOTYPE_AUDIO_INFO> pLogotypeAudioInfo;
}

class CERT_LOGOTYPE_DATA extends Struct {
  @Uint32() external int cLogotypeImage;
  external Pointer<CERT_LOGOTYPE_IMAGE> rgLogotypeImage;
  @Uint32() external int cLogotypeAudio;
  external Pointer<CERT_LOGOTYPE_AUDIO> rgLogotypeAudio;
}

class CERT_LOGOTYPE_INFO extends Struct {
  @Uint32() external int dwLogotypeInfoChoice;
  @Uint32() external int Anonymous;
}

class CERT_OTHER_LOGOTYPE_INFO extends Struct {
  external Pointer<Utf8> pszObjId;
  external CERT_LOGOTYPE_INFO LogotypeInfo;
}

class CERT_LOGOTYPE_EXT_INFO extends Struct {
  @Uint32() external int cCommunityLogo;
  external Pointer<CERT_LOGOTYPE_INFO> rgCommunityLogo;
  external Pointer<CERT_LOGOTYPE_INFO> pIssuerLogo;
  external Pointer<CERT_LOGOTYPE_INFO> pSubjectLogo;
  @Uint32() external int cOtherLogo;
  external Pointer<CERT_OTHER_LOGOTYPE_INFO> rgOtherLogo;
}

class CERT_BIOMETRIC_DATA extends Struct {
  @Uint32() external int dwTypeOfBiometricDataChoice;
  @Uint32() external int Anonymous;
  external CERT_HASHED_URL HashedUrl;
}

class CERT_BIOMETRIC_EXT_INFO extends Struct {
  @Uint32() external int cBiometricData;
  external Pointer<CERT_BIOMETRIC_DATA> rgBiometricData;
}

class OCSP_SIGNATURE_INFO extends Struct {
  external CRYPT_ALGORITHM_IDENTIFIER SignatureAlgorithm;
  external CRYPT_BIT_BLOB Signature;
  @Uint32() external int cCertEncoded;
  external Pointer<CRYPTOAPI_BLOB> rgCertEncoded;
}

class OCSP_SIGNED_REQUEST_INFO extends Struct {
  external CRYPTOAPI_BLOB ToBeSigned;
  external Pointer<OCSP_SIGNATURE_INFO> pOptionalSignatureInfo;
}

class OCSP_CERT_ID extends Struct {
  external CRYPT_ALGORITHM_IDENTIFIER HashAlgorithm;
  external CRYPTOAPI_BLOB IssuerNameHash;
  external CRYPTOAPI_BLOB IssuerKeyHash;
  external CRYPTOAPI_BLOB SerialNumber;
}

class OCSP_REQUEST_ENTRY extends Struct {
  external OCSP_CERT_ID CertId;
  @Uint32() external int cExtension;
  external Pointer<CERT_EXTENSION> rgExtension;
}

class OCSP_REQUEST_INFO extends Struct {
  @Uint32() external int dwVersion;
  external Pointer<CERT_ALT_NAME_ENTRY> pRequestorName;
  @Uint32() external int cRequestEntry;
  external Pointer<OCSP_REQUEST_ENTRY> rgRequestEntry;
  @Uint32() external int cExtension;
  external Pointer<CERT_EXTENSION> rgExtension;
}

class OCSP_RESPONSE_INFO extends Struct {
  @Uint32() external int dwStatus;
  external Pointer<Utf8> pszObjId;
  external CRYPTOAPI_BLOB Value;
}

class OCSP_BASIC_SIGNED_RESPONSE_INFO extends Struct {
  external CRYPTOAPI_BLOB ToBeSigned;
  external OCSP_SIGNATURE_INFO SignatureInfo;
}

class OCSP_BASIC_REVOKED_INFO extends Struct {
  external FILETIME RevocationDate;
  @Uint32() external int dwCrlReasonCode;
}

class OCSP_BASIC_RESPONSE_ENTRY extends Struct {
  external OCSP_CERT_ID CertId;
  @Uint32() external int dwCertStatus;
  @Uint32() external int Anonymous;
  external FILETIME ThisUpdate;
  external FILETIME NextUpdate;
  @Uint32() external int cExtension;
  external Pointer<CERT_EXTENSION> rgExtension;
}

class OCSP_BASIC_RESPONSE_INFO extends Struct {
  @Uint32() external int dwVersion;
  @Uint32() external int dwResponderIdChoice;
  @Uint32() external int Anonymous;
  external FILETIME ProducedAt;
  @Uint32() external int cResponseEntry;
  external Pointer<OCSP_BASIC_RESPONSE_ENTRY> rgResponseEntry;
  @Uint32() external int cExtension;
  external Pointer<CERT_EXTENSION> rgExtension;
}

class CERT_SUPPORTED_ALGORITHM_INFO extends Struct {
  external CRYPT_ALGORITHM_IDENTIFIER Algorithm;
  external CRYPT_BIT_BLOB IntendedKeyUsage;
  external CERT_POLICIES_INFO IntendedCertPolicies;
}

class CERT_TPM_SPECIFICATION_INFO extends Struct {
  external Pointer<Utf16> pwszFamily;
  @Uint32() external int dwLevel;
  @Uint32() external int dwRevision;
}

class CRYPT_OID_FUNC_ENTRY extends Struct {
  external Pointer<Utf8> pszOID;
  external Pointer pvFuncAddr;
}

class CRYPT_OID_INFO extends Struct {
  @Uint32() external int cbSize;
  external Pointer<Utf8> pszOID;
  external Pointer<Utf16> pwszName;
  @Uint32() external int dwGroupId;
  @Uint32() external int Anonymous;
  external CRYPTOAPI_BLOB ExtraInfo;
}

class CERT_STRONG_SIGN_SERIALIZED_INFO extends Struct {
  @Uint32() external int dwFlags;
  external Pointer<Utf16> pwszCNGSignHashAlgids;
  external Pointer<Utf16> pwszCNGPubKeyMinBitLengths;
}

class CERT_STRONG_SIGN_PARA extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int dwInfoChoice;
  @Uint32() external int Anonymous;
}

class CERT_ISSUER_SERIAL_NUMBER extends Struct {
  external CRYPTOAPI_BLOB Issuer;
  external CRYPTOAPI_BLOB SerialNumber;
}

class CERT_ID extends Struct {
  @Uint32() external int dwIdChoice;
  @Uint32() external int Anonymous;
}

class CMSG_SIGNER_ENCODE_INFO extends Struct {
  @Uint32() external int cbSize;
  external Pointer<CERT_INFO> pCertInfo;
  @Uint32() external int Anonymous;
  @Uint32() external int dwKeySpec;
  external CRYPT_ALGORITHM_IDENTIFIER HashAlgorithm;
  external Pointer pvHashAuxInfo;
  @Uint32() external int cAuthAttr;
  external Pointer<CRYPT_ATTRIBUTE> rgAuthAttr;
  @Uint32() external int cUnauthAttr;
  external Pointer<CRYPT_ATTRIBUTE> rgUnauthAttr;
}

class CMSG_SIGNED_ENCODE_INFO extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int cSigners;
  external Pointer<CMSG_SIGNER_ENCODE_INFO> rgSigners;
  @Uint32() external int cCertEncoded;
  external Pointer<CRYPTOAPI_BLOB> rgCertEncoded;
  @Uint32() external int cCrlEncoded;
  external Pointer<CRYPTOAPI_BLOB> rgCrlEncoded;
}

class CMSG_ENVELOPED_ENCODE_INFO extends Struct {
  @Uint32() external int cbSize;
  @IntPtr() external int hCryptProv;
  external CRYPT_ALGORITHM_IDENTIFIER ContentEncryptionAlgorithm;
  external Pointer pvEncryptionAuxInfo;
  @Uint32() external int cRecipients;
  external Pointer<Pointer<CERT_INFO>> rgpRecipients;
}

class CMSG_KEY_TRANS_RECIPIENT_ENCODE_INFO extends Struct {
  @Uint32() external int cbSize;
  external CRYPT_ALGORITHM_IDENTIFIER KeyEncryptionAlgorithm;
  external Pointer pvKeyEncryptionAuxInfo;
  @IntPtr() external int hCryptProv;
  external CRYPT_BIT_BLOB RecipientPublicKey;
  external CERT_ID RecipientId;
}

class CMSG_RECIPIENT_ENCRYPTED_KEY_ENCODE_INFO extends Struct {
  @Uint32() external int cbSize;
  external CRYPT_BIT_BLOB RecipientPublicKey;
  external CERT_ID RecipientId;
  external FILETIME Date;
  external Pointer<CRYPT_ATTRIBUTE_TYPE_VALUE> pOtherAttr;
}

class CMSG_KEY_AGREE_RECIPIENT_ENCODE_INFO extends Struct {
  @Uint32() external int cbSize;
  external CRYPT_ALGORITHM_IDENTIFIER KeyEncryptionAlgorithm;
  external Pointer pvKeyEncryptionAuxInfo;
  external CRYPT_ALGORITHM_IDENTIFIER KeyWrapAlgorithm;
  external Pointer pvKeyWrapAuxInfo;
  @IntPtr() external int hCryptProv;
  @Uint32() external int dwKeySpec;
  @Uint32() external int dwKeyChoice;
  @Uint32() external int Anonymous;
  external CRYPTOAPI_BLOB UserKeyingMaterial;
  @Uint32() external int cRecipientEncryptedKeys;
  external Pointer<Pointer<CMSG_RECIPIENT_ENCRYPTED_KEY_ENCODE_INFO>> rgpRecipientEncryptedKeys;
}

class CMSG_MAIL_LIST_RECIPIENT_ENCODE_INFO extends Struct {
  @Uint32() external int cbSize;
  external CRYPT_ALGORITHM_IDENTIFIER KeyEncryptionAlgorithm;
  external Pointer pvKeyEncryptionAuxInfo;
  @IntPtr() external int hCryptProv;
  @Uint32() external int dwKeyChoice;
  @Uint32() external int Anonymous;
  external CRYPTOAPI_BLOB KeyId;
  external FILETIME Date;
  external Pointer<CRYPT_ATTRIBUTE_TYPE_VALUE> pOtherAttr;
}

class CMSG_RECIPIENT_ENCODE_INFO extends Struct {
  @Uint32() external int dwRecipientChoice;
  @Uint32() external int Anonymous;
}

class CMSG_RC2_AUX_INFO extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int dwBitLen;
}

class CMSG_SP3_COMPATIBLE_AUX_INFO extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int dwFlags;
}

class CMSG_RC4_AUX_INFO extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int dwBitLen;
}

class CMSG_SIGNED_AND_ENVELOPED_ENCODE_INFO extends Struct {
  @Uint32() external int cbSize;
  external CMSG_SIGNED_ENCODE_INFO SignedInfo;
  external CMSG_ENVELOPED_ENCODE_INFO EnvelopedInfo;
}

class CMSG_HASHED_ENCODE_INFO extends Struct {
  @Uint32() external int cbSize;
  @IntPtr() external int hCryptProv;
  external CRYPT_ALGORITHM_IDENTIFIER HashAlgorithm;
  external Pointer pvHashAuxInfo;
}

class CMSG_ENCRYPTED_ENCODE_INFO extends Struct {
  @Uint32() external int cbSize;
  external CRYPT_ALGORITHM_IDENTIFIER ContentEncryptionAlgorithm;
  external Pointer pvEncryptionAuxInfo;
}

class CMSG_STREAM_INFO extends Struct {
  @Uint32() external int cbContent;
  external PFN_CMSG_STREAM_OUTPUT pfnStreamOutput;
  external Pointer pvArg;
}

class CMSG_SIGNER_INFO extends Struct {
  @Uint32() external int dwVersion;
  external CRYPTOAPI_BLOB Issuer;
  external CRYPTOAPI_BLOB SerialNumber;
  external CRYPT_ALGORITHM_IDENTIFIER HashAlgorithm;
  external CRYPT_ALGORITHM_IDENTIFIER HashEncryptionAlgorithm;
  external CRYPTOAPI_BLOB EncryptedHash;
  external CRYPT_ATTRIBUTES AuthAttrs;
  external CRYPT_ATTRIBUTES UnauthAttrs;
}

class CMSG_CMS_SIGNER_INFO extends Struct {
  @Uint32() external int dwVersion;
  external CERT_ID SignerId;
  external CRYPT_ALGORITHM_IDENTIFIER HashAlgorithm;
  external CRYPT_ALGORITHM_IDENTIFIER HashEncryptionAlgorithm;
  external CRYPTOAPI_BLOB EncryptedHash;
  external CRYPT_ATTRIBUTES AuthAttrs;
  external CRYPT_ATTRIBUTES UnauthAttrs;
}

class CMSG_KEY_TRANS_RECIPIENT_INFO extends Struct {
  @Uint32() external int dwVersion;
  external CERT_ID RecipientId;
  external CRYPT_ALGORITHM_IDENTIFIER KeyEncryptionAlgorithm;
  external CRYPTOAPI_BLOB EncryptedKey;
}

class CMSG_RECIPIENT_ENCRYPTED_KEY_INFO extends Struct {
  external CERT_ID RecipientId;
  external CRYPTOAPI_BLOB EncryptedKey;
  external FILETIME Date;
  external Pointer<CRYPT_ATTRIBUTE_TYPE_VALUE> pOtherAttr;
}

class CMSG_KEY_AGREE_RECIPIENT_INFO extends Struct {
  @Uint32() external int dwVersion;
  @Uint32() external int dwOriginatorChoice;
  @Uint32() external int Anonymous;
  external CRYPTOAPI_BLOB UserKeyingMaterial;
  external CRYPT_ALGORITHM_IDENTIFIER KeyEncryptionAlgorithm;
  @Uint32() external int cRecipientEncryptedKeys;
  external Pointer<Pointer<CMSG_RECIPIENT_ENCRYPTED_KEY_INFO>> rgpRecipientEncryptedKeys;
}

class CMSG_MAIL_LIST_RECIPIENT_INFO extends Struct {
  @Uint32() external int dwVersion;
  external CRYPTOAPI_BLOB KeyId;
  external CRYPT_ALGORITHM_IDENTIFIER KeyEncryptionAlgorithm;
  external CRYPTOAPI_BLOB EncryptedKey;
  external FILETIME Date;
  external Pointer<CRYPT_ATTRIBUTE_TYPE_VALUE> pOtherAttr;
}

class CMSG_CMS_RECIPIENT_INFO extends Struct {
  @Uint32() external int dwRecipientChoice;
  @Uint32() external int Anonymous;
}

class CMSG_CTRL_VERIFY_SIGNATURE_EX_PARA extends Struct {
  @Uint32() external int cbSize;
  @IntPtr() external int hCryptProv;
  @Uint32() external int dwSignerIndex;
  @Uint32() external int dwSignerType;
  external Pointer pvSigner;
}

class CMSG_CTRL_DECRYPT_PARA extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int Anonymous;
  @Uint32() external int dwKeySpec;
  @Uint32() external int dwRecipientIndex;
}

class CMSG_CTRL_KEY_TRANS_DECRYPT_PARA extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int Anonymous;
  @Uint32() external int dwKeySpec;
  external Pointer<CMSG_KEY_TRANS_RECIPIENT_INFO> pKeyTrans;
  @Uint32() external int dwRecipientIndex;
}

class CMSG_CTRL_KEY_AGREE_DECRYPT_PARA extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int Anonymous;
  @Uint32() external int dwKeySpec;
  external Pointer<CMSG_KEY_AGREE_RECIPIENT_INFO> pKeyAgree;
  @Uint32() external int dwRecipientIndex;
  @Uint32() external int dwRecipientEncryptedKeyIndex;
  external CRYPT_BIT_BLOB OriginatorPublicKey;
}

class CMSG_CTRL_MAIL_LIST_DECRYPT_PARA extends Struct {
  @Uint32() external int cbSize;
  @IntPtr() external int hCryptProv;
  external Pointer<CMSG_MAIL_LIST_RECIPIENT_INFO> pMailList;
  @Uint32() external int dwRecipientIndex;
  @Uint32() external int dwKeyChoice;
  @Uint32() external int Anonymous;
}

class CMSG_CTRL_ADD_SIGNER_UNAUTH_ATTR_PARA extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int dwSignerIndex;
  external CRYPTOAPI_BLOB blob;
}

class CMSG_CTRL_DEL_SIGNER_UNAUTH_ATTR_PARA extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int dwSignerIndex;
  @Uint32() external int dwUnauthAttrIndex;
}

class CMSG_CONTENT_ENCRYPT_INFO extends Struct {
  @Uint32() external int cbSize;
  @IntPtr() external int hCryptProv;
  external CRYPT_ALGORITHM_IDENTIFIER ContentEncryptionAlgorithm;
  external Pointer pvEncryptionAuxInfo;
  @Uint32() external int cRecipients;
  external Pointer<CMSG_RECIPIENT_ENCODE_INFO> rgCmsRecipients;
  external PFN_CMSG_ALLOC pfnAlloc;
  external PFN_CMSG_FREE pfnFree;
  @Uint32() external int dwEncryptFlags;
  @Uint32() external int Anonymous;
  @Uint32() external int dwFlags;
  @Int32() external int fCNG;
  external Pointer<Uint8> pbCNGContentEncryptKeyObject;
  external Pointer<Uint8> pbContentEncryptKey;
  @Uint32() external int cbContentEncryptKey;
}

class CMSG_KEY_TRANS_ENCRYPT_INFO extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int dwRecipientIndex;
  external CRYPT_ALGORITHM_IDENTIFIER KeyEncryptionAlgorithm;
  external CRYPTOAPI_BLOB EncryptedKey;
  @Uint32() external int dwFlags;
}

class CMSG_KEY_AGREE_KEY_ENCRYPT_INFO extends Struct {
  @Uint32() external int cbSize;
  external CRYPTOAPI_BLOB EncryptedKey;
}

class CMSG_KEY_AGREE_ENCRYPT_INFO extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int dwRecipientIndex;
  external CRYPT_ALGORITHM_IDENTIFIER KeyEncryptionAlgorithm;
  external CRYPTOAPI_BLOB UserKeyingMaterial;
  @Uint32() external int dwOriginatorChoice;
  @Uint32() external int Anonymous;
  @Uint32() external int cKeyAgreeKeyEncryptInfo;
  external Pointer<Pointer<CMSG_KEY_AGREE_KEY_ENCRYPT_INFO>> rgpKeyAgreeKeyEncryptInfo;
  @Uint32() external int dwFlags;
}

class CMSG_MAIL_LIST_ENCRYPT_INFO extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int dwRecipientIndex;
  external CRYPT_ALGORITHM_IDENTIFIER KeyEncryptionAlgorithm;
  external CRYPTOAPI_BLOB EncryptedKey;
  @Uint32() external int dwFlags;
}

class CMSG_CNG_CONTENT_DECRYPT_INFO extends Struct {
  @Uint32() external int cbSize;
  external CRYPT_ALGORITHM_IDENTIFIER ContentEncryptionAlgorithm;
  external PFN_CMSG_ALLOC pfnAlloc;
  external PFN_CMSG_FREE pfnFree;
  @IntPtr() external int hNCryptKey;
  external Pointer<Uint8> pbContentEncryptKey;
  @Uint32() external int cbContentEncryptKey;
  external Pointer hCNGContentEncryptKey;
  external Pointer<Uint8> pbCNGContentEncryptKeyObject;
}

class CERT_CONTEXT extends Struct {
  @Uint32() external int dwCertEncodingType;
  external Pointer<Uint8> pbCertEncoded;
  @Uint32() external int cbCertEncoded;
  external Pointer<CERT_INFO> pCertInfo;
  external Pointer hCertStore;
}

class CRL_CONTEXT extends Struct {
  @Uint32() external int dwCertEncodingType;
  external Pointer<Uint8> pbCrlEncoded;
  @Uint32() external int cbCrlEncoded;
  external Pointer<CRL_INFO> pCrlInfo;
  external Pointer hCertStore;
}

class CTL_CONTEXT extends Struct {
  @Uint32() external int dwMsgAndCertEncodingType;
  external Pointer<Uint8> pbCtlEncoded;
  @Uint32() external int cbCtlEncoded;
  external Pointer<CTL_INFO> pCtlInfo;
  external Pointer hCertStore;
  external Pointer hCryptMsg;
  external Pointer<Uint8> pbCtlContent;
  @Uint32() external int cbCtlContent;
}

class CRYPT_KEY_PROV_PARAM extends Struct {
  @Uint32() external int dwParam;
  external Pointer<Uint8> pbData;
  @Uint32() external int cbData;
  @Uint32() external int dwFlags;
}

class CRYPT_KEY_PROV_INFO extends Struct {
  external Pointer<Utf16> pwszContainerName;
  external Pointer<Utf16> pwszProvName;
  @Uint32() external int dwProvType;
  @Uint32() external int dwFlags;
  @Uint32() external int cProvParam;
  external Pointer<CRYPT_KEY_PROV_PARAM> rgProvParam;
  @Uint32() external int dwKeySpec;
}

class CERT_KEY_CONTEXT extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int Anonymous;
  @Uint32() external int dwKeySpec;
}

class ROOT_INFO_LUID extends Struct {
  @Uint32() external int LowPart;
  @Int32() external int HighPart;
}

class CRYPT_SMART_CARD_ROOT_INFO extends Struct {
  @Array(16)
  external Array<Uint8> rgbCardID;
  external ROOT_INFO_LUID luid;
}

class CERT_SYSTEM_STORE_RELOCATE_PARA extends Struct {
  @Uint32() external int Anonymous1;
  @Uint32() external int Anonymous2;
}

class CERT_REGISTRY_STORE_CLIENT_GPT_PARA extends Struct {
  @IntPtr() external int hKeyBase;
  external Pointer<Utf16> pwszRegPath;
}

class CERT_REGISTRY_STORE_ROAMING_PARA extends Struct {
  @IntPtr() external int hKey;
  external Pointer<Utf16> pwszStoreDirectory;
}

class CERT_LDAP_STORE_OPENED_PARA extends Struct {
  external Pointer pvLdapSessionHandle;
  external Pointer<Utf16> pwszLdapUrl;
}

class CERT_STORE_PROV_INFO extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int cStoreProvFunc;
  external Pointer<Pointer> rgpvStoreProvFunc;
  external Pointer hStoreProv;
  @Uint32() external int dwStoreProvFlags;
  external Pointer hStoreProvFuncAddr2;
}

class CERT_STORE_PROV_FIND_INFO extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int dwMsgAndCertEncodingType;
  @Uint32() external int dwFindFlags;
  @Uint32() external int dwFindType;
  external Pointer pvFindPara;
}

class CRL_FIND_ISSUED_FOR_PARA extends Struct {
  external Pointer<CERT_CONTEXT> pSubjectCert;
  external Pointer<CERT_CONTEXT> pIssuerCert;
}

class CTL_ANY_SUBJECT_INFO extends Struct {
  external CRYPT_ALGORITHM_IDENTIFIER SubjectAlgorithm;
  external CRYPTOAPI_BLOB SubjectIdentifier;
}

class CTL_FIND_USAGE_PARA extends Struct {
  @Uint32() external int cbSize;
  external CTL_USAGE SubjectUsage;
  external CRYPTOAPI_BLOB ListIdentifier;
  external Pointer<CERT_INFO> pSigner;
}

class CTL_FIND_SUBJECT_PARA extends Struct {
  @Uint32() external int cbSize;
  external Pointer<CTL_FIND_USAGE_PARA> pUsagePara;
  @Uint32() external int dwSubjectType;
  external Pointer pvSubject;
}

class CERT_CREATE_CONTEXT_PARA extends Struct {
  @Uint32() external int cbSize;
  external PFN_CRYPT_FREE pfnFree;
  external Pointer pvFree;
  external PFN_CERT_CREATE_CONTEXT_SORT_FUNC pfnSort;
  external Pointer pvSort;
}

class CERT_SYSTEM_STORE_INFO extends Struct {
  @Uint32() external int cbSize;
}

class CERT_PHYSICAL_STORE_INFO extends Struct {
  @Uint32() external int cbSize;
  external Pointer<Utf8> pszOpenStoreProvider;
  @Uint32() external int dwOpenEncodingType;
  @Uint32() external int dwOpenFlags;
  external CRYPTOAPI_BLOB OpenParameters;
  @Uint32() external int dwFlags;
  @Uint32() external int dwPriority;
}

class CTL_VERIFY_USAGE_PARA extends Struct {
  @Uint32() external int cbSize;
  external CRYPTOAPI_BLOB ListIdentifier;
  @Uint32() external int cCtlStore;
  external Pointer<Pointer> rghCtlStore;
  @Uint32() external int cSignerStore;
  external Pointer<Pointer> rghSignerStore;
}

class CTL_VERIFY_USAGE_STATUS extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int dwError;
  @Uint32() external int dwFlags;
  external Pointer<Pointer<CTL_CONTEXT>> ppCtl;
  @Uint32() external int dwCtlEntryIndex;
  external Pointer<Pointer<CERT_CONTEXT>> ppSigner;
  @Uint32() external int dwSignerIndex;
}

class CERT_REVOCATION_CRL_INFO extends Struct {
  @Uint32() external int cbSize;
  external Pointer<CRL_CONTEXT> pBaseCrlContext;
  external Pointer<CRL_CONTEXT> pDeltaCrlContext;
  external Pointer<CRL_ENTRY> pCrlEntry;
  @Int32() external int fDeltaCrlEntry;
}

class CERT_REVOCATION_PARA extends Struct {
  @Uint32() external int cbSize;
  external Pointer<CERT_CONTEXT> pIssuerCert;
  @Uint32() external int cCertStore;
  external Pointer<Pointer> rgCertStore;
  external Pointer hCrlStore;
  external Pointer<FILETIME> pftTimeToUse;
}

class CERT_REVOCATION_STATUS extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int dwIndex;
  @Uint32() external int dwError;
  @Uint32() external int dwReason;
  @Int32() external int fHasFreshnessTime;
  @Uint32() external int dwFreshnessTime;
}

class CRYPT_VERIFY_CERT_SIGN_STRONG_PROPERTIES_INFO extends Struct {
  external CRYPTOAPI_BLOB CertSignHashCNGAlgPropData;
  external CRYPTOAPI_BLOB CertIssuerPubKeyBitLengthPropData;
}

class CRYPT_VERIFY_CERT_SIGN_WEAK_HASH_INFO extends Struct {
  @Uint32() external int cCNGHashAlgid;
  external Pointer<Pointer<Utf16>> rgpwszCNGHashAlgid;
  @Uint32() external int dwWeakIndex;
}

class CRYPT_DEFAULT_CONTEXT_MULTI_OID_PARA extends Struct {
  @Uint32() external int cOID;
  external Pointer<Pointer<Utf8>> rgpszOID;
}

class CRYPT_SIGN_MESSAGE_PARA extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int dwMsgEncodingType;
  external Pointer<CERT_CONTEXT> pSigningCert;
  external CRYPT_ALGORITHM_IDENTIFIER HashAlgorithm;
  external Pointer pvHashAuxInfo;
  @Uint32() external int cMsgCert;
  external Pointer<Pointer<CERT_CONTEXT>> rgpMsgCert;
  @Uint32() external int cMsgCrl;
  external Pointer<Pointer<CRL_CONTEXT>> rgpMsgCrl;
  @Uint32() external int cAuthAttr;
  external Pointer<CRYPT_ATTRIBUTE> rgAuthAttr;
  @Uint32() external int cUnauthAttr;
  external Pointer<CRYPT_ATTRIBUTE> rgUnauthAttr;
  @Uint32() external int dwFlags;
  @Uint32() external int dwInnerContentType;
}

class CRYPT_VERIFY_MESSAGE_PARA extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int dwMsgAndCertEncodingType;
  @IntPtr() external int hCryptProv;
  external PFN_CRYPT_GET_SIGNER_CERTIFICATE pfnGetSignerCertificate;
  external Pointer pvGetArg;
}

class CRYPT_ENCRYPT_MESSAGE_PARA extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int dwMsgEncodingType;
  @IntPtr() external int hCryptProv;
  external CRYPT_ALGORITHM_IDENTIFIER ContentEncryptionAlgorithm;
  external Pointer pvEncryptionAuxInfo;
  @Uint32() external int dwFlags;
  @Uint32() external int dwInnerContentType;
}

class CRYPT_DECRYPT_MESSAGE_PARA extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int dwMsgAndCertEncodingType;
  @Uint32() external int cCertStore;
  external Pointer<Pointer> rghCertStore;
}

class CRYPT_HASH_MESSAGE_PARA extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int dwMsgEncodingType;
  @IntPtr() external int hCryptProv;
  external CRYPT_ALGORITHM_IDENTIFIER HashAlgorithm;
  external Pointer pvHashAuxInfo;
}

class CRYPT_KEY_SIGN_MESSAGE_PARA extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int dwMsgAndCertEncodingType;
  @Uint32() external int Anonymous;
  @Uint32() external int dwKeySpec;
  external CRYPT_ALGORITHM_IDENTIFIER HashAlgorithm;
  external Pointer pvHashAuxInfo;
  external CRYPT_ALGORITHM_IDENTIFIER PubKeyAlgorithm;
}

class CRYPT_KEY_VERIFY_MESSAGE_PARA extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int dwMsgEncodingType;
  @IntPtr() external int hCryptProv;
}

class CERT_CHAIN extends Struct {
  @Uint32() external int cCerts;
  external Pointer<CRYPTOAPI_BLOB> certs;
  external CRYPT_KEY_PROV_INFO keyLocatorInfo;
}

class CRYPT_BLOB_ARRAY extends Struct {
  @Uint32() external int cBlob;
  external Pointer<CRYPTOAPI_BLOB> rgBlob;
}

class CRYPT_CREDENTIALS extends Struct {
  @Uint32() external int cbSize;
  external Pointer<Utf8> pszCredentialsOid;
  external Pointer pvCredentials;
}

class CRYPT_PASSWORD_CREDENTIALSA extends Struct {
  @Uint32() external int cbSize;
  external Pointer<Utf8> pszUsername;
  external Pointer<Utf8> pszPassword;
}

class CRYPT_PASSWORD_CREDENTIALSW extends Struct {
  @Uint32() external int cbSize;
  external Pointer<Utf16> pszUsername;
  external Pointer<Utf16> pszPassword;
}

class CRYPTNET_URL_CACHE_PRE_FETCH_INFO extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int dwObjectType;
  @Uint32() external int dwError;
  @Uint32() external int dwReserved;
  external FILETIME ThisUpdateTime;
  external FILETIME NextUpdateTime;
  external FILETIME PublishTime;
}

class CRYPTNET_URL_CACHE_FLUSH_INFO extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int dwExemptSeconds;
  external FILETIME ExpireTime;
}

class CRYPTNET_URL_CACHE_RESPONSE_INFO extends Struct {
  @Uint32() external int cbSize;
  @Uint16() external int wResponseType;
  @Uint16() external int wResponseFlags;
  external FILETIME LastModifiedTime;
  @Uint32() external int dwMaxAge;
  external Pointer<Utf16> pwszETag;
  @Uint32() external int dwProxyId;
}

class CRYPT_RETRIEVE_AUX_INFO extends Struct {
  @Uint32() external int cbSize;
  external Pointer<FILETIME> pLastSyncTime;
  @Uint32() external int dwMaxUrlRetrievalByteCount;
  external Pointer<CRYPTNET_URL_CACHE_PRE_FETCH_INFO> pPreFetchInfo;
  external Pointer<CRYPTNET_URL_CACHE_FLUSH_INFO> pFlushInfo;
  external Pointer<Pointer<CRYPTNET_URL_CACHE_RESPONSE_INFO>> ppResponseInfo;
  external Pointer<Utf16> pwszCacheFileNamePrefix;
  external Pointer<FILETIME> pftCacheResync;
  @Int32() external int fProxyCacheRetrieval;
  @Uint32() external int dwHttpStatusCode;
  external Pointer<Pointer<Utf16>> ppwszErrorResponseHeaders;
  external Pointer<Pointer<CRYPTOAPI_BLOB>> ppErrorContentBlob;
}

class CRYPT_ASYNC_RETRIEVAL_COMPLETION extends Struct {
  external PFN_CRYPT_ASYNC_RETRIEVAL_COMPLETION_FUNC pfnCompletion;
  external Pointer pvCompletion;
}

class CRYPT_URL_ARRAY extends Struct {
  @Uint32() external int cUrl;
  external Pointer<Pointer<Utf16>> rgwszUrl;
}

class CRYPT_URL_INFO extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int dwSyncDeltaTime;
  @Uint32() external int cGroup;
  external Pointer<Uint32> rgcGroupEntry;
}

class CERT_CRL_CONTEXT_PAIR extends Struct {
  external Pointer<CERT_CONTEXT> pCertContext;
  external Pointer<CRL_CONTEXT> pCrlContext;
}

class CRYPT_GET_TIME_VALID_OBJECT_EXTRA_INFO extends Struct {
  @Uint32() external int cbSize;
  @Int32() external int iDeltaCrlIndicator;
  external Pointer<FILETIME> pftCacheResync;
  external Pointer<FILETIME> pLastSyncTime;
  external Pointer<FILETIME> pMaxAgeTime;
  external Pointer<CERT_REVOCATION_CHAIN_PARA> pChainPara;
  external Pointer<CRYPTOAPI_BLOB> pDeltaCrlIndicator;
}

class CERT_CHAIN_ENGINE_CONFIG extends Struct {
  @Uint32() external int cbSize;
  external Pointer hRestrictedRoot;
  external Pointer hRestrictedTrust;
  external Pointer hRestrictedOther;
  @Uint32() external int cAdditionalStore;
  external Pointer<Pointer> rghAdditionalStore;
  @Uint32() external int dwFlags;
  @Uint32() external int dwUrlRetrievalTimeout;
  @Uint32() external int MaximumCachedCertificates;
  @Uint32() external int CycleDetectionModulus;
  external Pointer hExclusiveRoot;
  external Pointer hExclusiveTrustedPeople;
  @Uint32() external int dwExclusiveFlags;
}

class CERT_TRUST_STATUS extends Struct {
  @Uint32() external int dwErrorStatus;
  @Uint32() external int dwInfoStatus;
}

class CERT_REVOCATION_INFO extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int dwRevocationResult;
  external Pointer<Utf8> pszRevocationOid;
  external Pointer pvOidSpecificInfo;
  @Int32() external int fHasFreshnessTime;
  @Uint32() external int dwFreshnessTime;
  external Pointer<CERT_REVOCATION_CRL_INFO> pCrlInfo;
}

class CERT_TRUST_LIST_INFO extends Struct {
  @Uint32() external int cbSize;
  external Pointer<CTL_ENTRY> pCtlEntry;
  external Pointer<CTL_CONTEXT> pCtlContext;
}

class CERT_CHAIN_ELEMENT extends Struct {
  @Uint32() external int cbSize;
  external Pointer<CERT_CONTEXT> pCertContext;
  external CERT_TRUST_STATUS TrustStatus;
  external Pointer<CERT_REVOCATION_INFO> pRevocationInfo;
  external Pointer<CTL_USAGE> pIssuanceUsage;
  external Pointer<CTL_USAGE> pApplicationUsage;
  external Pointer<Utf16> pwszExtendedErrorInfo;
}

class CERT_SIMPLE_CHAIN extends Struct {
  @Uint32() external int cbSize;
  external CERT_TRUST_STATUS TrustStatus;
  @Uint32() external int cElement;
  external Pointer<Pointer<CERT_CHAIN_ELEMENT>> rgpElement;
  external Pointer<CERT_TRUST_LIST_INFO> pTrustListInfo;
  @Int32() external int fHasRevocationFreshnessTime;
  @Uint32() external int dwRevocationFreshnessTime;
}

class CERT_CHAIN_CONTEXT extends Struct {
  @Uint32() external int cbSize;
  external CERT_TRUST_STATUS TrustStatus;
  @Uint32() external int cChain;
  external Pointer<Pointer<CERT_SIMPLE_CHAIN>> rgpChain;
  @Uint32() external int cLowerQualityChainContext;
  external Pointer<Pointer<CERT_CHAIN_CONTEXT>> rgpLowerQualityChainContext;
  @Int32() external int fHasRevocationFreshnessTime;
  @Uint32() external int dwRevocationFreshnessTime;
  @Uint32() external int dwCreateFlags;
  external GUID ChainId;
}

class CERT_USAGE_MATCH extends Struct {
  @Uint32() external int dwType;
  external CTL_USAGE Usage;
}

class CTL_USAGE_MATCH extends Struct {
  @Uint32() external int dwType;
  external CTL_USAGE Usage;
}

class CERT_CHAIN_PARA extends Struct {
  @Uint32() external int cbSize;
  external CERT_USAGE_MATCH RequestedUsage;
}

class CERT_REVOCATION_CHAIN_PARA extends Struct {
  @Uint32() external int cbSize;
  @IntPtr() external int hChainEngine;
  external Pointer hAdditionalStore;
  @Uint32() external int dwChainFlags;
  @Uint32() external int dwUrlRetrievalTimeout;
  external Pointer<FILETIME> pftCurrentTime;
  external Pointer<FILETIME> pftCacheResync;
  @Uint32() external int cbMaxUrlRetrievalByteCount;
}

class CRL_REVOCATION_INFO extends Struct {
  external Pointer<CRL_ENTRY> pCrlEntry;
  external Pointer<CRL_CONTEXT> pCrlContext;
  external Pointer<CERT_CHAIN_CONTEXT> pCrlIssuerChain;
}

class CERT_CHAIN_FIND_BY_ISSUER_PARA extends Struct {
  @Uint32() external int cbSize;
  external Pointer<Utf8> pszUsageIdentifier;
  @Uint32() external int dwKeySpec;
  @Uint32() external int dwAcquirePrivateKeyFlags;
  @Uint32() external int cIssuer;
  external Pointer<CRYPTOAPI_BLOB> rgIssuer;
  external PFN_CERT_CHAIN_FIND_BY_ISSUER_CALLBACK pfnFindCallback;
  external Pointer pvFindArg;
}

class CERT_CHAIN_POLICY_PARA extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int dwFlags;
  external Pointer pvExtraPolicyPara;
}

class CERT_CHAIN_POLICY_STATUS extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int dwError;
  @Int32() external int lChainIndex;
  @Int32() external int lElementIndex;
  external Pointer pvExtraPolicyStatus;
}

class AUTHENTICODE_EXTRA_CERT_CHAIN_POLICY_PARA extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int dwRegPolicySettings;
  external Pointer<CMSG_SIGNER_INFO> pSignerInfo;
}

class AUTHENTICODE_EXTRA_CERT_CHAIN_POLICY_STATUS extends Struct {
  @Uint32() external int cbSize;
  @Int32() external int fCommercial;
}

class AUTHENTICODE_TS_EXTRA_CERT_CHAIN_POLICY_PARA extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int dwRegPolicySettings;
  @Int32() external int fCommercial;
}

class HTTPSPolicyCallbackData extends Struct {
  @Uint32() external int Anonymous;
  @Uint32() external int dwAuthType;
  @Uint32() external int fdwChecks;
  external Pointer<Utf16> pwszServerName;
}

class EV_EXTRA_CERT_CHAIN_POLICY_PARA extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int dwRootProgramQualifierFlags;
}

class EV_EXTRA_CERT_CHAIN_POLICY_STATUS extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int dwQualifiers;
  @Uint32() external int dwIssuanceUsageIndex;
}

class SSL_F12_EXTRA_CERT_CHAIN_POLICY_STATUS extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int dwErrorLevel;
  @Uint32() external int dwErrorCategory;
  @Uint32() external int dwReserved;
  @Array(129)
  external Array<Uint16> wszErrorText;
}

class SSL_HPKP_HEADER_EXTRA_CERT_CHAIN_POLICY_PARA extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int dwReserved;
  external Pointer<Utf16> pwszServerName;
  @Array(2)
  external Array<Pointer<Int8>> rgpszHpkpValue;
}

class SSL_KEY_PIN_EXTRA_CERT_CHAIN_POLICY_PARA extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int dwReserved;
  external Pointer<Utf16> pwszServerName;
}

class SSL_KEY_PIN_EXTRA_CERT_CHAIN_POLICY_STATUS extends Struct {
  @Uint32() external int cbSize;
  @Int32() external int lError;
  @Array(130)
  external Array<Uint16> wszErrorText;
}

class CRYPT_PKCS12_PBE_PARAMS extends Struct {
  @Int32() external int iIterations;
  @Uint32() external int cbSalt;
}

class PKCS12_PBES2_EXPORT_PARAMS extends Struct {
  @Uint32() external int dwSize;
  external Pointer hNcryptDescriptor;
  external Pointer<Utf16> pwszPbes2Alg;
}

class CERT_SERVER_OCSP_RESPONSE_CONTEXT extends Struct {
  @Uint32() external int cbSize;
  external Pointer<Uint8> pbEncodedOcspResponse;
  @Uint32() external int cbEncodedOcspResponse;
}

class CERT_SERVER_OCSP_RESPONSE_OPEN_PARA extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int dwFlags;
  external Pointer<Uint32> pcbUsedSize;
  external Pointer<Utf16> pwszOcspDirectory;
  external PFN_CERT_SERVER_OCSP_RESPONSE_UPDATE_CALLBACK pfnUpdateCallback;
  external Pointer pvUpdateCallbackArg;
}

class CERT_SELECT_CHAIN_PARA extends Struct {
  @IntPtr() external int hChainEngine;
  external Pointer<FILETIME> pTime;
  external Pointer hAdditionalStore;
  external Pointer<CERT_CHAIN_PARA> pChainPara;
  @Uint32() external int dwFlags;
}

class CERT_SELECT_CRITERIA extends Struct {
  @Uint32() external int dwType;
  @Uint32() external int cPara;
  external Pointer<Pointer> ppPara;
}

class CRYPT_TIMESTAMP_REQUEST extends Struct {
  @Uint32() external int dwVersion;
  external CRYPT_ALGORITHM_IDENTIFIER HashAlgorithm;
  external CRYPTOAPI_BLOB HashedMessage;
  external Pointer<Utf8> pszTSAPolicyId;
  external CRYPTOAPI_BLOB Nonce;
  @Int32() external int fCertReq;
  @Uint32() external int cExtension;
  external Pointer<CERT_EXTENSION> rgExtension;
}

class CRYPT_TIMESTAMP_RESPONSE extends Struct {
  @Uint32() external int dwStatus;
  @Uint32() external int cFreeText;
  external Pointer<Pointer<Utf16>> rgFreeText;
  external CRYPT_BIT_BLOB FailureInfo;
  external CRYPTOAPI_BLOB ContentInfo;
}

class CRYPT_TIMESTAMP_ACCURACY extends Struct {
  @Uint32() external int dwSeconds;
  @Uint32() external int dwMillis;
  @Uint32() external int dwMicros;
}

class CRYPT_TIMESTAMP_INFO extends Struct {
  @Uint32() external int dwVersion;
  external Pointer<Utf8> pszTSAPolicyId;
  external CRYPT_ALGORITHM_IDENTIFIER HashAlgorithm;
  external CRYPTOAPI_BLOB HashedMessage;
  external CRYPTOAPI_BLOB SerialNumber;
  external FILETIME ftTime;
  external Pointer<CRYPT_TIMESTAMP_ACCURACY> pvAccuracy;
  @Int32() external int fOrdering;
  external CRYPTOAPI_BLOB Nonce;
  external CRYPTOAPI_BLOB Tsa;
  @Uint32() external int cExtension;
  external Pointer<CERT_EXTENSION> rgExtension;
}

class CRYPT_TIMESTAMP_CONTEXT extends Struct {
  @Uint32() external int cbEncoded;
  external Pointer<Uint8> pbEncoded;
  external Pointer<CRYPT_TIMESTAMP_INFO> pTimeStamp;
}

class CRYPT_TIMESTAMP_PARA extends Struct {
  external Pointer<Utf8> pszTSAPolicyId;
  @Int32() external int fRequestCerts;
  external CRYPTOAPI_BLOB Nonce;
  @Uint32() external int cExtension;
  external Pointer<CERT_EXTENSION> rgExtension;
}

class CRYPT_OBJECT_LOCATOR_PROVIDER_TABLE extends Struct {
  @Uint32() external int cbSize;
  external PFN_CRYPT_OBJECT_LOCATOR_PROVIDER_GET pfnGet;
  external PFN_CRYPT_OBJECT_LOCATOR_PROVIDER_RELEASE pfnRelease;
  external PFN_CRYPT_OBJECT_LOCATOR_PROVIDER_FREE_PASSWORD pfnFreePassword;
  external PFN_CRYPT_OBJECT_LOCATOR_PROVIDER_FREE pfnFree;
  external PFN_CRYPT_OBJECT_LOCATOR_PROVIDER_FREE_IDENTIFIER pfnFreeIdentifier;
}

class CRYPTPROTECT_PROMPTSTRUCT extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int dwPromptFlags;
  @IntPtr() external int hwndApp;
  external Pointer<Utf16> szPrompt;
}

class SecPkgContext_RemoteCredentialInfo extends Struct {
  @Uint32() external int cbCertificateChain;
  external Pointer<Uint8> pbCertificateChain;
  @Uint32() external int cCertificates;
  @Uint32() external int fFlags;
  @Uint32() external int dwBits;
}

class SecPkgContext_LocalCredentialInfo extends Struct {
  @Uint32() external int cbCertificateChain;
  external Pointer<Uint8> pbCertificateChain;
  @Uint32() external int cCertificates;
  @Uint32() external int fFlags;
  @Uint32() external int dwBits;
}

class SecPkgContext_ClientCertPolicyResult extends Struct {
  @Int32() external int dwPolicyResult;
  external GUID guidPolicyId;
}

class SecPkgContext_IssuerListInfoEx extends Struct {
  external Pointer<CRYPTOAPI_BLOB> aIssuers;
  @Uint32() external int cIssuers;
}

class SecPkgContext_ConnectionInfo extends Struct {
  @Uint32() external int dwProtocol;
  @Uint32() external int aiCipher;
  @Uint32() external int dwCipherStrength;
  @Uint32() external int aiHash;
  @Uint32() external int dwHashStrength;
  @Uint32() external int aiExch;
  @Uint32() external int dwExchStrength;
}

class SecPkgContext_ConnectionInfoEx extends Struct {
  @Uint32() external int dwVersion;
  @Uint32() external int dwProtocol;
  @Array(64)
  external Array<Uint16> szCipher;
  @Uint32() external int dwCipherStrength;
  @Array(64)
  external Array<Uint16> szHash;
  @Uint32() external int dwHashStrength;
  @Array(64)
  external Array<Uint16> szExchange;
  @Uint32() external int dwExchStrength;
}

class SecPkgContext_CipherInfo extends Struct {
  @Uint32() external int dwVersion;
  @Uint32() external int dwProtocol;
  @Uint32() external int dwCipherSuite;
  @Uint32() external int dwBaseCipherSuite;
  @Array(64)
  external Array<Uint16> szCipherSuite;
  @Array(64)
  external Array<Uint16> szCipher;
  @Uint32() external int dwCipherLen;
  @Uint32() external int dwCipherBlockLen;
  @Array(64)
  external Array<Uint16> szHash;
  @Uint32() external int dwHashLen;
  @Array(64)
  external Array<Uint16> szExchange;
  @Uint32() external int dwMinExchangeLen;
  @Uint32() external int dwMaxExchangeLen;
  @Array(64)
  external Array<Uint16> szCertificate;
  @Uint32() external int dwKeyType;
}

class SecPkgContext_EapKeyBlock extends Struct {
  @Array(128)
  external Array<Uint8> rgbKeys;
  @Array(64)
  external Array<Uint8> rgbIVs;
}

class SecPkgContext_MappedCredAttr extends Struct {
  @Uint32() external int dwAttribute;
  external Pointer pvBuffer;
}

class SecPkgContext_SessionInfo extends Struct {
  @Uint32() external int dwFlags;
  @Uint32() external int cbSessionId;
  @Array(32)
  external Array<Uint8> rgbSessionId;
}

class SecPkgContext_SessionAppData extends Struct {
  @Uint32() external int dwFlags;
  @Uint32() external int cbAppData;
  external Pointer<Uint8> pbAppData;
}

class SecPkgContext_EapPrfInfo extends Struct {
  @Uint32() external int dwVersion;
  @Uint32() external int cbPrfData;
  external Pointer<Uint8> pbPrfData;
}

class SecPkgContext_SupportedSignatures extends Struct {
  @Uint16() external int cSignatureAndHashAlgorithms;
  external Pointer<Uint16> pSignatureAndHashAlgorithms;
}

class SecPkgContext_Certificates extends Struct {
  @Uint32() external int cCertificates;
  @Uint32() external int cbCertificateChain;
  external Pointer<Uint8> pbCertificateChain;
}

class SecPkgContext_CertInfo extends Struct {
  @Uint32() external int dwVersion;
  @Uint32() external int cbSubjectName;
  external Pointer<Utf16> pwszSubjectName;
  @Uint32() external int cbIssuerName;
  external Pointer<Utf16> pwszIssuerName;
  @Uint32() external int dwKeySize;
}

class SecPkgContext_UiInfo extends Struct {
  @IntPtr() external int hParentWindow;
}

class SecPkgContext_EarlyStart extends Struct {
  @Uint32() external int dwEarlyStartFlags;
}

class SecPkgContext_KeyingMaterialInfo extends Struct {
  @Uint16() external int cbLabel;
  external Pointer<Utf8> pszLabel;
  @Uint16() external int cbContextValue;
  external Pointer<Uint8> pbContextValue;
  @Uint32() external int cbKeyingMaterial;
}

class SecPkgContext_KeyingMaterial extends Struct {
  @Uint32() external int cbKeyingMaterial;
  external Pointer<Uint8> pbKeyingMaterial;
}

class SecPkgContext_KeyingMaterial_Inproc extends Struct {
  @Uint16() external int cbLabel;
  external Pointer<Utf8> pszLabel;
  @Uint16() external int cbContextValue;
  external Pointer<Uint8> pbContextValue;
  @Uint32() external int cbKeyingMaterial;
  external Pointer<Uint8> pbKeyingMaterial;
}

class SecPkgContext_SrtpParameters extends Struct {
  @Uint16() external int ProtectionProfile;
  @Uint8() external int MasterKeyIdentifierSize;
  external Pointer<Uint8> MasterKeyIdentifier;
}

class SecPkgContext_TokenBinding extends Struct {
  @Uint8() external int MajorVersion;
  @Uint8() external int MinorVersion;
  @Uint16() external int KeyParametersSize;
  external Pointer<Uint8> KeyParameters;
}

class _HMAPPER extends Struct {
}

class SCHANNEL_CRED extends Struct {
  @Uint32() external int dwVersion;
  @Uint32() external int cCreds;
  external Pointer<Pointer<CERT_CONTEXT>> paCred;
  external Pointer hRootStore;
  @Uint32() external int cMappers;
  external Pointer<Pointer<_HMAPPER>> aphMappers;
  @Uint32() external int cSupportedAlgs;
  external Pointer<Uint32> palgSupportedAlgs;
  @Uint32() external int grbitEnabledProtocols;
  @Uint32() external int dwMinimumCipherStrength;
  @Uint32() external int dwMaximumCipherStrength;
  @Uint32() external int dwSessionLifespan;
  @Uint32() external int dwFlags;
  @Uint32() external int dwCredFormat;
}

class SEND_GENERIC_TLS_EXTENSION extends Struct {
  @Uint16() external int ExtensionType;
  @Uint16() external int HandshakeType;
  @Uint32() external int Flags;
  @Uint16() external int BufferSize;
  @Array(1)
  external Array<Uint8> Buffer;
}

class TLS_EXTENSION_SUBSCRIPTION extends Struct {
  @Uint16() external int ExtensionType;
  @Uint16() external int HandshakeType;
}

class SUBSCRIBE_GENERIC_TLS_EXTENSION extends Struct {
  @Uint32() external int Flags;
  @Uint32() external int SubscriptionsCount;
  @Array(1)
  external Array<TLS_EXTENSION_SUBSCRIPTION> Subscriptions;
}

class SCHANNEL_CERT_HASH extends Struct {
  @Uint32() external int dwLength;
  @Uint32() external int dwFlags;
  @IntPtr() external int hProv;
  @Array(20)
  external Array<Uint8> ShaHash;
}

class SCHANNEL_CERT_HASH_STORE extends Struct {
  @Uint32() external int dwLength;
  @Uint32() external int dwFlags;
  @IntPtr() external int hProv;
  @Array(20)
  external Array<Uint8> ShaHash;
  @Array(128)
  external Array<Uint16> pwszStoreName;
}

class SCHANNEL_ALERT_TOKEN extends Struct {
  @Uint32() external int dwTokenType;
  @Uint32() external int dwAlertType;
  @Uint32() external int dwAlertNumber;
}

class SCHANNEL_SESSION_TOKEN extends Struct {
  @Uint32() external int dwTokenType;
  @Uint32() external int dwFlags;
}

class SCHANNEL_CLIENT_SIGNATURE extends Struct {
  @Uint32() external int cbLength;
  @Uint32() external int aiHash;
  @Uint32() external int cbHash;
  @Array(36)
  external Array<Uint8> HashValue;
  @Array(20)
  external Array<Uint8> CertThumbprint;
}

class SSL_CREDENTIAL_CERTIFICATE extends Struct {
  @Uint32() external int cbPrivateKey;
  external Pointer<Uint8> pPrivateKey;
  @Uint32() external int cbCertificate;
  external Pointer<Uint8> pCertificate;
  external Pointer<Utf8> pszPassword;
}

class SCH_CRED extends Struct {
  @Uint32() external int dwVersion;
  @Uint32() external int cCreds;
  external Pointer<Pointer> paSecret;
  external Pointer<Pointer> paPublic;
  @Uint32() external int cMappers;
  external Pointer<Pointer<_HMAPPER>> aphMappers;
}

class SCH_CRED_SECRET_CAPI extends Struct {
  @Uint32() external int dwType;
  @IntPtr() external int hProv;
}

class SCH_CRED_SECRET_PRIVKEY extends Struct {
  @Uint32() external int dwType;
  external Pointer<Uint8> pPrivateKey;
  @Uint32() external int cbPrivateKey;
  external Pointer<Utf8> pszPassword;
}

class SCH_CRED_PUBLIC_CERTCHAIN extends Struct {
  @Uint32() external int dwType;
  @Uint32() external int cbCertChain;
  external Pointer<Uint8> pCertChain;
}

class PctPublicKey extends Struct {
  @Uint32() external int Type;
  @Uint32() external int cbKey;
  @Array(1)
  external Array<Uint8> pKey;
}

class X509Certificate extends Struct {
  @Uint32() external int Version;
  @Array(4)
  external Array<Uint32> SerialNumber;
  @Uint32() external int SignatureAlgorithm;
  external FILETIME ValidFrom;
  external FILETIME ValidUntil;
  external Pointer<Utf8> pszIssuer;
  external Pointer<Utf8> pszSubject;
  external Pointer<PctPublicKey> pPublicKey;
}

class SCH_EXTENSION_DATA extends Struct {
  @Uint16() external int ExtensionType;
  external Pointer<Uint8> pExtData;
  @Uint32() external int cbExtData;
}

class OBJECTS_AND_SID extends Struct {
  @Uint32() external int ObjectsPresent;
  external GUID ObjectTypeGuid;
  external GUID InheritedObjectTypeGuid;
  external Pointer<SID> pSid;
}

class OBJECTS_AND_NAME_A extends Struct {
  @Uint32() external int ObjectsPresent;
  @Uint32() external int ObjectType;
  external Pointer<Utf8> ObjectTypeName;
  external Pointer<Utf8> InheritedObjectTypeName;
  external Pointer<Utf8> ptstrName;
}

class OBJECTS_AND_NAME_W extends Struct {
  @Uint32() external int ObjectsPresent;
  @Uint32() external int ObjectType;
  external Pointer<Utf16> ObjectTypeName;
  external Pointer<Utf16> InheritedObjectTypeName;
  external Pointer<Utf16> ptstrName;
}

class TRUSTEE_A extends Struct {
  external Pointer<TRUSTEE_A> pMultipleTrustee;
  @Uint32() external int MultipleTrusteeOperation;
  @Uint32() external int TrusteeForm;
  @Uint32() external int TrusteeType;
  external Pointer<Utf8> ptstrName;
}

class TRUSTEE_W extends Struct {
  external Pointer<TRUSTEE_> pMultipleTrustee;
  @Uint32() external int MultipleTrusteeOperation;
  @Uint32() external int TrusteeForm;
  @Uint32() external int TrusteeType;
  external Pointer<Utf16> ptstrName;
}

class EXPLICIT_ACCESS_A extends Struct {
  @Uint32() external int grfAccessPermissions;
  @Uint32() external int grfAccessMode;
  @Uint32() external int grfInheritance;
  external TRUSTEE_A Trustee;
}

class EXPLICIT_ACCESS_W extends Struct {
  @Uint32() external int grfAccessPermissions;
  @Uint32() external int grfAccessMode;
  @Uint32() external int grfInheritance;
  external TRUSTEE_W Trustee;
}

class TRUSTEE_ACCESSA extends Struct {
  external Pointer<Utf8> lpProperty;
  @Uint32() external int Access;
  @Uint32() external int fAccessFlags;
  @Uint32() external int fReturnedAccess;
}

class TRUSTEE_ACCESSW extends Struct {
  external Pointer<Utf16> lpProperty;
  @Uint32() external int Access;
  @Uint32() external int fAccessFlags;
  @Uint32() external int fReturnedAccess;
}

class ACTRL_OVERLAPPED extends Struct {
  @Uint32() external int Anonymous;
  @Uint32() external int Reserved2;
  @IntPtr() external int hEvent;
}

class ACTRL_ACCESS_INFOA extends Struct {
  @Uint32() external int fAccessPermission;
  external Pointer<Utf8> lpAccessPermissionName;
}

class ACTRL_ACCESS_INFOW extends Struct {
  @Uint32() external int fAccessPermission;
  external Pointer<Utf16> lpAccessPermissionName;
}

class ACTRL_CONTROL_INFOA extends Struct {
  external Pointer<Utf8> lpControlId;
  external Pointer<Utf8> lpControlName;
}

class ACTRL_CONTROL_INFOW extends Struct {
  external Pointer<Utf16> lpControlId;
  external Pointer<Utf16> lpControlName;
}

class _FN_OBJECT_MGR_FUNCTIONS extends Struct {
  @Uint32() external int Placeholder;
}

class INHERITED_FROMA extends Struct {
  @Int32() external int GenerationGap;
  external Pointer<Utf8> AncestorName;
}

class INHERITED_FROMW extends Struct {
  @Int32() external int GenerationGap;
  external Pointer<Utf16> AncestorName;
}

class WLX_SC_NOTIFICATION_INFO extends Struct {
  external Pointer<Utf16> pszCard;
  external Pointer<Utf16> pszReader;
  external Pointer<Utf16> pszContainer;
  external Pointer<Utf16> pszCryptoProvider;
}

class WLX_PROFILE_V1_0 extends Struct {
  @Uint32() external int dwType;
  external Pointer<Utf16> pszProfile;
}

class WLX_PROFILE_V2_0 extends Struct {
  @Uint32() external int dwType;
  external Pointer<Utf16> pszProfile;
  external Pointer<Utf16> pszPolicy;
  external Pointer<Utf16> pszNetworkDefaultUserProfile;
  external Pointer<Utf16> pszServerName;
  external Pointer<Utf16> pszEnvironment;
}

class WLX_MPR_NOTIFY_INFO extends Struct {
  external Pointer<Utf16> pszUserName;
  external Pointer<Utf16> pszDomain;
  external Pointer<Utf16> pszPassword;
  external Pointer<Utf16> pszOldPassword;
}

class WLX_TERMINAL_SERVICES_DATA extends Struct {
  @Array(129)
  external Array<Uint16> ProfilePath;
  @Array(129)
  external Array<Uint16> HomeDir;
  @Array(4)
  external Array<Uint16> HomeDirDrive;
}

class WLX_CLIENT_CREDENTIALS_INFO_V1_0 extends Struct {
  @Uint32() external int dwType;
  external Pointer<Utf16> pszUserName;
  external Pointer<Utf16> pszDomain;
  external Pointer<Utf16> pszPassword;
  @Int32() external int fPromptForPassword;
}

class WLX_CLIENT_CREDENTIALS_INFO_V2_0 extends Struct {
  @Uint32() external int dwType;
  external Pointer<Utf16> pszUserName;
  external Pointer<Utf16> pszDomain;
  external Pointer<Utf16> pszPassword;
  @Int32() external int fPromptForPassword;
  @Int32() external int fDisconnectOnLogonFailure;
}

class WLX_CONSOLESWITCH_CREDENTIALS_INFO_V1_0 extends Struct {
  @Uint32() external int dwType;
  @IntPtr() external int UserToken;
  external LUID LogonId;
  external QUOTA_LIMITS Quotas;
  external Pointer<Utf16> UserName;
  external Pointer<Utf16> Domain;
  @Int64() external int LogonTime;
  @Int32() external int SmartCardLogon;
  @Uint32() external int ProfileLength;
  @Uint32() external int MessageType;
  @Uint16() external int LogonCount;
  @Uint16() external int BadPasswordCount;
  @Int64() external int ProfileLogonTime;
  @Int64() external int LogoffTime;
  @Int64() external int KickOffTime;
  @Int64() external int PasswordLastSet;
  @Int64() external int PasswordCanChange;
  @Int64() external int PasswordMustChange;
  external Pointer<Utf16> LogonScript;
  external Pointer<Utf16> HomeDirectory;
  external Pointer<Utf16> FullName;
  external Pointer<Utf16> ProfilePath;
  external Pointer<Utf16> HomeDirectoryDrive;
  external Pointer<Utf16> LogonServer;
  @Uint32() external int UserFlags;
  @Uint32() external int PrivateDataLen;
  external Pointer<Uint8> PrivateData;
}

class WLX_DESKTOP extends Struct {
  @Uint32() external int Size;
  @Uint32() external int Flags;
  @IntPtr() external int hDesktop;
  external Pointer<Utf16> pszDesktopName;
}

class WLX_DISPATCH_VERSION_1_0 extends Struct {
  external PWLX_USE_CTRL_ALT_DEL WlxUseCtrlAltDel;
  external PWLX_SET_CONTEXT_POINTER WlxSetContextPointer;
  external PWLX_SAS_NOTIFY WlxSasNotify;
  external PWLX_SET_TIMEOUT WlxSetTimeout;
  external PWLX_ASSIGN_SHELL_PROTECTION WlxAssignShellProtection;
  external PWLX_MESSAGE_BOX WlxMessageBox;
  external PWLX_DIALOG_BOX WlxDialogBox;
  external PWLX_DIALOG_BOX_PARAM WlxDialogBoxParam;
  external PWLX_DIALOG_BOX_INDIRECT WlxDialogBoxIndirect;
  external PWLX_DIALOG_BOX_INDIRECT_PARAM WlxDialogBoxIndirectParam;
  external PWLX_SWITCH_DESKTOP_TO_USER WlxSwitchDesktopToUser;
  external PWLX_SWITCH_DESKTOP_TO_WINLOGON WlxSwitchDesktopToWinlogon;
  external PWLX_CHANGE_PASSWORD_NOTIFY WlxChangePasswordNotify;
}

class WLX_DISPATCH_VERSION_1_1 extends Struct {
  external PWLX_USE_CTRL_ALT_DEL WlxUseCtrlAltDel;
  external PWLX_SET_CONTEXT_POINTER WlxSetContextPointer;
  external PWLX_SAS_NOTIFY WlxSasNotify;
  external PWLX_SET_TIMEOUT WlxSetTimeout;
  external PWLX_ASSIGN_SHELL_PROTECTION WlxAssignShellProtection;
  external PWLX_MESSAGE_BOX WlxMessageBox;
  external PWLX_DIALOG_BOX WlxDialogBox;
  external PWLX_DIALOG_BOX_PARAM WlxDialogBoxParam;
  external PWLX_DIALOG_BOX_INDIRECT WlxDialogBoxIndirect;
  external PWLX_DIALOG_BOX_INDIRECT_PARAM WlxDialogBoxIndirectParam;
  external PWLX_SWITCH_DESKTOP_TO_USER WlxSwitchDesktopToUser;
  external PWLX_SWITCH_DESKTOP_TO_WINLOGON WlxSwitchDesktopToWinlogon;
  external PWLX_CHANGE_PASSWORD_NOTIFY WlxChangePasswordNotify;
  external PWLX_GET_SOURCE_DESKTOP WlxGetSourceDesktop;
  external PWLX_SET_RETURN_DESKTOP WlxSetReturnDesktop;
  external PWLX_CREATE_USER_DESKTOP WlxCreateUserDesktop;
  external PWLX_CHANGE_PASSWORD_NOTIFY_EX WlxChangePasswordNotifyEx;
}

class WLX_DISPATCH_VERSION_1_2 extends Struct {
  external PWLX_USE_CTRL_ALT_DEL WlxUseCtrlAltDel;
  external PWLX_SET_CONTEXT_POINTER WlxSetContextPointer;
  external PWLX_SAS_NOTIFY WlxSasNotify;
  external PWLX_SET_TIMEOUT WlxSetTimeout;
  external PWLX_ASSIGN_SHELL_PROTECTION WlxAssignShellProtection;
  external PWLX_MESSAGE_BOX WlxMessageBox;
  external PWLX_DIALOG_BOX WlxDialogBox;
  external PWLX_DIALOG_BOX_PARAM WlxDialogBoxParam;
  external PWLX_DIALOG_BOX_INDIRECT WlxDialogBoxIndirect;
  external PWLX_DIALOG_BOX_INDIRECT_PARAM WlxDialogBoxIndirectParam;
  external PWLX_SWITCH_DESKTOP_TO_USER WlxSwitchDesktopToUser;
  external PWLX_SWITCH_DESKTOP_TO_WINLOGON WlxSwitchDesktopToWinlogon;
  external PWLX_CHANGE_PASSWORD_NOTIFY WlxChangePasswordNotify;
  external PWLX_GET_SOURCE_DESKTOP WlxGetSourceDesktop;
  external PWLX_SET_RETURN_DESKTOP WlxSetReturnDesktop;
  external PWLX_CREATE_USER_DESKTOP WlxCreateUserDesktop;
  external PWLX_CHANGE_PASSWORD_NOTIFY_EX WlxChangePasswordNotifyEx;
  external PWLX_CLOSE_USER_DESKTOP WlxCloseUserDesktop;
}

class WLX_DISPATCH_VERSION_1_3 extends Struct {
  external PWLX_USE_CTRL_ALT_DEL WlxUseCtrlAltDel;
  external PWLX_SET_CONTEXT_POINTER WlxSetContextPointer;
  external PWLX_SAS_NOTIFY WlxSasNotify;
  external PWLX_SET_TIMEOUT WlxSetTimeout;
  external PWLX_ASSIGN_SHELL_PROTECTION WlxAssignShellProtection;
  external PWLX_MESSAGE_BOX WlxMessageBox;
  external PWLX_DIALOG_BOX WlxDialogBox;
  external PWLX_DIALOG_BOX_PARAM WlxDialogBoxParam;
  external PWLX_DIALOG_BOX_INDIRECT WlxDialogBoxIndirect;
  external PWLX_DIALOG_BOX_INDIRECT_PARAM WlxDialogBoxIndirectParam;
  external PWLX_SWITCH_DESKTOP_TO_USER WlxSwitchDesktopToUser;
  external PWLX_SWITCH_DESKTOP_TO_WINLOGON WlxSwitchDesktopToWinlogon;
  external PWLX_CHANGE_PASSWORD_NOTIFY WlxChangePasswordNotify;
  external PWLX_GET_SOURCE_DESKTOP WlxGetSourceDesktop;
  external PWLX_SET_RETURN_DESKTOP WlxSetReturnDesktop;
  external PWLX_CREATE_USER_DESKTOP WlxCreateUserDesktop;
  external PWLX_CHANGE_PASSWORD_NOTIFY_EX WlxChangePasswordNotifyEx;
  external PWLX_CLOSE_USER_DESKTOP WlxCloseUserDesktop;
  external PWLX_SET_OPTION WlxSetOption;
  external PWLX_GET_OPTION WlxGetOption;
  external PWLX_WIN31_MIGRATE WlxWin31Migrate;
  external PWLX_QUERY_CLIENT_CREDENTIALS WlxQueryClientCredentials;
  external PWLX_QUERY_IC_CREDENTIALS WlxQueryInetConnectorCredentials;
  external PWLX_DISCONNECT WlxDisconnect;
  external PWLX_QUERY_TERMINAL_SERVICES_DATA WlxQueryTerminalServicesData;
}

class WLX_DISPATCH_VERSION_1_4 extends Struct {
  external PWLX_USE_CTRL_ALT_DEL WlxUseCtrlAltDel;
  external PWLX_SET_CONTEXT_POINTER WlxSetContextPointer;
  external PWLX_SAS_NOTIFY WlxSasNotify;
  external PWLX_SET_TIMEOUT WlxSetTimeout;
  external PWLX_ASSIGN_SHELL_PROTECTION WlxAssignShellProtection;
  external PWLX_MESSAGE_BOX WlxMessageBox;
  external PWLX_DIALOG_BOX WlxDialogBox;
  external PWLX_DIALOG_BOX_PARAM WlxDialogBoxParam;
  external PWLX_DIALOG_BOX_INDIRECT WlxDialogBoxIndirect;
  external PWLX_DIALOG_BOX_INDIRECT_PARAM WlxDialogBoxIndirectParam;
  external PWLX_SWITCH_DESKTOP_TO_USER WlxSwitchDesktopToUser;
  external PWLX_SWITCH_DESKTOP_TO_WINLOGON WlxSwitchDesktopToWinlogon;
  external PWLX_CHANGE_PASSWORD_NOTIFY WlxChangePasswordNotify;
  external PWLX_GET_SOURCE_DESKTOP WlxGetSourceDesktop;
  external PWLX_SET_RETURN_DESKTOP WlxSetReturnDesktop;
  external PWLX_CREATE_USER_DESKTOP WlxCreateUserDesktop;
  external PWLX_CHANGE_PASSWORD_NOTIFY_EX WlxChangePasswordNotifyEx;
  external PWLX_CLOSE_USER_DESKTOP WlxCloseUserDesktop;
  external PWLX_SET_OPTION WlxSetOption;
  external PWLX_GET_OPTION WlxGetOption;
  external PWLX_WIN31_MIGRATE WlxWin31Migrate;
  external PWLX_QUERY_CLIENT_CREDENTIALS WlxQueryClientCredentials;
  external PWLX_QUERY_IC_CREDENTIALS WlxQueryInetConnectorCredentials;
  external PWLX_DISCONNECT WlxDisconnect;
  external PWLX_QUERY_TERMINAL_SERVICES_DATA WlxQueryTerminalServicesData;
  external PWLX_QUERY_CONSOLESWITCH_CREDENTIALS WlxQueryConsoleSwitchCredentials;
  external PWLX_QUERY_TS_LOGON_CREDENTIALS WlxQueryTsLogonCredentials;
}

class WLX_NOTIFICATION_INFO extends Struct {
  @Uint32() external int Size;
  @Uint32() external int Flags;
  external Pointer<Utf16> UserName;
  external Pointer<Utf16> Domain;
  external Pointer<Utf16> WindowStation;
  @IntPtr() external int hToken;
  @IntPtr() external int hDesktop;
  external PFNMSGECALLBACK pStatusCallback;
}

class TpmVirtualSmartCardManager extends Struct {
}

class RemoteTpmVirtualSmartCardManager extends Struct {
}

class KeyCredentialManagerInfo extends Struct {
  external GUID containerId;
}

class NOTIFYINFO extends Struct {
  @Uint32() external int dwNotifyStatus;
  @Uint32() external int dwOperationStatus;
  external Pointer lpContext;
}

class NOTIFYADD extends Struct {
  @IntPtr() external int hwndOwner;
  external NETRESOURCEA NetResource;
  @Uint32() external int dwAddFlags;
}

class NOTIFYCANCEL extends Struct {
  external Pointer<Utf16> lpName;
  external Pointer<Utf16> lpProvider;
  @Uint32() external int dwFlags;
  @Int32() external int fForce;
}

class SCARD_READERSTATEA extends Struct {
  external Pointer<Utf8> szReader;
  external Pointer pvUserData;
  @Uint32() external int dwCurrentState;
  @Uint32() external int dwEventState;
  @Uint32() external int cbAtr;
  @Array(36)
  external Array<Uint8> rgbAtr;
}

class SCARD_READERSTATEW extends Struct {
  external Pointer<Utf16> szReader;
  external Pointer pvUserData;
  @Uint32() external int dwCurrentState;
  @Uint32() external int dwEventState;
  @Uint32() external int cbAtr;
  @Array(36)
  external Array<Uint8> rgbAtr;
}

class SCARD_ATRMASK extends Struct {
  @Uint32() external int cbAtr;
  @Array(36)
  external Array<Uint8> rgbAtr;
  @Array(36)
  external Array<Uint8> rgbMask;
}

class OPENCARD_SEARCH_CRITERIAA extends Struct {
  @Uint32() external int dwStructSize;
  external Pointer<Utf8> lpstrGroupNames;
  @Uint32() external int nMaxGroupNames;
  external Pointer<GUID> rgguidInterfaces;
  @Uint32() external int cguidInterfaces;
  external Pointer<Utf8> lpstrCardNames;
  @Uint32() external int nMaxCardNames;
  external Pointer<OCNCHKPROC> lpfnCheck;
  external Pointer<OCNCONNPROCA> lpfnConnect;
  external Pointer<OCNDSCPROC> lpfnDisconnect;
  external Pointer pvUserData;
  @Uint32() external int dwShareMode;
  @Uint32() external int dwPreferredProtocols;
}

class OPENCARD_SEARCH_CRITERIAW extends Struct {
  @Uint32() external int dwStructSize;
  external Pointer<Utf16> lpstrGroupNames;
  @Uint32() external int nMaxGroupNames;
  external Pointer<GUID> rgguidInterfaces;
  @Uint32() external int cguidInterfaces;
  external Pointer<Utf16> lpstrCardNames;
  @Uint32() external int nMaxCardNames;
  external Pointer<OCNCHKPROC> lpfnCheck;
  external Pointer<OCNCONNPROCW> lpfnConnect;
  external Pointer<OCNDSCPROC> lpfnDisconnect;
  external Pointer pvUserData;
  @Uint32() external int dwShareMode;
  @Uint32() external int dwPreferredProtocols;
}

class OPENCARDNAME_EXA extends Struct {
  @Uint32() external int dwStructSize;
  @IntPtr() external int hSCardContext;
  @IntPtr() external int hwndOwner;
  @Uint32() external int dwFlags;
  external Pointer<Utf8> lpstrTitle;
  external Pointer<Utf8> lpstrSearchDesc;
  @IntPtr() external int hIcon;
  external Pointer<OPENCARD_SEARCH_CRITERIAA> pOpenCardSearchCriteria;
  external Pointer<OCNCONNPROCA> lpfnConnect;
  external Pointer pvUserData;
  @Uint32() external int dwShareMode;
  @Uint32() external int dwPreferredProtocols;
  external Pointer<Utf8> lpstrRdr;
  @Uint32() external int nMaxRdr;
  external Pointer<Utf8> lpstrCard;
  @Uint32() external int nMaxCard;
  @Uint32() external int dwActiveProtocol;
  @IntPtr() external int hCardHandle;
}

class OPENCARDNAME_EXW extends Struct {
  @Uint32() external int dwStructSize;
  @IntPtr() external int hSCardContext;
  @IntPtr() external int hwndOwner;
  @Uint32() external int dwFlags;
  external Pointer<Utf16> lpstrTitle;
  external Pointer<Utf16> lpstrSearchDesc;
  @IntPtr() external int hIcon;
  external Pointer<OPENCARD_SEARCH_CRITERIA> pOpenCardSearchCriteria;
  external Pointer<OCNCONNPROCW> lpfnConnect;
  external Pointer pvUserData;
  @Uint32() external int dwShareMode;
  @Uint32() external int dwPreferredProtocols;
  external Pointer<Utf16> lpstrRdr;
  @Uint32() external int nMaxRdr;
  external Pointer<Utf16> lpstrCard;
  @Uint32() external int nMaxCard;
  @Uint32() external int dwActiveProtocol;
  @IntPtr() external int hCardHandle;
}

class READER_SEL_REQUEST extends Struct {
  @Uint32() external int dwShareMode;
  @Uint32() external int dwPreferredProtocols;
  @Uint32() external int MatchType;
  @Uint32() external int Anonymous;
}

class READER_SEL_RESPONSE extends Struct {
  @Uint32() external int cbReaderNameOffset;
  @Uint32() external int cchReaderNameLength;
  @Uint32() external int cbCardNameOffset;
  @Uint32() external int cchCardNameLength;
}

class OPENCARDNAMEA extends Struct {
  @Uint32() external int dwStructSize;
  @IntPtr() external int hwndOwner;
  @IntPtr() external int hSCardContext;
  external Pointer<Utf8> lpstrGroupNames;
  @Uint32() external int nMaxGroupNames;
  external Pointer<Utf8> lpstrCardNames;
  @Uint32() external int nMaxCardNames;
  external Pointer<GUID> rgguidInterfaces;
  @Uint32() external int cguidInterfaces;
  external Pointer<Utf8> lpstrRdr;
  @Uint32() external int nMaxRdr;
  external Pointer<Utf8> lpstrCard;
  @Uint32() external int nMaxCard;
  external Pointer<Utf8> lpstrTitle;
  @Uint32() external int dwFlags;
  external Pointer pvUserData;
  @Uint32() external int dwShareMode;
  @Uint32() external int dwPreferredProtocols;
  @Uint32() external int dwActiveProtocol;
  external Pointer<OCNCONNPROCA> lpfnConnect;
  external Pointer<OCNCHKPROC> lpfnCheck;
  external Pointer<OCNDSCPROC> lpfnDisconnect;
  @IntPtr() external int hCardHandle;
}

class OPENCARDNAMEW extends Struct {
  @Uint32() external int dwStructSize;
  @IntPtr() external int hwndOwner;
  @IntPtr() external int hSCardContext;
  external Pointer<Utf16> lpstrGroupNames;
  @Uint32() external int nMaxGroupNames;
  external Pointer<Utf16> lpstrCardNames;
  @Uint32() external int nMaxCardNames;
  external Pointer<GUID> rgguidInterfaces;
  @Uint32() external int cguidInterfaces;
  external Pointer<Utf16> lpstrRdr;
  @Uint32() external int nMaxRdr;
  external Pointer<Utf16> lpstrCard;
  @Uint32() external int nMaxCard;
  external Pointer<Utf16> lpstrTitle;
  @Uint32() external int dwFlags;
  external Pointer pvUserData;
  @Uint32() external int dwShareMode;
  @Uint32() external int dwPreferredProtocols;
  @Uint32() external int dwActiveProtocol;
  external Pointer<OCNCONNPROCW> lpfnConnect;
  external Pointer<OCNCHKPROC> lpfnCheck;
  external Pointer<OCNDSCPROC> lpfnDisconnect;
  @IntPtr() external int hCardHandle;
}

class LOGON_HOURS extends Struct {
  @Uint16() external int UnitsPerWeek;
  external Pointer<Uint8> LogonHours;
}

class SR_SECURITY_DESCRIPTOR extends Struct {
  @Uint32() external int Length;
  external Pointer<Uint8> SecurityDescriptor;
}

class USER_ALL_INFORMATION extends Struct {
  @Int64() external int LastLogon;
  @Int64() external int LastLogoff;
  @Int64() external int PasswordLastSet;
  @Int64() external int AccountExpires;
  @Int64() external int PasswordCanChange;
  @Int64() external int PasswordMustChange;
  external UNICODE_STRING UserName;
  external UNICODE_STRING FullName;
  external UNICODE_STRING HomeDirectory;
  external UNICODE_STRING HomeDirectoryDrive;
  external UNICODE_STRING ScriptPath;
  external UNICODE_STRING ProfilePath;
  external UNICODE_STRING AdminComment;
  external UNICODE_STRING WorkStations;
  external UNICODE_STRING UserComment;
  external UNICODE_STRING Parameters;
  external UNICODE_STRING LmPassword;
  external UNICODE_STRING NtPassword;
  external UNICODE_STRING PrivateData;
  external SR_SECURITY_DESCRIPTOR SecurityDescriptor;
  @Uint32() external int UserId;
  @Uint32() external int PrimaryGroupId;
  @Uint32() external int UserAccountControl;
  @Uint32() external int WhichFields;
  external LOGON_HOURS LogonHours;
  @Uint16() external int BadPasswordCount;
  @Uint16() external int LogonCount;
  @Uint16() external int CountryCode;
  @Uint16() external int CodePage;
  @Uint8() external int LmPasswordPresent;
  @Uint8() external int NtPasswordPresent;
  @Uint8() external int PasswordExpired;
  @Uint8() external int PrivateDataSensitive;
}

class CLEAR_BLOCK extends Struct {
  @Array(8)
  external Array<Int8> data;
}

class USER_SESSION_KEY extends Struct {
  @Array(2)
  external Array<CYPHER_BLOCK> data;
}

class NETLOGON_LOGON_IDENTITY_INFO extends Struct {
  external UNICODE_STRING LogonDomainName;
  @Uint32() external int ParameterControl;
  @Int64() external int LogonId;
  external UNICODE_STRING UserName;
  external UNICODE_STRING Workstation;
}

class NETLOGON_INTERACTIVE_INFO extends Struct {
  external NETLOGON_LOGON_IDENTITY_INFO Identity;
  external LM_OWF_PASSWORD LmOwfPassword;
  external LM_OWF_PASSWORD NtOwfPassword;
}

class NETLOGON_SERVICE_INFO extends Struct {
  external NETLOGON_LOGON_IDENTITY_INFO Identity;
  external LM_OWF_PASSWORD LmOwfPassword;
  external LM_OWF_PASSWORD NtOwfPassword;
}

class NETLOGON_NETWORK_INFO extends Struct {
  external NETLOGON_LOGON_IDENTITY_INFO Identity;
  external CLEAR_BLOCK LmChallenge;
  external STRING NtChallengeResponse;
  external STRING LmChallengeResponse;
}

class NETLOGON_GENERIC_INFO extends Struct {
  external NETLOGON_LOGON_IDENTITY_INFO Identity;
  external UNICODE_STRING PackageName;
  @Uint32() external int DataLength;
  external Pointer<Uint8> LogonData;
}

class MSV1_0_VALIDATION_INFO extends Struct {
  @Int64() external int LogoffTime;
  @Int64() external int KickoffTime;
  external UNICODE_STRING LogonServer;
  external UNICODE_STRING LogonDomainName;
  external USER_SESSION_KEY SessionKey;
  @Uint8() external int Authoritative;
  @Uint32() external int UserFlags;
  @Uint32() external int WhichFields;
  @Uint32() external int UserId;
}

class CoClassIdentityStore extends Struct {
}

class CIdentityProfileHandler extends Struct {
}

class AUDIT_OBJECT_TYPE extends Struct {
  external GUID ObjectType;
  @Uint16() external int Flags;
  @Uint16() external int Level;
  @Uint32() external int AccessMask;
}

class AUDIT_OBJECT_TYPES extends Struct {
  @Uint16() external int Count;
  @Uint16() external int Flags;
  external Pointer<AUDIT_OBJECT_TYPE> pObjectTypes;
}

class AUDIT_IP_ADDRESS extends Struct {
  @Array(128)
  external Array<Uint8> pIpAddress;
}

class AUDIT_PARAM extends Struct {
  @Uint32() external int Type;
  @Uint32() external int Length;
  @Uint32() external int Flags;
  @Uint32() external int Anonymous1;
  @Uint32() external int Anonymous2;
}

class AUDIT_PARAMS extends Struct {
  @Uint32() external int Length;
  @Uint32() external int Flags;
  @Uint16() external int Count;
  external Pointer<AUDIT_PARAM> Parameters;
}

class AUTHZ_AUDIT_EVENT_TYPE_LEGACY extends Struct {
  @Uint16() external int CategoryId;
  @Uint16() external int AuditId;
  @Uint16() external int ParameterCount;
}

class AUTHZ_AUDIT_EVENT_TYPE_UNION extends Struct {
  external AUTHZ_AUDIT_EVENT_TYPE_LEGACY Legacy;
}

class AUTHZ_AUDIT_EVENT_TYPE_OLD extends Struct {
  @Uint32() external int Version;
  @Uint32() external int dwFlags;
  @Int32() external int RefCount;
  @IntPtr() external int hAudit;
  external LUID LinkId;
  external AUTHZ_AUDIT_EVENT_TYPE_UNION u;
}

class AUTHZ_CAP_CHANGE_SUBSCRIPTION_HANDLE__ extends Struct {
  @Int32() external int unused;
}

class AUTHZ_ACCESS_REQUEST extends Struct {
  @Uint32() external int DesiredAccess;
  external Pointer PrincipalSelfSid;
  external Pointer<OBJECT_TYPE_LIST> ObjectTypeList;
  @Uint32() external int ObjectTypeListLength;
  external Pointer OptionalArguments;
}

class AUTHZ_ACCESS_REPLY extends Struct {
  @Uint32() external int ResultListLength;
  external Pointer<Uint32> GrantedAccessMask;
  external Pointer<Uint32> SaclEvaluationResults;
  external Pointer<Uint32> Error;
}

class AUTHZ_SECURITY_ATTRIBUTE_FQBN_VALUE extends Struct {
  @Uint64() external int Version;
  external Pointer<Utf16> pName;
}

class AUTHZ_SECURITY_ATTRIBUTE_OCTET_STRING_VALUE extends Struct {
  external Pointer pValue;
  @Uint32() external int ValueLength;
}

class AUTHZ_SECURITY_ATTRIBUTE_V1 extends Struct {
  external Pointer<Utf16> pName;
  @Uint16() external int ValueType;
  @Uint16() external int Reserved;
  @Uint32() external int Flags;
  @Uint32() external int ValueCount;
  @Uint32() external int Values;
}

class AUTHZ_SECURITY_ATTRIBUTES_INFORMATION extends Struct {
  @Uint16() external int Version;
  @Uint16() external int Reserved;
  @Uint32() external int AttributeCount;
  @Uint32() external int Attribute;
}

class AUTHZ_RPC_INIT_INFO_CLIENT extends Struct {
  @Uint16() external int version;
  external Pointer<Utf16> ObjectUuid;
  external Pointer<Utf16> ProtSeq;
  external Pointer<Utf16> NetworkAddr;
  external Pointer<Utf16> Endpoint;
  external Pointer<Utf16> Options;
  external Pointer<Utf16> ServerSpn;
}

class AUTHZ_INIT_INFO extends Struct {
  @Uint16() external int version;
  external Pointer<Utf16> szResourceManagerName;
  external PFN_AUTHZ_DYNAMIC_ACCESS_CHECK pfnDynamicAccessCheck;
  external PFN_AUTHZ_COMPUTE_DYNAMIC_GROUPS pfnComputeDynamicGroups;
  external PFN_AUTHZ_FREE_DYNAMIC_GROUPS pfnFreeDynamicGroups;
  external PFN_AUTHZ_GET_CENTRAL_ACCESS_POLICY pfnGetCentralAccessPolicy;
  external PFN_AUTHZ_FREE_CENTRAL_ACCESS_POLICY pfnFreeCentralAccessPolicy;
}

class AUTHZ_REGISTRATION_OBJECT_TYPE_NAME_OFFSET extends Struct {
  external Pointer<Utf16> szObjectTypeName;
  @Uint32() external int dwOffset;
}

class AUTHZ_SOURCE_SCHEMA_REGISTRATION extends Struct {
  @Uint32() external int dwFlags;
  external Pointer<Utf16> szEventSourceName;
  external Pointer<Utf16> szEventMessageFile;
  external Pointer<Utf16> szEventSourceXmlSchemaFile;
  external Pointer<Utf16> szEventAccessStringsFile;
  external Pointer<Utf16> szExecutableImagePath;
  @Uint32() external int Anonymous;
  @Uint32() external int dwObjectTypeNameCount;
  @Array(1)
  external Array<AUTHZ_REGISTRATION_OBJECT_TYPE_NAME_OFFSET> ObjectTypeNames;
}

class AzAuthorizationStore extends Struct {
}

class AzBizRuleContext extends Struct {
}

class AzPrincipalLocator extends Struct {
}

class SI_OBJECT_INFO extends Struct {
  @Uint32() external int dwFlags;
  @IntPtr() external int hInstance;
  external Pointer<Utf16> pszServerName;
  external Pointer<Utf16> pszObjectName;
  external Pointer<Utf16> pszPageTitle;
  external GUID guidObjectType;
}

class SI_ACCESS extends Struct {
  external Pointer<GUID> pguid;
  @Uint32() external int mask;
  external Pointer<Utf16> pszName;
  @Uint32() external int dwFlags;
}

class SI_INHERIT_TYPE extends Struct {
  external Pointer<GUID> pguid;
  @Uint32() external int dwFlags;
  external Pointer<Utf16> pszName;
}

class SID_INFO extends Struct {
  external Pointer pSid;
  external Pointer<Utf16> pwzCommonName;
  external Pointer<Utf16> pwzClass;
  external Pointer<Utf16> pwzUPN;
}

class SID_INFO_LIST extends Struct {
  @Uint32() external int cItems;
  @Array(1)
  external Array<SID_INFO> aSidInfo;
}

class SECURITY_OBJECT extends Struct {
  external Pointer<Utf16> pwszName;
  external Pointer pData;
  @Uint32() external int cbData;
  external Pointer pData2;
  @Uint32() external int cbData2;
  @Uint32() external int Id;
  @Uint8() external int fWellKnown;
}

class EFFPERM_RESULT_LIST extends Struct {
  @Uint8() external int fEvaluated;
  @Uint32() external int cObjectTypeListLength;
  external Pointer<OBJECT_TYPE_LIST> pObjectTypeList;
  external Pointer<Uint32> pGrantedAccessList;
}

class CObjectId extends Struct {
}

class CObjectIds extends Struct {
}

class CBinaryConverter extends Struct {
}

class CX500DistinguishedName extends Struct {
}

class CCspInformation extends Struct {
}

class CCspInformations extends Struct {
}

class CCspStatus extends Struct {
}

class CX509PublicKey extends Struct {
}

class CX509PrivateKey extends Struct {
}

class CX509EndorsementKey extends Struct {
}

class CX509Extension extends Struct {
}

class CX509Extensions extends Struct {
}

class CX509ExtensionKeyUsage extends Struct {
}

class CX509ExtensionEnhancedKeyUsage extends Struct {
}

class CX509ExtensionTemplateName extends Struct {
}

class CX509ExtensionTemplate extends Struct {
}

class CAlternativeName extends Struct {
}

class CAlternativeNames extends Struct {
}

class CX509ExtensionAlternativeNames extends Struct {
}

class CX509ExtensionBasicConstraints extends Struct {
}

class CX509ExtensionSubjectKeyIdentifier extends Struct {
}

class CX509ExtensionAuthorityKeyIdentifier extends Struct {
}

class CSmimeCapability extends Struct {
}

class CSmimeCapabilities extends Struct {
}

class CX509ExtensionSmimeCapabilities extends Struct {
}

class CPolicyQualifier extends Struct {
}

class CPolicyQualifiers extends Struct {
}

class CCertificatePolicy extends Struct {
}

class CCertificatePolicies extends Struct {
}

class CX509ExtensionCertificatePolicies extends Struct {
}

class CX509ExtensionMSApplicationPolicies extends Struct {
}

class CX509Attribute extends Struct {
}

class CX509Attributes extends Struct {
}

class CX509AttributeExtensions extends Struct {
}

class CX509AttributeClientId extends Struct {
}

class CX509AttributeRenewalCertificate extends Struct {
}

class CX509AttributeArchiveKey extends Struct {
}

class CX509AttributeArchiveKeyHash extends Struct {
}

class CX509AttributeOSVersion extends Struct {
}

class CX509AttributeCspProvider extends Struct {
}

class CCryptAttribute extends Struct {
}

class CCryptAttributes extends Struct {
}

class CCertProperty extends Struct {
}

class CCertProperties extends Struct {
}

class CCertPropertyFriendlyName extends Struct {
}

class CCertPropertyDescription extends Struct {
}

class CCertPropertyAutoEnroll extends Struct {
}

class CCertPropertyRequestOriginator extends Struct {
}

class CCertPropertySHA1Hash extends Struct {
}

class CCertPropertyKeyProvInfo extends Struct {
}

class CCertPropertyArchived extends Struct {
}

class CCertPropertyBackedUp extends Struct {
}

class CCertPropertyEnrollment extends Struct {
}

class CCertPropertyRenewal extends Struct {
}

class CCertPropertyArchivedKeyHash extends Struct {
}

class CCertPropertyEnrollmentPolicyServer extends Struct {
}

class CSignerCertificate extends Struct {
}

class CX509NameValuePair extends Struct {
}

class CCertificateAttestationChallenge extends Struct {
}

class CX509CertificateRequestPkcs10 extends Struct {
}

class CX509CertificateRequestCertificate extends Struct {
}

class CX509CertificateRequestPkcs7 extends Struct {
}

class CX509CertificateRequestCmc extends Struct {
}

class CX509Enrollment extends Struct {
}

class CX509EnrollmentWebClassFactory extends Struct {
}

class CX509EnrollmentHelper extends Struct {
}

class CX509MachineEnrollmentFactory extends Struct {
}

class CX509EnrollmentPolicyActiveDirectory extends Struct {
}

class CX509EnrollmentPolicyWebService extends Struct {
}

class CX509PolicyServerListManager extends Struct {
}

class CX509PolicyServerUrl extends Struct {
}

class CX509CertificateTemplateADWritable extends Struct {
}

class CX509CertificateRevocationListEntry extends Struct {
}

class CX509CertificateRevocationListEntries extends Struct {
}

class CX509CertificateRevocationList extends Struct {
}

class CX509SCEPEnrollment extends Struct {
}

class CX509SCEPEnrollmentHelper extends Struct {
}

class CCertGetConfig extends Struct {
}

class CCertConfig extends Struct {
}

class CCertRequest extends Struct {
}

class CCertServerPolicy extends Struct {
}

class CCertServerExit extends Struct {
}

class CERTTRANSBLOB extends Struct {
  @Uint32() external int cb;
  external Pointer<Uint8> pb;
}

class CERTVIEWRESTRICTION extends Struct {
  @Uint32() external int ColumnIndex;
  @Int32() external int SeekOperator;
  @Int32() external int SortOrder;
  external Pointer<Uint8> pbValue;
  @Uint32() external int cbValue;
}

class CSEDB_RSTMAPW extends Struct {
  external Pointer<Utf16> pwszDatabaseName;
  external Pointer<Utf16> pwszNewDatabaseName;
}

class NCRYPT_PROTECT_STREAM_INFO extends Struct {
  external PFNCryptStreamOutputCallback pfnStreamOutput;
  external Pointer pvCallbackCtxt;
}

class NCRYPT_PROTECT_STREAM_INFO_EX extends Struct {
  external PFNCryptStreamOutputCallbackEx pfnStreamOutput;
  external Pointer pvCallbackCtxt;
}

class TOKENBINDING_IDENTIFIER extends Struct {
  @Uint8() external int keyType;
}

class TOKENBINDING_RESULT_DATA extends Struct {
  @Uint32() external int bindingType;
  @Uint32() external int identifierSize;
  external Pointer<TOKENBINDING_IDENTIFIER> identifierData;
  @Uint32() external int extensionFormat;
  @Uint32() external int extensionSize;
  external Pointer extensionData;
}

class TOKENBINDING_RESULT_LIST extends Struct {
  @Uint32() external int resultCount;
  external Pointer<TOKENBINDING_RESULT_DATA> resultData;
}

class TOKENBINDING_KEY_TYPES extends Struct {
  @Uint32() external int keyCount;
  external Pointer<Uint32> keyType;
}

class CRYPT_XML_BLOB extends Struct {
  @Uint32() external int dwCharset;
  @Uint32() external int cbData;
  external Pointer<Uint8> pbData;
}

class CRYPT_XML_DATA_BLOB extends Struct {
  @Uint32() external int cbData;
  external Pointer<Uint8> pbData;
}

class CRYPT_XML_PROPERTY extends Struct {
  @Uint32() external int dwPropId;
  external Pointer pvValue;
  @Uint32() external int cbValue;
}

class CRYPT_XML_DATA_PROVIDER extends Struct {
  external Pointer pvCallbackState;
  @Uint32() external int cbBufferSize;
  external PFN_CRYPT_XML_DATA_PROVIDER_READ pfnRead;
  external PFN_CRYPT_XML_DATA_PROVIDER_CLOSE pfnClose;
}

class CRYPT_XML_STATUS extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int dwErrorStatus;
  @Uint32() external int dwInfoStatus;
}

class CRYPT_XML_ALGORITHM extends Struct {
  @Uint32() external int cbSize;
  external Pointer<Utf16> wszAlgorithm;
  external CRYPT_XML_BLOB Encoded;
}

class CRYPT_XML_TRANSFORM_INFO extends Struct {
  @Uint32() external int cbSize;
  external Pointer<Utf16> wszAlgorithm;
  @Uint32() external int cbBufferSize;
  @Uint32() external int dwFlags;
  external PFN_CRYPT_XML_CREATE_TRANSFORM pfnCreateTransform;
}

class CRYPT_XML_TRANSFORM_CHAIN_CONFIG extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int cTransformInfo;
  external Pointer<Pointer<CRYPT_XML_TRANSFORM_INFO>> rgpTransformInfo;
}

class CRYPT_XML_KEY_DSA_KEY_VALUE extends Struct {
  external CRYPT_XML_DATA_BLOB P;
  external CRYPT_XML_DATA_BLOB Q;
  external CRYPT_XML_DATA_BLOB G;
  external CRYPT_XML_DATA_BLOB Y;
  external CRYPT_XML_DATA_BLOB J;
  external CRYPT_XML_DATA_BLOB Seed;
  external CRYPT_XML_DATA_BLOB Counter;
}

class CRYPT_XML_KEY_ECDSA_KEY_VALUE extends Struct {
  external Pointer<Utf16> wszNamedCurve;
  external CRYPT_XML_DATA_BLOB X;
  external CRYPT_XML_DATA_BLOB Y;
  external CRYPT_XML_BLOB ExplicitPara;
}

class CRYPT_XML_KEY_RSA_KEY_VALUE extends Struct {
  external CRYPT_XML_DATA_BLOB Modulus;
  external CRYPT_XML_DATA_BLOB Exponent;
}

class CRYPT_XML_KEY_VALUE extends Struct {
  @Uint32() external int dwType;
  @Uint32() external int Anonymous;
}

class CRYPT_XML_ISSUER_SERIAL extends Struct {
  external Pointer<Utf16> wszIssuer;
  external Pointer<Utf16> wszSerial;
}

class CRYPT_XML_X509DATA_ITEM extends Struct {
  @Uint32() external int dwType;
  @Uint32() external int Anonymous;
}

class CRYPT_XML_X509DATA extends Struct {
  @Uint32() external int cX509Data;
  external Pointer<CRYPT_XML_X509DATA_ITEM> rgX509Data;
}

class CRYPT_XML_KEY_INFO_ITEM extends Struct {
  @Uint32() external int dwType;
  @Uint32() external int Anonymous;
}

class CRYPT_XML_KEY_INFO extends Struct {
  @Uint32() external int cbSize;
  external Pointer<Utf16> wszId;
  @Uint32() external int cKeyInfo;
  external Pointer<CRYPT_XML_KEY_INFO_ITEM> rgKeyInfo;
  external Pointer hVerifyKey;
}

class CRYPT_XML_REFERENCE extends Struct {
  @Uint32() external int cbSize;
  external Pointer hReference;
  external Pointer<Utf16> wszId;
  external Pointer<Utf16> wszUri;
  external Pointer<Utf16> wszType;
  external CRYPT_XML_ALGORITHM DigestMethod;
  external CRYPTOAPI_BLOB DigestValue;
  @Uint32() external int cTransform;
  external Pointer<CRYPT_XML_ALGORITHM> rgTransform;
}

class CRYPT_XML_REFERENCES extends Struct {
  @Uint32() external int cReference;
  external Pointer<Pointer<CRYPT_XML_REFERENCE>> rgpReference;
}

class CRYPT_XML_SIGNED_INFO extends Struct {
  @Uint32() external int cbSize;
  external Pointer<Utf16> wszId;
  external CRYPT_XML_ALGORITHM Canonicalization;
  external CRYPT_XML_ALGORITHM SignatureMethod;
  @Uint32() external int cReference;
  external Pointer<Pointer<CRYPT_XML_REFERENCE>> rgpReference;
  external CRYPT_XML_BLOB Encoded;
}

class CRYPT_XML_OBJECT extends Struct {
  @Uint32() external int cbSize;
  external Pointer hObject;
  external Pointer<Utf16> wszId;
  external Pointer<Utf16> wszMimeType;
  external Pointer<Utf16> wszEncoding;
  external CRYPT_XML_REFERENCES Manifest;
  external CRYPT_XML_BLOB Encoded;
}

class CRYPT_XML_SIGNATURE extends Struct {
  @Uint32() external int cbSize;
  external Pointer hSignature;
  external Pointer<Utf16> wszId;
  external CRYPT_XML_SIGNED_INFO SignedInfo;
  external CRYPTOAPI_BLOB SignatureValue;
  external Pointer<CRYPT_XML_KEY_INFO> pKeyInfo;
  @Uint32() external int cObject;
  external Pointer<Pointer<CRYPT_XML_OBJECT>> rgpObject;
}

class CRYPT_XML_DOC_CTXT extends Struct {
  @Uint32() external int cbSize;
  external Pointer hDocCtxt;
  external Pointer<CRYPT_XML_TRANSFORM_CHAIN_CONFIG> pTransformsConfig;
  @Uint32() external int cSignature;
  external Pointer<Pointer<CRYPT_XML_SIGNATURE>> rgpSignature;
}

class CRYPT_XML_KEYINFO_PARAM extends Struct {
  external Pointer<Utf16> wszId;
  external Pointer<Utf16> wszKeyName;
  external CRYPTOAPI_BLOB SKI;
  external Pointer<Utf16> wszSubjectName;
  @Uint32() external int cCertificate;
  external Pointer<CRYPTOAPI_BLOB> rgCertificate;
  @Uint32() external int cCRL;
  external Pointer<CRYPTOAPI_BLOB> rgCRL;
}

class CRYPT_XML_ALGORITHM_INFO extends Struct {
  @Uint32() external int cbSize;
  external Pointer<Utf16> wszAlgorithmURI;
  external Pointer<Utf16> wszName;
  @Uint32() external int dwGroupId;
  external Pointer<Utf16> wszCNGAlgid;
  external Pointer<Utf16> wszCNGExtraAlgid;
  @Uint32() external int dwSignFlags;
  @Uint32() external int dwVerifyFlags;
  external Pointer pvPaddingInfo;
  external Pointer pvExtraInfo;
}

class CRYPT_XML_CRYPTOGRAPHIC_INTERFACE extends Struct {
  @Uint32() external int cbSize;
  external CryptXmlDllEncodeAlgorithm fpCryptXmlEncodeAlgorithm;
  external CryptXmlDllCreateDigest fpCryptXmlCreateDigest;
  external CryptXmlDllDigestData fpCryptXmlDigestData;
  external CryptXmlDllFinalizeDigest fpCryptXmlFinalizeDigest;
  external CryptXmlDllCloseDigest fpCryptXmlCloseDigest;
  external CryptXmlDllSignData fpCryptXmlSignData;
  external CryptXmlDllVerifySignature fpCryptXmlVerifySignature;
  external CryptXmlDllGetAlgorithmInfo fpCryptXmlGetAlgorithmInfo;
}

class CCertSrvSetupKeyInformation extends Struct {
}

class CCertSrvSetup extends Struct {
}

class CMSCEPSetup extends Struct {
}

class CCertificateEnrollmentServerSetup extends Struct {
}

class CCertificateEnrollmentPolicyServerSetup extends Struct {
}

class CCertAdmin extends Struct {
}

class CCertView extends Struct {
}

class OCSPPropertyCollection extends Struct {
}

class OCSPAdmin extends Struct {
}

class CCertEncodeStringArray extends Struct {
}

class CCertEncodeLongArray extends Struct {
}

class CCertEncodeDateArray extends Struct {
}

class CCertEncodeCRLDistInfo extends Struct {
}

class CCertEncodeAltName extends Struct {
}

class CCertEncodeBitString extends Struct {
}

class CAINFO extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int CAType;
  @Uint32() external int cCASignatureCerts;
  @Uint32() external int cCAExchangeCerts;
  @Uint32() external int cExitModules;
  @Int32() external int lPropIdMax;
  @Int32() external int lRoleSeparationEnabled;
  @Uint32() external int cKRACertUsedCount;
  @Uint32() external int cKRACertCount;
  @Uint32() external int fAdvancedServer;
}

class LLFILETIME extends Struct {
  @Uint32() external int Anonymous;
}

class CERT_SELECT_STRUCT_A extends Struct {
  @Uint32() external int dwSize;
  @IntPtr() external int hwndParent;
  @IntPtr() external int hInstance;
  external Pointer<Utf8> pTemplateName;
  @Uint32() external int dwFlags;
  external Pointer<Utf8> szTitle;
  @Uint32() external int cCertStore;
  external Pointer<Pointer> arrayCertStore;
  external Pointer<Utf8> szPurposeOid;
  @Uint32() external int cCertContext;
  external Pointer<Pointer<CERT_CONTEXT>> arrayCertContext;
  @IntPtr() external int lCustData;
  external PFNCMHOOKPROC pfnHook;
  external PFNCMFILTERPROC pfnFilter;
  external Pointer<Utf8> szHelpFileName;
  @Uint32() external int dwHelpId;
  @IntPtr() external int hprov;
}

class CERT_SELECT_STRUCT_W extends Struct {
  @Uint32() external int dwSize;
  @IntPtr() external int hwndParent;
  @IntPtr() external int hInstance;
  external Pointer<Utf16> pTemplateName;
  @Uint32() external int dwFlags;
  external Pointer<Utf16> szTitle;
  @Uint32() external int cCertStore;
  external Pointer<Pointer> arrayCertStore;
  external Pointer<Utf8> szPurposeOid;
  @Uint32() external int cCertContext;
  external Pointer<Pointer<CERT_CONTEXT>> arrayCertContext;
  @IntPtr() external int lCustData;
  external PFNCMHOOKPROC pfnHook;
  external PFNCMFILTERPROC pfnFilter;
  external Pointer<Utf16> szHelpFileName;
  @Uint32() external int dwHelpId;
  @IntPtr() external int hprov;
}

class CERT_VIEWPROPERTIES_STRUCT_A extends Struct {
  @Uint32() external int dwSize;
  @IntPtr() external int hwndParent;
  @IntPtr() external int hInstance;
  @Uint32() external int dwFlags;
  external Pointer<Utf8> szTitle;
  external Pointer<CERT_CONTEXT> pCertContext;
  external Pointer<Pointer<Utf8>> arrayPurposes;
  @Uint32() external int cArrayPurposes;
  @Uint32() external int cRootStores;
  external Pointer<Pointer> rghstoreRoots;
  @Uint32() external int cStores;
  external Pointer<Pointer> rghstoreCAs;
  @Uint32() external int cTrustStores;
  external Pointer<Pointer> rghstoreTrust;
  @IntPtr() external int hprov;
  @IntPtr() external int lCustData;
  @Uint32() external int dwPad;
  external Pointer<Utf8> szHelpFileName;
  @Uint32() external int dwHelpId;
  @Uint32() external int nStartPage;
  @Uint32() external int cArrayPropSheetPages;
  external Pointer<PROPSHEETPAGEA> arrayPropSheetPages;
}

class CERT_VIEWPROPERTIES_STRUCT_W extends Struct {
  @Uint32() external int dwSize;
  @IntPtr() external int hwndParent;
  @IntPtr() external int hInstance;
  @Uint32() external int dwFlags;
  external Pointer<Utf16> szTitle;
  external Pointer<CERT_CONTEXT> pCertContext;
  external Pointer<Pointer<Utf8>> arrayPurposes;
  @Uint32() external int cArrayPurposes;
  @Uint32() external int cRootStores;
  external Pointer<Pointer> rghstoreRoots;
  @Uint32() external int cStores;
  external Pointer<Pointer> rghstoreCAs;
  @Uint32() external int cTrustStores;
  external Pointer<Pointer> rghstoreTrust;
  @IntPtr() external int hprov;
  @IntPtr() external int lCustData;
  @Uint32() external int dwPad;
  external Pointer<Utf16> szHelpFileName;
  @Uint32() external int dwHelpId;
  @Uint32() external int nStartPage;
  @Uint32() external int cArrayPropSheetPages;
  external Pointer<PROPSHEETPAGEA> arrayPropSheetPages;
}

class CMOID extends Struct {
  external Pointer<Utf8> szExtensionOID;
  @Uint32() external int dwTestOperation;
  external Pointer<Uint8> pbTestData;
  @Uint32() external int cbTestData;
}

class CMFLTR extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int cExtensionChecks;
  external Pointer<CMOID> arrayExtensionChecks;
  @Uint32() external int dwCheckingFlags;
}

class CERT_VERIFY_CERTIFICATE_TRUST extends Struct {
  @Uint32() external int cbSize;
  external Pointer<CERT_CONTEXT> pccert;
  @Uint32() external int dwFlags;
  @Uint32() external int dwIgnoreErr;
  external Pointer<Uint32> pdwErrors;
  external Pointer<Utf8> pszUsageOid;
  @IntPtr() external int hprov;
  @Uint32() external int cRootStores;
  external Pointer<Pointer> rghstoreRoots;
  @Uint32() external int cStores;
  external Pointer<Pointer> rghstoreCAs;
  @Uint32() external int cTrustStores;
  external Pointer<Pointer> rghstoreTrust;
  @IntPtr() external int lCustData;
  external PFNTRUSTHELPER pfnTrustHelper;
  external Pointer<Uint32> pcChain;
  external Pointer<Pointer<Pointer<CERT_CONTEXT>>> prgChain;
  external Pointer<Pointer<Uint32>> prgdwErrors;
  external Pointer<Pointer<CRYPTOAPI_BLOB>> prgpbTrustInfo;
}

class CTL_MODIFY_REQUEST extends Struct {
  external Pointer<CERT_CONTEXT> pccert;
  @Uint32() external int dwOperation;
  @Uint32() external int dwError;
}

class WINTRUST_DATA extends Struct {
  @Uint32() external int cbStruct;
  external Pointer pPolicyCallbackData;
  external Pointer pSIPClientData;
  @Uint32() external int dwUIChoice;
  @Uint32() external int fdwRevocationChecks;
  @Uint32() external int dwUnionChoice;
  @Uint32() external int Anonymous;
  @Uint32() external int dwStateAction;
  @IntPtr() external int hWVTStateData;
  external Pointer<Utf16> pwszURLReference;
  @Uint32() external int dwProvFlags;
  @Uint32() external int dwUIContext;
  external Pointer<WINTRUST_SIGNATURE_SETTINGS> pSignatureSettings;
}

class WINTRUST_SIGNATURE_SETTINGS extends Struct {
  @Uint32() external int cbStruct;
  @Uint32() external int dwIndex;
  @Uint32() external int dwFlags;
  @Uint32() external int cSecondarySigs;
  @Uint32() external int dwVerifiedSigIndex;
  external Pointer<CERT_STRONG_SIGN_PARA> pCryptoPolicy;
}

class WINTRUST_FILE_INFO extends Struct {
  @Uint32() external int cbStruct;
  external Pointer<Utf16> pcwszFilePath;
  @IntPtr() external int hFile;
  external Pointer<GUID> pgKnownSubject;
}

class WINTRUST_CATALOG_INFO extends Struct {
  @Uint32() external int cbStruct;
  @Uint32() external int dwCatalogVersion;
  external Pointer<Utf16> pcwszCatalogFilePath;
  external Pointer<Utf16> pcwszMemberTag;
  external Pointer<Utf16> pcwszMemberFilePath;
  @IntPtr() external int hMemberFile;
  external Pointer<Uint8> pbCalculatedFileHash;
  @Uint32() external int cbCalculatedFileHash;
  external Pointer<CTL_CONTEXT> pcCatalogContext;
  @IntPtr() external int hCatAdmin;
}

class WINTRUST_BLOB_INFO extends Struct {
  @Uint32() external int cbStruct;
  external GUID gSubject;
  external Pointer<Utf16> pcwszDisplayName;
  @Uint32() external int cbMemObject;
  external Pointer<Uint8> pbMemObject;
  @Uint32() external int cbMemSignedMsg;
  external Pointer<Uint8> pbMemSignedMsg;
}

class WINTRUST_SGNR_INFO extends Struct {
  @Uint32() external int cbStruct;
  external Pointer<Utf16> pcwszDisplayName;
  external Pointer<CMSG_SIGNER_INFO> psSignerInfo;
  @Uint32() external int chStores;
  external Pointer<Pointer> pahStores;
}

class WINTRUST_CERT_INFO extends Struct {
  @Uint32() external int cbStruct;
  external Pointer<Utf16> pcwszDisplayName;
  external Pointer<CERT_CONTEXT> psCertContext;
  @Uint32() external int chStores;
  external Pointer<Pointer> pahStores;
  @Uint32() external int dwFlags;
  external Pointer<FILETIME> psftVerifyAsOf;
}

class CRYPT_PROVIDER_DATA extends Struct {
  @Uint32() external int cbStruct;
  external Pointer<WINTRUST_DATA> pWintrustData;
  @Int32() external int fOpenedFile;
  @IntPtr() external int hWndParent;
  external Pointer<GUID> pgActionID;
  @IntPtr() external int hProv;
  @Uint32() external int dwError;
  @Uint32() external int dwRegSecuritySettings;
  @Uint32() external int dwRegPolicySettings;
  external Pointer<CRYPT_PROVIDER_FUNCTIONS> psPfns;
  @Uint32() external int cdwTrustStepErrors;
  external Pointer<Uint32> padwTrustStepErrors;
  @Uint32() external int chStores;
  external Pointer<Pointer> pahStores;
  @Uint32() external int dwEncoding;
  external Pointer hMsg;
  @Uint32() external int csSigners;
  external Pointer<CRYPT_PROVIDER_SGNR> pasSigners;
  @Uint32() external int csProvPrivData;
  external Pointer<CRYPT_PROVIDER_PRIVDATA> pasProvPrivData;
  @Uint32() external int dwSubjectChoice;
  @Uint32() external int Anonymous;
  external Pointer<Utf8> pszUsageOID;
  @Int32() external int fRecallWithState;
  external FILETIME sftSystemTime;
  external Pointer<Utf8> pszCTLSignerUsageOID;
  @Uint32() external int dwProvFlags;
  @Uint32() external int dwFinalError;
  external Pointer<CERT_USAGE_MATCH> pRequestUsage;
  @Uint32() external int dwTrustPubSettings;
  @Uint32() external int dwUIStateFlags;
  external Pointer<CRYPT_PROVIDER_SIGSTATE> pSigState;
  external Pointer<WINTRUST_SIGNATURE_SETTINGS> pSigSettings;
}

class CRYPT_PROVIDER_SIGSTATE extends Struct {
  @Uint32() external int cbStruct;
  external Pointer<Pointer> rhSecondarySigs;
  external Pointer hPrimarySig;
  @Int32() external int fFirstAttemptMade;
  @Int32() external int fNoMoreSigs;
  @Uint32() external int cSecondarySigs;
  @Uint32() external int dwCurrentIndex;
  @Int32() external int fSupportMultiSig;
  @Uint32() external int dwCryptoPolicySupport;
  @Uint32() external int iAttemptCount;
  @Int32() external int fCheckedSealing;
  external Pointer<SEALING_SIGNATURE_ATTRIBUTE> pSealingSignature;
}

class CRYPT_PROVIDER_FUNCTIONS extends Struct {
  @Uint32() external int cbStruct;
  external PFN_CPD_MEM_ALLOC pfnAlloc;
  external PFN_CPD_MEM_FREE pfnFree;
  external PFN_CPD_ADD_STORE pfnAddStore2Chain;
  external PFN_CPD_ADD_SGNR pfnAddSgnr2Chain;
  external PFN_CPD_ADD_CERT pfnAddCert2Chain;
  external PFN_CPD_ADD_PRIVDATA pfnAddPrivData2Chain;
  external PFN_PROVIDER_INIT_CALL pfnInitialize;
  external PFN_PROVIDER_OBJTRUST_CALL pfnObjectTrust;
  external PFN_PROVIDER_SIGTRUST_CALL pfnSignatureTrust;
  external PFN_PROVIDER_CERTTRUST_CALL pfnCertificateTrust;
  external PFN_PROVIDER_FINALPOLICY_CALL pfnFinalPolicy;
  external PFN_PROVIDER_CERTCHKPOLICY_CALL pfnCertCheckPolicy;
  external PFN_PROVIDER_TESTFINALPOLICY_CALL pfnTestFinalPolicy;
  external Pointer<CRYPT_PROVUI_FUNCS> psUIpfns;
  external PFN_PROVIDER_CLEANUP_CALL pfnCleanupPolicy;
}

class CRYPT_PROVUI_FUNCS extends Struct {
  @Uint32() external int cbStruct;
  external Pointer<CRYPT_PROVUI_DATA> psUIData;
  external PFN_PROVUI_CALL pfnOnMoreInfoClick;
  external PFN_PROVUI_CALL pfnOnMoreInfoClickDefault;
  external PFN_PROVUI_CALL pfnOnAdvancedClick;
  external PFN_PROVUI_CALL pfnOnAdvancedClickDefault;
}

class CRYPT_PROVUI_DATA extends Struct {
  @Uint32() external int cbStruct;
  @Uint32() external int dwFinalError;
  external Pointer<Utf16> pYesButtonText;
  external Pointer<Utf16> pNoButtonText;
  external Pointer<Utf16> pMoreInfoButtonText;
  external Pointer<Utf16> pAdvancedLinkText;
  external Pointer<Utf16> pCopyActionText;
  external Pointer<Utf16> pCopyActionTextNoTS;
  external Pointer<Utf16> pCopyActionTextNotSigned;
}

class CRYPT_PROVIDER_SGNR extends Struct {
  @Uint32() external int cbStruct;
  external FILETIME sftVerifyAsOf;
  @Uint32() external int csCertChain;
  external Pointer<CRYPT_PROVIDER_CERT> pasCertChain;
  @Uint32() external int dwSignerType;
  external Pointer<CMSG_SIGNER_INFO> psSigner;
  @Uint32() external int dwError;
  @Uint32() external int csCounterSigners;
  external Pointer<CRYPT_PROVIDER_SGNR> pasCounterSigners;
  external Pointer<CERT_CHAIN_CONTEXT> pChainContext;
}

class CRYPT_PROVIDER_CERT extends Struct {
  @Uint32() external int cbStruct;
  external Pointer<CERT_CONTEXT> pCert;
  @Int32() external int fCommercial;
  @Int32() external int fTrustedRoot;
  @Int32() external int fSelfSigned;
  @Int32() external int fTestCert;
  @Uint32() external int dwRevokedReason;
  @Uint32() external int dwConfidence;
  @Uint32() external int dwError;
  external Pointer<CTL_CONTEXT> pTrustListContext;
  @Int32() external int fTrustListSignerCert;
  external Pointer<CTL_CONTEXT> pCtlContext;
  @Uint32() external int dwCtlError;
  @Int32() external int fIsCyclic;
  external Pointer<CERT_CHAIN_ELEMENT> pChainElement;
}

class CRYPT_PROVIDER_PRIVDATA extends Struct {
  @Uint32() external int cbStruct;
  external GUID gProviderID;
  @Uint32() external int cbProvData;
  external Pointer pvProvData;
}

class PROVDATA_SIP extends Struct {
  @Uint32() external int cbStruct;
  external GUID gSubject;
  external Pointer<SIP_DISPATCH_INFO> pSip;
  external Pointer<SIP_DISPATCH_INFO> pCATSip;
  external Pointer<SIP_SUBJECTINFO> psSipSubjectInfo;
  external Pointer<SIP_SUBJECTINFO> psSipCATSubjectInfo;
  external Pointer<SIP_INDIRECT_DATA> psIndirectData;
}

class CRYPT_TRUST_REG_ENTRY extends Struct {
  @Uint32() external int cbStruct;
  external Pointer<Utf16> pwszDLLName;
  external Pointer<Utf16> pwszFunctionName;
}

class CRYPT_REGISTER_ACTIONID extends Struct {
  @Uint32() external int cbStruct;
  external CRYPT_TRUST_REG_ENTRY sInitProvider;
  external CRYPT_TRUST_REG_ENTRY sObjectProvider;
  external CRYPT_TRUST_REG_ENTRY sSignatureProvider;
  external CRYPT_TRUST_REG_ENTRY sCertificateProvider;
  external CRYPT_TRUST_REG_ENTRY sCertificatePolicyProvider;
  external CRYPT_TRUST_REG_ENTRY sFinalPolicyProvider;
  external CRYPT_TRUST_REG_ENTRY sTestPolicyProvider;
  external CRYPT_TRUST_REG_ENTRY sCleanupProvider;
}

class CRYPT_PROVIDER_REGDEFUSAGE extends Struct {
  @Uint32() external int cbStruct;
  external Pointer<GUID> pgActionID;
  external Pointer<Utf16> pwszDllName;
  external Pointer<Utf8> pwszLoadCallbackDataFunctionName;
  external Pointer<Utf8> pwszFreeCallbackDataFunctionName;
}

class CRYPT_PROVIDER_DEFUSAGE extends Struct {
  @Uint32() external int cbStruct;
  external GUID gActionID;
  external Pointer pDefPolicyCallbackData;
  external Pointer pDefSIPClientData;
}

class SPC_SERIALIZED_OBJECT extends Struct {
  @Array(16)
  external Array<Uint8> ClassId;
  external CRYPTOAPI_BLOB SerializedData;
}

class SPC_SIGINFO extends Struct {
  @Uint32() external int dwSipVersion;
  external GUID gSIPGuid;
  @Uint32() external int dwReserved1;
  @Uint32() external int dwReserved2;
  @Uint32() external int dwReserved3;
  @Uint32() external int dwReserved4;
  @Uint32() external int dwReserved5;
}

class SPC_LINK extends Struct {
  @Uint32() external int dwLinkChoice;
  @Uint32() external int Anonymous;
}

class SPC_PE_IMAGE_DATA extends Struct {
  external CRYPT_BIT_BLOB Flags;
  external Pointer<SPC_LINK> pFile;
}

class SPC_INDIRECT_DATA_CONTENT extends Struct {
  external CRYPT_ATTRIBUTE_TYPE_VALUE Data;
  external CRYPT_ALGORITHM_IDENTIFIER DigestAlgorithm;
  external CRYPTOAPI_BLOB Digest;
}

class SPC_FINANCIAL_CRITERIA extends Struct {
  @Int32() external int fFinancialInfoAvailable;
  @Int32() external int fMeetsCriteria;
}

class SPC_IMAGE extends Struct {
  external Pointer<SPC_LINK> pImageLink;
  external CRYPTOAPI_BLOB Bitmap;
  external CRYPTOAPI_BLOB Metafile;
  external CRYPTOAPI_BLOB EnhancedMetafile;
  external CRYPTOAPI_BLOB GifFile;
}

class SPC_SP_AGENCY_INFO extends Struct {
  external Pointer<SPC_LINK> pPolicyInformation;
  external Pointer<Utf16> pwszPolicyDisplayText;
  external Pointer<SPC_IMAGE> pLogoImage;
  external Pointer<SPC_LINK> pLogoLink;
}

class SPC_STATEMENT_TYPE extends Struct {
  @Uint32() external int cKeyPurposeId;
  external Pointer<Pointer<Utf8>> rgpszKeyPurposeId;
}

class SPC_SP_OPUS_INFO extends Struct {
  external Pointer<Utf16> pwszProgramName;
  external Pointer<SPC_LINK> pMoreInfo;
  external Pointer<SPC_LINK> pPublisherInfo;
}

class CAT_NAMEVALUE extends Struct {
  external Pointer<Utf16> pwszTag;
  @Uint32() external int fdwFlags;
  external CRYPTOAPI_BLOB Value;
}

class CAT_MEMBERINFO extends Struct {
  external Pointer<Utf16> pwszSubjGuid;
  @Uint32() external int dwCertVersion;
}

class CAT_MEMBERINFO2 extends Struct {
  external GUID SubjectGuid;
  @Uint32() external int dwCertVersion;
}

class INTENT_TO_SEAL_ATTRIBUTE extends Struct {
  @Uint32() external int version;
  @Uint8() external int seal;
}

class SEALING_SIGNATURE_ATTRIBUTE extends Struct {
  @Uint32() external int version;
  @Uint32() external int signerIndex;
  external CRYPT_ALGORITHM_IDENTIFIER signatureAlgorithm;
  external CRYPTOAPI_BLOB encryptedDigest;
}

class SEALING_TIMESTAMP_ATTRIBUTE extends Struct {
  @Uint32() external int version;
  @Uint32() external int signerIndex;
  external CRYPTOAPI_BLOB sealTimeStampToken;
}

class WIN_CERTIFICATE extends Struct {
  @Uint32() external int dwLength;
  @Uint16() external int wRevision;
  @Uint16() external int wCertificateType;
  @Array(1)
  external Array<Uint8> bCertificate;
}

class WIN_TRUST_ACTDATA_CONTEXT_WITH_SUBJECT extends Struct {
  @IntPtr() external int hClientToken;
  external Pointer<GUID> SubjectType;
  external Pointer Subject;
}

class WIN_TRUST_ACTDATA_SUBJECT_ONLY extends Struct {
  external Pointer<GUID> SubjectType;
  external Pointer Subject;
}

class WIN_TRUST_SUBJECT_FILE extends Struct {
  @IntPtr() external int hFile;
  external Pointer<Utf16> lpPath;
}

class WIN_TRUST_SUBJECT_FILE_AND_DISPLAY extends Struct {
  @IntPtr() external int hFile;
  external Pointer<Utf16> lpPath;
  external Pointer<Utf16> lpDisplayName;
}

class WIN_SPUB_TRUSTED_PUBLISHER_DATA extends Struct {
  @IntPtr() external int hClientToken;
  external Pointer<WIN_CERTIFICATE> lpCertificate;
}

class CERT_SELECTUI_INPUT extends Struct {
  external Pointer hStore;
  external Pointer<Pointer<CERT_CHAIN_CONTEXT>> prgpChain;
  @Uint32() external int cChain;
}

class CRYPTUI_CERT_MGR_STRUCT extends Struct {
  @Uint32() external int dwSize;
  @IntPtr() external int hwndParent;
  @Uint32() external int dwFlags;
  external Pointer<Utf16> pwszTitle;
  external Pointer<Utf8> pszInitUsageOID;
}

class CRYPTUI_WIZ_DIGITAL_SIGN_BLOB_INFO extends Struct {
  @Uint32() external int dwSize;
  external Pointer<GUID> pGuidSubject;
  @Uint32() external int cbBlob;
  external Pointer<Uint8> pbBlob;
  external Pointer<Utf16> pwszDisplayName;
}

class CRYPTUI_WIZ_DIGITAL_SIGN_STORE_INFO extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int cCertStore;
  external Pointer<Pointer> rghCertStore;
  external PFNCFILTERPROC pFilterCallback;
  external Pointer pvCallbackData;
}

class CRYPTUI_WIZ_DIGITAL_SIGN_PVK_FILE_INFO extends Struct {
  @Uint32() external int dwSize;
  external Pointer<Utf16> pwszPvkFileName;
  external Pointer<Utf16> pwszProvName;
  @Uint32() external int dwProvType;
}

class CRYPTUI_WIZ_DIGITAL_SIGN_CERT_PVK_INFO extends Struct {
  @Uint32() external int dwSize;
  external Pointer<Utf16> pwszSigningCertFileName;
  @Uint32() external int dwPvkChoice;
  @Uint32() external int Anonymous;
}

class CRYPTUI_WIZ_DIGITAL_SIGN_EXTENDED_INFO extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwAttrFlags;
  external Pointer<Utf16> pwszDescription;
  external Pointer<Utf16> pwszMoreInfoLocation;
  external Pointer<Utf8> pszHashAlg;
  external Pointer<Utf16> pwszSigningCertDisplayString;
  external Pointer hAdditionalCertStore;
  external Pointer<CRYPT_ATTRIBUTES> psAuthenticated;
  external Pointer<CRYPT_ATTRIBUTES> psUnauthenticated;
}

class CRYPTUI_WIZ_DIGITAL_SIGN_INFO extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwSubjectChoice;
  @Uint32() external int Anonymous1;
  @Uint32() external int dwSigningCertChoice;
  @Uint32() external int Anonymous2;
  external Pointer<Utf16> pwszTimestampURL;
  @Uint32() external int dwAdditionalCertChoice;
  external Pointer<CRYPTUI_WIZ_DIGITAL_SIGN_EXTENDED_INFO> pSignExtInfo;
}

class CRYPTUI_WIZ_DIGITAL_SIGN_CONTEXT extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int cbBlob;
  external Pointer<Uint8> pbBlob;
}

class CRYPTUI_INITDIALOG_STRUCT extends Struct {
  @IntPtr() external int lParam;
  external Pointer<CERT_CONTEXT> pCertContext;
}

class CRYPTUI_VIEWCERTIFICATE_STRUCTW extends Struct {
  @Uint32() external int dwSize;
  @IntPtr() external int hwndParent;
  @Uint32() external int dwFlags;
  external Pointer<Utf16> szTitle;
  external Pointer<CERT_CONTEXT> pCertContext;
  external Pointer<Pointer<Utf8>> rgszPurposes;
  @Uint32() external int cPurposes;
  @Uint32() external int Anonymous;
  @Int32() external int fpCryptProviderDataTrustedUsage;
  @Uint32() external int idxSigner;
  @Uint32() external int idxCert;
  @Int32() external int fCounterSigner;
  @Uint32() external int idxCounterSigner;
  @Uint32() external int cStores;
  external Pointer<Pointer> rghStores;
  @Uint32() external int cPropSheetPages;
  external Pointer<PROPSHEETPAGE> rgPropSheetPages;
  @Uint32() external int nStartPage;
}

class CRYPTUI_VIEWCERTIFICATE_STRUCTA extends Struct {
  @Uint32() external int dwSize;
  @IntPtr() external int hwndParent;
  @Uint32() external int dwFlags;
  external Pointer<Utf8> szTitle;
  external Pointer<CERT_CONTEXT> pCertContext;
  external Pointer<Pointer<Utf8>> rgszPurposes;
  @Uint32() external int cPurposes;
  @Uint32() external int Anonymous;
  @Int32() external int fpCryptProviderDataTrustedUsage;
  @Uint32() external int idxSigner;
  @Uint32() external int idxCert;
  @Int32() external int fCounterSigner;
  @Uint32() external int idxCounterSigner;
  @Uint32() external int cStores;
  external Pointer<Pointer> rghStores;
  @Uint32() external int cPropSheetPages;
  external Pointer<PROPSHEETPAGEA> rgPropSheetPages;
  @Uint32() external int nStartPage;
}

class CRYPTUI_WIZ_EXPORT_INFO extends Struct {
  @Uint32() external int dwSize;
  external Pointer<Utf16> pwszExportFileName;
  @Uint32() external int dwSubjectChoice;
  @Uint32() external int Anonymous;
  @Uint32() external int cStores;
  external Pointer<Pointer> rghStores;
}

class CRYPTUI_WIZ_EXPORT_CERTCONTEXT_INFO extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwExportFormat;
  @Int32() external int fExportChain;
  @Int32() external int fExportPrivateKeys;
  external Pointer<Utf16> pwszPassword;
  @Int32() external int fStrongEncryption;
}

class CRYPTUI_WIZ_IMPORT_SRC_INFO extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwSubjectChoice;
  @Uint32() external int Anonymous;
  @Uint32() external int dwFlags;
  external Pointer<Utf16> pwszPassword;
}

class SIP_SUBJECTINFO extends Struct {
  @Uint32() external int cbSize;
  external Pointer<GUID> pgSubjectType;
  @IntPtr() external int hFile;
  external Pointer<Utf16> pwsFileName;
  external Pointer<Utf16> pwsDisplayName;
  @Uint32() external int dwReserved1;
  @Uint32() external int dwIntVersion;
  @IntPtr() external int hProv;
  external CRYPT_ALGORITHM_IDENTIFIER DigestAlgorithm;
  @Uint32() external int dwFlags;
  @Uint32() external int dwEncodingType;
  @Uint32() external int dwReserved2;
  @Uint32() external int fdwCAPISettings;
  @Uint32() external int fdwSecuritySettings;
  @Uint32() external int dwIndex;
  @Uint32() external int dwUnionChoice;
  @Uint32() external int Anonymous;
  external Pointer pClientData;
}

class MS_ADDINFO_FLAT extends Struct {
  @Uint32() external int cbStruct;
  external Pointer<SIP_INDIRECT_DATA> pIndirectData;
}

class MS_ADDINFO_CATALOGMEMBER extends Struct {
  @Uint32() external int cbStruct;
  external Pointer<CRYPTCATSTORE> pStore;
  external Pointer<CRYPTCATMEMBER> pMember;
}

class MS_ADDINFO_BLOB extends Struct {
  @Uint32() external int cbStruct;
  @Uint32() external int cbMemObject;
  external Pointer<Uint8> pbMemObject;
  @Uint32() external int cbMemSignedMsg;
  external Pointer<Uint8> pbMemSignedMsg;
}

class SIP_CAP_SET_V2 extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int dwVersion;
  @Int32() external int isMultiSign;
  @Uint32() external int dwReserved;
}

class SIP_CAP_SET_V3 extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int dwVersion;
  @Int32() external int isMultiSign;
  @Uint32() external int Anonymous;
}

class SIP_INDIRECT_DATA extends Struct {
  external CRYPT_ATTRIBUTE_TYPE_VALUE Data;
  external CRYPT_ALGORITHM_IDENTIFIER DigestAlgorithm;
  external CRYPTOAPI_BLOB Digest;
}

class SIP_DISPATCH_INFO extends Struct {
  @Uint32() external int cbSize;
  @IntPtr() external int hSIP;
  external pCryptSIPGetSignedDataMsg pfGet;
  external pCryptSIPPutSignedDataMsg pfPut;
  external pCryptSIPCreateIndirectData pfCreate;
  external pCryptSIPVerifyIndirectData pfVerify;
  external pCryptSIPRemoveSignedDataMsg pfRemove;
}

class SIP_ADD_NEWPROVIDER extends Struct {
  @Uint32() external int cbStruct;
  external Pointer<GUID> pgSubject;
  external Pointer<Utf16> pwszDLLFileName;
  external Pointer<Utf16> pwszMagicNumber;
  external Pointer<Utf16> pwszIsFunctionName;
  external Pointer<Utf16> pwszGetFuncName;
  external Pointer<Utf16> pwszPutFuncName;
  external Pointer<Utf16> pwszCreateFuncName;
  external Pointer<Utf16> pwszVerifyFuncName;
  external Pointer<Utf16> pwszRemoveFuncName;
  external Pointer<Utf16> pwszIsFunctionNameFmt2;
  external Pointer<Utf16> pwszGetCapFuncName;
}

class CRYPTCATSTORE extends Struct {
  @Uint32() external int cbStruct;
  @Uint32() external int dwPublicVersion;
  external Pointer<Utf16> pwszP7File;
  @IntPtr() external int hProv;
  @Uint32() external int dwEncodingType;
  @Uint32() external int fdwStoreFlags;
  @IntPtr() external int hReserved;
  @IntPtr() external int hAttrs;
  external Pointer hCryptMsg;
  @IntPtr() external int hSorted;
}

class CRYPTCATMEMBER extends Struct {
  @Uint32() external int cbStruct;
  external Pointer<Utf16> pwszReferenceTag;
  external Pointer<Utf16> pwszFileName;
  external GUID gSubjectType;
  @Uint32() external int fdwMemberFlags;
  external Pointer<SIP_INDIRECT_DATA> pIndirectData;
  @Uint32() external int dwCertVersion;
  @Uint32() external int dwReserved;
  @IntPtr() external int hReserved;
  external CRYPTOAPI_BLOB sEncodedIndirectData;
  external CRYPTOAPI_BLOB sEncodedMemberInfo;
}

class CRYPTCATATTRIBUTE extends Struct {
  @Uint32() external int cbStruct;
  external Pointer<Utf16> pwszReferenceTag;
  @Uint32() external int dwAttrTypeAndAction;
  @Uint32() external int cbValue;
  external Pointer<Uint8> pbValue;
  @Uint32() external int dwReserved;
}

class CRYPTCATCDF extends Struct {
  @Uint32() external int cbStruct;
  @IntPtr() external int hFile;
  @Uint32() external int dwCurFilePos;
  @Uint32() external int dwLastMemberOffset;
  @Int32() external int fEOF;
  external Pointer<Utf16> pwszResultDir;
  @IntPtr() external int hCATStore;
}

class CATALOG_INFO extends Struct {
  @Uint32() external int cbStruct;
  @Array(129)
  external Array<Uint16> wszCatalogFile;
}

class CEnroll2 extends Struct {
}

class CEnroll extends Struct {
}

class SCESVC_CONFIGURATION_LINE extends Struct {
  external Pointer<Int8> Key;
  external Pointer<Int8> Value;
  @Uint32() external int ValueLen;
}

class SCESVC_CONFIGURATION_INFO extends Struct {
  @Uint32() external int Count;
  external Pointer<SCESVC_CONFIGURATION_LINE> Lines;
}

class SCESVC_ANALYSIS_LINE extends Struct {
  external Pointer<Int8> Key;
  external Pointer<Uint8> Value;
  @Uint32() external int ValueLen;
}

class SCESVC_ANALYSIS_INFO extends Struct {
  @Uint32() external int Count;
  external Pointer<SCESVC_ANALYSIS_LINE> Lines;
}

class SCESVC_CALLBACK_INFO extends Struct {
  external Pointer sceHandle;
  external PFSCE_QUERY_INFO pfQueryInfo;
  external PFSCE_SET_INFO pfSetInfo;
  external PFSCE_FREE_INFO pfFreeInfo;
  external PFSCE_LOG_INFO pfLogInfo;
}

class SAFER_CODE_PROPERTIES_V1 extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int dwCheckFlags;
  external Pointer<Utf16> ImagePath;
  @IntPtr() external int hImageFileHandle;
  @Uint32() external int UrlZoneId;
  @Array(64)
  external Array<Uint8> ImageHash;
  @Uint32() external int dwImageHashSize;
  @Int64() external int ImageSize;
  @Uint32() external int HashAlgorithm;
  external Pointer<Uint8> pByteBlock;
  @IntPtr() external int hWndParent;
  @Uint32() external int dwWVTUIChoice;
}

class SAFER_CODE_PROPERTIES_V2 extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int dwCheckFlags;
  external Pointer<Utf16> ImagePath;
  @IntPtr() external int hImageFileHandle;
  @Uint32() external int UrlZoneId;
  @Array(64)
  external Array<Uint8> ImageHash;
  @Uint32() external int dwImageHashSize;
  @Int64() external int ImageSize;
  @Uint32() external int HashAlgorithm;
  external Pointer<Uint8> pByteBlock;
  @IntPtr() external int hWndParent;
  @Uint32() external int dwWVTUIChoice;
  external Pointer<Utf16> PackageMoniker;
  external Pointer<Utf16> PackagePublisher;
  external Pointer<Utf16> PackageName;
  @Uint64() external int PackageVersion;
  @Int32() external int PackageIsFramework;
}

class SAFER_IDENTIFICATION_HEADER extends Struct {
  @Uint32() external int dwIdentificationType;
  @Uint32() external int cbStructSize;
  external GUID IdentificationGuid;
  external FILETIME lastModified;
}

class SAFER_PATHNAME_IDENTIFICATION extends Struct {
  external SAFER_IDENTIFICATION_HEADER header;
  @Array(129)
  external Array<Uint16> Description;
  external Pointer<Utf16> ImageName;
  @Uint32() external int dwSaferFlags;
}

class SAFER_HASH_IDENTIFICATION extends Struct {
  external SAFER_IDENTIFICATION_HEADER header;
  @Array(129)
  external Array<Uint16> Description;
  @Array(129)
  external Array<Uint16> FriendlyName;
  @Uint32() external int HashSize;
  @Array(64)
  external Array<Uint8> ImageHash;
  @Uint32() external int HashAlgorithm;
  @Int64() external int ImageSize;
  @Uint32() external int dwSaferFlags;
}

class SAFER_HASH_IDENTIFICATION2 extends Struct {
  external SAFER_HASH_IDENTIFICATION hashIdentification;
  @Uint32() external int HashSize;
  @Array(64)
  external Array<Uint8> ImageHash;
  @Uint32() external int HashAlgorithm;
}

class SAFER_URLZONE_IDENTIFICATION extends Struct {
  external SAFER_IDENTIFICATION_HEADER header;
  @Uint32() external int UrlZoneId;
  @Uint32() external int dwSaferFlags;
}

class SL_LICENSING_STATUS extends Struct {
  external GUID SkuId;
  @Uint32() external int eStatus;
  @Uint32() external int dwGraceTime;
  @Uint32() external int dwTotalGraceDays;
  @Int32() external int hrReason;
  @Uint64() external int qwValidityExpiration;
}

class SL_ACTIVATION_INFO_HEADER extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int type;
}

class SL_AD_ACTIVATION_INFO extends Struct {
  external SL_ACTIVATION_INFO_HEADER header;
  external Pointer<Utf16> pwszProductKey;
  external Pointer<Utf16> pwszActivationObjectName;
}

class SL_NONGENUINE_UI_OPTIONS extends Struct {
  @Uint32() external int cbSize;
  external Pointer<GUID> pComponentId;
  @Int32() external int hResultUI;
}

class SL_SYSTEM_POLICY_INFORMATION extends Struct {
  @Array(2)
  external Array<Pointer> Reserved1;
  @Array(3)
  external Array<Uint32> Reserved2;
}

class DIAGNOSTIC_DATA_RECORD extends Struct {
  @Int64() external int rowId;
  @Uint64() external int timestamp;
  @Uint64() external int eventKeywords;
  external Pointer<Utf16> fullEventName;
  external Pointer<Utf16> providerGroupGuid;
  external Pointer<Utf16> producerName;
  external Pointer<Int32> privacyTags;
  @Uint32() external int privacyTagCount;
  external Pointer<Int32> categoryIds;
  @Uint32() external int categoryIdCount;
  @Int32() external int isCoreData;
  external Pointer<Utf16> extra1;
  external Pointer<Utf16> extra2;
  external Pointer<Utf16> extra3;
}

class DIAGNOSTIC_DATA_SEARCH_CRITERIA extends Struct {
  external Pointer<Pointer<Utf16>> producerNames;
  @Uint32() external int producerNameCount;
  external Pointer<Utf16> textToMatch;
  external Pointer<Int32> categoryIds;
  @Uint32() external int categoryIdCount;
  external Pointer<Int32> privacyTags;
  @Uint32() external int privacyTagCount;
  @Int32() external int coreDataOnly;
}

class DIAGNOSTIC_DATA_EVENT_TAG_DESCRIPTION extends Struct {
  @Int32() external int privacyTag;
  external Pointer<Utf16> name;
  external Pointer<Utf16> description;
}

class DIAGNOSTIC_DATA_EVENT_PRODUCER_DESCRIPTION extends Struct {
  external Pointer<Utf16> name;
}

class DIAGNOSTIC_DATA_EVENT_CATEGORY_DESCRIPTION extends Struct {
  @Int32() external int id;
  external Pointer<Utf16> name;
}

class DIAGNOSTIC_DATA_EVENT_TAG_STATS extends Struct {
  @Int32() external int privacyTag;
  @Uint32() external int eventCount;
}

class DIAGNOSTIC_DATA_EVENT_BINARY_STATS extends Struct {
  external Pointer<Utf16> moduleName;
  external Pointer<Utf16> friendlyModuleName;
  @Uint32() external int eventCount;
  @Uint64() external int uploadSizeBytes;
}

class DIAGNOSTIC_DATA_GENERAL_STATS extends Struct {
  @Uint32() external int optInLevel;
  @Uint64() external int transcriptSizeBytes;
  @Uint64() external int oldestEventTimestamp;
  @Uint32() external int totalEventCountLast24Hours;
  @Float() external double averageDailyEvents;
}

class DIAGNOSTIC_DATA_EVENT_TRANSCRIPT_CONFIGURATION extends Struct {
  @Uint32() external int hoursOfHistoryToKeep;
  @Uint32() external int maxStoreMegabytes;
  @Uint32() external int requestedMaxStoreMegabytes;
}

class DIAGNOSTIC_REPORT_PARAMETER extends Struct {
  @Array(128)
  external Array<Uint16> name;
  @Array(129)
  external Array<Uint16> value;
}

class DIAGNOSTIC_REPORT_SIGNATURE extends Struct {
  @Array(65)
  external Array<Uint16> eventName;
  @Array(10)
  external Array<DIAGNOSTIC_REPORT_PARAMETER> parameters;
}

class DIAGNOSTIC_REPORT_DATA extends Struct {
  external DIAGNOSTIC_REPORT_SIGNATURE signature;
  external GUID bucketId;
  external GUID reportId;
  external FILETIME creationTime;
  @Uint64() external int sizeInBytes;
  external Pointer<Utf16> cabId;
  @Uint32() external int reportStatus;
  external GUID reportIntegratorId;
  external Pointer<Pointer<Utf16>> fileNames;
  @Uint32() external int fileCount;
  external Pointer<Utf16> friendlyEventName;
  external Pointer<Utf16> applicationName;
  external Pointer<Utf16> applicationPath;
  external Pointer<Utf16> description;
  external Pointer<Utf16> bucketIdString;
  @Uint64() external int legacyBucketId;
  external Pointer<Utf16> reportKey;
}

class NETRESOURCEA extends Struct {
  @Uint32() external int dwScope;
  @Uint32() external int dwType;
  @Uint32() external int dwDisplayType;
  @Uint32() external int dwUsage;
  external Pointer<Utf8> lpLocalName;
  external Pointer<Utf8> lpRemoteName;
  external Pointer<Utf8> lpComment;
  external Pointer<Utf8> lpProvider;
}

class NETRESOURCEW extends Struct {
  @Uint32() external int dwScope;
  @Uint32() external int dwType;
  @Uint32() external int dwDisplayType;
  @Uint32() external int dwUsage;
  external Pointer<Utf16> lpLocalName;
  external Pointer<Utf16> lpRemoteName;
  external Pointer<Utf16> lpComment;
  external Pointer<Utf16> lpProvider;
}

class UNIVERSAL_NAME_INFOA extends Struct {
  external Pointer<Utf8> lpUniversalName;
}

class UNIVERSAL_NAME_INFOW extends Struct {
  external Pointer<Utf16> lpUniversalName;
}

class REMOTE_NAME_INFOA extends Struct {
  external Pointer<Utf8> lpUniversalName;
  external Pointer<Utf8> lpConnectionName;
  external Pointer<Utf8> lpRemainingPath;
}

class REMOTE_NAME_INFOW extends Struct {
  external Pointer<Utf16> lpUniversalName;
  external Pointer<Utf16> lpConnectionName;
  external Pointer<Utf16> lpRemainingPath;
}

class NETCONNECTINFOSTRUCT extends Struct {
  @Uint32() external int cbStructure;
  @Uint32() external int dwFlags;
  @Uint32() external int dwSpeed;
  @Uint32() external int dwDelay;
  @Uint32() external int dwOptDataSize;
}

