// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';

import '../combase.dart';
import '../guid.dart';
import '../security/structs.g.dart';
import '../foundation/structs.g.dart'; // -----------------------------------------------------------------------

// advapi32.dll
// -----------------------------------------------------------------------
final _advapi32 = DynamicLibrary.open('advapi32.dll');

int AccessCheck(
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
  int ClientToken,
  int DesiredAccess,
  Pointer<GENERIC_MAPPING> GenericMapping,
  Pointer<PRIVILEGE_SET> PrivilegeSet,
  Pointer<Uint32> PrivilegeSetLength,
  Pointer<Uint32> GrantedAccess,
  Pointer<Int32> AccessStatus,
) =>
    _AccessCheck(
      pSecurityDescriptor,
      ClientToken,
      DesiredAccess,
      GenericMapping,
      PrivilegeSet,
      PrivilegeSetLength,
      GrantedAccess,
      AccessStatus,
    );

late final _AccessCheck = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
  IntPtr ClientToken,
  Uint32 DesiredAccess,
  Pointer<GENERIC_MAPPING> GenericMapping,
  Pointer<PRIVILEGE_SET> PrivilegeSet,
  Pointer<Uint32> PrivilegeSetLength,
  Pointer<Uint32> GrantedAccess,
  Pointer<Int32> AccessStatus,
),
    int Function(
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
  int ClientToken,
  int DesiredAccess,
  Pointer<GENERIC_MAPPING> GenericMapping,
  Pointer<PRIVILEGE_SET> PrivilegeSet,
  Pointer<Uint32> PrivilegeSetLength,
  Pointer<Uint32> GrantedAccess,
  Pointer<Int32> AccessStatus,
)>('AccessCheck');

int AccessCheckAndAuditAlarm(
  Pointer<Utf16> SubsystemName,
  Pointer HandleId,
  Pointer<Utf16> ObjectTypeName,
  Pointer<Utf16> ObjectName,
  Pointer<SECURITY_DESCRIPTOR> SecurityDescriptor,
  int DesiredAccess,
  Pointer<GENERIC_MAPPING> GenericMapping,
  int ObjectCreation,
  Pointer<Uint32> GrantedAccess,
  Pointer<Int32> AccessStatus,
  Pointer<Int32> pfGenerateOnClose,
) =>
    _AccessCheckAndAuditAlarm(
      SubsystemName,
      HandleId,
      ObjectTypeName,
      ObjectName,
      SecurityDescriptor,
      DesiredAccess,
      GenericMapping,
      ObjectCreation,
      GrantedAccess,
      AccessStatus,
      pfGenerateOnClose,
    );

late final _AccessCheckAndAuditAlarm = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> SubsystemName,
  Pointer HandleId,
  Pointer<Utf16> ObjectTypeName,
  Pointer<Utf16> ObjectName,
  Pointer<SECURITY_DESCRIPTOR> SecurityDescriptor,
  Uint32 DesiredAccess,
  Pointer<GENERIC_MAPPING> GenericMapping,
  Int32 ObjectCreation,
  Pointer<Uint32> GrantedAccess,
  Pointer<Int32> AccessStatus,
  Pointer<Int32> pfGenerateOnClose,
),
    int Function(
  Pointer<Utf16> SubsystemName,
  Pointer HandleId,
  Pointer<Utf16> ObjectTypeName,
  Pointer<Utf16> ObjectName,
  Pointer<SECURITY_DESCRIPTOR> SecurityDescriptor,
  int DesiredAccess,
  Pointer<GENERIC_MAPPING> GenericMapping,
  int ObjectCreation,
  Pointer<Uint32> GrantedAccess,
  Pointer<Int32> AccessStatus,
  Pointer<Int32> pfGenerateOnClose,
)>('AccessCheckAndAuditAlarmW');

int AccessCheckByType(
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
  int PrincipalSelfSid,
  int ClientToken,
  int DesiredAccess,
  Pointer<OBJECT_TYPE_LIST> ObjectTypeList,
  int ObjectTypeListLength,
  Pointer<GENERIC_MAPPING> GenericMapping,
  Pointer<PRIVILEGE_SET> PrivilegeSet,
  Pointer<Uint32> PrivilegeSetLength,
  Pointer<Uint32> GrantedAccess,
  Pointer<Int32> AccessStatus,
) =>
    _AccessCheckByType(
      pSecurityDescriptor,
      PrincipalSelfSid,
      ClientToken,
      DesiredAccess,
      ObjectTypeList,
      ObjectTypeListLength,
      GenericMapping,
      PrivilegeSet,
      PrivilegeSetLength,
      GrantedAccess,
      AccessStatus,
    );

late final _AccessCheckByType = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
  IntPtr PrincipalSelfSid,
  IntPtr ClientToken,
  Uint32 DesiredAccess,
  Pointer<OBJECT_TYPE_LIST> ObjectTypeList,
  Uint32 ObjectTypeListLength,
  Pointer<GENERIC_MAPPING> GenericMapping,
  Pointer<PRIVILEGE_SET> PrivilegeSet,
  Pointer<Uint32> PrivilegeSetLength,
  Pointer<Uint32> GrantedAccess,
  Pointer<Int32> AccessStatus,
),
    int Function(
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
  int PrincipalSelfSid,
  int ClientToken,
  int DesiredAccess,
  Pointer<OBJECT_TYPE_LIST> ObjectTypeList,
  int ObjectTypeListLength,
  Pointer<GENERIC_MAPPING> GenericMapping,
  Pointer<PRIVILEGE_SET> PrivilegeSet,
  Pointer<Uint32> PrivilegeSetLength,
  Pointer<Uint32> GrantedAccess,
  Pointer<Int32> AccessStatus,
)>('AccessCheckByType');

int AccessCheckByTypeAndAuditAlarm(
  Pointer<Utf16> SubsystemName,
  Pointer HandleId,
  Pointer<Utf16> ObjectTypeName,
  Pointer<Utf16> ObjectName,
  Pointer<SECURITY_DESCRIPTOR> SecurityDescriptor,
  int PrincipalSelfSid,
  int DesiredAccess,
  int AuditType,
  int Flags,
  Pointer<OBJECT_TYPE_LIST> ObjectTypeList,
  int ObjectTypeListLength,
  Pointer<GENERIC_MAPPING> GenericMapping,
  int ObjectCreation,
  Pointer<Uint32> GrantedAccess,
  Pointer<Int32> AccessStatus,
  Pointer<Int32> pfGenerateOnClose,
) =>
    _AccessCheckByTypeAndAuditAlarm(
      SubsystemName,
      HandleId,
      ObjectTypeName,
      ObjectName,
      SecurityDescriptor,
      PrincipalSelfSid,
      DesiredAccess,
      AuditType,
      Flags,
      ObjectTypeList,
      ObjectTypeListLength,
      GenericMapping,
      ObjectCreation,
      GrantedAccess,
      AccessStatus,
      pfGenerateOnClose,
    );

late final _AccessCheckByTypeAndAuditAlarm = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> SubsystemName,
  Pointer HandleId,
  Pointer<Utf16> ObjectTypeName,
  Pointer<Utf16> ObjectName,
  Pointer<SECURITY_DESCRIPTOR> SecurityDescriptor,
  IntPtr PrincipalSelfSid,
  Uint32 DesiredAccess,
  Int32 AuditType,
  Uint32 Flags,
  Pointer<OBJECT_TYPE_LIST> ObjectTypeList,
  Uint32 ObjectTypeListLength,
  Pointer<GENERIC_MAPPING> GenericMapping,
  Int32 ObjectCreation,
  Pointer<Uint32> GrantedAccess,
  Pointer<Int32> AccessStatus,
  Pointer<Int32> pfGenerateOnClose,
),
    int Function(
  Pointer<Utf16> SubsystemName,
  Pointer HandleId,
  Pointer<Utf16> ObjectTypeName,
  Pointer<Utf16> ObjectName,
  Pointer<SECURITY_DESCRIPTOR> SecurityDescriptor,
  int PrincipalSelfSid,
  int DesiredAccess,
  int AuditType,
  int Flags,
  Pointer<OBJECT_TYPE_LIST> ObjectTypeList,
  int ObjectTypeListLength,
  Pointer<GENERIC_MAPPING> GenericMapping,
  int ObjectCreation,
  Pointer<Uint32> GrantedAccess,
  Pointer<Int32> AccessStatus,
  Pointer<Int32> pfGenerateOnClose,
)>('AccessCheckByTypeAndAuditAlarmW');

int AccessCheckByTypeResultList(
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
  int PrincipalSelfSid,
  int ClientToken,
  int DesiredAccess,
  Pointer<OBJECT_TYPE_LIST> ObjectTypeList,
  int ObjectTypeListLength,
  Pointer<GENERIC_MAPPING> GenericMapping,
  Pointer<PRIVILEGE_SET> PrivilegeSet,
  Pointer<Uint32> PrivilegeSetLength,
  Pointer<Uint32> GrantedAccessList,
  Pointer<Uint32> AccessStatusList,
) =>
    _AccessCheckByTypeResultList(
      pSecurityDescriptor,
      PrincipalSelfSid,
      ClientToken,
      DesiredAccess,
      ObjectTypeList,
      ObjectTypeListLength,
      GenericMapping,
      PrivilegeSet,
      PrivilegeSetLength,
      GrantedAccessList,
      AccessStatusList,
    );

late final _AccessCheckByTypeResultList = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
  IntPtr PrincipalSelfSid,
  IntPtr ClientToken,
  Uint32 DesiredAccess,
  Pointer<OBJECT_TYPE_LIST> ObjectTypeList,
  Uint32 ObjectTypeListLength,
  Pointer<GENERIC_MAPPING> GenericMapping,
  Pointer<PRIVILEGE_SET> PrivilegeSet,
  Pointer<Uint32> PrivilegeSetLength,
  Pointer<Uint32> GrantedAccessList,
  Pointer<Uint32> AccessStatusList,
),
    int Function(
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
  int PrincipalSelfSid,
  int ClientToken,
  int DesiredAccess,
  Pointer<OBJECT_TYPE_LIST> ObjectTypeList,
  int ObjectTypeListLength,
  Pointer<GENERIC_MAPPING> GenericMapping,
  Pointer<PRIVILEGE_SET> PrivilegeSet,
  Pointer<Uint32> PrivilegeSetLength,
  Pointer<Uint32> GrantedAccessList,
  Pointer<Uint32> AccessStatusList,
)>('AccessCheckByTypeResultList');

int AccessCheckByTypeResultListAndAuditAlarmByHandle(
  Pointer<Utf16> SubsystemName,
  Pointer HandleId,
  int ClientToken,
  Pointer<Utf16> ObjectTypeName,
  Pointer<Utf16> ObjectName,
  Pointer<SECURITY_DESCRIPTOR> SecurityDescriptor,
  int PrincipalSelfSid,
  int DesiredAccess,
  int AuditType,
  int Flags,
  Pointer<OBJECT_TYPE_LIST> ObjectTypeList,
  int ObjectTypeListLength,
  Pointer<GENERIC_MAPPING> GenericMapping,
  int ObjectCreation,
  Pointer<Uint32> GrantedAccessList,
  Pointer<Uint32> AccessStatusList,
  Pointer<Int32> pfGenerateOnClose,
) =>
    _AccessCheckByTypeResultListAndAuditAlarmByHandle(
      SubsystemName,
      HandleId,
      ClientToken,
      ObjectTypeName,
      ObjectName,
      SecurityDescriptor,
      PrincipalSelfSid,
      DesiredAccess,
      AuditType,
      Flags,
      ObjectTypeList,
      ObjectTypeListLength,
      GenericMapping,
      ObjectCreation,
      GrantedAccessList,
      AccessStatusList,
      pfGenerateOnClose,
    );

