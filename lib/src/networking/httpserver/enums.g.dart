/// {@category Enum}
class HTTP_503_RESPONSE_VERBOSITY {
  static const Http503ResponseVerbosityBasic = 0x00000000;
  static const Http503ResponseVerbosityLimited = 0x00000001;
  static const Http503ResponseVerbosityFull = 0x00000002;
}

/// {@category Enum}
class HTTP_AUTHENTICATION_HARDENING_LEVELS {
  static const HttpAuthenticationHardeningLegacy = 0x00000000;
  static const HttpAuthenticationHardeningMedium = 0x00000001;
  static const HttpAuthenticationHardeningStrict = 0x00000002;
}

/// {@category Enum}
class HTTP_AUTH_STATUS {
  static const HttpAuthStatusSuccess = 0x00000000;
  static const HttpAuthStatusNotAuthenticated = 0x00000001;
  static const HttpAuthStatusFailure = 0x00000002;
}

/// {@category Enum}
class HTTP_CACHE_POLICY_TYPE {
  static const HttpCachePolicyNocache = 0x00000000;
  static const HttpCachePolicyUserInvalidates = 0x00000001;
  static const HttpCachePolicyTimeToLive = 0x00000002;
  static const HttpCachePolicyMaximum = 0x00000003;
}

/// {@category Enum}
class HTTP_CREATE_REQUEST_QUEUE_PROPERTY_ID {
  static const CreateRequestQueueExternalIdProperty = 0x00000001;
  static const CreateRequestQueueMax = 0x00000002;
}

/// {@category Enum}
class HTTP_DATA_CHUNK_TYPE {
  static const HttpDataChunkFromMemory = 0x00000000;
  static const HttpDataChunkFromFileHandle = 0x00000001;
  static const HttpDataChunkFromFragmentCache = 0x00000002;
  static const HttpDataChunkFromFragmentCacheEx = 0x00000003;
  static const HttpDataChunkTrailers = 0x00000004;
  static const HttpDataChunkMaximum = 0x00000005;
}

/// {@category Enum}
class HTTP_DELEGATE_REQUEST_PROPERTY_ID {
  static const DelegateRequestReservedProperty = 0x00000000;
  static const DelegateRequestDelegateUrlProperty = 0x00000001;
}

/// {@category Enum}
class HTTP_ENABLED_STATE {
  static const HttpEnabledStateActive = 0x00000000;
  static const HttpEnabledStateInactive = 0x00000001;
}

/// {@category Enum}
class HTTP_FEATURE_ID {
  static const HttpFeatureUnknown = 0x00000000;
  static const HttpFeatureResponseTrailers = 0x00000001;
  static const HttpFeatureApiTimings = 0x00000002;
  static const HttpFeatureDelegateEx = 0x00000003;
  static const HttpFeatureHttp3 = 0x00000004;
  static const HttpFeaturemax = 0xffffffff;
}

