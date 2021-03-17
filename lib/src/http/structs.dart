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

class HTTP_PROPERTY_FLAGS extends Struct {
  @Uint32() external int _bitfield;
}

class HTTP_STATE_INFO extends Struct {
  external HTTP_PROPERTY_FLAGS Flags;
  @Uint32() external int State;
}

class HTTP_QOS_SETTING_INFO extends Struct {
  @Uint32() external int QosType;
  external Pointer QosSetting;
}

class HTTP_CONNECTION_LIMIT_INFO extends Struct {
  external HTTP_PROPERTY_FLAGS Flags;
  @Uint32() external int MaxConnections;
}

class HTTP_BANDWIDTH_LIMIT_INFO extends Struct {
  external HTTP_PROPERTY_FLAGS Flags;
  @Uint32() external int MaxBandwidth;
}

class HTTP_FLOWRATE_INFO extends Struct {
  external HTTP_PROPERTY_FLAGS Flags;
  @Uint32() external int MaxBandwidth;
  @Uint32() external int MaxPeakBandwidth;
  @Uint32() external int BurstSize;
}

class HTTP_SERVICE_CONFIG_TIMEOUT_SET extends Struct {
  @Uint32() external int KeyDesc;
  @Uint16() external int ParamDesc;
}

class HTTP_TIMEOUT_LIMIT_INFO extends Struct {
  external HTTP_PROPERTY_FLAGS Flags;
  @Uint16() external int EntityBody;
  @Uint16() external int DrainEntityBody;
  @Uint16() external int RequestQueue;
  @Uint16() external int IdleConnection;
  @Uint16() external int HeaderWait;
  @Uint32() external int MinSendRate;
}

class HTTP_SERVICE_CONFIG_SETTING_SET extends Struct {
  @Uint32() external int KeyDesc;
  @Uint32() external int ParamDesc;
}

class HTTP_LISTEN_ENDPOINT_INFO extends Struct {
  external HTTP_PROPERTY_FLAGS Flags;
  @Uint8() external int EnableSharing;
}

class HTTP_SERVER_AUTHENTICATION_DIGEST_PARAMS extends Struct {
  @Uint16() external int DomainNameLength;
  external Pointer<Utf16> DomainName;
  @Uint16() external int RealmLength;
  external Pointer<Utf16> Realm;
}

class HTTP_SERVER_AUTHENTICATION_BASIC_PARAMS extends Struct {
  @Uint16() external int RealmLength;
  external Pointer<Utf16> Realm;
}

class HTTP_SERVER_AUTHENTICATION_INFO extends Struct {
  external HTTP_PROPERTY_FLAGS Flags;
  @Uint32() external int AuthSchemes;
  @Uint8() external int ReceiveMutualAuth;
  @Uint8() external int ReceiveContextHandle;
  @Uint8() external int DisableNTLMCredentialCaching;
  @Uint8() external int ExFlags;
  external HTTP_SERVER_AUTHENTICATION_DIGEST_PARAMS DigestParams;
  external HTTP_SERVER_AUTHENTICATION_BASIC_PARAMS BasicParams;
}

class HTTP_SERVICE_BINDING_BASE extends Struct {
  @Uint32() external int Type;
}

class HTTP_SERVICE_BINDING_A extends Struct {
  external HTTP_SERVICE_BINDING_BASE Base;
  external Pointer<Utf8> Buffer;
  @Uint32() external int BufferSize;
}

class HTTP_SERVICE_BINDING_W extends Struct {
  external HTTP_SERVICE_BINDING_BASE Base;
  external Pointer<Utf16> Buffer;
  @Uint32() external int BufferSize;
}

class HTTP_CHANNEL_BIND_INFO extends Struct {
  @Uint32() external int Hardening;
  @Uint32() external int Flags;
  external Pointer<Pointer<HTTP_SERVICE_BINDING_BASE>> ServiceNames;
  @Uint32() external int NumberOfServiceNames;
}