late final _AccessCheckByTypeResultListAndAuditAlarmByHandle =
    _advapi32.lookupFunction<
        Int32 Function(
  Pointer<Utf16> SubsystemName,
  Pointer HandleId,
  IntPtr ClientToken,
  Pointer<Utf16> ObjectTypeName,
  Pointer<Utf16> ObjectName,
  Pointer<SECURITY_DESCRIPTOR> SecurityDescriptor,
  IntPtr PrincipalSelfSid,
  Uint32 DesiredAccess,
  Int32 AuditType,
  Uint32 Flags,
  Pointer<OBJECT_TYPE_LIST> ObjectTypeList,
  Uint32 ObjectTypeListLength,
  Pointer<GENERIC_MAPPING> GenericMapping,
  Int32 ObjectCreation,
  Pointer<Uint32> GrantedAccessList,
  Pointer<Uint32> AccessStatusList,
  Pointer<Int32> pfGenerateOnClose,
),
        int Function(
  Pointer<Utf16> SubsystemName,
  Pointer HandleId,
  int ClientToken,
  Pointer<Utf16> ObjectTypeName,
  Pointer<Utf16> ObjectName,
  Pointer<SECURITY_DESCRIPTOR> SecurityDescriptor,
  int PrincipalSelfSid,
  int DesiredAccess,
  int AuditType,
  int Flags,
  Pointer<OBJECT_TYPE_LIST> ObjectTypeList,
  int ObjectTypeListLength,
  Pointer<GENERIC_MAPPING> GenericMapping,
  int ObjectCreation,
  Pointer<Uint32> GrantedAccessList,
  Pointer<Uint32> AccessStatusList,
  Pointer<Int32> pfGenerateOnClose,
)>('AccessCheckByTypeResultListAndAuditAlarmByHandleW');

int AccessCheckByTypeResultListAndAuditAlarm(
  Pointer<Utf16> SubsystemName,
  Pointer HandleId,
  Pointer<Utf16> ObjectTypeName,
  Pointer<Utf16> ObjectName,
  Pointer<SECURITY_DESCRIPTOR> SecurityDescriptor,
  int PrincipalSelfSid,
  int DesiredAccess,
  int AuditType,
  int Flags,
  Pointer<OBJECT_TYPE_LIST> ObjectTypeList,
  int ObjectTypeListLength,
  Pointer<GENERIC_MAPPING> GenericMapping,
  int ObjectCreation,
  Pointer<Uint32> GrantedAccessList,
  Pointer<Uint32> AccessStatusList,
  Pointer<Int32> pfGenerateOnClose,
) =>
    _AccessCheckByTypeResultListAndAuditAlarm(
      SubsystemName,
      HandleId,
      ObjectTypeName,
      ObjectName,
      SecurityDescriptor,
      PrincipalSelfSid,
      DesiredAccess,
      AuditType,
      Flags,
      ObjectTypeList,
      ObjectTypeListLength,
      GenericMapping,
      ObjectCreation,
      GrantedAccessList,
      AccessStatusList,
      pfGenerateOnClose,
    );

late final _AccessCheckByTypeResultListAndAuditAlarm = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> SubsystemName,
  Pointer HandleId,
  Pointer<Utf16> ObjectTypeName,
  Pointer<Utf16> ObjectName,
  Pointer<SECURITY_DESCRIPTOR> SecurityDescriptor,
  IntPtr PrincipalSelfSid,
  Uint32 DesiredAccess,
  Int32 AuditType,
  Uint32 Flags,
  Pointer<OBJECT_TYPE_LIST> ObjectTypeList,
  Uint32 ObjectTypeListLength,
  Pointer<GENERIC_MAPPING> GenericMapping,
  Int32 ObjectCreation,
  Pointer<Uint32> GrantedAccessList,
  Pointer<Uint32> AccessStatusList,
  Pointer<Int32> pfGenerateOnClose,
),
    int Function(
  Pointer<Utf16> SubsystemName,
  Pointer HandleId,
  Pointer<Utf16> ObjectTypeName,
  Pointer<Utf16> ObjectName,
  Pointer<SECURITY_DESCRIPTOR> SecurityDescriptor,
  int PrincipalSelfSid,
  int DesiredAccess,
  int AuditType,
  int Flags,
  Pointer<OBJECT_TYPE_LIST> ObjectTypeList,
  int ObjectTypeListLength,
  Pointer<GENERIC_MAPPING> GenericMapping,
  int ObjectCreation,
  Pointer<Uint32> GrantedAccessList,
  Pointer<Uint32> AccessStatusList,
  Pointer<Int32> pfGenerateOnClose,
)>('AccessCheckByTypeResultListAndAuditAlarmW');

int AddAccessAllowedAce(
  Pointer<ACL> pAcl,
  int dwAceRevision,
  int AccessMask,
  int pSid,
) =>
    _AddAccessAllowedAce(
      pAcl,
      dwAceRevision,
      AccessMask,
      pSid,
    );

late final _AddAccessAllowedAce = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<ACL> pAcl,
  Uint32 dwAceRevision,
  Uint32 AccessMask,
  IntPtr pSid,
),
    int Function(
  Pointer<ACL> pAcl,
  int dwAceRevision,
  int AccessMask,
  int pSid,
)>('AddAccessAllowedAce');

int AddAccessAllowedAceEx(
  Pointer<ACL> pAcl,
  int dwAceRevision,
  int AceFlags,
  int AccessMask,
  int pSid,
) =>
    _AddAccessAllowedAceEx(
      pAcl,
      dwAceRevision,
      AceFlags,
      AccessMask,
      pSid,
    );

late final _AddAccessAllowedAceEx = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<ACL> pAcl,
  Uint32 dwAceRevision,
  Uint32 AceFlags,
  Uint32 AccessMask,
  IntPtr pSid,
),
    int Function(
  Pointer<ACL> pAcl,
  int dwAceRevision,
  int AceFlags,
  int AccessMask,
  int pSid,
)>('AddAccessAllowedAceEx');

int AddAccessAllowedObjectAce(
  Pointer<ACL> pAcl,
  int dwAceRevision,
  int AceFlags,
  int AccessMask,
  Pointer<GUID> ObjectTypeGuid,
  Pointer<GUID> InheritedObjectTypeGuid,
  int pSid,
) =>
    _AddAccessAllowedObjectAce(
      pAcl,
      dwAceRevision,
      AceFlags,
      AccessMask,
      ObjectTypeGuid,
      InheritedObjectTypeGuid,
      pSid,
    );

late final _AddAccessAllowedObjectAce = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<ACL> pAcl,
  Uint32 dwAceRevision,
  Uint32 AceFlags,
  Uint32 AccessMask,
  Pointer<GUID> ObjectTypeGuid,
  Pointer<GUID> InheritedObjectTypeGuid,
  IntPtr pSid,
),
    int Function(
  Pointer<ACL> pAcl,
  int dwAceRevision,
  int AceFlags,
  int AccessMask,
  Pointer<GUID> ObjectTypeGuid,
  Pointer<GUID> InheritedObjectTypeGuid,
  int pSid,
)>('AddAccessAllowedObjectAce');

int AddAccessDeniedAce(
  Pointer<ACL> pAcl,
  int dwAceRevision,
  int AccessMask,
  int pSid,
) =>
    _AddAccessDeniedAce(
      pAcl,
      dwAceRevision,
      AccessMask,
      pSid,
    );

late final _AddAccessDeniedAce = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<ACL> pAcl,
  Uint32 dwAceRevision,
  Uint32 AccessMask,
  IntPtr pSid,
),
    int Function(
  Pointer<ACL> pAcl,
  int dwAceRevision,
  int AccessMask,
  int pSid,
)>('AddAccessDeniedAce');

int AddAccessDeniedAceEx(
  Pointer<ACL> pAcl,
  int dwAceRevision,
  int AceFlags,
  int AccessMask,
  int pSid,
) =>
    _AddAccessDeniedAceEx(
      pAcl,
      dwAceRevision,
      AceFlags,
      AccessMask,
      pSid,
    );

late final _AddAccessDeniedAceEx = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<ACL> pAcl,
  Uint32 dwAceRevision,
  Uint32 AceFlags,
  Uint32 AccessMask,
  IntPtr pSid,
),
    int Function(
  Pointer<ACL> pAcl,
  int dwAceRevision,
  int AceFlags,
  int AccessMask,
  int pSid,
)>('AddAccessDeniedAceEx');

int AddAccessDeniedObjectAce(
  Pointer<ACL> pAcl,
  int dwAceRevision,
  int AceFlags,
  int AccessMask,
  Pointer<GUID> ObjectTypeGuid,
  Pointer<GUID> InheritedObjectTypeGuid,
  int pSid,
) =>
    _AddAccessDeniedObjectAce(
      pAcl,
      dwAceRevision,
      AceFlags,
      AccessMask,
      ObjectTypeGuid,
      InheritedObjectTypeGuid,
      pSid,
    );

late final _AddAccessDeniedObjectAce = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<ACL> pAcl,
  Uint32 dwAceRevision,
  Uint32 AceFlags,
  Uint32 AccessMask,
  Pointer<GUID> ObjectTypeGuid,
  Pointer<GUID> InheritedObjectTypeGuid,
  IntPtr pSid,
),
    int Function(
  Pointer<ACL> pAcl,
  int dwAceRevision,
  int AceFlags,
  int AccessMask,
  Pointer<GUID> ObjectTypeGuid,
  Pointer<GUID> InheritedObjectTypeGuid,
  int pSid,
)>('AddAccessDeniedObjectAce');

int AddAce(
  Pointer<ACL> pAcl,
  int dwAceRevision,
  int dwStartingAceIndex,
  Pointer pAceList,
  int nAceListLength,
) =>
    _AddAce(
      pAcl,
      dwAceRevision,
      dwStartingAceIndex,
      pAceList,
      nAceListLength,
    );

late final _AddAce = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<ACL> pAcl,
  Uint32 dwAceRevision,
  Uint32 dwStartingAceIndex,
  Pointer pAceList,
  Uint32 nAceListLength,
),
    int Function(
  Pointer<ACL> pAcl,
  int dwAceRevision,
  int dwStartingAceIndex,
  Pointer pAceList,
  int nAceListLength,
)>('AddAce');

int AddAuditAccessAce(
  Pointer<ACL> pAcl,
  int dwAceRevision,
  int dwAccessMask,
  int pSid,
  int bAuditSuccess,
  int bAuditFailure,
) =>
    _AddAuditAccessAce(
      pAcl,
      dwAceRevision,
      dwAccessMask,
      pSid,
      bAuditSuccess,
      bAuditFailure,
    );

late final _AddAuditAccessAce = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<ACL> pAcl,
  Uint32 dwAceRevision,
  Uint32 dwAccessMask,
  IntPtr pSid,
  Int32 bAuditSuccess,
  Int32 bAuditFailure,
),
    int Function(
  Pointer<ACL> pAcl,
  int dwAceRevision,
  int dwAccessMask,
  int pSid,
  int bAuditSuccess,
  int bAuditFailure,
)>('AddAuditAccessAce');

int AddAuditAccessAceEx(
  Pointer<ACL> pAcl,
  int dwAceRevision,
  int AceFlags,
  int dwAccessMask,
  int pSid,
  int bAuditSuccess,
  int bAuditFailure,
) =>
    _AddAuditAccessAceEx(
      pAcl,
      dwAceRevision,
      AceFlags,
      dwAccessMask,
      pSid,
      bAuditSuccess,
      bAuditFailure,
    );

late final _AddAuditAccessAceEx = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<ACL> pAcl,
  Uint32 dwAceRevision,
  Uint32 AceFlags,
  Uint32 dwAccessMask,
  IntPtr pSid,
  Int32 bAuditSuccess,
  Int32 bAuditFailure,
),
    int Function(
  Pointer<ACL> pAcl,
  int dwAceRevision,
  int AceFlags,
  int dwAccessMask,
  int pSid,
  int bAuditSuccess,
  int bAuditFailure,
)>('AddAuditAccessAceEx');

int AddAuditAccessObjectAce(
  Pointer<ACL> pAcl,
  int dwAceRevision,
  int AceFlags,
  int AccessMask,
  Pointer<GUID> ObjectTypeGuid,
  Pointer<GUID> InheritedObjectTypeGuid,
  int pSid,
  int bAuditSuccess,
  int bAuditFailure,
) =>
    _AddAuditAccessObjectAce(
      pAcl,
      dwAceRevision,
      AceFlags,
      AccessMask,
      ObjectTypeGuid,
      InheritedObjectTypeGuid,
      pSid,
      bAuditSuccess,
      bAuditFailure,
    );

late final _AddAuditAccessObjectAce = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<ACL> pAcl,
  Uint32 dwAceRevision,
  Uint32 AceFlags,
  Uint32 AccessMask,
  Pointer<GUID> ObjectTypeGuid,
  Pointer<GUID> InheritedObjectTypeGuid,
  IntPtr pSid,
  Int32 bAuditSuccess,
  Int32 bAuditFailure,
),
    int Function(
  Pointer<ACL> pAcl,
  int dwAceRevision,
  int AceFlags,
  int AccessMask,
  Pointer<GUID> ObjectTypeGuid,
  Pointer<GUID> InheritedObjectTypeGuid,
  int pSid,
  int bAuditSuccess,
  int bAuditFailure,
)>('AddAuditAccessObjectAce');

