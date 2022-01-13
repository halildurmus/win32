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
import '../../combase.dart';
import '../../guid.dart';
import '../../security/authorization/structs.g.dart';
import '../../security/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../security/authorization/callbacks.g.dart';

/// {@category Struct}
class ACTRL_ACCESS extends Struct {
  @Uint32()
  external int cEntries;

  external Pointer<ACTRL_PROPERTY_ENTRY> pPropertyAccessList;
}

/// {@category Struct}
class ACTRL_ACCESS_ENTRY extends Struct {
  external TRUSTEE_ Trustee;

  @Uint32()
  external int fAccessFlags;

  @Uint32()
  external int Access;

  @Uint32()
  external int ProvSpecificAccess;

  @Uint32()
  external int Inheritance;

  external Pointer<Utf16> lpInheritProperty;
}

/// {@category Struct}
class ACTRL_ACCESS_ENTRY_LIST extends Struct {
  @Uint32()
  external int cEntries;

  external Pointer<ACTRL_ACCESS_ENTRY> pAccessList;
}

/// {@category Struct}
class ACTRL_ACCESS_INFO extends Struct {
  @Uint32()
  external int fAccessPermission;

  external Pointer<Utf16> lpAccessPermissionName;
}

/// {@category Struct}
class ACTRL_CONTROL_INFO extends Struct {
  external Pointer<Utf16> lpControlId;

  external Pointer<Utf16> lpControlName;
}

/// {@category Struct}
class ACTRL_OVERLAPPED extends Struct {
  external _ACTRL_OVERLAPPED__Anonymous_e__Union Anonymous;

  @Uint32()
  external int Reserved2;

  @IntPtr()
  external int hEvent;
}

/// {@category Struct}
class _ACTRL_OVERLAPPED__Anonymous_e__Union extends Union {
  external Pointer Provider;

  @Uint32()
  external int Reserved1;
}

extension ACTRL_OVERLAPPED_Extension on ACTRL_OVERLAPPED {
  Pointer get Provider => this.Anonymous.Provider;
  set Provider(Pointer value) => this.Anonymous.Provider = value;

  int get Reserved1 => this.Anonymous.Reserved1;
  set Reserved1(int value) => this.Anonymous.Reserved1 = value;
}

/// {@category Struct}
class ACTRL_PROPERTY_ENTRY extends Struct {
  external Pointer<Utf16> lpProperty;

  external Pointer<ACTRL_ACCESS_ENTRY_LIST> pAccessEntryList;

  @Uint32()
  external int fListFlags;
}

/// {@category Struct}
class AUDIT_IP_ADDRESS extends Struct {
  @Array(128)
  external Array<Uint8> pIpAddress;
}

/// {@category Struct}
class AUDIT_OBJECT_TYPE extends Struct {
  external GUID ObjectType;

  @Uint16()
  external int Flags;

  @Uint16()
  external int Level;

  @Uint32()
  external int AccessMask;
}

/// {@category Struct}
class AUDIT_OBJECT_TYPES extends Struct {
  @Uint16()
  external int Count;

  @Uint16()
  external int Flags;

  external Pointer<AUDIT_OBJECT_TYPE> pObjectTypes;
}

/// {@category Struct}
class AUDIT_PARAM extends Struct {
  @Int32()
  external int Type;

  @Uint32()
  external int Length;

  @Uint32()
  external int Flags;

  external _AUDIT_PARAM__Anonymous1_e__Union Anonymous1;

  external _AUDIT_PARAM__Anonymous2_e__Union Anonymous2;
}

/// {@category Struct}
class _AUDIT_PARAM__Anonymous1_e__Union extends Union {
  @IntPtr()
  external int Data0;

  external Pointer<Utf16> $String;

  @IntPtr()
  external int u;

  external Pointer<SID> psid;

  external Pointer<GUID> pguid;

  @Uint32()
  external int LogonId_LowPart;

  external Pointer<AUDIT_OBJECT_TYPES> pObjectTypes;

  external Pointer<AUDIT_IP_ADDRESS> pIpAddress;
}

extension AUDIT_PARAM_Extension on AUDIT_PARAM {
  int get Data0 => this.Anonymous1.Data0;
  set Data0(int value) => this.Anonymous1.Data0 = value;

