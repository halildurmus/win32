/// {@category Enum}
class EAPHOST_AUTH_STATUS {
  static const EapHostInvalidSession = 0x00000000;
  static const EapHostAuthNotStarted = 0x00000001;
  static const EapHostAuthIdentityExchange = 0x00000002;
  static const EapHostAuthNegotiatingType = 0x00000003;
  static const EapHostAuthInProgress = 0x00000004;
  static const EapHostAuthSucceeded = 0x00000005;
  static const EapHostAuthFailed = 0x00000006;
}

/// {@category Enum}
class EAP_ATTRIBUTE_TYPE {
  static const eatMinimum = 0x00000000;
  static const eatUserName = 0x00000001;
  static const eatUserPassword = 0x00000002;
  static const eatMD5CHAPPassword = 0x00000003;
  static const eatNASIPAddress = 0x00000004;
  static const eatNASPort = 0x00000005;
  static const eatServiceType = 0x00000006;
  static const eatFramedProtocol = 0x00000007;
  static const eatFramedIPAddress = 0x00000008;
  static const eatFramedIPNetmask = 0x00000009;
  static const eatFramedRouting = 0x0000000a;
  static const eatFilterId = 0x0000000b;
  static const eatFramedMTU = 0x0000000c;
  static const eatFramedCompression = 0x0000000d;
  static const eatLoginIPHost = 0x0000000e;
  static const eatLoginService = 0x0000000f;
  static const eatLoginTCPPort = 0x00000010;
  static const eatUnassigned17 = 0x00000011;
  static const eatReplyMessage = 0x00000012;
  static const eatCallbackNumber = 0x00000013;
  static const eatCallbackId = 0x00000014;
  static const eatUnassigned21 = 0x00000015;
  static const eatFramedRoute = 0x00000016;
  static const eatFramedIPXNetwork = 0x00000017;
  static const eatState = 0x00000018;
  static const eatClass = 0x00000019;
  static const eatVendorSpecific = 0x0000001a;
  static const eatSessionTimeout = 0x0000001b;
  static const eatIdleTimeout = 0x0000001c;
  static const eatTerminationAction = 0x0000001d;
  static const eatCalledStationId = 0x0000001e;
  static const eatCallingStationId = 0x0000001f;
  static const eatNASIdentifier = 0x00000020;
  static const eatProxyState = 0x00000021;
  static const eatLoginLATService = 0x00000022;
  static const eatLoginLATNode = 0x00000023;
  static const eatLoginLATGroup = 0x00000024;
  static const eatFramedAppleTalkLink = 0x00000025;
  static const eatFramedAppleTalkNetwork = 0x00000026;
  static const eatFramedAppleTalkZone = 0x00000027;
  static const eatAcctStatusType = 0x00000028;
  static const eatAcctDelayTime = 0x00000029;
  static const eatAcctInputOctets = 0x0000002a;
  static const eatAcctOutputOctets = 0x0000002b;
  static const eatAcctSessionId = 0x0000002c;
  static const eatAcctAuthentic = 0x0000002d;
  static const eatAcctSessionTime = 0x0000002e;
  static const eatAcctInputPackets = 0x0000002f;
  static const eatAcctOutputPackets = 0x00000030;
  static const eatAcctTerminateCause = 0x00000031;
  static const eatAcctMultiSessionId = 0x00000032;
  static const eatAcctLinkCount = 0x00000033;
  static const eatAcctEventTimeStamp = 0x00000037;
  static const eatMD5CHAPChallenge = 0x0000003c;
  static const eatNASPortType = 0x0000003d;
  static const eatPortLimit = 0x0000003e;
  static const eatLoginLATPort = 0x0000003f;
  static const eatTunnelType = 0x00000040;
  static const eatTunnelMediumType = 0x00000041;
  static const eatTunnelClientEndpoint = 0x00000042;
  static const eatTunnelServerEndpoint = 0x00000043;
  static const eatARAPPassword = 0x00000046;
  static const eatARAPFeatures = 0x00000047;
  static const eatARAPZoneAccess = 0x00000048;
  static const eatARAPSecurity = 0x00000049;
  static const eatARAPSecurityData = 0x0000004a;
  static const eatPasswordRetry = 0x0000004b;
  static const eatPrompt = 0x0000004c;
  static const eatConnectInfo = 0x0000004d;
  static const eatConfigurationToken = 0x0000004e;
  static const eatEAPMessage = 0x0000004f;
  static const eatSignature = 0x00000050;
  static const eatARAPChallengeResponse = 0x00000054;
  static const eatAcctInterimInterval = 0x00000055;
  static const eatNASIPv6Address = 0x0000005f;
  static const eatFramedInterfaceId = 0x00000060;
  static const eatFramedIPv6Prefix = 0x00000061;
  static const eatLoginIPv6Host = 0x00000062;
  static const eatFramedIPv6Route = 0x00000063;
  static const eatFramedIPv6Pool = 0x00000064;
  static const eatARAPGuestLogon = 0x00001fa0;
  static const eatCertificateOID = 0x00001fa1;
  static const eatEAPConfiguration = 0x00001fa2;
  static const eatPEAPEmbeddedEAPTypeId = 0x00001fa3;
  static const eatPEAPFastRoamedSession = 0x00001fa4;
  static const eatFastRoamedSession = 0x00001fa4;
  static const eatEAPTLV = 0x00001fa6;
  static const eatCredentialsChanged = 0x00001fa7;
  static const eatInnerEapMethodType = 0x00001fa8;
  static const eatClearTextPassword = 0x00001fab;
  static const eatQuarantineSoH = 0x00001fd6;
  static const eatCertificateThumbprint = 0x0000203a;
  static const eatPeerId = 0x00002328;
  static const eatServerId = 0x00002329;
  static const eatMethodId = 0x0000232a;
  static const eatEMSK = 0x0000232b;
  static const eatSessionId = 0x0000232c;
  static const eatReserved = 0xffffffff;
}