class HTTP_REQUEST_CHANNEL_BIND_STATUS extends Struct {
  external Pointer<HTTP_SERVICE_BINDING_BASE> ServiceName;
  external Pointer<Uint8> ChannelToken;
  @Uint32() external int ChannelTokenSize;
  @Uint32() external int Flags;
}

class HTTP_REQUEST_TOKEN_BINDING_INFO extends Struct {
  external Pointer<Uint8> TokenBinding;
  @Uint32() external int TokenBindingSize;
  external Pointer<Uint8> EKM;
  @Uint32() external int EKMSize;
  @Uint8() external int KeyType;
}

class HTTP_LOGGING_INFO extends Struct {
  external HTTP_PROPERTY_FLAGS Flags;
  @Uint32() external int LoggingFlags;
  external Pointer<Utf16> SoftwareName;
  @Uint16() external int SoftwareNameLength;
  @Uint16() external int DirectoryNameLength;
  external Pointer<Utf16> DirectoryName;
  @Uint32() external int Format;
  @Uint32() external int Fields;
  external Pointer pExtFields;
  @Uint16() external int NumOfExtFields;
  @Uint16() external int MaxRecordSize;
  @Uint32() external int RolloverType;
  @Uint32() external int RolloverSize;
  external Pointer pSecurityDescriptor;
}

class HTTP_BINDING_INFO extends Struct {
  external HTTP_PROPERTY_FLAGS Flags;
  @IntPtr() external int RequestQueueHandle;
}

class HTTP_PROTECTION_LEVEL_INFO extends Struct {
  external HTTP_PROPERTY_FLAGS Flags;
  @Uint32() external int Level;
}

class HTTP_BYTE_RANGE extends Struct {
  @Uint64() external int StartingOffset;
  @Uint64() external int Length;
}

class HTTP_VERSION extends Struct {
  @Uint16() external int MajorVersion;
  @Uint16() external int MinorVersion;
}

class HTTP_KNOWN_HEADER extends Struct {
  @Uint16() external int RawValueLength;
  external Pointer<Utf8> pRawValue;
}

class HTTP_UNKNOWN_HEADER extends Struct {
  @Uint16() external int NameLength;
  @Uint16() external int RawValueLength;
  external Pointer<Utf8> pName;
  external Pointer<Utf8> pRawValue;
}

class HTTP_LOG_DATA extends Struct {
  @Uint32() external int Type;
}

class HTTP_LOG_FIELDS_DATA extends Struct {
  external HTTP_LOG_DATA Base;
  @Uint16() external int UserNameLength;
  @Uint16() external int UriStemLength;
  @Uint16() external int ClientIpLength;
  @Uint16() external int ServerNameLength;
  @Uint16() external int ServiceNameLength;
  @Uint16() external int ServerIpLength;
  @Uint16() external int MethodLength;
  @Uint16() external int UriQueryLength;
  @Uint16() external int HostLength;
  @Uint16() external int UserAgentLength;
  @Uint16() external int CookieLength;
  @Uint16() external int ReferrerLength;
  external Pointer<Utf16> UserName;
  external Pointer<Utf16> UriStem;
  external Pointer<Utf8> ClientIp;
  external Pointer<Utf8> ServerName;
  external Pointer<Utf8> ServiceName;
  external Pointer<Utf8> ServerIp;
  external Pointer<Utf8> Method;
  external Pointer<Utf8> UriQuery;
  external Pointer<Utf8> Host;
  external Pointer<Utf8> UserAgent;
  external Pointer<Utf8> Cookie;
  external Pointer<Utf8> Referrer;
  @Uint16() external int ServerPort;
  @Uint16() external int ProtocolStatus;
  @Uint32() external int Win32Status;
  @Uint32() external int MethodNum;
  @Uint16() external int SubStatus;
}