  Pointer<Utf16> get $String => this.Anonymous1.$String;
  set $String(Pointer<Utf16> value) => this.Anonymous1.$String = value;

  int get u => this.Anonymous1.u;
  set u(int value) => this.Anonymous1.u = value;

  Pointer<SID> get psid => this.Anonymous1.psid;
  set psid(Pointer<SID> value) => this.Anonymous1.psid = value;

  Pointer<GUID> get pguid => this.Anonymous1.pguid;
  set pguid(Pointer<GUID> value) => this.Anonymous1.pguid = value;

  int get LogonId_LowPart => this.Anonymous1.LogonId_LowPart;
  set LogonId_LowPart(int value) => this.Anonymous1.LogonId_LowPart = value;

  Pointer<AUDIT_OBJECT_TYPES> get pObjectTypes => this.Anonymous1.pObjectTypes;
  set pObjectTypes(Pointer<AUDIT_OBJECT_TYPES> value) =>
      this.Anonymous1.pObjectTypes = value;

  Pointer<AUDIT_IP_ADDRESS> get pIpAddress => this.Anonymous1.pIpAddress;
  set pIpAddress(Pointer<AUDIT_IP_ADDRESS> value) =>
      this.Anonymous1.pIpAddress = value;
}

/// {@category Struct}
class _AUDIT_PARAM__Anonymous2_e__Union extends Union {
  @IntPtr()
  external int Data1;

  @Int32()
  external int LogonId_HighPart;
}

extension AUDIT_PARAM_Extension_1 on AUDIT_PARAM {
  int get Data1 => this.Anonymous2.Data1;
  set Data1(int value) => this.Anonymous2.Data1 = value;

  int get LogonId_HighPart => this.Anonymous2.LogonId_HighPart;
  set LogonId_HighPart(int value) => this.Anonymous2.LogonId_HighPart = value;
}

/// {@category Struct}
class AUDIT_PARAMS extends Struct {
  @Uint32()
  external int Length;

  @Uint32()
  external int Flags;

  @Uint16()
  external int Count;

  external Pointer<AUDIT_PARAM> Parameters;
}

/// {@category Struct}
class AUTHZ_ACCESS_REPLY extends Struct {
  @Uint32()
  external int ResultListLength;

  external Pointer<Uint32> GrantedAccessMask;

  external Pointer<Uint32> SaclEvaluationResults;

  external Pointer<Uint32> Error;
}

/// {@category Struct}
class AUTHZ_ACCESS_REQUEST extends Struct {
  @Uint32()
  external int DesiredAccess;

  @IntPtr()
  external int PrincipalSelfSid;

  external Pointer<OBJECT_TYPE_LIST> ObjectTypeList;

  @Uint32()
  external int ObjectTypeListLength;

  external Pointer OptionalArguments;
}

/// {@category Struct}
class AUTHZ_AUDIT_EVENT_TYPE_LEGACY extends Struct {
  @Uint16()
  external int CategoryId;

  @Uint16()
  external int AuditId;

  @Uint16()
  external int ParameterCount;
}

/// {@category Struct}
class AUTHZ_AUDIT_EVENT_TYPE_OLD extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int dwFlags;

  @Int32()
  external int RefCount;

  @IntPtr()
  external int hAudit;

  external LUID LinkId;

  external AUTHZ_AUDIT_EVENT_TYPE_UNION u;
}

/// {@category Struct}
class AUTHZ_AUDIT_EVENT_TYPE_UNION extends Union {
  external AUTHZ_AUDIT_EVENT_TYPE_LEGACY Legacy;
}

/// {@category Struct}
class AUTHZ_CAP_CHANGE_SUBSCRIPTION_HANDLE__ extends Struct {
  @Int32()
  external int unused;
}

/// {@category Struct}
class AUTHZ_INIT_INFO extends Struct {
  @Uint16()
  external int version;

  external Pointer<Utf16> szResourceManagerName;

  external Pointer<NativeFunction<PFN_AUTHZ_DYNAMIC_ACCESS_CHECK>>
      pfnDynamicAccessCheck;

  external Pointer<NativeFunction<PFN_AUTHZ_COMPUTE_DYNAMIC_GROUPS>>
      pfnComputeDynamicGroups;