/// {@category Enum}
class EAP_AUTHENTICATOR_SEND_TIMEOUT {
  static const EAP_AUTHENTICATOR_SEND_TIMEOUT_NONE = 0x00000000;
  static const EAP_AUTHENTICATOR_SEND_TIMEOUT_BASIC = 0x00000001;
  static const EAP_AUTHENTICATOR_SEND_TIMEOUT_INTERACTIVE = 0x00000002;
}

/// {@category Enum}
class EAP_CONFIG_INPUT_FIELD_TYPE {
  static const EapConfigInputUsername = 0x00000000;
  static const EapConfigInputPassword = 0x00000001;
  static const EapConfigInputNetworkUsername = 0x00000002;
  static const EapConfigInputNetworkPassword = 0x00000003;
  static const EapConfigInputPin = 0x00000004;
  static const EapConfigInputPSK = 0x00000005;
  static const EapConfigInputEdit = 0x00000006;
  static const EapConfigSmartCardUsername = 0x00000007;
  static const EapConfigSmartCardError = 0x00000008;
}

/// {@category Enum}
class EAP_INTERACTIVE_UI_DATA_TYPE {
  static const EapCredReq = 0x00000000;
  static const EapCredResp = 0x00000001;
  static const EapCredExpiryReq = 0x00000002;
  static const EapCredExpiryResp = 0x00000003;
  static const EapCredLogonReq = 0x00000004;
  static const EapCredLogonResp = 0x00000005;
}

