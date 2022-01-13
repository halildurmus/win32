// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import '../../combase.dart';
import '../../guid.dart';
import '../../networking/httpserver/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../security/structs.g.dart';
import '../../networking/winsock/structs.g.dart';

/// {@category Struct}
class HTTP2_SETTINGS_LIMITS_PARAM extends Struct {
  @Uint32()
  external int Http2MaxSettingsPerFrame;

  @Uint32()
  external int Http2MaxSettingsPerMinute;
}

/// {@category Struct}
class HTTP2_WINDOW_SIZE_PARAM extends Struct {
  @Uint32()
  external int Http2ReceiveWindowSize;
}

/// {@category Struct}
class HTTPAPI_VERSION extends Struct {
  @Uint16()
  external int HttpApiMajorVersion;

  @Uint16()
  external int HttpApiMinorVersion;
}

/// {@category Struct}
class HTTP_BANDWIDTH_LIMIT_INFO extends Struct {
  external HTTP_PROPERTY_FLAGS Flags;

  @Uint32()
  external int MaxBandwidth;
}

/// {@category Struct}
class HTTP_BINDING_INFO extends Struct {
  external HTTP_PROPERTY_FLAGS Flags;

  @IntPtr()
  external int RequestQueueHandle;
}

/// {@category Struct}
class HTTP_BYTE_RANGE extends Struct {
  @Uint64()
  external int StartingOffset;

  @Uint64()
  external int Length;
}

/// {@category Struct}
class HTTP_CACHE_POLICY extends Struct {
  @Int32()
  external int Policy;

  @Uint32()
  external int SecondsToLive;
}

/// {@category Struct}
class HTTP_CHANNEL_BIND_INFO extends Struct {
  @Int32()
  external int Hardening;

  @Uint32()
  external int Flags;

  external Pointer<Pointer<HTTP_SERVICE_BINDING_BASE>> ServiceNames;

  @Uint32()
  external int NumberOfServiceNames;
}

/// {@category Struct}
class HTTP_CONNECTION_LIMIT_INFO extends Struct {
  external HTTP_PROPERTY_FLAGS Flags;

  @Uint32()
  external int MaxConnections;
}

/// {@category Struct}
class HTTP_COOKED_URL extends Struct {
  @Uint16()
  external int FullUrlLength;

  @Uint16()
  external int HostLength;

  @Uint16()
  external int AbsPathLength;

  @Uint16()
  external int QueryStringLength;

  external Pointer<Utf16> pFullUrl;

  external Pointer<Utf16> pHost;

  external Pointer<Utf16> pAbsPath;

  external Pointer<Utf16> pQueryString;
}

/// {@category Struct}
class HTTP_CREATE_REQUEST_QUEUE_PROPERTY_INFO extends Struct {
  @Int32()
  external int PropertyId;

  @Uint32()
  external int PropertyInfoLength;

  external Pointer PropertyInfo;
}

/// {@category Struct}
class HTTP_DATA_CHUNK extends Struct {
  @Int32()
  external int DataChunkType;

  external _HTTP_DATA_CHUNK__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _HTTP_DATA_CHUNK__Anonymous_e__Union extends Union {
  external _HTTP_DATA_CHUNK__Anonymous_e__Union__FromMemory_e__Struct
      FromMemory;

  external _HTTP_DATA_CHUNK__Anonymous_e__Union__FromFileHandle_e__Struct
      FromFileHandle;

  external _HTTP_DATA_CHUNK__Anonymous_e__Union__FromFragmentCache_e__Struct
      FromFragmentCache;

  external _HTTP_DATA_CHUNK__Anonymous_e__Union__FromFragmentCacheEx_e__Struct
      FromFragmentCacheEx;

  external _HTTP_DATA_CHUNK__Anonymous_e__Union__Trailers_e__Struct Trailers;
}

/// {@category Struct}
class _HTTP_DATA_CHUNK__Anonymous_e__Union__FromMemory_e__Struct
    extends Struct {
  external Pointer pBuffer;

  @Uint32()
  external int BufferLength;
}

extension HTTP_DATA_CHUNK__Anonymous_e__Union_Extension on HTTP_DATA_CHUNK {
  Pointer get pBuffer => this.Anonymous.FromMemory.pBuffer;
  set pBuffer(Pointer value) => this.Anonymous.FromMemory.pBuffer = value;