int AddConditionalAce(
  Pointer<ACL> pAcl,
  int dwAceRevision,
  int AceFlags,
  int AceType,
  int AccessMask,
  int pSid,
  Pointer<Utf16> ConditionStr,
  Pointer<Uint32> ReturnLength,
) =>
    _AddConditionalAce(
      pAcl,
      dwAceRevision,
      AceFlags,
      AceType,
      AccessMask,
      pSid,
      ConditionStr,
      ReturnLength,
    );

late final _AddConditionalAce = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<ACL> pAcl,
  Uint32 dwAceRevision,
  Uint32 AceFlags,
  Uint8 AceType,
  Uint32 AccessMask,
  IntPtr pSid,
  Pointer<Utf16> ConditionStr,
  Pointer<Uint32> ReturnLength,
),
    int Function(
  Pointer<ACL> pAcl,
  int dwAceRevision,
  int AceFlags,
  int AceType,
  int AccessMask,
  int pSid,
  Pointer<Utf16> ConditionStr,
  Pointer<Uint32> ReturnLength,
)>('AddConditionalAce');

int AddMandatoryAce(
  Pointer<ACL> pAcl,
  int dwAceRevision,
  int AceFlags,
  int MandatoryPolicy,
  int pLabelSid,
) =>
    _AddMandatoryAce(
      pAcl,
      dwAceRevision,
      AceFlags,
      MandatoryPolicy,
      pLabelSid,
    );

late final _AddMandatoryAce = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<ACL> pAcl,
  Uint32 dwAceRevision,
  Uint32 AceFlags,
  Uint32 MandatoryPolicy,
  IntPtr pLabelSid,
),
    int Function(
  Pointer<ACL> pAcl,
  int dwAceRevision,
  int AceFlags,
  int MandatoryPolicy,
  int pLabelSid,
)>('AddMandatoryAce');

int AdjustTokenGroups(
  int TokenHandle,
  int ResetToDefault,
  Pointer<TOKEN_GROUPS> NewState,
  int BufferLength,
  Pointer<TOKEN_GROUPS> PreviousState,
  Pointer<Uint32> ReturnLength,
) =>
    _AdjustTokenGroups(
      TokenHandle,
      ResetToDefault,
      NewState,
      BufferLength,
      PreviousState,
      ReturnLength,
    );

late final _AdjustTokenGroups = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr TokenHandle,
  Int32 ResetToDefault,
  Pointer<TOKEN_GROUPS> NewState,
  Uint32 BufferLength,
  Pointer<TOKEN_GROUPS> PreviousState,
  Pointer<Uint32> ReturnLength,
),
    int Function(
  int TokenHandle,
  int ResetToDefault,
  Pointer<TOKEN_GROUPS> NewState,
  int BufferLength,
  Pointer<TOKEN_GROUPS> PreviousState,
  Pointer<Uint32> ReturnLength,
)>('AdjustTokenGroups');

int AdjustTokenPrivileges(
  int TokenHandle,
  int DisableAllPrivileges,
  Pointer<TOKEN_PRIVILEGES> NewState,
  int BufferLength,
  Pointer<TOKEN_PRIVILEGES> PreviousState,
  Pointer<Uint32> ReturnLength,
) =>
    _AdjustTokenPrivileges(
      TokenHandle,
      DisableAllPrivileges,
      NewState,
      BufferLength,
      PreviousState,
      ReturnLength,
    );

late final _AdjustTokenPrivileges = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr TokenHandle,
  Int32 DisableAllPrivileges,
  Pointer<TOKEN_PRIVILEGES> NewState,
  Uint32 BufferLength,
  Pointer<TOKEN_PRIVILEGES> PreviousState,
  Pointer<Uint32> ReturnLength,
),
    int Function(
  int TokenHandle,
  int DisableAllPrivileges,
  Pointer<TOKEN_PRIVILEGES> NewState,
  int BufferLength,
  Pointer<TOKEN_PRIVILEGES> PreviousState,
  Pointer<Uint32> ReturnLength,
)>('AdjustTokenPrivileges');

int AllocateAndInitializeSid(
  Pointer<SID_IDENTIFIER_AUTHORITY> pIdentifierAuthority,
  int nSubAuthorityCount,
  int nSubAuthority0,
  int nSubAuthority1,
  int nSubAuthority2,
  int nSubAuthority3,
  int nSubAuthority4,
  int nSubAuthority5,
  int nSubAuthority6,
  int nSubAuthority7,
  Pointer<IntPtr> pSid,
) =>
    _AllocateAndInitializeSid(
      pIdentifierAuthority,
      nSubAuthorityCount,
      nSubAuthority0,
      nSubAuthority1,
      nSubAuthority2,
      nSubAuthority3,
      nSubAuthority4,
      nSubAuthority5,
      nSubAuthority6,
      nSubAuthority7,
      pSid,
    );

late final _AllocateAndInitializeSid = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<SID_IDENTIFIER_AUTHORITY> pIdentifierAuthority,
  Uint8 nSubAuthorityCount,
  Uint32 nSubAuthority0,
  Uint32 nSubAuthority1,
  Uint32 nSubAuthority2,
  Uint32 nSubAuthority3,
  Uint32 nSubAuthority4,
  Uint32 nSubAuthority5,
  Uint32 nSubAuthority6,
  Uint32 nSubAuthority7,
  Pointer<IntPtr> pSid,
),
    int Function(
  Pointer<SID_IDENTIFIER_AUTHORITY> pIdentifierAuthority,
  int nSubAuthorityCount,
  int nSubAuthority0,
  int nSubAuthority1,
  int nSubAuthority2,
  int nSubAuthority3,
  int nSubAuthority4,
  int nSubAuthority5,
  int nSubAuthority6,
  int nSubAuthority7,
  Pointer<IntPtr> pSid,
)>('AllocateAndInitializeSid');

int AllocateLocallyUniqueId(
  Pointer<LUID> Luid,
) =>
    _AllocateLocallyUniqueId(
      Luid,
    );

late final _AllocateLocallyUniqueId = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<LUID> Luid,
),
    int Function(
  Pointer<LUID> Luid,
)>('AllocateLocallyUniqueId');

int AreAllAccessesGranted(
  int GrantedAccess,
  int DesiredAccess,
) =>
    _AreAllAccessesGranted(
      GrantedAccess,
      DesiredAccess,
    );

late final _AreAllAccessesGranted = _advapi32.lookupFunction<
    Int32 Function(
  Uint32 GrantedAccess,
  Uint32 DesiredAccess,
),
    int Function(
  int GrantedAccess,
  int DesiredAccess,
)>('AreAllAccessesGranted');

int AreAnyAccessesGranted(
  int GrantedAccess,
  int DesiredAccess,
) =>
    _AreAnyAccessesGranted(
      GrantedAccess,
      DesiredAccess,
    );

late final _AreAnyAccessesGranted = _advapi32.lookupFunction<
    Int32 Function(
  Uint32 GrantedAccess,
  Uint32 DesiredAccess,
),
    int Function(
  int GrantedAccess,
  int DesiredAccess,
)>('AreAnyAccessesGranted');

int CheckTokenMembership(
  int TokenHandle,
  int SidToCheck,
  Pointer<Int32> IsMember,
) =>
    _CheckTokenMembership(
      TokenHandle,
      SidToCheck,
      IsMember,
    );

late final _CheckTokenMembership = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr TokenHandle,
  IntPtr SidToCheck,
  Pointer<Int32> IsMember,
),
    int Function(
  int TokenHandle,
  int SidToCheck,
  Pointer<Int32> IsMember,
)>('CheckTokenMembership');

int ConvertToAutoInheritPrivateObjectSecurity(
  Pointer<SECURITY_DESCRIPTOR> ParentDescriptor,
  Pointer<SECURITY_DESCRIPTOR> CurrentSecurityDescriptor,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> NewSecurityDescriptor,
  Pointer<GUID> ObjectType,
  int IsDirectoryObject,
  Pointer<GENERIC_MAPPING> GenericMapping,
) =>
    _ConvertToAutoInheritPrivateObjectSecurity(
      ParentDescriptor,
      CurrentSecurityDescriptor,
      NewSecurityDescriptor,
      ObjectType,
      IsDirectoryObject,
      GenericMapping,
    );

late final _ConvertToAutoInheritPrivateObjectSecurity =
    _advapi32.lookupFunction<
        Int32 Function(
  Pointer<SECURITY_DESCRIPTOR> ParentDescriptor,
  Pointer<SECURITY_DESCRIPTOR> CurrentSecurityDescriptor,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> NewSecurityDescriptor,
  Pointer<GUID> ObjectType,
  Uint8 IsDirectoryObject,
  Pointer<GENERIC_MAPPING> GenericMapping,
),
        int Function(
  Pointer<SECURITY_DESCRIPTOR> ParentDescriptor,
  Pointer<SECURITY_DESCRIPTOR> CurrentSecurityDescriptor,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> NewSecurityDescriptor,
  Pointer<GUID> ObjectType,
  int IsDirectoryObject,
  Pointer<GENERIC_MAPPING> GenericMapping,
)>('ConvertToAutoInheritPrivateObjectSecurity');

int CopySid(
  int nDestinationSidLength,
  int pDestinationSid,
  int pSourceSid,
) =>
    _CopySid(
      nDestinationSidLength,
      pDestinationSid,
      pSourceSid,
    );

late final _CopySid = _advapi32.lookupFunction<
    Int32 Function(
  Uint32 nDestinationSidLength,
  IntPtr pDestinationSid,
  IntPtr pSourceSid,
),
    int Function(
  int nDestinationSidLength,
  int pDestinationSid,
  int pSourceSid,
)>('CopySid');

int CreatePrivateObjectSecurity(
  Pointer<SECURITY_DESCRIPTOR> ParentDescriptor,
  Pointer<SECURITY_DESCRIPTOR> CreatorDescriptor,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> NewDescriptor,
  int IsDirectoryObject,
  int Token,
  Pointer<GENERIC_MAPPING> GenericMapping,
) =>
    _CreatePrivateObjectSecurity(
      ParentDescriptor,
      CreatorDescriptor,
      NewDescriptor,
      IsDirectoryObject,
      Token,
      GenericMapping,
    );

late final _CreatePrivateObjectSecurity = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<SECURITY_DESCRIPTOR> ParentDescriptor,
  Pointer<SECURITY_DESCRIPTOR> CreatorDescriptor,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> NewDescriptor,
  Int32 IsDirectoryObject,
  IntPtr Token,
  Pointer<GENERIC_MAPPING> GenericMapping,
),
    int Function(
  Pointer<SECURITY_DESCRIPTOR> ParentDescriptor,
  Pointer<SECURITY_DESCRIPTOR> CreatorDescriptor,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> NewDescriptor,
  int IsDirectoryObject,
  int Token,
  Pointer<GENERIC_MAPPING> GenericMapping,
)>('CreatePrivateObjectSecurity');

int CreatePrivateObjectSecurityEx(
  Pointer<SECURITY_DESCRIPTOR> ParentDescriptor,
  Pointer<SECURITY_DESCRIPTOR> CreatorDescriptor,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> NewDescriptor,
  Pointer<GUID> ObjectType,
  int IsContainerObject,
  int AutoInheritFlags,
  int Token,
  Pointer<GENERIC_MAPPING> GenericMapping,
) =>
    _CreatePrivateObjectSecurityEx(
      ParentDescriptor,
      CreatorDescriptor,
      NewDescriptor,
      ObjectType,
      IsContainerObject,
      AutoInheritFlags,
      Token,
      GenericMapping,
    );

late final _CreatePrivateObjectSecurityEx = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<SECURITY_DESCRIPTOR> ParentDescriptor,
  Pointer<SECURITY_DESCRIPTOR> CreatorDescriptor,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> NewDescriptor,
  Pointer<GUID> ObjectType,
  Int32 IsContainerObject,
  Uint32 AutoInheritFlags,
  IntPtr Token,
  Pointer<GENERIC_MAPPING> GenericMapping,
),
    int Function(
  Pointer<SECURITY_DESCRIPTOR> ParentDescriptor,
  Pointer<SECURITY_DESCRIPTOR> CreatorDescriptor,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> NewDescriptor,
  Pointer<GUID> ObjectType,
  int IsContainerObject,
  int AutoInheritFlags,
  int Token,
  Pointer<GENERIC_MAPPING> GenericMapping,
)>('CreatePrivateObjectSecurityEx');