/// {@category Enum}
class EAP_METHOD_AUTHENTICATOR_RESPONSE_ACTION {
  static const EAP_METHOD_AUTHENTICATOR_RESPONSE_DISCARD = 0x00000000;
  static const EAP_METHOD_AUTHENTICATOR_RESPONSE_SEND = 0x00000001;
  static const EAP_METHOD_AUTHENTICATOR_RESPONSE_RESULT = 0x00000002;
  static const EAP_METHOD_AUTHENTICATOR_RESPONSE_RESPOND = 0x00000003;
  static const EAP_METHOD_AUTHENTICATOR_RESPONSE_AUTHENTICATE = 0x00000004;
  static const EAP_METHOD_AUTHENTICATOR_RESPONSE_HANDLE_IDENTITY = 0x00000005;
}

/// {@category Enum}
class EAP_METHOD_PROPERTY_TYPE {
  static const emptPropCipherSuiteNegotiation = 0x00000000;
  static const emptPropMutualAuth = 0x00000001;
  static const emptPropIntegrity = 0x00000002;
  static const emptPropReplayProtection = 0x00000003;
  static const emptPropConfidentiality = 0x00000004;
  static const emptPropKeyDerivation = 0x00000005;
  static const emptPropKeyStrength64 = 0x00000006;
  static const emptPropKeyStrength128 = 0x00000007;
  static const emptPropKeyStrength256 = 0x00000008;
  static const emptPropKeyStrength512 = 0x00000009;
  static const emptPropKeyStrength1024 = 0x0000000a;
  static const emptPropDictionaryAttackResistance = 0x0000000b;
  static const emptPropFastReconnect = 0x0000000c;
  static const emptPropCryptoBinding = 0x0000000d;
  static const emptPropSessionIndependence = 0x0000000e;
  static const emptPropFragmentation = 0x0000000f;
  static const emptPropChannelBinding = 0x00000010;
  static const emptPropNap = 0x00000011;
  static const emptPropStandalone = 0x00000012;
  static const emptPropMppeEncryption = 0x00000013;
  static const emptPropTunnelMethod = 0x00000014;
  static const emptPropSupportsConfig = 0x00000015;
  static const emptPropCertifiedMethod = 0x00000016;
  static const emptPropHiddenMethod = 0x00000017;
  static const emptPropMachineAuth = 0x00000018;
  static const emptPropUserAuth = 0x00000019;
  static const emptPropIdentityPrivacy = 0x0000001a;
  static const emptPropMethodChaining = 0x0000001b;
  static const emptPropSharedStateEquivalence = 0x0000001c;
  static const emptLegacyMethodPropertyFlag = 0x0000001f;
  static const emptPropVendorSpecific = 0x000000ff;
}

/// {@category Enum}
class EAP_METHOD_PROPERTY_VALUE_TYPE {
  static const empvtBool = 0x00000000;
  static const empvtDword = 0x00000001;
  static const empvtString = 0x00000002;
}

/// {@category Enum}
class EapCode {
  static const EapCodeMinimum = 0x00000001;
  static const EapCodeRequest = 0x00000001;
  static const EapCodeResponse = 0x00000002;
  static const EapCodeSuccess = 0x00000003;
  static const EapCodeFailure = 0x00000004;
  static const EapCodeMaximum = 0x00000004;
}

/// {@category Enum}
class EapCredentialType {
  static const EAP_EMPTY_CREDENTIAL = 0x00000000;
  static const EAP_USERNAME_PASSWORD_CREDENTIAL = 0x00000001;
  static const EAP_WINLOGON_CREDENTIAL = 0x00000002;
  static const EAP_CERTIFICATE_CREDENTIAL = 0x00000003;
  static const EAP_SIM_CREDENTIAL = 0x00000004;
}

/// {@category Enum}
class EapHostPeerAuthParams {
  static const EapHostPeerAuthStatus = 0x00000001;
  static const EapHostPeerIdentity = 0x00000002;
  static const EapHostPeerIdentityExtendedInfo = 0x00000003;
  static const EapHostNapInfo = 0x00000004;
}

/// {@category Enum}
class EapHostPeerMethodResultReason {
  static const EapHostPeerMethodResultAltSuccessReceived = 0x00000001;
  static const EapHostPeerMethodResultTimeout = 0x00000002;
  static const EapHostPeerMethodResultFromMethod = 0x00000003;
}