/// {@category Enum}
class HTTP_HEADER_ID {
  static const HttpHeaderCacheControl = 0x00000000;
  static const HttpHeaderConnection = 0x00000001;
  static const HttpHeaderDate = 0x00000002;
  static const HttpHeaderKeepAlive = 0x00000003;
  static const HttpHeaderPragma = 0x00000004;
  static const HttpHeaderTrailer = 0x00000005;
  static const HttpHeaderTransferEncoding = 0x00000006;
  static const HttpHeaderUpgrade = 0x00000007;
  static const HttpHeaderVia = 0x00000008;
  static const HttpHeaderWarning = 0x00000009;
  static const HttpHeaderAllow = 0x0000000a;
  static const HttpHeaderContentLength = 0x0000000b;
  static const HttpHeaderContentType = 0x0000000c;
  static const HttpHeaderContentEncoding = 0x0000000d;
  static const HttpHeaderContentLanguage = 0x0000000e;
  static const HttpHeaderContentLocation = 0x0000000f;
  static const HttpHeaderContentMd5 = 0x00000010;
  static const HttpHeaderContentRange = 0x00000011;
  static const HttpHeaderExpires = 0x00000012;
  static const HttpHeaderLastModified = 0x00000013;
  static const HttpHeaderAccept = 0x00000014;
  static const HttpHeaderAcceptCharset = 0x00000015;
  static const HttpHeaderAcceptEncoding = 0x00000016;
  static const HttpHeaderAcceptLanguage = 0x00000017;
  static const HttpHeaderAuthorization = 0x00000018;
  static const HttpHeaderCookie = 0x00000019;
  static const HttpHeaderExpect = 0x0000001a;
  static const HttpHeaderFrom = 0x0000001b;
  static const HttpHeaderHost = 0x0000001c;
  static const HttpHeaderIfMatch = 0x0000001d;
  static const HttpHeaderIfModifiedSince = 0x0000001e;
  static const HttpHeaderIfNoneMatch = 0x0000001f;
  static const HttpHeaderIfRange = 0x00000020;
  static const HttpHeaderIfUnmodifiedSince = 0x00000021;
  static const HttpHeaderMaxForwards = 0x00000022;
  static const HttpHeaderProxyAuthorization = 0x00000023;
  static const HttpHeaderReferer = 0x00000024;
  static const HttpHeaderRange = 0x00000025;
  static const HttpHeaderTe = 0x00000026;
  static const HttpHeaderTranslate = 0x00000027;
  static const HttpHeaderUserAgent = 0x00000028;
  static const HttpHeaderRequestMaximum = 0x00000029;
  static const HttpHeaderAcceptRanges = 0x00000014;
  static const HttpHeaderAge = 0x00000015;
  static const HttpHeaderEtag = 0x00000016;
  static const HttpHeaderLocation = 0x00000017;
  static const HttpHeaderProxyAuthenticate = 0x00000018;
  static const HttpHeaderRetryAfter = 0x00000019;
  static const HttpHeaderServer = 0x0000001a;
  static const HttpHeaderSetCookie = 0x0000001b;
  static const HttpHeaderVary = 0x0000001c;
  static const HttpHeaderWwwAuthenticate = 0x0000001d;
  static const HttpHeaderResponseMaximum = 0x0000001e;
  static const HttpHeaderMaximum = 0x00000029;
}

/// {@category Enum}
class HTTP_INITIALIZE {
  static const HTTP_INITIALIZE_CONFIG = 0x00000002;
  static const HTTP_INITIALIZE_SERVER = 0x00000001;
}

/// {@category Enum}
class HTTP_LOGGING_ROLLOVER_TYPE {
  static const HttpLoggingRolloverSize = 0x00000000;
  static const HttpLoggingRolloverDaily = 0x00000001;
  static const HttpLoggingRolloverWeekly = 0x00000002;
  static const HttpLoggingRolloverMonthly = 0x00000003;
  static const HttpLoggingRolloverHourly = 0x00000004;
}

/// {@category Enum}
class HTTP_LOGGING_TYPE {
  static const HttpLoggingTypeW3C = 0x00000000;
  static const HttpLoggingTypeIIS = 0x00000001;
  static const HttpLoggingTypeNCSA = 0x00000002;
  static const HttpLoggingTypeRaw = 0x00000003;
}

/// {@category Enum}
class HTTP_LOG_DATA_TYPE {
  static const HttpLogDataTypeFields = 0x00000000;
}

/// {@category Enum}
class HTTP_PERFORMANCE_PARAM_TYPE {
  static const PerformanceParamSendBufferingFlags = 0x00000000;
  static const PerformanceParamAggressiveICW = 0x00000001;
  static const PerformanceParamMaxSendBufferSize = 0x00000002;
  static const PerformanceParamMaxConcurrentClientStreams = 0x00000003;
  static const PerformanceParamMaxReceiveBufferSize = 0x00000004;
  static const PerformanceParamDecryptOnSspiThread = 0x00000005;
  static const PerformanceParamMax = 0x00000006;
}

