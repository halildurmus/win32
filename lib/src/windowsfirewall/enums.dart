/// {@category Enum}
class ICS_TARGETTYPE {
  static const ICSTT_NAME = 0x00000000;
  static const ICSTT_IPADDRESS = 0x00000001;
}

/// {@category Enum}
class INET_FIREWALL_AC_CHANGE_TYPE {
  static const INET_FIREWALL_AC_CHANGE_INVALID = 0x00000000;
  static const INET_FIREWALL_AC_CHANGE_CREATE = 0x00000001;
  static const INET_FIREWALL_AC_CHANGE_DELETE = 0x00000002;
  static const INET_FIREWALL_AC_CHANGE_MAX = 0x00000003;
}

/// {@category Enum}
class INET_FIREWALL_AC_CREATION_TYPE {
  static const INET_FIREWALL_AC_NONE = 0x00000000;
  static const INET_FIREWALL_AC_PACKAGE_ID_ONLY = 0x00000001;
  static const INET_FIREWALL_AC_BINARY = 0x00000002;
  static const INET_FIREWALL_AC_MAX = 0x00000004;
}

/// {@category Enum}
class NETCONMGR_ENUM_FLAGS {
  static const NCME_DEFAULT = 0x00000000;
  static const NCME_HIDDEN = 0x00000001;
}

/// {@category Enum}
class NETCONUI_CONNECT_FLAGS {
  static const NCUC_DEFAULT = 0x00000000;
  static const NCUC_NO_UI = 0x00000001;
  static const NCUC_ENABLE_DISABLE = 0x00000002;
}

/// {@category Enum}
class NETCON_CHARACTERISTIC_FLAGS {
  static const NCCF_NONE = 0x00000000;
  static const NCCF_ALL_USERS = 0x00000001;
  static const NCCF_ALLOW_DUPLICATION = 0x00000002;
  static const NCCF_ALLOW_REMOVAL = 0x00000004;
  static const NCCF_ALLOW_RENAME = 0x00000008;
  static const NCCF_INCOMING_ONLY = 0x00000020;
  static const NCCF_OUTGOING_ONLY = 0x00000040;
  static const NCCF_BRANDED = 0x00000080;
  static const NCCF_SHARED = 0x00000100;
  static const NCCF_BRIDGED = 0x00000200;
  static const NCCF_FIREWALLED = 0x00000400;
  static const NCCF_DEFAULT = 0x00000800;
  static const NCCF_HOMENET_CAPABLE = 0x00001000;
  static const NCCF_SHARED_PRIVATE = 0x00002000;
  static const NCCF_QUARANTINED = 0x00004000;
  static const NCCF_RESERVED = 0x00008000;
  static const NCCF_HOSTED_NETWORK = 0x00010000;
  static const NCCF_VIRTUAL_STATION = 0x00020000;
  static const NCCF_WIFI_DIRECT = 0x00040000;
  static const NCCF_BLUETOOTH_MASK = 0x000f0000;
  static const NCCF_LAN_MASK = 0x00f00000;
}

/// {@category Enum}
class NETCON_MEDIATYPE {
  static const NCM_NONE = 0x00000000;
  static const NCM_DIRECT = 0x00000001;
  static const NCM_ISDN = 0x00000002;
  static const NCM_LAN = 0x00000003;
  static const NCM_PHONE = 0x00000004;
  static const NCM_TUNNEL = 0x00000005;
  static const NCM_PPPOE = 0x00000006;
  static const NCM_BRIDGE = 0x00000007;
  static const NCM_SHAREDACCESSHOST_LAN = 0x00000008;
  static const NCM_SHAREDACCESSHOST_RAS = 0x00000009;
}

