/// {@category Enum}
class ACE_FLAGS {
  static const CONTAINER_INHERIT_ACE = 0x00000002;
  static const FAILED_ACCESS_ACE_FLAG = 0x00000080;
  static const INHERIT_ONLY_ACE = 0x00000008;
  static const INHERITED_ACE = 0x00000010;
  static const NO_PROPAGATE_INHERIT_ACE = 0x00000004;
  static const OBJECT_INHERIT_ACE = 0x00000001;
  static const SUCCESSFUL_ACCESS_ACE_FLAG = 0x00000040;
  static const SUB_CONTAINERS_AND_OBJECTS_INHERIT = 0x00000003;
  static const SUB_CONTAINERS_ONLY_INHERIT = 0x00000002;
  static const SUB_OBJECTS_ONLY_INHERIT = 0x00000001;
  static const INHERIT_NO_PROPAGATE = 0x00000004;
  static const INHERIT_ONLY = 0x00000008;
  static const NO_INHERITANCE = 0x00000000;
  static const INHERIT_ONLY_ACE_ = 0x00000008;
}

/// {@category Enum}
class ACE_REVISION {
  static const ACL_REVISION = 0x00000002;
  static const ACL_REVISION_DS = 0x00000004;
}

/// {@category Enum}
class ACL_INFORMATION_CLASS {
  static const AclRevisionInformation = 0x00000001;
  static const AclSizeInformation = 0x00000002;
}

/// {@category Enum}
class AUDIT_EVENT_TYPE {
  static const AuditEventObjectAccess = 0x00000000;
  static const AuditEventDirectoryServiceAccess = 0x00000001;
}

/// {@category Enum}
class CLAIM_SECURITY_ATTRIBUTE_FLAGS {
  static const CLAIM_SECURITY_ATTRIBUTE_NON_INHERITABLE = 0x00000001;
  static const CLAIM_SECURITY_ATTRIBUTE_VALUE_CASE_SENSITIVE = 0x00000002;
  static const CLAIM_SECURITY_ATTRIBUTE_USE_FOR_DENY_ONLY = 0x00000004;
  static const CLAIM_SECURITY_ATTRIBUTE_DISABLED_BY_DEFAULT = 0x00000008;
  static const CLAIM_SECURITY_ATTRIBUTE_DISABLED = 0x00000010;
  static const CLAIM_SECURITY_ATTRIBUTE_MANDATORY = 0x00000020;
}

/// {@category Enum}
class CLAIM_SECURITY_ATTRIBUTE_VALUE_TYPE {
  static const CLAIM_SECURITY_ATTRIBUTE_TYPE_INT64 = 0x02020001;
  static const CLAIM_SECURITY_ATTRIBUTE_TYPE_UINT64 = 0x04020002;
  static const CLAIM_SECURITY_ATTRIBUTE_TYPE_STRING = 0x10020003;
  static const CLAIM_SECURITY_ATTRIBUTE_TYPE_OCTET_STRING = 0x05020010;
  static const CLAIM_SECURITY_ATTRIBUTE_TYPE_FQBN = 0x00020004;
  static const CLAIM_SECURITY_ATTRIBUTE_TYPE_SID = 0x06020005;
  static const CLAIM_SECURITY_ATTRIBUTE_TYPE_BOOLEAN = 0x20140006;
}

/// {@category Enum}
class CREATE_RESTRICTED_TOKEN_FLAGS {
  static const DISABLE_MAX_PRIVILEGE = 0x00000001;
  static const SANDBOX_INERT = 0x00000002;
  static const LUA_TOKEN = 0x00000004;
  static const WRITE_RESTRICTED = 0x00000008;
}

/// {@category Enum}
class ENUM_PERIOD {
  static const ENUM_PERIOD_INVALID = 0xffffffff;
  static const ENUM_PERIOD_SECONDS = 0x00000000;
  static const ENUM_PERIOD_MINUTES = 0x00000001;
  static const ENUM_PERIOD_HOURS = 0x00000002;
  static const ENUM_PERIOD_DAYS = 0x00000003;
  static const ENUM_PERIOD_WEEKS = 0x00000004;
  static const ENUM_PERIOD_MONTHS = 0x00000005;
  static const ENUM_PERIOD_YEARS = 0x00000006;
}

