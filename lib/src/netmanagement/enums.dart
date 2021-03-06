/// {@category Enum}
class NET_VALIDATE_PASSWORD_TYPE {
  static const NetValidateAuthentication = 0x00000001;
  static const NetValidatePasswordChange = 0x00000002;
  static const NetValidatePasswordReset = 0x00000003;
}

/// {@category Enum}
class NETSETUP_NAME_TYPE {
  static const NetSetupUnknown = 0x00000000;
  static const NetSetupMachine = 0x00000001;
  static const NetSetupWorkgroup = 0x00000002;
  static const NetSetupDomain = 0x00000003;
  static const NetSetupNonExistentDomain = 0x00000004;
  static const NetSetupDnsMachine = 0x00000005;
}

/// {@category Enum}
class DSREG_JOIN_TYPE {
  static const DSREG_UNKNOWN_JOIN = 0x00000000;
  static const DSREG_DEVICE_JOIN = 0x00000001;
  static const DSREG_WORKPLACE_JOIN = 0x00000002;
}

/// {@category Enum}
class NET_COMPUTER_NAME_TYPE {
  static const NetPrimaryComputerName = 0x00000000;
  static const NetAlternateComputerNames = 0x00000001;
  static const NetAllComputerNames = 0x00000002;
  static const NetComputerNameTypeMax = 0x00000003;
}

/// {@category Enum}
class NETSETUP_JOIN_STATUS {
  static const NetSetupUnknownStatus = 0x00000000;
  static const NetSetupUnjoined = 0x00000001;
  static const NetSetupWorkgroupName = 0x00000002;
  static const NetSetupDomainName = 0x00000003;
}

/// {@category Enum}
class TRANSPORT_TYPE {
  static const UseTransportType_None = 0x00000000;
  static const UseTransportType_Wsk = 0x00000001;
  static const UseTransportType_Quic = 0x00000002;
}
