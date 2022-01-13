/// {@category Enum}
class ACCESS_MODE {
  static const NOT_USED_ACCESS = 0x00000000;
  static const GRANT_ACCESS = 0x00000001;
  static const SET_ACCESS = 0x00000002;
  static const DENY_ACCESS = 0x00000003;
  static const REVOKE_ACCESS = 0x00000004;
  static const SET_AUDIT_SUCCESS = 0x00000005;
  static const SET_AUDIT_FAILURE = 0x00000006;
}

/// {@category Enum}
class ACTRL_ACCESS_ENTRY_ACCESS_FLAGS {
  static const ACTRL_ACCESS_ALLOWED = 0x00000001;
  static const ACTRL_ACCESS_DENIED = 0x00000002;
  static const ACTRL_AUDIT_SUCCESS = 0x00000004;
  static const ACTRL_AUDIT_FAILURE = 0x00000008;
}

/// {@category Enum}
class AUDIT_PARAM_TYPE {
  static const APT_None = 0x00000001;
  static const APT_String = 0x00000002;
  static const APT_Ulong = 0x00000003;
  static const APT_Pointer = 0x00000004;
  static const APT_Sid = 0x00000005;
  static const APT_LogonId = 0x00000006;
  static const APT_ObjectTypeList = 0x00000007;
  static const APT_Luid = 0x00000008;
  static const APT_Guid = 0x00000009;
  static const APT_Time = 0x0000000a;
  static const APT_Int64 = 0x0000000b;
  static const APT_IpAddress = 0x0000000c;
  static const APT_LogonIdWithSid = 0x0000000d;
}

/// {@category Enum}
class AUTHZ_ACCESS_CHECK_FLAGS {
  static const AUTHZ_ACCESS_CHECK_NO_DEEP_COPY_SD = 0x00000001;
}

/// {@category Enum}
class AUTHZ_AUDIT_EVENT_INFORMATION_CLASS {
  static const AuthzAuditEventInfoFlags = 0x00000001;
  static const AuthzAuditEventInfoOperationType = 0x00000002;
  static const AuthzAuditEventInfoObjectType = 0x00000003;
  static const AuthzAuditEventInfoObjectName = 0x00000004;
  static const AuthzAuditEventInfoAdditionalInfo = 0x00000005;
}

/// {@category Enum}
class AUTHZ_CONTEXT_INFORMATION_CLASS {
  static const AuthzContextInfoUserSid = 0x00000001;
  static const AuthzContextInfoGroupsSids = 0x00000002;
  static const AuthzContextInfoRestrictedSids = 0x00000003;
  static const AuthzContextInfoPrivileges = 0x00000004;
  static const AuthzContextInfoExpirationTime = 0x00000005;
  static const AuthzContextInfoServerContext = 0x00000006;
  static const AuthzContextInfoIdentifier = 0x00000007;
  static const AuthzContextInfoSource = 0x00000008;
  static const AuthzContextInfoAll = 0x00000009;
  static const AuthzContextInfoAuthenticationId = 0x0000000a;
  static const AuthzContextInfoSecurityAttributes = 0x0000000b;
  static const AuthzContextInfoDeviceSids = 0x0000000c;
  static const AuthzContextInfoUserClaims = 0x0000000d;
  static const AuthzContextInfoDeviceClaims = 0x0000000e;
  static const AuthzContextInfoAppContainerSid = 0x0000000f;
  static const AuthzContextInfoCapabilitySids = 0x00000010;
}

/// {@category Enum}
class AUTHZ_GENERATE_RESULTS {
  static const AUTHZ_GENERATE_SUCCESS_AUDIT = 0x00000001;
  static const AUTHZ_GENERATE_FAILURE_AUDIT = 0x00000002;
}

/// {@category Enum}
class AUTHZ_INITIALIZE_OBJECT_ACCESS_AUDIT_EVENT_FLAGS {
  static const AUTHZ_NO_SUCCESS_AUDIT = 0x00000001;
  static const AUTHZ_NO_FAILURE_AUDIT = 0x00000002;
  static const AUTHZ_NO_ALLOC_STRINGS = 0x00000004;
}

/// {@category Enum}
class AUTHZ_RESOURCE_MANAGER_FLAGS {
  static const AUTHZ_RM_FLAG_NO_AUDIT = 0x00000001;
  static const AUTHZ_RM_FLAG_INITIALIZE_UNDER_IMPERSONATION = 0x00000002;
  static const AUTHZ_RM_FLAG_NO_CENTRAL_ACCESS_POLICIES = 0x00000004;
}

