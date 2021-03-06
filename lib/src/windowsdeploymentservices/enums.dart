/// {@category Enum}
class WDS_CLI_IMAGE_TYPE {
  static const WDS_CLI_IMAGE_TYPE_UNKNOWN = 0x00000000;
  static const WDS_CLI_IMAGE_TYPE_WIM = 0x00000001;
  static const WDS_CLI_IMAGE_TYPE_VHD = 0x00000002;
  static const WDS_CLI_IMAGE_TYPE_VHDX = 0x00000003;
}

/// {@category Enum}
class WDS_CLI_FIRMWARE_TYPE {
  static const WDS_CLI_FIRMWARE_UNKNOWN = 0x00000000;
  static const WDS_CLI_FIRMWARE_BIOS = 0x00000001;
  static const WDS_CLI_FIRMWARE_EFI = 0x00000002;
}

/// {@category Enum}
class WDS_CLI_IMAGE_PARAM_TYPE {
  static const WDS_CLI_IMAGE_PARAM_UNKNOWN = 0x00000000;
  static const WDS_CLI_IMAGE_PARAM_SPARSE_FILE = 0x00000001;
  static const WDS_CLI_IMAGE_PARAM_SUPPORTED_FIRMWARES = 0x00000002;
}

/// {@category Enum}
class TRANSPORTPROVIDER_CALLBACK_ID {
  static const WDS_TRANSPORTPROVIDER_CREATE_INSTANCE = 0x00000000;
  static const WDS_TRANSPORTPROVIDER_COMPARE_CONTENT = 0x00000001;
  static const WDS_TRANSPORTPROVIDER_OPEN_CONTENT = 0x00000002;
  static const WDS_TRANSPORTPROVIDER_USER_ACCESS_CHECK = 0x00000003;
  static const WDS_TRANSPORTPROVIDER_GET_CONTENT_SIZE = 0x00000004;
  static const WDS_TRANSPORTPROVIDER_READ_CONTENT = 0x00000005;
  static const WDS_TRANSPORTPROVIDER_CLOSE_CONTENT = 0x00000006;
  static const WDS_TRANSPORTPROVIDER_CLOSE_INSTANCE = 0x00000007;
  static const WDS_TRANSPORTPROVIDER_SHUTDOWN = 0x00000008;
  static const WDS_TRANSPORTPROVIDER_DUMP_STATE = 0x00000009;
  static const WDS_TRANSPORTPROVIDER_REFRESH_SETTINGS = 0x0000000a;
  static const WDS_TRANSPORTPROVIDER_GET_CONTENT_METADATA = 0x0000000b;
  static const WDS_TRANSPORTPROVIDER_MAX_CALLBACKS = 0x0000000c;
}

/// {@category Enum}
class TRANSPORTCLIENT_CALLBACK_ID {
  static const WDS_TRANSPORTCLIENT_SESSION_START = 0x00000000;
  static const WDS_TRANSPORTCLIENT_RECEIVE_CONTENTS = 0x00000001;
  static const WDS_TRANSPORTCLIENT_SESSION_COMPLETE = 0x00000002;
  static const WDS_TRANSPORTCLIENT_RECEIVE_METADATA = 0x00000003;
  static const WDS_TRANSPORTCLIENT_SESSION_STARTEX = 0x00000004;
  static const WDS_TRANSPORTCLIENT_SESSION_NEGOTIATE = 0x00000005;
  static const WDS_TRANSPORTCLIENT_MAX_CALLBACKS = 0x00000006;
}

/// {@category Enum}
class WDSTRANSPORT_FEATURE_FLAGS {
  static const WdsTptFeatureAdminPack = 0x00000001;
  static const WdsTptFeatureTransportServer = 0x00000002;
  static const WdsTptFeatureDeploymentServer = 0x00000004;
}

/// {@category Enum}
class WDSTRANSPORT_PROTOCOL_FLAGS {
  static const WdsTptProtocolUnicast = 0x00000001;
  static const WdsTptProtocolMulticast = 0x00000002;
}

/// {@category Enum}
class WDSTRANSPORT_NAMESPACE_TYPE {
  static const WdsTptNamespaceTypeUnknown = 0x00000000;
  static const WdsTptNamespaceTypeAutoCast = 0x00000001;
  static const WdsTptNamespaceTypeScheduledCastManualStart = 0x00000002;
  static const WdsTptNamespaceTypeScheduledCastAutoStart = 0x00000003;
}

/// {@category Enum}
class WDSTRANSPORT_DISCONNECT_TYPE {
  static const WdsTptDisconnectUnknown = 0x00000000;
  static const WdsTptDisconnectFallback = 0x00000001;
  static const WdsTptDisconnectAbort = 0x00000002;
}

/// {@category Enum}
class WDSTRANSPORT_SERVICE_NOTIFICATION {
  static const WdsTptServiceNotifyUnknown = 0x00000000;
  static const WdsTptServiceNotifyReadSettings = 0x00000001;
}

/// {@category Enum}
class WDSTRANSPORT_IP_ADDRESS_TYPE {
  static const WdsTptIpAddressUnknown = 0x00000000;
  static const WdsTptIpAddressIpv4 = 0x00000001;
  static const WdsTptIpAddressIpv6 = 0x00000002;
}

/// {@category Enum}
class WDSTRANSPORT_IP_ADDRESS_SOURCE_TYPE {
  static const WdsTptIpAddressSourceUnknown = 0x00000000;
  static const WdsTptIpAddressSourceDhcp = 0x00000001;
  static const WdsTptIpAddressSourceRange = 0x00000002;
}

/// {@category Enum}
class WDSTRANSPORT_NETWORK_PROFILE_TYPE {
  static const WdsTptNetworkProfileUnknown = 0x00000000;
  static const WdsTptNetworkProfileCustom = 0x00000001;
  static const WdsTptNetworkProfile10Mbps = 0x00000002;
  static const WdsTptNetworkProfile100Mbps = 0x00000003;
  static const WdsTptNetworkProfile1Gbps = 0x00000004;
}

/// {@category Enum}
class WDSTRANSPORT_DIAGNOSTICS_COMPONENT_FLAGS {
  static const WdsTptDiagnosticsComponentPxe = 0x00000001;
  static const WdsTptDiagnosticsComponentTftp = 0x00000002;
  static const WdsTptDiagnosticsComponentImageServer = 0x00000004;
  static const WdsTptDiagnosticsComponentMulticast = 0x00000008;
}

/// {@category Enum}
class WDSTRANSPORT_SLOW_CLIENT_HANDLING_TYPE {
  static const WdsTptSlowClientHandlingUnknown = 0x00000000;
  static const WdsTptSlowClientHandlingNone = 0x00000001;
  static const WdsTptSlowClientHandlingAutoDisconnect = 0x00000002;
  static const WdsTptSlowClientHandlingMultistream = 0x00000003;
}

/// {@category Enum}
class WDSTRANSPORT_UDP_PORT_POLICY {
  static const WdsTptUdpPortPolicyDynamic = 0x00000000;
  static const WdsTptUdpPortPolicyFixed = 0x00000001;
}

/// {@category Enum}
class WDSTRANSPORT_TFTP_CAPABILITY {
  static const WdsTptTftpCapMaximumBlockSize = 0x00000001;
  static const WdsTptTftpCapVariableWindow = 0x00000002;
}
