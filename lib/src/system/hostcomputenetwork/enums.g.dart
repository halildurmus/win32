/// {@category Enum}
class HCN_NOTIFICATIONS {
  static const HcnNotificationInvalid = 0x00000000;
  static const HcnNotificationNetworkPreCreate = 0x00000001;
  static const HcnNotificationNetworkCreate = 0x00000002;
  static const HcnNotificationNetworkPreDelete = 0x00000003;
  static const HcnNotificationNetworkDelete = 0x00000004;
  static const HcnNotificationNamespaceCreate = 0x00000005;
  static const HcnNotificationNamespaceDelete = 0x00000006;
  static const HcnNotificationGuestNetworkServiceCreate = 0x00000007;
  static const HcnNotificationGuestNetworkServiceDelete = 0x00000008;
  static const HcnNotificationNetworkEndpointAttached = 0x00000009;
  static const HcnNotificationNetworkEndpointDetached = 0x00000010;
  static const HcnNotificationGuestNetworkServiceStateChanged = 0x00000011;
  static const HcnNotificationGuestNetworkServiceInterfaceStateChanged =
      0x00000012;
  static const HcnNotificationServiceDisconnect = 0x01000000;
  static const HcnNotificationFlagsReserved = 0xf0000000;
}

/// {@category Enum}
class HCN_PORT_ACCESS {
  static const HCN_PORT_ACCESS_EXCLUSIVE = 0x00000001;
  static const HCN_PORT_ACCESS_SHARED = 0x00000002;
}

/// {@category Enum}
class HCN_PORT_PROTOCOL {
  static const HCN_PORT_PROTOCOL_TCP = 0x00000001;
  static const HCN_PORT_PROTOCOL_UDP = 0x00000002;
  static const HCN_PORT_PROTOCOL_BOTH = 0x00000003;
}