/// {@category Enum}
class AUTHZ_SECURITY_ATTRIBUTE_FLAGS {
  static const AUTHZ_SECURITY_ATTRIBUTE_NON_INHERITABLE = 0x00000001;
  static const AUTHZ_SECURITY_ATTRIBUTE_VALUE_CASE_SENSITIVE = 0x00000002;
}

/// {@category Enum}
class AUTHZ_SECURITY_ATTRIBUTE_OPERATION {
  static const AUTHZ_SECURITY_ATTRIBUTE_OPERATION_NONE = 0x00000000;
  static const AUTHZ_SECURITY_ATTRIBUTE_OPERATION_REPLACE_ALL = 0x00000001;
  static const AUTHZ_SECURITY_ATTRIBUTE_OPERATION_ADD = 0x00000002;
  static const AUTHZ_SECURITY_ATTRIBUTE_OPERATION_DELETE = 0x00000003;
  static const AUTHZ_SECURITY_ATTRIBUTE_OPERATION_REPLACE = 0x00000004;
}

/// {@category Enum}
class AUTHZ_SID_OPERATION {
  static const AUTHZ_SID_OPERATION_NONE = 0x00000000;
  static const AUTHZ_SID_OPERATION_REPLACE_ALL = 0x00000001;
  static const AUTHZ_SID_OPERATION_ADD = 0x00000002;
  static const AUTHZ_SID_OPERATION_DELETE = 0x00000003;
  static const AUTHZ_SID_OPERATION_REPLACE = 0x00000004;
}

