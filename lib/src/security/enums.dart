/// {@category Enum}
class CREDUI_FLAGS {
  static const CREDUI_FLAGS_ALWAYS_SHOW_UI = 0x00000080;
  static const CREDUI_FLAGS_COMPLETE_USERNAME = 0x00000800;
  static const CREDUI_FLAGS_DO_NOT_PERSIST = 0x00000002;
  static const CREDUI_FLAGS_EXCLUDE_CERTIFICATES = 0x00000008;
  static const CREDUI_FLAGS_EXPECT_CONFIRMATION = 0x00020000;
  static const CREDUI_FLAGS_GENERIC_CREDENTIALS = 0x00040000;
  static const CREDUI_FLAGS_INCORRECT_PASSWORD = 0x00000001;
  static const CREDUI_FLAGS_KEEP_USERNAME = 0x00100000;
  static const CREDUI_FLAGS_PASSWORD_ONLY_OK = 0x00000200;
  static const CREDUI_FLAGS_PERSIST = 0x00001000;
  static const CREDUI_FLAGS_REQUEST_ADMINISTRATOR = 0x00000004;
  static const CREDUI_FLAGS_REQUIRE_CERTIFICATE = 0x00000010;
  static const CREDUI_FLAGS_REQUIRE_SMARTCARD = 0x00000100;
  static const CREDUI_FLAGS_SERVER_CREDENTIAL = 0x00004000;
  static const CREDUI_FLAGS_SHOW_SAVE_CHECK_BOX = 0x00000040;
  static const CREDUI_FLAGS_USERNAME_TARGET_CREDENTIALS = 0x00080000;
  static const CREDUI_FLAGS_VALIDATE_USERNAME = 0x00000400;
}

