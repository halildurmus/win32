/// {@category Enum}
class ADDRESS_FAMILY {
  static const AF_INET = 0x00000002;
  static const AF_INET6 = 0x00000017;
  static const AF_UNSPEC = 0x00000000;
}

/// {@category Enum}
class DNS_SERVER_PROPERTY_TYPE {
  static const DnsServerInvalidProperty = 0x00000000;
  static const DnsServerDohProperty = 0x00000001;
}

/// {@category Enum}
class GET_ADAPTERS_ADDRESSES_FLAGS {
  static const GAA_FLAG_SKIP_UNICAST = 0x00000001;
  static const GAA_FLAG_SKIP_ANYCAST = 0x00000002;
  static const GAA_FLAG_SKIP_MULTICAST = 0x00000004;
  static const GAA_FLAG_SKIP_DNS_SERVER = 0x00000008;
  static const GAA_FLAG_INCLUDE_PREFIX = 0x00000010;
  static const GAA_FLAG_SKIP_FRIENDLY_NAME = 0x00000020;
  static const GAA_FLAG_INCLUDE_WINS_INFO = 0x00000040;
  static const GAA_FLAG_INCLUDE_GATEWAYS = 0x00000080;
  static const GAA_FLAG_INCLUDE_ALL_INTERFACES = 0x00000100;
  static const GAA_FLAG_INCLUDE_ALL_COMPARTMENTS = 0x00000200;
  static const GAA_FLAG_INCLUDE_TUNNEL_BINDINGORDER = 0x00000400;
}

/// {@category Enum}
class GLOBAL_FILTER {
  static const GF_FRAGMENTS = 0x00000002;
  static const GF_STRONGHOST = 0x00000008;
  static const GF_FRAGCACHE = 0x00000009;
}

/// {@category Enum}
class ICMP4_TYPE {
  static const ICMP4_ECHO_REPLY = 0x00000000;
  static const ICMP4_DST_UNREACH = 0x00000003;
  static const ICMP4_SOURCE_QUENCH = 0x00000004;
  static const ICMP4_REDIRECT = 0x00000005;
  static const ICMP4_ECHO_REQUEST = 0x00000008;
  static const ICMP4_ROUTER_ADVERT = 0x00000009;
  static const ICMP4_ROUTER_SOLICIT = 0x0000000a;
  static const ICMP4_TIME_EXCEEDED = 0x0000000b;
  static const ICMP4_PARAM_PROB = 0x0000000c;
  static const ICMP4_TIMESTAMP_REQUEST = 0x0000000d;
  static const ICMP4_TIMESTAMP_REPLY = 0x0000000e;
  static const ICMP4_MASK_REQUEST = 0x00000011;
  static const ICMP4_MASK_REPLY = 0x00000012;
}

/// {@category Enum}
class ICMP6_TYPE {
  static const ICMP6_DST_UNREACH = 0x00000001;
  static const ICMP6_PACKET_TOO_BIG = 0x00000002;
  static const ICMP6_TIME_EXCEEDED = 0x00000003;
  static const ICMP6_PARAM_PROB = 0x00000004;
  static const ICMP6_ECHO_REQUEST = 0x00000080;
  static const ICMP6_ECHO_REPLY = 0x00000081;
  static const ICMP6_MEMBERSHIP_QUERY = 0x00000082;
  static const ICMP6_MEMBERSHIP_REPORT = 0x00000083;
  static const ICMP6_MEMBERSHIP_REDUCTION = 0x00000084;
  static const ND_ROUTER_SOLICIT = 0x00000085;
  static const ND_ROUTER_ADVERT = 0x00000086;
  static const ND_NEIGHBOR_SOLICIT = 0x00000087;
  static const ND_NEIGHBOR_ADVERT = 0x00000088;
  static const ND_REDIRECT = 0x00000089;
  static const ICMP6_V2_MEMBERSHIP_REPORT = 0x0000008f;
}

/// {@category Enum}
class IF_ACCESS_TYPE {
  static const IF_ACCESS_LOOPBACK = 0x00000001;
  static const IF_ACCESS_BROADCAST = 0x00000002;
  static const IF_ACCESS_POINT_TO_POINT = 0x00000003;
  static const IF_ACCESS_POINTTOPOINT = 0x00000003;
  static const IF_ACCESS_POINT_TO_MULTI_POINT = 0x00000004;
  static const IF_ACCESS_POINTTOMULTIPOINT = 0x00000004;
}