/// {@category Enum}
class EapHostPeerResponseAction {
  static const EapHostPeerResponseDiscard = 0x00000000;
  static const EapHostPeerResponseSend = 0x00000001;
  static const EapHostPeerResponseResult = 0x00000002;
  static const EapHostPeerResponseInvokeUi = 0x00000003;
  static const EapHostPeerResponseRespond = 0x00000004;
  static const EapHostPeerResponseStartAuthentication = 0x00000005;
  static const EapHostPeerResponseNone = 0x00000006;
}

/// {@category Enum}
class EapPeerMethodResponseAction {
  static const EapPeerMethodResponseActionDiscard = 0x00000000;
  static const EapPeerMethodResponseActionSend = 0x00000001;
  static const EapPeerMethodResponseActionResult = 0x00000002;
  static const EapPeerMethodResponseActionInvokeUI = 0x00000003;
  static const EapPeerMethodResponseActionRespond = 0x00000004;
  static const EapPeerMethodResponseActionNone = 0x00000005;
}

/// {@category Enum}
class EapPeerMethodResultReason {
  static const EapPeerMethodResultUnknown = 0x00000001;
  static const EapPeerMethodResultSuccess = 0x00000002;
  static const EapPeerMethodResultFailure = 0x00000003;
}

/// {@category Enum}
class ISOLATION_STATE {
  static const ISOLATION_STATE_UNKNOWN = 0x00000000;
  static const ISOLATION_STATE_NOT_RESTRICTED = 0x00000001;
  static const ISOLATION_STATE_IN_PROBATION = 0x00000002;
  static const ISOLATION_STATE_RESTRICTED_ACCESS = 0x00000003;
}

/// {@category Enum}
class PPP_EAP_ACTION {
  static const EAPACTION_NoAction = 0x00000000;
  static const EAPACTION_Authenticate = 0x00000001;
  static const EAPACTION_Done = 0x00000002;
  static const EAPACTION_SendAndDone = 0x00000003;
  static const EAPACTION_Send = 0x00000004;
  static const EAPACTION_SendWithTimeout = 0x00000005;
  static const EAPACTION_SendWithTimeoutInteractive = 0x00000006;
  static const EAPACTION_IndicateTLV = 0x00000007;
  static const EAPACTION_IndicateIdentity = 0x00000008;
}