/// {@category Enum}
class NETCON_STATUS {
  static const NCS_DISCONNECTED = 0x00000000;
  static const NCS_CONNECTING = 0x00000001;
  static const NCS_CONNECTED = 0x00000002;
  static const NCS_DISCONNECTING = 0x00000003;
  static const NCS_HARDWARE_NOT_PRESENT = 0x00000004;
  static const NCS_HARDWARE_DISABLED = 0x00000005;
  static const NCS_HARDWARE_MALFUNCTION = 0x00000006;
  static const NCS_MEDIA_DISCONNECTED = 0x00000007;
  static const NCS_AUTHENTICATING = 0x00000008;
  static const NCS_AUTHENTICATION_SUCCEEDED = 0x00000009;
  static const NCS_AUTHENTICATION_FAILED = 0x0000000a;
  static const NCS_INVALID_ADDRESS = 0x0000000b;
  static const NCS_CREDENTIALS_REQUIRED = 0x0000000c;
  static const NCS_ACTION_REQUIRED = 0x0000000d;
  static const NCS_ACTION_REQUIRED_RETRY = 0x0000000e;
  static const NCS_CONNECT_FAILED = 0x0000000f;
}

/// {@category Enum}
class NETCON_TYPE {
  static const NCT_DIRECT_CONNECT = 0x00000000;
  static const NCT_INBOUND = 0x00000001;
  static const NCT_INTERNET = 0x00000002;
  static const NCT_LAN = 0x00000003;
  static const NCT_PHONE = 0x00000004;
  static const NCT_TUNNEL = 0x00000005;
  static const NCT_BRIDGE = 0x00000006;
}

/// {@category Enum}
class NETISO_ERROR_TYPE {
  static const NETISO_ERROR_TYPE_NONE = 0x00000000;
  static const NETISO_ERROR_TYPE_PRIVATE_NETWORK = 0x00000001;
  static const NETISO_ERROR_TYPE_INTERNET_CLIENT = 0x00000002;
  static const NETISO_ERROR_TYPE_INTERNET_CLIENT_SERVER = 0x00000003;
  static const NETISO_ERROR_TYPE_MAX = 0x00000004;
}

/// {@category Enum}
class NETISO_FLAG {
  static const NETISO_FLAG_FORCE_COMPUTE_BINARIES = 0x00000001;
  static const NETISO_FLAG_MAX = 0x00000002;
}

/// {@category Enum}
class NET_FW_ACTION {
  static const NET_FW_ACTION_BLOCK = 0x00000000;
  static const NET_FW_ACTION_ALLOW = 0x00000001;
  static const NET_FW_ACTION_MAX = 0x00000002;
}

/// {@category Enum}
class NET_FW_AUTHENTICATE_TYPE {
  static const NET_FW_AUTHENTICATE_NONE = 0x00000000;
  static const NET_FW_AUTHENTICATE_NO_ENCAPSULATION = 0x00000001;
  static const NET_FW_AUTHENTICATE_WITH_INTEGRITY = 0x00000002;
  static const NET_FW_AUTHENTICATE_AND_NEGOTIATE_ENCRYPTION = 0x00000003;
  static const NET_FW_AUTHENTICATE_AND_ENCRYPT = 0x00000004;
}

/// {@category Enum}
class NET_FW_EDGE_TRAVERSAL_TYPE {
  static const NET_FW_EDGE_TRAVERSAL_TYPE_DENY = 0x00000000;
  static const NET_FW_EDGE_TRAVERSAL_TYPE_ALLOW = 0x00000001;
  static const NET_FW_EDGE_TRAVERSAL_TYPE_DEFER_TO_APP = 0x00000002;
  static const NET_FW_EDGE_TRAVERSAL_TYPE_DEFER_TO_USER = 0x00000003;
}

/// {@category Enum}
class NET_FW_IP_PROTOCOL {
  static const NET_FW_IP_PROTOCOL_TCP = 0x00000006;
  static const NET_FW_IP_PROTOCOL_UDP = 0x00000011;
  static const NET_FW_IP_PROTOCOL_ANY = 0x00000100;
}