/// {@category Enum}
class LOGON32_LOGON {
  static const LOGON32_LOGON_BATCH = 0x00000004;
  static const LOGON32_LOGON_INTERACTIVE = 0x00000002;
  static const LOGON32_LOGON_NETWORK = 0x00000003;
  static const LOGON32_LOGON_NETWORK_CLEARTEXT = 0x00000008;
  static const LOGON32_LOGON_NEW_CREDENTIALS = 0x00000009;
  static const LOGON32_LOGON_SERVICE = 0x00000005;
  static const LOGON32_LOGON_UNLOCK = 0x00000007;
}

/// {@category Enum}
class LOGON32_PROVIDER {
  static const LOGON32_PROVIDER_DEFAULT = 0x00000000;
  static const LOGON32_PROVIDER_WINNT50 = 0x00000003;
  static const LOGON32_PROVIDER_WINNT40 = 0x00000002;
}

/// {@category Enum}
class MANDATORY_LEVEL {
  static const MandatoryLevelUntrusted = 0x00000000;
  static const MandatoryLevelLow = 0x00000001;
  static const MandatoryLevelMedium = 0x00000002;
  static const MandatoryLevelHigh = 0x00000003;
  static const MandatoryLevelSystem = 0x00000004;
  static const MandatoryLevelSecureProcess = 0x00000005;
  static const MandatoryLevelCount = 0x00000006;
}

/// {@category Enum}
class OBJECT_SECURITY_INFORMATION {
  static const ATTRIBUTE_SECURITY_INFORMATION = 0x00000020;
  static const BACKUP_SECURITY_INFORMATION = 0x00010000;
  static const DACL_SECURITY_INFORMATION = 0x00000004;
  static const GROUP_SECURITY_INFORMATION = 0x00000002;
  static const LABEL_SECURITY_INFORMATION = 0x00000010;
  static const OWNER_SECURITY_INFORMATION = 0x00000001;
  static const PROTECTED_DACL_SECURITY_INFORMATION = 0x80000000;
  static const PROTECTED_SACL_SECURITY_INFORMATION = 0x40000000;
  static const SACL_SECURITY_INFORMATION = 0x00000008;
  static const SCOPE_SECURITY_INFORMATION = 0x00000040;
  static const UNPROTECTED_DACL_SECURITY_INFORMATION = 0x20000000;
  static const UNPROTECTED_SACL_SECURITY_INFORMATION = 0x10000000;
}

/// {@category Enum}
class SECURITY_AUTO_INHERIT_FLAGS {
  static const SEF_AVOID_OWNER_CHECK = 0x00000010;
  static const SEF_AVOID_OWNER_RESTRICTION = 0x00001000;
  static const SEF_AVOID_PRIVILEGE_CHECK = 0x00000008;
  static const SEF_DACL_AUTO_INHERIT = 0x00000001;
  static const SEF_DEFAULT_DESCRIPTOR_FOR_OBJECT = 0x00000004;
  static const SEF_DEFAULT_GROUP_FROM_PARENT = 0x00000040;
  static const SEF_DEFAULT_OWNER_FROM_PARENT = 0x00000020;
  static const SEF_MACL_NO_EXECUTE_UP = 0x00000400;
  static const SEF_MACL_NO_READ_UP = 0x00000200;
  static const SEF_MACL_NO_WRITE_UP = 0x00000100;
  static const SEF_SACL_AUTO_INHERIT = 0x00000002;
}

/// {@category Enum}
class SECURITY_IMPERSONATION_LEVEL {
  static const SecurityAnonymous = 0x00000000;
  static const SecurityIdentification = 0x00000001;
  static const SecurityImpersonation = 0x00000002;
  static const SecurityDelegation = 0x00000003;
}

/// {@category Enum}
class SID_NAME_USE {
  static const SidTypeUser = 0x00000001;
  static const SidTypeGroup = 0x00000002;
  static const SidTypeDomain = 0x00000003;
  static const SidTypeAlias = 0x00000004;
  static const SidTypeWellKnownGroup = 0x00000005;
  static const SidTypeDeletedAccount = 0x00000006;
  static const SidTypeInvalid = 0x00000007;
  static const SidTypeUnknown = 0x00000008;
  static const SidTypeComputer = 0x00000009;
  static const SidTypeLabel = 0x0000000a;
  static const SidTypeLogonSession = 0x0000000b;
}

/// {@category Enum}
class SYSTEM_AUDIT_OBJECT_ACE_FLAGS {
  static const ACE_OBJECT_TYPE_PRESENT = 0x00000001;
  static const ACE_INHERITED_OBJECT_TYPE_PRESENT = 0x00000002;
}

