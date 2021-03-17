/// {@category Enum}
class StatusCode {
  static const STATUS_NO_ERROR = 0x00000000;
  static const STATUS_UNSPECIFIED_FAILURE = 0x00000001;
  static const STATUS_NO_BINDING = 0x00000003;
  static const STATUS_NOPREFIX_AVAIL = 0x00000006;
}

/// {@category Enum}
class DHCP_FORCE_FLAG {
  static const DhcpFullForce = 0x00000000;
  static const DhcpNoForce = 0x00000001;
  static const DhcpFailoverForce = 0x00000002;
}

/// {@category Enum}
class DHCP_SUBNET_STATE {
  static const DhcpSubnetEnabled = 0x00000000;
  static const DhcpSubnetDisabled = 0x00000001;
  static const DhcpSubnetEnabledSwitched = 0x00000002;
  static const DhcpSubnetDisabledSwitched = 0x00000003;
  static const DhcpSubnetInvalidState = 0x00000004;
}

/// {@category Enum}
class DHCP_SUBNET_ELEMENT_TYPE {
  static const DhcpIpRanges = 0x00000000;
  static const DhcpSecondaryHosts = 0x00000001;
  static const DhcpReservedIps = 0x00000002;
  static const DhcpExcludedIpRanges = 0x00000003;
  static const DhcpIpUsedClusters = 0x00000004;
  static const DhcpIpRangesDhcpOnly = 0x00000005;
  static const DhcpIpRangesDhcpBootp = 0x00000006;
  static const DhcpIpRangesBootpOnly = 0x00000007;
}

/// {@category Enum}
class DHCP_FILTER_LIST_TYPE {
  static const Deny = 0x00000000;
  static const Allow = 0x00000001;
}

/// {@category Enum}
class DHCP_OPTION_DATA_TYPE {
  static const DhcpByteOption = 0x00000000;
  static const DhcpWordOption = 0x00000001;
  static const DhcpDWordOption = 0x00000002;
  static const DhcpDWordDWordOption = 0x00000003;
  static const DhcpIpAddressOption = 0x00000004;
  static const DhcpStringDataOption = 0x00000005;
  static const DhcpBinaryDataOption = 0x00000006;
  static const DhcpEncapsulatedDataOption = 0x00000007;
  static const DhcpIpv6AddressOption = 0x00000008;
}

/// {@category Enum}
class DHCP_OPTION_TYPE {
  static const DhcpUnaryElementTypeOption = 0x00000000;
  static const DhcpArrayTypeOption = 0x00000001;
}

/// {@category Enum}
class DHCP_OPTION_SCOPE_TYPE {
  static const DhcpDefaultOptions = 0x00000000;
  static const DhcpGlobalOptions = 0x00000001;
  static const DhcpSubnetOptions = 0x00000002;
  static const DhcpReservedOptions = 0x00000003;
  static const DhcpMScopeOptions = 0x00000004;
}

/// {@category Enum}
class DHCP_OPTION_SCOPE_TYPE6 {
  static const DhcpDefaultOptions6 = 0x00000000;
  static const DhcpScopeOptions6 = 0x00000001;
  static const DhcpReservedOptions6 = 0x00000002;
  static const DhcpGlobalOptions6 = 0x00000003;
}

/// {@category Enum}
class QuarantineStatus {
  static const NOQUARANTINE = 0x00000000;
  static const RESTRICTEDACCESS = 0x00000001;
  static const DROPPACKET = 0x00000002;
  static const PROBATION = 0x00000003;
  static const EXEMPT = 0x00000004;
  static const DEFAULTQUARSETTING = 0x00000005;
  static const NOQUARINFO = 0x00000006;
}

/// {@category Enum}
class DHCP_SEARCH_INFO_TYPE {
  static const DhcpClientIpAddress = 0x00000000;
  static const DhcpClientHardwareAddress = 0x00000001;
  static const DhcpClientName = 0x00000002;
}