/// {@category Enum}
class IF_ADMINISTRATIVE_STATE {
  static const IF_ADMINISTRATIVE_DISABLED = 0x00000000;
  static const IF_ADMINISTRATIVE_ENABLED = 0x00000001;
  static const IF_ADMINISTRATIVE_DEMANDDIAL = 0x00000002;
}

/// {@category Enum}
class IF_OPER_STATUS {
  static const IfOperStatusUp = 0x00000001;
  static const IfOperStatusDown = 0x00000002;
  static const IfOperStatusTesting = 0x00000003;
  static const IfOperStatusUnknown = 0x00000004;
  static const IfOperStatusDormant = 0x00000005;
  static const IfOperStatusNotPresent = 0x00000006;
  static const IfOperStatusLowerLayerDown = 0x00000007;
}

/// {@category Enum}
class INTERNAL_IF_OPER_STATUS {
  static const IF_OPER_STATUS_NON_OPERATIONAL = 0x00000000;
  static const IF_OPER_STATUS_UNREACHABLE = 0x00000001;
  static const IF_OPER_STATUS_DISCONNECTED = 0x00000002;
  static const IF_OPER_STATUS_CONNECTING = 0x00000003;
  static const IF_OPER_STATUS_CONNECTED = 0x00000004;
  static const IF_OPER_STATUS_OPERATIONAL = 0x00000005;
}

/// {@category Enum}
class MIB_IF_ENTRY_LEVEL {
  static const MibIfEntryNormal = 0x00000000;
  static const MibIfEntryNormalWithoutStatistics = 0x00000002;
}

/// {@category Enum}
class MIB_IF_TABLE_LEVEL {
  static const MibIfTableNormal = 0x00000000;
  static const MibIfTableRaw = 0x00000001;
  static const MibIfTableNormalWithoutStatistics = 0x00000002;
}

/// {@category Enum}
class MIB_IPFORWARD_TYPE {
  static const MIB_IPROUTE_TYPE_OTHER = 0x00000001;
  static const MIB_IPROUTE_TYPE_INVALID = 0x00000002;
  static const MIB_IPROUTE_TYPE_DIRECT = 0x00000003;
  static const MIB_IPROUTE_TYPE_INDIRECT = 0x00000004;
}

/// {@category Enum}
class MIB_IPNET_TYPE {
  static const MIB_IPNET_TYPE_OTHER = 0x00000001;
  static const MIB_IPNET_TYPE_INVALID = 0x00000002;
  static const MIB_IPNET_TYPE_DYNAMIC = 0x00000003;
  static const MIB_IPNET_TYPE_STATIC = 0x00000004;
}

/// {@category Enum}
class MIB_IPSTATS_FORWARDING {
  static const MIB_IP_FORWARDING = 0x00000001;
  static const MIB_IP_NOT_FORWARDING = 0x00000002;
}

/// {@category Enum}
class MIB_NOTIFICATION_TYPE {
  static const MibParameterNotification = 0x00000000;
  static const MibAddInstance = 0x00000001;
  static const MibDeleteInstance = 0x00000002;
  static const MibInitialNotification = 0x00000003;
}

/// {@category Enum}
class MIB_TCP_STATE {
  static const MIB_TCP_STATE_CLOSED = 0x00000001;
  static const MIB_TCP_STATE_LISTEN = 0x00000002;
  static const MIB_TCP_STATE_SYN_SENT = 0x00000003;
  static const MIB_TCP_STATE_SYN_RCVD = 0x00000004;
  static const MIB_TCP_STATE_ESTAB = 0x00000005;
  static const MIB_TCP_STATE_FIN_WAIT1 = 0x00000006;
  static const MIB_TCP_STATE_FIN_WAIT2 = 0x00000007;
  static const MIB_TCP_STATE_CLOSE_WAIT = 0x00000008;
  static const MIB_TCP_STATE_CLOSING = 0x00000009;
  static const MIB_TCP_STATE_LAST_ACK = 0x0000000a;
  static const MIB_TCP_STATE_TIME_WAIT = 0x0000000b;
  static const MIB_TCP_STATE_DELETE_TCB = 0x0000000c;
  static const MIB_TCP_STATE_RESERVED = 0x00000064;
}