/// {@category Enum}
class AZ_PROP_CONSTANTS {
  static const AZ_PROP_NAME = 0x00000001;
  static const AZ_PROP_DESCRIPTION = 0x00000002;
  static const AZ_PROP_WRITABLE = 0x00000003;
  static const AZ_PROP_APPLICATION_DATA = 0x00000004;
  static const AZ_PROP_CHILD_CREATE = 0x00000005;
  static const AZ_MAX_APPLICATION_NAME_LENGTH = 0x00000200;
  static const AZ_MAX_OPERATION_NAME_LENGTH = 0x00000040;
  static const AZ_MAX_TASK_NAME_LENGTH = 0x00000040;
  static const AZ_MAX_SCOPE_NAME_LENGTH = 0x00010000;
  static const AZ_MAX_GROUP_NAME_LENGTH = 0x00000040;
  static const AZ_MAX_ROLE_NAME_LENGTH = 0x00000040;
  static const AZ_MAX_NAME_LENGTH = 0x00010000;
  static const AZ_MAX_DESCRIPTION_LENGTH = 0x00000400;
  static const AZ_MAX_APPLICATION_DATA_LENGTH = 0x00001000;
  static const AZ_SUBMIT_FLAG_ABORT = 0x00000001;
  static const AZ_SUBMIT_FLAG_FLUSH = 0x00000002;
  static const AZ_MAX_POLICY_URL_LENGTH = 0x00010000;
  static const AZ_AZSTORE_FLAG_CREATE = 0x00000001;
  static const AZ_AZSTORE_FLAG_MANAGE_STORE_ONLY = 0x00000002;
  static const AZ_AZSTORE_FLAG_BATCH_UPDATE = 0x00000004;
  static const AZ_AZSTORE_FLAG_AUDIT_IS_CRITICAL = 0x00000008;
  static const AZ_AZSTORE_FORCE_APPLICATION_CLOSE = 0x00000010;
  static const AZ_AZSTORE_NT6_FUNCTION_LEVEL = 0x00000020;
  static const AZ_AZSTORE_FLAG_MANAGE_ONLY_PASSIVE_SUBMIT = 0x00008000;
  static const AZ_PROP_AZSTORE_DOMAIN_TIMEOUT = 0x00000064;
  static const AZ_AZSTORE_DEFAULT_DOMAIN_TIMEOUT = 0x00003a98;
  static const AZ_PROP_AZSTORE_SCRIPT_ENGINE_TIMEOUT = 0x00000065;
  static const AZ_AZSTORE_MIN_DOMAIN_TIMEOUT = 0x000001f4;
  static const AZ_AZSTORE_MIN_SCRIPT_ENGINE_TIMEOUT = 0x00001388;
  static const AZ_AZSTORE_DEFAULT_SCRIPT_ENGINE_TIMEOUT = 0x0000afc8;
  static const AZ_PROP_AZSTORE_MAX_SCRIPT_ENGINES = 0x00000066;
  static const AZ_AZSTORE_DEFAULT_MAX_SCRIPT_ENGINES = 0x00000078;
  static const AZ_PROP_AZSTORE_MAJOR_VERSION = 0x00000067;
  static const AZ_PROP_AZSTORE_MINOR_VERSION = 0x00000068;
  static const AZ_PROP_AZSTORE_TARGET_MACHINE = 0x00000069;
  static const AZ_PROP_AZTORE_IS_ADAM_INSTANCE = 0x0000006a;
  static const AZ_PROP_OPERATION_ID = 0x000000c8;
  static const AZ_PROP_TASK_OPERATIONS = 0x0000012c;
  static const AZ_PROP_TASK_BIZRULE = 0x0000012d;
  static const AZ_PROP_TASK_BIZRULE_LANGUAGE = 0x0000012e;
  static const AZ_PROP_TASK_TASKS = 0x0000012f;
  static const AZ_PROP_TASK_BIZRULE_IMPORTED_PATH = 0x00000130;
  static const AZ_PROP_TASK_IS_ROLE_DEFINITION = 0x00000131;
  static const AZ_MAX_TASK_BIZRULE_LENGTH = 0x00010000;
  static const AZ_MAX_TASK_BIZRULE_LANGUAGE_LENGTH = 0x00000040;
  static const AZ_MAX_TASK_BIZRULE_IMPORTED_PATH_LENGTH = 0x00000200;
  static const AZ_MAX_BIZRULE_STRING = 0x00010000;
  static const AZ_PROP_GROUP_TYPE = 0x00000190;
  static const AZ_GROUPTYPE_LDAP_QUERY = 0x00000001;
  static const AZ_GROUPTYPE_BASIC = 0x00000002;
  static const AZ_GROUPTYPE_BIZRULE = 0x00000003;
  static const AZ_PROP_GROUP_APP_MEMBERS = 0x00000191;
  static const AZ_PROP_GROUP_APP_NON_MEMBERS = 0x00000192;
  static const AZ_PROP_GROUP_LDAP_QUERY = 0x00000193;
  static const AZ_MAX_GROUP_LDAP_QUERY_LENGTH = 0x00001000;
  static const AZ_PROP_GROUP_MEMBERS = 0x00000194;
  static const AZ_PROP_GROUP_NON_MEMBERS = 0x00000195;
  static const AZ_PROP_GROUP_MEMBERS_NAME = 0x00000196;
  static const AZ_PROP_GROUP_NON_MEMBERS_NAME = 0x00000197;
  static const AZ_PROP_GROUP_BIZRULE = 0x00000198;
  static const AZ_PROP_GROUP_BIZRULE_LANGUAGE = 0x00000199;
  static const AZ_PROP_GROUP_BIZRULE_IMPORTED_PATH = 0x0000019a;
  static const AZ_MAX_GROUP_BIZRULE_LENGTH = 0x00010000;
  static const AZ_MAX_GROUP_BIZRULE_LANGUAGE_LENGTH = 0x00000040;
  static const AZ_MAX_GROUP_BIZRULE_IMPORTED_PATH_LENGTH = 0x00000200;
  static const AZ_PROP_ROLE_APP_MEMBERS = 0x000001f4;
  static const AZ_PROP_ROLE_MEMBERS = 0x000001f5;
  static const AZ_PROP_ROLE_OPERATIONS = 0x000001f6;
  static const AZ_PROP_ROLE_TASKS = 0x000001f8;
  static const AZ_PROP_ROLE_MEMBERS_NAME = 0x000001f9;
  static const AZ_PROP_SCOPE_BIZRULES_WRITABLE = 0x00000258;
  static const AZ_PROP_SCOPE_CAN_BE_DELEGATED = 0x00000259;
  static const AZ_PROP_CLIENT_CONTEXT_USER_DN = 0x000002bc;
  static const AZ_PROP_CLIENT_CONTEXT_USER_SAM_COMPAT = 0x000002bd;
  static const AZ_PROP_CLIENT_CONTEXT_USER_DISPLAY = 0x000002be;
  static const AZ_PROP_CLIENT_CONTEXT_USER_GUID = 0x000002bf;
  static const AZ_PROP_CLIENT_CONTEXT_USER_CANONICAL = 0x000002c0;
  static const AZ_PROP_CLIENT_CONTEXT_USER_UPN = 0x000002c1;
  static const AZ_PROP_CLIENT_CONTEXT_USER_DNS_SAM_COMPAT = 0x000002c3;
  static const AZ_PROP_CLIENT_CONTEXT_ROLE_FOR_ACCESS_CHECK = 0x000002c4;
  static const AZ_PROP_CLIENT_CONTEXT_LDAP_QUERY_DN = 0x000002c5;
  static const AZ_PROP_APPLICATION_AUTHZ_INTERFACE_CLSID = 0x00000320;
  static const AZ_PROP_APPLICATION_VERSION = 0x00000321;
  static const AZ_MAX_APPLICATION_VERSION_LENGTH = 0x00000200;
  static const AZ_PROP_APPLICATION_NAME = 0x00000322;
  static const AZ_PROP_APPLICATION_BIZRULE_ENABLED = 0x00000323;
  static const AZ_PROP_APPLY_STORE_SACL = 0x00000384;
  static const AZ_PROP_GENERATE_AUDITS = 0x00000385;
  static const AZ_PROP_POLICY_ADMINS = 0x00000386;
  static const AZ_PROP_POLICY_READERS = 0x00000387;
  static const AZ_PROP_DELEGATED_POLICY_USERS = 0x00000388;
  static const AZ_PROP_POLICY_ADMINS_NAME = 0x00000389;
  static const AZ_PROP_POLICY_READERS_NAME = 0x0000038a;
  static const AZ_PROP_DELEGATED_POLICY_USERS_NAME = 0x0000038b;
  static const AZ_CLIENT_CONTEXT_SKIP_GROUP = 0x00000001;
  static const AZ_CLIENT_CONTEXT_SKIP_LDAP_QUERY = 0x00000001;
  static const AZ_CLIENT_CONTEXT_GET_GROUP_RECURSIVE = 0x00000002;
  static const AZ_CLIENT_CONTEXT_GET_GROUPS_STORE_LEVEL_ONLY = 0x00000002;
}

