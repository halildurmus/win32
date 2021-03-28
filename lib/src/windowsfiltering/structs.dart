// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// -----------------------------------------------------------------------------
// Linter exceptions
// -----------------------------------------------------------------------------
// ignore_for_file: camel_case_types ignore_for_file: camel_case_extensions
//
// Why? The linter defaults to throw a warning for types not named as camel
// case. We deliberately break this convention to match the Win32 underlying
// types.
//
//
// ignore_for_file: unused_field
//
// Why? The linter complains about unused fields (e.g. a class that contains
// underscore-prefixed members that are not used in the library. In this class,
// we use this feature to ensure that sizeOf<STRUCT_NAME> returns a size at
// least as large as the underlying native struct. See, for example,
// ENUMLOGFONTEX.
//
//
// ignore_for_file: unnecessary_getters_setters
//
// Why? In structs like VARIANT, we're using getters and setters to project the
// same underlying data property to various union types. The trivial overhead is
// outweighed by readability.
//
//
// ignore_for_file: unused_import
//
// Why? We speculatively include some imports that we might generate a
// requirement for.
// -----------------------------------------------------------------------------

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';

class FWP_BITMAP_ARRAY64_ extends Struct {
  external __ubyte__ bitmapArray64;
}

class FWP_BYTE_ARRAY6 extends Struct {
  external __ubyte__ byteArray6;
}

class FWP_BYTE_ARRAY16 extends Struct {
  external __ubyte__ byteArray16;
}

class FWP_BYTE_BLOB extends Struct {
  @Uint32() external int size;
  external Pointer<Uint8> data;
}

class FWP_TOKEN_INFORMATION extends Struct {
  @Uint32() external int sidCount;
  external Pointer<SID_AND_ATTRIBUTES> sids;
  @Uint32() external int restrictedSidCount;
  external Pointer<SID_AND_ATTRIBUTES> restrictedSids;
}

class FWP_VALUE0 extends Struct {
  @Uint32() external int type;
  @Uint32() external int Anonymous;
}

class FWP_V4_ADDR_AND_MASK extends Struct {
  @Uint32() external int addr;
  @Uint32() external int mask;
}

class FWP_V6_ADDR_AND_MASK extends Struct {
  external __ubyte__ addr;
  @Uint8() external int prefixLength;
}

class FWP_RANGE0 extends Struct {
  external FWP_VALUE0 valueLow;
  external FWP_VALUE0 valueHigh;
}

class FWP_CONDITION_VALUE0 extends Struct {
  @Uint32() external int type;
  @Uint32() external int Anonymous;
}

class FWPM_DISPLAY_DATA0 extends Struct {
  external Pointer<Utf16> name;
  external Pointer<Utf16> description;
}

class IPSEC_VIRTUAL_IF_TUNNEL_INFO0 extends Struct {
  @Uint64() external int virtualIfTunnelId;
  @Uint64() external int trafficSelectorId;
}

class IKEEXT_PRESHARED_KEY_AUTHENTICATION0 extends Struct {
  external FWP_BYTE_BLOB presharedKey;
}

class IKEEXT_PRESHARED_KEY_AUTHENTICATION1 extends Struct {
  external FWP_BYTE_BLOB presharedKey;
  @Uint32() external int flags;
}

class IKEEXT_CERT_ROOT_CONFIG0 extends Struct {
  external FWP_BYTE_BLOB certData;
  @Uint32() external int flags;
}

class IKEEXT_CERTIFICATE_AUTHENTICATION0 extends Struct {
  @Uint32() external int inboundConfigType;
  @Uint32() external int Anonymous1;
  @Uint32() external int outboundConfigType;
  @Uint32() external int Anonymous2;
  @Uint32() external int flags;
}

class IKEEXT_CERTIFICATE_AUTHENTICATION1 extends Struct {
  @Uint32() external int inboundConfigType;
  @Uint32() external int Anonymous1;
  @Uint32() external int outboundConfigType;
  @Uint32() external int Anonymous2;
  @Uint32() external int flags;
  external FWP_BYTE_BLOB localCertLocationUrl;
}

class IKEEXT_CERT_EKUS0 extends Struct {
  @Uint32() external int numEku;
  external Pointer<Pointer<Utf8>> eku;
}

class IKEEXT_CERT_NAME0 extends Struct {
  @Uint32() external int nameType;
  external Pointer<Utf16> certName;
}

class IKEEXT_CERTIFICATE_CRITERIA0 extends Struct {
  external FWP_BYTE_BLOB certData;
  external FWP_BYTE_BLOB certHash;
  external Pointer<IKEEXT_CERT_EKUS0> eku;
  external Pointer<IKEEXT_CERT_NAME0> name;
  @Uint32() external int flags;
}

class IKEEXT_CERTIFICATE_AUTHENTICATION2 extends Struct {
  @Uint32() external int inboundConfigType;
  @Uint32() external int Anonymous1;
  @Uint32() external int outboundConfigType;
  @Uint32() external int Anonymous2;
  @Uint32() external int flags;
  external FWP_BYTE_BLOB localCertLocationUrl;
}

class IKEEXT_IPV6_CGA_AUTHENTICATION0 extends Struct {
  external Pointer<Utf16> keyContainerName;
  external Pointer<Utf16> cspName;
  @Uint32() external int cspType;
  external FWP_BYTE_ARRAY16 cgaModifier;
  @Uint8() external int cgaCollisionCount;
}

class IKEEXT_KERBEROS_AUTHENTICATION0 extends Struct {
  @Uint32() external int flags;
}

class IKEEXT_KERBEROS_AUTHENTICATION1 extends Struct {
  @Uint32() external int flags;
  external Pointer<Utf16> proxyServer;
}

class IKEEXT_RESERVED_AUTHENTICATION0 extends Struct {
  @Uint32() external int flags;
}

class IKEEXT_NTLM_V2_AUTHENTICATION0 extends Struct {
  @Uint32() external int flags;
}

class IKEEXT_EAP_AUTHENTICATION0 extends Struct {
  @Uint32() external int flags;
}

class IKEEXT_AUTHENTICATION_METHOD0 extends Struct {
  @Uint32() external int authenticationMethodType;
  @Uint32() external int Anonymous;
}

class IKEEXT_AUTHENTICATION_METHOD1 extends Struct {
  @Uint32() external int authenticationMethodType;
  @Uint32() external int Anonymous;
}

class IKEEXT_AUTHENTICATION_METHOD2 extends Struct {
  @Uint32() external int authenticationMethodType;
  @Uint32() external int Anonymous;
}

class IKEEXT_CIPHER_ALGORITHM0 extends Struct {
  @Uint32() external int algoIdentifier;
  @Uint32() external int keyLen;
  @Uint32() external int rounds;
}

class IKEEXT_INTEGRITY_ALGORITHM0 extends Struct {
  @Uint32() external int algoIdentifier;
}

class IKEEXT_PROPOSAL0 extends Struct {
  external IKEEXT_CIPHER_ALGORITHM0 cipherAlgorithm;
  external IKEEXT_INTEGRITY_ALGORITHM0 integrityAlgorithm;
  @Uint32() external int maxLifetimeSeconds;
  @Uint32() external int dhGroup;
  @Uint32() external int quickModeLimit;
}

class IKEEXT_POLICY0 extends Struct {
  @Uint32() external int softExpirationTime;
  @Uint32() external int numAuthenticationMethods;
  external Pointer<IKEEXT_AUTHENTICATION_METHOD0> authenticationMethods;
  @Uint32() external int initiatorImpersonationType;
  @Uint32() external int numIkeProposals;
  external Pointer<IKEEXT_PROPOSAL0> ikeProposals;
  @Uint32() external int flags;
  @Uint32() external int maxDynamicFilters;
}

class IKEEXT_POLICY1 extends Struct {
  @Uint32() external int softExpirationTime;
  @Uint32() external int numAuthenticationMethods;
  external Pointer<IKEEXT_AUTHENTICATION_METHOD1> authenticationMethods;
  @Uint32() external int initiatorImpersonationType;
  @Uint32() external int numIkeProposals;
  external Pointer<IKEEXT_PROPOSAL0> ikeProposals;
  @Uint32() external int flags;
  @Uint32() external int maxDynamicFilters;
  @Uint32() external int retransmitDurationSecs;
}

class IKEEXT_POLICY2 extends Struct {
  @Uint32() external int softExpirationTime;
  @Uint32() external int numAuthenticationMethods;
  external Pointer<IKEEXT_AUTHENTICATION_METHOD2> authenticationMethods;
  @Uint32() external int initiatorImpersonationType;
  @Uint32() external int numIkeProposals;
  external Pointer<IKEEXT_PROPOSAL0> ikeProposals;
  @Uint32() external int flags;
  @Uint32() external int maxDynamicFilters;
  @Uint32() external int retransmitDurationSecs;
}

class IKEEXT_EM_POLICY0 extends Struct {
  @Uint32() external int numAuthenticationMethods;
  external Pointer<IKEEXT_AUTHENTICATION_METHOD0> authenticationMethods;
  @Uint32() external int initiatorImpersonationType;
}

class IKEEXT_EM_POLICY1 extends Struct {
  @Uint32() external int numAuthenticationMethods;
  external Pointer<IKEEXT_AUTHENTICATION_METHOD1> authenticationMethods;
  @Uint32() external int initiatorImpersonationType;
}

class IKEEXT_EM_POLICY2 extends Struct {
  @Uint32() external int numAuthenticationMethods;
  external Pointer<IKEEXT_AUTHENTICATION_METHOD2> authenticationMethods;
  @Uint32() external int initiatorImpersonationType;
}

