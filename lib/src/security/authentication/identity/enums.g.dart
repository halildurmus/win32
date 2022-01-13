/// {@category Enum}
class ACCEPT_SECURITY_CONTEXT_CONTEXT_REQ {
  static const ASC_REQ_ALLOCATE_MEMORY = 0x00000100;
  static const ASC_REQ_CONNECTION = 0x00000800;
  static const ASC_REQ_DELEGATE = 0x00000001;
  static const ASC_REQ_EXTENDED_ERROR = 0x00008000;
  static const ASC_REQ_REPLAY_DETECT = 0x00000004;
  static const ASC_REQ_SEQUENCE_DETECT = 0x00000008;
  static const ASC_REQ_STREAM = 0x00010000;
}

/// {@category Enum}
class CRED_FETCH {
  static const CredFetchDefault = 0x00000000;
  static const CredFetchDPAPI = 0x00000001;
  static const CredFetchForced = 0x00000002;
}

/// {@category Enum}
class DOMAIN_PASSWORD_PROPERTIES {
  static const DOMAIN_PASSWORD_COMPLEX = 0x00000001;
  static const DOMAIN_PASSWORD_NO_ANON_CHANGE = 0x00000002;
  static const DOMAIN_PASSWORD_NO_CLEAR_CHANGE = 0x00000004;
  static const DOMAIN_LOCKOUT_ADMINS = 0x00000008;
  static const DOMAIN_PASSWORD_STORE_CLEARTEXT = 0x00000010;
  static const DOMAIN_REFUSE_PASSWORD_CHANGE = 0x00000020;
}

/// {@category Enum}
class EXPORT_SECURITY_CONTEXT_FLAGS {
  static const SECPKG_CONTEXT_EXPORT_RESET_NEW = 0x00000001;
  static const SECPKG_CONTEXT_EXPORT_DELETE_OLD = 0x00000002;
  static const SECPKG_CONTEXT_EXPORT_TO_KERNEL = 0x00000004;
}

/// {@category Enum}
class EXTENDED_NAME_FORMAT {
  static const NameUnknown = 0x00000000;
  static const NameFullyQualifiedDN = 0x00000001;
  static const NameSamCompatible = 0x00000002;
  static const NameDisplay = 0x00000003;
  static const NameUniqueId = 0x00000006;
  static const NameCanonical = 0x00000007;
  static const NameUserPrincipal = 0x00000008;
  static const NameCanonicalEx = 0x00000009;
  static const NameServicePrincipal = 0x0000000a;
  static const NameDnsDomain = 0x0000000c;
  static const NameGivenName = 0x0000000d;
  static const NameSurname = 0x0000000e;
}

/// {@category Enum}
class KERB_ADDRESS_TYPE {
  static const DS_INET_ADDRESS = 0x00000001;
  static const DS_NETBIOS_ADDRESS = 0x00000002;
}

/// {@category Enum}
class KERB_CERTIFICATE_INFO_TYPE {
  static const CertHashInfo = 0x00000001;
}

/// {@category Enum}
class KERB_CRYPTO_KEY_TYPE {
  static const KERB_ETYPE_DES_CBC_CRC = 0x00000001;
  static const KERB_ETYPE_DES_CBC_MD4 = 0x00000002;
  static const KERB_ETYPE_DES_CBC_MD5 = 0x00000003;
  static const KERB_ETYPE_NULL = 0x00000000;
  static const KERB_ETYPE_RC4_HMAC_NT = 0x00000017;
  static const KERB_ETYPE_RC4_MD4 = 0xffffff80;
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
  static const KerbRefreshPolicyMessage = 0x00000023;
  static const KerbPrintCloudKerberosDebugMessage = 0x00000024;
}

/// {@category Enum}
class KERB_REQUEST_FLAGS {
  static const KERB_REQUEST_ADD_CREDENTIAL = 0x00000001;
  static const KERB_REQUEST_REPLACE_CREDENTIAL = 0x00000002;
  static const KERB_REQUEST_REMOVE_CREDENTIAL = 0x00000004;
}