class HTTP_REQUEST_HEADERS extends Struct {
  @Uint16() external int UnknownHeaderCount;
  external Pointer<HTTP_UNKNOWN_HEADER> pUnknownHeaders;
  @Uint16() external int TrailerCount;
  external Pointer<HTTP_UNKNOWN_HEADER> pTrailers;
  external HTTP_KNOWN_HEADER KnownHeaders;
}

class HTTP_RESPONSE_HEADERS extends Struct {
  @Uint16() external int UnknownHeaderCount;
  external Pointer<HTTP_UNKNOWN_HEADER> pUnknownHeaders;
  @Uint16() external int TrailerCount;
  external Pointer<HTTP_UNKNOWN_HEADER> pTrailers;
  external HTTP_KNOWN_HEADER KnownHeaders;
}

class HTTP_DELEGATE_REQUEST_PROPERTY_INFO extends Struct {
  @Uint32() external int ProperyId;
  @Uint32() external int PropertyInfoLength;
  external Pointer PropertyInfo;
}

class HTTP_TRANSPORT_ADDRESS extends Struct {
  external Pointer<SOCKADDR> pRemoteAddress;
  external Pointer<SOCKADDR> pLocalAddress;
}

class HTTP_COOKED_URL extends Struct {
  @Uint16() external int FullUrlLength;
  @Uint16() external int HostLength;
  @Uint16() external int AbsPathLength;
  @Uint16() external int QueryStringLength;
  external Pointer<Utf16> pFullUrl;
  external Pointer<Utf16> pHost;
  external Pointer<Utf16> pAbsPath;
  external Pointer<Utf16> pQueryString;
}

class HTTP_SSL_CLIENT_CERT_INFO extends Struct {
  @Uint32() external int CertFlags;
  @Uint32() external int CertEncodedSize;
  external Pointer<Uint8> pCertEncoded;
  @IntPtr() external int Token;
  @Uint8() external int CertDeniedByMapper;
}

class HTTP_SSL_INFO extends Struct {
  @Uint16() external int ServerCertKeySize;
  @Uint16() external int ConnectionKeySize;
  @Uint32() external int ServerCertIssuerSize;
  @Uint32() external int ServerCertSubjectSize;
  external Pointer<Utf8> pServerCertIssuer;
  external Pointer<Utf8> pServerCertSubject;
  external Pointer<HTTP_SSL_CLIENT_CERT_INFO> pClientCertInfo;
  @Uint32() external int SslClientCertNegotiated;
}

class HTTP_SSL_PROTOCOL_INFO extends Struct {
  @Uint32() external int Protocol;
  @Uint32() external int CipherType;
  @Uint32() external int CipherStrength;
  @Uint32() external int HashType;
  @Uint32() external int HashStrength;
  @Uint32() external int KeyExchangeType;
  @Uint32() external int KeyExchangeStrength;
}

class HTTP_REQUEST_SIZING_INFO extends Struct {
  @Uint64() external int Flags;
  @Uint32() external int RequestIndex;
  @Uint32() external int RequestSizingCount;
  external __uint64__ RequestSizing;
}

class HTTP_REQUEST_TIMING_INFO extends Struct {
  @Uint32() external int RequestTimingCount;
  external __uint64__ RequestTiming;
}

class HTTP_REQUEST_INFO extends Struct {
  @Uint32() external int InfoType;
  @Uint32() external int InfoLength;
  external Pointer pInfo;
}

class HTTP_REQUEST_AUTH_INFO extends Struct {
  @Uint32() external int AuthStatus;
  @Int32() external int SecStatus;
  @Uint32() external int Flags;
  @Uint32() external int AuthType;
  @IntPtr() external int AccessToken;
  @Uint32() external int ContextAttributes;
  @Uint32() external int PackedContextLength;
  @Uint32() external int PackedContextType;
  external Pointer PackedContext;
  @Uint32() external int MutualAuthDataLength;
  external Pointer<Utf8> pMutualAuthData;
  @Uint16() external int PackageNameLength;
  external Pointer<Utf16> pPackageName;
}

