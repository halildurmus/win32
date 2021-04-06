/// {@category Enum}
class GetAdaptersAddresses_Flags {
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
class Get_Family {
  static const AF_INET = 0x00000002;
  static const AF_INET6 = 0x00000017;
  static const AF_UNSPEC = 0x00000000;
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
class NET_IF_RCV_ADDRESS_TYPE {
  static const NET_IF_RCV_ADDRESS_TYPE_OTHER = 0x00000001;
  static const NET_IF_RCV_ADDRESS_TYPE_VOLATILE = 0x00000002;
  static const NET_IF_RCV_ADDRESS_TYPE_NON_VOLATILE = 0x00000003;
}

/// {@category Enum}
class NL_DAD_STATE {
  static const NldsInvalid = 0x00000000;
  static const NldsTentative = 0x00000001;
  static const NldsDuplicate = 0x00000002;
  static const NldsDeprecated = 0x00000003;
  static const NldsPreferred = 0x00000004;
  static const IpDadStateInvalid = 0x00000000;
  static const IpDadStateTentative = 0x00000001;
  static const IpDadStateDuplicate = 0x00000002;
  static const IpDadStateDeprecated = 0x00000003;
  static const IpDadStatePreferred = 0x00000004;
}

/// {@category Enum}
class NL_NETWORK_CONNECTIVITY_COST_HINT {
  static const NetworkConnectivityCostHintUnknown = 0x00000000;
  static const NetworkConnectivityCostHintUnrestricted = 0x00000001;
  static const NetworkConnectivityCostHintFixed = 0x00000002;
  static const NetworkConnectivityCostHintVariable = 0x00000003;
}

/// {@category Enum}
class NL_NETWORK_CONNECTIVITY_LEVEL_HINT {
  static const NetworkConnectivityLevelHintUnknown = 0x00000000;
  static const NetworkConnectivityLevelHintNone = 0x00000001;
  static const NetworkConnectivityLevelHintLocalAccess = 0x00000002;
  static const NetworkConnectivityLevelHintInternetAccess = 0x00000003;
  static const NetworkConnectivityLevelHintConstrainedInternetAccess =
      0x00000004;
  static const NetworkConnectivityLevelHintHidden = 0x00000005;
}

/// {@category Enum}
class NL_PREFIX_ORIGIN {
  static const IpPrefixOriginOther = 0x00000000;
  static const IpPrefixOriginManual = 0x00000001;
  static const IpPrefixOriginWellKnown = 0x00000002;
  static const IpPrefixOriginDhcp = 0x00000003;
  static const IpPrefixOriginRouterAdvertisement = 0x00000004;
  static const IpPrefixOriginUnchanged = 0x00000010;
}

/// {@category Enum}
class NL_SUFFIX_ORIGIN {
  static const NlsoOther = 0x00000000;
  static const NlsoManual = 0x00000001;
  static const NlsoWellKnown = 0x00000002;
  static const NlsoDhcp = 0x00000003;
  static const NlsoLinkLayerAddress = 0x00000004;
  static const NlsoRandom = 0x00000005;
  static const IpSuffixOriginOther = 0x00000000;
  static const IpSuffixOriginManual = 0x00000001;
  static const IpSuffixOriginWellKnown = 0x00000002;
  static const IpSuffixOriginDhcp = 0x00000003;
  static const IpSuffixOriginLinkLayerAddress = 0x00000004;
  static const IpSuffixOriginRandom = 0x00000005;
  static const IpSuffixOriginUnchanged = 0x00000010;
}

/// {@category Enum}
class SCOPE_LEVEL {
  static const ScopeLevelInterface = 0x00000001;
  static const ScopeLevelLink = 0x00000002;
  static const ScopeLevelSubnet = 0x00000003;
  static const ScopeLevelAdmin = 0x00000004;
  static const ScopeLevelSite = 0x00000005;
  static const ScopeLevelOrganization = 0x00000008;
  static const ScopeLevelGlobal = 0x0000000e;
  static const ScopeLevelCount = 0x00000010;
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
class UDP_TABLE_CLASS {
  static const UDP_TABLE_BASIC = 0x00000000;
  static const UDP_TABLE_OWNER_PID = 0x00000001;
  static const UDP_TABLE_OWNER_MODULE = 0x00000002;
}