class IKEEXT_IP_VERSION_SPECIFIC_KEYMODULE_STATISTICS0 extends Struct {
  @Uint32() external int currentActiveMainModes;
  @Uint32() external int totalMainModesStarted;
  @Uint32() external int totalSuccessfulMainModes;
  @Uint32() external int totalFailedMainModes;
  @Uint32() external int totalResponderMainModes;
  @Uint32() external int currentNewResponderMainModes;
  @Uint32() external int currentActiveQuickModes;
  @Uint32() external int totalQuickModesStarted;
  @Uint32() external int totalSuccessfulQuickModes;
  @Uint32() external int totalFailedQuickModes;
  @Uint32() external int totalAcquires;
  @Uint32() external int totalReinitAcquires;
  @Uint32() external int currentActiveExtendedModes;
  @Uint32() external int totalExtendedModesStarted;
  @Uint32() external int totalSuccessfulExtendedModes;
  @Uint32() external int totalFailedExtendedModes;
  @Uint32() external int totalImpersonationExtendedModes;
  @Uint32() external int totalImpersonationMainModes;
}

class IKEEXT_IP_VERSION_SPECIFIC_KEYMODULE_STATISTICS1 extends Struct {
  @Uint32() external int currentActiveMainModes;
  @Uint32() external int totalMainModesStarted;
  @Uint32() external int totalSuccessfulMainModes;
  @Uint32() external int totalFailedMainModes;
  @Uint32() external int totalResponderMainModes;
  @Uint32() external int currentNewResponderMainModes;
  @Uint32() external int currentActiveQuickModes;
  @Uint32() external int totalQuickModesStarted;
  @Uint32() external int totalSuccessfulQuickModes;
  @Uint32() external int totalFailedQuickModes;
  @Uint32() external int totalAcquires;
  @Uint32() external int totalReinitAcquires;
  @Uint32() external int currentActiveExtendedModes;
  @Uint32() external int totalExtendedModesStarted;
  @Uint32() external int totalSuccessfulExtendedModes;
  @Uint32() external int totalFailedExtendedModes;
  @Uint32() external int totalImpersonationExtendedModes;
  @Uint32() external int totalImpersonationMainModes;
}

class IKEEXT_KEYMODULE_STATISTICS0 extends Struct {
  external IKEEXT_IP_VERSION_SPECIFIC_KEYMODULE_STATISTICS0 v4Statistics;
  external IKEEXT_IP_VERSION_SPECIFIC_KEYMODULE_STATISTICS0 v6Statistics;
  external __uint__ errorFrequencyTable;
  @Uint32() external int mainModeNegotiationTime;
  @Uint32() external int quickModeNegotiationTime;
  @Uint32() external int extendedModeNegotiationTime;
}

class IKEEXT_KEYMODULE_STATISTICS1 extends Struct {
  external IKEEXT_IP_VERSION_SPECIFIC_KEYMODULE_STATISTICS1 v4Statistics;
  external IKEEXT_IP_VERSION_SPECIFIC_KEYMODULE_STATISTICS1 v6Statistics;
  external __uint__ errorFrequencyTable;
  @Uint32() external int mainModeNegotiationTime;
  @Uint32() external int quickModeNegotiationTime;
  @Uint32() external int extendedModeNegotiationTime;
}

class IKEEXT_IP_VERSION_SPECIFIC_COMMON_STATISTICS0 extends Struct {
  @Uint32() external int totalSocketReceiveFailures;
  @Uint32() external int totalSocketSendFailures;
}

class IKEEXT_IP_VERSION_SPECIFIC_COMMON_STATISTICS1 extends Struct {
  @Uint32() external int totalSocketReceiveFailures;
  @Uint32() external int totalSocketSendFailures;
}

class IKEEXT_COMMON_STATISTICS0 extends Struct {
  external IKEEXT_IP_VERSION_SPECIFIC_COMMON_STATISTICS0 v4Statistics;
  external IKEEXT_IP_VERSION_SPECIFIC_COMMON_STATISTICS0 v6Statistics;
  @Uint32() external int totalPacketsReceived;
  @Uint32() external int totalInvalidPacketsReceived;
  @Uint32() external int currentQueuedWorkitems;
}

class IKEEXT_COMMON_STATISTICS1 extends Struct {
  external IKEEXT_IP_VERSION_SPECIFIC_COMMON_STATISTICS1 v4Statistics;
  external IKEEXT_IP_VERSION_SPECIFIC_COMMON_STATISTICS1 v6Statistics;
  @Uint32() external int totalPacketsReceived;
  @Uint32() external int totalInvalidPacketsReceived;
  @Uint32() external int currentQueuedWorkitems;
}

class IKEEXT_STATISTICS0 extends Struct {
  external IKEEXT_KEYMODULE_STATISTICS0 ikeStatistics;
  external IKEEXT_KEYMODULE_STATISTICS0 authipStatistics;
  external IKEEXT_COMMON_STATISTICS0 commonStatistics;
}

class IKEEXT_STATISTICS1 extends Struct {
  external IKEEXT_KEYMODULE_STATISTICS1 ikeStatistics;
  external IKEEXT_KEYMODULE_STATISTICS1 authipStatistics;
  external IKEEXT_KEYMODULE_STATISTICS1 ikeV2Statistics;
  external IKEEXT_COMMON_STATISTICS1 commonStatistics;
}

class IKEEXT_TRAFFIC0 extends Struct {
  @Uint32() external int ipVersion;
  @Uint32() external int Anonymous1;
  @Uint32() external int Anonymous2;
  @Uint64() external int authIpFilterId;
}

class IKEEXT_COOKIE_PAIR0 extends Struct {
  @Uint64() external int initiator;
  @Uint64() external int responder;
}

class IKEEXT_CERTIFICATE_CREDENTIAL0 extends Struct {
  external FWP_BYTE_BLOB subjectName;
  external FWP_BYTE_BLOB certHash;
  @Uint32() external int flags;
}

class IKEEXT_NAME_CREDENTIAL0 extends Struct {
  external Pointer<Utf16> principalName;
}

class IKEEXT_CREDENTIAL0 extends Struct {
  @Uint32() external int authenticationMethodType;
  @Uint32() external int impersonationType;
  @Uint32() external int Anonymous;
}

class IKEEXT_CREDENTIAL_PAIR0 extends Struct {
  external IKEEXT_CREDENTIAL0 localCredentials;
  external IKEEXT_CREDENTIAL0 peerCredentials;
}

class IKEEXT_CREDENTIALS0 extends Struct {
  @Uint32() external int numCredentials;
  external Pointer<IKEEXT_CREDENTIAL_PAIR0> credentials;
}

class IKEEXT_SA_DETAILS0 extends Struct {
  @Uint64() external int saId;
  @Uint32() external int keyModuleType;
  @Uint32() external int ipVersion;
  @Uint32() external int Anonymous;
  external IKEEXT_TRAFFIC0 ikeTraffic;
  external IKEEXT_PROPOSAL0 ikeProposal;
  external IKEEXT_COOKIE_PAIR0 cookiePair;
  external IKEEXT_CREDENTIALS0 ikeCredentials;
  external GUID ikePolicyKey;
  @Uint64() external int virtualIfTunnelId;
}

class IKEEXT_CERTIFICATE_CREDENTIAL1 extends Struct {
  external FWP_BYTE_BLOB subjectName;
  external FWP_BYTE_BLOB certHash;
  @Uint32() external int flags;
  external FWP_BYTE_BLOB certificate;
}

class IKEEXT_CREDENTIAL1 extends Struct {
  @Uint32() external int authenticationMethodType;
  @Uint32() external int impersonationType;
  @Uint32() external int Anonymous;
}

class IKEEXT_CREDENTIAL_PAIR1 extends Struct {
  external IKEEXT_CREDENTIAL1 localCredentials;
  external IKEEXT_CREDENTIAL1 peerCredentials;
}

class IKEEXT_CREDENTIALS1 extends Struct {
  @Uint32() external int numCredentials;
  external Pointer<IKEEXT_CREDENTIAL_PAIR1> credentials;
}

class IKEEXT_SA_DETAILS1 extends Struct {
  @Uint64() external int saId;
  @Uint32() external int keyModuleType;
  @Uint32() external int ipVersion;
  @Uint32() external int Anonymous;
  external IKEEXT_TRAFFIC0 ikeTraffic;
  external IKEEXT_PROPOSAL0 ikeProposal;
  external IKEEXT_COOKIE_PAIR0 cookiePair;
  external IKEEXT_CREDENTIALS1 ikeCredentials;
  external GUID ikePolicyKey;
  @Uint64() external int virtualIfTunnelId;
  external FWP_BYTE_BLOB correlationKey;
}

class IKEEXT_CREDENTIAL2 extends Struct {
  @Uint32() external int authenticationMethodType;
  @Uint32() external int impersonationType;
  @Uint32() external int Anonymous;
}

class IKEEXT_CREDENTIAL_PAIR2 extends Struct {
  external IKEEXT_CREDENTIAL2 localCredentials;
  external IKEEXT_CREDENTIAL2 peerCredentials;
}

class IKEEXT_CREDENTIALS2 extends Struct {
  @Uint32() external int numCredentials;
  external Pointer<IKEEXT_CREDENTIAL_PAIR2> credentials;
}

class IKEEXT_SA_DETAILS2 extends Struct {
  @Uint64() external int saId;
  @Uint32() external int keyModuleType;
  @Uint32() external int ipVersion;
  @Uint32() external int Anonymous;
  external IKEEXT_TRAFFIC0 ikeTraffic;
  external IKEEXT_PROPOSAL0 ikeProposal;
  external IKEEXT_COOKIE_PAIR0 cookiePair;
  external IKEEXT_CREDENTIALS2 ikeCredentials;
  external GUID ikePolicyKey;
  @Uint64() external int virtualIfTunnelId;
  external FWP_BYTE_BLOB correlationKey;
}

class IKEEXT_SA_ENUM_TEMPLATE0 extends Struct {
  external FWP_CONDITION_VALUE0 localSubNet;
  external FWP_CONDITION_VALUE0 remoteSubNet;
  external FWP_BYTE_BLOB localMainModeCertHash;
}

class IPSEC_SA_LIFETIME0 extends Struct {
  @Uint32() external int lifetimeSeconds;
  @Uint32() external int lifetimeKilobytes;
  @Uint32() external int lifetimePackets;
}

class IPSEC_AUTH_TRANSFORM_ID0 extends Struct {
  @Uint32() external int authType;
  @Uint8() external int authConfig;
}

