/// {@category Enum}
class AF_OP {
  static const AF_OP_PRINT = 0x00000001;
  static const AF_OP_COMM = 0x00000002;
  static const AF_OP_SERVER = 0x00000004;
  static const AF_OP_ACCOUNTS = 0x00000008;
}

/// {@category Enum}
class BIND_FLAGS1 {
  static const NCN_ADD = 0x00000001;
  static const NCN_REMOVE = 0x00000002;
  static const NCN_UPDATE = 0x00000004;
  static const NCN_ENABLE = 0x00000010;
  static const NCN_DISABLE = 0x00000020;
  static const NCN_BINDING_PATH = 0x00000100;
  static const NCN_PROPERTYCHANGE = 0x00000200;
  static const NCN_NET = 0x00010000;
  static const NCN_NETTRANS = 0x00020000;
  static const NCN_NETCLIENT = 0x00040000;
  static const NCN_NETSERVICE = 0x00080000;
}

/// {@category Enum}
class COMPONENT_CHARACTERISTICS {
  static const NCF_VIRTUAL = 0x00000001;
  static const NCF_SOFTWARE_ENUMERATED = 0x00000002;
  static const NCF_PHYSICAL = 0x00000004;
  static const NCF_HIDDEN = 0x00000008;
  static const NCF_NO_SERVICE = 0x00000010;
  static const NCF_NOT_USER_REMOVABLE = 0x00000020;
  static const NCF_MULTIPORT_INSTANCED_ADAPTER = 0x00000040;
  static const NCF_HAS_UI = 0x00000080;
  static const NCF_SINGLE_INSTANCE = 0x00000100;
  static const NCF_FILTER = 0x00000400;
  static const NCF_DONTEXPOSELOWER = 0x00001000;
  static const NCF_HIDE_BINDING = 0x00002000;
  static const NCF_NDIS_PROTOCOL = 0x00004000;
  static const NCF_FIXED_BINDING = 0x00020000;
  static const NCF_LW_FILTER = 0x00040000;
}

/// {@category Enum}
class DEFAULT_PAGES {
  static const DPP_ADVANCED = 0x00000001;
}

/// {@category Enum}
class DSREG_JOIN_TYPE {
  static const DSREG_UNKNOWN_JOIN = 0x00000000;
  static const DSREG_DEVICE_JOIN = 0x00000001;
  static const DSREG_WORKPLACE_JOIN = 0x00000002;
}

/// {@category Enum}
class ENUM_BINDING_PATHS_FLAGS {
  static const EBP_ABOVE = 0x00000001;
  static const EBP_BELOW = 0x00000002;
}

