/// {@category Enum}
class AF_OP {
  static const AF_OP_PRINT = 0x00000001;
  static const AF_OP_COMM = 0x00000002;
  static const AF_OP_SERVER = 0x00000004;
  static const AF_OP_ACCOUNTS = 0x00000008;
}

/// {@category Enum}
class DSREG_JOIN_TYPE {
  static const DSREG_UNKNOWN_JOIN = 0x00000000;
  static const DSREG_DEVICE_JOIN = 0x00000001;
  static const DSREG_WORKPLACE_JOIN = 0x00000002;
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
class NET_COMPUTER_NAME_TYPE {
  static const NetPrimaryComputerName = 0x00000000;
  static const NetAlternateComputerNames = 0x00000001;
  static const NetAllComputerNames = 0x00000002;
  static const NetComputerNameTypeMax = 0x00000003;
}

/// {@category Enum}
class NET_VALIDATE_PASSWORD_TYPE {
  static const NetValidateAuthentication = 0x00000001;
  static const NetValidatePasswordChange = 0x00000002;
  static const NetValidatePasswordReset = 0x00000003;
}

/// {@category Enum}
class NetJoinDomain_fJoinOptionsFlags {
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
class NetRemoteComputerSupports_OptionsWantedFlags {
  static const SUPPORTS_REMOTE_ADMIN_PROTOCOL = 0x00000002;
  static const SUPPORTS_RPC = 0x00000004;
  static const SUPPORTS_SAM_PROTOCOL = 0x00000008;
  static const SUPPORTS_UNICODE = 0x00000010;
  static const SUPPORTS_LOCAL = 0x00000020;
}

/// {@category Enum}
class NetRequest_dwProvisionOptions {
  static const NETSETUP_PROVISION_ONLINE_CALLER = 0x40000000;
}

/// {@category Enum}
class NetServerEnum_servertypeFlags {
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
class NetUseAdd_LevelFlags {
  static const LevelFlags1 = 0x00000001;
  static const LevelFlags2 = 0x00000002;
}

/// {@category Enum}
class NetUserEnum_filterFlags {
  static const FILTER_TEMP_DUPLICATE_ACCOUNT = 0x00000001;
  static const FILTER_NORMAL_ACCOUNT = 0x00000002;
  static const FILTER_INTERDOMAIN_TRUST_ACCOUNT = 0x00000008;
  static const FILTER_WORKSTATION_TRUST_ACCOUNT = 0x00000010;
  static const FILTER_SERVER_TRUST_ACCOUNT = 0x00000020;
}

/// {@category Enum}
class NetWkstaSetInfo_levelFlags {
  static const level100 = 0x00000064;
  static const level101 = 0x00000065;
  static const level102 = 0x00000066;
  static const level502 = 0x000001f6;
  static const level1 = 0x00000001;
  static const level2 = 0x00000002;
  static const level503 = 0x000001f7;
  static const level1004 = 0x000003ec;
  static const level1005 = 0x000003ed;
  static const level1006 = 0x000003ee;
  static const level1501 = 0x000005dd;
  static const level402 = 0x00000192;
  static const level403 = 0x00000193;
  static const level501 = 0x000001f5;
  static const level10 = 0x0000000a;
}

/// {@category Enum}
class Net_Level {
  static const Level1 = 0x00000001;
  static const Level2 = 0x00000002;
  static const Level3 = 0x00000003;
}

/// {@category Enum}
class Net_level {
  static const None = 0x00000000;
  static const level1 = 0x00000001;
  static const level2 = 0x00000002;
  static const level3 = 0x00000003;
  static const level4 = 0x00000004;
  static const level1002 = 0x000003ea;
  static const level1005 = 0x000003ed;
  static const level21 = 0x00000015;
  static const level22 = 0x00000016;
  static const level1003 = 0x000003eb;
  static const level1006 = 0x000003ee;
  static const level1007 = 0x000003ef;
  static const level1008 = 0x000003f0;
  static const level1009 = 0x000003f1;
  static const level1010 = 0x000003f2;
  static const level1011 = 0x000003f3;
  static const level1012 = 0x000003f4;
  static const level1014 = 0x000003f6;
  static const level1017 = 0x000003f9;
  static const level1020 = 0x000003fc;
  static const level1024 = 0x00000400;
  static const level1051 = 0x0000041b;
  static const level1052 = 0x0000041c;
  static const level1053 = 0x0000041d;
  static const level10 = 0x0000000a;
  static const level11 = 0x0000000b;
  static const level20 = 0x00000014;
  static const level502 = 0x000001f6;
  static const level503 = 0x000001f7;
  static const level1004 = 0x000003ec;
  static const level1501 = 0x000005dd;
  static const level1101 = 0x0000044d;
  static const level501 = 0x000001f5;
  static const level1001 = 0x000003e9;
  static const level23 = 0x00000017;
  static const level24 = 0x00000018;
}

/// {@category Enum}
class SERVER_INFO_1016_sv1016_hidden {
  static const SV_VISIBLE = 0x00000000;
  static const SV_HIDDEN = 0x00000001;
}

/// {@category Enum}
class SERVER_INFO_402_sv402_security {
  static const SV_SHARESECURITY = 0x00000000;
  static const SV_USERSECURITY = 0x00000001;
}

/// {@category Enum}
class TRANSPORT_TYPE {
  static const UseTransportType_None = 0x00000000;
  static const UseTransportType_Wsk = 0x00000001;
  static const UseTransportType_Quic = 0x00000002;
}

/// {@category Enum}
class USER_INFO_4_usri4_flags {
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
class USER_MODALS_INFO_1006_usrmod1006_roleFlags {
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
class USE_INFO_1_ui1_asg_type {
  static const USE_WILDCARD = 0xffffffff;
  static const USE_DISKDEV = 0x00000000;
  static const USE_SPOOLDEV = 0x00000001;
  static const USE_IPC = 0x00000003;
}