/// {@category Enum}
class DHCP_PROPERTY_TYPE {
  static const DhcpPropTypeByte = 0x00000000;
  static const DhcpPropTypeWord = 0x00000001;
  static const DhcpPropTypeDword = 0x00000002;
  static const DhcpPropTypeString = 0x00000003;
  static const DhcpPropTypeBinary = 0x00000004;
}

/// {@category Enum}
class DHCP_PROPERTY_ID {
  static const DhcpPropIdPolicyDnsSuffix = 0x00000000;
  static const DhcpPropIdClientAddressStateEx = 0x00000001;
}

/// {@category Enum}
class DHCP_SCAN_FLAG {
  static const DhcpRegistryFix = 0x00000000;
  static const DhcpDatabaseFix = 0x00000001;
}

/// {@category Enum}
class DHCP_SUBNET_ELEMENT_TYPE_V6 {
  static const Dhcpv6IpRanges = 0x00000000;
  static const Dhcpv6ReservedIps = 0x00000001;
  static const Dhcpv6ExcludedIpRanges = 0x00000002;
}

/// {@category Enum}
class DHCP_SEARCH_INFO_TYPE_V6 {
  static const Dhcpv6ClientIpAddress = 0x00000000;
  static const Dhcpv6ClientDUID = 0x00000001;
  static const Dhcpv6ClientName = 0x00000002;
}

/// {@category Enum}
class DHCP_POL_ATTR_TYPE {
  static const DhcpAttrHWAddr = 0x00000000;
  static const DhcpAttrOption = 0x00000001;
  static const DhcpAttrSubOption = 0x00000002;
  static const DhcpAttrFqdn = 0x00000003;
  static const DhcpAttrFqdnSingleLabel = 0x00000004;
}

/// {@category Enum}
class DHCP_POL_COMPARATOR {
  static const DhcpCompEqual = 0x00000000;
  static const DhcpCompNotEqual = 0x00000001;
  static const DhcpCompBeginsWith = 0x00000002;
  static const DhcpCompNotBeginWith = 0x00000003;
  static const DhcpCompEndsWith = 0x00000004;
  static const DhcpCompNotEndWith = 0x00000005;
}

/// {@category Enum}
class DHCP_POL_LOGIC_OPER {
  static const DhcpLogicalOr = 0x00000000;
  static const DhcpLogicalAnd = 0x00000001;
}

/// {@category Enum}
class DHCP_POLICY_FIELDS_TO_UPDATE {
  static const DhcpUpdatePolicyName = 0x00000001;
  static const DhcpUpdatePolicyOrder = 0x00000002;
  static const DhcpUpdatePolicyExpr = 0x00000004;
  static const DhcpUpdatePolicyRanges = 0x00000008;
  static const DhcpUpdatePolicyDescr = 0x00000010;
  static const DhcpUpdatePolicyStatus = 0x00000020;
  static const DhcpUpdatePolicyDnsSuffix = 0x00000040;
}

/// {@category Enum}
class DHCPV6_STATELESS_PARAM_TYPE {
  static const DhcpStatelessPurgeInterval = 0x00000001;
  static const DhcpStatelessStatus = 0x00000002;
}

/// {@category Enum}
class DHCP_FAILOVER_MODE {
  static const LoadBalance = 0x00000000;
  static const HotStandby = 0x00000001;
}

/// {@category Enum}
class DHCP_FAILOVER_SERVER {
  static const PrimaryServer = 0x00000000;
  static const SecondaryServer = 0x00000001;
}

/// {@category Enum}
class FSM_STATE {
  static const NO_STATE = 0x00000000;
  static const INIT = 0x00000001;
  static const STARTUP = 0x00000002;
  static const NORMAL = 0x00000003;
  static const COMMUNICATION_INT = 0x00000004;
  static const PARTNER_DOWN = 0x00000005;
  static const POTENTIAL_CONFLICT = 0x00000006;
  static const CONFLICT_DONE = 0x00000007;
  static const RESOLUTION_INT = 0x00000008;
  static const RECOVER = 0x00000009;
  static const RECOVER_WAIT = 0x0000000a;
  static const RECOVER_DONE = 0x0000000b;
  static const PAUSED = 0x0000000c;
  static const SHUTDOWN = 0x0000000d;
}

