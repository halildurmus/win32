// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import '../combase.dart';
import '../guid.dart';
import '../security/structs.g.dart';
import '../foundation/structs.g.dart';

/// {@category Struct}
class ACCESS_ALLOWED_ACE extends Struct {
  external ACE_HEADER Header;

  @Uint32()
  external int Mask;

  @Uint32()
  external int SidStart;
}

/// {@category Struct}
class ACCESS_ALLOWED_CALLBACK_ACE extends Struct {
  external ACE_HEADER Header;

  @Uint32()
  external int Mask;

  @Uint32()
  external int SidStart;
}

/// {@category Struct}
class ACCESS_ALLOWED_CALLBACK_OBJECT_ACE extends Struct {
  external ACE_HEADER Header;

  @Uint32()
  external int Mask;

  @Uint32()
  external int Flags;

  external GUID ObjectType;

  external GUID InheritedObjectType;

  @Uint32()
  external int SidStart;
}

/// {@category Struct}
class ACCESS_ALLOWED_OBJECT_ACE extends Struct {
  external ACE_HEADER Header;

  @Uint32()
  external int Mask;

  @Uint32()
  external int Flags;

  external GUID ObjectType;

  external GUID InheritedObjectType;

  @Uint32()
  external int SidStart;
}

/// {@category Struct}
class ACCESS_DENIED_ACE extends Struct {
  external ACE_HEADER Header;

  @Uint32()
  external int Mask;

  @Uint32()
  external int SidStart;
}

/// {@category Struct}
class ACCESS_DENIED_CALLBACK_ACE extends Struct {
  external ACE_HEADER Header;

  @Uint32()
  external int Mask;

  @Uint32()
  external int SidStart;
}

/// {@category Struct}
class ACCESS_DENIED_CALLBACK_OBJECT_ACE extends Struct {
  external ACE_HEADER Header;

  @Uint32()
  external int Mask;

  @Uint32()
  external int Flags;

  external GUID ObjectType;

  external GUID InheritedObjectType;

  @Uint32()
  external int SidStart;
}

/// {@category Struct}
class ACCESS_DENIED_OBJECT_ACE extends Struct {
  external ACE_HEADER Header;

  @Uint32()
  external int Mask;

  @Uint32()
  external int Flags;

  external GUID ObjectType;

  external GUID InheritedObjectType;

  @Uint32()
  external int SidStart;
}

/// {@category Struct}
class ACCESS_REASONS extends Struct {
  @Array(32)
  external Array<Uint32> Data;
}

/// {@category Struct}
class ACE_HEADER extends Struct {
  @Uint8()
  external int AceType;

  @Uint8()
  external int AceFlags;

  @Uint16()
  external int AceSize;
}

/// {@category Struct}
class ACL extends Struct {
  @Uint8()
  external int AclRevision;

  @Uint8()
  external int Sbz1;

  @Uint16()
  external int AclSize;

  @Uint16()
  external int AceCount;

  @Uint16()
  external int Sbz2;
}

/// {@category Struct}
class ACL_REVISION_INFORMATION extends Struct {
  @Uint32()
  external int AclRevision;
}

/// {@category Struct}
class ACL_SIZE_INFORMATION extends Struct {
  @Uint32()
  external int AceCount;

  @Uint32()
  external int AclBytesInUse;

  @Uint32()
  external int AclBytesFree;
}

/// {@category Struct}
class CLAIM_SECURITY_ATTRIBUTES_INFORMATION extends Struct {
  @Uint16()
  external int Version;

  @Uint16()
  external int Reserved;

  @Uint32()
  external int AttributeCount;

  external _CLAIM_SECURITY_ATTRIBUTES_INFORMATION__Attribute_e__Union Attribute;
}

/// {@category Struct}
class _CLAIM_SECURITY_ATTRIBUTES_INFORMATION__Attribute_e__Union extends Union {
  external Pointer<CLAIM_SECURITY_ATTRIBUTE_V1> pAttributeV1;
}

extension CLAIM_SECURITY_ATTRIBUTES_INFORMATION_Extension
    on CLAIM_SECURITY_ATTRIBUTES_INFORMATION {
  Pointer<CLAIM_SECURITY_ATTRIBUTE_V1> get pAttributeV1 =>
      this.Attribute.pAttributeV1;
  set pAttributeV1(Pointer<CLAIM_SECURITY_ATTRIBUTE_V1> value) =>
      this.Attribute.pAttributeV1 = value;
}