class HTTP_REQUEST_V1 extends Struct {
  @Uint32() external int Flags;
  @Uint64() external int ConnectionId;
  @Uint64() external int RequestId;
  @Uint64() external int UrlContext;
  external HTTP_VERSION Version;
  @Uint32() external int Verb;
  @Uint16() external int UnknownVerbLength;
  @Uint16() external int RawUrlLength;
  external Pointer<Utf8> pUnknownVerb;
  external Pointer<Utf8> pRawUrl;
  external HTTP_COOKED_URL CookedUrl;
  external HTTP_TRANSPORT_ADDRESS Address;
  external HTTP_REQUEST_HEADERS Headers;
  @Uint64() external int BytesReceived;
  @Uint16() external int EntityChunkCount;
  external Pointer<HTTP_DATA_CHUNK> pEntityChunks;
  @Uint64() external int RawConnectionId;
  external Pointer<HTTP_SSL_INFO> pSslInfo;
}

class HTTP_REQUEST_V2 extends Struct {
  external HTTP_REQUEST_V1 __AnonymousBase_http_L1816_C35;
  @Uint16() external int RequestInfoCount;
  external Pointer<HTTP_REQUEST_INFO> pRequestInfo;
}

class HTTP_RESPONSE_V1 extends Struct {
  @Uint32() external int Flags;
  external HTTP_VERSION Version;
  @Uint16() external int StatusCode;
  @Uint16() external int ReasonLength;
  external Pointer<Utf8> pReason;
  external HTTP_RESPONSE_HEADERS Headers;
  @Uint16() external int EntityChunkCount;
  external Pointer<HTTP_DATA_CHUNK> pEntityChunks;
}

class HTTP_RESPONSE_INFO extends Struct {
  @Uint32() external int Type;
  @Uint32() external int Length;
  external Pointer pInfo;
}

class HTTP_MULTIPLE_KNOWN_HEADERS extends Struct {
  @Uint32() external int HeaderId;
  @Uint32() external int Flags;
  @Uint16() external int KnownHeaderCount;
  external Pointer<HTTP_KNOWN_HEADER> KnownHeaders;
}

class HTTP_RESPONSE_V2 extends Struct {
  external HTTP_RESPONSE_V1 __AnonymousBase_http_L2003_C36;
  @Uint16() external int ResponseInfoCount;
  external Pointer<HTTP_RESPONSE_INFO> pResponseInfo;
}

class HTTPAPI_VERSION extends Struct {
  @Uint16() external int HttpApiMajorVersion;
  @Uint16() external int HttpApiMinorVersion;
}

class HTTP_CACHE_POLICY extends Struct {
  @Uint32() external int Policy;
  @Uint32() external int SecondsToLive;
}

class HTTP_SERVICE_CONFIG_SSL_KEY extends Struct {
  external Pointer<SOCKADDR> pIpPort;
}

class HTTP_SERVICE_CONFIG_SSL_KEY_EX extends Struct {
  external SOCKADDR_STORAGE_LH IpPort;
}

class HTTP_SERVICE_CONFIG_SSL_SNI_KEY extends Struct {
  external SOCKADDR_STORAGE_LH IpPort;
  external Pointer<Utf16> Host;
}

class HTTP_SERVICE_CONFIG_SSL_CCS_KEY extends Struct {
  external SOCKADDR_STORAGE_LH LocalAddress;
}

class HTTP_SERVICE_CONFIG_SSL_PARAM extends Struct {
  @Uint32() external int SslHashLength;
  external Pointer pSslHash;
  external GUID AppId;
  external Pointer<Utf16> pSslCertStoreName;
  @Uint32() external int DefaultCertCheckMode;
  @Uint32() external int DefaultRevocationFreshnessTime;
  @Uint32() external int DefaultRevocationUrlRetrievalTimeout;
  external Pointer<Utf16> pDefaultSslCtlIdentifier;
  external Pointer<Utf16> pDefaultSslCtlStoreName;
  @Uint32() external int DefaultFlags;
}