/// {@category Enum}
class CREDUIWIN {
  static const CREDUIWIN_GENERIC = 0x00000001;
  static const CREDUIWIN_CHECKBOX = 0x00000002;
  static const CREDUIWIN_AUTHPACKAGE_ONLY = 0x00000010;
  static const CREDUIWIN_IN_CRED_ONLY = 0x00000020;
  static const CREDUIWIN_ENUMERATE_ADMINS = 0x00000100;
  static const CREDUIWIN_ENUMERATE_CURRENT_USER = 0x00000200;
  static const CREDUIWIN_SECURE_PROMPT = 0x00001000;
  static const CREDUIWIN_PREPROMPTING = 0x00002000;
  static const CREDUIWIN_PACK_32_WOW = 0x10000000;
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
class SECURITY_IMPERSONATION_LEVEL {
  static const SecurityAnonymous = 0x00000000;
  static const SecurityIdentification = 0x00000001;
  static const SecurityImpersonation = 0x00000002;
  static const SecurityDelegation = 0x00000003;
}

/// {@category Enum}
class TOKEN_TYPE {
  static const TokenPrimary = 0x00000001;
  static const TokenImpersonation = 0x00000002;
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
  static const TokenOriginatingProcessTrustLevel = 0x00000030;
  static const MaxTokenInfoClass = 0x00000031;
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
class MSA_INFO_LEVEL {
  static const MsaInfoLevel0 = 0x00000000;
  static const MsaInfoLevelMax = 0x00000001;
}

/// {@category Enum}
class MSA_INFO_STATE {
  static const MsaInfoNotExist = 0x00000001;
  static const MsaInfoNotService = 0x00000002;
  static const MsaInfoCannotInstall = 0x00000003;
  static const MsaInfoCanInstall = 0x00000004;
  static const MsaInfoInstalled = 0x00000005;
}

/// {@category Enum}
class PROCESS_INFORMATION_CLASS {
  static const ProcessMemoryPriority = 0x00000000;
  static const ProcessMemoryExhaustionInfo = 0x00000001;
  static const ProcessAppMemoryInfo = 0x00000002;
  static const ProcessInPrivateInfo = 0x00000003;
  static const ProcessPowerThrottling = 0x00000004;
  static const ProcessReservedValue1 = 0x00000005;
  static const ProcessTelemetryCoverageInfo = 0x00000006;
  static const ProcessProtectionLevelInfo = 0x00000007;
  static const ProcessLeapSecondInfo = 0x00000008;
  static const ProcessInformationClassMax = 0x00000009;
}

/// {@category Enum}
class ECC_CURVE_TYPE_ENUM {
  static const BCRYPT_ECC_PRIME_SHORT_WEIERSTRASS_CURVE = 0x00000001;
  static const BCRYPT_ECC_PRIME_TWISTED_EDWARDS_CURVE = 0x00000002;
  static const BCRYPT_ECC_PRIME_MONTGOMERY_CURVE = 0x00000003;
}

/// {@category Enum}
class ECC_CURVE_ALG_ID_ENUM {
  static const BCRYPT_NO_CURVE_GENERATION_ALG_ID = 0x00000000;
}

/// {@category Enum}
class HASHALGORITHM_ENUM {
  static const DSA_HASH_ALGORITHM_SHA1 = 0x00000000;
  static const DSA_HASH_ALGORITHM_SHA256 = 0x00000001;
  static const DSA_HASH_ALGORITHM_SHA512 = 0x00000002;
}

/// {@category Enum}
class DSAFIPSVERSION_ENUM {
  static const DSA_FIPS186_2 = 0x00000000;
  static const DSA_FIPS186_3 = 0x00000001;
}

/// {@category Enum}
class BCRYPT_HASH_OPERATION_TYPE {
  static const BCRYPT_HASH_OPERATION_HASH_DATA = 0x00000001;
  static const BCRYPT_HASH_OPERATION_FINISH_HASH = 0x00000002;
}

/// {@category Enum}
class BCRYPT_MULTI_OPERATION_TYPE {
  static const BCRYPT_OPERATION_TYPE_HASH = 0x00000001;
}

/// {@category Enum}
class CertKeyType {
  static const KeyTypeOther = 0x00000000;
  static const KeyTypeVirtualSmartCard = 0x00000001;
  static const KeyTypePhysicalSmartCard = 0x00000002;
  static const KeyTypePassport = 0x00000003;
  static const KeyTypePassportRemote = 0x00000004;
  static const KeyTypePassportSmartCard = 0x00000005;
  static const KeyTypeHardware = 0x00000006;
  static const KeyTypeSoftware = 0x00000007;
  static const KeyTypeSelfSigned = 0x00000008;
}

/// {@category Enum}
class READER_SEL_REQUEST_MATCH_TYPE {
  static const RSR_MATCH_TYPE_READER_AND_CONTAINER = 0x00000001;
  static const RSR_MATCH_TYPE_SERIAL_NUMBER = 0x00000002;
  static const RSR_MATCH_TYPE_ALL_CARDS = 0x00000003;
}

/// {@category Enum}
class SC_ACTION_TYPE {
  static const SC_ACTION_NONE = 0x00000000;
  static const SC_ACTION_RESTART = 0x00000001;
  static const SC_ACTION_REBOOT = 0x00000002;
  static const SC_ACTION_RUN_COMMAND = 0x00000003;
  static const SC_ACTION_OWN_RESTART = 0x00000004;
}

/// {@category Enum}
class SC_STATUS_TYPE {
  static const SC_STATUS_PROCESS_INFO = 0x00000000;
}

/// {@category Enum}
class SC_ENUM_TYPE {
  static const SC_ENUM_PROCESS_INFO = 0x00000000;
}

/// {@category Enum}
class SC_EVENT_TYPE {
  static const SC_EVENT_DATABASE_CHANGE = 0x00000000;
  static const SC_EVENT_PROPERTY_CHANGE = 0x00000001;
  static const SC_EVENT_STATUS_CHANGE = 0x00000002;
}

/// {@category Enum}
class SERVICE_REGISTRY_STATE_TYPE {
  static const ServiceRegistryStateParameters = 0x00000000;
  static const ServiceRegistryStatePersistent = 0x00000001;
  static const MaxServiceRegistryStateType = 0x00000002;
}

/// {@category Enum}
class SERVICE_DIRECTORY_TYPE {
  static const ServiceDirectoryPersistentState = 0x00000000;
  static const ServiceDirectoryTypeMax = 0x00000001;
}

/// {@category Enum}
class LSA_LOOKUP_DOMAIN_INFO_CLASS {
  static const AccountDomainInformation = 0x00000005;
  static const DnsDomainInformation = 0x0000000c;
}

/// {@category Enum}
class SECURITY_LOGON_TYPE {
  static const UndefinedLogonType = 0x00000000;
  static const Interactive = 0x00000002;
  static const Network = 0x00000003;
  static const Batch = 0x00000004;
  static const Service = 0x00000005;
  static const Proxy = 0x00000006;
  static const Unlock = 0x00000007;
  static const NetworkCleartext = 0x00000008;
  static const NewCredentials = 0x00000009;
  static const RemoteInteractive = 0x0000000a;
  static const CachedInteractive = 0x0000000b;
  static const CachedRemoteInteractive = 0x0000000c;
  static const CachedUnlock = 0x0000000d;
}

/// {@category Enum}
class SE_ADT_PARAMETER_TYPE {
  static const SeAdtParmTypeNone = 0x00000000;
  static const SeAdtParmTypeString = 0x00000001;
  static const SeAdtParmTypeFileSpec = 0x00000002;
  static const SeAdtParmTypeUlong = 0x00000003;
  static const SeAdtParmTypeSid = 0x00000004;
  static const SeAdtParmTypeLogonId = 0x00000005;
  static const SeAdtParmTypeNoLogonId = 0x00000006;
  static const SeAdtParmTypeAccessMask = 0x00000007;
  static const SeAdtParmTypePrivs = 0x00000008;
  static const SeAdtParmTypeObjectTypes = 0x00000009;
  static const SeAdtParmTypeHexUlong = 0x0000000a;
  static const SeAdtParmTypePtr = 0x0000000b;
  static const SeAdtParmTypeTime = 0x0000000c;
  static const SeAdtParmTypeGuid = 0x0000000d;
  static const SeAdtParmTypeLuid = 0x0000000e;
  static const SeAdtParmTypeHexInt64 = 0x0000000f;
  static const SeAdtParmTypeStringList = 0x00000010;
  static const SeAdtParmTypeSidList = 0x00000011;
  static const SeAdtParmTypeDuration = 0x00000012;
  static const SeAdtParmTypeUserAccountControl = 0x00000013;
  static const SeAdtParmTypeNoUac = 0x00000014;
  static const SeAdtParmTypeMessage = 0x00000015;
  static const SeAdtParmTypeDateTime = 0x00000016;
  static const SeAdtParmTypeSockAddr = 0x00000017;
  static const SeAdtParmTypeSD = 0x00000018;
  static const SeAdtParmTypeLogonHours = 0x00000019;
  static const SeAdtParmTypeLogonIdNoSid = 0x0000001a;
  static const SeAdtParmTypeUlongNoConv = 0x0000001b;
  static const SeAdtParmTypeSockAddrNoPort = 0x0000001c;
  static const SeAdtParmTypeAccessReason = 0x0000001d;
  static const SeAdtParmTypeStagingReason = 0x0000001e;
  static const SeAdtParmTypeResourceAttribute = 0x0000001f;
  static const SeAdtParmTypeClaims = 0x00000020;
  static const SeAdtParmTypeLogonIdAsSid = 0x00000021;
  static const SeAdtParmTypeMultiSzString = 0x00000022;
  static const SeAdtParmTypeLogonIdEx = 0x00000023;
}

/// {@category Enum}
class POLICY_AUDIT_EVENT_TYPE {
  static const AuditCategorySystem = 0x00000000;
  static const AuditCategoryLogon = 0x00000001;
  static const AuditCategoryObjectAccess = 0x00000002;
  static const AuditCategoryPrivilegeUse = 0x00000003;
  static const AuditCategoryDetailedTracking = 0x00000004;
  static const AuditCategoryPolicyChange = 0x00000005;
  static const AuditCategoryAccountManagement = 0x00000006;
  static const AuditCategoryDirectoryServiceAccess = 0x00000007;
  static const AuditCategoryAccountLogon = 0x00000008;
}

/// {@category Enum}
class POLICY_LSA_SERVER_ROLE {
  static const PolicyServerRoleBackup = 0x00000002;
  static const PolicyServerRolePrimary = 0x00000003;
}

/// {@category Enum}
class POLICY_INFORMATION_CLASS {
  static const PolicyAuditLogInformation = 0x00000001;
  static const PolicyAuditEventsInformation = 0x00000002;
  static const PolicyPrimaryDomainInformation = 0x00000003;
  static const PolicyPdAccountInformation = 0x00000004;
  static const PolicyAccountDomainInformation = 0x00000005;
  static const PolicyLsaServerRoleInformation = 0x00000006;
  static const PolicyReplicaSourceInformation = 0x00000007;
  static const PolicyDefaultQuotaInformation = 0x00000008;
  static const PolicyModificationInformation = 0x00000009;
  static const PolicyAuditFullSetInformation = 0x0000000a;
  static const PolicyAuditFullQueryInformation = 0x0000000b;
  static const PolicyDnsDomainInformation = 0x0000000c;
  static const PolicyDnsDomainInformationInt = 0x0000000d;
  static const PolicyLocalAccountDomainInformation = 0x0000000e;
  static const PolicyMachineAccountInformation = 0x0000000f;
  static const PolicyLastEntry = 0x00000010;
}

/// {@category Enum}
class POLICY_DOMAIN_INFORMATION_CLASS {
  static const PolicyDomainEfsInformation = 0x00000002;
  static const PolicyDomainKerberosTicketInformation = 0x00000003;
}

/// {@category Enum}
class POLICY_NOTIFICATION_INFORMATION_CLASS {
  static const PolicyNotifyAuditEventsInformation = 0x00000001;
  static const PolicyNotifyAccountDomainInformation = 0x00000002;
  static const PolicyNotifyServerRoleInformation = 0x00000003;
  static const PolicyNotifyDnsDomainInformation = 0x00000004;
  static const PolicyNotifyDomainEfsInformation = 0x00000005;
  static const PolicyNotifyDomainKerberosTicketInformation = 0x00000006;
  static const PolicyNotifyMachineAccountPasswordInformation = 0x00000007;
  static const PolicyNotifyGlobalSaclInformation = 0x00000008;
  static const PolicyNotifyMax = 0x00000009;
}

/// {@category Enum}
class TRUSTED_INFORMATION_CLASS {
  static const TrustedDomainNameInformation = 0x00000001;
  static const TrustedControllersInformation = 0x00000002;
  static const TrustedPosixOffsetInformation = 0x00000003;
  static const TrustedPasswordInformation = 0x00000004;
  static const TrustedDomainInformationBasic = 0x00000005;
  static const TrustedDomainInformationEx = 0x00000006;
  static const TrustedDomainAuthInformation = 0x00000007;
  static const TrustedDomainFullInformation = 0x00000008;
  static const TrustedDomainAuthInformationInternal = 0x00000009;
  static const TrustedDomainFullInformationInternal = 0x0000000a;
  static const TrustedDomainInformationEx2Internal = 0x0000000b;
  static const TrustedDomainFullInformation2Internal = 0x0000000c;
  static const TrustedDomainSupportedEncryptionTypes = 0x0000000d;
}

/// {@category Enum}
class LSA_FOREST_TRUST_RECORD_TYPE {
  static const ForestTrustTopLevelName = 0x00000000;
  static const ForestTrustTopLevelNameEx = 0x00000001;
  static const ForestTrustDomainInfo = 0x00000002;
  static const ForestTrustRecordTypeLast = 0x00000002;
}

/// {@category Enum}
class LSA_FOREST_TRUST_COLLISION_RECORD_TYPE {
  static const CollisionTdo = 0x00000000;
  static const CollisionXref = 0x00000001;
  static const CollisionOther = 0x00000002;
}

/// {@category Enum}
class NEGOTIATE_MESSAGES {
  static const NegEnumPackagePrefixes = 0x00000000;
  static const NegGetCallerName = 0x00000001;
  static const NegTransferCredentials = 0x00000002;
  static const NegMsgReserved1 = 0x00000003;
  static const NegCallPackageMax = 0x00000004;
}

/// {@category Enum}
class MSV1_0_LOGON_SUBMIT_TYPE {
  static const MsV1_0InteractiveLogon = 0x00000002;
  static const MsV1_0Lm20Logon = 0x00000003;
  static const MsV1_0NetworkLogon = 0x00000004;
  static const MsV1_0SubAuthLogon = 0x00000005;
  static const MsV1_0WorkstationUnlockLogon = 0x00000007;
  static const MsV1_0S4ULogon = 0x0000000c;
  static const MsV1_0VirtualLogon = 0x00000052;
  static const MsV1_0NoElevationLogon = 0x00000053;
  static const MsV1_0LuidLogon = 0x00000054;
}

/// {@category Enum}
class MSV1_0_PROFILE_BUFFER_TYPE {
  static const MsV1_0InteractiveProfile = 0x00000002;
  static const MsV1_0Lm20LogonProfile = 0x00000003;
  static const MsV1_0SmartCardProfile = 0x00000004;
}

/// {@category Enum}
class MSV1_0_CREDENTIAL_KEY_TYPE {
  static const InvalidCredKey = 0x00000000;
  static const DeprecatedIUMCredKey = 0x00000001;
  static const DomainUserCredKey = 0x00000002;
  static const LocalUserCredKey = 0x00000003;
  static const ExternallySuppliedCredKey = 0x00000004;
}

/// {@category Enum}
class MSV1_0_AVID {
  static const MsvAvEOL = 0x00000000;
  static const MsvAvNbComputerName = 0x00000001;
  static const MsvAvNbDomainName = 0x00000002;
  static const MsvAvDnsComputerName = 0x00000003;
  static const MsvAvDnsDomainName = 0x00000004;
  static const MsvAvDnsTreeName = 0x00000005;
  static const MsvAvFlags = 0x00000006;
  static const MsvAvTimestamp = 0x00000007;
  static const MsvAvRestrictions = 0x00000008;
  static const MsvAvTargetName = 0x00000009;
  static const MsvAvChannelBindings = 0x0000000a;
}

/// {@category Enum}
class MSV1_0_PROTOCOL_MESSAGE_TYPE {
  static const MsV1_0Lm20ChallengeRequest = 0x00000000;
  static const MsV1_0Lm20GetChallengeResponse = 0x00000001;
  static const MsV1_0EnumerateUsers = 0x00000002;
  static const MsV1_0GetUserInfo = 0x00000003;
  static const MsV1_0ReLogonUsers = 0x00000004;
  static const MsV1_0ChangePassword = 0x00000005;
  static const MsV1_0ChangeCachedPassword = 0x00000006;
  static const MsV1_0GenericPassthrough = 0x00000007;
  static const MsV1_0CacheLogon = 0x00000008;
  static const MsV1_0SubAuth = 0x00000009;
  static const MsV1_0DeriveCredential = 0x0000000a;
  static const MsV1_0CacheLookup = 0x0000000b;
  static const MsV1_0SetProcessOption = 0x0000000c;
  static const MsV1_0ConfigLocalAliases = 0x0000000d;
  static const MsV1_0ClearCachedCredentials = 0x0000000e;
  static const MsV1_0LookupToken = 0x0000000f;
  static const MsV1_0ValidateAuth = 0x00000010;
  static const MsV1_0CacheLookupEx = 0x00000011;
  static const MsV1_0GetCredentialKey = 0x00000012;
  static const MsV1_0SetThreadOption = 0x00000013;
  static const MsV1_0DecryptDpapiMasterKey = 0x00000014;
  static const MsV1_0GetStrongCredentialKey = 0x00000015;
  static const MsV1_0TransferCred = 0x00000016;
  static const MsV1_0ProvisionTbal = 0x00000017;
  static const MsV1_0DeleteTbalSecrets = 0x00000018;
}

/// {@category Enum}
class KERB_LOGON_SUBMIT_TYPE {
  static const KerbInteractiveLogon = 0x00000002;
  static const KerbSmartCardLogon = 0x00000006;
  static const KerbWorkstationUnlockLogon = 0x00000007;
  static const KerbSmartCardUnlockLogon = 0x00000008;
  static const KerbProxyLogon = 0x00000009;
  static const KerbTicketLogon = 0x0000000a;
  static const KerbTicketUnlockLogon = 0x0000000b;
  static const KerbS4ULogon = 0x0000000c;
  static const KerbCertificateLogon = 0x0000000d;
  static const KerbCertificateS4ULogon = 0x0000000e;
  static const KerbCertificateUnlockLogon = 0x0000000f;
  static const KerbNoElevationLogon = 0x00000053;
  static const KerbLuidLogon = 0x00000054;
}

/// {@category Enum}
class KERB_PROFILE_BUFFER_TYPE {
  static const KerbInteractiveProfile = 0x00000002;
  static const KerbSmartCardProfile = 0x00000004;
  static const KerbTicketProfile = 0x00000006;
}

/// {@category Enum}
class KERB_PROTOCOL_MESSAGE_TYPE {
  static const KerbDebugRequestMessage = 0x00000000;
  static const KerbQueryTicketCacheMessage = 0x00000001;
  static const KerbChangeMachinePasswordMessage = 0x00000002;
  static const KerbVerifyPacMessage = 0x00000003;
  static const KerbRetrieveTicketMessage = 0x00000004;
  static const KerbUpdateAddressesMessage = 0x00000005;
  static const KerbPurgeTicketCacheMessage = 0x00000006;
  static const KerbChangePasswordMessage = 0x00000007;
  static const KerbRetrieveEncodedTicketMessage = 0x00000008;
  static const KerbDecryptDataMessage = 0x00000009;
  static const KerbAddBindingCacheEntryMessage = 0x0000000a;
  static const KerbSetPasswordMessage = 0x0000000b;
  static const KerbSetPasswordExMessage = 0x0000000c;
  static const KerbVerifyCredentialsMessage = 0x0000000d;
  static const KerbQueryTicketCacheExMessage = 0x0000000e;
  static const KerbPurgeTicketCacheExMessage = 0x0000000f;
  static const KerbRefreshSmartcardCredentialsMessage = 0x00000010;
  static const KerbAddExtraCredentialsMessage = 0x00000011;
  static const KerbQuerySupplementalCredentialsMessage = 0x00000012;
  static const KerbTransferCredentialsMessage = 0x00000013;
  static const KerbQueryTicketCacheEx2Message = 0x00000014;
  static const KerbSubmitTicketMessage = 0x00000015;
  static const KerbAddExtraCredentialsExMessage = 0x00000016;
  static const KerbQueryKdcProxyCacheMessage = 0x00000017;
  static const KerbPurgeKdcProxyCacheMessage = 0x00000018;
  static const KerbQueryTicketCacheEx3Message = 0x00000019;
  static const KerbCleanupMachinePkinitCredsMessage = 0x0000001a;
  static const KerbAddBindingCacheEntryExMessage = 0x0000001b;
  static const KerbQueryBindingCacheMessage = 0x0000001c;
  static const KerbPurgeBindingCacheMessage = 0x0000001d;
  static const KerbPinKdcMessage = 0x0000001e;
  static const KerbUnpinAllKdcsMessage = 0x0000001f;
  static const KerbQueryDomainExtendedPoliciesMessage = 0x00000020;
  static const KerbQueryS4U2ProxyCacheMessage = 0x00000021;
  static const KerbRetrieveKeyTabMessage = 0x00000022;
}

/// {@category Enum}
class KERB_CERTIFICATE_INFO_TYPE {
  static const CertHashInfo = 0x00000001;
}

/// {@category Enum}
class PKU2U_LOGON_SUBMIT_TYPE {
  static const Pku2uCertificateS4ULogon = 0x0000000e;
}

/// {@category Enum}
class SEC_APPLICATION_PROTOCOL_NEGOTIATION_EXT {
  static const SecApplicationProtocolNegotiationExt_None = 0x00000000;
  static const SecApplicationProtocolNegotiationExt_NPN = 0x00000001;
  static const SecApplicationProtocolNegotiationExt_ALPN = 0x00000002;
}

/// {@category Enum}
class SEC_TRAFFIC_SECRET_TYPE {
  static const SecTrafficSecret_None = 0x00000000;
  static const SecTrafficSecret_Client = 0x00000001;
  static const SecTrafficSecret_Server = 0x00000002;
}

/// {@category Enum}
class SECPKG_CRED_CLASS {
  static const SecPkgCredClass_None = 0x00000000;
  static const SecPkgCredClass_Ephemeral = 0x0000000a;
  static const SecPkgCredClass_PersistedGeneric = 0x00000014;
  static const SecPkgCredClass_PersistedSpecific = 0x0000001e;
  static const SecPkgCredClass_Explicit = 0x00000028;
}

/// {@category Enum}
class SECPKG_ATTR_LCT_STATUS {
  static const SecPkgAttrLastClientTokenYes = 0x00000000;
  static const SecPkgAttrLastClientTokenNo = 0x00000001;
  static const SecPkgAttrLastClientTokenMaybe = 0x00000002;
}

/// {@category Enum}
class SEC_APPLICATION_PROTOCOL_NEGOTIATION_STATUS {
  static const SecApplicationProtocolNegotiationStatus_None = 0x00000000;
  static const SecApplicationProtocolNegotiationStatus_Success = 0x00000001;
  static const SecApplicationProtocolNegotiationStatus_SelectedClientOnly = 0x00000002;
}

/// {@category Enum}
class SecDelegationType {
  static const SecFull = 0x00000000;
  static const SecService = 0x00000001;
  static const SecTree = 0x00000002;
  static const SecDirectory = 0x00000003;
  static const SecObject = 0x00000004;
}

/// {@category Enum}
class SASL_AUTHZID_STATE {
  static const Sasl_AuthZIDForbidden = 0x00000000;
  static const Sasl_AuthZIDProcessed = 0x00000001;
}

/// {@category Enum}
class CRED_MARSHAL_TYPE {
  static const CertCredential = 0x00000001;
  static const UsernameTargetCredential = 0x00000002;
  static const BinaryBlobCredential = 0x00000003;
  static const UsernameForPackedCredentials = 0x00000004;
  static const BinaryBlobForSystem = 0x00000005;
}

/// {@category Enum}
class CRED_PROTECTION_TYPE {
  static const CredUnprotected = 0x00000000;
  static const CredUserProtection = 0x00000001;
  static const CredTrustedProtection = 0x00000002;
  static const CredForSystemProtection = 0x00000003;
}

/// {@category Enum}
class LSA_TOKEN_INFORMATION_TYPE {
  static const LsaTokenInformationNull = 0x00000000;
  static const LsaTokenInformationV1 = 0x00000001;
  static const LsaTokenInformationV2 = 0x00000002;
  static const LsaTokenInformationV3 = 0x00000003;
}

/// {@category Enum}
class SECPKG_EXTENDED_INFORMATION_CLASS {
  static const SecpkgGssInfo = 0x00000001;
  static const SecpkgContextThunks = 0x00000002;
  static const SecpkgMutualAuthLevel = 0x00000003;
  static const SecpkgWowClientDll = 0x00000004;
  static const SecpkgExtraOids = 0x00000005;
  static const SecpkgMaxInfo = 0x00000006;
  static const SecpkgNego2Info = 0x00000007;
}

/// {@category Enum}
class SECPKG_CALL_PACKAGE_MESSAGE_TYPE {
  static const SecPkgCallPackageMinMessage = 0x00000400;
  static const SecPkgCallPackagePinDcMessage = 0x00000400;
  static const SecPkgCallPackageUnpinAllDcsMessage = 0x00000401;
  static const SecPkgCallPackageTransferCredMessage = 0x00000402;
  static const SecPkgCallPackageMaxMessage = 0x00000402;
}

/// {@category Enum}
class SECPKG_SESSIONINFO_TYPE {
  static const SecSessionPrimaryCred = 0x00000000;
}

/// {@category Enum}
class SECPKG_NAME_TYPE {
  static const SecNameSamCompatible = 0x00000000;
  static const SecNameAlternateId = 0x00000001;
  static const SecNameFlat = 0x00000002;
  static const SecNameDN = 0x00000003;
  static const SecNameSPN = 0x00000004;
}

/// {@category Enum}
class CRED_FETCH {
  static const CredFetchDefault = 0x00000000;
  static const CredFetchDPAPI = 0x00000001;
  static const CredFetchForced = 0x00000002;
}

/// {@category Enum}
class KSEC_CONTEXT_TYPE {
  static const KSecPaged = 0x00000000;
  static const KSecNonPaged = 0x00000001;
}

/// {@category Enum}
class eTlsSignatureAlgorithm {
  static const TlsSignatureAlgorithm_Anonymous = 0x00000000;
  static const TlsSignatureAlgorithm_Rsa = 0x00000001;
  static const TlsSignatureAlgorithm_Dsa = 0x00000002;
  static const TlsSignatureAlgorithm_Ecdsa = 0x00000003;
}

/// {@category Enum}
class eTlsHashAlgorithm {
  static const TlsHashAlgorithm_None = 0x00000000;
  static const TlsHashAlgorithm_Md5 = 0x00000001;
  static const TlsHashAlgorithm_Sha1 = 0x00000002;
  static const TlsHashAlgorithm_Sha224 = 0x00000003;
  static const TlsHashAlgorithm_Sha256 = 0x00000004;
  static const TlsHashAlgorithm_Sha384 = 0x00000005;
  static const TlsHashAlgorithm_Sha512 = 0x00000006;
}

/// {@category Enum}
class SchGetExtensionsOptions {
  static const SCH_EXTENSIONS_OPTIONS_NONE = 0x00000000;
  static const SCH_NO_RECORD_HEADER = 0x00000001;
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

/// {@category Enum}
class TRUSTEE_FORM {
  static const TRUSTEE_IS_SID = 0x00000000;
  static const TRUSTEE_IS_NAME = 0x00000001;
  static const TRUSTEE_BAD_FORM = 0x00000002;
  static const TRUSTEE_IS_OBJECTS_AND_SID = 0x00000003;
  static const TRUSTEE_IS_OBJECTS_AND_NAME = 0x00000004;
}

/// {@category Enum}
class MULTIPLE_TRUSTEE_OPERATION {
  static const NO_MULTIPLE_TRUSTEE = 0x00000000;
  static const TRUSTEE_IS_IMPERSONATE = 0x00000001;
}

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
class PROG_INVOKE_SETTING {
  static const ProgressInvokeNever = 0x00000001;
  static const ProgressInvokeEveryObject = 0x00000002;
  static const ProgressInvokeOnError = 0x00000003;
  static const ProgressCancelOperation = 0x00000004;
  static const ProgressRetryOperation = 0x00000005;
  static const ProgressInvokePrePostError = 0x00000006;
}

/// {@category Enum}
class TPMVSC_ATTESTATION_TYPE {
  static const TPMVSC_ATTESTATION_NONE = 0x00000000;
  static const TPMVSC_ATTESTATION_AIK_ONLY = 0x00000001;
  static const TPMVSC_ATTESTATION_AIK_AND_CERTIFICATE = 0x00000002;
}

/// {@category Enum}
class TPMVSCMGR_STATUS {
  static const TPMVSCMGR_STATUS_VTPMSMARTCARD_INITIALIZING = 0x00000000;
  static const TPMVSCMGR_STATUS_VTPMSMARTCARD_CREATING = 0x00000001;
  static const TPMVSCMGR_STATUS_VTPMSMARTCARD_DESTROYING = 0x00000002;
  static const TPMVSCMGR_STATUS_VGIDSSIMULATOR_INITIALIZING = 0x00000003;
  static const TPMVSCMGR_STATUS_VGIDSSIMULATOR_CREATING = 0x00000004;
  static const TPMVSCMGR_STATUS_VGIDSSIMULATOR_DESTROYING = 0x00000005;
  static const TPMVSCMGR_STATUS_VREADER_INITIALIZING = 0x00000006;
  static const TPMVSCMGR_STATUS_VREADER_CREATING = 0x00000007;
  static const TPMVSCMGR_STATUS_VREADER_DESTROYING = 0x00000008;
  static const TPMVSCMGR_STATUS_GENERATE_WAITING = 0x00000009;
  static const TPMVSCMGR_STATUS_GENERATE_AUTHENTICATING = 0x0000000a;
  static const TPMVSCMGR_STATUS_GENERATE_RUNNING = 0x0000000b;
  static const TPMVSCMGR_STATUS_CARD_CREATED = 0x0000000c;
  static const TPMVSCMGR_STATUS_CARD_DESTROYED = 0x0000000d;
}

/// {@category Enum}
class TPMVSCMGR_ERROR {
  static const TPMVSCMGR_ERROR_IMPERSONATION = 0x00000000;
  static const TPMVSCMGR_ERROR_PIN_COMPLEXITY = 0x00000001;
  static const TPMVSCMGR_ERROR_READER_COUNT_LIMIT = 0x00000002;
  static const TPMVSCMGR_ERROR_TERMINAL_SERVICES_SESSION = 0x00000003;
  static const TPMVSCMGR_ERROR_VTPMSMARTCARD_INITIALIZE = 0x00000004;
  static const TPMVSCMGR_ERROR_VTPMSMARTCARD_CREATE = 0x00000005;
  static const TPMVSCMGR_ERROR_VTPMSMARTCARD_DESTROY = 0x00000006;
  static const TPMVSCMGR_ERROR_VGIDSSIMULATOR_INITIALIZE = 0x00000007;
  static const TPMVSCMGR_ERROR_VGIDSSIMULATOR_CREATE = 0x00000008;
  static const TPMVSCMGR_ERROR_VGIDSSIMULATOR_DESTROY = 0x00000009;
  static const TPMVSCMGR_ERROR_VGIDSSIMULATOR_WRITE_PROPERTY = 0x0000000a;
  static const TPMVSCMGR_ERROR_VGIDSSIMULATOR_READ_PROPERTY = 0x0000000b;
  static const TPMVSCMGR_ERROR_VREADER_INITIALIZE = 0x0000000c;
  static const TPMVSCMGR_ERROR_VREADER_CREATE = 0x0000000d;
  static const TPMVSCMGR_ERROR_VREADER_DESTROY = 0x0000000e;
  static const TPMVSCMGR_ERROR_GENERATE_LOCATE_READER = 0x0000000f;
  static const TPMVSCMGR_ERROR_GENERATE_FILESYSTEM = 0x00000010;
  static const TPMVSCMGR_ERROR_CARD_CREATE = 0x00000011;
  static const TPMVSCMGR_ERROR_CARD_DESTROY = 0x00000012;
}

/// {@category Enum}
class KeyCredentialManagerOperationErrorStates {
  static const KeyCredentialManagerOperationErrorStateNone = 0x00000000;
  static const KeyCredentialManagerOperationErrorStateDeviceJoinFailure = 0x00000001;
  static const KeyCredentialManagerOperationErrorStateTokenFailure = 0x00000002;
  static const KeyCredentialManagerOperationErrorStateCertificateFailure = 0x00000004;
  static const KeyCredentialManagerOperationErrorStateRemoteSessionFailure = 0x00000008;
  static const KeyCredentialManagerOperationErrorStatePolicyFailure = 0x00000010;
  static const KeyCredentialManagerOperationErrorStateHardwareFailure = 0x00000020;
  static const KeyCredentialManagerOperationErrorStatePinExistsFailure = 0x00000040;
}

/// {@category Enum}
class KeyCredentialManagerOperationType {
  static const KeyCredentialManagerProvisioning = 0x00000000;
  static const KeyCredentialManagerPinChange = 0x00000001;
  static const KeyCredentialManagerPinReset = 0x00000002;
}

/// {@category Enum}
class IDENTITY_TYPE {
  static const IDENTITIES_ALL = 0x00000000;
  static const IDENTITIES_ME_ONLY = 0x00000001;
}

/// {@category Enum}
class NETLOGON_LOGON_INFO_CLASS {
  static const NetlogonInteractiveInformation = 0x00000001;
  static const NetlogonNetworkInformation = 0x00000002;
  static const NetlogonServiceInformation = 0x00000003;
  static const NetlogonGenericInformation = 0x00000004;
  static const NetlogonInteractiveTransitiveInformation = 0x00000005;
  static const NetlogonNetworkTransitiveInformation = 0x00000006;
  static const NetlogonServiceTransitiveInformation = 0x00000007;
}

/// {@category Enum}
class tag_IdentityUpdateEvent {
  static const IDENTITY_ASSOCIATED = 0x00000001;
  static const IDENTITY_DISASSOCIATED = 0x00000002;
  static const IDENTITY_CREATED = 0x00000004;
  static const IDENTITY_IMPORTED = 0x00000008;
  static const IDENTITY_DELETED = 0x00000010;
  static const IDENTITY_PROPCHANGED = 0x00000020;
  static const IDENTITY_CONNECTED = 0x00000040;
  static const IDENTITY_DISCONNECTED = 0x00000080;
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
class AUTHZ_AUDIT_EVENT_INFORMATION_CLASS {
  static const AuthzAuditEventInfoFlags = 0x00000001;
  static const AuthzAuditEventInfoOperationType = 0x00000002;
  static const AuthzAuditEventInfoObjectType = 0x00000003;
  static const AuthzAuditEventInfoObjectName = 0x00000004;
  static const AuthzAuditEventInfoAdditionalInfo = 0x00000005;
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
class SI_PAGE_TYPE {
  static const SI_PAGE_PERM = 0x00000000;
  static const SI_PAGE_ADVPERM = 0x00000001;
  static const SI_PAGE_AUDIT = 0x00000002;
  static const SI_PAGE_OWNER = 0x00000003;
  static const SI_PAGE_EFFECTIVE = 0x00000004;
  static const SI_PAGE_TAKEOWNERSHIP = 0x00000005;
  static const SI_PAGE_SHARE = 0x00000006;
}

/// {@category Enum}
class SI_PAGE_ACTIVATED {
  static const SI_SHOW_DEFAULT = 0x00000000;
  static const SI_SHOW_PERM_ACTIVATED = 0x00000001;
  static const SI_SHOW_AUDIT_ACTIVATED = 0x00000002;
  static const SI_SHOW_OWNER_ACTIVATED = 0x00000003;
  static const SI_SHOW_EFFECTIVE_ACTIVATED = 0x00000004;
  static const SI_SHOW_SHARE_ACTIVATED = 0x00000005;
  static const SI_SHOW_CENTRAL_POLICY_ACTIVATED = 0x00000006;
}

/// {@category Enum}
class X509EnrollmentAuthFlags {
  static const X509AuthNone = 0x00000000;
  static const X509AuthAnonymous = 0x00000001;
  static const X509AuthKerberos = 0x00000002;
  static const X509AuthUsername = 0x00000004;
  static const X509AuthCertificate = 0x00000008;
}

/// {@category Enum}
class X509SCEPMessageType {
  static const SCEPMessageUnknown = 0xffffffff;
  static const SCEPMessageCertResponse = 0x00000003;
  static const SCEPMessagePKCSRequest = 0x00000013;
  static const SCEPMessageGetCertInitial = 0x00000014;
  static const SCEPMessageGetCert = 0x00000015;
  static const SCEPMessageGetCRL = 0x00000016;
  static const SCEPMessageClaimChallengeAnswer = 0x00000029;
}

/// {@category Enum}
class X509SCEPDisposition {
  static const SCEPDispositionUnknown = 0xffffffff;
  static const SCEPDispositionSuccess = 0x00000000;
  static const SCEPDispositionFailure = 0x00000002;
  static const SCEPDispositionPending = 0x00000003;
  static const SCEPDispositionPendingChallenge = 0x0000000b;
}

/// {@category Enum}
class X509SCEPFailInfo {
  static const SCEPFailUnknown = 0xffffffff;
  static const SCEPFailBadAlgorithm = 0x00000000;
  static const SCEPFailBadMessageCheck = 0x00000001;
  static const SCEPFailBadRequest = 0x00000002;
  static const SCEPFailBadTime = 0x00000003;
  static const SCEPFailBadCertId = 0x00000004;
}

/// {@category Enum}
class CERTENROLL_OBJECTID {
  static const XCN_OID_NONE = 0x00000000;
  static const XCN_OID_RSA = 0x00000001;
  static const XCN_OID_PKCS = 0x00000002;
  static const XCN_OID_RSA_HASH = 0x00000003;
  static const XCN_OID_RSA_ENCRYPT = 0x00000004;
  static const XCN_OID_PKCS_1 = 0x00000005;
  static const XCN_OID_PKCS_2 = 0x00000006;
  static const XCN_OID_PKCS_3 = 0x00000007;
  static const XCN_OID_PKCS_4 = 0x00000008;
  static const XCN_OID_PKCS_5 = 0x00000009;
  static const XCN_OID_PKCS_6 = 0x0000000a;
  static const XCN_OID_PKCS_7 = 0x0000000b;
  static const XCN_OID_PKCS_8 = 0x0000000c;
  static const XCN_OID_PKCS_9 = 0x0000000d;
  static const XCN_OID_PKCS_10 = 0x0000000e;
  static const XCN_OID_PKCS_12 = 0x0000000f;
  static const XCN_OID_RSA_RSA = 0x00000010;
  static const XCN_OID_RSA_MD2RSA = 0x00000011;
  static const XCN_OID_RSA_MD4RSA = 0x00000012;
  static const XCN_OID_RSA_MD5RSA = 0x00000013;
  static const XCN_OID_RSA_SHA1RSA = 0x00000014;
  static const XCN_OID_RSA_SETOAEP_RSA = 0x00000015;
  static const XCN_OID_RSA_DH = 0x00000016;
  static const XCN_OID_RSA_data = 0x00000017;
  static const XCN_OID_RSA_signedData = 0x00000018;
  static const XCN_OID_RSA_envelopedData = 0x00000019;
  static const XCN_OID_RSA_signEnvData = 0x0000001a;
  static const XCN_OID_RSA_digestedData = 0x0000001b;
  static const XCN_OID_RSA_hashedData = 0x0000001c;
  static const XCN_OID_RSA_encryptedData = 0x0000001d;
  static const XCN_OID_RSA_emailAddr = 0x0000001e;
  static const XCN_OID_RSA_unstructName = 0x0000001f;
  static const XCN_OID_RSA_contentType = 0x00000020;
  static const XCN_OID_RSA_messageDigest = 0x00000021;
  static const XCN_OID_RSA_signingTime = 0x00000022;
  static const XCN_OID_RSA_counterSign = 0x00000023;
  static const XCN_OID_RSA_challengePwd = 0x00000024;
  static const XCN_OID_RSA_unstructAddr = 0x00000025;
  static const XCN_OID_RSA_extCertAttrs = 0x00000026;
  static const XCN_OID_RSA_certExtensions = 0x00000027;
  static const XCN_OID_RSA_SMIMECapabilities = 0x00000028;
  static const XCN_OID_RSA_preferSignedData = 0x00000029;
  static const XCN_OID_RSA_SMIMEalg = 0x0000002a;
  static const XCN_OID_RSA_SMIMEalgESDH = 0x0000002b;
  static const XCN_OID_RSA_SMIMEalgCMS3DESwrap = 0x0000002c;
  static const XCN_OID_RSA_SMIMEalgCMSRC2wrap = 0x0000002d;
  static const XCN_OID_RSA_MD2 = 0x0000002e;
  static const XCN_OID_RSA_MD4 = 0x0000002f;
  static const XCN_OID_RSA_MD5 = 0x00000030;
  static const XCN_OID_RSA_RC2CBC = 0x00000031;
  static const XCN_OID_RSA_RC4 = 0x00000032;
  static const XCN_OID_RSA_DES_EDE3_CBC = 0x00000033;
  static const XCN_OID_RSA_RC5_CBCPad = 0x00000034;
  static const XCN_OID_ANSI_X942 = 0x00000035;
  static const XCN_OID_ANSI_X942_DH = 0x00000036;
  static const XCN_OID_X957 = 0x00000037;
  static const XCN_OID_X957_DSA = 0x00000038;
  static const XCN_OID_X957_SHA1DSA = 0x00000039;
  static const XCN_OID_DS = 0x0000003a;
  static const XCN_OID_DSALG = 0x0000003b;
  static const XCN_OID_DSALG_CRPT = 0x0000003c;
  static const XCN_OID_DSALG_HASH = 0x0000003d;
  static const XCN_OID_DSALG_SIGN = 0x0000003e;
  static const XCN_OID_DSALG_RSA = 0x0000003f;
  static const XCN_OID_OIW = 0x00000040;
  static const XCN_OID_OIWSEC = 0x00000041;
  static const XCN_OID_OIWSEC_md4RSA = 0x00000042;
  static const XCN_OID_OIWSEC_md5RSA = 0x00000043;
  static const XCN_OID_OIWSEC_md4RSA2 = 0x00000044;
  static const XCN_OID_OIWSEC_desECB = 0x00000045;
  static const XCN_OID_OIWSEC_desCBC = 0x00000046;
  static const XCN_OID_OIWSEC_desOFB = 0x00000047;
  static const XCN_OID_OIWSEC_desCFB = 0x00000048;
  static const XCN_OID_OIWSEC_desMAC = 0x00000049;
  static const XCN_OID_OIWSEC_rsaSign = 0x0000004a;
  static const XCN_OID_OIWSEC_dsa = 0x0000004b;
  static const XCN_OID_OIWSEC_shaDSA = 0x0000004c;
  static const XCN_OID_OIWSEC_mdc2RSA = 0x0000004d;
  static const XCN_OID_OIWSEC_shaRSA = 0x0000004e;
  static const XCN_OID_OIWSEC_dhCommMod = 0x0000004f;
  static const XCN_OID_OIWSEC_desEDE = 0x00000050;
  static const XCN_OID_OIWSEC_sha = 0x00000051;
  static const XCN_OID_OIWSEC_mdc2 = 0x00000052;
  static const XCN_OID_OIWSEC_dsaComm = 0x00000053;
  static const XCN_OID_OIWSEC_dsaCommSHA = 0x00000054;
  static const XCN_OID_OIWSEC_rsaXchg = 0x00000055;
  static const XCN_OID_OIWSEC_keyHashSeal = 0x00000056;
  static const XCN_OID_OIWSEC_md2RSASign = 0x00000057;
  static const XCN_OID_OIWSEC_md5RSASign = 0x00000058;
  static const XCN_OID_OIWSEC_sha1 = 0x00000059;
  static const XCN_OID_OIWSEC_dsaSHA1 = 0x0000005a;
  static const XCN_OID_OIWSEC_dsaCommSHA1 = 0x0000005b;
  static const XCN_OID_OIWSEC_sha1RSASign = 0x0000005c;
  static const XCN_OID_OIWDIR = 0x0000005d;
  static const XCN_OID_OIWDIR_CRPT = 0x0000005e;
  static const XCN_OID_OIWDIR_HASH = 0x0000005f;
  static const XCN_OID_OIWDIR_SIGN = 0x00000060;
  static const XCN_OID_OIWDIR_md2 = 0x00000061;
  static const XCN_OID_OIWDIR_md2RSA = 0x00000062;
  static const XCN_OID_INFOSEC = 0x00000063;
  static const XCN_OID_INFOSEC_sdnsSignature = 0x00000064;
  static const XCN_OID_INFOSEC_mosaicSignature = 0x00000065;
  static const XCN_OID_INFOSEC_sdnsConfidentiality = 0x00000066;
  static const XCN_OID_INFOSEC_mosaicConfidentiality = 0x00000067;
  static const XCN_OID_INFOSEC_sdnsIntegrity = 0x00000068;
  static const XCN_OID_INFOSEC_mosaicIntegrity = 0x00000069;
  static const XCN_OID_INFOSEC_sdnsTokenProtection = 0x0000006a;
  static const XCN_OID_INFOSEC_mosaicTokenProtection = 0x0000006b;
  static const XCN_OID_INFOSEC_sdnsKeyManagement = 0x0000006c;
  static const XCN_OID_INFOSEC_mosaicKeyManagement = 0x0000006d;
  static const XCN_OID_INFOSEC_sdnsKMandSig = 0x0000006e;
  static const XCN_OID_INFOSEC_mosaicKMandSig = 0x0000006f;
  static const XCN_OID_INFOSEC_SuiteASignature = 0x00000070;
  static const XCN_OID_INFOSEC_SuiteAConfidentiality = 0x00000071;
  static const XCN_OID_INFOSEC_SuiteAIntegrity = 0x00000072;
  static const XCN_OID_INFOSEC_SuiteATokenProtection = 0x00000073;
  static const XCN_OID_INFOSEC_SuiteAKeyManagement = 0x00000074;
  static const XCN_OID_INFOSEC_SuiteAKMandSig = 0x00000075;
  static const XCN_OID_INFOSEC_mosaicUpdatedSig = 0x00000076;
  static const XCN_OID_INFOSEC_mosaicKMandUpdSig = 0x00000077;
  static const XCN_OID_INFOSEC_mosaicUpdatedInteg = 0x00000078;
  static const XCN_OID_COMMON_NAME = 0x00000079;
  static const XCN_OID_SUR_NAME = 0x0000007a;
  static const XCN_OID_DEVICE_SERIAL_NUMBER = 0x0000007b;
  static const XCN_OID_COUNTRY_NAME = 0x0000007c;
  static const XCN_OID_LOCALITY_NAME = 0x0000007d;
  static const XCN_OID_STATE_OR_PROVINCE_NAME = 0x0000007e;
  static const XCN_OID_STREET_ADDRESS = 0x0000007f;
  static const XCN_OID_ORGANIZATION_NAME = 0x00000080;
  static const XCN_OID_ORGANIZATIONAL_UNIT_NAME = 0x00000081;
  static const XCN_OID_TITLE = 0x00000082;
  static const XCN_OID_DESCRIPTION = 0x00000083;
  static const XCN_OID_SEARCH_GUIDE = 0x00000084;
  static const XCN_OID_BUSINESS_CATEGORY = 0x00000085;
  static const XCN_OID_POSTAL_ADDRESS = 0x00000086;
  static const XCN_OID_POSTAL_CODE = 0x00000087;
  static const XCN_OID_POST_OFFICE_BOX = 0x00000088;
  static const XCN_OID_PHYSICAL_DELIVERY_OFFICE_NAME = 0x00000089;
  static const XCN_OID_TELEPHONE_NUMBER = 0x0000008a;
  static const XCN_OID_TELEX_NUMBER = 0x0000008b;
  static const XCN_OID_TELETEXT_TERMINAL_IDENTIFIER = 0x0000008c;
  static const XCN_OID_FACSIMILE_TELEPHONE_NUMBER = 0x0000008d;
  static const XCN_OID_X21_ADDRESS = 0x0000008e;
  static const XCN_OID_INTERNATIONAL_ISDN_NUMBER = 0x0000008f;
  static const XCN_OID_REGISTERED_ADDRESS = 0x00000090;
  static const XCN_OID_DESTINATION_INDICATOR = 0x00000091;
  static const XCN_OID_PREFERRED_DELIVERY_METHOD = 0x00000092;
  static const XCN_OID_PRESENTATION_ADDRESS = 0x00000093;
  static const XCN_OID_SUPPORTED_APPLICATION_CONTEXT = 0x00000094;
  static const XCN_OID_MEMBER = 0x00000095;
  static const XCN_OID_OWNER = 0x00000096;
  static const XCN_OID_ROLE_OCCUPANT = 0x00000097;
  static const XCN_OID_SEE_ALSO = 0x00000098;
  static const XCN_OID_USER_PASSWORD = 0x00000099;
  static const XCN_OID_USER_CERTIFICATE = 0x0000009a;
  static const XCN_OID_CA_CERTIFICATE = 0x0000009b;
  static const XCN_OID_AUTHORITY_REVOCATION_LIST = 0x0000009c;
  static const XCN_OID_CERTIFICATE_REVOCATION_LIST = 0x0000009d;
  static const XCN_OID_CROSS_CERTIFICATE_PAIR = 0x0000009e;
  static const XCN_OID_GIVEN_NAME = 0x0000009f;
  static const XCN_OID_INITIALS = 0x000000a0;
  static const XCN_OID_DN_QUALIFIER = 0x000000a1;
  static const XCN_OID_DOMAIN_COMPONENT = 0x000000a2;
  static const XCN_OID_PKCS_12_FRIENDLY_NAME_ATTR = 0x000000a3;
  static const XCN_OID_PKCS_12_LOCAL_KEY_ID = 0x000000a4;
  static const XCN_OID_PKCS_12_KEY_PROVIDER_NAME_ATTR = 0x000000a5;
  static const XCN_OID_LOCAL_MACHINE_KEYSET = 0x000000a6;
  static const XCN_OID_PKCS_12_EXTENDED_ATTRIBUTES = 0x000000a7;
  static const XCN_OID_KEYID_RDN = 0x000000a8;
  static const XCN_OID_AUTHORITY_KEY_IDENTIFIER = 0x000000a9;
  static const XCN_OID_KEY_ATTRIBUTES = 0x000000aa;
  static const XCN_OID_CERT_POLICIES_95 = 0x000000ab;
  static const XCN_OID_KEY_USAGE_RESTRICTION = 0x000000ac;
  static const XCN_OID_SUBJECT_ALT_NAME = 0x000000ad;
  static const XCN_OID_ISSUER_ALT_NAME = 0x000000ae;
  static const XCN_OID_BASIC_CONSTRAINTS = 0x000000af;
  static const XCN_OID_KEY_USAGE = 0x000000b0;
  static const XCN_OID_PRIVATEKEY_USAGE_PERIOD = 0x000000b1;
  static const XCN_OID_BASIC_CONSTRAINTS2 = 0x000000b2;
  static const XCN_OID_CERT_POLICIES = 0x000000b3;
  static const XCN_OID_ANY_CERT_POLICY = 0x000000b4;
  static const XCN_OID_AUTHORITY_KEY_IDENTIFIER2 = 0x000000b5;
  static const XCN_OID_SUBJECT_KEY_IDENTIFIER = 0x000000b6;
  static const XCN_OID_SUBJECT_ALT_NAME2 = 0x000000b7;
  static const XCN_OID_ISSUER_ALT_NAME2 = 0x000000b8;
  static const XCN_OID_CRL_REASON_CODE = 0x000000b9;
  static const XCN_OID_REASON_CODE_HOLD = 0x000000ba;
  static const XCN_OID_CRL_DIST_POINTS = 0x000000bb;
  static const XCN_OID_ENHANCED_KEY_USAGE = 0x000000bc;
  static const XCN_OID_CRL_NUMBER = 0x000000bd;
  static const XCN_OID_DELTA_CRL_INDICATOR = 0x000000be;
  static const XCN_OID_ISSUING_DIST_POINT = 0x000000bf;
  static const XCN_OID_FRESHEST_CRL = 0x000000c0;
  static const XCN_OID_NAME_CONSTRAINTS = 0x000000c1;
  static const XCN_OID_POLICY_MAPPINGS = 0x000000c2;
  static const XCN_OID_LEGACY_POLICY_MAPPINGS = 0x000000c3;
  static const XCN_OID_POLICY_CONSTRAINTS = 0x000000c4;
  static const XCN_OID_RENEWAL_CERTIFICATE = 0x000000c5;
  static const XCN_OID_ENROLLMENT_NAME_VALUE_PAIR = 0x000000c6;
  static const XCN_OID_ENROLLMENT_CSP_PROVIDER = 0x000000c7;
  static const XCN_OID_OS_VERSION = 0x000000c8;
  static const XCN_OID_ENROLLMENT_AGENT = 0x000000c9;
  static const XCN_OID_PKIX = 0x000000ca;
  static const XCN_OID_PKIX_PE = 0x000000cb;
  static const XCN_OID_AUTHORITY_INFO_ACCESS = 0x000000cc;
  static const XCN_OID_BIOMETRIC_EXT = 0x000000cd;
  static const XCN_OID_LOGOTYPE_EXT = 0x000000ce;
  static const XCN_OID_CERT_EXTENSIONS = 0x000000cf;
  static const XCN_OID_NEXT_UPDATE_LOCATION = 0x000000d0;
  static const XCN_OID_REMOVE_CERTIFICATE = 0x000000d1;
  static const XCN_OID_CROSS_CERT_DIST_POINTS = 0x000000d2;
  static const XCN_OID_CTL = 0x000000d3;
  static const XCN_OID_SORTED_CTL = 0x000000d4;
  static const XCN_OID_SERIALIZED = 0x000000d5;
  static const XCN_OID_NT_PRINCIPAL_NAME = 0x000000d6;
  static const XCN_OID_PRODUCT_UPDATE = 0x000000d7;
  static const XCN_OID_ANY_APPLICATION_POLICY = 0x000000d8;
  static const XCN_OID_AUTO_ENROLL_CTL_USAGE = 0x000000d9;
  static const XCN_OID_ENROLL_CERTTYPE_EXTENSION = 0x000000da;
  static const XCN_OID_CERT_MANIFOLD = 0x000000db;
  static const XCN_OID_CERTSRV_CA_VERSION = 0x000000dc;
  static const XCN_OID_CERTSRV_PREVIOUS_CERT_HASH = 0x000000dd;
  static const XCN_OID_CRL_VIRTUAL_BASE = 0x000000de;
  static const XCN_OID_CRL_NEXT_PUBLISH = 0x000000df;
  static const XCN_OID_KP_CA_EXCHANGE = 0x000000e0;
  static const XCN_OID_KP_KEY_RECOVERY_AGENT = 0x000000e1;
  static const XCN_OID_CERTIFICATE_TEMPLATE = 0x000000e2;
  static const XCN_OID_ENTERPRISE_OID_ROOT = 0x000000e3;
  static const XCN_OID_RDN_DUMMY_SIGNER = 0x000000e4;
  static const XCN_OID_APPLICATION_CERT_POLICIES = 0x000000e5;
  static const XCN_OID_APPLICATION_POLICY_MAPPINGS = 0x000000e6;
  static const XCN_OID_APPLICATION_POLICY_CONSTRAINTS = 0x000000e7;
  static const XCN_OID_ARCHIVED_KEY_ATTR = 0x000000e8;
  static const XCN_OID_CRL_SELF_CDP = 0x000000e9;
  static const XCN_OID_REQUIRE_CERT_CHAIN_POLICY = 0x000000ea;
  static const XCN_OID_ARCHIVED_KEY_CERT_HASH = 0x000000eb;
  static const XCN_OID_ISSUED_CERT_HASH = 0x000000ec;
  static const XCN_OID_DS_EMAIL_REPLICATION = 0x000000ed;
  static const XCN_OID_REQUEST_CLIENT_INFO = 0x000000ee;
  static const XCN_OID_ENCRYPTED_KEY_HASH = 0x000000ef;
  static const XCN_OID_CERTSRV_CROSSCA_VERSION = 0x000000f0;
  static const XCN_OID_NTDS_REPLICATION = 0x000000f1;
  static const XCN_OID_SUBJECT_DIR_ATTRS = 0x000000f2;
  static const XCN_OID_PKIX_KP = 0x000000f3;
  static const XCN_OID_PKIX_KP_SERVER_AUTH = 0x000000f4;
  static const XCN_OID_PKIX_KP_CLIENT_AUTH = 0x000000f5;
  static const XCN_OID_PKIX_KP_CODE_SIGNING = 0x000000f6;
  static const XCN_OID_PKIX_KP_EMAIL_PROTECTION = 0x000000f7;
  static const XCN_OID_PKIX_KP_IPSEC_END_SYSTEM = 0x000000f8;
  static const XCN_OID_PKIX_KP_IPSEC_TUNNEL = 0x000000f9;
  static const XCN_OID_PKIX_KP_IPSEC_USER = 0x000000fa;
  static const XCN_OID_PKIX_KP_TIMESTAMP_SIGNING = 0x000000fb;
  static const XCN_OID_PKIX_KP_OCSP_SIGNING = 0x000000fc;
  static const XCN_OID_PKIX_OCSP_NOCHECK = 0x000000fd;
  static const XCN_OID_IPSEC_KP_IKE_INTERMEDIATE = 0x000000fe;
  static const XCN_OID_KP_CTL_USAGE_SIGNING = 0x000000ff;
  static const XCN_OID_KP_TIME_STAMP_SIGNING = 0x00000100;
  static const XCN_OID_SERVER_GATED_CRYPTO = 0x00000101;
  static const XCN_OID_SGC_NETSCAPE = 0x00000102;
  static const XCN_OID_KP_EFS = 0x00000103;
  static const XCN_OID_EFS_RECOVERY = 0x00000104;
  static const XCN_OID_WHQL_CRYPTO = 0x00000105;
  static const XCN_OID_NT5_CRYPTO = 0x00000106;
  static const XCN_OID_OEM_WHQL_CRYPTO = 0x00000107;
  static const XCN_OID_EMBEDDED_NT_CRYPTO = 0x00000108;
  static const XCN_OID_ROOT_LIST_SIGNER = 0x00000109;
  static const XCN_OID_KP_QUALIFIED_SUBORDINATION = 0x0000010a;
  static const XCN_OID_KP_KEY_RECOVERY = 0x0000010b;
  static const XCN_OID_KP_DOCUMENT_SIGNING = 0x0000010c;
  static const XCN_OID_KP_LIFETIME_SIGNING = 0x0000010d;
  static const XCN_OID_KP_MOBILE_DEVICE_SOFTWARE = 0x0000010e;
  static const XCN_OID_KP_SMART_DISPLAY = 0x0000010f;
  static const XCN_OID_KP_CSP_SIGNATURE = 0x00000110;
  static const XCN_OID_DRM = 0x00000111;
  static const XCN_OID_DRM_INDIVIDUALIZATION = 0x00000112;
  static const XCN_OID_LICENSES = 0x00000113;
  static const XCN_OID_LICENSE_SERVER = 0x00000114;
  static const XCN_OID_KP_SMARTCARD_LOGON = 0x00000115;
  static const XCN_OID_YESNO_TRUST_ATTR = 0x00000116;
  static const XCN_OID_PKIX_POLICY_QUALIFIER_CPS = 0x00000117;
  static const XCN_OID_PKIX_POLICY_QUALIFIER_USERNOTICE = 0x00000118;
  static const XCN_OID_CERT_POLICIES_95_QUALIFIER1 = 0x00000119;
  static const XCN_OID_PKIX_ACC_DESCR = 0x0000011a;
  static const XCN_OID_PKIX_OCSP = 0x0000011b;
  static const XCN_OID_PKIX_CA_ISSUERS = 0x0000011c;
  static const XCN_OID_VERISIGN_PRIVATE_6_9 = 0x0000011d;
  static const XCN_OID_VERISIGN_ONSITE_JURISDICTION_HASH = 0x0000011e;
  static const XCN_OID_VERISIGN_BITSTRING_6_13 = 0x0000011f;
  static const XCN_OID_VERISIGN_ISS_STRONG_CRYPTO = 0x00000120;
  static const XCN_OID_NETSCAPE = 0x00000121;
  static const XCN_OID_NETSCAPE_CERT_EXTENSION = 0x00000122;
  static const XCN_OID_NETSCAPE_CERT_TYPE = 0x00000123;
  static const XCN_OID_NETSCAPE_BASE_URL = 0x00000124;
  static const XCN_OID_NETSCAPE_REVOCATION_URL = 0x00000125;
  static const XCN_OID_NETSCAPE_CA_REVOCATION_URL = 0x00000126;
  static const XCN_OID_NETSCAPE_CERT_RENEWAL_URL = 0x00000127;
  static const XCN_OID_NETSCAPE_CA_POLICY_URL = 0x00000128;
  static const XCN_OID_NETSCAPE_SSL_SERVER_NAME = 0x00000129;
  static const XCN_OID_NETSCAPE_COMMENT = 0x0000012a;
  static const XCN_OID_NETSCAPE_DATA_TYPE = 0x0000012b;
  static const XCN_OID_NETSCAPE_CERT_SEQUENCE = 0x0000012c;
  static const XCN_OID_CT_PKI_DATA = 0x0000012d;
  static const XCN_OID_CT_PKI_RESPONSE = 0x0000012e;
  static const XCN_OID_PKIX_NO_SIGNATURE = 0x0000012f;
  static const XCN_OID_CMC = 0x00000130;
  static const XCN_OID_CMC_STATUS_INFO = 0x00000131;
  static const XCN_OID_CMC_IDENTIFICATION = 0x00000132;
  static const XCN_OID_CMC_IDENTITY_PROOF = 0x00000133;
  static const XCN_OID_CMC_DATA_RETURN = 0x00000134;
  static const XCN_OID_CMC_TRANSACTION_ID = 0x00000135;
  static const XCN_OID_CMC_SENDER_NONCE = 0x00000136;
  static const XCN_OID_CMC_RECIPIENT_NONCE = 0x00000137;
  static const XCN_OID_CMC_ADD_EXTENSIONS = 0x00000138;
  static const XCN_OID_CMC_ENCRYPTED_POP = 0x00000139;
  static const XCN_OID_CMC_DECRYPTED_POP = 0x0000013a;
  static const XCN_OID_CMC_LRA_POP_WITNESS = 0x0000013b;
  static const XCN_OID_CMC_GET_CERT = 0x0000013c;
  static const XCN_OID_CMC_GET_CRL = 0x0000013d;
  static const XCN_OID_CMC_REVOKE_REQUEST = 0x0000013e;
  static const XCN_OID_CMC_REG_INFO = 0x0000013f;
  static const XCN_OID_CMC_RESPONSE_INFO = 0x00000140;
  static const XCN_OID_CMC_QUERY_PENDING = 0x00000141;
  static const XCN_OID_CMC_ID_POP_LINK_RANDOM = 0x00000142;
  static const XCN_OID_CMC_ID_POP_LINK_WITNESS = 0x00000143;
  static const XCN_OID_CMC_ID_CONFIRM_CERT_ACCEPTANCE = 0x00000144;
  static const XCN_OID_CMC_ADD_ATTRIBUTES = 0x00000145;
  static const XCN_OID_LOYALTY_OTHER_LOGOTYPE = 0x00000146;
  static const XCN_OID_BACKGROUND_OTHER_LOGOTYPE = 0x00000147;
  static const XCN_OID_PKIX_OCSP_BASIC_SIGNED_RESPONSE = 0x00000148;
  static const XCN_OID_PKCS_7_DATA = 0x00000149;
  static const XCN_OID_PKCS_7_SIGNED = 0x0000014a;
  static const XCN_OID_PKCS_7_ENVELOPED = 0x0000014b;
  static const XCN_OID_PKCS_7_SIGNEDANDENVELOPED = 0x0000014c;
  static const XCN_OID_PKCS_7_DIGESTED = 0x0000014d;
  static const XCN_OID_PKCS_7_ENCRYPTED = 0x0000014e;
  static const XCN_OID_PKCS_9_CONTENT_TYPE = 0x0000014f;
  static const XCN_OID_PKCS_9_MESSAGE_DIGEST = 0x00000150;
  static const XCN_OID_CERT_PROP_ID_PREFIX = 0x00000151;
  static const XCN_OID_CERT_KEY_IDENTIFIER_PROP_ID = 0x00000152;
  static const XCN_OID_CERT_ISSUER_SERIAL_NUMBER_MD5_HASH_PROP_ID = 0x00000153;
  static const XCN_OID_CERT_SUBJECT_NAME_MD5_HASH_PROP_ID = 0x00000154;
  static const XCN_OID_CERT_MD5_HASH_PROP_ID = 0x00000155;
  static const XCN_OID_RSA_SHA256RSA = 0x00000156;
  static const XCN_OID_RSA_SHA384RSA = 0x00000157;
  static const XCN_OID_RSA_SHA512RSA = 0x00000158;
  static const XCN_OID_NIST_sha256 = 0x00000159;
  static const XCN_OID_NIST_sha384 = 0x0000015a;
  static const XCN_OID_NIST_sha512 = 0x0000015b;
  static const XCN_OID_RSA_MGF1 = 0x0000015c;
  static const XCN_OID_ECC_PUBLIC_KEY = 0x0000015d;
  static const XCN_OID_ECDSA_SHA1 = 0x0000015e;
  static const XCN_OID_ECDSA_SPECIFIED = 0x0000015f;
  static const XCN_OID_ANY_ENHANCED_KEY_USAGE = 0x00000160;
  static const XCN_OID_RSA_SSA_PSS = 0x00000161;
  static const XCN_OID_ATTR_SUPPORTED_ALGORITHMS = 0x00000163;
  static const XCN_OID_ATTR_TPM_SECURITY_ASSERTIONS = 0x00000164;
  static const XCN_OID_ATTR_TPM_SPECIFICATION = 0x00000165;
  static const XCN_OID_CERT_DISALLOWED_FILETIME_PROP_ID = 0x00000166;
  static const XCN_OID_CERT_SIGNATURE_HASH_PROP_ID = 0x00000167;
  static const XCN_OID_CERT_STRONG_KEY_OS_1 = 0x00000168;
  static const XCN_OID_CERT_STRONG_KEY_OS_CURRENT = 0x00000169;
  static const XCN_OID_CERT_STRONG_KEY_OS_PREFIX = 0x0000016a;
  static const XCN_OID_CERT_STRONG_SIGN_OS_1 = 0x0000016b;
  static const XCN_OID_CERT_STRONG_SIGN_OS_CURRENT = 0x0000016c;
  static const XCN_OID_CERT_STRONG_SIGN_OS_PREFIX = 0x0000016d;
  static const XCN_OID_DH_SINGLE_PASS_STDDH_SHA1_KDF = 0x0000016e;
  static const XCN_OID_DH_SINGLE_PASS_STDDH_SHA256_KDF = 0x0000016f;
  static const XCN_OID_DH_SINGLE_PASS_STDDH_SHA384_KDF = 0x00000170;
  static const XCN_OID_DISALLOWED_HASH = 0x00000171;
  static const XCN_OID_DISALLOWED_LIST = 0x00000172;
  static const XCN_OID_ECC_CURVE_P256 = 0x00000173;
  static const XCN_OID_ECC_CURVE_P384 = 0x00000174;
  static const XCN_OID_ECC_CURVE_P521 = 0x00000175;
  static const XCN_OID_ECDSA_SHA256 = 0x00000176;
  static const XCN_OID_ECDSA_SHA384 = 0x00000177;
  static const XCN_OID_ECDSA_SHA512 = 0x00000178;
  static const XCN_OID_ENROLL_CAXCHGCERT_HASH = 0x00000179;
  static const XCN_OID_ENROLL_EK_INFO = 0x0000017a;
  static const XCN_OID_ENROLL_EKPUB_CHALLENGE = 0x0000017b;
  static const XCN_OID_ENROLL_EKVERIFYCERT = 0x0000017c;
  static const XCN_OID_ENROLL_EKVERIFYCREDS = 0x0000017d;
  static const XCN_OID_ENROLL_EKVERIFYKEY = 0x0000017e;
  static const XCN_OID_EV_RDN_COUNTRY = 0x0000017f;
  static const XCN_OID_EV_RDN_LOCALE = 0x00000180;
  static const XCN_OID_EV_RDN_STATE_OR_PROVINCE = 0x00000181;
  static const XCN_OID_INHIBIT_ANY_POLICY = 0x00000182;
  static const XCN_OID_INTERNATIONALIZED_EMAIL_ADDRESS = 0x00000183;
  static const XCN_OID_KP_KERNEL_MODE_CODE_SIGNING = 0x00000184;
  static const XCN_OID_KP_KERNEL_MODE_HAL_EXTENSION_SIGNING = 0x00000185;
  static const XCN_OID_KP_KERNEL_MODE_TRUSTED_BOOT_SIGNING = 0x00000186;
  static const XCN_OID_KP_TPM_AIK_CERTIFICATE = 0x00000187;
  static const XCN_OID_KP_TPM_EK_CERTIFICATE = 0x00000188;
  static const XCN_OID_KP_TPM_PLATFORM_CERTIFICATE = 0x00000189;
  static const XCN_OID_NIST_AES128_CBC = 0x0000018a;
  static const XCN_OID_NIST_AES128_WRAP = 0x0000018b;
  static const XCN_OID_NIST_AES192_CBC = 0x0000018c;
  static const XCN_OID_NIST_AES192_WRAP = 0x0000018d;
  static const XCN_OID_NIST_AES256_CBC = 0x0000018e;
  static const XCN_OID_NIST_AES256_WRAP = 0x0000018f;
  static const XCN_OID_PKCS_12_PbeIds = 0x00000190;
  static const XCN_OID_PKCS_12_pbeWithSHA1And128BitRC2 = 0x00000191;
  static const XCN_OID_PKCS_12_pbeWithSHA1And128BitRC4 = 0x00000192;
  static const XCN_OID_PKCS_12_pbeWithSHA1And2KeyTripleDES = 0x00000193;
  static const XCN_OID_PKCS_12_pbeWithSHA1And3KeyTripleDES = 0x00000194;
  static const XCN_OID_PKCS_12_pbeWithSHA1And40BitRC2 = 0x00000195;
  static const XCN_OID_PKCS_12_pbeWithSHA1And40BitRC4 = 0x00000196;
  static const XCN_OID_PKCS_12_PROTECTED_PASSWORD_SECRET_BAG_TYPE_ID = 0x00000197;
  static const XCN_OID_PKINIT_KP_KDC = 0x00000198;
  static const XCN_OID_PKIX_CA_REPOSITORY = 0x00000199;
  static const XCN_OID_PKIX_OCSP_NONCE = 0x0000019a;
  static const XCN_OID_PKIX_TIME_STAMPING = 0x0000019b;
  static const XCN_OID_QC_EU_COMPLIANCE = 0x0000019c;
  static const XCN_OID_QC_SSCD = 0x0000019d;
  static const XCN_OID_QC_STATEMENTS_EXT = 0x0000019e;
  static const XCN_OID_RDN_TPM_MANUFACTURER = 0x0000019f;
  static const XCN_OID_RDN_TPM_MODEL = 0x000001a0;
  static const XCN_OID_RDN_TPM_VERSION = 0x000001a1;
  static const XCN_OID_REVOKED_LIST_SIGNER = 0x000001a2;
  static const XCN_OID_RFC3161_counterSign = 0x000001a3;
  static const XCN_OID_ROOT_PROGRAM_AUTO_UPDATE_CA_REVOCATION = 0x000001a4;
  static const XCN_OID_ROOT_PROGRAM_AUTO_UPDATE_END_REVOCATION = 0x000001a5;
  static const XCN_OID_ROOT_PROGRAM_FLAGS = 0x000001a6;
  static const XCN_OID_ROOT_PROGRAM_NO_OCSP_FAILOVER_TO_CRL = 0x000001a7;
  static const XCN_OID_RSA_PSPECIFIED = 0x000001a8;
  static const XCN_OID_RSAES_OAEP = 0x000001a9;
  static const XCN_OID_SUBJECT_INFO_ACCESS = 0x000001aa;
  static const XCN_OID_TIMESTAMP_TOKEN = 0x000001ab;
  static const XCN_OID_ENROLL_SCEP_ERROR = 0x000001ac;
  static const XCN_OIDVerisign_MessageType = 0x000001ad;
  static const XCN_OIDVerisign_PkiStatus = 0x000001ae;
  static const XCN_OIDVerisign_FailInfo = 0x000001af;
  static const XCN_OIDVerisign_SenderNonce = 0x000001b0;
  static const XCN_OIDVerisign_RecipientNonce = 0x000001b1;
  static const XCN_OIDVerisign_TransactionID = 0x000001b2;
  static const XCN_OID_ENROLL_ATTESTATION_CHALLENGE = 0x000001b3;
  static const XCN_OID_ENROLL_ATTESTATION_STATEMENT = 0x000001b4;
  static const XCN_OID_ENROLL_ENCRYPTION_ALGORITHM = 0x000001b5;
  static const XCN_OID_ENROLL_KSP_NAME = 0x000001b6;
}

/// {@category Enum}
class WebSecurityLevel {
  static const LevelUnsafe = 0x00000000;
  static const LevelSafe = 0x00000001;
}

/// {@category Enum}
class EncodingType {
  static const XCN_CRYPT_STRING_BASE64HEADER = 0x00000000;
  static const XCN_CRYPT_STRING_BASE64 = 0x00000001;
  static const XCN_CRYPT_STRING_BINARY = 0x00000002;
  static const XCN_CRYPT_STRING_BASE64REQUESTHEADER = 0x00000003;
  static const XCN_CRYPT_STRING_HEX = 0x00000004;
  static const XCN_CRYPT_STRING_HEXASCII = 0x00000005;
  static const XCN_CRYPT_STRING_BASE64_ANY = 0x00000006;
  static const XCN_CRYPT_STRING_ANY = 0x00000007;
  static const XCN_CRYPT_STRING_HEX_ANY = 0x00000008;
  static const XCN_CRYPT_STRING_BASE64X509CRLHEADER = 0x00000009;
  static const XCN_CRYPT_STRING_HEXADDR = 0x0000000a;
  static const XCN_CRYPT_STRING_HEXASCIIADDR = 0x0000000b;
  static const XCN_CRYPT_STRING_HEXRAW = 0x0000000c;
  static const XCN_CRYPT_STRING_BASE64URI = 0x0000000d;
  static const XCN_CRYPT_STRING_ENCODEMASK = 0x000000ff;
  static const XCN_CRYPT_STRING_CHAIN = 0x00000100;
  static const XCN_CRYPT_STRING_TEXT = 0x00000200;
  static const XCN_CRYPT_STRING_PERCENTESCAPE = 0x08000000;
  static const XCN_CRYPT_STRING_HASHDATA = 0x10000000;
  static const XCN_CRYPT_STRING_STRICT = 0x20000000;
  static const XCN_CRYPT_STRING_NOCRLF = 0x40000000;
  static const XCN_CRYPT_STRING_NOCR = 0x80000000;
}

/// {@category Enum}
class PFXExportOptions {
  static const PFXExportEEOnly = 0x00000000;
  static const PFXExportChainNoRoot = 0x00000001;
  static const PFXExportChainWithRoot = 0x00000002;
}

/// {@category Enum}
class ObjectIdGroupId {
  static const XCN_CRYPT_ANY_GROUP_ID = 0x00000000;
  static const XCN_CRYPT_HASH_ALG_OID_GROUP_ID = 0x00000001;
  static const XCN_CRYPT_ENCRYPT_ALG_OID_GROUP_ID = 0x00000002;
  static const XCN_CRYPT_PUBKEY_ALG_OID_GROUP_ID = 0x00000003;
  static const XCN_CRYPT_SIGN_ALG_OID_GROUP_ID = 0x00000004;
  static const XCN_CRYPT_RDN_ATTR_OID_GROUP_ID = 0x00000005;
  static const XCN_CRYPT_EXT_OR_ATTR_OID_GROUP_ID = 0x00000006;
  static const XCN_CRYPT_ENHKEY_USAGE_OID_GROUP_ID = 0x00000007;
  static const XCN_CRYPT_POLICY_OID_GROUP_ID = 0x00000008;
  static const XCN_CRYPT_TEMPLATE_OID_GROUP_ID = 0x00000009;
  static const XCN_CRYPT_KDF_OID_GROUP_ID = 0x0000000a;
  static const XCN_CRYPT_LAST_OID_GROUP_ID = 0x0000000a;
  static const XCN_CRYPT_FIRST_ALG_OID_GROUP_ID = 0x00000001;
  static const XCN_CRYPT_LAST_ALG_OID_GROUP_ID = 0x00000004;
  static const XCN_CRYPT_GROUP_ID_MASK = 0x0000ffff;
  static const XCN_CRYPT_OID_PREFER_CNG_ALGID_FLAG = 0x40000000;
  static const XCN_CRYPT_OID_DISABLE_SEARCH_DS_FLAG = 0x80000000;
  static const XCN_CRYPT_OID_INFO_OID_GROUP_BIT_LEN_MASK = 0x0fff0000;
  static const XCN_CRYPT_OID_INFO_OID_GROUP_BIT_LEN_SHIFT = 0x00000010;
  static const XCN_CRYPT_KEY_LENGTH_MASK = 0x0fff0000;
}

/// {@category Enum}
class ObjectIdPublicKeyFlags {
  static const XCN_CRYPT_OID_INFO_PUBKEY_ANY = 0x00000000;
  static const XCN_CRYPT_OID_INFO_PUBKEY_SIGN_KEY_FLAG = 0x80000000;
  static const XCN_CRYPT_OID_INFO_PUBKEY_ENCRYPT_KEY_FLAG = 0x40000000;
}

/// {@category Enum}
class AlgorithmFlags {
  static const AlgorithmFlagsNone = 0x00000000;
  static const AlgorithmFlagsWrap = 0x00000001;
}

/// {@category Enum}
class X500NameFlags {
  static const XCN_CERT_NAME_STR_NONE = 0x00000000;
  static const XCN_CERT_SIMPLE_NAME_STR = 0x00000001;
  static const XCN_CERT_OID_NAME_STR = 0x00000002;
  static const XCN_CERT_X500_NAME_STR = 0x00000003;
  static const XCN_CERT_XML_NAME_STR = 0x00000004;
  static const XCN_CERT_NAME_STR_SEMICOLON_FLAG = 0x40000000;
  static const XCN_CERT_NAME_STR_NO_PLUS_FLAG = 0x20000000;
  static const XCN_CERT_NAME_STR_NO_QUOTING_FLAG = 0x10000000;
  static const XCN_CERT_NAME_STR_CRLF_FLAG = 0x08000000;
  static const XCN_CERT_NAME_STR_COMMA_FLAG = 0x04000000;
  static const XCN_CERT_NAME_STR_REVERSE_FLAG = 0x02000000;
  static const XCN_CERT_NAME_STR_FORWARD_FLAG = 0x01000000;
  static const XCN_CERT_NAME_STR_AMBIGUOUS_SEPARATOR_FLAGS = 0x4c000000;
  static const XCN_CERT_NAME_STR_DISABLE_IE4_UTF8_FLAG = 0x00010000;
  static const XCN_CERT_NAME_STR_ENABLE_T61_UNICODE_FLAG = 0x00020000;
  static const XCN_CERT_NAME_STR_ENABLE_UTF8_UNICODE_FLAG = 0x00040000;
  static const XCN_CERT_NAME_STR_FORCE_UTF8_DIR_STR_FLAG = 0x00080000;
  static const XCN_CERT_NAME_STR_DISABLE_UTF8_DIR_STR_FLAG = 0x00100000;
  static const XCN_CERT_NAME_STR_ENABLE_PUNYCODE_FLAG = 0x00200000;
  static const XCN_CERT_NAME_STR_DS_ESCAPED = 0x00800000;
}

/// {@category Enum}
class X509CertificateEnrollmentContext {
  static const ContextNone = 0x00000000;
  static const ContextUser = 0x00000001;
  static const ContextMachine = 0x00000002;
  static const ContextAdministratorForceMachine = 0x00000003;
}

/// {@category Enum}
class EnrollmentEnrollStatus {
  static const Enrolled = 0x00000001;
  static const EnrollPended = 0x00000002;
  static const EnrollUIDeferredEnrollmentRequired = 0x00000004;
  static const EnrollError = 0x00000010;
  static const EnrollUnknown = 0x00000020;
  static const EnrollSkipped = 0x00000040;
  static const EnrollDenied = 0x00000100;
}

/// {@category Enum}
class EnrollmentSelectionStatus {
  static const SelectedNo = 0x00000000;
  static const SelectedYes = 0x00000001;
}

/// {@category Enum}
class EnrollmentDisplayStatus {
  static const DisplayNo = 0x00000000;
  static const DisplayYes = 0x00000001;
}

/// {@category Enum}
class X509ProviderType {
  static const XCN_PROV_NONE = 0x00000000;
  static const XCN_PROV_RSA_FULL = 0x00000001;
  static const XCN_PROV_RSA_SIG = 0x00000002;
  static const XCN_PROV_DSS = 0x00000003;
  static const XCN_PROV_FORTEZZA = 0x00000004;
  static const XCN_PROV_MS_EXCHANGE = 0x00000005;
  static const XCN_PROV_SSL = 0x00000006;
  static const XCN_PROV_RSA_SCHANNEL = 0x0000000c;
  static const XCN_PROV_DSS_DH = 0x0000000d;
  static const XCN_PROV_EC_ECDSA_SIG = 0x0000000e;
  static const XCN_PROV_EC_ECNRA_SIG = 0x0000000f;
  static const XCN_PROV_EC_ECDSA_FULL = 0x00000010;
  static const XCN_PROV_EC_ECNRA_FULL = 0x00000011;
  static const XCN_PROV_DH_SCHANNEL = 0x00000012;
  static const XCN_PROV_SPYRUS_LYNKS = 0x00000014;
  static const XCN_PROV_RNG = 0x00000015;
  static const XCN_PROV_INTEL_SEC = 0x00000016;
  static const XCN_PROV_REPLACE_OWF = 0x00000017;
  static const XCN_PROV_RSA_AES = 0x00000018;
}

/// {@category Enum}
class AlgorithmType {
  static const XCN_BCRYPT_UNKNOWN_INTERFACE = 0x00000000;
  static const XCN_BCRYPT_CIPHER_INTERFACE = 0x00000001;
  static const XCN_BCRYPT_HASH_INTERFACE = 0x00000002;
  static const XCN_BCRYPT_ASYMMETRIC_ENCRYPTION_INTERFACE = 0x00000003;
  static const XCN_BCRYPT_SIGNATURE_INTERFACE = 0x00000005;
  static const XCN_BCRYPT_SECRET_AGREEMENT_INTERFACE = 0x00000004;
  static const XCN_BCRYPT_RNG_INTERFACE = 0x00000006;
  static const XCN_BCRYPT_KEY_DERIVATION_INTERFACE = 0x00000007;
}

/// {@category Enum}
class AlgorithmOperationFlags {
  static const XCN_NCRYPT_NO_OPERATION = 0x00000000;
  static const XCN_NCRYPT_CIPHER_OPERATION = 0x00000001;
  static const XCN_NCRYPT_HASH_OPERATION = 0x00000002;
  static const XCN_NCRYPT_ASYMMETRIC_ENCRYPTION_OPERATION = 0x00000004;
  static const XCN_NCRYPT_SECRET_AGREEMENT_OPERATION = 0x00000008;
  static const XCN_NCRYPT_SIGNATURE_OPERATION = 0x00000010;
  static const XCN_NCRYPT_RNG_OPERATION = 0x00000020;
  static const XCN_NCRYPT_KEY_DERIVATION_OPERATION = 0x00000040;
  static const XCN_NCRYPT_ANY_ASYMMETRIC_OPERATION = 0x0000001c;
  static const XCN_NCRYPT_PREFER_SIGNATURE_ONLY_OPERATION = 0x00200000;
  static const XCN_NCRYPT_PREFER_NON_SIGNATURE_OPERATION = 0x00400000;
  static const XCN_NCRYPT_EXACT_MATCH_OPERATION = 0x00800000;
  static const XCN_NCRYPT_PREFERENCE_MASK_OPERATION = 0x00e00000;
}

/// {@category Enum}
class X509KeySpec {
  static const XCN_AT_NONE = 0x00000000;
  static const XCN_AT_KEYEXCHANGE = 0x00000001;
  static const XCN_AT_SIGNATURE = 0x00000002;
}

/// {@category Enum}
class KeyIdentifierHashAlgorithm {
  static const SKIHashDefault = 0x00000000;
  static const SKIHashSha1 = 0x00000001;
  static const SKIHashCapiSha1 = 0x00000002;
  static const SKIHashSha256 = 0x00000003;
  static const SKIHashHPKP = 0x00000005;
}

/// {@category Enum}
class X509PrivateKeyExportFlags {
  static const XCN_NCRYPT_ALLOW_EXPORT_NONE = 0x00000000;
  static const XCN_NCRYPT_ALLOW_EXPORT_FLAG = 0x00000001;
  static const XCN_NCRYPT_ALLOW_PLAINTEXT_EXPORT_FLAG = 0x00000002;
  static const XCN_NCRYPT_ALLOW_ARCHIVING_FLAG = 0x00000004;
  static const XCN_NCRYPT_ALLOW_PLAINTEXT_ARCHIVING_FLAG = 0x00000008;
}

/// {@category Enum}
class X509PrivateKeyUsageFlags {
  static const XCN_NCRYPT_ALLOW_USAGES_NONE = 0x00000000;
  static const XCN_NCRYPT_ALLOW_DECRYPT_FLAG = 0x00000001;
  static const XCN_NCRYPT_ALLOW_SIGNING_FLAG = 0x00000002;
  static const XCN_NCRYPT_ALLOW_KEY_AGREEMENT_FLAG = 0x00000004;
  static const XCN_NCRYPT_ALLOW_KEY_IMPORT_FLAG = 0x00000008;
  static const XCN_NCRYPT_ALLOW_ALL_USAGES = 0x00ffffff;
}

/// {@category Enum}
class X509PrivateKeyProtection {
  static const XCN_NCRYPT_UI_NO_PROTECTION_FLAG = 0x00000000;
  static const XCN_NCRYPT_UI_PROTECT_KEY_FLAG = 0x00000001;
  static const XCN_NCRYPT_UI_FORCE_HIGH_PROTECTION_FLAG = 0x00000002;
  static const XCN_NCRYPT_UI_FINGERPRINT_PROTECTION_FLAG = 0x00000004;
  static const XCN_NCRYPT_UI_APPCONTAINER_ACCESS_MEDIUM_FLAG = 0x00000008;
}

/// {@category Enum}
class X509PrivateKeyVerify {
  static const VerifyNone = 0x00000000;
  static const VerifySilent = 0x00000001;
  static const VerifySmartCardNone = 0x00000002;
  static const VerifySmartCardSilent = 0x00000003;
  static const VerifyAllowUI = 0x00000004;
}

/// {@category Enum}
class X509HardwareKeyUsageFlags {
  static const XCN_NCRYPT_PCP_NONE = 0x00000000;
  static const XCN_NCRYPT_TPM12_PROVIDER = 0x00010000;
  static const XCN_NCRYPT_PCP_SIGNATURE_KEY = 0x00000001;
  static const XCN_NCRYPT_PCP_ENCRYPTION_KEY = 0x00000002;
  static const XCN_NCRYPT_PCP_GENERIC_KEY = 0x00000003;
  static const XCN_NCRYPT_PCP_STORAGE_KEY = 0x00000004;
  static const XCN_NCRYPT_PCP_IDENTITY_KEY = 0x00000008;
}

/// {@category Enum}
class X509KeyParametersExportType {
  static const XCN_CRYPT_OID_USE_CURVE_NONE = 0x00000000;
  static const XCN_CRYPT_OID_USE_CURVE_NAME_FOR_ENCODE_FLAG = 0x20000000;
  static const XCN_CRYPT_OID_USE_CURVE_PARAMETERS_FOR_ENCODE_FLAG = 0x10000000;
}

/// {@category Enum}
class X509KeyUsageFlags {
  static const XCN_CERT_NO_KEY_USAGE = 0x00000000;
  static const XCN_CERT_DIGITAL_SIGNATURE_KEY_USAGE = 0x00000080;
  static const XCN_CERT_NON_REPUDIATION_KEY_USAGE = 0x00000040;
  static const XCN_CERT_KEY_ENCIPHERMENT_KEY_USAGE = 0x00000020;
  static const XCN_CERT_DATA_ENCIPHERMENT_KEY_USAGE = 0x00000010;
  static const XCN_CERT_KEY_AGREEMENT_KEY_USAGE = 0x00000008;
  static const XCN_CERT_KEY_CERT_SIGN_KEY_USAGE = 0x00000004;
  static const XCN_CERT_OFFLINE_CRL_SIGN_KEY_USAGE = 0x00000002;
  static const XCN_CERT_CRL_SIGN_KEY_USAGE = 0x00000002;
  static const XCN_CERT_ENCIPHER_ONLY_KEY_USAGE = 0x00000001;
  static const XCN_CERT_DECIPHER_ONLY_KEY_USAGE = 0x00008000;
}

/// {@category Enum}
class AlternativeNameType {
  static const XCN_CERT_ALT_NAME_UNKNOWN = 0x00000000;
  static const XCN_CERT_ALT_NAME_OTHER_NAME = 0x00000001;
  static const XCN_CERT_ALT_NAME_RFC822_NAME = 0x00000002;
  static const XCN_CERT_ALT_NAME_DNS_NAME = 0x00000003;
  static const XCN_CERT_ALT_NAME_X400_ADDRESS = 0x00000004;
  static const XCN_CERT_ALT_NAME_DIRECTORY_NAME = 0x00000005;
  static const XCN_CERT_ALT_NAME_EDI_PARTY_NAME = 0x00000006;
  static const XCN_CERT_ALT_NAME_URL = 0x00000007;
  static const XCN_CERT_ALT_NAME_IP_ADDRESS = 0x00000008;
  static const XCN_CERT_ALT_NAME_REGISTERED_ID = 0x00000009;
  static const XCN_CERT_ALT_NAME_GUID = 0x0000000a;
  static const XCN_CERT_ALT_NAME_USER_PRINCIPLE_NAME = 0x0000000b;
}

/// {@category Enum}
class PolicyQualifierType {
  static const PolicyQualifierTypeUnknown = 0x00000000;
  static const PolicyQualifierTypeUrl = 0x00000001;
  static const PolicyQualifierTypeUserNotice = 0x00000002;
  static const PolicyQualifierTypeFlags = 0x00000003;
}

/// {@category Enum}
class RequestClientInfoClientId {
  static const ClientIdNone = 0x00000000;
  static const ClientIdXEnroll2003 = 0x00000001;
  static const ClientIdAutoEnroll2003 = 0x00000002;
  static const ClientIdWizard2003 = 0x00000003;
  static const ClientIdCertReq2003 = 0x00000004;
  static const ClientIdDefaultRequest = 0x00000005;
  static const ClientIdAutoEnroll = 0x00000006;
  static const ClientIdRequestWizard = 0x00000007;
  static const ClientIdEOBO = 0x00000008;
  static const ClientIdCertReq = 0x00000009;
  static const ClientIdTest = 0x0000000a;
  static const ClientIdWinRT = 0x0000000b;
  static const ClientIdUserStart = 0x000003e8;
}

/// {@category Enum}
class CERTENROLL_PROPERTYID {
  static const XCN_PROPERTYID_NONE = 0x00000000;
  static const XCN_CERT_KEY_PROV_HANDLE_PROP_ID = 0x00000001;
  static const XCN_CERT_KEY_PROV_INFO_PROP_ID = 0x00000002;
  static const XCN_CERT_SHA1_HASH_PROP_ID = 0x00000003;
  static const XCN_CERT_MD5_HASH_PROP_ID = 0x00000004;
  static const XCN_CERT_HASH_PROP_ID = 0x00000003;
  static const XCN_CERT_KEY_CONTEXT_PROP_ID = 0x00000005;
  static const XCN_CERT_KEY_SPEC_PROP_ID = 0x00000006;
  static const XCN_CERT_IE30_RESERVED_PROP_ID = 0x00000007;
  static const XCN_CERT_PUBKEY_HASH_RESERVED_PROP_ID = 0x00000008;
  static const XCN_CERT_ENHKEY_USAGE_PROP_ID = 0x00000009;
  static const XCN_CERT_CTL_USAGE_PROP_ID = 0x00000009;
  static const XCN_CERT_NEXT_UPDATE_LOCATION_PROP_ID = 0x0000000a;
  static const XCN_CERT_FRIENDLY_NAME_PROP_ID = 0x0000000b;
  static const XCN_CERT_PVK_FILE_PROP_ID = 0x0000000c;
  static const XCN_CERT_DESCRIPTION_PROP_ID = 0x0000000d;
  static const XCN_CERT_ACCESS_STATE_PROP_ID = 0x0000000e;
  static const XCN_CERT_SIGNATURE_HASH_PROP_ID = 0x0000000f;
  static const XCN_CERT_SMART_CARD_DATA_PROP_ID = 0x00000010;
  static const XCN_CERT_EFS_PROP_ID = 0x00000011;
  static const XCN_CERT_FORTEZZA_DATA_PROP_ID = 0x00000012;
  static const XCN_CERT_ARCHIVED_PROP_ID = 0x00000013;
  static const XCN_CERT_KEY_IDENTIFIER_PROP_ID = 0x00000014;
  static const XCN_CERT_AUTO_ENROLL_PROP_ID = 0x00000015;
  static const XCN_CERT_PUBKEY_ALG_PARA_PROP_ID = 0x00000016;
  static const XCN_CERT_CROSS_CERT_DIST_POINTS_PROP_ID = 0x00000017;
  static const XCN_CERT_ISSUER_PUBLIC_KEY_MD5_HASH_PROP_ID = 0x00000018;
  static const XCN_CERT_SUBJECT_PUBLIC_KEY_MD5_HASH_PROP_ID = 0x00000019;
  static const XCN_CERT_ENROLLMENT_PROP_ID = 0x0000001a;
  static const XCN_CERT_DATE_STAMP_PROP_ID = 0x0000001b;
  static const XCN_CERT_ISSUER_SERIAL_NUMBER_MD5_HASH_PROP_ID = 0x0000001c;
  static const XCN_CERT_SUBJECT_NAME_MD5_HASH_PROP_ID = 0x0000001d;
  static const XCN_CERT_EXTENDED_ERROR_INFO_PROP_ID = 0x0000001e;
  static const XCN_CERT_RENEWAL_PROP_ID = 0x00000040;
  static const XCN_CERT_ARCHIVED_KEY_HASH_PROP_ID = 0x00000041;
  static const XCN_CERT_AUTO_ENROLL_RETRY_PROP_ID = 0x00000042;
  static const XCN_CERT_AIA_URL_RETRIEVED_PROP_ID = 0x00000043;
  static const XCN_CERT_AUTHORITY_INFO_ACCESS_PROP_ID = 0x00000044;
  static const XCN_CERT_BACKED_UP_PROP_ID = 0x00000045;
  static const XCN_CERT_OCSP_RESPONSE_PROP_ID = 0x00000046;
  static const XCN_CERT_REQUEST_ORIGINATOR_PROP_ID = 0x00000047;
  static const XCN_CERT_SOURCE_LOCATION_PROP_ID = 0x00000048;
  static const XCN_CERT_SOURCE_URL_PROP_ID = 0x00000049;
  static const XCN_CERT_NEW_KEY_PROP_ID = 0x0000004a;
  static const XCN_CERT_OCSP_CACHE_PREFIX_PROP_ID = 0x0000004b;
  static const XCN_CERT_SMART_CARD_ROOT_INFO_PROP_ID = 0x0000004c;
  static const XCN_CERT_NO_AUTO_EXPIRE_CHECK_PROP_ID = 0x0000004d;
  static const XCN_CERT_NCRYPT_KEY_HANDLE_PROP_ID = 0x0000004e;
  static const XCN_CERT_HCRYPTPROV_OR_NCRYPT_KEY_HANDLE_PROP_ID = 0x0000004f;
  static const XCN_CERT_SUBJECT_INFO_ACCESS_PROP_ID = 0x00000050;
  static const XCN_CERT_CA_OCSP_AUTHORITY_INFO_ACCESS_PROP_ID = 0x00000051;
  static const XCN_CERT_CA_DISABLE_CRL_PROP_ID = 0x00000052;
  static const XCN_CERT_ROOT_PROGRAM_CERT_POLICIES_PROP_ID = 0x00000053;
  static const XCN_CERT_ROOT_PROGRAM_NAME_CONSTRAINTS_PROP_ID = 0x00000054;
  static const XCN_CERT_SUBJECT_OCSP_AUTHORITY_INFO_ACCESS_PROP_ID = 0x00000055;
  static const XCN_CERT_SUBJECT_DISABLE_CRL_PROP_ID = 0x00000056;
  static const XCN_CERT_CEP_PROP_ID = 0x00000057;
  static const XCN_CERT_SIGN_HASH_CNG_ALG_PROP_ID = 0x00000059;
  static const XCN_CERT_SCARD_PIN_ID_PROP_ID = 0x0000005a;
  static const XCN_CERT_SCARD_PIN_INFO_PROP_ID = 0x0000005b;
  static const XCN_CERT_SUBJECT_PUB_KEY_BIT_LENGTH_PROP_ID = 0x0000005c;
  static const XCN_CERT_PUB_KEY_CNG_ALG_BIT_LENGTH_PROP_ID = 0x0000005d;
  static const XCN_CERT_ISSUER_PUB_KEY_BIT_LENGTH_PROP_ID = 0x0000005e;
  static const XCN_CERT_ISSUER_CHAIN_SIGN_HASH_CNG_ALG_PROP_ID = 0x0000005f;
  static const XCN_CERT_ISSUER_CHAIN_PUB_KEY_CNG_ALG_BIT_LENGTH_PROP_ID = 0x00000060;
  static const XCN_CERT_NO_EXPIRE_NOTIFICATION_PROP_ID = 0x00000061;
  static const XCN_CERT_AUTH_ROOT_SHA256_HASH_PROP_ID = 0x00000062;
  static const XCN_CERT_NCRYPT_KEY_HANDLE_TRANSFER_PROP_ID = 0x00000063;
  static const XCN_CERT_HCRYPTPROV_TRANSFER_PROP_ID = 0x00000064;
  static const XCN_CERT_SMART_CARD_READER_PROP_ID = 0x00000065;
  static const XCN_CERT_SEND_AS_TRUSTED_ISSUER_PROP_ID = 0x00000066;
  static const XCN_CERT_KEY_REPAIR_ATTEMPTED_PROP_ID = 0x00000067;
  static const XCN_CERT_DISALLOWED_FILETIME_PROP_ID = 0x00000068;
  static const XCN_CERT_ROOT_PROGRAM_CHAIN_POLICIES_PROP_ID = 0x00000069;
  static const XCN_CERT_SMART_CARD_READER_NON_REMOVABLE_PROP_ID = 0x0000006a;
  static const XCN_CERT_SHA256_HASH_PROP_ID = 0x0000006b;
  static const XCN_CERT_SCEP_SERVER_CERTS_PROP_ID = 0x0000006c;
  static const XCN_CERT_SCEP_RA_SIGNATURE_CERT_PROP_ID = 0x0000006d;
  static const XCN_CERT_SCEP_RA_ENCRYPTION_CERT_PROP_ID = 0x0000006e;
  static const XCN_CERT_SCEP_CA_CERT_PROP_ID = 0x0000006f;
  static const XCN_CERT_SCEP_SIGNER_CERT_PROP_ID = 0x00000070;
  static const XCN_CERT_SCEP_NONCE_PROP_ID = 0x00000071;
  static const XCN_CERT_SCEP_ENCRYPT_HASH_CNG_ALG_PROP_ID = 0x00000072;
  static const XCN_CERT_SCEP_FLAGS_PROP_ID = 0x00000073;
  static const XCN_CERT_SCEP_GUID_PROP_ID = 0x00000074;
  static const XCN_CERT_SERIALIZABLE_KEY_CONTEXT_PROP_ID = 0x00000075;
  static const XCN_CERT_ISOLATED_KEY_PROP_ID = 0x00000076;
  static const XCN_CERT_SERIAL_CHAIN_PROP_ID = 0x00000077;
  static const XCN_CERT_KEY_CLASSIFICATION_PROP_ID = 0x00000078;
  static const XCN_CERT_DISALLOWED_ENHKEY_USAGE_PROP_ID = 0x0000007a;
  static const XCN_CERT_NONCOMPLIANT_ROOT_URL_PROP_ID = 0x0000007b;
  static const XCN_CERT_PIN_SHA256_HASH_PROP_ID = 0x0000007c;
  static const XCN_CERT_CLR_DELETE_KEY_PROP_ID = 0x0000007d;
  static const XCN_CERT_NOT_BEFORE_FILETIME_PROP_ID = 0x0000007e;
  static const XCN_CERT_CERT_NOT_BEFORE_ENHKEY_USAGE_PROP_ID = 0x0000007f;
  static const XCN_CERT_FIRST_RESERVED_PROP_ID = 0x00000080;
  static const XCN_CERT_LAST_RESERVED_PROP_ID = 0x00007fff;
  static const XCN_CERT_FIRST_USER_PROP_ID = 0x00008000;
  static const XCN_CERT_LAST_USER_PROP_ID = 0x0000ffff;
  static const XCN_CERT_STORE_LOCALIZED_NAME_PROP_ID = 0x00001000;
}

/// {@category Enum}
class EnrollmentPolicyServerPropertyFlags {
  static const DefaultNone = 0x00000000;
  static const DefaultPolicyServer = 0x00000001;
}

/// {@category Enum}
class PolicyServerUrlFlags {
  static const PsfNone = 0x00000000;
  static const PsfLocationGroupPolicy = 0x00000001;
  static const PsfLocationRegistry = 0x00000002;
  static const PsfUseClientId = 0x00000004;
  static const PsfAutoEnrollmentEnabled = 0x00000010;
  static const PsfAllowUnTrustedCA = 0x00000020;
}

/// {@category Enum}
class EnrollmentTemplateProperty {
  static const TemplatePropCommonName = 0x00000001;
  static const TemplatePropFriendlyName = 0x00000002;
  static const TemplatePropEKUs = 0x00000003;
  static const TemplatePropCryptoProviders = 0x00000004;
  static const TemplatePropMajorRevision = 0x00000005;
  static const TemplatePropDescription = 0x00000006;
  static const TemplatePropKeySpec = 0x00000007;
  static const TemplatePropSchemaVersion = 0x00000008;
  static const TemplatePropMinorRevision = 0x00000009;
  static const TemplatePropRASignatureCount = 0x0000000a;
  static const TemplatePropMinimumKeySize = 0x0000000b;
  static const TemplatePropOID = 0x0000000c;
  static const TemplatePropSupersede = 0x0000000d;
  static const TemplatePropRACertificatePolicies = 0x0000000e;
  static const TemplatePropRAEKUs = 0x0000000f;
  static const TemplatePropCertificatePolicies = 0x00000010;
  static const TemplatePropV1ApplicationPolicy = 0x00000011;
  static const TemplatePropAsymmetricAlgorithm = 0x00000012;
  static const TemplatePropKeySecurityDescriptor = 0x00000013;
  static const TemplatePropSymmetricAlgorithm = 0x00000014;
  static const TemplatePropSymmetricKeyLength = 0x00000015;
  static const TemplatePropHashAlgorithm = 0x00000016;
  static const TemplatePropKeyUsage = 0x00000017;
  static const TemplatePropEnrollmentFlags = 0x00000018;
  static const TemplatePropSubjectNameFlags = 0x00000019;
  static const TemplatePropPrivateKeyFlags = 0x0000001a;
  static const TemplatePropGeneralFlags = 0x0000001b;
  static const TemplatePropSecurityDescriptor = 0x0000001c;
  static const TemplatePropExtensions = 0x0000001d;
  static const TemplatePropValidityPeriod = 0x0000001e;
  static const TemplatePropRenewalPeriod = 0x0000001f;
}

/// {@category Enum}
class CommitTemplateFlags {
  static const CommitFlagSaveTemplateGenerateOID = 0x00000001;
  static const CommitFlagSaveTemplateUseCurrentOID = 0x00000002;
  static const CommitFlagSaveTemplateOverwrite = 0x00000003;
  static const CommitFlagDeleteTemplate = 0x00000004;
}

/// {@category Enum}
class EnrollmentCAProperty {
  static const CAPropCommonName = 0x00000001;
  static const CAPropDistinguishedName = 0x00000002;
  static const CAPropSanitizedName = 0x00000003;
  static const CAPropSanitizedShortName = 0x00000004;
  static const CAPropDNSName = 0x00000005;
  static const CAPropCertificateTypes = 0x00000006;
  static const CAPropCertificate = 0x00000007;
  static const CAPropDescription = 0x00000008;
  static const CAPropWebServers = 0x00000009;
  static const CAPropSiteName = 0x0000000a;
  static const CAPropSecurity = 0x0000000b;
  static const CAPropRenewalOnly = 0x0000000c;
}

/// {@category Enum}
class X509EnrollmentPolicyLoadOption {
  static const LoadOptionDefault = 0x00000000;
  static const LoadOptionCacheOnly = 0x00000001;
  static const LoadOptionReload = 0x00000002;
  static const LoadOptionRegisterForADChanges = 0x00000004;
}

/// {@category Enum}
class EnrollmentPolicyFlags {
  static const DisableGroupPolicyList = 0x00000002;
  static const DisableUserServerList = 0x00000004;
}

/// {@category Enum}
class PolicyServerUrlPropertyID {
  static const PsPolicyID = 0x00000000;
  static const PsFriendlyName = 0x00000001;
}

/// {@category Enum}
class X509EnrollmentPolicyExportFlags {
  static const ExportTemplates = 0x00000001;
  static const ExportOIDs = 0x00000002;
  static const ExportCAs = 0x00000004;
}

/// {@category Enum}
class X509RequestType {
  static const TypeAny = 0x00000000;
  static const TypePkcs10 = 0x00000001;
  static const TypePkcs7 = 0x00000002;
  static const TypeCmc = 0x00000003;
  static const TypeCertificate = 0x00000004;
}

/// {@category Enum}
class X509RequestInheritOptions {
  static const InheritDefault = 0x00000000;
  static const InheritNewDefaultKey = 0x00000001;
  static const InheritNewSimilarKey = 0x00000002;
  static const InheritPrivateKey = 0x00000003;
  static const InheritPublicKey = 0x00000004;
  static const InheritKeyMask = 0x0000000f;
  static const InheritNone = 0x00000010;
  static const InheritRenewalCertificateFlag = 0x00000020;
  static const InheritTemplateFlag = 0x00000040;
  static const InheritSubjectFlag = 0x00000080;
  static const InheritExtensionsFlag = 0x00000100;
  static const InheritSubjectAltNameFlag = 0x00000200;
  static const InheritValidityPeriodFlag = 0x00000400;
  static const InheritReserved80000000 = 0x80000000;
}

/// {@category Enum}
class InnerRequestLevel {
  static const LevelInnermost = 0x00000000;
  static const LevelNext = 0x00000001;
}

/// {@category Enum}
class Pkcs10AllowedSignatureTypes {
  static const AllowedKeySignature = 0x00000001;
  static const AllowedNullSignature = 0x00000002;
}

/// {@category Enum}
class KeyAttestationClaimType {
  static const XCN_NCRYPT_CLAIM_NONE = 0x00000000;
  static const XCN_NCRYPT_CLAIM_AUTHORITY_AND_SUBJECT = 0x00000003;
  static const XCN_NCRYPT_CLAIM_AUTHORITY_ONLY = 0x00000001;
  static const XCN_NCRYPT_CLAIM_SUBJECT_ONLY = 0x00000002;
  static const XCN_NCRYPT_CLAIM_UNKNOWN = 0x00001000;
}

/// {@category Enum}
class InstallResponseRestrictionFlags {
  static const AllowNone = 0x00000000;
  static const AllowNoOutstandingRequest = 0x00000001;
  static const AllowUntrustedCertificate = 0x00000002;
  static const AllowUntrustedRoot = 0x00000004;
}

/// {@category Enum}
class WebEnrollmentFlags {
  static const EnrollPrompt = 0x00000001;
}

/// {@category Enum}
class CRLRevocationReason {
  static const XCN_CRL_REASON_UNSPECIFIED = 0x00000000;
  static const XCN_CRL_REASON_KEY_COMPROMISE = 0x00000001;
  static const XCN_CRL_REASON_CA_COMPROMISE = 0x00000002;
  static const XCN_CRL_REASON_AFFILIATION_CHANGED = 0x00000003;
  static const XCN_CRL_REASON_SUPERSEDED = 0x00000004;
  static const XCN_CRL_REASON_CESSATION_OF_OPERATION = 0x00000005;
  static const XCN_CRL_REASON_CERTIFICATE_HOLD = 0x00000006;
  static const XCN_CRL_REASON_REMOVE_FROM_CRL = 0x00000008;
  static const XCN_CRL_REASON_PRIVILEGE_WITHDRAWN = 0x00000009;
  static const XCN_CRL_REASON_AA_COMPROMISE = 0x0000000a;
}

/// {@category Enum}
class X509SCEPProcessMessageFlags {
  static const SCEPProcessDefault = 0x00000000;
  static const SCEPProcessSkipCertInstall = 0x00000001;
}

/// {@category Enum}
class DelayRetryAction {
  static const DelayRetryUnknown = 0x00000000;
  static const DelayRetryNone = 0x00000001;
  static const DelayRetryShort = 0x00000002;
  static const DelayRetryLong = 0x00000003;
  static const DelayRetrySuccess = 0x00000004;
  static const DelayRetryPastSuccess = 0x00000005;
}

/// {@category Enum}
class X509CertificateTemplateGeneralFlag {
  static const GeneralMachineType = 0x00000040;
  static const GeneralCA = 0x00000080;
  static const GeneralCrossCA = 0x00000800;
  static const GeneralDefault = 0x00010000;
  static const GeneralModified = 0x00020000;
  static const GeneralDonotPersist = 0x00001000;
}

/// {@category Enum}
class X509CertificateTemplateEnrollmentFlag {
  static const EnrollmentIncludeSymmetricAlgorithms = 0x00000001;
  static const EnrollmentPendAllRequests = 0x00000002;
  static const EnrollmentPublishToKRAContainer = 0x00000004;
  static const EnrollmentPublishToDS = 0x00000008;
  static const EnrollmentAutoEnrollmentCheckUserDSCertificate = 0x00000010;
  static const EnrollmentAutoEnrollment = 0x00000020;
  static const EnrollmentDomainAuthenticationNotRequired = 0x00000080;
  static const EnrollmentPreviousApprovalValidateReenrollment = 0x00000040;
  static const EnrollmentUserInteractionRequired = 0x00000100;
  static const EnrollmentAddTemplateName = 0x00000200;
  static const EnrollmentRemoveInvalidCertificateFromPersonalStore = 0x00000400;
  static const EnrollmentAllowEnrollOnBehalfOf = 0x00000800;
  static const EnrollmentAddOCSPNoCheck = 0x00001000;
  static const EnrollmentReuseKeyOnFullSmartCard = 0x00002000;
  static const EnrollmentNoRevocationInfoInCerts = 0x00004000;
  static const EnrollmentIncludeBasicConstraintsForEECerts = 0x00008000;
  static const EnrollmentPreviousApprovalKeyBasedValidateReenrollment = 0x00010000;
  static const EnrollmentCertificateIssuancePoliciesFromRequest = 0x00020000;
  static const EnrollmentSkipAutoRenewal = 0x00040000;
}

/// {@category Enum}
class X509CertificateTemplateSubjectNameFlag {
  static const SubjectNameEnrolleeSupplies = 0x00000001;
  static const SubjectNameRequireDirectoryPath = 0x80000000;
  static const SubjectNameRequireCommonName = 0x40000000;
  static const SubjectNameRequireEmail = 0x20000000;
  static const SubjectNameRequireDNS = 0x10000000;
  static const SubjectNameAndAlternativeNameOldCertSupplies = 0x00000008;
  static const SubjectAlternativeNameEnrolleeSupplies = 0x00010000;
  static const SubjectAlternativeNameRequireDirectoryGUID = 0x01000000;
  static const SubjectAlternativeNameRequireUPN = 0x02000000;
  static const SubjectAlternativeNameRequireEmail = 0x04000000;
  static const SubjectAlternativeNameRequireSPN = 0x00800000;
  static const SubjectAlternativeNameRequireDNS = 0x08000000;
  static const SubjectAlternativeNameRequireDomainDNS = 0x00400000;
}

/// {@category Enum}
class X509CertificateTemplatePrivateKeyFlag {
  static const PrivateKeyRequireArchival = 0x00000001;
  static const PrivateKeyExportable = 0x00000010;
  static const PrivateKeyRequireStrongKeyProtection = 0x00000020;
  static const PrivateKeyRequireAlternateSignatureAlgorithm = 0x00000040;
  static const PrivateKeyRequireSameKeyRenewal = 0x00000080;
  static const PrivateKeyUseLegacyProvider = 0x00000100;
  static const PrivateKeyEKTrustOnUse = 0x00000200;
  static const PrivateKeyEKValidateCert = 0x00000400;
  static const PrivateKeyEKValidateKey = 0x00000800;
  static const PrivateKeyAttestNone = 0x00000000;
  static const PrivateKeyAttestPreferred = 0x00001000;
  static const PrivateKeyAttestRequired = 0x00002000;
  static const PrivateKeyAttestMask = 0x00003000;
  static const PrivateKeyAttestWithoutPolicy = 0x00004000;
  static const PrivateKeyServerVersionMask = 0x000f0000;
  static const PrivateKeyServerVersionShift = 0x00000010;
  static const PrivateKeyHelloKspKey = 0x00100000;
  static const PrivateKeyHelloLogonKey = 0x00200000;
  static const PrivateKeyClientVersionMask = 0x0f000000;
  static const PrivateKeyClientVersionShift = 0x00000018;
}

/// {@category Enum}
class ImportPFXFlags {
  static const ImportNone = 0x00000000;
  static const ImportMachineContext = 0x00000001;
  static const ImportForceOverwrite = 0x00000002;
  static const ImportSilent = 0x00000004;
  static const ImportSaveProperties = 0x00000008;
  static const ImportExportable = 0x00000010;
  static const ImportExportableEncrypted = 0x00000020;
  static const ImportNoUserProtected = 0x00000040;
  static const ImportUserProtected = 0x00000080;
  static const ImportUserProtectedHigh = 0x00000100;
  static const ImportInstallCertificate = 0x00000200;
  static const ImportInstallChain = 0x00000400;
  static const ImportInstallChainAndRoot = 0x00000800;
}

/// {@category Enum}
class TOKENBINDING_TYPE {
  static const TOKENBINDING_TYPE_PROVIDED = 0x00000000;
  static const TOKENBINDING_TYPE_REFERRED = 0x00000001;
}

/// {@category Enum}
class TOKENBINDING_EXTENSION_FORMAT {
  static const TOKENBINDING_EXTENSION_FORMAT_UNDEFINED = 0x00000000;
}

/// {@category Enum}
class TOKENBINDING_KEY_PARAMETERS_TYPE {
  static const TOKENBINDING_KEY_PARAMETERS_TYPE_RSA2048_PKCS = 0x00000000;
  static const TOKENBINDING_KEY_PARAMETERS_TYPE_RSA2048_PSS = 0x00000001;
  static const TOKENBINDING_KEY_PARAMETERS_TYPE_ECDSAP256 = 0x00000002;
  static const TOKENBINDING_KEY_PARAMETERS_TYPE_ANYEXISTING = 0x000000ff;
}

/// {@category Enum}
class CRYPT_XML_CHARSET {
  static const CRYPT_XML_CHARSET_AUTO = 0x00000000;
  static const CRYPT_XML_CHARSET_UTF8 = 0x00000001;
  static const CRYPT_XML_CHARSET_UTF16LE = 0x00000002;
  static const CRYPT_XML_CHARSET_UTF16BE = 0x00000003;
}

/// {@category Enum}
class CRYPT_XML_PROPERTY_ID {
  static const CRYPT_XML_PROPERTY_MAX_HEAP_SIZE = 0x00000001;
  static const CRYPT_XML_PROPERTY_SIGNATURE_LOCATION = 0x00000002;
  static const CRYPT_XML_PROPERTY_MAX_SIGNATURES = 0x00000003;
  static const CRYPT_XML_PROPERTY_DOC_DECLARATION = 0x00000004;
  static const CRYPT_XML_PROPERTY_XML_OUTPUT_CHARSET = 0x00000005;
}

/// {@category Enum}
class CRYPT_XML_KEYINFO_SPEC {
  static const CRYPT_XML_KEYINFO_SPEC_NONE = 0x00000000;
  static const CRYPT_XML_KEYINFO_SPEC_ENCODED = 0x00000001;
  static const CRYPT_XML_KEYINFO_SPEC_PARAM = 0x00000002;
}

/// {@category Enum}
class CASetupProperty {
  static const ENUM_SETUPPROP_INVALID = 0xffffffff;
  static const ENUM_SETUPPROP_CATYPE = 0x00000000;
  static const ENUM_SETUPPROP_CAKEYINFORMATION = 0x00000001;
  static const ENUM_SETUPPROP_INTERACTIVE = 0x00000002;
  static const ENUM_SETUPPROP_CANAME = 0x00000003;
  static const ENUM_SETUPPROP_CADSSUFFIX = 0x00000004;
  static const ENUM_SETUPPROP_VALIDITYPERIOD = 0x00000005;
  static const ENUM_SETUPPROP_VALIDITYPERIODUNIT = 0x00000006;
  static const ENUM_SETUPPROP_EXPIRATIONDATE = 0x00000007;
  static const ENUM_SETUPPROP_PRESERVEDATABASE = 0x00000008;
  static const ENUM_SETUPPROP_DATABASEDIRECTORY = 0x00000009;
  static const ENUM_SETUPPROP_LOGDIRECTORY = 0x0000000a;
  static const ENUM_SETUPPROP_SHAREDFOLDER = 0x0000000b;
  static const ENUM_SETUPPROP_PARENTCAMACHINE = 0x0000000c;
  static const ENUM_SETUPPROP_PARENTCANAME = 0x0000000d;
  static const ENUM_SETUPPROP_REQUESTFILE = 0x0000000e;
  static const ENUM_SETUPPROP_WEBCAMACHINE = 0x0000000f;
  static const ENUM_SETUPPROP_WEBCANAME = 0x00000010;
}

/// {@category Enum}
class MSCEPSetupProperty {
  static const ENUM_CEPSETUPPROP_USELOCALSYSTEM = 0x00000000;
  static const ENUM_CEPSETUPPROP_USECHALLENGE = 0x00000001;
  static const ENUM_CEPSETUPPROP_RANAME_CN = 0x00000002;
  static const ENUM_CEPSETUPPROP_RANAME_EMAIL = 0x00000003;
  static const ENUM_CEPSETUPPROP_RANAME_COMPANY = 0x00000004;
  static const ENUM_CEPSETUPPROP_RANAME_DEPT = 0x00000005;
  static const ENUM_CEPSETUPPROP_RANAME_CITY = 0x00000006;
  static const ENUM_CEPSETUPPROP_RANAME_STATE = 0x00000007;
  static const ENUM_CEPSETUPPROP_RANAME_COUNTRY = 0x00000008;
  static const ENUM_CEPSETUPPROP_SIGNINGKEYINFORMATION = 0x00000009;
  static const ENUM_CEPSETUPPROP_EXCHANGEKEYINFORMATION = 0x0000000a;
  static const ENUM_CEPSETUPPROP_CAINFORMATION = 0x0000000b;
  static const ENUM_CEPSETUPPROP_MSCEPURL = 0x0000000c;
  static const ENUM_CEPSETUPPROP_CHALLENGEURL = 0x0000000d;
}

/// {@category Enum}
class CESSetupProperty {
  static const ENUM_CESSETUPPROP_USE_IISAPPPOOLIDENTITY = 0x00000000;
  static const ENUM_CESSETUPPROP_CACONFIG = 0x00000001;
  static const ENUM_CESSETUPPROP_AUTHENTICATION = 0x00000002;
  static const ENUM_CESSETUPPROP_SSLCERTHASH = 0x00000003;
  static const ENUM_CESSETUPPROP_URL = 0x00000004;
  static const ENUM_CESSETUPPROP_RENEWALONLY = 0x00000005;
  static const ENUM_CESSETUPPROP_ALLOW_KEYBASED_RENEWAL = 0x00000006;
}

/// {@category Enum}
class CEPSetupProperty {
  static const ENUM_CEPSETUPPROP_AUTHENTICATION = 0x00000000;
  static const ENUM_CEPSETUPPROP_SSLCERTHASH = 0x00000001;
  static const ENUM_CEPSETUPPROP_URL = 0x00000002;
  static const ENUM_CEPSETUPPROP_KEYBASED_RENEWAL = 0x00000003;
}

/// {@category Enum}
class OCSPSigningFlag {
  static const OCSP_SF_SILENT = 0x00000001;
  static const OCSP_SF_USE_CACERT = 0x00000002;
  static const OCSP_SF_ALLOW_SIGNINGCERT_AUTORENEWAL = 0x00000004;
  static const OCSP_SF_FORCE_SIGNINGCERT_ISSUER_ISCA = 0x00000008;
  static const OCSP_SF_AUTODISCOVER_SIGNINGCERT = 0x00000010;
  static const OCSP_SF_MANUAL_ASSIGN_SIGNINGCERT = 0x00000020;
  static const OCSP_SF_RESPONDER_ID_KEYHASH = 0x00000040;
  static const OCSP_SF_RESPONDER_ID_NAME = 0x00000080;
  static const OCSP_SF_ALLOW_NONCE_EXTENSION = 0x00000100;
  static const OCSP_SF_ALLOW_SIGNINGCERT_AUTOENROLLMENT = 0x00000200;
}

/// {@category Enum}
class OCSPRequestFlag {
  static const OCSP_RF_REJECT_SIGNED_REQUESTS = 0x00000001;
}

/// {@category Enum}
class ENUM_CATYPES {
  static const ENUM_ENTERPRISE_ROOTCA = 0x00000000;
  static const ENUM_ENTERPRISE_SUBCA = 0x00000001;
  static const ENUM_STANDALONE_ROOTCA = 0x00000003;
  static const ENUM_STANDALONE_SUBCA = 0x00000004;
  static const ENUM_UNKNOWN_CA = 0x00000005;
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
class SCESVC_INFO_TYPE {
  static const SceSvcConfigurationInfo = 0x00000000;
  static const SceSvcMergedPolicyInfo = 0x00000001;
  static const SceSvcAnalysisInfo = 0x00000002;
  static const SceSvcInternalUse = 0x00000003;
}

/// {@category Enum}
class SAFER_POLICY_INFO_CLASS {
  static const SaferPolicyLevelList = 0x00000001;
  static const SaferPolicyEnableTransparentEnforcement = 0x00000002;
  static const SaferPolicyDefaultLevel = 0x00000003;
  static const SaferPolicyEvaluateUserScope = 0x00000004;
  static const SaferPolicyScopeFlags = 0x00000005;
  static const SaferPolicyDefaultLevelFlags = 0x00000006;
  static const SaferPolicyAuthenticodeEnabled = 0x00000007;
}

/// {@category Enum}
class SAFER_OBJECT_INFO_CLASS {
  static const SaferObjectLevelId = 0x00000001;
  static const SaferObjectScopeId = 0x00000002;
  static const SaferObjectFriendlyName = 0x00000003;
  static const SaferObjectDescription = 0x00000004;
  static const SaferObjectBuiltin = 0x00000005;
  static const SaferObjectDisallowed = 0x00000006;
  static const SaferObjectDisableMaxPrivilege = 0x00000007;
  static const SaferObjectInvertDeletedPrivileges = 0x00000008;
  static const SaferObjectDeletedPrivileges = 0x00000009;
  static const SaferObjectDefaultOwner = 0x0000000a;
  static const SaferObjectSidsToDisable = 0x0000000b;
  static const SaferObjectRestrictedSidsInverted = 0x0000000c;
  static const SaferObjectRestrictedSidsAdded = 0x0000000d;
  static const SaferObjectAllIdentificationGuids = 0x0000000e;
  static const SaferObjectSingleIdentification = 0x0000000f;
  static const SaferObjectExtendedError = 0x00000010;
}

/// {@category Enum}
class SAFER_IDENTIFICATION_TYPES {
  static const SaferIdentityDefault = 0x00000000;
  static const SaferIdentityTypeImageName = 0x00000001;
  static const SaferIdentityTypeImageHash = 0x00000002;
  static const SaferIdentityTypeUrlZone = 0x00000003;
  static const SaferIdentityTypeCertificate = 0x00000004;
}

/// {@category Enum}
class SLDATATYPE {
  static const SL_DATA_NONE = 0x00000000;
  static const SL_DATA_SZ = 0x00000001;
  static const SL_DATA_DWORD = 0x00000004;
  static const SL_DATA_BINARY = 0x00000003;
  static const SL_DATA_MULTI_SZ = 0x00000007;
  static const SL_DATA_SUM = 0x00000064;
}

/// {@category Enum}
class SLIDTYPE {
  static const SL_ID_APPLICATION = 0x00000000;
  static const SL_ID_PRODUCT_SKU = 0x00000001;
  static const SL_ID_LICENSE_FILE = 0x00000002;
  static const SL_ID_LICENSE = 0x00000003;
  static const SL_ID_PKEY = 0x00000004;
  static const SL_ID_ALL_LICENSES = 0x00000005;
  static const SL_ID_ALL_LICENSE_FILES = 0x00000006;
  static const SL_ID_STORE_TOKEN = 0x00000007;
  static const SL_ID_LAST = 0x00000008;
}

/// {@category Enum}
class SLLICENSINGSTATUS {
  static const SL_LICENSING_STATUS_UNLICENSED = 0x00000000;
  static const SL_LICENSING_STATUS_LICENSED = 0x00000001;
  static const SL_LICENSING_STATUS_IN_GRACE_PERIOD = 0x00000002;
  static const SL_LICENSING_STATUS_NOTIFICATION = 0x00000003;
  static const SL_LICENSING_STATUS_LAST = 0x00000004;
}

/// {@category Enum}
class SL_ACTIVATION_TYPE {
  static const SL_ACTIVATION_TYPE_DEFAULT = 0x00000000;
  static const SL_ACTIVATION_TYPE_ACTIVE_DIRECTORY = 0x00000001;
}

/// {@category Enum}
class SLREFERRALTYPE {
  static const SL_REFERRALTYPE_SKUID = 0x00000000;
  static const SL_REFERRALTYPE_APPID = 0x00000001;
  static const SL_REFERRALTYPE_OVERRIDE_SKUID = 0x00000002;
  static const SL_REFERRALTYPE_OVERRIDE_APPID = 0x00000003;
  static const SL_REFERRALTYPE_BEST_MATCH = 0x00000004;
}

/// {@category Enum}
class SL_GENUINE_STATE {
  static const SL_GEN_STATE_IS_GENUINE = 0x00000000;
  static const SL_GEN_STATE_INVALID_LICENSE = 0x00000001;
  static const SL_GEN_STATE_TAMPERED = 0x00000002;
  static const SL_GEN_STATE_OFFLINE = 0x00000003;
  static const SL_GEN_STATE_LAST = 0x00000004;
}

/// {@category Enum}
class DdqAccessLevel {
  static const NoData = 0x00000000;
  static const CurrentUserData = 0x00000001;
  static const AllUserData = 0x00000002;
}

