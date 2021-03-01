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
class NET_IF_ACCESS_TYPE {
  static const NET_IF_ACCESS_LOOPBACK = 0x00000001;
  static const NET_IF_ACCESS_BROADCAST = 0x00000002;
  static const NET_IF_ACCESS_POINT_TO_POINT = 0x00000003;
  static const NET_IF_ACCESS_POINT_TO_MULTI_POINT = 0x00000004;
  static const NET_IF_ACCESS_MAXIMUM = 0x00000005;
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
class MIB_IF_TABLE_LEVEL {
  static const MibIfTableNormal = 0x00000000;
  static const MibIfTableRaw = 0x00000001;
  static const MibIfTableNormalWithoutStatistics = 0x00000002;
}

/// {@category Enum}
class NL_ROUTE_PROTOCOL {
  static const RouteProtocolOther = 0x00000001;
  static const RouteProtocolLocal = 0x00000002;
  static const RouteProtocolNetMgmt = 0x00000003;
  static const RouteProtocolIcmp = 0x00000004;
  static const RouteProtocolEgp = 0x00000005;
  static const RouteProtocolGgp = 0x00000006;
  static const RouteProtocolHello = 0x00000007;
  static const RouteProtocolRip = 0x00000008;
  static const RouteProtocolIsIs = 0x00000009;
  static const RouteProtocolEsIs = 0x0000000a;
  static const RouteProtocolCisco = 0x0000000b;
  static const RouteProtocolBbn = 0x0000000c;
  static const RouteProtocolOspf = 0x0000000d;
  static const RouteProtocolBgp = 0x0000000e;
  static const RouteProtocolIdpr = 0x0000000f;
  static const RouteProtocolEigrp = 0x00000010;
  static const RouteProtocolDvmrp = 0x00000011;
  static const RouteProtocolRpl = 0x00000012;
  static const RouteProtocolDhcp = 0x00000013;
  static const MIB_IPPROTO_OTHER = 0x00000001;
  static const PROTO_IP_OTHER = 0x00000001;
  static const MIB_IPPROTO_LOCAL = 0x00000002;
  static const PROTO_IP_LOCAL = 0x00000002;
  static const MIB_IPPROTO_NETMGMT = 0x00000003;
  static const PROTO_IP_NETMGMT = 0x00000003;
  static const MIB_IPPROTO_ICMP = 0x00000004;
  static const PROTO_IP_ICMP = 0x00000004;
  static const MIB_IPPROTO_EGP = 0x00000005;
  static const PROTO_IP_EGP = 0x00000005;
  static const MIB_IPPROTO_GGP = 0x00000006;
  static const PROTO_IP_GGP = 0x00000006;
  static const MIB_IPPROTO_HELLO = 0x00000007;
  static const PROTO_IP_HELLO = 0x00000007;
  static const MIB_IPPROTO_RIP = 0x00000008;
  static const PROTO_IP_RIP = 0x00000008;
  static const MIB_IPPROTO_IS_IS = 0x00000009;
  static const PROTO_IP_IS_IS = 0x00000009;
  static const MIB_IPPROTO_ES_IS = 0x0000000a;
  static const PROTO_IP_ES_IS = 0x0000000a;
  static const MIB_IPPROTO_CISCO = 0x0000000b;
  static const PROTO_IP_CISCO = 0x0000000b;
  static const MIB_IPPROTO_BBN = 0x0000000c;
  static const PROTO_IP_BBN = 0x0000000c;
  static const MIB_IPPROTO_OSPF = 0x0000000d;
  static const PROTO_IP_OSPF = 0x0000000d;
  static const MIB_IPPROTO_BGP = 0x0000000e;
  static const PROTO_IP_BGP = 0x0000000e;
  static const MIB_IPPROTO_IDPR = 0x0000000f;
  static const PROTO_IP_IDPR = 0x0000000f;
  static const MIB_IPPROTO_EIGRP = 0x00000010;
  static const PROTO_IP_EIGRP = 0x00000010;
  static const MIB_IPPROTO_DVMRP = 0x00000011;
  static const PROTO_IP_DVMRP = 0x00000011;
  static const MIB_IPPROTO_RPL = 0x00000012;
  static const PROTO_IP_RPL = 0x00000012;
  static const MIB_IPPROTO_DHCP = 0x00000013;
  static const PROTO_IP_DHCP = 0x00000013;
  static const MIB_IPPROTO_NT_AUTOSTATIC = 0x00002712;
  static const PROTO_IP_NT_AUTOSTATIC = 0x00002712;
  static const MIB_IPPROTO_NT_STATIC = 0x00002716;
  static const PROTO_IP_NT_STATIC = 0x00002716;
  static const MIB_IPPROTO_NT_STATIC_NON_DOD = 0x00002717;
  static const PROTO_IP_NT_STATIC_NON_DOD = 0x00002717;
}

/// {@category Enum}
class NL_ADDRESS_TYPE {
  static const NlatUnspecified = 0x00000000;
  static const NlatUnicast = 0x00000001;
  static const NlatAnycast = 0x00000002;
  static const NlatMulticast = 0x00000003;
  static const NlatBroadcast = 0x00000004;
  static const NlatInvalid = 0x00000005;
}

/// {@category Enum}
class NL_ROUTE_ORIGIN {
  static const NlroManual = 0x00000000;
  static const NlroWellKnown = 0x00000001;
  static const NlroDHCP = 0x00000002;
  static const NlroRouterAdvertisement = 0x00000003;
  static const Nlro6to4 = 0x00000004;
}

/// {@category Enum}
class NL_NEIGHBOR_STATE {
  static const NlnsUnreachable = 0x00000000;
  static const NlnsIncomplete = 0x00000001;
  static const NlnsProbe = 0x00000002;
  static const NlnsDelay = 0x00000003;
  static const NlnsStale = 0x00000004;
  static const NlnsReachable = 0x00000005;
  static const NlnsPermanent = 0x00000006;
  static const NlnsMaximum = 0x00000007;
}

/// {@category Enum}
class NL_LINK_LOCAL_ADDRESS_BEHAVIOR {
  static const LinkLocalAlwaysOff = 0x00000000;
  static const LinkLocalDelayed = 0x00000001;
  static const LinkLocalAlwaysOn = 0x00000002;
  static const LinkLocalUnchanged = 0xffffffff;
}

/// {@category Enum}
class NL_ROUTER_DISCOVERY_BEHAVIOR {
  static const RouterDiscoveryDisabled = 0x00000000;
  static const RouterDiscoveryEnabled = 0x00000001;
  static const RouterDiscoveryDhcp = 0x00000002;
  static const RouterDiscoveryUnchanged = 0xffffffff;
}