int CreatePrivateObjectSecurityWithMultipleInheritance(
  Pointer<SECURITY_DESCRIPTOR> ParentDescriptor,
  Pointer<SECURITY_DESCRIPTOR> CreatorDescriptor,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> NewDescriptor,
  Pointer<Pointer<GUID>> ObjectTypes,
  int GuidCount,
  int IsContainerObject,
  int AutoInheritFlags,
  int Token,
  Pointer<GENERIC_MAPPING> GenericMapping,
) =>
    _CreatePrivateObjectSecurityWithMultipleInheritance(
      ParentDescriptor,
      CreatorDescriptor,
      NewDescriptor,
      ObjectTypes,
      GuidCount,
      IsContainerObject,
      AutoInheritFlags,
      Token,
      GenericMapping,
    );

late final _CreatePrivateObjectSecurityWithMultipleInheritance =
    _advapi32.lookupFunction<
        Int32 Function(
  Pointer<SECURITY_DESCRIPTOR> ParentDescriptor,
  Pointer<SECURITY_DESCRIPTOR> CreatorDescriptor,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> NewDescriptor,
  Pointer<Pointer<GUID>> ObjectTypes,
  Uint32 GuidCount,
  Int32 IsContainerObject,
  Uint32 AutoInheritFlags,
  IntPtr Token,
  Pointer<GENERIC_MAPPING> GenericMapping,
),
        int Function(
  Pointer<SECURITY_DESCRIPTOR> ParentDescriptor,
  Pointer<SECURITY_DESCRIPTOR> CreatorDescriptor,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> NewDescriptor,
  Pointer<Pointer<GUID>> ObjectTypes,
  int GuidCount,
  int IsContainerObject,
  int AutoInheritFlags,
  int Token,
  Pointer<GENERIC_MAPPING> GenericMapping,
)>('CreatePrivateObjectSecurityWithMultipleInheritance');

int CreateRestrictedToken(
  int ExistingTokenHandle,
  int Flags,
  int DisableSidCount,
  Pointer<SID_AND_ATTRIBUTES> SidsToDisable,
  int DeletePrivilegeCount,
  Pointer<LUID_AND_ATTRIBUTES> PrivilegesToDelete,
  int RestrictedSidCount,
  Pointer<SID_AND_ATTRIBUTES> SidsToRestrict,
  Pointer<IntPtr> NewTokenHandle,
) =>
    _CreateRestrictedToken(
      ExistingTokenHandle,
      Flags,
      DisableSidCount,
      SidsToDisable,
      DeletePrivilegeCount,
      PrivilegesToDelete,
      RestrictedSidCount,
      SidsToRestrict,
      NewTokenHandle,
    );

late final _CreateRestrictedToken = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr ExistingTokenHandle,
  Uint32 Flags,
  Uint32 DisableSidCount,
  Pointer<SID_AND_ATTRIBUTES> SidsToDisable,
  Uint32 DeletePrivilegeCount,
  Pointer<LUID_AND_ATTRIBUTES> PrivilegesToDelete,
  Uint32 RestrictedSidCount,
  Pointer<SID_AND_ATTRIBUTES> SidsToRestrict,
  Pointer<IntPtr> NewTokenHandle,
),
    int Function(
  int ExistingTokenHandle,
  int Flags,
  int DisableSidCount,
  Pointer<SID_AND_ATTRIBUTES> SidsToDisable,
  int DeletePrivilegeCount,
  Pointer<LUID_AND_ATTRIBUTES> PrivilegesToDelete,
  int RestrictedSidCount,
  Pointer<SID_AND_ATTRIBUTES> SidsToRestrict,
  Pointer<IntPtr> NewTokenHandle,
)>('CreateRestrictedToken');

int CreateWellKnownSid(
  int WellKnownSidType,
  int DomainSid,
  int pSid,
  Pointer<Uint32> cbSid,
) =>
    _CreateWellKnownSid(
      WellKnownSidType,
      DomainSid,
      pSid,
      cbSid,
    );

late final _CreateWellKnownSid = _advapi32.lookupFunction<
    Int32 Function(
  Int32 WellKnownSidType,
  IntPtr DomainSid,
  IntPtr pSid,
  Pointer<Uint32> cbSid,
),
    int Function(
  int WellKnownSidType,
  int DomainSid,
  int pSid,
  Pointer<Uint32> cbSid,
)>('CreateWellKnownSid');

int DeleteAce(
  Pointer<ACL> pAcl,
  int dwAceIndex,
) =>
    _DeleteAce(
      pAcl,
      dwAceIndex,
    );

late final _DeleteAce = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<ACL> pAcl,
  Uint32 dwAceIndex,
),
    int Function(
  Pointer<ACL> pAcl,
  int dwAceIndex,
)>('DeleteAce');

int DestroyPrivateObjectSecurity(
  Pointer<Pointer<SECURITY_DESCRIPTOR>> ObjectDescriptor,
) =>
    _DestroyPrivateObjectSecurity(
      ObjectDescriptor,
    );

late final _DestroyPrivateObjectSecurity = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<Pointer<SECURITY_DESCRIPTOR>> ObjectDescriptor,
),
    int Function(
  Pointer<Pointer<SECURITY_DESCRIPTOR>> ObjectDescriptor,
)>('DestroyPrivateObjectSecurity');

int DuplicateToken(
  int ExistingTokenHandle,
  int ImpersonationLevel,
  Pointer<IntPtr> DuplicateTokenHandle,
) =>
    _DuplicateToken(
      ExistingTokenHandle,
      ImpersonationLevel,
      DuplicateTokenHandle,
    );

late final _DuplicateToken = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr ExistingTokenHandle,
  Int32 ImpersonationLevel,
  Pointer<IntPtr> DuplicateTokenHandle,
),
    int Function(
  int ExistingTokenHandle,
  int ImpersonationLevel,
  Pointer<IntPtr> DuplicateTokenHandle,
)>('DuplicateToken');

int DuplicateTokenEx(
  int hExistingToken,
  int dwDesiredAccess,
  Pointer<SECURITY_ATTRIBUTES> lpTokenAttributes,
  int ImpersonationLevel,
  int TokenType,
  Pointer<IntPtr> phNewToken,
) =>
    _DuplicateTokenEx(
      hExistingToken,
      dwDesiredAccess,
      lpTokenAttributes,
      ImpersonationLevel,
      TokenType,
      phNewToken,
    );

late final _DuplicateTokenEx = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr hExistingToken,
  Uint32 dwDesiredAccess,
  Pointer<SECURITY_ATTRIBUTES> lpTokenAttributes,
  Int32 ImpersonationLevel,
  Int32 TokenType,
  Pointer<IntPtr> phNewToken,
),
    int Function(
  int hExistingToken,
  int dwDesiredAccess,
  Pointer<SECURITY_ATTRIBUTES> lpTokenAttributes,
  int ImpersonationLevel,
  int TokenType,
  Pointer<IntPtr> phNewToken,
)>('DuplicateTokenEx');

int EqualDomainSid(
  int pSid1,
  int pSid2,
  Pointer<Int32> pfEqual,
) =>
    _EqualDomainSid(
      pSid1,
      pSid2,
      pfEqual,
    );

late final _EqualDomainSid = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr pSid1,
  IntPtr pSid2,
  Pointer<Int32> pfEqual,
),
    int Function(
  int pSid1,
  int pSid2,
  Pointer<Int32> pfEqual,
)>('EqualDomainSid');

int EqualPrefixSid(
  int pSid1,
  int pSid2,
) =>
    _EqualPrefixSid(
      pSid1,
      pSid2,
    );

late final _EqualPrefixSid = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr pSid1,
  IntPtr pSid2,
),
    int Function(
  int pSid1,
  int pSid2,
)>('EqualPrefixSid');

int EqualSid(
  int pSid1,
  int pSid2,
) =>
    _EqualSid(
      pSid1,
      pSid2,
    );

late final _EqualSid = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr pSid1,
  IntPtr pSid2,
),
    int Function(
  int pSid1,
  int pSid2,
)>('EqualSid');

int FindFirstFreeAce(
  Pointer<ACL> pAcl,
  Pointer<Pointer> pAce,
) =>
    _FindFirstFreeAce(
      pAcl,
      pAce,
    );

late final _FindFirstFreeAce = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<ACL> pAcl,
  Pointer<Pointer> pAce,
),
    int Function(
  Pointer<ACL> pAcl,
  Pointer<Pointer> pAce,
)>('FindFirstFreeAce');

Pointer FreeSid(
  int pSid,
) =>
    _FreeSid(
      pSid,
    );

late final _FreeSid = _advapi32.lookupFunction<
    Pointer Function(
  IntPtr pSid,
),
    Pointer Function(
  int pSid,
)>('FreeSid');

int GetAce(
  Pointer<ACL> pAcl,
  int dwAceIndex,
  Pointer<Pointer> pAce,
) =>
    _GetAce(
      pAcl,
      dwAceIndex,
      pAce,
    );

late final _GetAce = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<ACL> pAcl,
  Uint32 dwAceIndex,
  Pointer<Pointer> pAce,
),
    int Function(
  Pointer<ACL> pAcl,
  int dwAceIndex,
  Pointer<Pointer> pAce,
)>('GetAce');

int GetAclInformation(
  Pointer<ACL> pAcl,
  Pointer pAclInformation,
  int nAclInformationLength,
  int dwAclInformationClass,
) =>
    _GetAclInformation(
      pAcl,
      pAclInformation,
      nAclInformationLength,
      dwAclInformationClass,
    );

late final _GetAclInformation = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<ACL> pAcl,
  Pointer pAclInformation,
  Uint32 nAclInformationLength,
  Int32 dwAclInformationClass,
),
    int Function(
  Pointer<ACL> pAcl,
  Pointer pAclInformation,
  int nAclInformationLength,
  int dwAclInformationClass,
)>('GetAclInformation');

int GetFileSecurity(
  Pointer<Utf16> lpFileName,
  int RequestedInformation,
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
  int nLength,
  Pointer<Uint32> lpnLengthNeeded,
) =>
    _GetFileSecurity(
      lpFileName,
      RequestedInformation,
      pSecurityDescriptor,
      nLength,
      lpnLengthNeeded,
    );

late final _GetFileSecurity = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpFileName,
  Uint32 RequestedInformation,
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
  Uint32 nLength,
  Pointer<Uint32> lpnLengthNeeded,
),
    int Function(
  Pointer<Utf16> lpFileName,
  int RequestedInformation,
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
  int nLength,
  Pointer<Uint32> lpnLengthNeeded,
)>('GetFileSecurityW');

int GetKernelObjectSecurity(
  int $Handle,
  int RequestedInformation,
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
  int nLength,
  Pointer<Uint32> lpnLengthNeeded,
) =>
    _GetKernelObjectSecurity(
      $Handle,
      RequestedInformation,
      pSecurityDescriptor,
      nLength,
      lpnLengthNeeded,
    );

late final _GetKernelObjectSecurity = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr $Handle,
  Uint32 RequestedInformation,
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
  Uint32 nLength,
  Pointer<Uint32> lpnLengthNeeded,
),
    int Function(
  int $Handle,
  int RequestedInformation,
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
  int nLength,
  Pointer<Uint32> lpnLengthNeeded,
)>('GetKernelObjectSecurity');

int GetLengthSid(
  int pSid,
) =>
    _GetLengthSid(
      pSid,
    );

late final _GetLengthSid = _advapi32.lookupFunction<
    Uint32 Function(
  IntPtr pSid,
),
    int Function(
  int pSid,
)>('GetLengthSid');

int GetPrivateObjectSecurity(
  Pointer<SECURITY_DESCRIPTOR> ObjectDescriptor,
  int SecurityInformation,
  Pointer<SECURITY_DESCRIPTOR> ResultantDescriptor,
  int DescriptorLength,
  Pointer<Uint32> ReturnLength,
) =>
    _GetPrivateObjectSecurity(
      ObjectDescriptor,
      SecurityInformation,
      ResultantDescriptor,
      DescriptorLength,
      ReturnLength,
    );

