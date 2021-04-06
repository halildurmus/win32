/// {@category Enum}
class AAL_TYPE {
  static const AALTYPE_5 = 0x00000005;
  static const AALTYPE_USER = 0x00000010;
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
class MULTICAST_MODE_TYPE {
  static const MCAST_INCLUDE = 0x00000000;
  static const MCAST_EXCLUDE = 0x00000001;
}

/// {@category Enum}
class NAPI_PROVIDER_LEVEL {
  static const ProviderLevel_None = 0x00000000;
  static const ProviderLevel_Secondary = 0x00000001;
  static const ProviderLevel_Primary = 0x00000002;
}

/// {@category Enum}
class NAPI_PROVIDER_TYPE {
  static const ProviderType_Application = 0x00000001;
  static const ProviderType_Service = 0x00000002;
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
class NL_BANDWIDTH_FLAG {
  static const NlbwDisabled = 0x00000000;
  static const NlbwEnabled = 0x00000001;
  static const NlbwUnchanged = 0xffffffff;
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
class NL_NETWORK_CATEGORY {
  static const NetworkCategoryPublic = 0x00000000;
  static const NetworkCategoryPrivate = 0x00000001;
  static const NetworkCategoryDomainAuthenticated = 0x00000002;
  static const NetworkCategoryUnchanged = 0xffffffff;
  static const NetworkCategoryUnknown = 0xffffffff;
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
class RCVALL_VALUE {
  static const RCVALL_OFF = 0x00000000;
  static const RCVALL_ON = 0x00000001;
  static const RCVALL_SOCKETLEVELONLY = 0x00000002;
  static const RCVALL_IPLEVEL = 0x00000003;
}

/// {@category Enum}
class RIO_NOTIFICATION_COMPLETION_TYPE {
  static const RIO_EVENT_COMPLETION = 0x00000001;
  static const RIO_IOCP_COMPLETION = 0x00000002;
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

/// {@category Enum}
class SOCKET_SECURITY_PROTOCOL {
  static const SOCKET_SECURITY_PROTOCOL_DEFAULT = 0x00000000;
  static const SOCKET_SECURITY_PROTOCOL_IPSEC = 0x00000001;
  static const SOCKET_SECURITY_PROTOCOL_IPSEC2 = 0x00000002;
  static const SOCKET_SECURITY_PROTOCOL_INVALID = 0x00000003;
}

/// {@category Enum}
class SOCKET_USAGE_TYPE {
  static const SYSTEM_CRITICAL_SOCKET = 0x00000001;
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
class WSA_COMPATIBILITY_BEHAVIOR_ID {
  static const WsaBehaviorAll = 0x00000000;
  static const WsaBehaviorReceiveBuffering = 0x00000001;
  static const WsaBehaviorAutoTuning = 0x00000002;
}

/// {@category Enum}
class WSA_ERROR {
  static const WSA_IO_PENDING = 0x000003e5;
  static const WSA_IO_INCOMPLETE = 0x000003e4;
  static const WSA_INVALID_HANDLE = 0x00000006;
  static const WSA_INVALID_PARAMETER = 0x00000057;
  static const WSA_NOT_ENOUGH_MEMORY = 0x00000008;
  static const WSA_OPERATION_ABORTED = 0x000003e3;
  static const WSABASEERR = 0x00002710;
  static const WSAEINTR = 0x00002714;
  static const WSAEBADF = 0x00002719;
  static const WSAEACCES = 0x0000271d;
  static const WSAEFAULT = 0x0000271e;
  static const WSAEINVAL = 0x00002726;
  static const WSAEMFILE = 0x00002728;
  static const WSAEWOULDBLOCK = 0x00002733;
  static const WSAEINPROGRESS = 0x00002734;
  static const WSAEALREADY = 0x00002735;
  static const WSAENOTSOCK = 0x00002736;
  static const WSAEDESTADDRREQ = 0x00002737;
  static const WSAEMSGSIZE = 0x00002738;
  static const WSAEPROTOTYPE = 0x00002739;
  static const WSAENOPROTOOPT = 0x0000273a;
  static const WSAEPROTONOSUPPORT = 0x0000273b;
  static const WSAESOCKTNOSUPPORT = 0x0000273c;
  static const WSAEOPNOTSUPP = 0x0000273d;
  static const WSAEPFNOSUPPORT = 0x0000273e;
  static const WSAEAFNOSUPPORT = 0x0000273f;
  static const WSAEADDRINUSE = 0x00002740;
  static const WSAEADDRNOTAVAIL = 0x00002741;
  static const WSAENETDOWN = 0x00002742;
  static const WSAENETUNREACH = 0x00002743;
  static const WSAENETRESET = 0x00002744;
  static const WSAECONNABORTED = 0x00002745;
  static const WSAECONNRESET = 0x00002746;
  static const WSAENOBUFS = 0x00002747;
  static const WSAEISCONN = 0x00002748;
  static const WSAENOTCONN = 0x00002749;
  static const WSAESHUTDOWN = 0x0000274a;
  static const WSAETOOMANYREFS = 0x0000274b;
  static const WSAETIMEDOUT = 0x0000274c;
  static const WSAECONNREFUSED = 0x0000274d;
  static const WSAELOOP = 0x0000274e;
  static const WSAENAMETOOLONG = 0x0000274f;
  static const WSAEHOSTDOWN = 0x00002750;
  static const WSAEHOSTUNREACH = 0x00002751;
  static const WSAENOTEMPTY = 0x00002752;
  static const WSAEPROCLIM = 0x00002753;
  static const WSAEUSERS = 0x00002754;
  static const WSAEDQUOT = 0x00002755;
  static const WSAESTALE = 0x00002756;
  static const WSAEREMOTE = 0x00002757;
  static const WSASYSNOTREADY = 0x0000276b;
  static const WSAVERNOTSUPPORTED = 0x0000276c;
  static const WSANOTINITIALISED = 0x0000276d;
  static const WSAEDISCON = 0x00002775;
  static const WSAENOMORE = 0x00002776;
  static const WSAECANCELLED = 0x00002777;
  static const WSAEINVALIDPROCTABLE = 0x00002778;
  static const WSAEINVALIDPROVIDER = 0x00002779;
  static const WSAEPROVIDERFAILEDINIT = 0x0000277a;
  static const WSASYSCALLFAILURE = 0x0000277b;
  static const WSASERVICE_NOT_FOUND = 0x0000277c;
  static const WSATYPE_NOT_FOUND = 0x0000277d;
  static const WSA_E_NO_MORE = 0x0000277e;
  static const WSA_E_CANCELLED = 0x0000277f;
  static const WSAEREFUSED = 0x00002780;
  static const WSAHOST_NOT_FOUND = 0x00002af9;
  static const WSATRY_AGAIN = 0x00002afa;
  static const WSANO_RECOVERY = 0x00002afb;
  static const WSANO_DATA = 0x00002afc;
  static const WSA_QOS_RECEIVERS = 0x00002afd;
  static const WSA_QOS_SENDERS = 0x00002afe;
  static const WSA_QOS_NO_SENDERS = 0x00002aff;
  static const WSA_QOS_NO_RECEIVERS = 0x00002b00;
  static const WSA_QOS_REQUEST_CONFIRMED = 0x00002b01;
  static const WSA_QOS_ADMISSION_FAILURE = 0x00002b02;
  static const WSA_QOS_POLICY_FAILURE = 0x00002b03;
  static const WSA_QOS_BAD_STYLE = 0x00002b04;
  static const WSA_QOS_BAD_OBJECT = 0x00002b05;
  static const WSA_QOS_TRAFFIC_CTRL_ERROR = 0x00002b06;
  static const WSA_QOS_GENERIC_ERROR = 0x00002b07;
  static const WSA_QOS_ESERVICETYPE = 0x00002b08;
  static const WSA_QOS_EFLOWSPEC = 0x00002b09;
  static const WSA_QOS_EPROVSPECBUF = 0x00002b0a;
  static const WSA_QOS_EFILTERSTYLE = 0x00002b0b;
  static const WSA_QOS_EFILTERTYPE = 0x00002b0c;
  static const WSA_QOS_EFILTERCOUNT = 0x00002b0d;
  static const WSA_QOS_EOBJLENGTH = 0x00002b0e;
  static const WSA_QOS_EFLOWCOUNT = 0x00002b0f;
  static const WSA_QOS_EUNKOWNPSOBJ = 0x00002b10;
  static const WSA_QOS_EPOLICYOBJ = 0x00002b11;
  static const WSA_QOS_EFLOWDESC = 0x00002b12;
  static const WSA_QOS_EPSFLOWSPEC = 0x00002b13;
  static const WSA_QOS_EPSFILTERSPEC = 0x00002b14;
  static const WSA_QOS_ESDMODEOBJ = 0x00002b15;
  static const WSA_QOS_ESHAPERATEOBJ = 0x00002b16;
  static const WSA_QOS_RESERVED_PETYPE = 0x00002b17;
  static const WSA_SECURE_HOST_NOT_FOUND = 0x00002b18;
  static const WSA_IPSEC_NAME_POLICY_ERROR = 0x00002b19;
}

/// {@category Enum}
class WSC_PROVIDER_INFO_TYPE {
  static const ProviderInfoLspCategories = 0x00000000;
  static const ProviderInfoAudit = 0x00000001;
}

/// {@category Enum}
class eWINDOW_ADVANCE_METHOD {
  static const E_WINDOW_ADVANCE_BY_TIME = 0x00000001;
  static const E_WINDOW_USE_AS_DATA_CACHE = 0x00000002;
}

/// {@category Enum}
class send_flags {
  static const MSG_DONTROUTE = 0x00000004;
  static const MSG_OOB = 0x00000001;
}