/// {@category Enum}
class TOKEN_ACCESS_MASK {
  static const TOKEN_DELETE = 0x00010000;
  static const TOKEN_READ_CONTROL = 0x00020000;
  static const TOKEN_WRITE_DAC = 0x00040000;
  static const TOKEN_WRITE_OWNER = 0x00080000;
  static const TOKEN_ACCESS_SYSTEM_SECURITY = 0x01000000;
  static const TOKEN_ASSIGN_PRIMARY = 0x00000001;
  static const TOKEN_DUPLICATE = 0x00000002;
  static const TOKEN_IMPERSONATE = 0x00000004;
  static const TOKEN_QUERY = 0x00000008;
  static const TOKEN_QUERY_SOURCE = 0x00000010;
  static const TOKEN_ADJUST_PRIVILEGES = 0x00000020;
  static const TOKEN_ADJUST_GROUPS = 0x00000040;
  static const TOKEN_ADJUST_DEFAULT = 0x00000080;
  static const TOKEN_ADJUST_SESSIONID = 0x00000100;
  static const TOKEN_ALL_ACCESS = 0x000f00ff;
}

/// {@category Enum}
class TOKEN_ELEVATION_TYPE {
  static const TokenElevationTypeDefault = 0x00000001;
  static const TokenElevationTypeFull = 0x00000002;
  static const TokenElevationTypeLimited = 0x00000003;
}

/// {@category Enum}
class TOKEN_INFORMATION_CLASS {
  static const TokenUser = 0x00000001;
  static const TokenGroups = 0x00000002;
  static const TokenPrivileges = 0x00000003;
  static const TokenOwner = 0x00000004;
  static const TokenPrimaryGroup = 0x00000005;
  static const TokenDefaultDacl = 0x00000006;
  static const TokenSource = 0x00000007;
  static const TokenType = 0x00000008;
  static const TokenImpersonationLevel = 0x00000009;
  static const TokenStatistics = 0x0000000a;
  static const TokenRestrictedSids = 0x0000000b;
  static const TokenSessionId = 0x0000000c;
  static const TokenGroupsAndPrivileges = 0x0000000d;
  static const TokenSessionReference = 0x0000000e;
  static const TokenSandBoxInert = 0x0000000f;
  static const TokenAuditPolicy = 0x00000010;
  static const TokenOrigin = 0x00000011;
  static const TokenElevationType = 0x00000012;
  static const TokenLinkedToken = 0x00000013;
  static const TokenElevation = 0x00000014;
  static const TokenHasRestrictions = 0x00000015;
  static const TokenAccessInformation = 0x00000016;
  static const TokenVirtualizationAllowed = 0x00000017;
  static const TokenVirtualizationEnabled = 0x00000018;
  static const TokenIntegrityLevel = 0x00000019;
  static const TokenUIAccess = 0x0000001a;
  static const TokenMandatoryPolicy = 0x0000001b;
  static const TokenLogonSid = 0x0000001c;
  static const TokenIsAppContainer = 0x0000001d;
  static const TokenCapabilities = 0x0000001e;
  static const TokenAppContainerSid = 0x0000001f;
  static const TokenAppContainerNumber = 0x00000020;
  static const TokenUserClaimAttributes = 0x00000021;
  static const TokenDeviceClaimAttributes = 0x00000022;
  static const TokenRestrictedUserClaimAttributes = 0x00000023;
  static const TokenRestrictedDeviceClaimAttributes = 0x00000024;
  static const TokenDeviceGroups = 0x00000025;
  static const TokenRestrictedDeviceGroups = 0x00000026;
  static const TokenSecurityAttributes = 0x00000027;
  static const TokenIsRestricted = 0x00000028;
  static const TokenProcessTrustLevel = 0x00000029;
  static const TokenPrivateNameSpace = 0x0000002a;
  static const TokenSingletonAttributes = 0x0000002b;
  static const TokenBnoIsolation = 0x0000002c;
  static const TokenChildProcessFlags = 0x0000002d;
  static const TokenIsLessPrivilegedAppContainer = 0x0000002e;
  static const TokenIsSandboxed = 0x0000002f;
  static const MaxTokenInfoClass = 0x00000030;
}

/// {@category Enum}
class TOKEN_MANDATORY_POLICY_ID {
  static const TOKEN_MANDATORY_POLICY_OFF = 0x00000000;
  static const TOKEN_MANDATORY_POLICY_NO_WRITE_UP = 0x00000001;
  static const TOKEN_MANDATORY_POLICY_NEW_PROCESS_MIN = 0x00000002;
  static const TOKEN_MANDATORY_POLICY_VALID_MASK = 0x00000003;
}