  int get BufferLength => this.Anonymous.FromMemory.BufferLength;
  set BufferLength(int value) => this.Anonymous.FromMemory.BufferLength = value;
}

/// {@category Struct}
class _HTTP_DATA_CHUNK__Anonymous_e__Union__FromFileHandle_e__Struct
    extends Struct {
  external HTTP_BYTE_RANGE ByteRange;

  @IntPtr()
  external int FileHandle;
}

extension HTTP_DATA_CHUNK__Anonymous_e__Union_Extension_1 on HTTP_DATA_CHUNK {
  HTTP_BYTE_RANGE get ByteRange => this.Anonymous.FromFileHandle.ByteRange;
  set ByteRange(HTTP_BYTE_RANGE value) =>
      this.Anonymous.FromFileHandle.ByteRange = value;

  int get FileHandle => this.Anonymous.FromFileHandle.FileHandle;
  set FileHandle(int value) => this.Anonymous.FromFileHandle.FileHandle = value;
}

/// {@category Struct}
class _HTTP_DATA_CHUNK__Anonymous_e__Union__FromFragmentCache_e__Struct
    extends Struct {
  @Uint16()
  external int FragmentNameLength;

  external Pointer<Utf16> pFragmentName;
}

extension HTTP_DATA_CHUNK__Anonymous_e__Union_Extension_2 on HTTP_DATA_CHUNK {
  int get FragmentNameLength =>
      this.Anonymous.FromFragmentCache.FragmentNameLength;
  set FragmentNameLength(int value) =>
      this.Anonymous.FromFragmentCache.FragmentNameLength = value;

  Pointer<Utf16> get pFragmentName =>
      this.Anonymous.FromFragmentCache.pFragmentName;
  set pFragmentName(Pointer<Utf16> value) =>
      this.Anonymous.FromFragmentCache.pFragmentName = value;
}

/// {@category Struct}
class _HTTP_DATA_CHUNK__Anonymous_e__Union__FromFragmentCacheEx_e__Struct
    extends Struct {
  external HTTP_BYTE_RANGE ByteRange;

  external Pointer<Utf16> pFragmentName;
}

extension HTTP_DATA_CHUNK__Anonymous_e__Union_Extension_3 on HTTP_DATA_CHUNK {
  HTTP_BYTE_RANGE get ByteRange => this.Anonymous.FromFragmentCacheEx.ByteRange;
  set ByteRange(HTTP_BYTE_RANGE value) =>
      this.Anonymous.FromFragmentCacheEx.ByteRange = value;

  Pointer<Utf16> get pFragmentName =>
      this.Anonymous.FromFragmentCacheEx.pFragmentName;
  set pFragmentName(Pointer<Utf16> value) =>
      this.Anonymous.FromFragmentCacheEx.pFragmentName = value;
}

/// {@category Struct}
class _HTTP_DATA_CHUNK__Anonymous_e__Union__Trailers_e__Struct extends Struct {
  @Uint16()
  external int TrailerCount;

  external Pointer<HTTP_UNKNOWN_HEADER> pTrailers;
}

extension HTTP_DATA_CHUNK__Anonymous_e__Union_Extension_4 on HTTP_DATA_CHUNK {
  int get TrailerCount => this.Anonymous.Trailers.TrailerCount;
  set TrailerCount(int value) => this.Anonymous.Trailers.TrailerCount = value;

  Pointer<HTTP_UNKNOWN_HEADER> get pTrailers =>
      this.Anonymous.Trailers.pTrailers;
  set pTrailers(Pointer<HTTP_UNKNOWN_HEADER> value) =>
      this.Anonymous.Trailers.pTrailers = value;
}

extension HTTP_DATA_CHUNK_Extension on HTTP_DATA_CHUNK {
  _HTTP_DATA_CHUNK__Anonymous_e__Union__FromMemory_e__Struct get FromMemory =>
      this.Anonymous.FromMemory;
  set FromMemory(
          _HTTP_DATA_CHUNK__Anonymous_e__Union__FromMemory_e__Struct value) =>
      this.Anonymous.FromMemory = value;

  _HTTP_DATA_CHUNK__Anonymous_e__Union__FromFileHandle_e__Struct
      get FromFileHandle => this.Anonymous.FromFileHandle;
  set FromFileHandle(
          _HTTP_DATA_CHUNK__Anonymous_e__Union__FromFileHandle_e__Struct
              value) =>
      this.Anonymous.FromFileHandle = value;

  _HTTP_DATA_CHUNK__Anonymous_e__Union__FromFragmentCache_e__Struct
      get FromFragmentCache => this.Anonymous.FromFragmentCache;
  set FromFragmentCache(
          _HTTP_DATA_CHUNK__Anonymous_e__Union__FromFragmentCache_e__Struct
              value) =>
      this.Anonymous.FromFragmentCache = value;

  _HTTP_DATA_CHUNK__Anonymous_e__Union__FromFragmentCacheEx_e__Struct
      get FromFragmentCacheEx => this.Anonymous.FromFragmentCacheEx;
  set FromFragmentCacheEx(
          _HTTP_DATA_CHUNK__Anonymous_e__Union__FromFragmentCacheEx_e__Struct
              value) =>
      this.Anonymous.FromFragmentCacheEx = value;