class IPSEC_AUTH_TRANSFORM0 extends Struct {
  external IPSEC_AUTH_TRANSFORM_ID0 authTransformId;
  external Pointer<GUID> cryptoModuleId;
}

class IPSEC_CIPHER_TRANSFORM_ID0 extends Struct {
  @Uint32() external int cipherType;
  @Uint8() external int cipherConfig;
}

class IPSEC_CIPHER_TRANSFORM0 extends Struct {
  external IPSEC_CIPHER_TRANSFORM_ID0 cipherTransformId;
  external Pointer<GUID> cryptoModuleId;
}

class IPSEC_AUTH_AND_CIPHER_TRANSFORM0 extends Struct {
  external IPSEC_AUTH_TRANSFORM0 authTransform;
  external IPSEC_CIPHER_TRANSFORM0 cipherTransform;
}

class IPSEC_SA_TRANSFORM0 extends Struct {
  @Uint32() external int ipsecTransformType;
  @Uint32() external int Anonymous;
}

class IPSEC_PROPOSAL0 extends Struct {
  external IPSEC_SA_LIFETIME0 lifetime;
  @Uint32() external int numSaTransforms;
  external Pointer<IPSEC_SA_TRANSFORM0> saTransforms;
  @Uint32() external int pfsGroup;
}

class IPSEC_SA_IDLE_TIMEOUT0 extends Struct {
  @Uint32() external int idleTimeoutSeconds;
  @Uint32() external int idleTimeoutSecondsFailOver;
}

class IPSEC_TRAFFIC_SELECTOR0_ extends Struct {
  @Uint8() external int protocolId;
  @Uint16() external int portStart;
  @Uint16() external int portEnd;
  @Uint32() external int ipVersion;
  @Uint32() external int Anonymous1;
  @Uint32() external int Anonymous2;
}

class IPSEC_TRAFFIC_SELECTOR_POLICY0_ extends Struct {
  @Uint32() external int flags;
  @Uint32() external int numLocalTrafficSelectors;
  external Pointer<IPSEC_TRAFFIC_SELECTOR0_> localTrafficSelectors;
  @Uint32() external int numRemoteTrafficSelectors;
  external Pointer<IPSEC_TRAFFIC_SELECTOR0_> remoteTrafficSelectors;
}

class IPSEC_TRANSPORT_POLICY0 extends Struct {
  @Uint32() external int numIpsecProposals;
  external Pointer<IPSEC_PROPOSAL0> ipsecProposals;
  @Uint32() external int flags;
  @Uint32() external int ndAllowClearTimeoutSeconds;
  external IPSEC_SA_IDLE_TIMEOUT0 saIdleTimeout;
  external Pointer<IKEEXT_EM_POLICY0> emPolicy;
}

class IPSEC_TRANSPORT_POLICY1 extends Struct {
  @Uint32() external int numIpsecProposals;
  external Pointer<IPSEC_PROPOSAL0> ipsecProposals;
  @Uint32() external int flags;
  @Uint32() external int ndAllowClearTimeoutSeconds;
  external IPSEC_SA_IDLE_TIMEOUT0 saIdleTimeout;
  external Pointer<IKEEXT_EM_POLICY1> emPolicy;
}

class IPSEC_TRANSPORT_POLICY2 extends Struct {
  @Uint32() external int numIpsecProposals;
  external Pointer<IPSEC_PROPOSAL0> ipsecProposals;
  @Uint32() external int flags;
  @Uint32() external int ndAllowClearTimeoutSeconds;
  external IPSEC_SA_IDLE_TIMEOUT0 saIdleTimeout;
  external Pointer<IKEEXT_EM_POLICY2> emPolicy;
}

class IPSEC_TUNNEL_ENDPOINTS0 extends Struct {
  @Uint32() external int ipVersion;
  @Uint32() external int Anonymous1;
  @Uint32() external int Anonymous2;
}

class IPSEC_TUNNEL_ENDPOINT0 extends Struct {
  @Uint32() external int ipVersion;
  @Uint32() external int Anonymous;
}

class IPSEC_TUNNEL_ENDPOINTS2 extends Struct {
  @Uint32() external int ipVersion;
  @Uint32() external int Anonymous1;
  @Uint32() external int Anonymous2;
  @Uint64() external int localIfLuid;
  external Pointer<Utf16> remoteFqdn;
  @Uint32() external int numAddresses;
  external Pointer<IPSEC_TUNNEL_ENDPOINT0> remoteAddresses;
}

class IPSEC_TUNNEL_ENDPOINTS1 extends Struct {
  @Uint32() external int ipVersion;
  @Uint32() external int Anonymous1;
  @Uint32() external int Anonymous2;
  @Uint64() external int localIfLuid;
}

class IPSEC_TUNNEL_POLICY0 extends Struct {
  @Uint32() external int flags;
  @Uint32() external int numIpsecProposals;
  external Pointer<IPSEC_PROPOSAL0> ipsecProposals;
  external IPSEC_TUNNEL_ENDPOINTS0 tunnelEndpoints;
  external IPSEC_SA_IDLE_TIMEOUT0 saIdleTimeout;
  external Pointer<IKEEXT_EM_POLICY0> emPolicy;
}

class IPSEC_TUNNEL_POLICY1 extends Struct {
  @Uint32() external int flags;
  @Uint32() external int numIpsecProposals;
  external Pointer<IPSEC_PROPOSAL0> ipsecProposals;
  external IPSEC_TUNNEL_ENDPOINTS1 tunnelEndpoints;
  external IPSEC_SA_IDLE_TIMEOUT0 saIdleTimeout;
  external Pointer<IKEEXT_EM_POLICY1> emPolicy;
}

class IPSEC_TUNNEL_POLICY2 extends Struct {
  @Uint32() external int flags;
  @Uint32() external int numIpsecProposals;
  external Pointer<IPSEC_PROPOSAL0> ipsecProposals;
  external IPSEC_TUNNEL_ENDPOINTS2 tunnelEndpoints;
  external IPSEC_SA_IDLE_TIMEOUT0 saIdleTimeout;
  external Pointer<IKEEXT_EM_POLICY2> emPolicy;
  @Uint32() external int fwdPathSaLifetime;
}

class IPSEC_TUNNEL_POLICY3_ extends Struct {
  @Uint32() external int flags;
  @Uint32() external int numIpsecProposals;
  external Pointer<IPSEC_PROPOSAL0> ipsecProposals;
  external IPSEC_TUNNEL_ENDPOINTS2 tunnelEndpoints;
  external IPSEC_SA_IDLE_TIMEOUT0 saIdleTimeout;
  external Pointer<IKEEXT_EM_POLICY2> emPolicy;
  @Uint32() external int fwdPathSaLifetime;
  @Uint32() external int compartmentId;
  @Uint32() external int numTrafficSelectorPolicy;
  external Pointer<IPSEC_TRAFFIC_SELECTOR_POLICY0_> trafficSelectorPolicies;
}

class IPSEC_KEYING_POLICY0 extends Struct {
  @Uint32() external int numKeyMods;
  external Pointer<GUID> keyModKeys;
}

class IPSEC_KEYING_POLICY1 extends Struct {
  @Uint32() external int numKeyMods;
  external Pointer<GUID> keyModKeys;
  @Uint32() external int flags;
}

class IPSEC_AGGREGATE_SA_STATISTICS0 extends Struct {
  @Uint32() external int activeSas;
  @Uint32() external int pendingSaNegotiations;
  @Uint32() external int totalSasAdded;
  @Uint32() external int totalSasDeleted;
  @Uint32() external int successfulRekeys;
  @Uint32() external int activeTunnels;
  @Uint32() external int offloadedSas;
}

class IPSEC_ESP_DROP_PACKET_STATISTICS0 extends Struct {
  @Uint32() external int invalidSpisOnInbound;
  @Uint32() external int decryptionFailuresOnInbound;
  @Uint32() external int authenticationFailuresOnInbound;
  @Uint32() external int replayCheckFailuresOnInbound;
  @Uint32() external int saNotInitializedOnInbound;
}

class IPSEC_AH_DROP_PACKET_STATISTICS0 extends Struct {
  @Uint32() external int invalidSpisOnInbound;
  @Uint32() external int authenticationFailuresOnInbound;
  @Uint32() external int replayCheckFailuresOnInbound;
  @Uint32() external int saNotInitializedOnInbound;
}

class IPSEC_AGGREGATE_DROP_PACKET_STATISTICS0 extends Struct {
  @Uint32() external int invalidSpisOnInbound;
  @Uint32() external int decryptionFailuresOnInbound;
  @Uint32() external int authenticationFailuresOnInbound;
  @Uint32() external int udpEspValidationFailuresOnInbound;
  @Uint32() external int replayCheckFailuresOnInbound;
  @Uint32() external int invalidClearTextInbound;
  @Uint32() external int saNotInitializedOnInbound;
  @Uint32() external int receiveOverIncorrectSaInbound;
  @Uint32() external int secureReceivesNotMatchingFilters;
}

class IPSEC_AGGREGATE_DROP_PACKET_STATISTICS1 extends Struct {
  @Uint32() external int invalidSpisOnInbound;
  @Uint32() external int decryptionFailuresOnInbound;
  @Uint32() external int authenticationFailuresOnInbound;
  @Uint32() external int udpEspValidationFailuresOnInbound;
  @Uint32() external int replayCheckFailuresOnInbound;
  @Uint32() external int invalidClearTextInbound;
  @Uint32() external int saNotInitializedOnInbound;
  @Uint32() external int receiveOverIncorrectSaInbound;
  @Uint32() external int secureReceivesNotMatchingFilters;
  @Uint32() external int totalDropPacketsInbound;
}

class IPSEC_TRAFFIC_STATISTICS0 extends Struct {
  @Uint64() external int encryptedByteCount;
  @Uint64() external int authenticatedAHByteCount;
  @Uint64() external int authenticatedESPByteCount;
  @Uint64() external int transportByteCount;
  @Uint64() external int tunnelByteCount;
  @Uint64() external int offloadByteCount;
}