/// {@category Enum}
class NET_ADDRESS_FORMAT {
  static const NET_ADDRESS_FORMAT_UNSPECIFIED = 0x00000000;
  static const NET_ADDRESS_DNS_NAME = 0x00000001;
  static const NET_ADDRESS_IPV4 = 0x00000002;
  static const NET_ADDRESS_IPV6 = 0x00000003;
}

/// {@category Enum}
class NET_IF_ACCESS_TYPE {
  static const NET_IF_ACCESS_LOOPBACK = 0x00000001;
  static const NET_IF_ACCESS_BROADCAST = 0x00000002;
  static const NET_IF_ACCESS_POINT_TO_POINT = 0x00000003;
  static const NET_IF_ACCESS_POINT_TO_MULTI_POINT = 0x00000004;
  static const NET_IF_ACCESS_MAXIMUM = 0x00000005;
}

/// {@category Enum}
class NET_IF_ADMIN_STATUS {
  static const NET_IF_ADMIN_STATUS_UP = 0x00000001;
  static const NET_IF_ADMIN_STATUS_DOWN = 0x00000002;
  static const NET_IF_ADMIN_STATUS_TESTING = 0x00000003;
}

/// {@category Enum}
class NET_IF_CONNECTION_TYPE {
  static const NET_IF_CONNECTION_DEDICATED = 0x00000001;
  static const NET_IF_CONNECTION_PASSIVE = 0x00000002;
  static const NET_IF_CONNECTION_DEMAND = 0x00000003;
  static const NET_IF_CONNECTION_MAXIMUM = 0x00000004;
}

/// {@category Enum}
class NET_IF_DIRECTION_TYPE {
  static const NET_IF_DIRECTION_SENDRECEIVE = 0x00000000;
  static const NET_IF_DIRECTION_SENDONLY = 0x00000001;
  static const NET_IF_DIRECTION_RECEIVEONLY = 0x00000002;
  static const NET_IF_DIRECTION_MAXIMUM = 0x00000003;
}

/// {@category Enum}
class NET_IF_MEDIA_CONNECT_STATE {
  static const MediaConnectStateUnknown = 0x00000000;
  static const MediaConnectStateConnected = 0x00000001;
  static const MediaConnectStateDisconnected = 0x00000002;
}

/// {@category Enum}
class NET_IF_MEDIA_DUPLEX_STATE {
  static const MediaDuplexStateUnknown = 0x00000000;
  static const MediaDuplexStateHalf = 0x00000001;
  static const MediaDuplexStateFull = 0x00000002;
}

/// {@category Enum}
class NET_IF_OPER_STATUS {
  static const NET_IF_OPER_STATUS_UP = 0x00000001;
  static const NET_IF_OPER_STATUS_DOWN = 0x00000002;
  static const NET_IF_OPER_STATUS_TESTING = 0x00000003;
  static const NET_IF_OPER_STATUS_UNKNOWN = 0x00000004;
  static const NET_IF_OPER_STATUS_DORMANT = 0x00000005;
  static const NET_IF_OPER_STATUS_NOT_PRESENT = 0x00000006;
  static const NET_IF_OPER_STATUS_LOWER_LAYER_DOWN = 0x00000007;
}

/// {@category Enum}
class NET_IF_RCV_ADDRESS_TYPE {
  static const NET_IF_RCV_ADDRESS_TYPE_OTHER = 0x00000001;
  static const NET_IF_RCV_ADDRESS_TYPE_VOLATILE = 0x00000002;
  static const NET_IF_RCV_ADDRESS_TYPE_NON_VOLATILE = 0x00000003;
}

/// {@category Enum}
class PFADDRESSTYPE {
  static const PF_IPV4 = 0x00000000;
  static const PF_IPV6 = 0x00000001;
}

/// {@category Enum}
class PFFORWARD_ACTION {
  static const PF_ACTION_FORWARD = 0x00000000;
  static const PF_ACTION_DROP = 0x00000001;
}

/// {@category Enum}
class PFFRAMETYPE {
  static const PFFT_FILTER = 0x00000001;
  static const PFFT_FRAG = 0x00000002;
  static const PFFT_SPOOF = 0x00000003;
}

/// {@category Enum}
class TCPIP_OWNER_MODULE_INFO_CLASS {
  static const TCPIP_OWNER_MODULE_INFO_BASIC = 0x00000000;
}