/// {@category Enum}
class MULTIPLE_TRUSTEE_OPERATION {
  static const NO_MULTIPLE_TRUSTEE = 0x00000000;
  static const TRUSTEE_IS_IMPERSONATE = 0x00000001;
}

/// {@category Enum}
class PROG_INVOKE_SETTING {
  static const ProgressInvokeNever = 0x00000001;
  static const ProgressInvokeEveryObject = 0x00000002;
  static const ProgressInvokeOnError = 0x00000003;
  static const ProgressCancelOperation = 0x00000004;
  static const ProgressRetryOperation = 0x00000005;
  static const ProgressInvokePrePostError = 0x00000006;
}

/// {@category Enum}
class SE_OBJECT_TYPE {
  static const SE_UNKNOWN_OBJECT_TYPE = 0x00000000;
  static const SE_FILE_OBJECT = 0x00000001;
  static const SE_SERVICE = 0x00000002;
  static const SE_PRINTER = 0x00000003;
  static const SE_REGISTRY_KEY = 0x00000004;
  static const SE_LMSHARE = 0x00000005;
  static const SE_KERNEL_OBJECT = 0x00000006;
  static const SE_WINDOW_OBJECT = 0x00000007;
  static const SE_DS_OBJECT = 0x00000008;
  static const SE_DS_OBJECT_ALL = 0x00000009;
  static const SE_PROVIDER_DEFINED_OBJECT = 0x0000000a;
  static const SE_WMIGUID_OBJECT = 0x0000000b;
  static const SE_REGISTRY_WOW64_32KEY = 0x0000000c;
  static const SE_REGISTRY_WOW64_64KEY = 0x0000000d;
}

/// {@category Enum}
class TREE_SEC_INFO {
  static const TREE_SEC_INFO_SET = 0x00000001;
  static const TREE_SEC_INFO_RESET = 0x00000002;
  static const TREE_SEC_INFO_RESET_KEEP_EXPLICIT = 0x00000003;
}

/// {@category Enum}
class TRUSTEE_FORM {
  static const TRUSTEE_IS_SID = 0x00000000;
  static const TRUSTEE_IS_NAME = 0x00000001;
  static const TRUSTEE_BAD_FORM = 0x00000002;
  static const TRUSTEE_IS_OBJECTS_AND_SID = 0x00000003;
  static const TRUSTEE_IS_OBJECTS_AND_NAME = 0x00000004;
}

/// {@category Enum}
class TRUSTEE_TYPE {
  static const TRUSTEE_IS_UNKNOWN = 0x00000000;
  static const TRUSTEE_IS_USER = 0x00000001;
  static const TRUSTEE_IS_GROUP = 0x00000002;
  static const TRUSTEE_IS_DOMAIN = 0x00000003;
  static const TRUSTEE_IS_ALIAS = 0x00000004;
  static const TRUSTEE_IS_WELL_KNOWN_GROUP = 0x00000005;
  static const TRUSTEE_IS_DELETED = 0x00000006;
  static const TRUSTEE_IS_INVALID = 0x00000007;
  static const TRUSTEE_IS_COMPUTER = 0x00000008;
}