class IPSEC_TRAFFIC_STATISTICS1 extends Struct {
  @Uint64() external int encryptedByteCount;
  @Uint64() external int authenticatedAHByteCount;
  @Uint64() external int authenticatedESPByteCount;
  @Uint64() external int transportByteCount;
  @Uint64() external int tunnelByteCount;
  @Uint64() external int offloadByteCount;
  @Uint64() external int totalSuccessfulPackets;
}

class IPSEC_STATISTICS0 extends Struct {
  external IPSEC_AGGREGATE_SA_STATISTICS0 aggregateSaStatistics;
  external IPSEC_ESP_DROP_PACKET_STATISTICS0 espDropPacketStatistics;
  external IPSEC_AH_DROP_PACKET_STATISTICS0 ahDropPacketStatistics;
  external IPSEC_AGGREGATE_DROP_PACKET_STATISTICS0 aggregateDropPacketStatistics;
  external IPSEC_TRAFFIC_STATISTICS0 inboundTrafficStatistics;
  external IPSEC_TRAFFIC_STATISTICS0 outboundTrafficStatistics;
}

class IPSEC_STATISTICS1 extends Struct {
  external IPSEC_AGGREGATE_SA_STATISTICS0 aggregateSaStatistics;
  external IPSEC_ESP_DROP_PACKET_STATISTICS0 espDropPacketStatistics;
  external IPSEC_AH_DROP_PACKET_STATISTICS0 ahDropPacketStatistics;
  external IPSEC_AGGREGATE_DROP_PACKET_STATISTICS1 aggregateDropPacketStatistics;
  external IPSEC_TRAFFIC_STATISTICS1 inboundTrafficStatistics;
  external IPSEC_TRAFFIC_STATISTICS1 outboundTrafficStatistics;
}

class IPSEC_SA_AUTH_INFORMATION0 extends Struct {
  external IPSEC_AUTH_TRANSFORM0 authTransform;
  external FWP_BYTE_BLOB authKey;
}

class IPSEC_SA_CIPHER_INFORMATION0 extends Struct {
  external IPSEC_CIPHER_TRANSFORM0 cipherTransform;
  external FWP_BYTE_BLOB cipherKey;
}

class IPSEC_SA_AUTH_AND_CIPHER_INFORMATION0 extends Struct {
  external IPSEC_SA_CIPHER_INFORMATION0 saCipherInformation;
  external IPSEC_SA_AUTH_INFORMATION0 saAuthInformation;
}

class IPSEC_SA0 extends Struct {
  @Uint32() external int spi;
  @Uint32() external int saTransformType;
  @Uint32() external int Anonymous;
}

class IPSEC_KEYMODULE_STATE0 extends Struct {
  external GUID keyModuleKey;
  external FWP_BYTE_BLOB stateBlob;
}

class IPSEC_TOKEN0 extends Struct {
  @Uint32() external int type;
  @Uint32() external int principal;
  @Uint32() external int mode;
  @Uint64() external int token;
}

class IPSEC_ID0 extends Struct {
  external Pointer<Utf16> mmTargetName;
  external Pointer<Utf16> emTargetName;
  @Uint32() external int numTokens;
  external Pointer<IPSEC_TOKEN0> tokens;
  @Uint64() external int explicitCredentials;
  @Uint64() external int logonId;
}

class IPSEC_SA_BUNDLE0 extends Struct {
  @Uint32() external int flags;
  external IPSEC_SA_LIFETIME0 lifetime;
  @Uint32() external int idleTimeoutSeconds;
  @Uint32() external int ndAllowClearTimeoutSeconds;
  external Pointer<IPSEC_ID0> ipsecId;
  @Uint32() external int napContext;
  @Uint32() external int qmSaId;
  @Uint32() external int numSAs;
  external Pointer<IPSEC_SA0> saList;
  external Pointer<IPSEC_KEYMODULE_STATE0> keyModuleState;
  @Uint32() external int ipVersion;
  @Uint32() external int Anonymous;
  @Uint64() external int mmSaId;
  @Uint32() external int pfsGroup;
}

class IPSEC_SA_BUNDLE1 extends Struct {
  @Uint32() external int flags;
  external IPSEC_SA_LIFETIME0 lifetime;
  @Uint32() external int idleTimeoutSeconds;
  @Uint32() external int ndAllowClearTimeoutSeconds;
  external Pointer<IPSEC_ID0> ipsecId;
  @Uint32() external int napContext;
  @Uint32() external int qmSaId;
  @Uint32() external int numSAs;
  external Pointer<IPSEC_SA0> saList;
  external Pointer<IPSEC_KEYMODULE_STATE0> keyModuleState;
  @Uint32() external int ipVersion;
  @Uint32() external int Anonymous;
  @Uint64() external int mmSaId;
  @Uint32() external int pfsGroup;
  external GUID saLookupContext;
  @Uint64() external int qmFilterId;
}

class IPSEC_TRAFFIC0 extends Struct {
  @Uint32() external int ipVersion;
  @Uint32() external int Anonymous1;
  @Uint32() external int Anonymous2;
  @Uint32() external int trafficType;
  @Uint32() external int Anonymous3;
  @Uint16() external int remotePort;
}

class IPSEC_TRAFFIC1 extends Struct {
  @Uint32() external int ipVersion;
  @Uint32() external int Anonymous1;
  @Uint32() external int Anonymous2;
  @Uint32() external int trafficType;
  @Uint32() external int Anonymous3;
  @Uint16() external int remotePort;
  @Uint16() external int localPort;
  @Uint8() external int ipProtocol;
  @Uint64() external int localIfLuid;
  @Uint32() external int realIfProfileId;
}

class IPSEC_V4_UDP_ENCAPSULATION0 extends Struct {
  @Uint16() external int localUdpEncapPort;
  @Uint16() external int remoteUdpEncapPort;
}

class IPSEC_GETSPI0 extends Struct {
  external IPSEC_TRAFFIC0 inboundIpsecTraffic;
  @Uint32() external int ipVersion;
  @Uint32() external int Anonymous;
  external Pointer<GUID> rngCryptoModuleID;
}

class IPSEC_GETSPI1 extends Struct {
  external IPSEC_TRAFFIC1 inboundIpsecTraffic;
  @Uint32() external int ipVersion;
  @Uint32() external int Anonymous;
  external Pointer<GUID> rngCryptoModuleID;
}

class IPSEC_SA_DETAILS0 extends Struct {
  @Uint32() external int ipVersion;
  @Uint32() external int saDirection;
  external IPSEC_TRAFFIC0 traffic;
  external IPSEC_SA_BUNDLE0 saBundle;
  @Uint32() external int Anonymous;
  external Pointer<FWPM_FILTER0> transportFilter;
}

class IPSEC_SA_DETAILS1 extends Struct {
  @Uint32() external int ipVersion;
  @Uint32() external int saDirection;
  external IPSEC_TRAFFIC1 traffic;
  external IPSEC_SA_BUNDLE1 saBundle;
  @Uint32() external int Anonymous;
  external Pointer<FWPM_FILTER0> transportFilter;
  external IPSEC_VIRTUAL_IF_TUNNEL_INFO0 virtualIfTunnelInfo;
}

class IPSEC_SA_CONTEXT0 extends Struct {
  @Uint64() external int saContextId;
  external Pointer<IPSEC_SA_DETAILS0> inboundSa;
  external Pointer<IPSEC_SA_DETAILS0> outboundSa;
}

class IPSEC_SA_CONTEXT1 extends Struct {
  @Uint64() external int saContextId;
  external Pointer<IPSEC_SA_DETAILS1> inboundSa;
  external Pointer<IPSEC_SA_DETAILS1> outboundSa;
}

class IPSEC_SA_CONTEXT_ENUM_TEMPLATE0 extends Struct {
  external FWP_CONDITION_VALUE0 localSubNet;
  external FWP_CONDITION_VALUE0 remoteSubNet;
}

class IPSEC_SA_ENUM_TEMPLATE0 extends Struct {
  @Uint32() external int saDirection;
}

class IPSEC_SA_CONTEXT_SUBSCRIPTION0 extends Struct {
  external Pointer<IPSEC_SA_CONTEXT_ENUM_TEMPLATE0> enumTemplate;
  @Uint32() external int flags;
  external GUID sessionKey;
}

class IPSEC_SA_CONTEXT_CHANGE0 extends Struct {
  @Uint32() external int changeType;
  @Uint64() external int saContextId;
}

class IPSEC_ADDRESS_INFO0 extends Struct {
  @Uint32() external int numV4Addresses;
  external Pointer<Uint32> v4Addresses;
  @Uint32() external int numV6Addresses;
  external Pointer<FWP_BYTE_ARRAY16> v6Addresses;
}

class IPSEC_DOSP_OPTIONS0 extends Struct {
  @Uint32() external int stateIdleTimeoutSeconds;
  @Uint32() external int perIPRateLimitQueueIdleTimeoutSeconds;
  @Uint8() external int ipV6IPsecUnauthDscp;
  @Uint32() external int ipV6IPsecUnauthRateLimitBytesPerSec;
  @Uint32() external int ipV6IPsecUnauthPerIPRateLimitBytesPerSec;
  @Uint8() external int ipV6IPsecAuthDscp;
  @Uint32() external int ipV6IPsecAuthRateLimitBytesPerSec;
  @Uint8() external int icmpV6Dscp;
  @Uint32() external int icmpV6RateLimitBytesPerSec;
  @Uint8() external int ipV6FilterExemptDscp;
  @Uint32() external int ipV6FilterExemptRateLimitBytesPerSec;
  @Uint8() external int defBlockExemptDscp;
  @Uint32() external int defBlockExemptRateLimitBytesPerSec;
  @Uint32() external int maxStateEntries;
  @Uint32() external int maxPerIPRateLimitQueues;
  @Uint32() external int flags;
  @Uint32() external int numPublicIFLuids;
  external Pointer<Uint64> publicIFLuids;
  @Uint32() external int numInternalIFLuids;
  external Pointer<Uint64> internalIFLuids;
  external FWP_V6_ADDR_AND_MASK publicV6AddrMask;
  external FWP_V6_ADDR_AND_MASK internalV6AddrMask;
}