late final _GetPrivateObjectSecurity = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<SECURITY_DESCRIPTOR> ObjectDescriptor,
  Uint32 SecurityInformation,
  Pointer<SECURITY_DESCRIPTOR> ResultantDescriptor,
  Uint32 DescriptorLength,
  Pointer<Uint32> ReturnLength,
),
    int Function(
  Pointer<SECURITY_DESCRIPTOR> ObjectDescriptor,
  int SecurityInformation,
  Pointer<SECURITY_DESCRIPTOR> ResultantDescriptor,
  int DescriptorLength,
  Pointer<Uint32> ReturnLength,
)>('GetPrivateObjectSecurity');

int GetSecurityDescriptorControl(
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
  Pointer<Uint16> pControl,
  Pointer<Uint32> lpdwRevision,
) =>
    _GetSecurityDescriptorControl(
      pSecurityDescriptor,
      pControl,
      lpdwRevision,
    );

late final _GetSecurityDescriptorControl = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
  Pointer<Uint16> pControl,
  Pointer<Uint32> lpdwRevision,
),
    int Function(
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
  Pointer<Uint16> pControl,
  Pointer<Uint32> lpdwRevision,
)>('GetSecurityDescriptorControl');

int GetSecurityDescriptorDacl(
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
  Pointer<Int32> lpbDaclPresent,
  Pointer<Pointer<ACL>> pDacl,
  Pointer<Int32> lpbDaclDefaulted,
) =>
    _GetSecurityDescriptorDacl(
      pSecurityDescriptor,
      lpbDaclPresent,
      pDacl,
      lpbDaclDefaulted,
    );

late final _GetSecurityDescriptorDacl = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
  Pointer<Int32> lpbDaclPresent,
  Pointer<Pointer<ACL>> pDacl,
  Pointer<Int32> lpbDaclDefaulted,
),
    int Function(
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
  Pointer<Int32> lpbDaclPresent,
  Pointer<Pointer<ACL>> pDacl,
  Pointer<Int32> lpbDaclDefaulted,
)>('GetSecurityDescriptorDacl');

int GetSecurityDescriptorGroup(
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
  Pointer<IntPtr> pGroup,
  Pointer<Int32> lpbGroupDefaulted,
) =>
    _GetSecurityDescriptorGroup(
      pSecurityDescriptor,
      pGroup,
      lpbGroupDefaulted,
    );

late final _GetSecurityDescriptorGroup = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
  Pointer<IntPtr> pGroup,
  Pointer<Int32> lpbGroupDefaulted,
),
    int Function(
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
  Pointer<IntPtr> pGroup,
  Pointer<Int32> lpbGroupDefaulted,
)>('GetSecurityDescriptorGroup');

int GetSecurityDescriptorLength(
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
) =>
    _GetSecurityDescriptorLength(
      pSecurityDescriptor,
    );

late final _GetSecurityDescriptorLength = _advapi32.lookupFunction<
    Uint32 Function(
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
),
    int Function(
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
)>('GetSecurityDescriptorLength');

int GetSecurityDescriptorOwner(
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
  Pointer<IntPtr> pOwner,
  Pointer<Int32> lpbOwnerDefaulted,
) =>
    _GetSecurityDescriptorOwner(
      pSecurityDescriptor,
      pOwner,
      lpbOwnerDefaulted,
    );

late final _GetSecurityDescriptorOwner = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
  Pointer<IntPtr> pOwner,
  Pointer<Int32> lpbOwnerDefaulted,
),
    int Function(
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
  Pointer<IntPtr> pOwner,
  Pointer<Int32> lpbOwnerDefaulted,
)>('GetSecurityDescriptorOwner');

int GetSecurityDescriptorRMControl(
  Pointer<SECURITY_DESCRIPTOR> SecurityDescriptor,
  Pointer<Uint8> RMControl,
) =>
    _GetSecurityDescriptorRMControl(
      SecurityDescriptor,
      RMControl,
    );

late final _GetSecurityDescriptorRMControl = _advapi32.lookupFunction<
    Uint32 Function(
  Pointer<SECURITY_DESCRIPTOR> SecurityDescriptor,
  Pointer<Uint8> RMControl,
),
    int Function(
  Pointer<SECURITY_DESCRIPTOR> SecurityDescriptor,
  Pointer<Uint8> RMControl,
)>('GetSecurityDescriptorRMControl');

int GetSecurityDescriptorSacl(
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
  Pointer<Int32> lpbSaclPresent,
  Pointer<Pointer<ACL>> pSacl,
  Pointer<Int32> lpbSaclDefaulted,
) =>
    _GetSecurityDescriptorSacl(
      pSecurityDescriptor,
      lpbSaclPresent,
      pSacl,
      lpbSaclDefaulted,
    );

late final _GetSecurityDescriptorSacl = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
  Pointer<Int32> lpbSaclPresent,
  Pointer<Pointer<ACL>> pSacl,
  Pointer<Int32> lpbSaclDefaulted,
),
    int Function(
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
  Pointer<Int32> lpbSaclPresent,
  Pointer<Pointer<ACL>> pSacl,
  Pointer<Int32> lpbSaclDefaulted,
)>('GetSecurityDescriptorSacl');

Pointer<SID_IDENTIFIER_AUTHORITY> GetSidIdentifierAuthority(
  int pSid,
) =>
    _GetSidIdentifierAuthority(
      pSid,
    );

late final _GetSidIdentifierAuthority = _advapi32.lookupFunction<
    Pointer<SID_IDENTIFIER_AUTHORITY> Function(
  IntPtr pSid,
),
    Pointer<SID_IDENTIFIER_AUTHORITY> Function(
  int pSid,
)>('GetSidIdentifierAuthority');

int GetSidLengthRequired(
  int nSubAuthorityCount,
) =>
    _GetSidLengthRequired(
      nSubAuthorityCount,
    );

late final _GetSidLengthRequired = _advapi32.lookupFunction<
    Uint32 Function(
  Uint8 nSubAuthorityCount,
),
    int Function(
  int nSubAuthorityCount,
)>('GetSidLengthRequired');

Pointer<Uint32> GetSidSubAuthority(
  int pSid,
  int nSubAuthority,
) =>
    _GetSidSubAuthority(
      pSid,
      nSubAuthority,
    );

late final _GetSidSubAuthority = _advapi32.lookupFunction<
    Pointer<Uint32> Function(
  IntPtr pSid,
  Uint32 nSubAuthority,
),
    Pointer<Uint32> Function(
  int pSid,
  int nSubAuthority,
)>('GetSidSubAuthority');

Pointer<Uint8> GetSidSubAuthorityCount(
  int pSid,
) =>
    _GetSidSubAuthorityCount(
      pSid,
    );

late final _GetSidSubAuthorityCount = _advapi32.lookupFunction<
    Pointer<Uint8> Function(
  IntPtr pSid,
),
    Pointer<Uint8> Function(
  int pSid,
)>('GetSidSubAuthorityCount');

int GetTokenInformation(
  int TokenHandle,
  int TokenInformationClass,
  Pointer TokenInformation,
  int TokenInformationLength,
  Pointer<Uint32> ReturnLength,
) =>
    _GetTokenInformation(
      TokenHandle,
      TokenInformationClass,
      TokenInformation,
      TokenInformationLength,
      ReturnLength,
    );

late final _GetTokenInformation = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr TokenHandle,
  Int32 TokenInformationClass,
  Pointer TokenInformation,
  Uint32 TokenInformationLength,
  Pointer<Uint32> ReturnLength,
),
    int Function(
  int TokenHandle,
  int TokenInformationClass,
  Pointer TokenInformation,
  int TokenInformationLength,
  Pointer<Uint32> ReturnLength,
)>('GetTokenInformation');

int GetWindowsAccountDomainSid(
  int pSid,
  int pDomainSid,
  Pointer<Uint32> cbDomainSid,
) =>
    _GetWindowsAccountDomainSid(
      pSid,
      pDomainSid,
      cbDomainSid,
    );

late final _GetWindowsAccountDomainSid = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr pSid,
  IntPtr pDomainSid,
  Pointer<Uint32> cbDomainSid,
),
    int Function(
  int pSid,
  int pDomainSid,
  Pointer<Uint32> cbDomainSid,
)>('GetWindowsAccountDomainSid');

int ImpersonateAnonymousToken(
  int ThreadHandle,
) =>
    _ImpersonateAnonymousToken(
      ThreadHandle,
    );

late final _ImpersonateAnonymousToken = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr ThreadHandle,
),
    int Function(
  int ThreadHandle,
)>('ImpersonateAnonymousToken');

int ImpersonateLoggedOnUser(
  int hToken,
) =>
    _ImpersonateLoggedOnUser(
      hToken,
    );

late final _ImpersonateLoggedOnUser = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr hToken,
),
    int Function(
  int hToken,
)>('ImpersonateLoggedOnUser');

int ImpersonateSelf(
  int ImpersonationLevel,
) =>
    _ImpersonateSelf(
      ImpersonationLevel,
    );

late final _ImpersonateSelf = _advapi32.lookupFunction<
    Int32 Function(
  Int32 ImpersonationLevel,
),
    int Function(
  int ImpersonationLevel,
)>('ImpersonateSelf');

int InitializeAcl(
  Pointer<ACL> pAcl,
  int nAclLength,
  int dwAclRevision,
) =>
    _InitializeAcl(
      pAcl,
      nAclLength,
      dwAclRevision,
    );

late final _InitializeAcl = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<ACL> pAcl,
  Uint32 nAclLength,
  Uint32 dwAclRevision,
),
    int Function(
  Pointer<ACL> pAcl,
  int nAclLength,
  int dwAclRevision,
)>('InitializeAcl');

int InitializeSecurityDescriptor(
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
  int dwRevision,
) =>
    _InitializeSecurityDescriptor(
      pSecurityDescriptor,
      dwRevision,
    );

late final _InitializeSecurityDescriptor = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
  Uint32 dwRevision,
),
    int Function(
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
  int dwRevision,
)>('InitializeSecurityDescriptor');

int InitializeSid(
  int Sid,
  Pointer<SID_IDENTIFIER_AUTHORITY> pIdentifierAuthority,
  int nSubAuthorityCount,
) =>
    _InitializeSid(
      Sid,
      pIdentifierAuthority,
      nSubAuthorityCount,
    );

late final _InitializeSid = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr Sid,
  Pointer<SID_IDENTIFIER_AUTHORITY> pIdentifierAuthority,
  Uint8 nSubAuthorityCount,
),
    int Function(
  int Sid,
  Pointer<SID_IDENTIFIER_AUTHORITY> pIdentifierAuthority,
  int nSubAuthorityCount,
)>('InitializeSid');

int IsTokenRestricted(
  int TokenHandle,
) =>
    _IsTokenRestricted(
      TokenHandle,
    );

late final _IsTokenRestricted = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr TokenHandle,
),
    int Function(
  int TokenHandle,
)>('IsTokenRestricted');

int IsValidAcl(
  Pointer<ACL> pAcl,
) =>
    _IsValidAcl(
      pAcl,
    );

late final _IsValidAcl = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<ACL> pAcl,
),
    int Function(
  Pointer<ACL> pAcl,
)>('IsValidAcl');

int IsValidSecurityDescriptor(
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
) =>
    _IsValidSecurityDescriptor(
      pSecurityDescriptor,
    );

late final _IsValidSecurityDescriptor = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
),
    int Function(
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
)>('IsValidSecurityDescriptor');

int IsValidSid(
  int pSid,
) =>
    _IsValidSid(
      pSid,
    );

late final _IsValidSid = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr pSid,
),
    int Function(
  int pSid,
)>('IsValidSid');

int IsWellKnownSid(
  int pSid,
  int WellKnownSidType,
) =>
    _IsWellKnownSid(
      pSid,
      WellKnownSidType,
    );

late final _IsWellKnownSid = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr pSid,
  Int32 WellKnownSidType,
),
    int Function(
  int pSid,
  int WellKnownSidType,
)>('IsWellKnownSid');

int LogonUserEx(
  Pointer<Utf16> lpszUsername,
  Pointer<Utf16> lpszDomain,
  Pointer<Utf16> lpszPassword,
  int dwLogonType,
  int dwLogonProvider,
  Pointer<IntPtr> phToken,
  Pointer<IntPtr> ppLogonSid,
  Pointer<Pointer> ppProfileBuffer,
  Pointer<Uint32> pdwProfileLength,
  Pointer<QUOTA_LIMITS> pQuotaLimits,
) =>
    _LogonUserEx(
      lpszUsername,
      lpszDomain,
      lpszPassword,
      dwLogonType,
      dwLogonProvider,
      phToken,
      ppLogonSid,
      ppProfileBuffer,
      pdwProfileLength,
      pQuotaLimits,
    );

