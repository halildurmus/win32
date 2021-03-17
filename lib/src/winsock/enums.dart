/// {@category Enum}
class IPPROTO {
  static const IPPROTO_HOPOPTS = 0x00000000;
  static const IPPROTO_ICMP = 0x00000001;
  static const IPPROTO_IGMP = 0x00000002;
  static const IPPROTO_GGP = 0x00000003;
  static const IPPROTO_IPV4 = 0x00000004;
  static const IPPROTO_ST = 0x00000005;
  static const IPPROTO_TCP = 0x00000006;
  static const IPPROTO_CBT = 0x00000007;
  static const IPPROTO_EGP = 0x00000008;
  static const IPPROTO_IGP = 0x00000009;
  static const IPPROTO_PUP = 0x0000000c;
  static const IPPROTO_UDP = 0x00000011;
  static const IPPROTO_IDP = 0x00000016;
  static const IPPROTO_RDP = 0x0000001b;
  static const IPPROTO_IPV6 = 0x00000029;
  static const IPPROTO_ROUTING = 0x0000002b;
  static const IPPROTO_FRAGMENT = 0x0000002c;
  static const IPPROTO_ESP = 0x00000032;
  static const IPPROTO_AH = 0x00000033;
  static const IPPROTO_ICMPV6 = 0x0000003a;
  static const IPPROTO_NONE = 0x0000003b;
  static const IPPROTO_DSTOPTS = 0x0000003c;
  static const IPPROTO_ND = 0x0000004d;
  static const IPPROTO_ICLFXBM = 0x0000004e;
  static const IPPROTO_PIM = 0x00000067;
  static const IPPROTO_PGM = 0x00000071;
  static const IPPROTO_L2TP = 0x00000073;
  static const IPPROTO_SCTP = 0x00000084;
  static const IPPROTO_RAW = 0x000000ff;
  static const IPPROTO_MAX = 0x00000100;
  static const IPPROTO_RESERVED_RAW = 0x00000101;
  static const IPPROTO_RESERVED_IPSEC = 0x00000102;
  static const IPPROTO_RESERVED_IPSECOFFLOAD = 0x00000103;
  static const IPPROTO_RESERVED_WNV = 0x00000104;
  static const IPPROTO_RESERVED_MAX = 0x00000105;
}

/// {@category Enum}
class WSACOMPLETIONTYPE {
  static const NSP_NOTIFY_IMMEDIATELY = 0x00000000;
  static const NSP_NOTIFY_HWND = 0x00000001;
  static const NSP_NOTIFY_EVENT = 0x00000002;
  static const NSP_NOTIFY_PORT = 0x00000003;
  static const NSP_NOTIFY_APC = 0x00000004;
}

/// {@category Enum}
class WSAECOMPARATOR {
  static const COMP_EQUAL = 0x00000000;
  static const COMP_NOTLESS = 0x00000001;
}

/// {@category Enum}
class WSAESETSERVICEOP {
  static const RNRSERVICE_REGISTER = 0x00000000;
  static const RNRSERVICE_DEREGISTER = 0x00000001;
  static const RNRSERVICE_DELETE = 0x00000002;
}

/// {@category Enum}
class PMTUD_STATE {
  static const IP_PMTUDISC_NOT_SET = 0x00000000;
  static const IP_PMTUDISC_DO = 0x00000001;
  static const IP_PMTUDISC_DONT = 0x00000002;
  static const IP_PMTUDISC_PROBE = 0x00000003;
  static const IP_PMTUDISC_MAX = 0x00000004;
}

/// {@category Enum}
class MULTICAST_MODE_TYPE {
  static const MCAST_INCLUDE = 0x00000000;
  static const MCAST_EXCLUDE = 0x00000001;
}

/// {@category Enum}
class eWINDOW_ADVANCE_METHOD {
  static const E_WINDOW_ADVANCE_BY_TIME = 0x00000001;
  static const E_WINDOW_USE_AS_DATA_CACHE = 0x00000002;
}

/// {@category Enum}
class NL_BANDWIDTH_FLAG {
  static const NlbwDisabled = 0x00000000;
  static const NlbwEnabled = 0x00000001;
  static const NlbwUnchanged = 0xffffffff;
}