/// {@category Struct}
class CLAIM_SECURITY_ATTRIBUTE_FQBN_VALUE extends Struct {
  @Uint64()
  external int Version;

  external Pointer<Utf16> Name;
}

/// {@category Struct}
class CLAIM_SECURITY_ATTRIBUTE_OCTET_STRING_VALUE extends Struct {
  external Pointer pValue;

  @Uint32()
  external int ValueLength;
}

/// {@category Struct}
class CLAIM_SECURITY_ATTRIBUTE_RELATIVE_V1 extends Struct {
  @Uint32()
  external int Name;

  @Uint16()
  external int ValueType;

  @Uint16()
  external int Reserved;

  @Uint32()
  external int Flags;

  @Uint32()
  external int ValueCount;

  external _CLAIM_SECURITY_ATTRIBUTE_RELATIVE_V1__Values_e__Union Values;
}

/// {@category Struct}
class _CLAIM_SECURITY_ATTRIBUTE_RELATIVE_V1__Values_e__Union extends Union {
  @Array(1)
  external Array<Uint32> pInt64;

  @Array(1)
  external Array<Uint32> pUint64;

  @Array(1)
  external Array<Uint32> ppString;

  @Array(1)
  external Array<Uint32> pFqbn;

  @Array(1)
  external Array<Uint32> pOctetString;
}

extension CLAIM_SECURITY_ATTRIBUTE_RELATIVE_V1_Extension
    on CLAIM_SECURITY_ATTRIBUTE_RELATIVE_V1 {
  Array<Uint32> get pInt64 => this.Values.pInt64;
  set pInt64(Array<Uint32> value) => this.Values.pInt64 = value;

  Array<Uint32> get pUint64 => this.Values.pUint64;
  set pUint64(Array<Uint32> value) => this.Values.pUint64 = value;

  Array<Uint32> get ppString => this.Values.ppString;
  set ppString(Array<Uint32> value) => this.Values.ppString = value;

  Array<Uint32> get pFqbn => this.Values.pFqbn;
  set pFqbn(Array<Uint32> value) => this.Values.pFqbn = value;

  Array<Uint32> get pOctetString => this.Values.pOctetString;
  set pOctetString(Array<Uint32> value) => this.Values.pOctetString = value;
}

/// {@category Struct}
class CLAIM_SECURITY_ATTRIBUTE_V1 extends Struct {
  external Pointer<Utf16> Name;

  @Uint16()
  external int ValueType;

  @Uint16()
  external int Reserved;

  @Uint32()
  external int Flags;

  @Uint32()
  external int ValueCount;

  external _CLAIM_SECURITY_ATTRIBUTE_V1__Values_e__Union Values;
}

/// {@category Struct}
class _CLAIM_SECURITY_ATTRIBUTE_V1__Values_e__Union extends Union {
  external Pointer<Int64> pInt64;

  external Pointer<Uint64> pUint64;

  external Pointer<Pointer<Utf16>> ppString;

  external Pointer<CLAIM_SECURITY_ATTRIBUTE_FQBN_VALUE> pFqbn;

  external Pointer<CLAIM_SECURITY_ATTRIBUTE_OCTET_STRING_VALUE> pOctetString;
}

extension CLAIM_SECURITY_ATTRIBUTE_V1_Extension on CLAIM_SECURITY_ATTRIBUTE_V1 {
  Pointer<Int64> get pInt64 => this.Values.pInt64;
  set pInt64(Pointer<Int64> value) => this.Values.pInt64 = value;

  Pointer<Uint64> get pUint64 => this.Values.pUint64;
  set pUint64(Pointer<Uint64> value) => this.Values.pUint64 = value;

  Pointer<Pointer<Utf16>> get ppString => this.Values.ppString;
  set ppString(Pointer<Pointer<Utf16>> value) => this.Values.ppString = value;

  Pointer<CLAIM_SECURITY_ATTRIBUTE_FQBN_VALUE> get pFqbn => this.Values.pFqbn;
  set pFqbn(Pointer<CLAIM_SECURITY_ATTRIBUTE_FQBN_VALUE> value) =>
      this.Values.pFqbn = value;

  Pointer<CLAIM_SECURITY_ATTRIBUTE_OCTET_STRING_VALUE> get pOctetString =>
      this.Values.pOctetString;
  set pOctetString(
          Pointer<CLAIM_SECURITY_ATTRIBUTE_OCTET_STRING_VALUE> value) =>
      this.Values.pOctetString = value;
}

/// {@category Struct}
class GENERIC_MAPPING extends Struct {
  @Uint32()
  external int GenericRead;