  _HTTP_DATA_CHUNK__Anonymous_e__Union__Trailers_e__Struct get Trailers =>
      this.Anonymous.Trailers;
  set Trailers(
          _HTTP_DATA_CHUNK__Anonymous_e__Union__Trailers_e__Struct value) =>
      this.Anonymous.Trailers = value;
}

/// {@category Struct}
class HTTP_DELEGATE_REQUEST_PROPERTY_INFO extends Struct {
  @Int32()
  external int PropertyId;

  @Uint32()
  external int PropertyInfoLength;

  external Pointer PropertyInfo;
}

/// {@category Struct}
class HTTP_ERROR_HEADERS_PARAM extends Struct {
  @Uint16()
  external int StatusCode;

  @Uint16()
  external int HeaderCount;

  external Pointer<HTTP_UNKNOWN_HEADER> Headers;
}

/// {@category Struct}
class HTTP_FLOWRATE_INFO extends Struct {
  external HTTP_PROPERTY_FLAGS Flags;

  @Uint32()
  external int MaxBandwidth;

  @Uint32()
  external int MaxPeakBandwidth;

  @Uint32()
  external int BurstSize;
}

/// {@category Struct}
class HTTP_KNOWN_HEADER extends Struct {
  @Uint16()
  external int RawValueLength;

  external Pointer<Utf8> pRawValue;
}

/// {@category Struct}
class HTTP_LISTEN_ENDPOINT_INFO extends Struct {
  external HTTP_PROPERTY_FLAGS Flags;

  @Uint8()
  external int EnableSharing;
}

/// {@category Struct}
class HTTP_LOGGING_INFO extends Struct {
  external HTTP_PROPERTY_FLAGS Flags;

  @Uint32()
  external int LoggingFlags;

  external Pointer<Utf16> SoftwareName;

  @Uint16()
  external int SoftwareNameLength;

  @Uint16()
  external int DirectoryNameLength;

  external Pointer<Utf16> DirectoryName;

  @Int32()
  external int Format;

  @Uint32()
  external int Fields;

  external Pointer pExtFields;

  @Uint16()
  external int NumOfExtFields;

  @Uint16()
  external int MaxRecordSize;

  @Int32()
  external int RolloverType;

  @Uint32()
  external int RolloverSize;

  external Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor;
}

/// {@category Struct}
class HTTP_LOG_DATA extends Struct {
  @Int32()
  external int Type;
}

/// {@category Struct}
class HTTP_LOG_FIELDS_DATA extends Struct {
  external HTTP_LOG_DATA Base;

  @Uint16()
  external int UserNameLength;

  @Uint16()
  external int UriStemLength;

  @Uint16()
  external int ClientIpLength;

  @Uint16()
  external int ServerNameLength;

  @Uint16()
  external int ServiceNameLength;

  @Uint16()
  external int ServerIpLength;

  @Uint16()
  external int MethodLength;

  @Uint16()
  external int UriQueryLength;

  @Uint16()
  external int HostLength;

  @Uint16()
  external int UserAgentLength;

  @Uint16()
  external int CookieLength;

  @Uint16()
  external int ReferrerLength;

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

  @Uint16()
  external int ServerPort;

  @Uint16()
  external int ProtocolStatus;

  @Uint32()
  external int Win32Status;

  @Int32()
  external int MethodNum;

  @Uint16()
  external int SubStatus;
}

/// {@category Struct}
class HTTP_MULTIPLE_KNOWN_HEADERS extends Struct {
  @Int32()
  external int HeaderId;

  @Uint32()
  external int Flags;

  @Uint16()
  external int KnownHeaderCount;

  external Pointer<HTTP_KNOWN_HEADER> KnownHeaders;
}

/// {@category Struct}
class HTTP_PERFORMANCE_PARAM extends Struct {
  @Int32()
  external int Type;

  @Uint32()
  external int BufferSize;

  external Pointer Buffer;
}

/// {@category Struct}
class HTTP_PROPERTY_FLAGS extends Struct {
  @Uint32()
  external int bitfield;
}

/// {@category Struct}
class HTTP_PROTECTION_LEVEL_INFO extends Struct {
  external HTTP_PROPERTY_FLAGS Flags;

  @Int32()
  external int Level;
}

/// {@category Struct}
class HTTP_QOS_SETTING_INFO extends Struct {
  @Int32()
  external int QosType;