/// {@category Enum}
class HTTP_PROTECTION_LEVEL_TYPE {
  static const HttpProtectionLevelUnrestricted = 0x00000000;
  static const HttpProtectionLevelEdgeRestricted = 0x00000001;
  static const HttpProtectionLevelRestricted = 0x00000002;
}

/// {@category Enum}
class HTTP_QOS_SETTING_TYPE {
  static const HttpQosSettingTypeBandwidth = 0x00000000;
  static const HttpQosSettingTypeConnectionLimit = 0x00000001;
  static const HttpQosSettingTypeFlowRate = 0x00000002;
}

/// {@category Enum}
class HTTP_RECEIVE_HTTP_REQUEST_FLAGS {
  static const HTTP_RECEIVE_REQUEST_FLAG_COPY_BODY = 0x00000001;
  static const HTTP_RECEIVE_REQUEST_FLAG_FLUSH_BODY = 0x00000002;
}

/// {@category Enum}
class HTTP_REQUEST_AUTH_TYPE {
  static const HttpRequestAuthTypeNone = 0x00000000;
  static const HttpRequestAuthTypeBasic = 0x00000001;
  static const HttpRequestAuthTypeDigest = 0x00000002;
  static const HttpRequestAuthTypeNTLM = 0x00000003;
  static const HttpRequestAuthTypeNegotiate = 0x00000004;
  static const HttpRequestAuthTypeKerberos = 0x00000005;
}

/// {@category Enum}
class HTTP_REQUEST_INFO_TYPE {
  static const HttpRequestInfoTypeAuth = 0x00000000;
  static const HttpRequestInfoTypeChannelBind = 0x00000001;
  static const HttpRequestInfoTypeSslProtocol = 0x00000002;
  static const HttpRequestInfoTypeSslTokenBindingDraft = 0x00000003;
  static const HttpRequestInfoTypeSslTokenBinding = 0x00000004;
  static const HttpRequestInfoTypeRequestTiming = 0x00000005;
  static const HttpRequestInfoTypeTcpInfoV0 = 0x00000006;
  static const HttpRequestInfoTypeRequestSizing = 0x00000007;
  static const HttpRequestInfoTypeQuicStats = 0x00000008;
  static const HttpRequestInfoTypeTcpInfoV1 = 0x00000009;
}

/// {@category Enum}
class HTTP_REQUEST_PROPERTY {
  static const HttpRequestPropertyIsb = 0x00000000;
  static const HttpRequestPropertyTcpInfoV0 = 0x00000001;
  static const HttpRequestPropertyQuicStats = 0x00000002;
  static const HttpRequestPropertyTcpInfoV1 = 0x00000003;
  static const HttpRequestPropertySni = 0x00000004;
  static const HttpRequestPropertyStreamError = 0x00000005;
  static const HttpRequestPropertyWskApiTimings = 0x00000006;
  static const HttpRequestPropertyQuicApiTimings = 0x00000007;
}

/// {@category Enum}
class HTTP_REQUEST_SIZING_TYPE {
  static const HttpRequestSizingTypeTlsHandshakeLeg1ClientData = 0x00000000;
  static const HttpRequestSizingTypeTlsHandshakeLeg1ServerData = 0x00000001;
  static const HttpRequestSizingTypeTlsHandshakeLeg2ClientData = 0x00000002;
  static const HttpRequestSizingTypeTlsHandshakeLeg2ServerData = 0x00000003;
  static const HttpRequestSizingTypeHeaders = 0x00000004;
  static const HttpRequestSizingTypeMax = 0x00000005;
}