  @Uint32()
  external int GenericWrite;

  @Uint32()
  external int GenericExecute;

  @Uint32()
  external int GenericAll;
}

/// {@category Struct}
class LLFILETIME extends Struct {
  external _LLFILETIME__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _LLFILETIME__Anonymous_e__Union extends Union {
  @Int64()
  external int ll;

  external FILETIME ft;
}

extension LLFILETIME_Extension on LLFILETIME {
  int get ll => this.Anonymous.ll;
  set ll(int value) => this.Anonymous.ll = value;

  FILETIME get ft => this.Anonymous.ft;
  set ft(FILETIME value) => this.Anonymous.ft = value;
}

/// {@category Struct}
class LUID_AND_ATTRIBUTES extends Struct {
  external LUID Luid;

  @Uint32()
  external int Attributes;
}

/// {@category Struct}
class OBJECT_TYPE_LIST extends Struct {
  @Uint16()
  external int Level;

  @Uint16()
  external int Sbz;

  external Pointer<GUID> ObjectType;
}

/// {@category Struct}
class PRIVILEGE_SET extends Struct {
  @Uint32()
  external int PrivilegeCount;

  @Uint32()
  external int Control;

  @Array(1)
  external Array<LUID_AND_ATTRIBUTES> Privilege;
}

/// {@category Struct}
class QUOTA_LIMITS extends Struct {
  @IntPtr()
  external int PagedPoolLimit;

  @IntPtr()
  external int NonPagedPoolLimit;

  @IntPtr()
  external int MinimumWorkingSetSize;

  @IntPtr()
  external int MaximumWorkingSetSize;

  @IntPtr()
  external int PagefileLimit;

  @Int64()
  external int TimeLimit;
}

/// {@category Struct}
class SECURITY_ATTRIBUTES extends Struct {
  @Uint32()
  external int nLength;

  external Pointer lpSecurityDescriptor;

  @Int32()
  external int bInheritHandle;
}

/// {@category Struct}
class SECURITY_CAPABILITIES extends Struct {
  @IntPtr()
  external int AppContainerSid;

  external Pointer<SID_AND_ATTRIBUTES> Capabilities;

  @Uint32()
  external int CapabilityCount;

  @Uint32()
  external int Reserved;
}

/// {@category Struct}
class SECURITY_DESCRIPTOR extends Struct {
  @Uint8()
  external int Revision;

  @Uint8()
  external int Sbz1;

  @Uint16()
  external int Control;

  @IntPtr()
  external int Owner;

  @IntPtr()
  external int Group;

  external Pointer<ACL> Sacl;

  external Pointer<ACL> Dacl;
}

/// {@category Struct}
class SECURITY_QUALITY_OF_SERVICE extends Struct {
  @Uint32()
  external int Length;

  @Int32()
  external int ImpersonationLevel;

  @Uint8()
  external int ContextTrackingMode;

  @Uint8()
  external int EffectiveOnly;
}

/// {@category Struct}
class SE_ACCESS_REPLY extends Struct {
  @Uint32()
  external int Size;

  @Uint32()
  external int ResultListCount;

  external Pointer<Uint32> GrantedAccess;

  external Pointer<Uint32> AccessStatus;

  external Pointer<ACCESS_REASONS> AccessReason;

  external Pointer<Pointer<PRIVILEGE_SET>> Privileges;
}

/// {@category Struct}
class SE_ACCESS_REQUEST extends Struct {
  @Uint32()
  external int Size;

  external Pointer<SE_SECURITY_DESCRIPTOR> SeSecurityDescriptor;

  @Uint32()
  external int DesiredAccess;

  @Uint32()
  external int PreviouslyGrantedAccess;

  @IntPtr()
  external int PrincipalSelfSid;

  external Pointer<GENERIC_MAPPING> GenericMapping;

  @Uint32()
  external int ObjectTypeListCount;

  external Pointer<OBJECT_TYPE_LIST> ObjectTypeList;
}

/// {@category Struct}
class SE_IMPERSONATION_STATE extends Struct {
  external Pointer Token;

  @Uint8()
  external int CopyOnOpen;

  @Uint8()
  external int EffectiveOnly;

  @Int32()
  external int Level;
}

/// {@category Struct}
class SE_SECURITY_DESCRIPTOR extends Struct {
  @Uint32()
  external int Size;

  @Uint32()
  external int Flags;

  external Pointer<SECURITY_DESCRIPTOR> SecurityDescriptor;
}

/// {@category Struct}
class SE_SID extends Union {
  external SID Sid;