  external Pointer QosSetting;
}

/// {@category Struct}
class HTTP_QUERY_REQUEST_QUALIFIER_QUIC extends Struct {
  @Uint64()
  external int Freshness;
}

/// {@category Struct}
class HTTP_QUERY_REQUEST_QUALIFIER_TCP extends Struct {
  @Uint64()
  external int Freshness;
}

/// {@category Struct}
class HTTP_QUIC_API_TIMINGS extends Struct {
  external HTTP_QUIC_CONNECTION_API_TIMINGS ConnectionTimings;

  external HTTP_QUIC_STREAM_API_TIMINGS StreamTimings;
}

/// {@category Struct}
class HTTP_QUIC_CONNECTION_API_TIMINGS extends Struct {
  @Uint64()
  external int OpenTime;

  @Uint64()
  external int CloseTime;

  @Uint64()
  external int StartTime;

  @Uint64()
  external int ShutdownTime;

  @Uint64()
  external int SecConfigCreateTime;

  @Uint64()
  external int SecConfigDeleteTime;

  @Uint64()
  external int GetParamCount;

  @Uint64()
  external int GetParamSum;

  @Uint64()
  external int SetParamCount;

  @Uint64()
  external int SetParamSum;

  @Uint64()
  external int SetCallbackHandlerCount;

  @Uint64()
  external int SetCallbackHandlerSum;

  external HTTP_QUIC_STREAM_API_TIMINGS ControlStreamTimings;
}

/// {@category Struct}
class HTTP_QUIC_STREAM_API_TIMINGS extends Struct {
  @Uint64()
  external int OpenCount;

  @Uint64()
  external int OpenSum;

  @Uint64()
  external int CloseCount;

  @Uint64()
  external int CloseSum;

  @Uint64()
  external int StartCount;

  @Uint64()
  external int StartSum;

  @Uint64()
  external int ShutdownCount;

  @Uint64()
  external int ShutdownSum;

  @Uint64()
  external int SendCount;

  @Uint64()
  external int SendSum;

  @Uint64()
  external int ReceiveSetEnabledCount;

  @Uint64()
  external int ReceiveSetEnabledSum;

  @Uint64()
  external int GetParamCount;

  @Uint64()
  external int GetParamSum;

  @Uint64()
  external int SetParamCount;

  @Uint64()
  external int SetParamSum;

  @Uint64()
  external int SetCallbackHandlerCount;

  @Uint64()
  external int SetCallbackHandlerSum;
}

/// {@category Struct}
class HTTP_REQUEST_AUTH_INFO extends Struct {
  @Int32()
  external int AuthStatus;

  @Int32()
  external int SecStatus;

  @Uint32()
  external int Flags;

  @Int32()
  external int AuthType;

  @IntPtr()
  external int AccessToken;

  @Uint32()
  external int ContextAttributes;

  @Uint32()
  external int PackedContextLength;

  @Uint32()
  external int PackedContextType;

  external Pointer PackedContext;

  @Uint32()
  external int MutualAuthDataLength;

  external Pointer<Utf8> pMutualAuthData;

  @Uint16()
  external int PackageNameLength;

  external Pointer<Utf16> pPackageName;
}

/// {@category Struct}
class HTTP_REQUEST_CHANNEL_BIND_STATUS extends Struct {
  external Pointer<HTTP_SERVICE_BINDING_BASE> ServiceName;

  external Pointer<Uint8> ChannelToken;

  @Uint32()
  external int ChannelTokenSize;

  @Uint32()
  external int Flags;
}

/// {@category Struct}
class HTTP_REQUEST_HEADERS extends Struct {
  @Uint16()
  external int UnknownHeaderCount;

  external Pointer<HTTP_UNKNOWN_HEADER> pUnknownHeaders;

  @Uint16()
  external int TrailerCount;

  external Pointer<HTTP_UNKNOWN_HEADER> pTrailers;

  @Array(41)
  external Array<HTTP_KNOWN_HEADER> KnownHeaders;
}

/// {@category Struct}
class HTTP_REQUEST_INFO extends Struct {
  @Int32()
  external int InfoType;

  @Uint32()
  external int InfoLength;

  external Pointer pInfo;
}

/// {@category Struct}
class HTTP_REQUEST_PROPERTY_SNI extends Struct {
  @Array(256)
  external Array<Uint16> _Hostname;