/// {@category Enum}
class TOKEN_PRIVILEGES_ATTRIBUTES {
  static const SE_PRIVILEGE_ENABLED = 0x00000002;
  static const SE_PRIVILEGE_ENABLED_BY_DEFAULT = 0x00000001;
  static const SE_PRIVILEGE_REMOVED = 0x00000004;
  static const SE_PRIVILEGE_USED_FOR_ACCESS = 0x80000000;
}

/// {@category Enum}
class TOKEN_TYPE {
  static const TokenPrimary = 0x00000001;
  static const TokenImpersonation = 0x00000002;
}

/// {@category Enum}
class WELL_KNOWN_SID_TYPE {
  static const WinNullSid = 0x00000000;
  static const WinWorldSid = 0x00000001;
  static const WinLocalSid = 0x00000002;
  static const WinCreatorOwnerSid = 0x00000003;
  static const WinCreatorGroupSid = 0x00000004;
  static const WinCreatorOwnerServerSid = 0x00000005;
  static const WinCreatorGroupServerSid = 0x00000006;
  static const WinNtAuthoritySid = 0x00000007;
  static const WinDialupSid = 0x00000008;
  static const WinNetworkSid = 0x00000009;
  static const WinBatchSid = 0x0000000a;
  static const WinInteractiveSid = 0x0000000b;
  static const WinServiceSid = 0x0000000c;
  static const WinAnonymousSid = 0x0000000d;
  static const WinProxySid = 0x0000000e;
  static const WinEnterpriseControllersSid = 0x0000000f;
  static const WinSelfSid = 0x00000010;
  static const WinAuthenticatedUserSid = 0x00000011;
  static const WinRestrictedCodeSid = 0x00000012;
  static const WinTerminalServerSid = 0x00000013;
  static const WinRemoteLogonIdSid = 0x00000014;
  static const WinLogonIdsSid = 0x00000015;
  static const WinLocalSystemSid = 0x00000016;
  static const WinLocalServiceSid = 0x00000017;
  static const WinNetworkServiceSid = 0x00000018;
  static const WinBuiltinDomainSid = 0x00000019;
  static const WinBuiltinAdministratorsSid = 0x0000001a;
  static const WinBuiltinUsersSid = 0x0000001b;
  static const WinBuiltinGuestsSid = 0x0000001c;
  static const WinBuiltinPowerUsersSid = 0x0000001d;
  static const WinBuiltinAccountOperatorsSid = 0x0000001e;
  static const WinBuiltinSystemOperatorsSid = 0x0000001f;
  static const WinBuiltinPrintOperatorsSid = 0x00000020;
  static const WinBuiltinBackupOperatorsSid = 0x00000021;
  static const WinBuiltinReplicatorSid = 0x00000022;
  static const WinBuiltinPreWindows2000CompatibleAccessSid = 0x00000023;
  static const WinBuiltinRemoteDesktopUsersSid = 0x00000024;
  static const WinBuiltinNetworkConfigurationOperatorsSid = 0x00000025;
  static const WinAccountAdministratorSid = 0x00000026;
  static const WinAccountGuestSid = 0x00000027;
  static const WinAccountKrbtgtSid = 0x00000028;
  static const WinAccountDomainAdminsSid = 0x00000029;
  static const WinAccountDomainUsersSid = 0x0000002a;
  static const WinAccountDomainGuestsSid = 0x0000002b;
  static const WinAccountComputersSid = 0x0000002c;
  static const WinAccountControllersSid = 0x0000002d;
  static const WinAccountCertAdminsSid = 0x0000002e;
  static const WinAccountSchemaAdminsSid = 0x0000002f;
  static const WinAccountEnterpriseAdminsSid = 0x00000030;
  static const WinAccountPolicyAdminsSid = 0x00000031;
  static const WinAccountRasAndIasServersSid = 0x00000032;
  static const WinNTLMAuthenticationSid = 0x00000033;
  static const WinDigestAuthenticationSid = 0x00000034;
  static const WinSChannelAuthenticationSid = 0x00000035;
  static const WinThisOrganizationSid = 0x00000036;
  static const WinOtherOrganizationSid = 0x00000037;
  static const WinBuiltinIncomingForestTrustBuildersSid = 0x00000038;
  static const WinBuiltinPerfMonitoringUsersSid = 0x00000039;
  static const WinBuiltinPerfLoggingUsersSid = 0x0000003a;
  static const WinBuiltinAuthorizationAccessSid = 0x0000003b;
  static const WinBuiltinTerminalServerLicenseServersSid = 0x0000003c;
  static const WinBuiltinDCOMUsersSid = 0x0000003d;
  static const WinBuiltinIUsersSid = 0x0000003e;
  static const WinIUserSid = 0x0000003f;
  static const WinBuiltinCryptoOperatorsSid = 0x00000040;
  static const WinUntrustedLabelSid = 0x00000041;
  static const WinLowLabelSid = 0x00000042;
  static const WinMediumLabelSid = 0x00000043;
  static const WinHighLabelSid = 0x00000044;
  static const WinSystemLabelSid = 0x00000045;
  static const WinWriteRestrictedCodeSid = 0x00000046;
  static const WinCreatorOwnerRightsSid = 0x00000047;
  static const WinCacheablePrincipalsGroupSid = 0x00000048;
  static const WinNonCacheablePrincipalsGroupSid = 0x00000049;
  static const WinEnterpriseReadonlyControllersSid = 0x0000004a;
  static const WinAccountReadonlyControllersSid = 0x0000004b;
  static const WinBuiltinEventLogReadersGroup = 0x0000004c;
  static const WinNewEnterpriseReadonlyControllersSid = 0x0000004d;
  static const WinBuiltinCertSvcDComAccessGroup = 0x0000004e;
  static const WinMediumPlusLabelSid = 0x0000004f;
  static const WinLocalLogonSid = 0x00000050;
  static const WinConsoleLogonSid = 0x00000051;
  static const WinThisOrganizationCertificateSid = 0x00000052;
  static const WinApplicationPackageAuthoritySid = 0x00000053;
  static const WinBuiltinAnyPackageSid = 0x00000054;
  static const WinCapabilityInternetClientSid = 0x00000055;
  static const WinCapabilityInternetClientServerSid = 0x00000056;
  static const WinCapabilityPrivateNetworkClientServerSid = 0x00000057;
  static const WinCapabilityPicturesLibrarySid = 0x00000058;
  static const WinCapabilityVideosLibrarySid = 0x00000059;
  static const WinCapabilityMusicLibrarySid = 0x0000005a;
  static const WinCapabilityDocumentsLibrarySid = 0x0000005b;
  static const WinCapabilitySharedUserCertificatesSid = 0x0000005c;
  static const WinCapabilityEnterpriseAuthenticationSid = 0x0000005d;
  static const WinCapabilityRemovableStorageSid = 0x0000005e;
  static const WinBuiltinRDSRemoteAccessServersSid = 0x0000005f;
  static const WinBuiltinRDSEndpointServersSid = 0x00000060;
  static const WinBuiltinRDSManagementServersSid = 0x00000061;
  static const WinUserModeDriversSid = 0x00000062;
  static const WinBuiltinHyperVAdminsSid = 0x00000063;
  static const WinAccountCloneableControllersSid = 0x00000064;
  static const WinBuiltinAccessControlAssistanceOperatorsSid = 0x00000065;
  static const WinBuiltinRemoteManagementUsersSid = 0x00000066;
  static const WinAuthenticationAuthorityAssertedSid = 0x00000067;
  static const WinAuthenticationServiceAssertedSid = 0x00000068;
  static const WinLocalAccountSid = 0x00000069;
  static const WinLocalAccountAndAdministratorSid = 0x0000006a;
  static const WinAccountProtectedUsersSid = 0x0000006b;
  static const WinCapabilityAppointmentsSid = 0x0000006c;
  static const WinCapabilityContactsSid = 0x0000006d;
  static const WinAccountDefaultSystemManagedSid = 0x0000006e;
  static const WinBuiltinDefaultSystemManagedGroupSid = 0x0000006f;
  static const WinBuiltinStorageReplicaAdminsSid = 0x00000070;
  static const WinAccountKeyAdminsSid = 0x00000071;
  static const WinAccountEnterpriseKeyAdminsSid = 0x00000072;
  static const WinAuthenticationKeyTrustSid = 0x00000073;
  static const WinAuthenticationKeyPropertyMFASid = 0x00000074;
  static const WinAuthenticationKeyPropertyAttestationSid = 0x00000075;
  static const WinAuthenticationFreshKeyAuthSid = 0x00000076;
  static const WinBuiltinDeviceOwnersSid = 0x00000077;
}