/// {@category Enum}
class NL_NETWORK_CATEGORY {
  static const NetworkCategoryPublic = 0x00000000;
  static const NetworkCategoryPrivate = 0x00000001;
  static const NetworkCategoryDomainAuthenticated = 0x00000002;
  static const NetworkCategoryUnchanged = 0xffffffff;
  static const NetworkCategoryUnknown = 0xffffffff;
}

/// {@category Enum}
class NL_INTERFACE_NETWORK_CATEGORY_STATE {
  static const NlincCategoryUnknown = 0x00000000;
  static const NlincPublic = 0x00000001;
  static const NlincPrivate = 0x00000002;
  static const NlincDomainAuthenticated = 0x00000003;
  static const NlincCategoryStateMax = 0x00000004;
}

/// {@category Enum}
class TCPSTATE {
  static const TCPSTATE_CLOSED = 0x00000000;
  static const TCPSTATE_LISTEN = 0x00000001;
  static const TCPSTATE_SYN_SENT = 0x00000002;
  static const TCPSTATE_SYN_RCVD = 0x00000003;
  static const TCPSTATE_ESTABLISHED = 0x00000004;
  static const TCPSTATE_FIN_WAIT_1 = 0x00000005;
  static const TCPSTATE_FIN_WAIT_2 = 0x00000006;
  static const TCPSTATE_CLOSE_WAIT = 0x00000007;
  static const TCPSTATE_CLOSING = 0x00000008;
  static const TCPSTATE_LAST_ACK = 0x00000009;
  static const TCPSTATE_TIME_WAIT = 0x0000000a;
  static const TCPSTATE_MAX = 0x0000000b;
}

/// {@category Enum}
class CONTROL_CHANNEL_TRIGGER_STATUS {
  static const CONTROL_CHANNEL_TRIGGER_STATUS_INVALID = 0x00000000;
  static const CONTROL_CHANNEL_TRIGGER_STATUS_SOFTWARE_SLOT_ALLOCATED = 0x00000001;
  static const CONTROL_CHANNEL_TRIGGER_STATUS_HARDWARE_SLOT_ALLOCATED = 0x00000002;
  static const CONTROL_CHANNEL_TRIGGER_STATUS_POLICY_ERROR = 0x00000003;
  static const CONTROL_CHANNEL_TRIGGER_STATUS_SYSTEM_ERROR = 0x00000004;
  static const CONTROL_CHANNEL_TRIGGER_STATUS_TRANSPORT_DISCONNECTED = 0x00000005;
  static const CONTROL_CHANNEL_TRIGGER_STATUS_SERVICE_UNAVAILABLE = 0x00000006;
}

/// {@category Enum}
class RCVALL_VALUE {
  static const RCVALL_OFF = 0x00000000;
  static const RCVALL_ON = 0x00000001;
  static const RCVALL_SOCKETLEVELONLY = 0x00000002;
  static const RCVALL_IPLEVEL = 0x00000003;
}

/// {@category Enum}
class TCP_ICW_LEVEL {
  static const TCP_ICW_LEVEL_DEFAULT = 0x00000000;
  static const TCP_ICW_LEVEL_HIGH = 0x00000001;
  static const TCP_ICW_LEVEL_VERY_HIGH = 0x00000002;
  static const TCP_ICW_LEVEL_AGGRESSIVE = 0x00000003;
  static const TCP_ICW_LEVEL_EXPERIMENTAL = 0x00000004;
  static const TCP_ICW_LEVEL_COMPAT = 0x000000fe;
  static const TCP_ICW_LEVEL_MAX = 0x000000ff;
}

/// {@category Enum}
class SOCKET_USAGE_TYPE {
  static const SYSTEM_CRITICAL_SOCKET = 0x00000001;
}

/// {@category Enum}
class SOCKET_SECURITY_PROTOCOL {
  static const SOCKET_SECURITY_PROTOCOL_DEFAULT = 0x00000000;
  static const SOCKET_SECURITY_PROTOCOL_IPSEC = 0x00000001;
  static const SOCKET_SECURITY_PROTOCOL_IPSEC2 = 0x00000002;
  static const SOCKET_SECURITY_PROTOCOL_INVALID = 0x00000003;
}

