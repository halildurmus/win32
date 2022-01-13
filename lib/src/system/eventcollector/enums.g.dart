/// {@category Enum}
class EC_SUBSCRIPTION_CONFIGURATION_MODE {
  static const EcConfigurationModeNormal = 0x00000000;
  static const EcConfigurationModeCustom = 0x00000001;
  static const EcConfigurationModeMinLatency = 0x00000002;
  static const EcConfigurationModeMinBandwidth = 0x00000003;
}

/// {@category Enum}
class EC_SUBSCRIPTION_CONTENT_FORMAT {
  static const EcContentFormatEvents = 0x00000001;
  static const EcContentFormatRenderedText = 0x00000002;
}

/// {@category Enum}
class EC_SUBSCRIPTION_CREDENTIALS_TYPE {
  static const EcSubscriptionCredDefault = 0x00000000;
  static const EcSubscriptionCredNegotiate = 0x00000001;
  static const EcSubscriptionCredDigest = 0x00000002;
  static const EcSubscriptionCredBasic = 0x00000003;
  static const EcSubscriptionCredLocalMachine = 0x00000004;
}

/// {@category Enum}
class EC_SUBSCRIPTION_DELIVERY_MODE {
  static const EcDeliveryModePull = 0x00000001;
  static const EcDeliveryModePush = 0x00000002;
}

/// {@category Enum}
class EC_SUBSCRIPTION_PROPERTY_ID {
  static const EcSubscriptionEnabled = 0x00000000;
  static const EcSubscriptionEventSources = 0x00000001;
  static const EcSubscriptionEventSourceAddress = 0x00000002;
  static const EcSubscriptionEventSourceEnabled = 0x00000003;
  static const EcSubscriptionEventSourceUserName = 0x00000004;
  static const EcSubscriptionEventSourcePassword = 0x00000005;
  static const EcSubscriptionDescription = 0x00000006;
  static const EcSubscriptionURI = 0x00000007;
  static const EcSubscriptionConfigurationMode = 0x00000008;
  static const EcSubscriptionExpires = 0x00000009;
  static const EcSubscriptionQuery = 0x0000000a;
  static const EcSubscriptionTransportName = 0x0000000b;
  static const EcSubscriptionTransportPort = 0x0000000c;
  static const EcSubscriptionDeliveryMode = 0x0000000d;
  static const EcSubscriptionDeliveryMaxItems = 0x0000000e;
  static const EcSubscriptionDeliveryMaxLatencyTime = 0x0000000f;
  static const EcSubscriptionHeartbeatInterval = 0x00000010;
  static const EcSubscriptionLocale = 0x00000011;
  static const EcSubscriptionContentFormat = 0x00000012;
  static const EcSubscriptionLogFile = 0x00000013;
  static const EcSubscriptionPublisherName = 0x00000014;
  static const EcSubscriptionCredentialsType = 0x00000015;
  static const EcSubscriptionCommonUserName = 0x00000016;
  static const EcSubscriptionCommonPassword = 0x00000017;
  static const EcSubscriptionHostName = 0x00000018;
  static const EcSubscriptionReadExistingEvents = 0x00000019;
  static const EcSubscriptionDialect = 0x0000001a;
  static const EcSubscriptionType = 0x0000001b;
  static const EcSubscriptionAllowedIssuerCAs = 0x0000001c;
  static const EcSubscriptionAllowedSubjects = 0x0000001d;
  static const EcSubscriptionDeniedSubjects = 0x0000001e;
  static const EcSubscriptionAllowedSourceDomainComputers = 0x0000001f;
  static const EcSubscriptionPropertyIdEND = 0x00000020;
}

/// {@category Enum}
class EC_SUBSCRIPTION_RUNTIME_STATUS_ACTIVE_STATUS {
  static const EcRuntimeStatusActiveStatusDisabled = 0x00000001;
  static const EcRuntimeStatusActiveStatusActive = 0x00000002;
  static const EcRuntimeStatusActiveStatusInactive = 0x00000003;
  static const EcRuntimeStatusActiveStatusTrying = 0x00000004;
}

/// {@category Enum}
class EC_SUBSCRIPTION_RUNTIME_STATUS_INFO_ID {
  static const EcSubscriptionRunTimeStatusActive = 0x00000000;
  static const EcSubscriptionRunTimeStatusLastError = 0x00000001;
  static const EcSubscriptionRunTimeStatusLastErrorMessage = 0x00000002;
  static const EcSubscriptionRunTimeStatusLastErrorTime = 0x00000003;
  static const EcSubscriptionRunTimeStatusNextRetryTime = 0x00000004;
  static const EcSubscriptionRunTimeStatusEventSources = 0x00000005;
  static const EcSubscriptionRunTimeStatusLastHeartbeatTime = 0x00000006;
  static const EcSubscriptionRunTimeStatusInfoIdEND = 0x00000007;
}

/// {@category Enum}
class EC_SUBSCRIPTION_TYPE {
  static const EcSubscriptionTypeSourceInitiated = 0x00000000;
  static const EcSubscriptionTypeCollectorInitiated = 0x00000001;
}

/// {@category Enum}
class EC_VARIANT_TYPE {
  static const EcVarTypeNull = 0x00000000;
  static const EcVarTypeBoolean = 0x00000001;
  static const EcVarTypeUInt32 = 0x00000002;
  static const EcVarTypeDateTime = 0x00000003;
  static const EcVarTypeString = 0x00000004;
  static const EcVarObjectArrayPropertyHandle = 0x00000005;
}