late final _LogonUserEx = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpszUsername,
  Pointer<Utf16> lpszDomain,
  Pointer<Utf16> lpszPassword,
  Uint32 dwLogonType,
  Uint32 dwLogonProvider,
  Pointer<IntPtr> phToken,
  Pointer<IntPtr> ppLogonSid,
  Pointer<Pointer> ppProfileBuffer,
  Pointer<Uint32> pdwProfileLength,
  Pointer<QUOTA_LIMITS> pQuotaLimits,
),
    int Function(
  Pointer<Utf16> lpszUsername,
  Pointer<Utf16> lpszDomain,
  Pointer<Utf16> lpszPassword,
  int dwLogonType,
  int dwLogonProvider,
  Pointer<IntPtr> phToken,
  Pointer<IntPtr> ppLogonSid,
  Pointer<Pointer> ppProfileBuffer,
  Pointer<Uint32> pdwProfileLength,
  Pointer<QUOTA_LIMITS> pQuotaLimits,
)>('LogonUserExW');

int LogonUser(
  Pointer<Utf16> lpszUsername,
  Pointer<Utf16> lpszDomain,
  Pointer<Utf16> lpszPassword,
  int dwLogonType,
  int dwLogonProvider,
  Pointer<IntPtr> phToken,
) =>
    _LogonUser(
      lpszUsername,
      lpszDomain,
      lpszPassword,
      dwLogonType,
      dwLogonProvider,
      phToken,
    );

late final _LogonUser = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpszUsername,
  Pointer<Utf16> lpszDomain,
  Pointer<Utf16> lpszPassword,
  Uint32 dwLogonType,
  Uint32 dwLogonProvider,
  Pointer<IntPtr> phToken,
),
    int Function(
  Pointer<Utf16> lpszUsername,
  Pointer<Utf16> lpszDomain,
  Pointer<Utf16> lpszPassword,
  int dwLogonType,
  int dwLogonProvider,
  Pointer<IntPtr> phToken,
)>('LogonUserW');

int LookupAccountName(
  Pointer<Utf16> lpSystemName,
  Pointer<Utf16> lpAccountName,
  int Sid,
  Pointer<Uint32> cbSid,
  Pointer<Utf16> ReferencedDomainName,
  Pointer<Uint32> cchReferencedDomainName,
  Pointer<Int32> peUse,
) =>
    _LookupAccountName(
      lpSystemName,
      lpAccountName,
      Sid,
      cbSid,
      ReferencedDomainName,
      cchReferencedDomainName,
      peUse,
    );

late final _LookupAccountName = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpSystemName,
  Pointer<Utf16> lpAccountName,
  IntPtr Sid,
  Pointer<Uint32> cbSid,
  Pointer<Utf16> ReferencedDomainName,
  Pointer<Uint32> cchReferencedDomainName,
  Pointer<Int32> peUse,
),
    int Function(
  Pointer<Utf16> lpSystemName,
  Pointer<Utf16> lpAccountName,
  int Sid,
  Pointer<Uint32> cbSid,
  Pointer<Utf16> ReferencedDomainName,
  Pointer<Uint32> cchReferencedDomainName,
  Pointer<Int32> peUse,
)>('LookupAccountNameW');

int LookupAccountSid(
  Pointer<Utf16> lpSystemName,
  int Sid,
  Pointer<Utf16> Name,
  Pointer<Uint32> cchName,
  Pointer<Utf16> ReferencedDomainName,
  Pointer<Uint32> cchReferencedDomainName,
  Pointer<Int32> peUse,
) =>
    _LookupAccountSid(
      lpSystemName,
      Sid,
      Name,
      cchName,
      ReferencedDomainName,
      cchReferencedDomainName,
      peUse,
    );

late final _LookupAccountSid = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpSystemName,
  IntPtr Sid,
  Pointer<Utf16> Name,
  Pointer<Uint32> cchName,
  Pointer<Utf16> ReferencedDomainName,
  Pointer<Uint32> cchReferencedDomainName,
  Pointer<Int32> peUse,
),
    int Function(
  Pointer<Utf16> lpSystemName,
  int Sid,
  Pointer<Utf16> Name,
  Pointer<Uint32> cchName,
  Pointer<Utf16> ReferencedDomainName,
  Pointer<Uint32> cchReferencedDomainName,
  Pointer<Int32> peUse,
)>('LookupAccountSidW');

int LookupPrivilegeDisplayName(
  Pointer<Utf16> lpSystemName,
  Pointer<Utf16> lpName,
  Pointer<Utf16> lpDisplayName,
  Pointer<Uint32> cchDisplayName,
  Pointer<Uint32> lpLanguageId,
) =>
    _LookupPrivilegeDisplayName(
      lpSystemName,
      lpName,
      lpDisplayName,
      cchDisplayName,
      lpLanguageId,
    );

late final _LookupPrivilegeDisplayName = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpSystemName,
  Pointer<Utf16> lpName,
  Pointer<Utf16> lpDisplayName,
  Pointer<Uint32> cchDisplayName,
  Pointer<Uint32> lpLanguageId,
),
    int Function(
  Pointer<Utf16> lpSystemName,
  Pointer<Utf16> lpName,
  Pointer<Utf16> lpDisplayName,
  Pointer<Uint32> cchDisplayName,
  Pointer<Uint32> lpLanguageId,
)>('LookupPrivilegeDisplayNameW');

int LookupPrivilegeName(
  Pointer<Utf16> lpSystemName,
  Pointer<LUID> lpLuid,
  Pointer<Utf16> lpName,
  Pointer<Uint32> cchName,
) =>
    _LookupPrivilegeName(
      lpSystemName,
      lpLuid,
      lpName,
      cchName,
    );

late final _LookupPrivilegeName = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpSystemName,
  Pointer<LUID> lpLuid,
  Pointer<Utf16> lpName,
  Pointer<Uint32> cchName,
),
    int Function(
  Pointer<Utf16> lpSystemName,
  Pointer<LUID> lpLuid,
  Pointer<Utf16> lpName,
  Pointer<Uint32> cchName,
)>('LookupPrivilegeNameW');

int LookupPrivilegeValue(
  Pointer<Utf16> lpSystemName,
  Pointer<Utf16> lpName,
  Pointer<LUID> lpLuid,
) =>
    _LookupPrivilegeValue(
      lpSystemName,
      lpName,
      lpLuid,
    );

late final _LookupPrivilegeValue = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpSystemName,
  Pointer<Utf16> lpName,
  Pointer<LUID> lpLuid,
),
    int Function(
  Pointer<Utf16> lpSystemName,
  Pointer<Utf16> lpName,
  Pointer<LUID> lpLuid,
)>('LookupPrivilegeValueW');

int MakeAbsoluteSD(
  Pointer<SECURITY_DESCRIPTOR> pSelfRelativeSecurityDescriptor,
  Pointer<SECURITY_DESCRIPTOR> pAbsoluteSecurityDescriptor,
  Pointer<Uint32> lpdwAbsoluteSecurityDescriptorSize,
  Pointer<ACL> pDacl,
  Pointer<Uint32> lpdwDaclSize,
  Pointer<ACL> pSacl,
  Pointer<Uint32> lpdwSaclSize,
  int pOwner,
  Pointer<Uint32> lpdwOwnerSize,
  int pPrimaryGroup,
  Pointer<Uint32> lpdwPrimaryGroupSize,
) =>
    _MakeAbsoluteSD(
      pSelfRelativeSecurityDescriptor,
      pAbsoluteSecurityDescriptor,
      lpdwAbsoluteSecurityDescriptorSize,
      pDacl,
      lpdwDaclSize,
      pSacl,
      lpdwSaclSize,
      pOwner,
      lpdwOwnerSize,
      pPrimaryGroup,
      lpdwPrimaryGroupSize,
    );

late final _MakeAbsoluteSD = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<SECURITY_DESCRIPTOR> pSelfRelativeSecurityDescriptor,
  Pointer<SECURITY_DESCRIPTOR> pAbsoluteSecurityDescriptor,
  Pointer<Uint32> lpdwAbsoluteSecurityDescriptorSize,
  Pointer<ACL> pDacl,
  Pointer<Uint32> lpdwDaclSize,
  Pointer<ACL> pSacl,
  Pointer<Uint32> lpdwSaclSize,
  IntPtr pOwner,
  Pointer<Uint32> lpdwOwnerSize,
  IntPtr pPrimaryGroup,
  Pointer<Uint32> lpdwPrimaryGroupSize,
),
    int Function(
  Pointer<SECURITY_DESCRIPTOR> pSelfRelativeSecurityDescriptor,
  Pointer<SECURITY_DESCRIPTOR> pAbsoluteSecurityDescriptor,
  Pointer<Uint32> lpdwAbsoluteSecurityDescriptorSize,
  Pointer<ACL> pDacl,
  Pointer<Uint32> lpdwDaclSize,
  Pointer<ACL> pSacl,
  Pointer<Uint32> lpdwSaclSize,
  int pOwner,
  Pointer<Uint32> lpdwOwnerSize,
  int pPrimaryGroup,
  Pointer<Uint32> lpdwPrimaryGroupSize,
)>('MakeAbsoluteSD');

int MakeSelfRelativeSD(
  Pointer<SECURITY_DESCRIPTOR> pAbsoluteSecurityDescriptor,
  Pointer<SECURITY_DESCRIPTOR> pSelfRelativeSecurityDescriptor,
  Pointer<Uint32> lpdwBufferLength,
) =>
    _MakeSelfRelativeSD(
      pAbsoluteSecurityDescriptor,
      pSelfRelativeSecurityDescriptor,
      lpdwBufferLength,
    );

late final _MakeSelfRelativeSD = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<SECURITY_DESCRIPTOR> pAbsoluteSecurityDescriptor,
  Pointer<SECURITY_DESCRIPTOR> pSelfRelativeSecurityDescriptor,
  Pointer<Uint32> lpdwBufferLength,
),
    int Function(
  Pointer<SECURITY_DESCRIPTOR> pAbsoluteSecurityDescriptor,
  Pointer<SECURITY_DESCRIPTOR> pSelfRelativeSecurityDescriptor,
  Pointer<Uint32> lpdwBufferLength,
)>('MakeSelfRelativeSD');

void MapGenericMask(
  Pointer<Uint32> AccessMask,
  Pointer<GENERIC_MAPPING> GenericMapping,
) =>
    _MapGenericMask(
      AccessMask,
      GenericMapping,
    );

late final _MapGenericMask = _advapi32.lookupFunction<
    Void Function(
  Pointer<Uint32> AccessMask,
  Pointer<GENERIC_MAPPING> GenericMapping,
),
    void Function(
  Pointer<Uint32> AccessMask,
  Pointer<GENERIC_MAPPING> GenericMapping,
)>('MapGenericMask');

int ObjectCloseAuditAlarm(
  Pointer<Utf16> SubsystemName,
  Pointer HandleId,
  int GenerateOnClose,
) =>
    _ObjectCloseAuditAlarm(
      SubsystemName,
      HandleId,
      GenerateOnClose,
    );

late final _ObjectCloseAuditAlarm = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> SubsystemName,
  Pointer HandleId,
  Int32 GenerateOnClose,
),
    int Function(
  Pointer<Utf16> SubsystemName,
  Pointer HandleId,
  int GenerateOnClose,
)>('ObjectCloseAuditAlarmW');

int ObjectDeleteAuditAlarm(
  Pointer<Utf16> SubsystemName,
  Pointer HandleId,
  int GenerateOnClose,
) =>
    _ObjectDeleteAuditAlarm(
      SubsystemName,
      HandleId,
      GenerateOnClose,
    );

late final _ObjectDeleteAuditAlarm = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> SubsystemName,
  Pointer HandleId,
  Int32 GenerateOnClose,
),
    int Function(
  Pointer<Utf16> SubsystemName,
  Pointer HandleId,
  int GenerateOnClose,
)>('ObjectDeleteAuditAlarmW');

