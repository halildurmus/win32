/// {@category Enum}
class RASAPIVERSION {
  static const RASAPIVERSION_500 = 0x00000001;
  static const RASAPIVERSION_501 = 0x00000002;
  static const RASAPIVERSION_600 = 0x00000003;
  static const RASAPIVERSION_601 = 0x00000004;
}

/// {@category Enum}
class tagRASCONNSTATE {
  static const RASCS_OpenPort = 0x00000000;
  static const RASCS_PortOpened = 0x00000001;
  static const RASCS_ConnectDevice = 0x00000002;
  static const RASCS_DeviceConnected = 0x00000003;
  static const RASCS_AllDevicesConnected = 0x00000004;
  static const RASCS_Authenticate = 0x00000005;
  static const RASCS_AuthNotify = 0x00000006;
  static const RASCS_AuthRetry = 0x00000007;
  static const RASCS_AuthCallback = 0x00000008;
  static const RASCS_AuthChangePassword = 0x00000009;
  static const RASCS_AuthProject = 0x0000000a;
  static const RASCS_AuthLinkSpeed = 0x0000000b;
  static const RASCS_AuthAck = 0x0000000c;
  static const RASCS_ReAuthenticate = 0x0000000d;
  static const RASCS_Authenticated = 0x0000000e;
  static const RASCS_PrepareForCallback = 0x0000000f;
  static const RASCS_WaitForModemReset = 0x00000010;
  static const RASCS_WaitForCallback = 0x00000011;
  static const RASCS_Projected = 0x00000012;
  static const RASCS_StartAuthentication = 0x00000013;
  static const RASCS_CallbackComplete = 0x00000014;
  static const RASCS_LogonNetwork = 0x00000015;
  static const RASCS_SubEntryConnected = 0x00000016;
  static const RASCS_SubEntryDisconnected = 0x00000017;
  static const RASCS_ApplySettings = 0x00000018;
  static const RASCS_Interactive = 0x00001000;
  static const RASCS_RetryAuthentication = 0x00001001;
  static const RASCS_CallbackSetByCaller = 0x00001002;
  static const RASCS_PasswordExpired = 0x00001003;
  static const RASCS_InvokeEapUI = 0x00001004;
  static const RASCS_Connected = 0x00002000;
  static const RASCS_Disconnected = 0x00002001;
}

/// {@category Enum}
class tagRASCONNSUBSTATE {
  static const RASCSS_None = 0x00000000;
  static const RASCSS_Dormant = 0x00000001;
  static const RASCSS_Reconnecting = 0x00000002;
  static const RASCSS_Reconnected = 0x00002000;
}

/// {@category Enum}
class tagRASPROJECTION {
  static const RASP_Amb = 0x00010000;
  static const RASP_PppNbf = 0x0000803f;
  static const RASP_PppIpx = 0x0000802b;
  static const RASP_PppIp = 0x00008021;
  static const RASP_PppCcp = 0x000080fd;
  static const RASP_PppLcp = 0x0000c021;
  static const RASP_PppIpv6 = 0x00008057;
}

/// {@category Enum}
class RASPROJECTION_INFO_TYPE {
  static const PROJECTION_INFO_TYPE_PPP = 0x00000001;
  static const PROJECTION_INFO_TYPE_IKEv2 = 0x00000002;
}

/// {@category Enum}
class IKEV2_ID_PAYLOAD_TYPE {
  static const IKEV2_ID_PAYLOAD_TYPE_INVALID = 0x00000000;
  static const IKEV2_ID_PAYLOAD_TYPE_IPV4_ADDR = 0x00000001;
  static const IKEV2_ID_PAYLOAD_TYPE_FQDN = 0x00000002;
  static const IKEV2_ID_PAYLOAD_TYPE_RFC822_ADDR = 0x00000003;
  static const IKEV2_ID_PAYLOAD_TYPE_RESERVED1 = 0x00000004;
  static const IKEV2_ID_PAYLOAD_TYPE_ID_IPV6_ADDR = 0x00000005;
  static const IKEV2_ID_PAYLOAD_TYPE_RESERVED2 = 0x00000006;
  static const IKEV2_ID_PAYLOAD_TYPE_RESERVED3 = 0x00000007;
  static const IKEV2_ID_PAYLOAD_TYPE_RESERVED4 = 0x00000008;
  static const IKEV2_ID_PAYLOAD_TYPE_DER_ASN1_DN = 0x00000009;
  static const IKEV2_ID_PAYLOAD_TYPE_DER_ASN1_GN = 0x0000000a;
  static const IKEV2_ID_PAYLOAD_TYPE_KEY_ID = 0x0000000b;
  static const IKEV2_ID_PAYLOAD_TYPE_MAX = 0x0000000c;
}