/// {@category Enum}
class KERB_TICKET_FLAGS {
  static const KERB_TICKET_FLAGS_forwardable = 0x40000000;
  static const KERB_TICKET_FLAGS_forwarded = 0x20000000;
  static const KERB_TICKET_FLAGS_hw_authent = 0x00100000;
  static const KERB_TICKET_FLAGS_initial = 0x00400000;
  static const KERB_TICKET_FLAGS_invalid = 0x01000000;
  static const KERB_TICKET_FLAGS_may_postdate = 0x04000000;
  static const KERB_TICKET_FLAGS_ok_as_delegate = 0x00040000;
  static const KERB_TICKET_FLAGS_postdated = 0x02000000;
  static const KERB_TICKET_FLAGS_pre_authent = 0x00200000;
  static const KERB_TICKET_FLAGS_proxiable = 0x10000000;
  static const KERB_TICKET_FLAGS_proxy = 0x08000000;
  static const KERB_TICKET_FLAGS_renewable = 0x00800000;
  static const KERB_TICKET_FLAGS_reserved = 0x80000000;
  static const KERB_TICKET_FLAGS_reserved1 = 0x00000001;
}

/// {@category Enum}
class KSEC_CONTEXT_TYPE {
  static const KSecPaged = 0x00000000;
  static const KSecNonPaged = 0x00000001;
}

/// {@category Enum}
class LSA_AUTH_INFORMATION_AUTH_TYPE {
  static const TRUST_AUTH_TYPE_NONE = 0x00000000;
  static const TRUST_AUTH_TYPE_NT4OWF = 0x00000001;
  static const TRUST_AUTH_TYPE_CLEAR = 0x00000002;
  static const TRUST_AUTH_TYPE_VERSION = 0x00000003;
}

/// {@category Enum}
class LSA_FOREST_TRUST_COLLISION_RECORD_TYPE {
  static const CollisionTdo = 0x00000000;
  static const CollisionXref = 0x00000001;
  static const CollisionOther = 0x00000002;
}

/// {@category Enum}
class LSA_FOREST_TRUST_RECORD_TYPE {
  static const ForestTrustTopLevelName = 0x00000000;
  static const ForestTrustTopLevelNameEx = 0x00000001;
  static const ForestTrustDomainInfo = 0x00000002;
  static const ForestTrustRecordTypeLast = 0x00000002;
}

/// {@category Enum}
class LSA_LOOKUP_DOMAIN_INFO_CLASS {
  static const AccountDomainInformation = 0x00000005;
  static const DnsDomainInformation = 0x0000000c;
}

/// {@category Enum}
class LSA_TOKEN_INFORMATION_TYPE {
  static const LsaTokenInformationNull = 0x00000000;
  static const LsaTokenInformationV1 = 0x00000001;
  static const LsaTokenInformationV2 = 0x00000002;
  static const LsaTokenInformationV3 = 0x00000003;
}