  @Array(68)
  external Array<Uint8> Buffer;
}

/// {@category Struct}
class SID extends Struct {
  @Uint8()
  external int Revision;

  @Uint8()
  external int SubAuthorityCount;

  external SID_IDENTIFIER_AUTHORITY IdentifierAuthority;

  @Array(1)
  external Array<Uint32> SubAuthority;
}

/// {@category Struct}
class SID_AND_ATTRIBUTES extends Struct {
  @IntPtr()
  external int Sid;

  @Uint32()
  external int Attributes;
}

/// {@category Struct}
class SID_AND_ATTRIBUTES_HASH extends Struct {
  @Uint32()
  external int SidCount;

  external Pointer<SID_AND_ATTRIBUTES> SidAttr;

  @Array(32)
  external Array<IntPtr> Hash;
}

/// {@category Struct}
class SID_IDENTIFIER_AUTHORITY extends Struct {
  @Array(6)
  external Array<Uint8> Value;
}

/// {@category Struct}
class SYSTEM_ACCESS_FILTER_ACE extends Struct {
  external ACE_HEADER Header;

  @Uint32()
  external int Mask;

  @Uint32()
  external int SidStart;
}

/// {@category Struct}
class SYSTEM_ALARM_ACE extends Struct {
  external ACE_HEADER Header;

  @Uint32()
  external int Mask;

  @Uint32()
  external int SidStart;
}

/// {@category Struct}
class SYSTEM_ALARM_CALLBACK_ACE extends Struct {
  external ACE_HEADER Header;

  @Uint32()
  external int Mask;

  @Uint32()
  external int SidStart;
}

/// {@category Struct}
class SYSTEM_ALARM_CALLBACK_OBJECT_ACE extends Struct {
  external ACE_HEADER Header;

  @Uint32()
  external int Mask;

  @Uint32()
  external int Flags;

  external GUID ObjectType;

  external GUID InheritedObjectType;

  @Uint32()
  external int SidStart;
}

/// {@category Struct}
class SYSTEM_ALARM_OBJECT_ACE extends Struct {
  external ACE_HEADER Header;

  @Uint32()
  external int Mask;

  @Uint32()
  external int Flags;

  external GUID ObjectType;

  external GUID InheritedObjectType;

  @Uint32()
  external int SidStart;
}

/// {@category Struct}
class SYSTEM_AUDIT_ACE extends Struct {
  external ACE_HEADER Header;

  @Uint32()
  external int Mask;

  @Uint32()
  external int SidStart;
}

/// {@category Struct}
class SYSTEM_AUDIT_CALLBACK_ACE extends Struct {
  external ACE_HEADER Header;

  @Uint32()
  external int Mask;

  @Uint32()
  external int SidStart;
}

/// {@category Struct}
class SYSTEM_AUDIT_CALLBACK_OBJECT_ACE extends Struct {
  external ACE_HEADER Header;

  @Uint32()
  external int Mask;

  @Uint32()
  external int Flags;

  external GUID ObjectType;

  external GUID InheritedObjectType;

  @Uint32()
  external int SidStart;
}

/// {@category Struct}
class SYSTEM_AUDIT_OBJECT_ACE extends Struct {
  external ACE_HEADER Header;

  @Uint32()
  external int Mask;

  @Uint32()
  external int Flags;

  external GUID ObjectType;

  external GUID InheritedObjectType;

  @Uint32()
  external int SidStart;
}

/// {@category Struct}
class SYSTEM_MANDATORY_LABEL_ACE extends Struct {
  external ACE_HEADER Header;

  @Uint32()
  external int Mask;

  @Uint32()
  external int SidStart;
}

/// {@category Struct}
class SYSTEM_PROCESS_TRUST_LABEL_ACE extends Struct {
  external ACE_HEADER Header;

  @Uint32()
  external int Mask;

  @Uint32()
  external int SidStart;
}

/// {@category Struct}
class SYSTEM_RESOURCE_ATTRIBUTE_ACE extends Struct {
  external ACE_HEADER Header;

  @Uint32()
  external int Mask;

  @Uint32()
  external int SidStart;
}

/// {@category Struct}
class SYSTEM_SCOPED_POLICY_ID_ACE extends Struct {
  external ACE_HEADER Header;

  @Uint32()
  external int Mask;

  @Uint32()
  external int SidStart;
}

/// {@category Struct}
class TOKEN_ACCESS_INFORMATION extends Struct {
  external Pointer<SID_AND_ATTRIBUTES_HASH> SidHash;