class IPSEC_DOSP_STATISTICS0 extends Struct {
  @Uint64() external int totalStateEntriesCreated;
  @Uint64() external int currentStateEntries;
  @Uint64() external int totalInboundAllowedIPv6IPsecUnauthPkts;
  @Uint64() external int totalInboundRatelimitDiscardedIPv6IPsecUnauthPkts;
  @Uint64() external int totalInboundPerIPRatelimitDiscardedIPv6IPsecUnauthPkts;
  @Uint64() external int totalInboundOtherDiscardedIPv6IPsecUnauthPkts;
  @Uint64() external int totalInboundAllowedIPv6IPsecAuthPkts;
  @Uint64() external int totalInboundRatelimitDiscardedIPv6IPsecAuthPkts;
  @Uint64() external int totalInboundOtherDiscardedIPv6IPsecAuthPkts;
  @Uint64() external int totalInboundAllowedICMPv6Pkts;
  @Uint64() external int totalInboundRatelimitDiscardedICMPv6Pkts;
  @Uint64() external int totalInboundAllowedIPv6FilterExemptPkts;
  @Uint64() external int totalInboundRatelimitDiscardedIPv6FilterExemptPkts;
  @Uint64() external int totalInboundDiscardedIPv6FilterBlockPkts;
  @Uint64() external int totalInboundAllowedDefBlockExemptPkts;
  @Uint64() external int totalInboundRatelimitDiscardedDefBlockExemptPkts;
  @Uint64() external int totalInboundDiscardedDefBlockPkts;
  @Uint64() external int currentInboundIPv6IPsecUnauthPerIPRateLimitQueues;
}

class IPSEC_DOSP_STATE0 extends Struct {
  external __ubyte__ publicHostV6Addr;
  external __ubyte__ internalHostV6Addr;
  @Uint64() external int totalInboundIPv6IPsecAuthPackets;
  @Uint64() external int totalOutboundIPv6IPsecAuthPackets;
  @Uint32() external int durationSecs;
}

class IPSEC_DOSP_STATE_ENUM_TEMPLATE0 extends Struct {
  external FWP_V6_ADDR_AND_MASK publicV6AddrMask;
  external FWP_V6_ADDR_AND_MASK internalV6AddrMask;
}

class IPSEC_KEY_MANAGER0 extends Struct {
  external GUID keyManagerKey;
  external FWPM_DISPLAY_DATA0 displayData;
  @Uint32() external int flags;
  @Uint8() external int keyDictationTimeoutHint;
}

class FWPM_SESSION0 extends Struct {
  external GUID sessionKey;
  external FWPM_DISPLAY_DATA0 displayData;
  @Uint32() external int flags;
  @Uint32() external int txnWaitTimeoutInMSec;
  @Uint32() external int processId;
  external Pointer<SID> sid;
  external Pointer<Utf16> username;
  @Int32() external int kernelMode;
}

class FWPM_SESSION_ENUM_TEMPLATE0 extends Struct {
  @Uint64() external int reserved;
}

class FWPM_PROVIDER0 extends Struct {
  external GUID providerKey;
  external FWPM_DISPLAY_DATA0 displayData;
  @Uint32() external int flags;
  external FWP_BYTE_BLOB providerData;
  external Pointer<Utf16> serviceName;
}

class FWPM_PROVIDER_ENUM_TEMPLATE0 extends Struct {
  @Uint64() external int reserved;
}

class FWPM_PROVIDER_CHANGE0 extends Struct {
  @Uint32() external int changeType;
  external GUID providerKey;
}

class FWPM_PROVIDER_SUBSCRIPTION0 extends Struct {
  external Pointer<FWPM_PROVIDER_ENUM_TEMPLATE0> enumTemplate;
  @Uint32() external int flags;
  external GUID sessionKey;
}

class FWPM_CLASSIFY_OPTION0 extends Struct {
  @Uint32() external int type;
  external FWP_VALUE0 value;
}

class FWPM_CLASSIFY_OPTIONS0 extends Struct {
  @Uint32() external int numOptions;
  external Pointer<FWPM_CLASSIFY_OPTION0> options;
}

class FWPM_PROVIDER_CONTEXT0 extends Struct {
  external GUID providerContextKey;
  external FWPM_DISPLAY_DATA0 displayData;
  @Uint32() external int flags;
  external Pointer<GUID> providerKey;
  external FWP_BYTE_BLOB providerData;
  @Uint32() external int type;
  @Uint32() external int Anonymous;
  @Uint64() external int providerContextId;
}

class FWPM_PROVIDER_CONTEXT1 extends Struct {
  external GUID providerContextKey;
  external FWPM_DISPLAY_DATA0 displayData;
  @Uint32() external int flags;
  external Pointer<GUID> providerKey;
  external FWP_BYTE_BLOB providerData;
  @Uint32() external int type;
  @Uint32() external int Anonymous;
  @Uint64() external int providerContextId;
}

class FWPM_PROVIDER_CONTEXT2 extends Struct {
  external GUID providerContextKey;
  external FWPM_DISPLAY_DATA0 displayData;
  @Uint32() external int flags;
  external Pointer<GUID> providerKey;
  external FWP_BYTE_BLOB providerData;
  @Uint32() external int type;
  @Uint32() external int Anonymous;
  @Uint64() external int providerContextId;
}

class FWPM_PROVIDER_CONTEXT3_ extends Struct {
  external GUID providerContextKey;
  external FWPM_DISPLAY_DATA0 displayData;
  @Uint32() external int flags;
  external Pointer<GUID> providerKey;
  external FWP_BYTE_BLOB providerData;
  @Uint32() external int type;
  @Uint32() external int Anonymous;
  @Uint64() external int providerContextId;
}

class FWPM_PROVIDER_CONTEXT_ENUM_TEMPLATE0 extends Struct {
  external Pointer<GUID> providerKey;
  @Uint32() external int providerContextType;
}

class FWPM_PROVIDER_CONTEXT_CHANGE0 extends Struct {
  @Uint32() external int changeType;
  external GUID providerContextKey;
  @Uint64() external int providerContextId;
}

class FWPM_PROVIDER_CONTEXT_SUBSCRIPTION0 extends Struct {
  external Pointer<FWPM_PROVIDER_CONTEXT_ENUM_TEMPLATE0> enumTemplate;
  @Uint32() external int flags;
  external GUID sessionKey;
}

class FWPM_SUBLAYER0 extends Struct {
  external GUID subLayerKey;
  external FWPM_DISPLAY_DATA0 displayData;
  @Uint32() external int flags;
  external Pointer<GUID> providerKey;
  external FWP_BYTE_BLOB providerData;
  @Uint16() external int weight;
}

class FWPM_SUBLAYER_ENUM_TEMPLATE0 extends Struct {
  external Pointer<GUID> providerKey;
}

class FWPM_SUBLAYER_CHANGE0 extends Struct {
  @Uint32() external int changeType;
  external GUID subLayerKey;
}

class FWPM_SUBLAYER_SUBSCRIPTION0 extends Struct {
  external Pointer<FWPM_SUBLAYER_ENUM_TEMPLATE0> enumTemplate;
  @Uint32() external int flags;
  external GUID sessionKey;
}

class FWPM_FIELD0 extends Struct {
  external Pointer<GUID> fieldKey;
  @Uint32() external int type;
  @Uint32() external int dataType;
}

class FWPM_LAYER0 extends Struct {
  external GUID layerKey;
  external FWPM_DISPLAY_DATA0 displayData;
  @Uint32() external int flags;
  @Uint32() external int numFields;
  external Pointer<FWPM_FIELD0> field;
  external GUID defaultSubLayerKey;
  @Uint16() external int layerId;
}

class FWPM_LAYER_ENUM_TEMPLATE0 extends Struct {
  @Uint64() external int reserved;
}

class FWPM_CALLOUT0 extends Struct {
  external GUID calloutKey;
  external FWPM_DISPLAY_DATA0 displayData;
  @Uint32() external int flags;
  external Pointer<GUID> providerKey;
  external FWP_BYTE_BLOB providerData;
  external GUID applicableLayer;
  @Uint32() external int calloutId;
}

class FWPM_CALLOUT_ENUM_TEMPLATE0 extends Struct {
  external Pointer<GUID> providerKey;
  external GUID layerKey;
}

class FWPM_CALLOUT_CHANGE0 extends Struct {
  @Uint32() external int changeType;
  external GUID calloutKey;
  @Uint32() external int calloutId;
}

class FWPM_CALLOUT_SUBSCRIPTION0 extends Struct {
  external Pointer<FWPM_CALLOUT_ENUM_TEMPLATE0> enumTemplate;
  @Uint32() external int flags;
  external GUID sessionKey;
}

class FWPM_ACTION0 extends Struct {
  @Uint32() external int type;
  @Uint32() external int Anonymous;
}

class FWPM_FILTER_CONDITION0 extends Struct {
  external GUID fieldKey;
  @Uint32() external int matchType;
  external FWP_CONDITION_VALUE0 conditionValue;
}

class FWPM_FILTER0 extends Struct {
  external GUID filterKey;
  external FWPM_DISPLAY_DATA0 displayData;
  @Uint32() external int flags;
  external Pointer<GUID> providerKey;
  external FWP_BYTE_BLOB providerData;
  external GUID layerKey;
  external GUID subLayerKey;
  external FWP_VALUE0 weight;
  @Uint32() external int numFilterConditions;
  external Pointer<FWPM_FILTER_CONDITION0> filterCondition;
  external FWPM_ACTION0 action;
  @Uint32() external int Anonymous;
  external Pointer<GUID> reserved;
  @Uint64() external int filterId;
  external FWP_VALUE0 effectiveWeight;
}