int ObjectOpenAuditAlarm(
  Pointer<Utf16> SubsystemName,
  Pointer HandleId,
  Pointer<Utf16> ObjectTypeName,
  Pointer<Utf16> ObjectName,
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
  int ClientToken,
  int DesiredAccess,
  int GrantedAccess,
  Pointer<PRIVILEGE_SET> Privileges,
  int ObjectCreation,
  int AccessGranted,
  Pointer<Int32> GenerateOnClose,
) =>
    _ObjectOpenAuditAlarm(
      SubsystemName,
      HandleId,
      ObjectTypeName,
      ObjectName,
      pSecurityDescriptor,
      ClientToken,
      DesiredAccess,
      GrantedAccess,
      Privileges,
      ObjectCreation,
      AccessGranted,
      GenerateOnClose,
    );

late final _ObjectOpenAuditAlarm = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> SubsystemName,
  Pointer HandleId,
  Pointer<Utf16> ObjectTypeName,
  Pointer<Utf16> ObjectName,
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
  IntPtr ClientToken,
  Uint32 DesiredAccess,
  Uint32 GrantedAccess,
  Pointer<PRIVILEGE_SET> Privileges,
  Int32 ObjectCreation,
  Int32 AccessGranted,
  Pointer<Int32> GenerateOnClose,
),
    int Function(
  Pointer<Utf16> SubsystemName,
  Pointer HandleId,
  Pointer<Utf16> ObjectTypeName,
  Pointer<Utf16> ObjectName,
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
  int ClientToken,
  int DesiredAccess,
  int GrantedAccess,
  Pointer<PRIVILEGE_SET> Privileges,
  int ObjectCreation,
  int AccessGranted,
  Pointer<Int32> GenerateOnClose,
)>('ObjectOpenAuditAlarmW');

int ObjectPrivilegeAuditAlarm(
  Pointer<Utf16> SubsystemName,
  Pointer HandleId,
  int ClientToken,
  int DesiredAccess,
  Pointer<PRIVILEGE_SET> Privileges,
  int AccessGranted,
) =>
    _ObjectPrivilegeAuditAlarm(
      SubsystemName,
      HandleId,
      ClientToken,
      DesiredAccess,
      Privileges,
      AccessGranted,
    );

late final _ObjectPrivilegeAuditAlarm = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> SubsystemName,
  Pointer HandleId,
  IntPtr ClientToken,
  Uint32 DesiredAccess,
  Pointer<PRIVILEGE_SET> Privileges,
  Int32 AccessGranted,
),
    int Function(
  Pointer<Utf16> SubsystemName,
  Pointer HandleId,
  int ClientToken,
  int DesiredAccess,
  Pointer<PRIVILEGE_SET> Privileges,
  int AccessGranted,
)>('ObjectPrivilegeAuditAlarmW');

int PrivilegeCheck(
  int ClientToken,
  Pointer<PRIVILEGE_SET> RequiredPrivileges,
  Pointer<Int32> pfResult,
) =>
    _PrivilegeCheck(
      ClientToken,
      RequiredPrivileges,
      pfResult,
    );

late final _PrivilegeCheck = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr ClientToken,
  Pointer<PRIVILEGE_SET> RequiredPrivileges,
  Pointer<Int32> pfResult,
),
    int Function(
  int ClientToken,
  Pointer<PRIVILEGE_SET> RequiredPrivileges,
  Pointer<Int32> pfResult,
)>('PrivilegeCheck');

int PrivilegedServiceAuditAlarm(
  Pointer<Utf16> SubsystemName,
  Pointer<Utf16> ServiceName,
  int ClientToken,
  Pointer<PRIVILEGE_SET> Privileges,
  int AccessGranted,
) =>
    _PrivilegedServiceAuditAlarm(
      SubsystemName,
      ServiceName,
      ClientToken,
      Privileges,
      AccessGranted,
    );

late final _PrivilegedServiceAuditAlarm = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> SubsystemName,
  Pointer<Utf16> ServiceName,
  IntPtr ClientToken,
  Pointer<PRIVILEGE_SET> Privileges,
  Int32 AccessGranted,
),
    int Function(
  Pointer<Utf16> SubsystemName,
  Pointer<Utf16> ServiceName,
  int ClientToken,
  Pointer<PRIVILEGE_SET> Privileges,
  int AccessGranted,
)>('PrivilegedServiceAuditAlarmW');

void QuerySecurityAccessMask(
  int SecurityInformation,
  Pointer<Uint32> DesiredAccess,
) =>
    _QuerySecurityAccessMask(
      SecurityInformation,
      DesiredAccess,
    );

late final _QuerySecurityAccessMask = _advapi32.lookupFunction<
    Void Function(
  Uint32 SecurityInformation,
  Pointer<Uint32> DesiredAccess,
),
    void Function(
  int SecurityInformation,
  Pointer<Uint32> DesiredAccess,
)>('QuerySecurityAccessMask');

int RevertToSelf() => _RevertToSelf();

late final _RevertToSelf =
    _advapi32.lookupFunction<Int32 Function(), int Function()>('RevertToSelf');

int SetAclInformation(
  Pointer<ACL> pAcl,
  Pointer pAclInformation,
  int nAclInformationLength,
  int dwAclInformationClass,
) =>
    _SetAclInformation(
      pAcl,
      pAclInformation,
      nAclInformationLength,
      dwAclInformationClass,
    );

late final _SetAclInformation = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<ACL> pAcl,
  Pointer pAclInformation,
  Uint32 nAclInformationLength,
  Int32 dwAclInformationClass,
),
    int Function(
  Pointer<ACL> pAcl,
  Pointer pAclInformation,
  int nAclInformationLength,
  int dwAclInformationClass,
)>('SetAclInformation');

int SetFileSecurity(
  Pointer<Utf16> lpFileName,
  int SecurityInformation,
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
) =>
    _SetFileSecurity(
      lpFileName,
      SecurityInformation,
      pSecurityDescriptor,
    );

late final _SetFileSecurity = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpFileName,
  Uint32 SecurityInformation,
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
),
    int Function(
  Pointer<Utf16> lpFileName,
  int SecurityInformation,
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
)>('SetFileSecurityW');

int SetKernelObjectSecurity(
  int $Handle,
  int SecurityInformation,
  Pointer<SECURITY_DESCRIPTOR> SecurityDescriptor,
) =>
    _SetKernelObjectSecurity(
      $Handle,
      SecurityInformation,
      SecurityDescriptor,
    );

late final _SetKernelObjectSecurity = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr $Handle,
  Uint32 SecurityInformation,
  Pointer<SECURITY_DESCRIPTOR> SecurityDescriptor,
),
    int Function(
  int $Handle,
  int SecurityInformation,
  Pointer<SECURITY_DESCRIPTOR> SecurityDescriptor,
)>('SetKernelObjectSecurity');

int SetPrivateObjectSecurity(
  int SecurityInformation,
  Pointer<SECURITY_DESCRIPTOR> ModificationDescriptor,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> ObjectsSecurityDescriptor,
  Pointer<GENERIC_MAPPING> GenericMapping,
  int Token,
) =>
    _SetPrivateObjectSecurity(
      SecurityInformation,
      ModificationDescriptor,
      ObjectsSecurityDescriptor,
      GenericMapping,
      Token,
    );

late final _SetPrivateObjectSecurity = _advapi32.lookupFunction<
    Int32 Function(
  Uint32 SecurityInformation,
  Pointer<SECURITY_DESCRIPTOR> ModificationDescriptor,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> ObjectsSecurityDescriptor,
  Pointer<GENERIC_MAPPING> GenericMapping,
  IntPtr Token,
),
    int Function(
  int SecurityInformation,
  Pointer<SECURITY_DESCRIPTOR> ModificationDescriptor,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> ObjectsSecurityDescriptor,
  Pointer<GENERIC_MAPPING> GenericMapping,
  int Token,
)>('SetPrivateObjectSecurity');

int SetPrivateObjectSecurityEx(
  int SecurityInformation,
  Pointer<SECURITY_DESCRIPTOR> ModificationDescriptor,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> ObjectsSecurityDescriptor,
  int AutoInheritFlags,
  Pointer<GENERIC_MAPPING> GenericMapping,
  int Token,
) =>
    _SetPrivateObjectSecurityEx(
      SecurityInformation,
      ModificationDescriptor,
      ObjectsSecurityDescriptor,
      AutoInheritFlags,
      GenericMapping,
      Token,
    );

late final _SetPrivateObjectSecurityEx = _advapi32.lookupFunction<
    Int32 Function(
  Uint32 SecurityInformation,
  Pointer<SECURITY_DESCRIPTOR> ModificationDescriptor,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> ObjectsSecurityDescriptor,
  Uint32 AutoInheritFlags,
  Pointer<GENERIC_MAPPING> GenericMapping,
  IntPtr Token,
),
    int Function(
  int SecurityInformation,
  Pointer<SECURITY_DESCRIPTOR> ModificationDescriptor,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> ObjectsSecurityDescriptor,
  int AutoInheritFlags,
  Pointer<GENERIC_MAPPING> GenericMapping,
  int Token,
)>('SetPrivateObjectSecurityEx');

void SetSecurityAccessMask(
  int SecurityInformation,
  Pointer<Uint32> DesiredAccess,
) =>
    _SetSecurityAccessMask(
      SecurityInformation,
      DesiredAccess,
    );

late final _SetSecurityAccessMask = _advapi32.lookupFunction<
    Void Function(
  Uint32 SecurityInformation,
  Pointer<Uint32> DesiredAccess,
),
    void Function(
  int SecurityInformation,
  Pointer<Uint32> DesiredAccess,
)>('SetSecurityAccessMask');

int SetSecurityDescriptorControl(
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
  int ControlBitsOfInterest,
  int ControlBitsToSet,
) =>
    _SetSecurityDescriptorControl(
      pSecurityDescriptor,
      ControlBitsOfInterest,
      ControlBitsToSet,
    );

late final _SetSecurityDescriptorControl = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
  Uint16 ControlBitsOfInterest,
  Uint16 ControlBitsToSet,
),
    int Function(
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
  int ControlBitsOfInterest,
  int ControlBitsToSet,
)>('SetSecurityDescriptorControl');

int SetSecurityDescriptorDacl(
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
  int bDaclPresent,
  Pointer<ACL> pDacl,
  int bDaclDefaulted,
) =>
    _SetSecurityDescriptorDacl(
      pSecurityDescriptor,
      bDaclPresent,
      pDacl,
      bDaclDefaulted,
    );

late final _SetSecurityDescriptorDacl = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
  Int32 bDaclPresent,
  Pointer<ACL> pDacl,
  Int32 bDaclDefaulted,
),
    int Function(
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
  int bDaclPresent,
  Pointer<ACL> pDacl,
  int bDaclDefaulted,
)>('SetSecurityDescriptorDacl');

int SetSecurityDescriptorGroup(
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
  int pGroup,
  int bGroupDefaulted,
) =>
    _SetSecurityDescriptorGroup(
      pSecurityDescriptor,
      pGroup,
      bGroupDefaulted,
    );

late final _SetSecurityDescriptorGroup = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
  IntPtr pGroup,
  Int32 bGroupDefaulted,
),
    int Function(
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
  int pGroup,
  int bGroupDefaulted,
)>('SetSecurityDescriptorGroup');

int SetSecurityDescriptorOwner(
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
  int pOwner,
  int bOwnerDefaulted,
) =>
    _SetSecurityDescriptorOwner(
      pSecurityDescriptor,
      pOwner,
      bOwnerDefaulted,
    );

late final _SetSecurityDescriptorOwner = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
  IntPtr pOwner,
  Int32 bOwnerDefaulted,
),
    int Function(
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
  int pOwner,
  int bOwnerDefaulted,
)>('SetSecurityDescriptorOwner');

int SetSecurityDescriptorRMControl(
  Pointer<SECURITY_DESCRIPTOR> SecurityDescriptor,
  Pointer<Uint8> RMControl,
) =>
    _SetSecurityDescriptorRMControl(
      SecurityDescriptor,
      RMControl,
    );

late final _SetSecurityDescriptorRMControl = _advapi32.lookupFunction<
    Uint32 Function(
  Pointer<SECURITY_DESCRIPTOR> SecurityDescriptor,
  Pointer<Uint8> RMControl,
),
    int Function(
  Pointer<SECURITY_DESCRIPTOR> SecurityDescriptor,
  Pointer<Uint8> RMControl,
)>('SetSecurityDescriptorRMControl');