/// {@category Enum}
class NET_FW_IP_VERSION {
  static const NET_FW_IP_VERSION_V4 = 0x00000000;
  static const NET_FW_IP_VERSION_V6 = 0x00000001;
  static const NET_FW_IP_VERSION_ANY = 0x00000002;
  static const NET_FW_IP_VERSION_MAX = 0x00000003;
}

/// {@category Enum}
class NET_FW_MODIFY_STATE {
  static const NET_FW_MODIFY_STATE_OK = 0x00000000;
  static const NET_FW_MODIFY_STATE_GP_OVERRIDE = 0x00000001;
  static const NET_FW_MODIFY_STATE_INBOUND_BLOCKED = 0x00000002;
}

/// {@category Enum}
class NET_FW_POLICY_TYPE {
  static const NET_FW_POLICY_GROUP = 0x00000000;
  static const NET_FW_POLICY_LOCAL = 0x00000001;
  static const NET_FW_POLICY_EFFECTIVE = 0x00000002;
  static const NET_FW_POLICY_TYPE_MAX = 0x00000003;
}

/// {@category Enum}
class NET_FW_PROFILE_TYPE {
  static const NET_FW_PROFILE_DOMAIN = 0x00000000;
  static const NET_FW_PROFILE_STANDARD = 0x00000001;
  static const NET_FW_PROFILE_CURRENT = 0x00000002;
  static const NET_FW_PROFILE_TYPE_MAX = 0x00000003;
}

/// {@category Enum}
class NET_FW_PROFILE_TYPE2 {
  static const NET_FW_PROFILE2_DOMAIN = 0x00000001;
  static const NET_FW_PROFILE2_PRIVATE = 0x00000002;
  static const NET_FW_PROFILE2_PUBLIC = 0x00000004;
  static const NET_FW_PROFILE2_ALL = 0x7fffffff;
}

/// {@category Enum}
class NET_FW_RULE_CATEGORY {
  static const NET_FW_RULE_CATEGORY_BOOT = 0x00000000;
  static const NET_FW_RULE_CATEGORY_STEALTH = 0x00000001;
  static const NET_FW_RULE_CATEGORY_FIREWALL = 0x00000002;
  static const NET_FW_RULE_CATEGORY_CONSEC = 0x00000003;
  static const NET_FW_RULE_CATEGORY_MAX = 0x00000004;
}

/// {@category Enum}
class NET_FW_RULE_DIRECTION {
  static const NET_FW_RULE_DIR_IN = 0x00000001;
  static const NET_FW_RULE_DIR_OUT = 0x00000002;
  static const NET_FW_RULE_DIR_MAX = 0x00000003;
}

/// {@category Enum}
class NET_FW_SCOPE {
  static const NET_FW_SCOPE_ALL = 0x00000000;
  static const NET_FW_SCOPE_LOCAL_SUBNET = 0x00000001;
  static const NET_FW_SCOPE_CUSTOM = 0x00000002;
  static const NET_FW_SCOPE_MAX = 0x00000003;
}

/// {@category Enum}
class NET_FW_SERVICE_TYPE {
  static const NET_FW_SERVICE_FILE_AND_PRINT = 0x00000000;
  static const NET_FW_SERVICE_UPNP = 0x00000001;
  static const NET_FW_SERVICE_REMOTE_DESKTOP = 0x00000002;
  static const NET_FW_SERVICE_NONE = 0x00000003;
  static const NET_FW_SERVICE_TYPE_MAX = 0x00000004;
}

/// {@category Enum}
class SHARINGCONNECTIONTYPE {
  static const ICSSHARINGTYPE_PUBLIC = 0x00000000;
  static const ICSSHARINGTYPE_PRIVATE = 0x00000001;
}

/// {@category Enum}
class SHARINGCONNECTION_ENUM_FLAGS {
  static const ICSSC_DEFAULT = 0x00000000;
  static const ICSSC_ENABLED = 0x00000001;
}