/// {@category Enum}
class HTTP_REQUEST_TIMING_TYPE {
  static const HttpRequestTimingTypeConnectionStart = 0x00000000;
  static const HttpRequestTimingTypeDataStart = 0x00000001;
  static const HttpRequestTimingTypeTlsCertificateLoadStart = 0x00000002;
  static const HttpRequestTimingTypeTlsCertificateLoadEnd = 0x00000003;
  static const HttpRequestTimingTypeTlsHandshakeLeg1Start = 0x00000004;
  static const HttpRequestTimingTypeTlsHandshakeLeg1End = 0x00000005;
  static const HttpRequestTimingTypeTlsHandshakeLeg2Start = 0x00000006;
  static const HttpRequestTimingTypeTlsHandshakeLeg2End = 0x00000007;
  static const HttpRequestTimingTypeTlsAttributesQueryStart = 0x00000008;
  static const HttpRequestTimingTypeTlsAttributesQueryEnd = 0x00000009;
  static const HttpRequestTimingTypeTlsClientCertQueryStart = 0x0000000a;
  static const HttpRequestTimingTypeTlsClientCertQueryEnd = 0x0000000b;
  static const HttpRequestTimingTypeHttp2StreamStart = 0x0000000c;
  static const HttpRequestTimingTypeHttp2HeaderDecodeStart = 0x0000000d;
  static const HttpRequestTimingTypeHttp2HeaderDecodeEnd = 0x0000000e;
  static const HttpRequestTimingTypeRequestHeaderParseStart = 0x0000000f;
  static const HttpRequestTimingTypeRequestHeaderParseEnd = 0x00000010;
  static const HttpRequestTimingTypeRequestRoutingStart = 0x00000011;
  static const HttpRequestTimingTypeRequestRoutingEnd = 0x00000012;
  static const HttpRequestTimingTypeRequestQueuedForInspection = 0x00000013;
  static const HttpRequestTimingTypeRequestDeliveredForInspection = 0x00000014;
  static const HttpRequestTimingTypeRequestReturnedAfterInspection = 0x00000015;
  static const HttpRequestTimingTypeRequestQueuedForDelegation = 0x00000016;
  static const HttpRequestTimingTypeRequestDeliveredForDelegation = 0x00000017;
  static const HttpRequestTimingTypeRequestReturnedAfterDelegation = 0x00000018;
  static const HttpRequestTimingTypeRequestQueuedForIO = 0x00000019;
  static const HttpRequestTimingTypeRequestDeliveredForIO = 0x0000001a;
  static const HttpRequestTimingTypeHttp3StreamStart = 0x0000001b;
  static const HttpRequestTimingTypeHttp3HeaderDecodeStart = 0x0000001c;
  static const HttpRequestTimingTypeHttp3HeaderDecodeEnd = 0x0000001d;
  static const HttpRequestTimingTypeMax = 0x0000001e;
}

/// {@category Enum}
class HTTP_RESPONSE_INFO_TYPE {
  static const HttpResponseInfoTypeMultipleKnownHeaders = 0x00000000;
  static const HttpResponseInfoTypeAuthenticationProperty = 0x00000001;
  static const HttpResponseInfoTypeQoSProperty = 0x00000002;
  static const HttpResponseInfoTypeChannelBind = 0x00000003;
}

/// {@category Enum}
class HTTP_SCHEME {
  static const HttpSchemeHttp = 0x00000000;
  static const HttpSchemeHttps = 0x00000001;
  static const HttpSchemeMaximum = 0x00000002;
}

/// {@category Enum}
class HTTP_SERVER_PROPERTY {
  static const HttpServerAuthenticationProperty = 0x00000000;
  static const HttpServerLoggingProperty = 0x00000001;
  static const HttpServerQosProperty = 0x00000002;
  static const HttpServerTimeoutsProperty = 0x00000003;
  static const HttpServerQueueLengthProperty = 0x00000004;
  static const HttpServerStateProperty = 0x00000005;
  static const HttpServer503VerbosityProperty = 0x00000006;
  static const HttpServerBindingProperty = 0x00000007;
  static const HttpServerExtendedAuthenticationProperty = 0x00000008;
  static const HttpServerListenEndpointProperty = 0x00000009;
  static const HttpServerChannelBindProperty = 0x0000000a;
  static const HttpServerProtectionLevelProperty = 0x0000000b;
  static const HttpServerDelegationProperty = 0x00000010;
}

/// {@category Enum}
class HTTP_SERVICE_BINDING_TYPE {
  static const HttpServiceBindingTypeNone = 0x00000000;
  static const HttpServiceBindingTypeW = 0x00000001;
  static const HttpServiceBindingTypeA = 0x00000002;
}