/// {@category Enum}
class ROUTER_INTERFACE_TYPE {
  static const ROUTER_IF_TYPE_CLIENT = 0x00000000;
  static const ROUTER_IF_TYPE_HOME_ROUTER = 0x00000001;
  static const ROUTER_IF_TYPE_FULL_ROUTER = 0x00000002;
  static const ROUTER_IF_TYPE_DEDICATED = 0x00000003;
  static const ROUTER_IF_TYPE_INTERNAL = 0x00000004;
  static const ROUTER_IF_TYPE_LOOPBACK = 0x00000005;
  static const ROUTER_IF_TYPE_TUNNEL1 = 0x00000006;
  static const ROUTER_IF_TYPE_DIALOUT = 0x00000007;
  static const ROUTER_IF_TYPE_MAX = 0x00000008;
}

/// {@category Enum}
class ROUTER_CONNECTION_STATE {
  static const ROUTER_IF_STATE_UNREACHABLE = 0x00000000;
  static const ROUTER_IF_STATE_DISCONNECTED = 0x00000001;
  static const ROUTER_IF_STATE_CONNECTING = 0x00000002;
  static const ROUTER_IF_STATE_CONNECTED = 0x00000003;
}

/// {@category Enum}
class RAS_PORT_CONDITION {
  static const RAS_PORT_NON_OPERATIONAL = 0x00000000;
  static const RAS_PORT_DISCONNECTED = 0x00000001;
  static const RAS_PORT_CALLING_BACK = 0x00000002;
  static const RAS_PORT_LISTENING = 0x00000003;
  static const RAS_PORT_AUTHENTICATING = 0x00000004;
  static const RAS_PORT_AUTHENTICATED = 0x00000005;
  static const RAS_PORT_INITIALIZING = 0x00000006;
}

/// {@category Enum}
class RAS_HARDWARE_CONDITION {
  static const RAS_HARDWARE_OPERATIONAL = 0x00000000;
  static const RAS_HARDWARE_FAILURE = 0x00000001;
}

/// {@category Enum}
class RAS_QUARANTINE_STATE {
  static const RAS_QUAR_STATE_NORMAL = 0x00000000;
  static const RAS_QUAR_STATE_QUARANTINE = 0x00000001;
  static const RAS_QUAR_STATE_PROBATION = 0x00000002;
  static const RAS_QUAR_STATE_NOT_CAPABLE = 0x00000003;
}

/// {@category Enum}
class MPRAPI_OBJECT_TYPE {
  static const MPRAPI_OBJECT_TYPE_RAS_CONNECTION_OBJECT = 0x00000001;
  static const MPRAPI_OBJECT_TYPE_MPR_SERVER_OBJECT = 0x00000002;
  static const MPRAPI_OBJECT_TYPE_MPR_SERVER_SET_CONFIG_OBJECT = 0x00000003;
  static const MPRAPI_OBJECT_TYPE_AUTH_VALIDATION_OBJECT = 0x00000004;
  static const MPRAPI_OBJECT_TYPE_UPDATE_CONNECTION_OBJECT = 0x00000005;
  static const MPRAPI_OBJECT_TYPE_IF_CUSTOM_CONFIG_OBJECT = 0x00000006;
}

/// {@category Enum}
class MPR_VPN_TS_TYPE {
  static const MPR_VPN_TS_IPv4_ADDR_RANGE = 0x00000007;
  static const MPR_VPN_TS_IPv6_ADDR_RANGE = 0x00000008;
}

/// {@category Enum}
class MGM_ENUM_TYPES {
  static const ANY_SOURCE = 0x00000000;
  static const ALL_SOURCES = 0x00000001;
}

/// {@category Enum}
class RTM_EVENT_TYPE {
  static const RTM_ENTITY_REGISTERED = 0x00000000;
  static const RTM_ENTITY_DEREGISTERED = 0x00000001;
  static const RTM_ROUTE_EXPIRED = 0x00000002;
  static const RTM_CHANGE_NOTIFICATION = 0x00000003;
}

