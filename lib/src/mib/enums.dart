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
class MIB_NOTIFICATION_TYPE {
  static const MibParameterNotification = 0x00000000;
  static const MibAddInstance = 0x00000001;
  static const MibDeleteInstance = 0x00000002;
  static const MibInitialNotification = 0x00000003;
}

/// {@category Enum}
class TCP_CONNECTION_OFFLOAD_STATE {
  static const TcpConnectionOffloadStateInHost = 0x00000000;
  static const TcpConnectionOffloadStateOffloading = 0x00000001;
  static const TcpConnectionOffloadStateOffloaded = 0x00000002;
  static const TcpConnectionOffloadStateUploading = 0x00000003;
  static const TcpConnectionOffloadStateMax = 0x00000004;
}