/// {@category Enum}
class HTTP_SERVICE_CONFIG_CACHE_KEY {
  static const MaxCacheResponseSize = 0x00000000;
  static const CacheRangeChunkSize = 0x00000001;
}

/// {@category Enum}
class HTTP_SERVICE_CONFIG_ID {
  static const HttpServiceConfigIPListenList = 0x00000000;
  static const HttpServiceConfigSSLCertInfo = 0x00000001;
  static const HttpServiceConfigUrlAclInfo = 0x00000002;
  static const HttpServiceConfigTimeout = 0x00000003;
  static const HttpServiceConfigCache = 0x00000004;
  static const HttpServiceConfigSslSniCertInfo = 0x00000005;
  static const HttpServiceConfigSslCcsCertInfo = 0x00000006;
  static const HttpServiceConfigSetting = 0x00000007;
  static const HttpServiceConfigSslCertInfoEx = 0x00000008;
  static const HttpServiceConfigSslSniCertInfoEx = 0x00000009;
  static const HttpServiceConfigSslCcsCertInfoEx = 0x0000000a;
  static const HttpServiceConfigSslScopedCcsCertInfo = 0x0000000b;
  static const HttpServiceConfigSslScopedCcsCertInfoEx = 0x0000000c;
  static const HttpServiceConfigMax = 0x0000000d;
}

/// {@category Enum}
class HTTP_SERVICE_CONFIG_QUERY_TYPE {
  static const HttpServiceConfigQueryExact = 0x00000000;
  static const HttpServiceConfigQueryNext = 0x00000001;
  static const HttpServiceConfigQueryMax = 0x00000002;
}

/// {@category Enum}
class HTTP_SERVICE_CONFIG_SETTING_KEY {
  static const HttpNone = 0x00000000;
  static const HttpTlsThrottle = 0x00000001;
}

/// {@category Enum}
class HTTP_SERVICE_CONFIG_TIMEOUT_KEY {
  static const IdleConnectionTimeout = 0x00000000;
  static const HeaderWaitTimeout = 0x00000001;
}

/// {@category Enum}
class HTTP_SSL_SERVICE_CONFIG_EX_PARAM_TYPE {
  static const ExParamTypeHttp2Window = 0x00000000;
  static const ExParamTypeHttp2SettingsLimits = 0x00000001;
  static const ExParamTypeHttpPerformance = 0x00000002;
  static const ExParamTypeTlsRestrictions = 0x00000003;
  static const ExParamTypeErrorHeaders = 0x00000004;
  static const ExParamTypeTlsSessionTicketKeys = 0x00000005;
  static const ExParamTypeMax = 0x00000006;
}

/// {@category Enum}
class HTTP_VERB {
  static const HttpVerbUnparsed = 0x00000000;
  static const HttpVerbUnknown = 0x00000001;
  static const HttpVerbInvalid = 0x00000002;
  static const HttpVerbOPTIONS = 0x00000003;
  static const HttpVerbGET = 0x00000004;
  static const HttpVerbHEAD = 0x00000005;
  static const HttpVerbPOST = 0x00000006;
  static const HttpVerbPUT = 0x00000007;
  static const HttpVerbDELETE = 0x00000008;
  static const HttpVerbTRACE = 0x00000009;
  static const HttpVerbCONNECT = 0x0000000a;
  static const HttpVerbTRACK = 0x0000000b;
  static const HttpVerbMOVE = 0x0000000c;
  static const HttpVerbCOPY = 0x0000000d;
  static const HttpVerbPROPFIND = 0x0000000e;
  static const HttpVerbPROPPATCH = 0x0000000f;
  static const HttpVerbMKCOL = 0x00000010;
  static const HttpVerbLOCK = 0x00000011;
  static const HttpVerbUNLOCK = 0x00000012;
  static const HttpVerbSEARCH = 0x00000013;
  static const HttpVerbMaximum = 0x00000014;
}