  String get Hostname {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_Hostname[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set Hostname(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _Hostname[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int Flags;
}

/// {@category Struct}
class HTTP_REQUEST_PROPERTY_STREAM_ERROR extends Struct {
  @Uint32()
  external int ErrorCode;
}

/// {@category Struct}
class HTTP_REQUEST_SIZING_INFO extends Struct {
  @Uint64()
  external int Flags;

  @Uint32()
  external int RequestIndex;

  @Uint32()
  external int RequestSizingCount;

  @Array(5)
  external Array<Uint64> RequestSizing;
}

/// {@category Struct}
class HTTP_REQUEST_TIMING_INFO extends Struct {
  @Uint32()
  external int RequestTimingCount;

  @Array(30)
  external Array<Uint64> RequestTiming;
}

/// {@category Struct}
class HTTP_REQUEST_TOKEN_BINDING_INFO extends Struct {
  external Pointer<Uint8> TokenBinding;

  @Uint32()
  external int TokenBindingSize;

  external Pointer<Uint8> EKM;

  @Uint32()
  external int EKMSize;

  @Uint8()
  external int KeyType;
}

/// {@category Struct}
class HTTP_REQUEST_V1 extends Struct {
  @Uint32()
  external int Flags;

  @Uint64()
  external int ConnectionId;

  @Uint64()
  external int RequestId;

  @Uint64()
  external int UrlContext;

  external HTTP_VERSION Version;

  @Int32()
  external int Verb;

  @Uint16()
  external int UnknownVerbLength;

  @Uint16()
  external int RawUrlLength;

  external Pointer<Utf8> pUnknownVerb;

  external Pointer<Utf8> pRawUrl;

  external HTTP_COOKED_URL CookedUrl;

  external HTTP_TRANSPORT_ADDRESS Address;

  external HTTP_REQUEST_HEADERS Headers;

  @Uint64()
  external int BytesReceived;

  @Uint16()
  external int EntityChunkCount;

  external Pointer<HTTP_DATA_CHUNK> pEntityChunks;

  @Uint64()
  external int RawConnectionId;

  external Pointer<HTTP_SSL_INFO> pSslInfo;
}

/// {@category Struct}
class HTTP_REQUEST_V2 extends Struct {
  external HTTP_REQUEST_V1 AnonymousBase_http_L1861_C35;

  @Uint16()
  external int RequestInfoCount;

  external Pointer<HTTP_REQUEST_INFO> pRequestInfo;
}

/// {@category Struct}
class HTTP_RESPONSE_HEADERS extends Struct {
  @Uint16()
  external int UnknownHeaderCount;

  external Pointer<HTTP_UNKNOWN_HEADER> pUnknownHeaders;

  @Uint16()
  external int TrailerCount;

  external Pointer<HTTP_UNKNOWN_HEADER> pTrailers;

  @Array(30)
  external Array<HTTP_KNOWN_HEADER> KnownHeaders;
}

/// {@category Struct}
class HTTP_RESPONSE_INFO extends Struct {
  @Int32()
  external int Type;

  @Uint32()
  external int Length;

  external Pointer pInfo;
}

/// {@category Struct}
class HTTP_RESPONSE_V1 extends Struct {
  @Uint32()
  external int Flags;

  external HTTP_VERSION Version;

  @Uint16()
  external int StatusCode;

  @Uint16()
  external int ReasonLength;

  external Pointer<Utf8> pReason;

  external HTTP_RESPONSE_HEADERS Headers;

  @Uint16()
  external int EntityChunkCount;

  external Pointer<HTTP_DATA_CHUNK> pEntityChunks;
}

/// {@category Struct}
class HTTP_RESPONSE_V2 extends Struct {
  external HTTP_RESPONSE_V1 AnonymousBase_http_L2050_C36;

  @Uint16()
  external int ResponseInfoCount;

  external Pointer<HTTP_RESPONSE_INFO> pResponseInfo;
}

/// {@category Struct}
class HTTP_SERVER_AUTHENTICATION_BASIC_PARAMS extends Struct {
  @Uint16()
  external int RealmLength;

  external Pointer<Utf16> Realm;
}

/// {@category Struct}
class HTTP_SERVER_AUTHENTICATION_DIGEST_PARAMS extends Struct {
  @Uint16()
  external int DomainNameLength;

  external Pointer<Utf16> DomainName;

  @Uint16()
  external int RealmLength;

  external Pointer<Utf16> Realm;
}

/// {@category Struct}
class HTTP_SERVER_AUTHENTICATION_INFO extends Struct {
  external HTTP_PROPERTY_FLAGS Flags;

  @Uint32()
  external int AuthSchemes;

  @Uint8()
  external int ReceiveMutualAuth;

  @Uint8()
  external int ReceiveContextHandle;

  @Uint8()
  external int DisableNTLMCredentialCaching;

  @Uint8()
  external int ExFlags;

  external HTTP_SERVER_AUTHENTICATION_DIGEST_PARAMS DigestParams;

  external HTTP_SERVER_AUTHENTICATION_BASIC_PARAMS BasicParams;
}

/// {@category Struct}
class HTTP_SERVICE_BINDING_BASE extends Struct {
  @Int32()
  external int Type;
}

/// {@category Struct}
class HTTP_SERVICE_BINDING_ extends Struct {
  external HTTP_SERVICE_BINDING_BASE Base;

  external Pointer<Utf16> Buffer;

  @Uint32()
  external int BufferSize;
}

/// {@category Struct}
class HTTP_SERVICE_CONFIG_CACHE_SET extends Struct {
  @Int32()
  external int KeyDesc;

  @Uint32()
  external int ParamDesc;
}

/// {@category Struct}
class HTTP_SERVICE_CONFIG_IP_LISTEN_PARAM extends Struct {
  @Uint16()
  external int AddrLength;

  external Pointer<SOCKADDR> pAddress;
}

/// {@category Struct}
class HTTP_SERVICE_CONFIG_IP_LISTEN_QUERY extends Struct {
  @Uint32()
  external int AddrCount;

  @Array(1)
  external Array<SOCKADDR_STORAGE> AddrList;
}

/// {@category Struct}
class HTTP_SERVICE_CONFIG_SETTING_SET extends Struct {
  @Int32()
  external int KeyDesc;

  @Uint32()
  external int ParamDesc;
}

/// {@category Struct}
class HTTP_SERVICE_CONFIG_SSL_CCS_KEY extends Struct {
  external SOCKADDR_STORAGE LocalAddress;
}

/// {@category Struct}
class HTTP_SERVICE_CONFIG_SSL_CCS_QUERY extends Struct {
  @Int32()
  external int QueryDesc;

  external HTTP_SERVICE_CONFIG_SSL_CCS_KEY KeyDesc;

  @Uint32()
  external int dwToken;
}

/// {@category Struct}
class HTTP_SERVICE_CONFIG_SSL_CCS_QUERY_EX extends Struct {
  @Int32()
  external int QueryDesc;

  external HTTP_SERVICE_CONFIG_SSL_CCS_KEY KeyDesc;

  @Uint32()
  external int dwToken;

  @Int32()
  external int ParamType;
}

/// {@category Struct}
class HTTP_SERVICE_CONFIG_SSL_CCS_SET extends Struct {
  external HTTP_SERVICE_CONFIG_SSL_CCS_KEY KeyDesc;

  external HTTP_SERVICE_CONFIG_SSL_PARAM ParamDesc;
}

/// {@category Struct}
class HTTP_SERVICE_CONFIG_SSL_CCS_SET_EX extends Struct {
  external HTTP_SERVICE_CONFIG_SSL_CCS_KEY KeyDesc;

  external HTTP_SERVICE_CONFIG_SSL_PARAM_EX ParamDesc;
}

/// {@category Struct}
class HTTP_SERVICE_CONFIG_SSL_KEY extends Struct {
  external Pointer<SOCKADDR> pIpPort;
}

/// {@category Struct}
class HTTP_SERVICE_CONFIG_SSL_KEY_EX extends Struct {
  external SOCKADDR_STORAGE IpPort;
}

/// {@category Struct}
class HTTP_SERVICE_CONFIG_SSL_PARAM extends Struct {
  @Uint32()
  external int SslHashLength;

  external Pointer pSslHash;

  external GUID AppId;

  external Pointer<Utf16> pSslCertStoreName;

  @Uint32()
  external int DefaultCertCheckMode;

  @Uint32()
  external int DefaultRevocationFreshnessTime;

  @Uint32()
  external int DefaultRevocationUrlRetrievalTimeout;

  external Pointer<Utf16> pDefaultSslCtlIdentifier;

  external Pointer<Utf16> pDefaultSslCtlStoreName;

  @Uint32()
  external int DefaultFlags;
}

/// {@category Struct}
class HTTP_SERVICE_CONFIG_SSL_PARAM_EX extends Struct {
  @Int32()
  external int ParamType;

  @Uint64()
  external int Flags;

  external _HTTP_SERVICE_CONFIG_SSL_PARAM_EX__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _HTTP_SERVICE_CONFIG_SSL_PARAM_EX__Anonymous_e__Union extends Union {
  external HTTP2_WINDOW_SIZE_PARAM Http2WindowSizeParam;

  external HTTP2_SETTINGS_LIMITS_PARAM Http2SettingsLimitsParam;

  external HTTP_PERFORMANCE_PARAM HttpPerformanceParam;

  external HTTP_TLS_RESTRICTIONS_PARAM HttpTlsRestrictionsParam;

  external HTTP_ERROR_HEADERS_PARAM HttpErrorHeadersParam;

  external HTTP_TLS_SESSION_TICKET_KEYS_PARAM HttpTlsSessionTicketKeysParam;
}

extension HTTP_SERVICE_CONFIG_SSL_PARAM_EX_Extension
    on HTTP_SERVICE_CONFIG_SSL_PARAM_EX {
  HTTP2_WINDOW_SIZE_PARAM get Http2WindowSizeParam =>
      this.Anonymous.Http2WindowSizeParam;
  set Http2WindowSizeParam(HTTP2_WINDOW_SIZE_PARAM value) =>
      this.Anonymous.Http2WindowSizeParam = value;

  HTTP2_SETTINGS_LIMITS_PARAM get Http2SettingsLimitsParam =>
      this.Anonymous.Http2SettingsLimitsParam;
  set Http2SettingsLimitsParam(HTTP2_SETTINGS_LIMITS_PARAM value) =>
      this.Anonymous.Http2SettingsLimitsParam = value;

  HTTP_PERFORMANCE_PARAM get HttpPerformanceParam =>
      this.Anonymous.HttpPerformanceParam;
  set HttpPerformanceParam(HTTP_PERFORMANCE_PARAM value) =>
      this.Anonymous.HttpPerformanceParam = value;

  HTTP_TLS_RESTRICTIONS_PARAM get HttpTlsRestrictionsParam =>
      this.Anonymous.HttpTlsRestrictionsParam;
  set HttpTlsRestrictionsParam(HTTP_TLS_RESTRICTIONS_PARAM value) =>
      this.Anonymous.HttpTlsRestrictionsParam = value;

  HTTP_ERROR_HEADERS_PARAM get HttpErrorHeadersParam =>
      this.Anonymous.HttpErrorHeadersParam;
  set HttpErrorHeadersParam(HTTP_ERROR_HEADERS_PARAM value) =>
      this.Anonymous.HttpErrorHeadersParam = value;

  HTTP_TLS_SESSION_TICKET_KEYS_PARAM get HttpTlsSessionTicketKeysParam =>
      this.Anonymous.HttpTlsSessionTicketKeysParam;
  set HttpTlsSessionTicketKeysParam(HTTP_TLS_SESSION_TICKET_KEYS_PARAM value) =>
      this.Anonymous.HttpTlsSessionTicketKeysParam = value;
}

/// {@category Struct}
class HTTP_SERVICE_CONFIG_SSL_QUERY extends Struct {
  @Int32()
  external int QueryDesc;

  external HTTP_SERVICE_CONFIG_SSL_KEY KeyDesc;

  @Uint32()
  external int dwToken;
}

/// {@category Struct}
class HTTP_SERVICE_CONFIG_SSL_QUERY_EX extends Struct {
  @Int32()
  external int QueryDesc;

  external HTTP_SERVICE_CONFIG_SSL_KEY_EX KeyDesc;

  @Uint32()
  external int dwToken;

  @Int32()
  external int ParamType;
}

/// {@category Struct}
class HTTP_SERVICE_CONFIG_SSL_SET extends Struct {
  external HTTP_SERVICE_CONFIG_SSL_KEY KeyDesc;

  external HTTP_SERVICE_CONFIG_SSL_PARAM ParamDesc;
}

/// {@category Struct}
class HTTP_SERVICE_CONFIG_SSL_SET_EX extends Struct {
  external HTTP_SERVICE_CONFIG_SSL_KEY_EX KeyDesc;

  external HTTP_SERVICE_CONFIG_SSL_PARAM_EX ParamDesc;
}

/// {@category Struct}
class HTTP_SERVICE_CONFIG_SSL_SNI_KEY extends Struct {
  external SOCKADDR_STORAGE IpPort;

  external Pointer<Utf16> Host;
}

/// {@category Struct}
class HTTP_SERVICE_CONFIG_SSL_SNI_QUERY extends Struct {
  @Int32()
  external int QueryDesc;

  external HTTP_SERVICE_CONFIG_SSL_SNI_KEY KeyDesc;

  @Uint32()
  external int dwToken;
}

/// {@category Struct}
class HTTP_SERVICE_CONFIG_SSL_SNI_QUERY_EX extends Struct {
  @Int32()
  external int QueryDesc;

  external HTTP_SERVICE_CONFIG_SSL_SNI_KEY KeyDesc;

  @Uint32()
  external int dwToken;

  @Int32()
  external int ParamType;
}

/// {@category Struct}
class HTTP_SERVICE_CONFIG_SSL_SNI_SET extends Struct {
  external HTTP_SERVICE_CONFIG_SSL_SNI_KEY KeyDesc;

  external HTTP_SERVICE_CONFIG_SSL_PARAM ParamDesc;
}

/// {@category Struct}
class HTTP_SERVICE_CONFIG_SSL_SNI_SET_EX extends Struct {
  external HTTP_SERVICE_CONFIG_SSL_SNI_KEY KeyDesc;

  external HTTP_SERVICE_CONFIG_SSL_PARAM_EX ParamDesc;
}

/// {@category Struct}
class HTTP_SERVICE_CONFIG_TIMEOUT_SET extends Struct {
  @Int32()
  external int KeyDesc;

  @Uint16()
  external int ParamDesc;
}

/// {@category Struct}
class HTTP_SERVICE_CONFIG_URLACL_KEY extends Struct {
  external Pointer<Utf16> pUrlPrefix;
}

/// {@category Struct}
class HTTP_SERVICE_CONFIG_URLACL_PARAM extends Struct {
  external Pointer<Utf16> pStringSecurityDescriptor;
}

/// {@category Struct}
class HTTP_SERVICE_CONFIG_URLACL_QUERY extends Struct {
  @Int32()
  external int QueryDesc;

  external HTTP_SERVICE_CONFIG_URLACL_KEY KeyDesc;

  @Uint32()
  external int dwToken;
}

/// {@category Struct}
class HTTP_SERVICE_CONFIG_URLACL_SET extends Struct {
  external HTTP_SERVICE_CONFIG_URLACL_KEY KeyDesc;

  external HTTP_SERVICE_CONFIG_URLACL_PARAM ParamDesc;
}

/// {@category Struct}
class HTTP_SSL_CLIENT_CERT_INFO extends Struct {
  @Uint32()
  external int CertFlags;

  @Uint32()
  external int CertEncodedSize;

  external Pointer<Uint8> pCertEncoded;

  @IntPtr()
  external int Token;

  @Uint8()
  external int CertDeniedByMapper;
}

/// {@category Struct}
class HTTP_SSL_INFO extends Struct {
  @Uint16()
  external int ServerCertKeySize;

  @Uint16()
  external int ConnectionKeySize;

  @Uint32()
  external int ServerCertIssuerSize;

  @Uint32()
  external int ServerCertSubjectSize;

  external Pointer<Utf8> pServerCertIssuer;

  external Pointer<Utf8> pServerCertSubject;

  external Pointer<HTTP_SSL_CLIENT_CERT_INFO> pClientCertInfo;

  @Uint32()
  external int SslClientCertNegotiated;
}

/// {@category Struct}
class HTTP_SSL_PROTOCOL_INFO extends Struct {
  @Uint32()
  external int Protocol;

  @Uint32()
  external int CipherType;

  @Uint32()
  external int CipherStrength;

  @Uint32()
  external int HashType;

  @Uint32()
  external int HashStrength;

  @Uint32()
  external int KeyExchangeType;

  @Uint32()
  external int KeyExchangeStrength;
}

/// {@category Struct}
class HTTP_STATE_INFO extends Struct {
  external HTTP_PROPERTY_FLAGS Flags;

  @Int32()
  external int State;
}

/// {@category Struct}
class HTTP_TIMEOUT_LIMIT_INFO extends Struct {
  external HTTP_PROPERTY_FLAGS Flags;

  @Uint16()
  external int EntityBody;

  @Uint16()
  external int DrainEntityBody;

  @Uint16()
  external int RequestQueue;

  @Uint16()
  external int IdleConnection;

  @Uint16()
  external int HeaderWait;

  @Uint32()
  external int MinSendRate;
}

/// {@category Struct}
class HTTP_TLS_RESTRICTIONS_PARAM extends Struct {
  @Uint32()
  external int RestrictionCount;

  external Pointer TlsRestrictions;
}

/// {@category Struct}
class HTTP_TLS_SESSION_TICKET_KEYS_PARAM extends Struct {
  @Uint32()
  external int SessionTicketKeyCount;

  external Pointer SessionTicketKeys;
}

/// {@category Struct}
class HTTP_TRANSPORT_ADDRESS extends Struct {
  external Pointer<SOCKADDR> pRemoteAddress;

  external Pointer<SOCKADDR> pLocalAddress;
}

/// {@category Struct}
class HTTP_UNKNOWN_HEADER extends Struct {
  @Uint16()
  external int NameLength;

  @Uint16()
  external int RawValueLength;

  external Pointer<Utf8> pName;

  external Pointer<Utf8> pRawValue;
}

/// {@category Struct}
class HTTP_VERSION extends Struct {
  @Uint16()
  external int MajorVersion;

  @Uint16()
  external int MinorVersion;
}

/// {@category Struct}
class HTTP_WSK_API_TIMINGS extends Struct {
  @Uint64()
  external int ConnectCount;

  @Uint64()
  external int ConnectSum;

  @Uint64()
  external int DisconnectCount;

  @Uint64()
  external int DisconnectSum;

  @Uint64()
  external int SendCount;

  @Uint64()
  external int SendSum;

  @Uint64()
  external int ReceiveCount;

  @Uint64()
  external int ReceiveSum;

  @Uint64()
  external int ReleaseCount;

  @Uint64()
  external int ReleaseSum;

  @Uint64()
  external int ControlSocketCount;

  @Uint64()
  external int ControlSocketSum;
}