class HTTP2_WINDOW_SIZE_PARAM extends Struct {
  @Uint32() external int Http2ReceiveWindowSize;
}

class HTTP2_SETTINGS_LIMITS_PARAM extends Struct {
  @Uint32() external int Http2MaxSettingsPerFrame;
  @Uint32() external int Http2MaxSettingsPerMinute;
}

class HTTP_PERFORMANCE_PARAM extends Struct {
  @Uint64() external int SendBufferingFlags;
  @Uint8() external int EnableAggressiveICW;
  @Uint32() external int MaxBufferedSendBytes;
  @Uint32() external int MaxConcurrentClientStreams;
}

class HTTP_SERVICE_CONFIG_SSL_SET extends Struct {
  external HTTP_SERVICE_CONFIG_SSL_KEY KeyDesc;
  external HTTP_SERVICE_CONFIG_SSL_PARAM ParamDesc;
}

class HTTP_SERVICE_CONFIG_SSL_SNI_SET extends Struct {
  external HTTP_SERVICE_CONFIG_SSL_SNI_KEY KeyDesc;
  external HTTP_SERVICE_CONFIG_SSL_PARAM ParamDesc;
}

class HTTP_SERVICE_CONFIG_SSL_CCS_SET extends Struct {
  external HTTP_SERVICE_CONFIG_SSL_CCS_KEY KeyDesc;
  external HTTP_SERVICE_CONFIG_SSL_PARAM ParamDesc;
}

class HTTP_SERVICE_CONFIG_SSL_SET_EX extends Struct {
  external HTTP_SERVICE_CONFIG_SSL_KEY_EX KeyDesc;
  external HTTP_SERVICE_CONFIG_SSL_PARAM_EX ParamDesc;
}

class HTTP_SERVICE_CONFIG_SSL_SNI_SET_EX extends Struct {
  external HTTP_SERVICE_CONFIG_SSL_SNI_KEY KeyDesc;
  external HTTP_SERVICE_CONFIG_SSL_PARAM_EX ParamDesc;
}

class HTTP_SERVICE_CONFIG_SSL_CCS_SET_EX extends Struct {
  external HTTP_SERVICE_CONFIG_SSL_CCS_KEY KeyDesc;
  external HTTP_SERVICE_CONFIG_SSL_PARAM_EX ParamDesc;
}

class HTTP_SERVICE_CONFIG_SSL_QUERY extends Struct {
  @Uint32() external int QueryDesc;
  external HTTP_SERVICE_CONFIG_SSL_KEY KeyDesc;
  @Uint32() external int dwToken;
}

class HTTP_SERVICE_CONFIG_SSL_SNI_QUERY extends Struct {
  @Uint32() external int QueryDesc;
  external HTTP_SERVICE_CONFIG_SSL_SNI_KEY KeyDesc;
  @Uint32() external int dwToken;
}

class HTTP_SERVICE_CONFIG_SSL_CCS_QUERY extends Struct {
  @Uint32() external int QueryDesc;
  external HTTP_SERVICE_CONFIG_SSL_CCS_KEY KeyDesc;
  @Uint32() external int dwToken;
}

class HTTP_SERVICE_CONFIG_SSL_QUERY_EX extends Struct {
  @Uint32() external int QueryDesc;
  external HTTP_SERVICE_CONFIG_SSL_KEY_EX KeyDesc;
  @Uint32() external int dwToken;
  @Uint32() external int ParamType;
}

class HTTP_SERVICE_CONFIG_SSL_SNI_QUERY_EX extends Struct {
  @Uint32() external int QueryDesc;
  external HTTP_SERVICE_CONFIG_SSL_SNI_KEY KeyDesc;
  @Uint32() external int dwToken;
  @Uint32() external int ParamType;
}

class HTTP_SERVICE_CONFIG_SSL_CCS_QUERY_EX extends Struct {
  @Uint32() external int QueryDesc;
  external HTTP_SERVICE_CONFIG_SSL_CCS_KEY KeyDesc;
  @Uint32() external int dwToken;
  @Uint32() external int ParamType;
}