class FWPM_FILTER_ENUM_TEMPLATE0 extends Struct {
  external Pointer<GUID> providerKey;
  external GUID layerKey;
  @Uint32() external int enumType;
  @Uint32() external int flags;
  external Pointer<FWPM_PROVIDER_CONTEXT_ENUM_TEMPLATE0> providerContextTemplate;
  @Uint32() external int numFilterConditions;
  external Pointer<FWPM_FILTER_CONDITION0> filterCondition;
  @Uint32() external int actionMask;
  external Pointer<GUID> calloutKey;
}

class FWPM_FILTER_CHANGE0 extends Struct {
  @Uint32() external int changeType;
  external GUID filterKey;
  @Uint64() external int filterId;
}

class FWPM_FILTER_SUBSCRIPTION0 extends Struct {
  external Pointer<FWPM_FILTER_ENUM_TEMPLATE0> enumTemplate;
  @Uint32() external int flags;
  external GUID sessionKey;
}

class FWPM_LAYER_STATISTICS0 extends Struct {
  external GUID layerId;
  @Uint32() external int classifyPermitCount;
  @Uint32() external int classifyBlockCount;
  @Uint32() external int classifyVetoCount;
  @Uint32() external int numCacheEntries;
}

class FWPM_STATISTICS0 extends Struct {
  @Uint32() external int numLayerStatistics;
  external Pointer<FWPM_LAYER_STATISTICS0> layerStatistics;
  @Uint32() external int inboundAllowedConnectionsV4;
  @Uint32() external int inboundBlockedConnectionsV4;
  @Uint32() external int outboundAllowedConnectionsV4;
  @Uint32() external int outboundBlockedConnectionsV4;
  @Uint32() external int inboundAllowedConnectionsV6;
  @Uint32() external int inboundBlockedConnectionsV6;
  @Uint32() external int outboundAllowedConnectionsV6;
  @Uint32() external int outboundBlockedConnectionsV6;
  @Uint32() external int inboundActiveConnectionsV4;
  @Uint32() external int outboundActiveConnectionsV4;
  @Uint32() external int inboundActiveConnectionsV6;
  @Uint32() external int outboundActiveConnectionsV6;
  @Uint64() external int reauthDirInbound;
  @Uint64() external int reauthDirOutbound;
  @Uint64() external int reauthFamilyV4;
  @Uint64() external int reauthFamilyV6;
  @Uint64() external int reauthProtoOther;
  @Uint64() external int reauthProtoIPv4;
  @Uint64() external int reauthProtoIPv6;
  @Uint64() external int reauthProtoICMP;
  @Uint64() external int reauthProtoICMP6;
  @Uint64() external int reauthProtoUDP;
  @Uint64() external int reauthProtoTCP;
  @Uint64() external int reauthReasonPolicyChange;
  @Uint64() external int reauthReasonNewArrivalInterface;
  @Uint64() external int reauthReasonNewNextHopInterface;
  @Uint64() external int reauthReasonProfileCrossing;
  @Uint64() external int reauthReasonClassifyCompletion;
  @Uint64() external int reauthReasonIPSecPropertiesChanged;
  @Uint64() external int reauthReasonMidStreamInspection;
  @Uint64() external int reauthReasonSocketPropertyChanged;
  @Uint64() external int reauthReasonNewInboundMCastBCastPacket;
  @Uint64() external int reauthReasonEDPPolicyChanged;
  @Uint64() external int reauthReasonPreclassifyLocalAddrLayerChange;
  @Uint64() external int reauthReasonPreclassifyRemoteAddrLayerChange;
  @Uint64() external int reauthReasonPreclassifyLocalPortLayerChange;
  @Uint64() external int reauthReasonPreclassifyRemotePortLayerChange;
  @Uint64() external int reauthReasonProxyHandleChanged;
}

class FWPM_NET_EVENT_HEADER0 extends Struct {
  external FILETIME timeStamp;
  @Uint32() external int flags;
  @Uint32() external int ipVersion;
  @Uint8() external int ipProtocol;
  @Uint32() external int Anonymous1;
  @Uint32() external int Anonymous2;
  @Uint16() external int localPort;
  @Uint16() external int remotePort;
  @Uint32() external int scopeId;
  external FWP_BYTE_BLOB appId;
  external Pointer<SID> userId;
}

class FWPM_NET_EVENT_HEADER1 extends Struct {
  external FILETIME timeStamp;
  @Uint32() external int flags;
  @Uint32() external int ipVersion;
  @Uint8() external int ipProtocol;
  @Uint32() external int Anonymous1;
  @Uint32() external int Anonymous2;
  @Uint16() external int localPort;
  @Uint16() external int remotePort;
  @Uint32() external int scopeId;
  external FWP_BYTE_BLOB appId;
  external Pointer<SID> userId;
  @Uint32() external int Anonymous3;
}

class FWPM_NET_EVENT_HEADER2 extends Struct {
  external FILETIME timeStamp;
  @Uint32() external int flags;
  @Uint32() external int ipVersion;
  @Uint8() external int ipProtocol;
  @Uint32() external int Anonymous1;
  @Uint32() external int Anonymous2;
  @Uint16() external int localPort;
  @Uint16() external int remotePort;
  @Uint32() external int scopeId;
  external FWP_BYTE_BLOB appId;
  external Pointer<SID> userId;
  @Uint32() external int addressFamily;
  external Pointer<SID> packageSid;
}

class FWPM_NET_EVENT_HEADER3 extends Struct {
  external FILETIME timeStamp;
  @Uint32() external int flags;
  @Uint32() external int ipVersion;
  @Uint8() external int ipProtocol;
  @Uint32() external int Anonymous1;
  @Uint32() external int Anonymous2;
  @Uint16() external int localPort;
  @Uint16() external int remotePort;
  @Uint32() external int scopeId;
  external FWP_BYTE_BLOB appId;
  external Pointer<SID> userId;
  @Uint32() external int addressFamily;
  external Pointer<SID> packageSid;
  external Pointer<Utf16> enterpriseId;
  @Uint64() external int policyFlags;
  external FWP_BYTE_BLOB effectiveName;
}

class FWPM_NET_EVENT_IKEEXT_MM_FAILURE0 extends Struct {
  @Uint32() external int failureErrorCode;
  @Uint32() external int failurePoint;
  @Uint32() external int flags;
  @Uint32() external int keyingModuleType;
  @Uint32() external int mmState;
  @Uint32() external int saRole;
  @Uint32() external int mmAuthMethod;
  external __ubyte__ endCertHash;
  @Uint64() external int mmId;
  @Uint64() external int mmFilterId;
}

class FWPM_NET_EVENT_IKEEXT_MM_FAILURE1 extends Struct {
  @Uint32() external int failureErrorCode;
  @Uint32() external int failurePoint;
  @Uint32() external int flags;
  @Uint32() external int keyingModuleType;
  @Uint32() external int mmState;
  @Uint32() external int saRole;
  @Uint32() external int mmAuthMethod;
  external __ubyte__ endCertHash;
  @Uint64() external int mmId;
  @Uint64() external int mmFilterId;
  external Pointer<Utf16> localPrincipalNameForAuth;
  external Pointer<Utf16> remotePrincipalNameForAuth;
  @Uint32() external int numLocalPrincipalGroupSids;
  external Pointer<Pointer<Utf16>> localPrincipalGroupSids;
  @Uint32() external int numRemotePrincipalGroupSids;
  external Pointer<Pointer<Utf16>> remotePrincipalGroupSids;
}

class FWPM_NET_EVENT_IKEEXT_MM_FAILURE2_ extends Struct {
  @Uint32() external int failureErrorCode;
  @Uint32() external int failurePoint;
  @Uint32() external int flags;
  @Uint32() external int keyingModuleType;
  @Uint32() external int mmState;
  @Uint32() external int saRole;
  @Uint32() external int mmAuthMethod;
  external __ubyte__ endCertHash;
  @Uint64() external int mmId;
  @Uint64() external int mmFilterId;
  external Pointer<Utf16> localPrincipalNameForAuth;
  external Pointer<Utf16> remotePrincipalNameForAuth;
  @Uint32() external int numLocalPrincipalGroupSids;
  external Pointer<Pointer<Utf16>> localPrincipalGroupSids;
  @Uint32() external int numRemotePrincipalGroupSids;
  external Pointer<Pointer<Utf16>> remotePrincipalGroupSids;
  external Pointer<GUID> providerContextKey;
}

class FWPM_NET_EVENT_IKEEXT_QM_FAILURE0 extends Struct {
  @Uint32() external int failureErrorCode;
  @Uint32() external int failurePoint;
  @Uint32() external int keyingModuleType;
  @Uint32() external int qmState;
  @Uint32() external int saRole;
  @Uint32() external int saTrafficType;
  @Uint32() external int Anonymous1;
  @Uint32() external int Anonymous2;
  @Uint64() external int qmFilterId;
}

class FWPM_NET_EVENT_IKEEXT_QM_FAILURE1_ extends Struct {
  @Uint32() external int failureErrorCode;
  @Uint32() external int failurePoint;
  @Uint32() external int keyingModuleType;
  @Uint32() external int qmState;
  @Uint32() external int saRole;
  @Uint32() external int saTrafficType;
  @Uint32() external int Anonymous1;
  @Uint32() external int Anonymous2;
  @Uint64() external int qmFilterId;
  @Uint64() external int mmSaLuid;
  external GUID mmProviderContextKey;
}

class FWPM_NET_EVENT_IKEEXT_EM_FAILURE0 extends Struct {
  @Uint32() external int failureErrorCode;
  @Uint32() external int failurePoint;
  @Uint32() external int flags;
  @Uint32() external int emState;
  @Uint32() external int saRole;
  @Uint32() external int emAuthMethod;
  external __ubyte__ endCertHash;
  @Uint64() external int mmId;
  @Uint64() external int qmFilterId;
}