  external Pointer<NativeFunction<PFN_AUTHZ_FREE_DYNAMIC_GROUPS>>
      pfnFreeDynamicGroups;

  external Pointer<NativeFunction<PFN_AUTHZ_GET_CENTRAL_ACCESS_POLICY>>
      pfnGetCentralAccessPolicy;

  external Pointer<NativeFunction<PFN_AUTHZ_FREE_CENTRAL_ACCESS_POLICY>>
      pfnFreeCentralAccessPolicy;
}

/// {@category Struct}
class AUTHZ_REGISTRATION_OBJECT_TYPE_NAME_OFFSET extends Struct {
  external Pointer<Utf16> szObjectTypeName;

  @Uint32()
  external int dwOffset;
}

/// {@category Struct}
class AUTHZ_RPC_INIT_INFO_CLIENT extends Struct {
  @Uint16()
  external int version;

  external Pointer<Utf16> ObjectUuid;

  external Pointer<Utf16> ProtSeq;

  external Pointer<Utf16> NetworkAddr;

  external Pointer<Utf16> Endpoint;

  external Pointer<Utf16> Options;

  external Pointer<Utf16> ServerSpn;
}

/// {@category Struct}
class AUTHZ_SECURITY_ATTRIBUTES_INFORMATION extends Struct {
  @Uint16()
  external int Version;

  @Uint16()
  external int Reserved;

  @Uint32()
  external int AttributeCount;

  external _AUTHZ_SECURITY_ATTRIBUTES_INFORMATION__Attribute_e__Union Attribute;
}

/// {@category Struct}
class _AUTHZ_SECURITY_ATTRIBUTES_INFORMATION__Attribute_e__Union extends Union {
  external Pointer<AUTHZ_SECURITY_ATTRIBUTE_V1> pAttributeV1;
}

extension AUTHZ_SECURITY_ATTRIBUTES_INFORMATION_Extension
    on AUTHZ_SECURITY_ATTRIBUTES_INFORMATION {
  Pointer<AUTHZ_SECURITY_ATTRIBUTE_V1> get pAttributeV1 =>
      this.Attribute.pAttributeV1;
  set pAttributeV1(Pointer<AUTHZ_SECURITY_ATTRIBUTE_V1> value) =>
      this.Attribute.pAttributeV1 = value;
}

/// {@category Struct}
class AUTHZ_SECURITY_ATTRIBUTE_FQBN_VALUE extends Struct {
  @Uint64()
  external int Version;

  external Pointer<Utf16> pName;
}

/// {@category Struct}
class AUTHZ_SECURITY_ATTRIBUTE_OCTET_STRING_VALUE extends Struct {
  external Pointer pValue;

  @Uint32()
  external int ValueLength;
}

/// {@category Struct}
class AUTHZ_SECURITY_ATTRIBUTE_V1 extends Struct {
  external Pointer<Utf16> pName;

  @Uint16()
  external int ValueType;

  @Uint16()
  external int Reserved;

  @Uint32()
  external int Flags;

  @Uint32()
  external int ValueCount;

  external _AUTHZ_SECURITY_ATTRIBUTE_V1__Values_e__Union Values;
}

/// {@category Struct}
class _AUTHZ_SECURITY_ATTRIBUTE_V1__Values_e__Union extends Union {
  external Pointer<Int64> pInt64;

  external Pointer<Uint64> pUint64;

  external Pointer<Pointer<Utf16>> ppString;

  external Pointer<AUTHZ_SECURITY_ATTRIBUTE_FQBN_VALUE> pFqbn;

  external Pointer<AUTHZ_SECURITY_ATTRIBUTE_OCTET_STRING_VALUE> pOctetString;
}

extension AUTHZ_SECURITY_ATTRIBUTE_V1_Extension on AUTHZ_SECURITY_ATTRIBUTE_V1 {
  Pointer<Int64> get pInt64 => this.Values.pInt64;
  set pInt64(Pointer<Int64> value) => this.Values.pInt64 = value;

  Pointer<Uint64> get pUint64 => this.Values.pUint64;
  set pUint64(Pointer<Uint64> value) => this.Values.pUint64 = value;

