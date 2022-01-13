/// {@category Enum}
class AUTHENTICATION_REQUIREMENTS {
  static const MITMProtectionNotRequired = 0x00000000;
  static const MITMProtectionRequired = 0x00000001;
  static const MITMProtectionNotRequiredBonding = 0x00000002;
  static const MITMProtectionRequiredBonding = 0x00000003;
  static const MITMProtectionNotRequiredGeneralBonding = 0x00000004;
  static const MITMProtectionRequiredGeneralBonding = 0x00000005;
  static const MITMProtectionNotDefined = 0x000000ff;
}

/// {@category Enum}
class BLUETOOTH_AUTHENTICATION_METHOD {
  static const BLUETOOTH_AUTHENTICATION_METHOD_LEGACY = 0x00000001;
  static const BLUETOOTH_AUTHENTICATION_METHOD_OOB = 0x00000002;
  static const BLUETOOTH_AUTHENTICATION_METHOD_NUMERIC_COMPARISON = 0x00000003;
  static const BLUETOOTH_AUTHENTICATION_METHOD_PASSKEY_NOTIFICATION =
      0x00000004;
  static const BLUETOOTH_AUTHENTICATION_METHOD_PASSKEY = 0x00000005;
}

/// {@category Enum}
class BLUETOOTH_AUTHENTICATION_REQUIREMENTS {
  static const BLUETOOTH_MITM_ProtectionNotRequired = 0x00000000;
  static const BLUETOOTH_MITM_ProtectionRequired = 0x00000001;
  static const BLUETOOTH_MITM_ProtectionNotRequiredBonding = 0x00000002;
  static const BLUETOOTH_MITM_ProtectionRequiredBonding = 0x00000003;
  static const BLUETOOTH_MITM_ProtectionNotRequiredGeneralBonding = 0x00000004;
  static const BLUETOOTH_MITM_ProtectionRequiredGeneralBonding = 0x00000005;
  static const BLUETOOTH_MITM_ProtectionNotDefined = 0x000000ff;
}

/// {@category Enum}
class BLUETOOTH_IO_CAPABILITY {
  static const BLUETOOTH_IO_CAPABILITY_DISPLAYONLY = 0x00000000;
  static const BLUETOOTH_IO_CAPABILITY_DISPLAYYESNO = 0x00000001;
  static const BLUETOOTH_IO_CAPABILITY_KEYBOARDONLY = 0x00000002;
  static const BLUETOOTH_IO_CAPABILITY_NOINPUTNOOUTPUT = 0x00000003;
  static const BLUETOOTH_IO_CAPABILITY_UNDEFINED = 0x000000ff;
}

/// {@category Enum}
class IO_CAPABILITY {
  static const IoCaps_DisplayOnly = 0x00000000;
  static const IoCaps_DisplayYesNo = 0x00000001;
  static const IoCaps_KeyboardOnly = 0x00000002;
  static const IoCaps_NoInputNoOutput = 0x00000003;
  static const IoCaps_Undefined = 0x000000ff;
}

/// {@category Enum}
class NodeContainerType {
  static const NodeContainerTypeSequence = 0x00000000;
  static const NodeContainerTypeAlternative = 0x00000001;
}

/// {@category Enum}
class SDP_SPECIFICTYPE {
  static const SDP_ST_NONE = 0x00000000;
  static const SDP_ST_UINT8 = 0x00000010;
  static const SDP_ST_UINT16 = 0x00000110;
  static const SDP_ST_UINT32 = 0x00000210;
  static const SDP_ST_UINT64 = 0x00000310;
  static const SDP_ST_UINT128 = 0x00000410;
  static const SDP_ST_INT8 = 0x00000020;
  static const SDP_ST_INT16 = 0x00000120;
  static const SDP_ST_INT32 = 0x00000220;
  static const SDP_ST_INT64 = 0x00000320;
  static const SDP_ST_INT128 = 0x00000420;
  static const SDP_ST_UUID16 = 0x00000130;
  static const SDP_ST_UUID32 = 0x00000220;
  static const SDP_ST_UUID128 = 0x00000430;
}

/// {@category Enum}
class SDP_TYPE {
  static const SDP_TYPE_NIL = 0x00000000;
  static const SDP_TYPE_UINT = 0x00000001;
  static const SDP_TYPE_INT = 0x00000002;
  static const SDP_TYPE_UUID = 0x00000003;
  static const SDP_TYPE_STRING = 0x00000004;
  static const SDP_TYPE_BOOLEAN = 0x00000005;
  static const SDP_TYPE_SEQUENCE = 0x00000006;
  static const SDP_TYPE_ALTERNATIVE = 0x00000007;
  static const SDP_TYPE_URL = 0x00000008;
  static const SDP_TYPE_CONTAINER = 0x00000020;
}