/// {@category Enum}
class FORCE_LEVEL_FLAGS {
  static const USE_NOFORCE = 0x00000000;
  static const USE_FORCE = 0x00000001;
  static const USE_LOTS_OF_FORCE = 0x00000002;
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
class NCPNP_RECONFIG_LAYER {
  static const NCRL_NDIS = 0x00000001;
  static const NCRL_TDI = 0x00000002;
}

/// {@category Enum}
class NCRP_FLAGS {
  static const NCRP_QUERY_PROPERTY_UI = 0x00000001;
  static const NCRP_SHOW_PROPERTY_UI = 0x00000002;
}

/// {@category Enum}
class NETSETUP_JOIN_STATUS {
  static const NetSetupUnknownStatus = 0x00000000;
  static const NetSetupUnjoined = 0x00000001;
  static const NetSetupWorkgroupName = 0x00000002;
  static const NetSetupDomainName = 0x00000003;
}

/// {@category Enum}
class NETSETUP_NAME_TYPE {
  static const NetSetupUnknown = 0x00000000;
  static const NetSetupMachine = 0x00000001;
  static const NetSetupWorkgroup = 0x00000002;
  static const NetSetupDomain = 0x00000003;
  static const NetSetupNonExistentDomain = 0x00000004;
  static const NetSetupDnsMachine = 0x00000005;
}

/// {@category Enum}
class NETSETUP_PROVISION {
  static const NETSETUP_PROVISION_DOWNLEVEL_PRIV_SUPPORT = 0x00000001;
  static const NETSETUP_PROVISION_REUSE_ACCOUNT = 0x00000002;
  static const NETSETUP_PROVISION_USE_DEFAULT_PASSWORD = 0x00000004;
  static const NETSETUP_PROVISION_SKIP_ACCOUNT_SEARCH = 0x00000008;
  static const NETSETUP_PROVISION_ROOT_CA_CERTS = 0x00000010;
}

/// {@category Enum}
class NETWORK_INSTALL_TIME {
  static const NSF_PRIMARYINSTALL = 0x00000001;
  static const NSF_POSTSYSINSTALL = 0x00000002;
}

/// {@category Enum}
class NETWORK_UPGRADE_TYPE {
  static const NSF_WIN16_UPGRADE = 0x00000010;
  static const NSF_WIN95_UPGRADE = 0x00000020;
  static const NSF_WINNT_WKS_UPGRADE = 0x00000040;
  static const NSF_WINNT_SVR_UPGRADE = 0x00000080;
  static const NSF_WINNT_SBS_UPGRADE = 0x00000100;
  static const NSF_COMPONENT_UPDATE = 0x00000200;
}

/// {@category Enum}
class NET_COMPUTER_NAME_TYPE {
  static const NetPrimaryComputerName = 0x00000000;
  static const NetAlternateComputerNames = 0x00000001;
  static const NetAllComputerNames = 0x00000002;
  static const NetComputerNameTypeMax = 0x00000003;
}

/// {@category Enum}
class NET_JOIN_DOMAIN_JOIN_OPTIONS {
  static const NETSETUP_JOIN_DOMAIN = 0x00000001;
  static const NETSETUP_ACCT_CREATE = 0x00000002;
  static const NETSETUP_WIN9X_UPGRADE = 0x00000010;
  static const NETSETUP_DOMAIN_JOIN_IF_JOINED = 0x00000020;
  static const NETSETUP_JOIN_UNSECURE = 0x00000040;
  static const NETSETUP_MACHINE_PWD_PASSED = 0x00000080;
  static const NETSETUP_DEFER_SPN_SET = 0x00000100;
  static const NETSETUP_JOIN_DC_ACCOUNT = 0x00000200;
  static const NETSETUP_JOIN_WITH_NEW_NAME = 0x00000400;
  static const NETSETUP_JOIN_READONLY = 0x00000800;
  static const NETSETUP_AMBIGUOUS_DC = 0x00001000;
  static const NETSETUP_NO_NETLOGON_CACHE = 0x00002000;
  static const NETSETUP_DONT_CONTROL_SERVICES = 0x00004000;
  static const NETSETUP_SET_MACHINE_NAME = 0x00008000;
  static const NETSETUP_FORCE_SPN_SET = 0x00010000;
  static const NETSETUP_NO_ACCT_REUSE = 0x00020000;
  static const NETSETUP_IGNORE_UNSUPPORTED_FLAGS = 0x10000000;
}

/// {@category Enum}
class NET_REMOTE_COMPUTER_SUPPORTS_OPTIONS {
  static const SUPPORTS_REMOTE_ADMIN_PROTOCOL = 0x00000002;
  static const SUPPORTS_RPC = 0x00000004;
  static const SUPPORTS_SAM_PROTOCOL = 0x00000008;
  static const SUPPORTS_UNICODE = 0x00000010;
  static const SUPPORTS_LOCAL = 0x00000020;
}

/// {@category Enum}
class NET_REQUEST_PROVISION_OPTIONS {
  static const NETSETUP_PROVISION_ONLINE_CALLER = 0x40000000;
}

/// {@category Enum}
class NET_SERVER_TYPE {
  static const SV_TYPE_WORKSTATION = 0x00000001;
  static const SV_TYPE_SERVER = 0x00000002;
  static const SV_TYPE_SQLSERVER = 0x00000004;
  static const SV_TYPE_DOMAIN_CTRL = 0x00000008;
  static const SV_TYPE_DOMAIN_BAKCTRL = 0x00000010;
  static const SV_TYPE_TIME_SOURCE = 0x00000020;
  static const SV_TYPE_AFP = 0x00000040;
  static const SV_TYPE_NOVELL = 0x00000080;
  static const SV_TYPE_DOMAIN_MEMBER = 0x00000100;
  static const SV_TYPE_PRINTQ_SERVER = 0x00000200;
  static const SV_TYPE_DIALIN_SERVER = 0x00000400;
  static const SV_TYPE_XENIX_SERVER = 0x00000800;
  static const SV_TYPE_SERVER_UNIX = 0x00000800;
  static const SV_TYPE_NT = 0x00001000;
  static const SV_TYPE_WFW = 0x00002000;
  static const SV_TYPE_SERVER_MFPN = 0x00004000;
  static const SV_TYPE_SERVER_NT = 0x00008000;
  static const SV_TYPE_POTENTIAL_BROWSER = 0x00010000;
  static const SV_TYPE_BACKUP_BROWSER = 0x00020000;
  static const SV_TYPE_MASTER_BROWSER = 0x00040000;
  static const SV_TYPE_DOMAIN_MASTER = 0x00080000;
  static const SV_TYPE_SERVER_OSF = 0x00100000;
  static const SV_TYPE_SERVER_VMS = 0x00200000;
  static const SV_TYPE_WINDOWS = 0x00400000;
  static const SV_TYPE_DFS = 0x00800000;
  static const SV_TYPE_CLUSTER_NT = 0x01000000;
  static const SV_TYPE_TERMINALSERVER = 0x02000000;
  static const SV_TYPE_CLUSTER_VS_NT = 0x04000000;
  static const SV_TYPE_DCE = 0x10000000;
  static const SV_TYPE_ALTERNATE_XPORT = 0x20000000;
  static const SV_TYPE_LOCAL_LIST_ONLY = 0x40000000;
  static const SV_TYPE_DOMAIN_ENUM = 0x80000000;
  static const SV_TYPE_ALL = 0xffffffff;
}

/// {@category Enum}
class NET_USER_ENUM_FILTER_FLAGS {
  static const FILTER_TEMP_DUPLICATE_ACCOUNT = 0x00000001;
  static const FILTER_NORMAL_ACCOUNT = 0x00000002;
  static const FILTER_INTERDOMAIN_TRUST_ACCOUNT = 0x00000008;
  static const FILTER_WORKSTATION_TRUST_ACCOUNT = 0x00000010;
  static const FILTER_SERVER_TRUST_ACCOUNT = 0x00000020;
}

/// {@category Enum}
class NET_VALIDATE_PASSWORD_TYPE {
  static const NetValidateAuthentication = 0x00000001;
  static const NetValidatePasswordChange = 0x00000002;
  static const NetValidatePasswordReset = 0x00000003;
}

/// {@category Enum}
class OBO_TOKEN_TYPE {
  static const OBO_USER = 0x00000001;
  static const OBO_COMPONENT = 0x00000002;
  static const OBO_SOFTWARE = 0x00000003;
}

/// {@category Enum}
class SERVER_INFO_HIDDEN {
  static const SV_VISIBLE = 0x00000000;
  static const SV_HIDDEN = 0x00000001;
}

/// {@category Enum}
class SERVER_INFO_SECURITY {
  static const SV_SHARESECURITY = 0x00000000;
  static const SV_USERSECURITY = 0x00000001;
}

/// {@category Enum}
class SUPPORTS_BINDING_INTERFACE_FLAGS {
  static const NCF_LOWER = 0x00000001;
  static const NCF_UPPER = 0x00000002;
}

/// {@category Enum}
class TRANSPORT_TYPE {
  static const UseTransportType_None = 0x00000000;
  static const UseTransportType_Wsk = 0x00000001;
  static const UseTransportType_Quic = 0x00000002;
}

/// {@category Enum}
class USER_ACCOUNT_FLAGS {
  static const UF_SCRIPT = 0x00000001;
  static const UF_ACCOUNTDISABLE = 0x00000002;
  static const UF_HOMEDIR_REQUIRED = 0x00000008;
  static const UF_PASSWD_NOTREQD = 0x00000020;
  static const UF_PASSWD_CANT_CHANGE = 0x00000040;
  static const UF_LOCKOUT = 0x00000010;
  static const UF_DONT_EXPIRE_PASSWD = 0x00010000;
  static const UF_ENCRYPTED_TEXT_PASSWORD_ALLOWED = 0x00000080;
  static const UF_NOT_DELEGATED = 0x00100000;
  static const UF_SMARTCARD_REQUIRED = 0x00040000;
  static const UF_USE_DES_KEY_ONLY = 0x00200000;
  static const UF_DONT_REQUIRE_PREAUTH = 0x00400000;
  static const UF_TRUSTED_FOR_DELEGATION = 0x00080000;
  static const UF_PASSWORD_EXPIRED = 0x00800000;
  static const UF_TRUSTED_TO_AUTHENTICATE_FOR_DELEGATION = 0x01000000;
}

/// {@category Enum}
class USER_MODALS_ROLES {
  static const UAS_ROLE_STANDALONE = 0x00000000;
  static const UAS_ROLE_MEMBER = 0x00000001;
  static const UAS_ROLE_BACKUP = 0x00000002;
  static const UAS_ROLE_PRIMARY = 0x00000003;
}

/// {@category Enum}
class USER_PRIV {
  static const USER_PRIV_GUEST = 0x00000000;
  static const USER_PRIV_USER = 0x00000001;
  static const USER_PRIV_ADMIN = 0x00000002;
}

/// {@category Enum}
class USE_INFO_ASG_TYPE {
  static const USE_WILDCARD = 0xffffffff;
  static const USE_DISKDEV = 0x00000000;
  static const USE_SPOOLDEV = 0x00000001;
  static const USE_IPC = 0x00000003;
}

/// {@category Enum}
class tagRASCON_IPUI_FLAGS {
  static const RCUIF_VPN = 0x00000001;
  static const RCUIF_DEMAND_DIAL = 0x00000002;
  static const RCUIF_NOT_ADMIN = 0x00000004;
  static const RCUIF_USE_IPv4_STATICADDRESS = 0x00000008;
  static const RCUIF_USE_IPv4_NAME_SERVERS = 0x00000010;
  static const RCUIF_USE_IPv4_REMOTE_GATEWAY = 0x00000020;
  static const RCUIF_USE_IPv4_EXPLICIT_METRIC = 0x00000040;
  static const RCUIF_USE_HEADER_COMPRESSION = 0x00000080;
  static const RCUIF_USE_DISABLE_REGISTER_DNS = 0x00000100;
  static const RCUIF_USE_PRIVATE_DNS_SUFFIX = 0x00000200;
  static const RCUIF_ENABLE_NBT = 0x00000400;
  static const RCUIF_USE_IPv6_STATICADDRESS = 0x00000800;
  static const RCUIF_USE_IPv6_NAME_SERVERS = 0x00001000;
  static const RCUIF_USE_IPv6_REMOTE_GATEWAY = 0x00002000;
  static const RCUIF_USE_IPv6_EXPLICIT_METRIC = 0x00004000;
  static const RCUIF_DISABLE_CLASS_BASED_ROUTE = 0x00008000;
}