  external Pointer<SID_AND_ATTRIBUTES_HASH> RestrictedSidHash;

  external Pointer<TOKEN_PRIVILEGES> Privileges;

  external LUID AuthenticationId;

  @Int32()
  external int TokenType;

  @Int32()
  external int ImpersonationLevel;

  external TOKEN_MANDATORY_POLICY MandatoryPolicy;

  @Uint32()
  external int Flags;

  @Uint32()
  external int AppContainerNumber;

  @IntPtr()
  external int PackageSid;

  external Pointer<SID_AND_ATTRIBUTES_HASH> CapabilitiesHash;

  @IntPtr()
  external int TrustLevelSid;

  external Pointer SecurityAttributes;
}

/// {@category Struct}
class TOKEN_APPCONTAINER_INFORMATION extends Struct {
  @IntPtr()
  external int TokenAppContainer;
}

/// {@category Struct}
class TOKEN_AUDIT_POLICY extends Struct {
  @Array(30)
  external Array<Uint8> PerUserPolicy;
}

/// {@category Struct}
class TOKEN_CONTROL extends Struct {
  external LUID TokenId;

  external LUID AuthenticationId;

  external LUID ModifiedId;

  external TOKEN_SOURCE TokenSource;
}

/// {@category Struct}
class TOKEN_DEFAULT_DACL extends Struct {
  external Pointer<ACL> DefaultDacl;
}

/// {@category Struct}
class TOKEN_DEVICE_CLAIMS extends Struct {
  external Pointer DeviceClaims;
}

/// {@category Struct}
class TOKEN_ELEVATION extends Struct {
  @Uint32()
  external int TokenIsElevated;
}

/// {@category Struct}
class TOKEN_GROUPS extends Struct {
  @Uint32()
  external int GroupCount;

  @Array(1)
  external Array<SID_AND_ATTRIBUTES> Groups;
}

/// {@category Struct}
class TOKEN_GROUPS_AND_PRIVILEGES extends Struct {
  @Uint32()
  external int SidCount;

  @Uint32()
  external int SidLength;

  external Pointer<SID_AND_ATTRIBUTES> Sids;

  @Uint32()
  external int RestrictedSidCount;

  @Uint32()
  external int RestrictedSidLength;

  external Pointer<SID_AND_ATTRIBUTES> RestrictedSids;

  @Uint32()
  external int PrivilegeCount;

  @Uint32()
  external int PrivilegeLength;

  external Pointer<LUID_AND_ATTRIBUTES> Privileges;

  external LUID AuthenticationId;
}

/// {@category Struct}
class TOKEN_LINKED_TOKEN extends Struct {
  @IntPtr()
  external int LinkedToken;
}

/// {@category Struct}
class TOKEN_MANDATORY_LABEL extends Struct {
  external SID_AND_ATTRIBUTES Label;
}

/// {@category Struct}
class TOKEN_MANDATORY_POLICY extends Struct {
  @Uint32()
  external int Policy;
}

/// {@category Struct}
class TOKEN_ORIGIN extends Struct {
  external LUID OriginatingLogonSession;
}

/// {@category Struct}
class TOKEN_OWNER extends Struct {
  @IntPtr()
  external int Owner;
}

/// {@category Struct}
class TOKEN_PRIMARY_GROUP extends Struct {
  @IntPtr()
  external int PrimaryGroup;
}

/// {@category Struct}
class TOKEN_PRIVILEGES extends Struct {
  @Uint32()
  external int PrivilegeCount;

  @Array(1)
  external Array<LUID_AND_ATTRIBUTES> Privileges;
}

/// {@category Struct}
class TOKEN_SOURCE extends Struct {
  @Array(8)
  external Array<Uint8> SourceName;

  external LUID SourceIdentifier;
}

/// {@category Struct}
class TOKEN_STATISTICS extends Struct {
  external LUID TokenId;

  external LUID AuthenticationId;

  @Int64()
  external int ExpirationTime;

  @Int32()
  external int TokenType;

  @Int32()
  external int ImpersonationLevel;

  @Uint32()
  external int DynamicCharged;

  @Uint32()
  external int DynamicAvailable;

  @Uint32()
  external int GroupCount;

  @Uint32()
  external int PrivilegeCount;

  external LUID ModifiedId;
}

/// {@category Struct}
class TOKEN_USER extends Struct {
  external SID_AND_ATTRIBUTES User;
}

/// {@category Struct}
class TOKEN_USER_CLAIMS extends Struct {
  external Pointer UserClaims;
}