class HTTP_SERVICE_CONFIG_IP_LISTEN_PARAM extends Struct {
  @Uint16() external int AddrLength;
  external Pointer<SOCKADDR> pAddress;
}

class HTTP_SERVICE_CONFIG_IP_LISTEN_QUERY extends Struct {
  @Uint32() external int AddrCount;
  external SOCKADDR_STORAGE_LH AddrList;
}

class HTTP_SERVICE_CONFIG_URLACL_KEY extends Struct {
  external Pointer<Utf16> pUrlPrefix;
}

class HTTP_SERVICE_CONFIG_URLACL_PARAM extends Struct {
  external Pointer<Utf16> pStringSecurityDescriptor;
}

class HTTP_SERVICE_CONFIG_URLACL_SET extends Struct {
  external HTTP_SERVICE_CONFIG_URLACL_KEY KeyDesc;
  external HTTP_SERVICE_CONFIG_URLACL_PARAM ParamDesc;
}

class HTTP_SERVICE_CONFIG_URLACL_QUERY extends Struct {
  @Uint32() external int QueryDesc;
  external HTTP_SERVICE_CONFIG_URLACL_KEY KeyDesc;
  @Uint32() external int dwToken;
}

class HTTP_SERVICE_CONFIG_CACHE_SET extends Struct {
  @Uint32() external int KeyDesc;
  @Uint32() external int ParamDesc;
}

class HTTP_QUERY_REQUEST_QUALIFIER_TCP extends Struct {
  @Uint64() external int Freshness;
}

class HTTP_QUERY_REQUEST_QUALIFIER_QUIC extends Struct {
  @Uint64() external int Freshness;
}

class HTTP_REQUEST_PROPERTY_SNI extends Struct {
  external __ushort__ Hostname;
  @Uint32() external int Flags;
}

class WINHTTP_ASYNC_RESULT extends Struct {
  @Uint32() external int dwResult;
  @Uint32() external int dwError;
}

class URL_COMPONENTS extends Struct {
  @Uint32() external int dwStructSize;
  external Pointer<Utf16> lpszScheme;
  @Uint32() external int dwSchemeLength;
  @Uint32() external int nScheme;
  external Pointer<Utf16> lpszHostName;
  @Uint32() external int dwHostNameLength;
  @Uint16() external int nPort;
  external Pointer<Utf16> lpszUserName;
  @Uint32() external int dwUserNameLength;
  external Pointer<Utf16> lpszPassword;
  @Uint32() external int dwPasswordLength;
  external Pointer<Utf16> lpszUrlPath;
  @Uint32() external int dwUrlPathLength;
  external Pointer<Utf16> lpszExtraInfo;
  @Uint32() external int dwExtraInfoLength;
}

class WINHTTP_PROXY_INFO extends Struct {
  @Uint32() external int dwAccessType;
  external Pointer<Utf16> lpszProxy;
  external Pointer<Utf16> lpszProxyBypass;
}

class WINHTTP_AUTOPROXY_OPTIONS extends Struct {
  @Uint32() external int dwFlags;
  @Uint32() external int dwAutoDetectFlags;
  external Pointer<Utf16> lpszAutoConfigUrl;
  external Pointer lpvReserved;
  @Uint32() external int dwReserved;
  @Int32() external int fAutoLogonIfChallenged;
}

class WINHTTP_PROXY_RESULT_ENTRY extends Struct {
  @Int32() external int fProxy;
  @Int32() external int fBypass;
  @Uint32() external int ProxyScheme;
  external Pointer<Utf16> pwszProxy;
  @Uint16() external int ProxyPort;
}

class WINHTTP_PROXY_RESULT extends Struct {
  @Uint32() external int cEntries;
  external Pointer<WINHTTP_PROXY_RESULT_ENTRY> pEntries;
}