class FWPM_NET_EVENT_IKEEXT_EM_FAILURE1 extends Struct {
  @Uint32() external int failureErrorCode;
  @Uint32() external int failurePoint;
  @Uint32() external int flags;
  @Uint32() external int emState;
  @Uint32() external int saRole;
  @Uint32() external int emAuthMethod;
  external __ubyte__ endCertHash;
  @Uint64() external int mmId;
  @Uint64() external int qmFilterId;
  external Pointer<Utf16> localPrincipalNameForAuth;
  external Pointer<Utf16> remotePrincipalNameForAuth;
  @Uint32() external int numLocalPrincipalGroupSids;
  external Pointer<Pointer<Utf16>> localPrincipalGroupSids;
  @Uint32() external int numRemotePrincipalGroupSids;
  external Pointer<Pointer<Utf16>> remotePrincipalGroupSids;
  @Uint32() external int saTrafficType;
}

class FWPM_NET_EVENT_CLASSIFY_DROP0 extends Struct {
  @Uint64() external int filterId;
  @Uint16() external int layerId;
}

class FWPM_NET_EVENT_CLASSIFY_DROP1 extends Struct {
  @Uint64() external int filterId;
  @Uint16() external int layerId;
  @Uint32() external int reauthReason;
  @Uint32() external int originalProfile;
  @Uint32() external int currentProfile;
  @Uint32() external int msFwpDirection;
  @Int32() external int isLoopback;
}

class FWPM_NET_EVENT_CLASSIFY_DROP2 extends Struct {
  @Uint64() external int filterId;
  @Uint16() external int layerId;
  @Uint32() external int reauthReason;
  @Uint32() external int originalProfile;
  @Uint32() external int currentProfile;
  @Uint32() external int msFwpDirection;
  @Int32() external int isLoopback;
  external FWP_BYTE_BLOB vSwitchId;
  @Uint32() external int vSwitchSourcePort;
  @Uint32() external int vSwitchDestinationPort;
}

class FWPM_NET_EVENT_CLASSIFY_DROP_MAC0 extends Struct {
  external FWP_BYTE_ARRAY6 localMacAddr;
  external FWP_BYTE_ARRAY6 remoteMacAddr;
  @Uint32() external int mediaType;
  @Uint32() external int ifType;
  @Uint16() external int etherType;
  @Uint32() external int ndisPortNumber;
  @Uint32() external int reserved;
  @Uint16() external int vlanTag;
  @Uint64() external int ifLuid;
  @Uint64() external int filterId;
  @Uint16() external int layerId;
  @Uint32() external int reauthReason;
  @Uint32() external int originalProfile;
  @Uint32() external int currentProfile;
  @Uint32() external int msFwpDirection;
  @Int32() external int isLoopback;
  external FWP_BYTE_BLOB vSwitchId;
  @Uint32() external int vSwitchSourcePort;
  @Uint32() external int vSwitchDestinationPort;
}

class FWPM_NET_EVENT_CLASSIFY_ALLOW0 extends Struct {
  @Uint64() external int filterId;
  @Uint16() external int layerId;
  @Uint32() external int reauthReason;
  @Uint32() external int originalProfile;
  @Uint32() external int currentProfile;
  @Uint32() external int msFwpDirection;
  @Int32() external int isLoopback;
}

class FWPM_NET_EVENT_IPSEC_KERNEL_DROP0 extends Struct {
  @Int32() external int failureStatus;
  @Uint32() external int direction;
  @Uint32() external int spi;
  @Uint64() external int filterId;
  @Uint16() external int layerId;
}

class FWPM_NET_EVENT_IPSEC_DOSP_DROP0 extends Struct {
  @Uint32() external int ipVersion;
  @Uint32() external int Anonymous1;
  @Uint32() external int Anonymous2;
  @Int32() external int failureStatus;
  @Uint32() external int direction;
}

class FWPM_NET_EVENT_CAPABILITY_DROP0 extends Struct {
  @Uint32() external int networkCapabilityId;
  @Uint64() external int filterId;
  @Int32() external int isLoopback;
}

class FWPM_NET_EVENT_CAPABILITY_ALLOW0 extends Struct {
  @Uint32() external int networkCapabilityId;
  @Uint64() external int filterId;
  @Int32() external int isLoopback;
}

class FWPM_NET_EVENT_LPM_PACKET_ARRIVAL0_ extends Struct {
  @Uint32() external int spi;
}

class FWPM_NET_EVENT0 extends Struct {
  external FWPM_NET_EVENT_HEADER0 header;
  @Uint32() external int type;
  @Uint32() external int Anonymous;
}

class FWPM_NET_EVENT1 extends Struct {
  external FWPM_NET_EVENT_HEADER1 header;
  @Uint32() external int type;
  @Uint32() external int Anonymous;
}

class FWPM_NET_EVENT2 extends Struct {
  external FWPM_NET_EVENT_HEADER2 header;
  @Uint32() external int type;
  @Uint32() external int Anonymous;
}

class FWPM_NET_EVENT3 extends Struct {
  external FWPM_NET_EVENT_HEADER3 header;
  @Uint32() external int type;
  @Uint32() external int Anonymous;
}

class FWPM_NET_EVENT4_ extends Struct {
  external FWPM_NET_EVENT_HEADER3 header;
  @Uint32() external int type;
  @Uint32() external int Anonymous;
}

class FWPM_NET_EVENT5_ extends Struct {
  external FWPM_NET_EVENT_HEADER3 header;
  @Uint32() external int type;
  @Uint32() external int Anonymous;
}

class FWPM_NET_EVENT_ENUM_TEMPLATE0 extends Struct {
  external FILETIME startTime;
  external FILETIME endTime;
  @Uint32() external int numFilterConditions;
  external Pointer<FWPM_FILTER_CONDITION0> filterCondition;
}

class FWPM_NET_EVENT_SUBSCRIPTION0 extends Struct {
  external Pointer<FWPM_NET_EVENT_ENUM_TEMPLATE0> enumTemplate;
  @Uint32() external int flags;
  external GUID sessionKey;
}

class FWPM_SYSTEM_PORTS_BY_TYPE0 extends Struct {
  @Uint32() external int type;
  @Uint32() external int numPorts;
  external Pointer<Uint16> ports;
}

class FWPM_SYSTEM_PORTS0 extends Struct {
  @Uint32() external int numTypes;
  external Pointer<FWPM_SYSTEM_PORTS_BY_TYPE0> types;
}

class FWPM_CONNECTION0 extends Struct {
  @Uint64() external int connectionId;
  @Uint32() external int ipVersion;
  @Uint32() external int Anonymous1;
  @Uint32() external int Anonymous2;
  external Pointer<GUID> providerKey;
  @Uint32() external int ipsecTrafficModeType;
  @Uint32() external int keyModuleType;
  external IKEEXT_PROPOSAL0 mmCrypto;
  external IKEEXT_CREDENTIAL2 mmPeer;
  external IKEEXT_CREDENTIAL2 emPeer;
  @Uint64() external int bytesTransferredIn;
  @Uint64() external int bytesTransferredOut;
  @Uint64() external int bytesTransferredTotal;
  external FILETIME startSysTime;
}

class FWPM_CONNECTION_ENUM_TEMPLATE0 extends Struct {
  @Uint64() external int connectionId;
  @Uint32() external int flags;
}

class FWPM_CONNECTION_SUBSCRIPTION0 extends Struct {
  external Pointer<FWPM_CONNECTION_ENUM_TEMPLATE0> enumTemplate;
  @Uint32() external int flags;
  external GUID sessionKey;
}

class FWPM_VSWITCH_EVENT0 extends Struct {
  @Uint32() external int eventType;
  external Pointer<Utf16> vSwitchId;
  @Uint32() external int Anonymous;
}

class FWPM_VSWITCH_EVENT_SUBSCRIPTION0 extends Struct {
  @Uint32() external int flags;
  external GUID sessionKey;
}

class IPSEC_KEY_MANAGER_CALLBACKS0 extends Struct {
  external GUID reserved;
  @Uint32() external int flags;
  external IPSEC_KEY_MANAGER_KEY_DICTATION_CHECK0 keyDictationCheck;
  external IPSEC_KEY_MANAGER_DICTATE_KEY0 keyDictation;
  external IPSEC_KEY_MANAGER_NOTIFY_KEY0 keyNotify;
}

class DL_OUI extends Struct {
  external __ubyte__ Byte;
  @Uint32() external int Anonymous;
}

class DL_EI48 extends Struct {
  external __ubyte__ Byte;
}

class DL_EUI48 extends Struct {
  external __ubyte__ Byte;
  @Uint32() external int Anonymous;
}

class DL_EI64 extends Struct {
  external __ubyte__ Byte;
}

class DL_EUI64 extends Struct {
  external __ubyte__ Byte;
  @Uint64() external int Value;
  @Uint32() external int Anonymous;
}

class SNAP_HEADER extends Struct {
  @Uint8() external int Dsap;
  @Uint8() external int Ssap;
  @Uint8() external int Control;
  external __ubyte__ Oui;
  @Uint16() external int Type;
}

class ETHERNET_HEADER extends Struct {
  external DL_EUI48 Destination;
  external DL_EUI48 Source;
  @Uint32() external int Anonymous;
}

class VLAN_TAG extends Struct {
  @Uint32() external int Anonymous;
  @Uint16() external int Type;
}

class ICMP_HEADER extends Struct {
  @Uint8() external int Type;
  @Uint8() external int Code;
  @Uint16() external int Checksum;
}

class ICMP_MESSAGE extends Struct {
  external ICMP_HEADER Header;
  @Uint32() external int Data;
}

class IPV4_HEADER extends Struct {
  @Uint32() external int Anonymous1;
  @Uint32() external int Anonymous2;
  @Uint16() external int TotalLength;
  @Uint16() external int Identification;
  @Uint32() external int Anonymous3;
  @Uint8() external int TimeToLive;
  @Uint8() external int Protocol;
  @Uint16() external int HeaderChecksum;
  external in_addr SourceAddress;
  external in_addr DestinationAddress;
}

class IPV4_OPTION_HEADER extends Struct {
  @Uint32() external int Anonymous;
  @Uint8() external int OptionLength;
}

class IPV4_TIMESTAMP_OPTION extends Struct {
  external IPV4_OPTION_HEADER OptionHeader;
  @Uint8() external int Pointer;
  @Uint32() external int Anonymous;
}

