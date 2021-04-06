/// {@category Enum}
class DeviceDiscoveryMechanism {
  static const MulticastDiscovery = 0x00000000;
  static const DirectedDiscovery = 0x00000001;
  static const SecureDirectedDiscovery = 0x00000002;
}

/// {@category Enum}
class PropertyConstraint {
  static const QC_EQUALS = 0x00000000;
  static const QC_NOTEQUAL = 0x00000001;
  static const QC_LESSTHAN = 0x00000002;
  static const QC_LESSTHANOREQUAL = 0x00000003;
  static const QC_GREATERTHAN = 0x00000004;
  static const QC_GREATERTHANOREQUAL = 0x00000005;
  static const QC_STARTSWITH = 0x00000006;
  static const QC_EXISTS = 0x00000007;
  static const QC_DOESNOTEXIST = 0x00000008;
  static const QC_CONTAINS = 0x00000009;
}

/// {@category Enum}
class QueryCategoryType {
  static const QCT_PROVIDER = 0x00000000;
  static const QCT_LAYERED = 0x00000001;
}

/// {@category Enum}
class QueryUpdateAction {
  static const QUA_ADD = 0x00000000;
  static const QUA_REMOVE = 0x00000001;
  static const QUA_CHANGE = 0x00000002;
}

/// {@category Enum}
class SystemVisibilityFlags {
  static const SVF_SYSTEM = 0x00000000;
  static const SVF_USER = 0x00000001;
}

/// {@category Enum}
class WSDEventType {
  static const WSDET_NONE = 0x00000000;
  static const WSDET_INCOMING_MESSAGE = 0x00000001;
  static const WSDET_INCOMING_FAULT = 0x00000002;
  static const WSDET_TRANSMISSION_FAILURE = 0x00000003;
  static const WSDET_RESPONSE_TIMEOUT = 0x00000004;
}

/// {@category Enum}
class WSDUdpMessageType {
  static const ONE_WAY = 0x00000000;
  static const TWO_WAY = 0x00000001;
}

/// {@category Enum}
class WSDXML_OP {
  static const OpNone = 0x00000000;
  static const OpEndOfTable = 0x00000001;
  static const OpBeginElement_ = 0x00000002;
  static const OpBeginAnyElement = 0x00000003;
  static const OpEndElement = 0x00000004;
  static const OpElement_ = 0x00000005;
  static const OpAnyElement = 0x00000006;
  static const OpAnyElements = 0x00000007;
  static const OpAnyText = 0x00000008;
  static const OpAttribute_ = 0x00000009;
  static const OpBeginChoice = 0x0000000a;
  static const OpEndChoice = 0x0000000b;
  static const OpBeginSequence = 0x0000000c;
  static const OpEndSequence = 0x0000000d;
  static const OpBeginAll = 0x0000000e;
  static const OpEndAll = 0x0000000f;
  static const OpAnything = 0x00000010;
  static const OpAnyNumber = 0x00000011;
  static const OpOneOrMore = 0x00000012;
  static const OpOptional = 0x00000013;
  static const OpFormatBool_ = 0x00000014;
  static const OpFormatInt8_ = 0x00000015;
  static const OpFormatInt16_ = 0x00000016;
  static const OpFormatInt32_ = 0x00000017;
  static const OpFormatInt64_ = 0x00000018;
  static const OpFormatUInt8_ = 0x00000019;
  static const OpFormatUInt16_ = 0x0000001a;
  static const OpFormatUInt32_ = 0x0000001b;
  static const OpFormatUInt64_ = 0x0000001c;
  static const OpFormatUnicodeString_ = 0x0000001d;
  static const OpFormatDom_ = 0x0000001e;
  static const OpFormatStruct_ = 0x0000001f;
  static const OpFormatUri_ = 0x00000020;
  static const OpFormatUuidUri_ = 0x00000021;
  static const OpFormatName_ = 0x00000022;
  static const OpFormatListInsertTail_ = 0x00000023;
  static const OpFormatType_ = 0x00000024;
  static const OpFormatDynamicType_ = 0x00000025;
  static const OpFormatLookupType_ = 0x00000026;
  static const OpFormatDuration_ = 0x00000027;
  static const OpFormatDateTime_ = 0x00000028;
  static const OpFormatFloat_ = 0x00000029;
  static const OpFormatDouble_ = 0x0000002a;
  static const OpProcess_ = 0x0000002b;
  static const OpQualifiedAttribute_ = 0x0000002c;
  static const OpFormatXMLDeclaration_ = 0x0000002d;
  static const OpFormatMax = 0x0000002e;
}

/// {@category Enum}
class WSD_CONFIG_PARAM_TYPE {
  static const WSD_CONFIG_MAX_INBOUND_MESSAGE_SIZE = 0x00000001;
  static const WSD_CONFIG_MAX_OUTBOUND_MESSAGE_SIZE = 0x00000002;
  static const WSD_SECURITY_SSL_CERT_FOR_CLIENT_AUTH = 0x00000003;
  static const WSD_SECURITY_SSL_SERVER_CERT_VALIDATION = 0x00000004;
  static const WSD_SECURITY_SSL_CLIENT_CERT_VALIDATION = 0x00000005;
  static const WSD_SECURITY_SSL_NEGOTIATE_CLIENT_CERT = 0x00000006;
  static const WSD_SECURITY_COMPACTSIG_SIGNING_CERT = 0x00000007;
  static const WSD_SECURITY_COMPACTSIG_VALIDATION = 0x00000008;
  static const WSD_CONFIG_HOSTING_ADDRESSES = 0x00000009;
  static const WSD_CONFIG_DEVICE_ADDRESSES = 0x0000000a;
  static const WSD_SECURITY_REQUIRE_HTTP_CLIENT_AUTH = 0x0000000b;
  static const WSD_SECURITY_REQUIRE_CLIENT_CERT_OR_HTTP_CLIENT_AUTH = 0x0000000c;
  static const WSD_SECURITY_USE_HTTP_CLIENT_AUTH = 0x0000000d;
}

/// {@category Enum}
class WSD_PROTOCOL_TYPE {
  static const WSD_PT_NONE = 0x00000000;
  static const WSD_PT_UDP = 0x00000001;
  static const WSD_PT_HTTP = 0x00000002;
  static const WSD_PT_HTTPS = 0x00000004;
  static const WSD_PT_ALL = 0x000000ff;
}