/// {@category Enum}
class MSV1_0 {
  static const MSV1_0_PASSTHRU = 0x00000001;
  static const MSV1_0_GUEST_LOGON = 0x00000002;
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
class MSV1_0_CREDENTIAL_KEY_TYPE {
  static const InvalidCredKey = 0x00000000;
  static const DeprecatedIUMCredKey = 0x00000001;
  static const DomainUserCredKey = 0x00000002;
  static const LocalUserCredKey = 0x00000003;
  static const ExternallySuppliedCredKey = 0x00000004;
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
class MSV_SUBAUTH_LOGON_PARAMETER_CONTROL {
  static const MSV1_0_CLEARTEXT_PASSWORD_ALLOWED = 0x00000002;
  static const MSV1_0_UPDATE_LOGON_STATISTICS = 0x00000004;
  static const MSV1_0_RETURN_USER_PARAMETERS = 0x00000008;
  static const MSV1_0_DONT_TRY_GUEST_ACCOUNT = 0x00000010;
  static const MSV1_0_ALLOW_SERVER_TRUST_ACCOUNT = 0x00000020;
  static const MSV1_0_RETURN_PASSWORD_EXPIRY = 0x00000040;
  static const MSV1_0_ALLOW_WORKSTATION_TRUST_ACCOUNT = 0x00000800;
  static const MSV1_0_TRY_GUEST_ACCOUNT_ONLY = 0x00000100;
  static const MSV1_0_RETURN_PROFILE_PATH = 0x00000200;
  static const MSV1_0_TRY_SPECIFIED_DOMAIN_ONLY = 0x00000400;
}

/// {@category Enum}
class MSV_SUB_AUTHENTICATION_FILTER {
  static const LOGON_GUEST = 0x00000001;
  static const LOGON_NOENCRYPTION = 0x00000002;
  static const LOGON_CACHED_ACCOUNT = 0x00000004;
  static const LOGON_USED_LM_PASSWORD = 0x00000008;
  static const LOGON_EXTRA_SIDS = 0x00000020;
  static const LOGON_SUBAUTH_SESSION_KEY = 0x00000040;
  static const LOGON_SERVER_TRUST_ACCOUNT = 0x00000080;
  static const LOGON_PROFILE_PATH_RETURNED = 0x00000400;
  static const LOGON_RESOURCE_GROUPS = 0x00000200;
}

/// {@category Enum}
class MSV_SUPPLEMENTAL_CREDENTIAL_FLAGS {
  static const MSV1_0_CRED_LM_PRESENT = 0x00000001;
  static const MSV1_0_CRED_NT_PRESENT = 0x00000002;
  static const MSV1_0_CRED_VERSION = 0x00000000;
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
class PKU2U_LOGON_SUBMIT_TYPE {
  static const Pku2uCertificateS4ULogon = 0x0000000e;
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
class POLICY_DOMAIN_INFORMATION_CLASS {
  static const PolicyDomainEfsInformation = 0x00000002;
  static const PolicyDomainKerberosTicketInformation = 0x00000003;
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
class POLICY_LSA_SERVER_ROLE {
  static const PolicyServerRoleBackup = 0x00000002;
  static const PolicyServerRolePrimary = 0x00000003;
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
class SASL_AUTHZID_STATE {
  static const Sasl_AuthZIDForbidden = 0x00000000;
  static const Sasl_AuthZIDProcessed = 0x00000001;
}

/// {@category Enum}
class SCHANNEL_ALERT_TOKEN_ALERT_TYPE {
  static const TLS1_ALERT_WARNING = 0x00000001;
  static const TLS1_ALERT_FATAL = 0x00000002;
}

/// {@category Enum}
class SCHANNEL_CRED_FLAGS {
  static const SCH_CRED_AUTO_CRED_VALIDATION = 0x00000020;
  static const SCH_CRED_CACHE_ONLY_URL_RETRIEVAL_ON_CREATE = 0x00020000;
  static const SCH_DISABLE_RECONNECTS = 0x00000080;
  static const SCH_CRED_IGNORE_NO_REVOCATION_CHECK = 0x00000800;
  static const SCH_CRED_IGNORE_REVOCATION_OFFLINE = 0x00001000;
  static const SCH_CRED_MANUAL_CRED_VALIDATION = 0x00000008;
  static const SCH_CRED_NO_DEFAULT_CREDS = 0x00000010;
  static const SCH_CRED_NO_SERVERNAME_CHECK = 0x00000004;
  static const SCH_CRED_NO_SYSTEM_MAPPER = 0x00000002;
  static const SCH_CRED_REVOCATION_CHECK_CHAIN = 0x00000200;
  static const SCH_CRED_REVOCATION_CHECK_CHAIN_EXCLUDE_ROOT = 0x00000400;
  static const SCH_CRED_REVOCATION_CHECK_END_CERT = 0x00000100;
  static const SCH_CRED_USE_DEFAULT_CREDS = 0x00000040;
  static const SCH_SEND_AUX_RECORD = 0x00200000;
  static const SCH_SEND_ROOT_CERT = 0x00040000;
  static const SCH_USE_STRONG_CRYPTO = 0x00400000;
  static const SCH_USE_PRESHAREDKEY_ONLY = 0x00800000;
}

/// {@category Enum}
class SCHANNEL_SESSION_TOKEN_FLAGS {
  static const SSL_SESSION_ENABLE_RECONNECTS = 0x00000001;
  static const SSL_SESSION_DISABLE_RECONNECTS = 0x00000002;
}

/// {@category Enum}
class SECPKG_ATTR {
  static const SECPKG_ATTR_C_ACCESS_TOKEN = 0x80000012;
  static const SECPKG_ATTR_C_FULL_ACCESS_TOKEN = 0x80000082;
  static const SECPKG_ATTR_CERT_TRUST_STATUS = 0x80000084;
  static const SECPKG_ATTR_CREDS = 0x80000080;
  static const SECPKG_ATTR_CREDS_2 = 0x80000086;
  static const SECPKG_ATTR_NEGOTIATION_PACKAGE = 0x80000081;
  static const SECPKG_ATTR_PACKAGE_INFO = 0x0000000a;
  static const SECPKG_ATTR_SERVER_AUTH_FLAGS = 0x80000083;
  static const SECPKG_ATTR_SIZES = 0x00000000;
  static const SECPKG_ATTR_SUBJECT_SECURITY_ATTRIBUTES = 0x0000007c;
  static const SECPKG_ATTR_APP_DATA = 0x0000005e;
  static const SECPKG_ATTR_EAP_PRF_INFO = 0x00000065;
  static const SECPKG_ATTR_EARLY_START = 0x00000069;
  static const SECPKG_ATTR_DTLS_MTU = 0x00000022;
  static const SECPKG_ATTR_KEYING_MATERIAL_INFO = 0x0000006a;
  static const SECPKG_ATTR_ACCESS_TOKEN = 0x00000012;
  static const SECPKG_ATTR_AUTHORITY = 0x00000006;
  static const SECPKG_ATTR_CLIENT_SPECIFIED_TARGET = 0x0000001b;
  static const SECPKG_ATTR_CONNECTION_INFO = 0x0000005a;
  static const SECPKG_ATTR_DCE_INFO = 0x00000003;
  static const SECPKG_ATTR_ENDPOINT_BINDINGS = 0x0000001a;
  static const SECPKG_ATTR_EAP_KEY_BLOCK = 0x0000005b;
  static const SECPKG_ATTR_FLAGS = 0x0000000e;
  static const SECPKG_ATTR_ISSUER_LIST_EX = 0x00000059;
  static const SECPKG_ATTR_KEY_INFO = 0x00000005;
  static const SECPKG_ATTR_LAST_CLIENT_TOKEN_STATUS = 0x0000001e;
  static const SECPKG_ATTR_LIFESPAN = 0x00000002;
  static const SECPKG_ATTR_LOCAL_CERT_CONTEXT = 0x00000054;
  static const SECPKG_ATTR_LOCAL_CRED = 0x00000052;
  static const SECPKG_ATTR_NAMES = 0x00000001;
  static const SECPKG_ATTR_NATIVE_NAMES = 0x0000000d;
  static const SECPKG_ATTR_NEGOTIATION_INFO = 0x0000000c;
  static const SECPKG_ATTR_PASSWORD_EXPIRY = 0x00000008;
  static const SECPKG_ATTR_REMOTE_CERT_CONTEXT = 0x00000053;
  static const SECPKG_ATTR_ROOT_STORE = 0x00000055;
  static const SECPKG_ATTR_SESSION_KEY = 0x00000009;
  static const SECPKG_ATTR_SESSION_INFO = 0x0000005d;
  static const SECPKG_ATTR_STREAM_SIZES = 0x00000004;
  static const SECPKG_ATTR_SUPPORTED_SIGNATURES = 0x00000066;
  static const SECPKG_ATTR_TARGET_INFORMATION = 0x00000011;
  static const SECPKG_ATTR_UNIQUE_BINDINGS = 0x00000019;
}

/// {@category Enum}
class SECPKG_ATTR_LCT_STATUS {
  static const SecPkgAttrLastClientTokenYes = 0x00000000;
  static const SecPkgAttrLastClientTokenNo = 0x00000001;
  static const SecPkgAttrLastClientTokenMaybe = 0x00000002;
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
class SECPKG_CRED {
  static const SECPKG_CRED_INBOUND = 0x00000001;
  static const SECPKG_CRED_OUTBOUND = 0x00000002;
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
class SECPKG_NAME_TYPE {
  static const SecNameSamCompatible = 0x00000000;
  static const SecNameAlternateId = 0x00000001;
  static const SecNameFlat = 0x00000002;
  static const SecNameDN = 0x00000003;
  static const SecNameSPN = 0x00000004;
}

/// {@category Enum}
class SECPKG_PACKAGE_CHANGE_TYPE {
  static const SECPKG_PACKAGE_CHANGE_LOAD = 0x00000000;
  static const SECPKG_PACKAGE_CHANGE_UNLOAD = 0x00000001;
  static const SECPKG_PACKAGE_CHANGE_SELECT = 0x00000002;
}

/// {@category Enum}
class SECPKG_SESSIONINFO_TYPE {
  static const SecSessionPrimaryCred = 0x00000000;
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
class SECURITY_PACKAGE_OPTIONS_TYPE {
  static const SECPKG_OPTIONS_TYPE_UNKNOWN = 0x00000000;
  static const SECPKG_OPTIONS_TYPE_LSA = 0x00000001;
  static const SECPKG_OPTIONS_TYPE_SSPI = 0x00000002;
}

/// {@category Enum}
class SEC_APPLICATION_PROTOCOL_NEGOTIATION_EXT {
  static const SecApplicationProtocolNegotiationExt_None = 0x00000000;
  static const SecApplicationProtocolNegotiationExt_NPN = 0x00000001;
  static const SecApplicationProtocolNegotiationExt_ALPN = 0x00000002;
}

/// {@category Enum}
class SEC_APPLICATION_PROTOCOL_NEGOTIATION_STATUS {
  static const SecApplicationProtocolNegotiationStatus_None = 0x00000000;
  static const SecApplicationProtocolNegotiationStatus_Success = 0x00000001;
  static const SecApplicationProtocolNegotiationStatus_SelectedClientOnly =
      0x00000002;
}

/// {@category Enum}
class SEC_TRAFFIC_SECRET_TYPE {
  static const SecTrafficSecret_None = 0x00000000;
  static const SecTrafficSecret_Client = 0x00000001;
  static const SecTrafficSecret_Server = 0x00000002;
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
class SLREFERRALTYPE {
  static const SL_REFERRALTYPE_SKUID = 0x00000000;
  static const SL_REFERRALTYPE_APPID = 0x00000001;
  static const SL_REFERRALTYPE_OVERRIDE_SKUID = 0x00000002;
  static const SL_REFERRALTYPE_OVERRIDE_APPID = 0x00000003;
  static const SL_REFERRALTYPE_BEST_MATCH = 0x00000004;
}

/// {@category Enum}
class SL_ACTIVATION_TYPE {
  static const SL_ACTIVATION_TYPE_DEFAULT = 0x00000000;
  static const SL_ACTIVATION_TYPE_ACTIVE_DIRECTORY = 0x00000001;
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
class SchGetExtensionsOptions {
  static const SCH_EXTENSIONS_OPTIONS_NONE = 0x00000000;
  static const SCH_NO_RECORD_HEADER = 0x00000001;
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
class TOKENBINDING_TYPE {
  static const TOKENBINDING_TYPE_PROVIDED = 0x00000000;
  static const TOKENBINDING_TYPE_REFERRED = 0x00000001;
}

/// {@category Enum}
class TRUSTED_DOMAIN_TRUST_ATTRIBUTES {
  static const TRUST_ATTRIBUTE_NON_TRANSITIVE = 0x00000001;
  static const TRUST_ATTRIBUTE_UPLEVEL_ONLY = 0x00000002;
  static const TRUST_ATTRIBUTE_FILTER_SIDS = 0x00000004;
  static const TRUST_ATTRIBUTE_FOREST_TRANSITIVE = 0x00000008;
  static const TRUST_ATTRIBUTE_CROSS_ORGANIZATION = 0x00000010;
  static const TRUST_ATTRIBUTE_TREAT_AS_EXTERNAL = 0x00000040;
  static const TRUST_ATTRIBUTE_WITHIN_FOREST = 0x00000020;
}

/// {@category Enum}
class TRUSTED_DOMAIN_TRUST_DIRECTION {
  static const TRUST_DIRECTION_DISABLED = 0x00000000;
  static const TRUST_DIRECTION_INBOUND = 0x00000001;
  static const TRUST_DIRECTION_OUTBOUND = 0x00000002;
  static const TRUST_DIRECTION_BIDIRECTIONAL = 0x00000003;
}

/// {@category Enum}
class TRUSTED_DOMAIN_TRUST_TYPE {
  static const TRUST_TYPE_DOWNLEVEL = 0x00000001;
  static const TRUST_TYPE_UPLEVEL = 0x00000002;
  static const TRUST_TYPE_MIT = 0x00000003;
  static const TRUST_TYPE_DCE = 0x00000004;
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
class eTlsSignatureAlgorithm {
  static const TlsSignatureAlgorithm_Anonymous = 0x00000000;
  static const TlsSignatureAlgorithm_Rsa = 0x00000001;
  static const TlsSignatureAlgorithm_Dsa = 0x00000002;
  static const TlsSignatureAlgorithm_Ecdsa = 0x00000003;
}