class WINHTTP_PROXY_RESULT_EX extends Struct {
  @Uint32() external int cEntries;
  external Pointer<WINHTTP_PROXY_RESULT_ENTRY> pEntries;
  @IntPtr() external int hProxyDetectionHandle;
  @Uint32() external int dwProxyInterfaceAffinity;
}

class _WinHttpProxyNetworkKey extends Struct {
  external __ubyte__ pbBuffer;
}

class WINHTTP_PROXY_SETTINGS extends Struct {
  @Uint32() external int dwStructSize;
  @Uint32() external int dwFlags;
  @Uint32() external int dwCurrentSettingsVersion;
  external Pointer<Utf16> pwszConnectionName;
  external Pointer<Utf16> pwszProxy;
  external Pointer<Utf16> pwszProxyBypass;
  external Pointer<Utf16> pwszAutoconfigUrl;
  external Pointer<Utf16> pwszAutoconfigSecondaryUrl;
  @Uint32() external int dwAutoDiscoveryFlags;
  external Pointer<Utf16> pwszLastKnownGoodAutoConfigUrl;
  @Uint32() external int dwAutoconfigReloadDelayMins;
  external FILETIME ftLastKnownDetectTime;
  @Uint32() external int dwDetectedInterfaceIpCount;
  external Pointer<Uint32> pdwDetectedInterfaceIp;
  @Uint32() external int cNetworkKeys;
  external Pointer<_WinHttpProxyNetworkKey> pNetworkKeys;
}

class WINHTTP_CERTIFICATE_INFO extends Struct {
  external FILETIME ftExpiry;
  external FILETIME ftStart;
  external Pointer<Utf16> lpszSubjectInfo;
  external Pointer<Utf16> lpszIssuerInfo;
  external Pointer<Utf16> lpszProtocolName;
  external Pointer<Utf16> lpszSignatureAlgName;
  external Pointer<Utf16> lpszEncryptionAlgName;
  @Uint32() external int dwKeySize;
}

class WINHTTP_CONNECTION_INFO extends Struct {
  @Uint32() external int cbSize;
  external SOCKADDR_STORAGE_LH LocalAddress;
  external SOCKADDR_STORAGE_LH RemoteAddress;
}

class WINHTTP_REQUEST_TIMES extends Struct {
  @Uint32() external int cTimes;
  external __uint64__ rgullTimes;
}

class WINHTTP_REQUEST_STATS extends Struct {
  @Uint64() external int ullFlags;
  @Uint32() external int ulIndex;
  @Uint32() external int cStats;
  external __uint64__ rgullStats;
}

class WINHTTP_CREDS extends Struct {
  external Pointer<Utf8> lpszUserName;
  external Pointer<Utf8> lpszPassword;
  external Pointer<Utf8> lpszRealm;
  @Uint32() external int dwAuthScheme;
  external Pointer<Utf8> lpszHostName;
  @Uint32() external int dwPort;
}

class WINHTTP_CREDS_EX extends Struct {
  external Pointer<Utf8> lpszUserName;
  external Pointer<Utf8> lpszPassword;
  external Pointer<Utf8> lpszRealm;
  @Uint32() external int dwAuthScheme;
  external Pointer<Utf8> lpszHostName;
  @Uint32() external int dwPort;
  external Pointer<Utf8> lpszUrl;
}

class WINHTTP_CURRENT_USER_IE_PROXY_CONFIG extends Struct {
  @Int32() external int fAutoDetect;
  external Pointer<Utf16> lpszAutoConfigUrl;
  external Pointer<Utf16> lpszProxy;
  external Pointer<Utf16> lpszProxyBypass;
}

class WINHTTP_WEB_SOCKET_ASYNC_RESULT extends Struct {
  external WINHTTP_ASYNC_RESULT AsyncResult;
  @Uint32() external int Operation;
}

class WINHTTP_WEB_SOCKET_STATUS extends Struct {
  @Uint32() external int dwBytesTransferred;
  @Uint32() external int eBufferType;
}