/// {@category Enum}
class WSA_COMPATIBILITY_BEHAVIOR_ID {
  static const WsaBehaviorAll = 0x00000000;
  static const WsaBehaviorReceiveBuffering = 0x00000001;
  static const WsaBehaviorAutoTuning = 0x00000002;
}

/// {@category Enum}
class Q2931_IE_TYPE {
  static const IE_AALParameters = 0x00000000;
  static const IE_TrafficDescriptor = 0x00000001;
  static const IE_BroadbandBearerCapability = 0x00000002;
  static const IE_BHLI = 0x00000003;
  static const IE_BLLI = 0x00000004;
  static const IE_CalledPartyNumber = 0x00000005;
  static const IE_CalledPartySubaddress = 0x00000006;
  static const IE_CallingPartyNumber = 0x00000007;
  static const IE_CallingPartySubaddress = 0x00000008;
  static const IE_Cause = 0x00000009;
  static const IE_QOSClass = 0x0000000a;
  static const IE_TransitNetworkSelection = 0x0000000b;
}

/// {@category Enum}
class AAL_TYPE {
  static const AALTYPE_5 = 0x00000005;
  static const AALTYPE_USER = 0x00000010;
}

/// {@category Enum}
class NAPI_PROVIDER_TYPE {
  static const ProviderType_Application = 0x00000001;
  static const ProviderType_Service = 0x00000002;
}

/// {@category Enum}
class NAPI_PROVIDER_LEVEL {
  static const ProviderLevel_None = 0x00000000;
  static const ProviderLevel_Secondary = 0x00000001;
  static const ProviderLevel_Primary = 0x00000002;
}

/// {@category Enum}
class NLA_BLOB_DATA_TYPE {
  static const NLA_RAW_DATA = 0x00000000;
  static const NLA_INTERFACE = 0x00000001;
  static const NLA_802_1X_LOCATION = 0x00000002;
  static const NLA_CONNECTIVITY = 0x00000003;
  static const NLA_ICS = 0x00000004;
}

/// {@category Enum}
class NLA_CONNECTIVITY_TYPE {
  static const NLA_NETWORK_AD_HOC = 0x00000000;
  static const NLA_NETWORK_MANAGED = 0x00000001;
  static const NLA_NETWORK_UNMANAGED = 0x00000002;
  static const NLA_NETWORK_UNKNOWN = 0x00000003;
}

/// {@category Enum}
class NLA_INTERNET {
  static const NLA_INTERNET_UNKNOWN = 0x00000000;
  static const NLA_INTERNET_NO = 0x00000001;
  static const NLA_INTERNET_YES = 0x00000002;
}

/// {@category Enum}
class RIO_NOTIFICATION_COMPLETION_TYPE {
  static const RIO_EVENT_COMPLETION = 0x00000001;
  static const RIO_IOCP_COMPLETION = 0x00000002;
}

/// {@category Enum}
class WSC_PROVIDER_INFO_TYPE {
  static const ProviderInfoLspCategories = 0x00000000;
  static const ProviderInfoAudit = 0x00000001;
}

/// {@category Enum}
class SetService_dwOperation {
  static const SERVICE_REGISTER = 0x00000001;
  static const SERVICE_DEREGISTER = 0x00000002;
  static const SERVICE_FLUSH = 0x00000003;
  static const SERVICE_ADD_TYPE = 0x00000004;
  static const SERVICE_DELETE_TYPE = 0x00000005;
}

/// {@category Enum}
class send_flags {
  static const MSG_DONTROUTE = 0x00000004;
  static const MSG_OOB = 0x00000001;
}

/// {@category Enum}
class SERVICE_INFOA_dwDisplayHint {
  static const RESOURCEDISPLAYTYPE_DOMAIN = 0x00000001;
  static const RESOURCEDISPLAYTYPE_FILE = 0x00000004;
  static const RESOURCEDISPLAYTYPE_GENERIC = 0x00000000;
  static const RESOURCEDISPLAYTYPE_GROUP = 0x00000005;
  static const RESOURCEDISPLAYTYPE_SERVER = 0x00000002;
  static const RESOURCEDISPLAYTYPE_SHARE = 0x00000003;
  static const RESOURCEDISPLAYTYPE_TREE = 0x0000000a;
}