  Pointer<Pointer<Utf16>> get ppString => this.Values.ppString;
  set ppString(Pointer<Pointer<Utf16>> value) => this.Values.ppString = value;

  Pointer<AUTHZ_SECURITY_ATTRIBUTE_FQBN_VALUE> get pFqbn => this.Values.pFqbn;
  set pFqbn(Pointer<AUTHZ_SECURITY_ATTRIBUTE_FQBN_VALUE> value) =>
      this.Values.pFqbn = value;

  Pointer<AUTHZ_SECURITY_ATTRIBUTE_OCTET_STRING_VALUE> get pOctetString =>
      this.Values.pOctetString;
  set pOctetString(
          Pointer<AUTHZ_SECURITY_ATTRIBUTE_OCTET_STRING_VALUE> value) =>
      this.Values.pOctetString = value;
}

/// {@category Struct}
class AUTHZ_SOURCE_SCHEMA_REGISTRATION extends Struct {
  @Uint32()
  external int dwFlags;

  external Pointer<Utf16> szEventSourceName;

  external Pointer<Utf16> szEventMessageFile;

  external Pointer<Utf16> szEventSourceXmlSchemaFile;

  external Pointer<Utf16> szEventAccessStringsFile;

  external Pointer<Utf16> szExecutableImagePath;

  external _AUTHZ_SOURCE_SCHEMA_REGISTRATION__Anonymous_e__Union Anonymous;

  @Uint32()
  external int dwObjectTypeNameCount;

  @Array(1)
  external Array<AUTHZ_REGISTRATION_OBJECT_TYPE_NAME_OFFSET> ObjectTypeNames;
}

/// {@category Struct}
class _AUTHZ_SOURCE_SCHEMA_REGISTRATION__Anonymous_e__Union extends Union {
  external Pointer pReserved;

  external Pointer<GUID> pProviderGuid;
}

extension AUTHZ_SOURCE_SCHEMA_REGISTRATION_Extension
    on AUTHZ_SOURCE_SCHEMA_REGISTRATION {
  Pointer get pReserved => this.Anonymous.pReserved;
  set pReserved(Pointer value) => this.Anonymous.pReserved = value;

  Pointer<GUID> get pProviderGuid => this.Anonymous.pProviderGuid;
  set pProviderGuid(Pointer<GUID> value) =>
      this.Anonymous.pProviderGuid = value;
}

/// {@category Struct}
class EXPLICIT_ACCESS_ extends Struct {
  @Uint32()
  external int grfAccessPermissions;

  @Int32()
  external int grfAccessMode;

  @Uint32()
  external int grfInheritance;

  external TRUSTEE_ Trustee;
}

/// {@category Struct}
class FN_OBJECT_MGR_FUNCTIONS extends Struct {
  @Uint32()
  external int Placeholder;
}

/// {@category Struct}
class INHERITED_FROM extends Struct {
  @Int32()
  external int GenerationGap;

  external Pointer<Utf16> AncestorName;
}

/// {@category Struct}
class OBJECTS_AND_NAME_ extends Struct {
  @Uint32()
  external int ObjectsPresent;

  @Int32()
  external int ObjectType;

  external Pointer<Utf16> ObjectTypeName;

  external Pointer<Utf16> InheritedObjectTypeName;

  external Pointer<Utf16> ptstrName;
}

/// {@category Struct}
class OBJECTS_AND_SID extends Struct {
  @Uint32()
  external int ObjectsPresent;

  external GUID ObjectTypeGuid;

  external GUID InheritedObjectTypeGuid;

  external Pointer<SID> pSid;
}

/// {@category Struct}
class TRUSTEE_ACCESS extends Struct {
  external Pointer<Utf16> lpProperty;

  @Uint32()
  external int Access;

  @Uint32()
  external int fAccessFlags;

  @Uint32()
  external int fReturnedAccess;
}

/// {@category Struct}
class TRUSTEE_ extends Struct {
  external Pointer<TRUSTEE_> pMultipleTrustee;

  @Int32()
  external int MultipleTrusteeOperation;

  @Int32()
  external int TrusteeForm;

  @Int32()
  external int TrusteeType;

  external Pointer<Utf16> ptstrName;
}