class IPV4_ROUTING_HEADER extends Struct {
  external IPV4_OPTION_HEADER OptionHeader;
  @Uint8() external int Pointer;
}

class ICMPV4_ROUTER_SOLICIT extends Struct {
  external ICMP_MESSAGE RsHeader;
}

class ICMPV4_ROUTER_ADVERT_HEADER extends Struct {
  external ICMP_MESSAGE RaHeader;
}

class ICMPV4_ROUTER_ADVERT_ENTRY extends Struct {
  external in_addr RouterAdvertAddr;
  @Int32() external int PreferenceLevel;
}

class ICMPV4_TIMESTAMP_MESSAGE extends Struct {
  external ICMP_MESSAGE Header;
  @Uint32() external int OriginateTimestamp;
  @Uint32() external int ReceiveTimestamp;
  @Uint32() external int TransmitTimestamp;
}

class ICMPV4_ADDRESS_MASK_MESSAGE extends Struct {
  external ICMP_MESSAGE Header;
  @Uint32() external int AddressMask;
}

class ARP_HEADER extends Struct {
  @Uint16() external int HardwareAddressSpace;
  @Uint16() external int ProtocolAddressSpace;
  @Uint8() external int HardwareAddressLength;
  @Uint8() external int ProtocolAddressLength;
  @Uint16() external int Opcode;
  external __ubyte__ SenderHardwareAddress;
}

class IGMP_HEADER extends Struct {
  @Uint32() external int Anonymous1;
  @Uint32() external int Anonymous2;
  @Uint16() external int Checksum;
  external in_addr MulticastAddress;
}

class IGMPV3_QUERY_HEADER extends Struct {
  @Uint8() external int Type;
  @Uint32() external int Anonymous1;
  @Uint16() external int Checksum;
  external in_addr MulticastAddress;
  @Uint8() external int _bitfield;
  @Uint32() external int Anonymous2;
  @Uint16() external int SourceCount;
}

class IGMPV3_REPORT_RECORD_HEADER extends Struct {
  @Uint8() external int Type;
  @Uint8() external int AuxillaryDataLength;
  @Uint16() external int SourceCount;
  external in_addr MulticastAddress;
}

class IGMPV3_REPORT_HEADER extends Struct {
  @Uint8() external int Type;
  @Uint8() external int Reserved;
  @Uint16() external int Checksum;
  @Uint16() external int Reserved2;
  @Uint16() external int RecordCount;
}

class IPV6_HEADER extends Struct {
  @Uint32() external int Anonymous;
  @Uint16() external int PayloadLength;
  @Uint8() external int NextHeader;
  @Uint8() external int HopLimit;
  external in6_addr SourceAddress;
  external in6_addr DestinationAddress;
}

class IPV6_FRAGMENT_HEADER extends Struct {
  @Uint8() external int NextHeader;
  @Uint8() external int Reserved;
  @Uint32() external int Anonymous;
  @Uint32() external int Id;
}

class IPV6_EXTENSION_HEADER extends Struct {
  @Uint8() external int NextHeader;
  @Uint8() external int Length;
}

class IPV6_OPTION_HEADER extends Struct {
  @Uint8() external int Type;
  @Uint8() external int DataLength;
}

class IPV6_OPTION_JUMBOGRAM extends Struct {
  external IPV6_OPTION_HEADER Header;
  external __ubyte__ JumbogramLength;
}

class IPV6_OPTION_ROUTER_ALERT extends Struct {
  external IPV6_OPTION_HEADER Header;
  external __ubyte__ Value;
}

class IPV6_ROUTING_HEADER extends Struct {
  @Uint8() external int NextHeader;
  @Uint8() external int Length;
  @Uint8() external int RoutingType;
  @Uint8() external int SegmentsLeft;
  external __ubyte__ Reserved;
}

class nd_router_solicit extends Struct {
  external ICMP_MESSAGE nd_rs_hdr;
}

class nd_router_advert extends Struct {
  external ICMP_MESSAGE nd_ra_hdr;
  @Uint32() external int nd_ra_reachable;
  @Uint32() external int nd_ra_retransmit;
}

class IPV6_ROUTER_ADVERTISEMENT_FLAGS extends Struct {
  @Uint32() external int Anonymous;
  @Uint8() external int Value;
}

class nd_neighbor_solicit extends Struct {
  external ICMP_MESSAGE nd_ns_hdr;
  external in6_addr nd_ns_target;
}

class nd_neighbor_advert extends Struct {
  external ICMP_MESSAGE nd_na_hdr;
  external in6_addr nd_na_target;
}

class IPV6_NEIGHBOR_ADVERTISEMENT_FLAGS extends Struct {
  @Uint32() external int Anonymous;
  @Uint32() external int Value;
}

class nd_redirect extends Struct {
  external ICMP_MESSAGE nd_rd_hdr;
  external in6_addr nd_rd_target;
  external in6_addr nd_rd_dst;
}

class nd_opt_hdr extends Struct {
  @Uint8() external int nd_opt_type;
  @Uint8() external int nd_opt_len;
}

class nd_opt_prefix_info extends Struct {
  @Uint8() external int nd_opt_pi_type;
  @Uint8() external int nd_opt_pi_len;
  @Uint8() external int nd_opt_pi_prefix_len;
  @Uint32() external int Anonymous1;
  @Uint32() external int nd_opt_pi_valid_time;
  @Uint32() external int nd_opt_pi_preferred_time;
  @Uint32() external int Anonymous2;
  external in6_addr nd_opt_pi_prefix;
}

class nd_opt_rd_hdr extends Struct {
  @Uint8() external int nd_opt_rh_type;
  @Uint8() external int nd_opt_rh_len;
  @Uint16() external int nd_opt_rh_reserved1;
  @Uint32() external int nd_opt_rh_reserved2;
}

class nd_opt_mtu extends Struct {
  @Uint8() external int nd_opt_mtu_type;
  @Uint8() external int nd_opt_mtu_len;
  @Uint16() external int nd_opt_mtu_reserved;
  @Uint32() external int nd_opt_mtu_mtu;
}

class nd_opt_route_info extends Struct {
  @Uint8() external int nd_opt_ri_type;
  @Uint8() external int nd_opt_ri_len;
  @Uint8() external int nd_opt_ri_prefix_len;
  @Uint32() external int Anonymous;
  @Uint32() external int nd_opt_ri_route_lifetime;
  external in6_addr nd_opt_ri_prefix;
}

class nd_opt_rdnss extends Struct {
  @Uint8() external int nd_opt_rdnss_type;
  @Uint8() external int nd_opt_rdnss_len;
  @Uint16() external int nd_opt_rdnss_reserved;
  @Uint32() external int nd_opt_rdnss_lifetime;
}

class nd_opt_dnssl extends Struct {
  @Uint8() external int nd_opt_dnssl_type;
  @Uint8() external int nd_opt_dnssl_len;
  @Uint16() external int nd_opt_dnssl_reserved;
  @Uint32() external int nd_opt_dnssl_lifetime;
}

class MLD_HEADER extends Struct {
  external ICMP_HEADER IcmpHeader;
  @Uint16() external int MaxRespTime;
  @Uint16() external int Reserved;
  external in6_addr MulticastAddress;
}

class MLDV2_QUERY_HEADER extends Struct {
  external ICMP_HEADER IcmpHeader;
  @Uint32() external int Anonymous1;
  @Uint16() external int Reserved;
  external in6_addr MulticastAddress;
  @Uint8() external int _bitfield;
  @Uint32() external int Anonymous2;
  @Uint16() external int SourceCount;
}

class MLDV2_REPORT_RECORD_HEADER extends Struct {
  @Uint8() external int Type;
  @Uint8() external int AuxillaryDataLength;
  @Uint16() external int SourceCount;
  external in6_addr MulticastAddress;
}

class MLDV2_REPORT_HEADER extends Struct {
  external ICMP_HEADER IcmpHeader;
  @Uint16() external int Reserved;
  @Uint16() external int RecordCount;
}

class tcp_hdr extends Struct {
  @Uint16() external int th_sport;
  @Uint16() external int th_dport;
  @Uint32() external int th_seq;
  @Uint32() external int th_ack;
  @Uint8() external int _bitfield;
  @Uint8() external int th_flags;
  @Uint16() external int th_win;
  @Uint16() external int th_sum;
  @Uint16() external int th_urp;
}

class tcp_opt_mss extends Struct {
  @Uint8() external int Kind;
  @Uint8() external int Length;
  @Uint16() external int Mss;
}

class tcp_opt_ws extends Struct {
  @Uint8() external int Kind;
  @Uint8() external int Length;
  @Uint8() external int ShiftCnt;
}

class tcp_opt_sack_permitted extends Struct {
  @Uint8() external int Kind;
  @Uint8() external int Length;
}

class tcp_opt_sack extends Struct {
  @Uint8() external int Kind;
  @Uint8() external int Length;
  external ____ Block;
}

class tcp_opt_ts extends Struct {
  @Uint8() external int Kind;
  @Uint8() external int Length;
  @Uint32() external int Val;
  @Uint32() external int EcR;
}

class tcp_opt_unknown extends Struct {
  @Uint8() external int Kind;
  @Uint8() external int Length;
}

class tcp_opt_fastopen extends Struct {
  @Uint8() external int Kind;
  @Uint8() external int Length;
  external __ubyte__ Cookie;
}

class DL_TUNNEL_ADDRESS extends Struct {
  @Uint32() external int CompartmentId;
  external SCOPE_ID ScopeId;
  external __ubyte__ IpAddress;
}

class DL_TEREDO_ADDRESS extends Struct {
  external __ubyte__ Reserved;
  @Uint32() external int Anonymous;
}

class DL_TEREDO_ADDRESS_PRV extends Struct {
  external __ubyte__ Reserved;
  @Uint32() external int Anonymous;
}

class IPTLS_METADATA extends Struct {
  @Uint64() external int SequenceNumber;
}

class NPI_MODULEID extends Struct {
  @Uint16() external int Length;
  @Uint32() external int Type;
  @Uint32() external int Anonymous;
}