/// {@category Enum}
class TCP_BOOLEAN_OPTIONAL {
  static const TcpBoolOptDisabled = 0x00000000;
  static const TcpBoolOptEnabled = 0x00000001;
  static const TcpBoolOptUnchanged = 0xffffffff;
}

/// {@category Enum}
class TCP_CONNECTION_OFFLOAD_STATE {
  static const TcpConnectionOffloadStateInHost = 0x00000000;
  static const TcpConnectionOffloadStateOffloading = 0x00000001;
  static const TcpConnectionOffloadStateOffloaded = 0x00000002;
  static const TcpConnectionOffloadStateUploading = 0x00000003;
  static const TcpConnectionOffloadStateMax = 0x00000004;
}

/// {@category Enum}
class TCP_ESTATS_TYPE {
  static const TcpConnectionEstatsSynOpts = 0x00000000;
  static const TcpConnectionEstatsData = 0x00000001;
  static const TcpConnectionEstatsSndCong = 0x00000002;
  static const TcpConnectionEstatsPath = 0x00000003;
  static const TcpConnectionEstatsSendBuff = 0x00000004;
  static const TcpConnectionEstatsRec = 0x00000005;
  static const TcpConnectionEstatsObsRec = 0x00000006;
  static const TcpConnectionEstatsBandwidth = 0x00000007;
  static const TcpConnectionEstatsFineRtt = 0x00000008;
  static const TcpConnectionEstatsMaximum = 0x00000009;
}

/// {@category Enum}
class TCP_RTO_ALGORITHM {
  static const TcpRtoAlgorithmOther = 0x00000001;
  static const TcpRtoAlgorithmConstant = 0x00000002;
  static const TcpRtoAlgorithmRsre = 0x00000003;
  static const TcpRtoAlgorithmVanj = 0x00000004;
  static const MIB_TCP_RTO_OTHER = 0x00000001;
  static const MIB_TCP_RTO_CONSTANT = 0x00000002;
  static const MIB_TCP_RTO_RSRE = 0x00000003;
  static const MIB_TCP_RTO_VANJ = 0x00000004;
}

/// {@category Enum}
class TCP_SOFT_ERROR {
  static const TcpErrorNone = 0x00000000;
  static const TcpErrorBelowDataWindow = 0x00000001;
  static const TcpErrorAboveDataWindow = 0x00000002;
  static const TcpErrorBelowAckWindow = 0x00000003;
  static const TcpErrorAboveAckWindow = 0x00000004;
  static const TcpErrorBelowTsWindow = 0x00000005;
  static const TcpErrorAboveTsWindow = 0x00000006;
  static const TcpErrorDataChecksumError = 0x00000007;
  static const TcpErrorDataLengthError = 0x00000008;
  static const TcpErrorMaxSoftError = 0x00000009;
}

/// {@category Enum}
class TCP_TABLE_CLASS {
  static const TCP_TABLE_BASIC_LISTENER = 0x00000000;
  static const TCP_TABLE_BASIC_CONNECTIONS = 0x00000001;
  static const TCP_TABLE_BASIC_ALL = 0x00000002;
  static const TCP_TABLE_OWNER_PID_LISTENER = 0x00000003;
  static const TCP_TABLE_OWNER_PID_CONNECTIONS = 0x00000004;
  static const TCP_TABLE_OWNER_PID_ALL = 0x00000005;
  static const TCP_TABLE_OWNER_MODULE_LISTENER = 0x00000006;
  static const TCP_TABLE_OWNER_MODULE_CONNECTIONS = 0x00000007;
  static const TCP_TABLE_OWNER_MODULE_ALL = 0x00000008;
}

/// {@category Enum}
class TUNNEL_TYPE {
  static const TUNNEL_TYPE_NONE = 0x00000000;
  static const TUNNEL_TYPE_OTHER = 0x00000001;
  static const TUNNEL_TYPE_DIRECT = 0x00000002;
  static const TUNNEL_TYPE_6TO4 = 0x0000000b;
  static const TUNNEL_TYPE_ISATAP = 0x0000000d;
  static const TUNNEL_TYPE_TEREDO = 0x0000000e;
  static const TUNNEL_TYPE_IPHTTPS = 0x0000000f;
}

/// {@category Enum}
class UDP_TABLE_CLASS {
  static const UDP_TABLE_BASIC = 0x00000000;
  static const UDP_TABLE_OWNER_PID = 0x00000001;
  static const UDP_TABLE_OWNER_MODULE = 0x00000002;
}