int SetSecurityDescriptorSacl(
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
  int bSaclPresent,
  Pointer<ACL> pSacl,
  int bSaclDefaulted,
) =>
    _SetSecurityDescriptorSacl(
      pSecurityDescriptor,
      bSaclPresent,
      pSacl,
      bSaclDefaulted,
    );

late final _SetSecurityDescriptorSacl = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
  Int32 bSaclPresent,
  Pointer<ACL> pSacl,
  Int32 bSaclDefaulted,
),
    int Function(
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
  int bSaclPresent,
  Pointer<ACL> pSacl,
  int bSaclDefaulted,
)>('SetSecurityDescriptorSacl');

int SetTokenInformation(
  int TokenHandle,
  int TokenInformationClass,
  Pointer TokenInformation,
  int TokenInformationLength,
) =>
    _SetTokenInformation(
      TokenHandle,
      TokenInformationClass,
      TokenInformation,
      TokenInformationLength,
    );

late final _SetTokenInformation = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr TokenHandle,
  Int32 TokenInformationClass,
  Pointer TokenInformation,
  Uint32 TokenInformationLength,
),
    int Function(
  int TokenHandle,
  int TokenInformationClass,
  Pointer TokenInformation,
  int TokenInformationLength,
)>('SetTokenInformation');

// -----------------------------------------------------------------------
// kernel32.dll
// -----------------------------------------------------------------------
final _kernel32 = DynamicLibrary.open('kernel32.dll');

int AddResourceAttributeAce(
  Pointer<ACL> pAcl,
  int dwAceRevision,
  int AceFlags,
  int AccessMask,
  int pSid,
  Pointer<CLAIM_SECURITY_ATTRIBUTES_INFORMATION> pAttributeInfo,
  Pointer<Uint32> pReturnLength,
) =>
    _AddResourceAttributeAce(
      pAcl,
      dwAceRevision,
      AceFlags,
      AccessMask,
      pSid,
      pAttributeInfo,
      pReturnLength,
    );

late final _AddResourceAttributeAce = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<ACL> pAcl,
  Uint32 dwAceRevision,
  Uint32 AceFlags,
  Uint32 AccessMask,
  IntPtr pSid,
  Pointer<CLAIM_SECURITY_ATTRIBUTES_INFORMATION> pAttributeInfo,
  Pointer<Uint32> pReturnLength,
),
    int Function(
  Pointer<ACL> pAcl,
  int dwAceRevision,
  int AceFlags,
  int AccessMask,
  int pSid,
  Pointer<CLAIM_SECURITY_ATTRIBUTES_INFORMATION> pAttributeInfo,
  Pointer<Uint32> pReturnLength,
)>('AddResourceAttributeAce');

int AddScopedPolicyIDAce(
  Pointer<ACL> pAcl,
  int dwAceRevision,
  int AceFlags,
  int AccessMask,
  int pSid,
) =>
    _AddScopedPolicyIDAce(
      pAcl,
      dwAceRevision,
      AceFlags,
      AccessMask,
      pSid,
    );

late final _AddScopedPolicyIDAce = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<ACL> pAcl,
  Uint32 dwAceRevision,
  Uint32 AceFlags,
  Uint32 AccessMask,
  IntPtr pSid,
),
    int Function(
  Pointer<ACL> pAcl,
  int dwAceRevision,
  int AceFlags,
  int AccessMask,
  int pSid,
)>('AddScopedPolicyIDAce');

int CheckTokenCapability(
  int TokenHandle,
  int CapabilitySidToCheck,
  Pointer<Int32> HasCapability,
) =>
    _CheckTokenCapability(
      TokenHandle,
      CapabilitySidToCheck,
      HasCapability,
    );

late final _CheckTokenCapability = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr TokenHandle,
  IntPtr CapabilitySidToCheck,
  Pointer<Int32> HasCapability,
),
    int Function(
  int TokenHandle,
  int CapabilitySidToCheck,
  Pointer<Int32> HasCapability,
)>('CheckTokenCapability');

int CheckTokenMembershipEx(
  int TokenHandle,
  int SidToCheck,
  int Flags,
  Pointer<Int32> IsMember,
) =>
    _CheckTokenMembershipEx(
      TokenHandle,
      SidToCheck,
      Flags,
      IsMember,
    );

late final _CheckTokenMembershipEx = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr TokenHandle,
  IntPtr SidToCheck,
  Uint32 Flags,
  Pointer<Int32> IsMember,
),
    int Function(
  int TokenHandle,
  int SidToCheck,
  int Flags,
  Pointer<Int32> IsMember,
)>('CheckTokenMembershipEx');

int GetAppContainerAce(
  Pointer<ACL> Acl,
  int StartingAceIndex,
  Pointer<Pointer> AppContainerAce,
  Pointer<Uint32> AppContainerAceIndex,
) =>
    _GetAppContainerAce(
      Acl,
      StartingAceIndex,
      AppContainerAce,
      AppContainerAceIndex,
    );

late final _GetAppContainerAce = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<ACL> Acl,
  Uint32 StartingAceIndex,
  Pointer<Pointer> AppContainerAce,
  Pointer<Uint32> AppContainerAceIndex,
),
    int Function(
  Pointer<ACL> Acl,
  int StartingAceIndex,
  Pointer<Pointer> AppContainerAce,
  Pointer<Uint32> AppContainerAceIndex,
)>('GetAppContainerAce');

int GetCachedSigningLevel(
  int File,
  Pointer<Uint32> Flags,
  Pointer<Uint32> SigningLevel,
  Pointer<Uint8> Thumbprint,
  Pointer<Uint32> ThumbprintSize,
  Pointer<Uint32> ThumbprintAlgorithm,
) =>
    _GetCachedSigningLevel(
      File,
      Flags,
      SigningLevel,
      Thumbprint,
      ThumbprintSize,
      ThumbprintAlgorithm,
    );

late final _GetCachedSigningLevel = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr File,
  Pointer<Uint32> Flags,
  Pointer<Uint32> SigningLevel,
  Pointer<Uint8> Thumbprint,
  Pointer<Uint32> ThumbprintSize,
  Pointer<Uint32> ThumbprintAlgorithm,
),
    int Function(
  int File,
  Pointer<Uint32> Flags,
  Pointer<Uint32> SigningLevel,
  Pointer<Uint8> Thumbprint,
  Pointer<Uint32> ThumbprintSize,
  Pointer<Uint32> ThumbprintAlgorithm,
)>('GetCachedSigningLevel');

int SetCachedSigningLevel(
  Pointer<IntPtr> SourceFiles,
  int SourceFileCount,
  int Flags,
  int TargetFile,
) =>
    _SetCachedSigningLevel(
      SourceFiles,
      SourceFileCount,
      Flags,
      TargetFile,
    );

late final _SetCachedSigningLevel = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<IntPtr> SourceFiles,
  Uint32 SourceFileCount,
  Uint32 Flags,
  IntPtr TargetFile,
),
    int Function(
  Pointer<IntPtr> SourceFiles,
  int SourceFileCount,
  int Flags,
  int TargetFile,
)>('SetCachedSigningLevel');

// -----------------------------------------------------------------------
// api-ms-win-security-base-l1-2-2.dll
// -----------------------------------------------------------------------
final _api_ms_win_security_base_l1_2_2 =
    DynamicLibrary.open('api-ms-win-security-base-l1-2-2.dll');

int DeriveCapabilitySidsFromName(
  Pointer<Utf16> CapName,
  Pointer<Pointer<IntPtr>> CapabilityGroupSids,
  Pointer<Uint32> CapabilityGroupSidCount,
  Pointer<Pointer<IntPtr>> CapabilitySids,
  Pointer<Uint32> CapabilitySidCount,
) =>
    _DeriveCapabilitySidsFromName(
      CapName,
      CapabilityGroupSids,
      CapabilityGroupSidCount,
      CapabilitySids,
      CapabilitySidCount,
    );

late final _DeriveCapabilitySidsFromName =
    _api_ms_win_security_base_l1_2_2.lookupFunction<
        Int32 Function(
  Pointer<Utf16> CapName,
  Pointer<Pointer<IntPtr>> CapabilityGroupSids,
  Pointer<Uint32> CapabilityGroupSidCount,
  Pointer<Pointer<IntPtr>> CapabilitySids,
  Pointer<Uint32> CapabilitySidCount,
),
        int Function(
  Pointer<Utf16> CapName,
  Pointer<Pointer<IntPtr>> CapabilityGroupSids,
  Pointer<Uint32> CapabilityGroupSidCount,
  Pointer<Pointer<IntPtr>> CapabilitySids,
  Pointer<Uint32> CapabilitySidCount,
)>('DeriveCapabilitySidsFromName');

// -----------------------------------------------------------------------
// ntdll.dll
// -----------------------------------------------------------------------
final _ntdll = DynamicLibrary.open('ntdll.dll');

int RtlConvertSidToUnicodeString(
  Pointer<UNICODE_STRING> UnicodeString,
  int Sid,
  int AllocateDestinationString,
) =>
    _RtlConvertSidToUnicodeString(
      UnicodeString,
      Sid,
      AllocateDestinationString,
    );

late final _RtlConvertSidToUnicodeString = _ntdll.lookupFunction<
    Int32 Function(
  Pointer<UNICODE_STRING> UnicodeString,
  IntPtr Sid,
  Uint8 AllocateDestinationString,
),
    int Function(
  Pointer<UNICODE_STRING> UnicodeString,
  int Sid,
  int AllocateDestinationString,
)>('RtlConvertSidToUnicodeString');

int RtlNormalizeSecurityDescriptor(
  Pointer<Pointer<SECURITY_DESCRIPTOR>> SecurityDescriptor,
  int SecurityDescriptorLength,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> NewSecurityDescriptor,
  Pointer<Uint32> NewSecurityDescriptorLength,
  int CheckOnly,
) =>
    _RtlNormalizeSecurityDescriptor(
      SecurityDescriptor,
      SecurityDescriptorLength,
      NewSecurityDescriptor,
      NewSecurityDescriptorLength,
      CheckOnly,
    );

late final _RtlNormalizeSecurityDescriptor = _ntdll.lookupFunction<
    Uint8 Function(
  Pointer<Pointer<SECURITY_DESCRIPTOR>> SecurityDescriptor,
  Uint32 SecurityDescriptorLength,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> NewSecurityDescriptor,
  Pointer<Uint32> NewSecurityDescriptorLength,
  Uint8 CheckOnly,
),
    int Function(
  Pointer<Pointer<SECURITY_DESCRIPTOR>> SecurityDescriptor,
  int SecurityDescriptorLength,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> NewSecurityDescriptor,
  Pointer<Uint32> NewSecurityDescriptorLength,
  int CheckOnly,
)>('RtlNormalizeSecurityDescriptor');

// -----------------------------------------------------------------------
// user32.dll
// -----------------------------------------------------------------------
final _user32 = DynamicLibrary.open('user32.dll');

int GetUserObjectSecurity(
  int hObj,
  Pointer<Uint32> pSIRequested,
  Pointer<SECURITY_DESCRIPTOR> pSID,
  int nLength,
  Pointer<Uint32> lpnLengthNeeded,
) =>
    _GetUserObjectSecurity(
      hObj,
      pSIRequested,
      pSID,
      nLength,
      lpnLengthNeeded,
    );

late final _GetUserObjectSecurity = _user32.lookupFunction<
    Int32 Function(
  IntPtr hObj,
  Pointer<Uint32> pSIRequested,
  Pointer<SECURITY_DESCRIPTOR> pSID,
  Uint32 nLength,
  Pointer<Uint32> lpnLengthNeeded,
),
    int Function(
  int hObj,
  Pointer<Uint32> pSIRequested,
  Pointer<SECURITY_DESCRIPTOR> pSID,
  int nLength,
  Pointer<Uint32> lpnLengthNeeded,
)>('GetUserObjectSecurity');

int SetUserObjectSecurity(
  int hObj,
  Pointer<Uint32> pSIRequested,
  Pointer<SECURITY_DESCRIPTOR> pSID,
) =>
    _SetUserObjectSecurity(
      hObj,
      pSIRequested,
      pSID,
    );

late final _SetUserObjectSecurity = _user32.lookupFunction<
    Int32 Function(
  IntPtr hObj,
  Pointer<Uint32> pSIRequested,
  Pointer<SECURITY_DESCRIPTOR> pSID,
),
    int Function(
  int hObj,
  Pointer<Uint32> pSIRequested,
  Pointer<SECURITY_DESCRIPTOR> pSID,
)>('SetUserObjectSecurity');