/// {@category Enum}
class RAS_AUTH_ATTRIBUTE_TYPE {
  static const raatMinimum = 0x00000000;
  static const raatUserName = 0x00000001;
  static const raatUserPassword = 0x00000002;
  static const raatMD5CHAPPassword = 0x00000003;
  static const raatNASIPAddress = 0x00000004;
  static const raatNASPort = 0x00000005;
  static const raatServiceType = 0x00000006;
  static const raatFramedProtocol = 0x00000007;
  static const raatFramedIPAddress = 0x00000008;
  static const raatFramedIPNetmask = 0x00000009;
  static const raatFramedRouting = 0x0000000a;
  static const raatFilterId = 0x0000000b;
  static const raatFramedMTU = 0x0000000c;
  static const raatFramedCompression = 0x0000000d;
  static const raatLoginIPHost = 0x0000000e;
  static const raatLoginService = 0x0000000f;
  static const raatLoginTCPPort = 0x00000010;
  static const raatUnassigned17 = 0x00000011;
  static const raatReplyMessage = 0x00000012;
  static const raatCallbackNumber = 0x00000013;
  static const raatCallbackId = 0x00000014;
  static const raatUnassigned21 = 0x00000015;
  static const raatFramedRoute = 0x00000016;
  static const raatFramedIPXNetwork = 0x00000017;
  static const raatState = 0x00000018;
  static const raatClass = 0x00000019;
  static const raatVendorSpecific = 0x0000001a;
  static const raatSessionTimeout = 0x0000001b;
  static const raatIdleTimeout = 0x0000001c;
  static const raatTerminationAction = 0x0000001d;
  static const raatCalledStationId = 0x0000001e;
  static const raatCallingStationId = 0x0000001f;
  static const raatNASIdentifier = 0x00000020;
  static const raatProxyState = 0x00000021;
  static const raatLoginLATService = 0x00000022;
  static const raatLoginLATNode = 0x00000023;
  static const raatLoginLATGroup = 0x00000024;
  static const raatFramedAppleTalkLink = 0x00000025;
  static const raatFramedAppleTalkNetwork = 0x00000026;
  static const raatFramedAppleTalkZone = 0x00000027;
  static const raatAcctStatusType = 0x00000028;
  static const raatAcctDelayTime = 0x00000029;
  static const raatAcctInputOctets = 0x0000002a;
  static const raatAcctOutputOctets = 0x0000002b;
  static const raatAcctSessionId = 0x0000002c;
  static const raatAcctAuthentic = 0x0000002d;
  static const raatAcctSessionTime = 0x0000002e;
  static const raatAcctInputPackets = 0x0000002f;
  static const raatAcctOutputPackets = 0x00000030;
  static const raatAcctTerminateCause = 0x00000031;
  static const raatAcctMultiSessionId = 0x00000032;
  static const raatAcctLinkCount = 0x00000033;
  static const raatAcctEventTimeStamp = 0x00000037;
  static const raatMD5CHAPChallenge = 0x0000003c;
  static const raatNASPortType = 0x0000003d;
  static const raatPortLimit = 0x0000003e;
  static const raatLoginLATPort = 0x0000003f;
  static const raatTunnelType = 0x00000040;
  static const raatTunnelMediumType = 0x00000041;
  static const raatTunnelClientEndpoint = 0x00000042;
  static const raatTunnelServerEndpoint = 0x00000043;
  static const raatARAPPassword = 0x00000046;
  static const raatARAPFeatures = 0x00000047;
  static const raatARAPZoneAccess = 0x00000048;
  static const raatARAPSecurity = 0x00000049;
  static const raatARAPSecurityData = 0x0000004a;
  static const raatPasswordRetry = 0x0000004b;
  static const raatPrompt = 0x0000004c;
  static const raatConnectInfo = 0x0000004d;
  static const raatConfigurationToken = 0x0000004e;
  static const raatEAPMessage = 0x0000004f;
  static const raatSignature = 0x00000050;
  static const raatARAPChallengeResponse = 0x00000054;
  static const raatAcctInterimInterval = 0x00000055;
  static const raatNASIPv6Address = 0x0000005f;
  static const raatFramedInterfaceId = 0x00000060;
  static const raatFramedIPv6Prefix = 0x00000061;
  static const raatLoginIPv6Host = 0x00000062;
  static const raatFramedIPv6Route = 0x00000063;
  static const raatFramedIPv6Pool = 0x00000064;
  static const raatARAPGuestLogon = 0x00001fa0;
  static const raatCertificateOID = 0x00001fa1;
  static const raatEAPConfiguration = 0x00001fa2;
  static const raatPEAPEmbeddedEAPTypeId = 0x00001fa3;
  static const raatInnerEAPTypeId = 0x00001fa3;
  static const raatPEAPFastRoamedSession = 0x00001fa4;
  static const raatFastRoamedSession = 0x00001fa4;
  static const raatEAPTLV = 0x00001fa6;
  static const raatCredentialsChanged = 0x00001fa7;
  static const raatCertificateThumbprint = 0x0000203a;
  static const raatPeerId = 0x00002328;
  static const raatServerId = 0x00002329;
  static const raatMethodId = 0x0000232a;
  static const raatEMSK = 0x0000232b;
  static const raatSessionId = 0x0000232c;
  static const raatReserved = 0xffffffff;
}

