// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';

import '../../combase.dart';
import '../../guid.dart';
import '../../foundation/structs.g.dart';
import '../../networking/httpserver/structs.g.dart';
import '../../specialTypes.dart';
import '../../security/structs.g.dart'; // -----------------------------------------------------------------------

// httpapi.dll
// -----------------------------------------------------------------------
final _httpapi = DynamicLibrary.open('httpapi.dll');

int HttpAddFragmentToCache(
  int RequestQueueHandle,
  Pointer<Utf16> UrlPrefix,
  Pointer<HTTP_DATA_CHUNK> DataChunk,
  Pointer<HTTP_CACHE_POLICY> CachePolicy,
  Pointer<OVERLAPPED> Overlapped,
) =>
    _HttpAddFragmentToCache(
      RequestQueueHandle,
      UrlPrefix,
      DataChunk,
      CachePolicy,
      Overlapped,
    );

late final _HttpAddFragmentToCache = _httpapi.lookupFunction<
    Uint32 Function(
  IntPtr RequestQueueHandle,
  Pointer<Utf16> UrlPrefix,
  Pointer<HTTP_DATA_CHUNK> DataChunk,
  Pointer<HTTP_CACHE_POLICY> CachePolicy,
  Pointer<OVERLAPPED> Overlapped,
),
    int Function(
  int RequestQueueHandle,
  Pointer<Utf16> UrlPrefix,
  Pointer<HTTP_DATA_CHUNK> DataChunk,
  Pointer<HTTP_CACHE_POLICY> CachePolicy,
  Pointer<OVERLAPPED> Overlapped,
)>('HttpAddFragmentToCache');

int HttpAddUrl(
  int RequestQueueHandle,
  Pointer<Utf16> FullyQualifiedUrl,
  Pointer Reserved,
) =>
    _HttpAddUrl(
      RequestQueueHandle,
      FullyQualifiedUrl,
      Reserved,
    );

late final _HttpAddUrl = _httpapi.lookupFunction<
    Uint32 Function(
  IntPtr RequestQueueHandle,
  Pointer<Utf16> FullyQualifiedUrl,
  Pointer Reserved,
),
    int Function(
  int RequestQueueHandle,
  Pointer<Utf16> FullyQualifiedUrl,
  Pointer Reserved,
)>('HttpAddUrl');

int HttpAddUrlToUrlGroup(
  int UrlGroupId,
  Pointer<Utf16> pFullyQualifiedUrl,
  int UrlContext,
  int Reserved,
) =>
    _HttpAddUrlToUrlGroup(
      UrlGroupId,
      pFullyQualifiedUrl,
      UrlContext,
      Reserved,
    );

late final _HttpAddUrlToUrlGroup = _httpapi.lookupFunction<
    Uint32 Function(
  Uint64 UrlGroupId,
  Pointer<Utf16> pFullyQualifiedUrl,
  Uint64 UrlContext,
  Uint32 Reserved,
),
    int Function(
  int UrlGroupId,
  Pointer<Utf16> pFullyQualifiedUrl,
  int UrlContext,
  int Reserved,
)>('HttpAddUrlToUrlGroup');

int HttpCancelHttpRequest(
  int RequestQueueHandle,
  int RequestId,
  Pointer<OVERLAPPED> Overlapped,
) =>
    _HttpCancelHttpRequest(
      RequestQueueHandle,
      RequestId,
      Overlapped,
    );

late final _HttpCancelHttpRequest = _httpapi.lookupFunction<
    Uint32 Function(
  IntPtr RequestQueueHandle,
  Uint64 RequestId,
  Pointer<OVERLAPPED> Overlapped,
),
    int Function(
  int RequestQueueHandle,
  int RequestId,
  Pointer<OVERLAPPED> Overlapped,
)>('HttpCancelHttpRequest');

int HttpCloseRequestQueue(
  int RequestQueueHandle,
) =>
    _HttpCloseRequestQueue(
      RequestQueueHandle,
    );

late final _HttpCloseRequestQueue = _httpapi.lookupFunction<
    Uint32 Function(
  IntPtr RequestQueueHandle,
),
    int Function(
  int RequestQueueHandle,
)>('HttpCloseRequestQueue');

int HttpCloseServerSession(
  int ServerSessionId,
) =>
    _HttpCloseServerSession(
      ServerSessionId,
    );

late final _HttpCloseServerSession = _httpapi.lookupFunction<
    Uint32 Function(
  Uint64 ServerSessionId,
),
    int Function(
  int ServerSessionId,
)>('HttpCloseServerSession');

int HttpCloseUrlGroup(
  int UrlGroupId,
) =>
    _HttpCloseUrlGroup(
      UrlGroupId,
    );

late final _HttpCloseUrlGroup = _httpapi.lookupFunction<
    Uint32 Function(
  Uint64 UrlGroupId,
),
    int Function(
  int UrlGroupId,
)>('HttpCloseUrlGroup');

int HttpCreateHttpHandle(
  Pointer<IntPtr> RequestQueueHandle,
  int Reserved,
) =>
    _HttpCreateHttpHandle(
      RequestQueueHandle,
      Reserved,
    );

late final _HttpCreateHttpHandle = _httpapi.lookupFunction<
    Uint32 Function(
  Pointer<IntPtr> RequestQueueHandle,
  Uint32 Reserved,
),
    int Function(
  Pointer<IntPtr> RequestQueueHandle,
  int Reserved,
)>('HttpCreateHttpHandle');

int HttpCreateRequestQueue(
  HTTPAPI_VERSION Version,
  Pointer<Utf16> Name,
  Pointer<SECURITY_ATTRIBUTES> SecurityAttributes,
  int Flags,
  Pointer<IntPtr> RequestQueueHandle,
) =>
    _HttpCreateRequestQueue(
      Version,
      Name,
      SecurityAttributes,
      Flags,
      RequestQueueHandle,
    );

late final _HttpCreateRequestQueue = _httpapi.lookupFunction<
    Uint32 Function(
  HTTPAPI_VERSION Version,
  Pointer<Utf16> Name,
  Pointer<SECURITY_ATTRIBUTES> SecurityAttributes,
  Uint32 Flags,
  Pointer<IntPtr> RequestQueueHandle,
),
    int Function(
  HTTPAPI_VERSION Version,
  Pointer<Utf16> Name,
  Pointer<SECURITY_ATTRIBUTES> SecurityAttributes,
  int Flags,
  Pointer<IntPtr> RequestQueueHandle,
)>('HttpCreateRequestQueue');

int HttpCreateServerSession(
  HTTPAPI_VERSION Version,
  Pointer<Uint64> ServerSessionId,
  int Reserved,
) =>
    _HttpCreateServerSession(
      Version,
      ServerSessionId,
      Reserved,
    );

late final _HttpCreateServerSession = _httpapi.lookupFunction<
    Uint32 Function(
  HTTPAPI_VERSION Version,
  Pointer<Uint64> ServerSessionId,
  Uint32 Reserved,
),
    int Function(
  HTTPAPI_VERSION Version,
  Pointer<Uint64> ServerSessionId,
  int Reserved,
)>('HttpCreateServerSession');

int HttpCreateUrlGroup(
  int ServerSessionId,
  Pointer<Uint64> pUrlGroupId,
  int Reserved,
) =>
    _HttpCreateUrlGroup(
      ServerSessionId,
      pUrlGroupId,
      Reserved,
    );

late final _HttpCreateUrlGroup = _httpapi.lookupFunction<
    Uint32 Function(
  Uint64 ServerSessionId,
  Pointer<Uint64> pUrlGroupId,
  Uint32 Reserved,
),
    int Function(
  int ServerSessionId,
  Pointer<Uint64> pUrlGroupId,
  int Reserved,
)>('HttpCreateUrlGroup');

int HttpDeclarePush(
  int RequestQueueHandle,
  int RequestId,
  int Verb,
  Pointer<Utf16> Path,
  Pointer<Utf8> Query,
  Pointer<HTTP_REQUEST_HEADERS> Headers,
) =>
    _HttpDeclarePush(
      RequestQueueHandle,
      RequestId,
      Verb,
      Path,
      Query,
      Headers,
    );

late final _HttpDeclarePush = _httpapi.lookupFunction<
    Uint32 Function(
  IntPtr RequestQueueHandle,
  Uint64 RequestId,
  Int32 Verb,
  Pointer<Utf16> Path,
  Pointer<Utf8> Query,
  Pointer<HTTP_REQUEST_HEADERS> Headers,
),
    int Function(
  int RequestQueueHandle,
  int RequestId,
  int Verb,
  Pointer<Utf16> Path,
  Pointer<Utf8> Query,
  Pointer<HTTP_REQUEST_HEADERS> Headers,
)>('HttpDeclarePush');

int HttpDelegateRequestEx(
  int RequestQueueHandle,
  int DelegateQueueHandle,
  int RequestId,
  int DelegateUrlGroupId,
  int PropertyInfoSetSize,
  Pointer<HTTP_DELEGATE_REQUEST_PROPERTY_INFO> PropertyInfoSet,
) =>
    _HttpDelegateRequestEx(
      RequestQueueHandle,
      DelegateQueueHandle,
      RequestId,
      DelegateUrlGroupId,
      PropertyInfoSetSize,
      PropertyInfoSet,
    );

late final _HttpDelegateRequestEx = _httpapi.lookupFunction<
    Uint32 Function(
  IntPtr RequestQueueHandle,
  IntPtr DelegateQueueHandle,
  Uint64 RequestId,
  Uint64 DelegateUrlGroupId,
  Uint32 PropertyInfoSetSize,
  Pointer<HTTP_DELEGATE_REQUEST_PROPERTY_INFO> PropertyInfoSet,
),
    int Function(
  int RequestQueueHandle,
  int DelegateQueueHandle,
  int RequestId,
  int DelegateUrlGroupId,
  int PropertyInfoSetSize,
  Pointer<HTTP_DELEGATE_REQUEST_PROPERTY_INFO> PropertyInfoSet,
)>('HttpDelegateRequestEx');

int HttpDeleteServiceConfiguration(
  int ServiceHandle,
  int ConfigId,
  Pointer pConfigInformation,
  int ConfigInformationLength,
  Pointer<OVERLAPPED> pOverlapped,
) =>
    _HttpDeleteServiceConfiguration(
      ServiceHandle,
      ConfigId,
      pConfigInformation,
      ConfigInformationLength,
      pOverlapped,
    );

late final _HttpDeleteServiceConfiguration = _httpapi.lookupFunction<
    Uint32 Function(
  IntPtr ServiceHandle,
  Int32 ConfigId,
  Pointer pConfigInformation,
  Uint32 ConfigInformationLength,
  Pointer<OVERLAPPED> pOverlapped,
),
    int Function(
  int ServiceHandle,
  int ConfigId,
  Pointer pConfigInformation,
  int ConfigInformationLength,
  Pointer<OVERLAPPED> pOverlapped,
)>('HttpDeleteServiceConfiguration');

int HttpFindUrlGroupId(
  Pointer<Utf16> FullyQualifiedUrl,
  int RequestQueueHandle,
  Pointer<Uint64> UrlGroupId,
) =>
    _HttpFindUrlGroupId(
      FullyQualifiedUrl,
      RequestQueueHandle,
      UrlGroupId,
    );

late final _HttpFindUrlGroupId = _httpapi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> FullyQualifiedUrl,
  IntPtr RequestQueueHandle,
  Pointer<Uint64> UrlGroupId,
),
    int Function(
  Pointer<Utf16> FullyQualifiedUrl,
  int RequestQueueHandle,
  Pointer<Uint64> UrlGroupId,
)>('HttpFindUrlGroupId');

int HttpFlushResponseCache(
  int RequestQueueHandle,
  Pointer<Utf16> UrlPrefix,
  int Flags,
  Pointer<OVERLAPPED> Overlapped,
) =>
    _HttpFlushResponseCache(
      RequestQueueHandle,
      UrlPrefix,
      Flags,
      Overlapped,
    );

late final _HttpFlushResponseCache = _httpapi.lookupFunction<
    Uint32 Function(
  IntPtr RequestQueueHandle,
  Pointer<Utf16> UrlPrefix,
  Uint32 Flags,
  Pointer<OVERLAPPED> Overlapped,
),
    int Function(
  int RequestQueueHandle,
  Pointer<Utf16> UrlPrefix,
  int Flags,
  Pointer<OVERLAPPED> Overlapped,
)>('HttpFlushResponseCache');

int HttpGetExtension(
  HTTPAPI_VERSION Version,
  int Extension,
  Pointer Buffer,
  int BufferSize,
) =>
    _HttpGetExtension(
      Version,
      Extension,
      Buffer,
      BufferSize,
    );

late final _HttpGetExtension = _httpapi.lookupFunction<
    Uint32 Function(
  HTTPAPI_VERSION Version,
  Uint32 Extension,
  Pointer Buffer,
  Uint32 BufferSize,
),
    int Function(
  HTTPAPI_VERSION Version,
  int Extension,
  Pointer Buffer,
  int BufferSize,
)>('HttpGetExtension');

int HttpInitialize(
  HTTPAPI_VERSION Version,
  int Flags,
  Pointer pReserved,
) =>
    _HttpInitialize(
      Version,
      Flags,
      pReserved,
    );

late final _HttpInitialize = _httpapi.lookupFunction<
    Uint32 Function(
  HTTPAPI_VERSION Version,
  Uint32 Flags,
  Pointer pReserved,
),
    int Function(
  HTTPAPI_VERSION Version,
  int Flags,
  Pointer pReserved,
)>('HttpInitialize');

int HttpIsFeatureSupported(
  int FeatureId,
) =>
    _HttpIsFeatureSupported(
      FeatureId,
    );

late final _HttpIsFeatureSupported = _httpapi.lookupFunction<
    Int32 Function(
  Int32 FeatureId,
),
    int Function(
  int FeatureId,
)>('HttpIsFeatureSupported');

int HttpPrepareUrl(
  Pointer Reserved,
  int Flags,
  Pointer<Utf16> Url,
  Pointer<Pointer<Utf16>> PreparedUrl,
) =>
    _HttpPrepareUrl(
      Reserved,
      Flags,
      Url,
      PreparedUrl,
    );

late final _HttpPrepareUrl = _httpapi.lookupFunction<
    Uint32 Function(
  Pointer Reserved,
  Uint32 Flags,
  Pointer<Utf16> Url,
  Pointer<Pointer<Utf16>> PreparedUrl,
),
    int Function(
  Pointer Reserved,
  int Flags,
  Pointer<Utf16> Url,
  Pointer<Pointer<Utf16>> PreparedUrl,
)>('HttpPrepareUrl');

int HttpQueryRequestQueueProperty(
  int RequestQueueHandle,
  int Property,
  Pointer PropertyInformation,
  int PropertyInformationLength,
  int Reserved1,
  Pointer<Uint32> ReturnLength,
  Pointer Reserved2,
) =>
    _HttpQueryRequestQueueProperty(
      RequestQueueHandle,
      Property,
      PropertyInformation,
      PropertyInformationLength,
      Reserved1,
      ReturnLength,
      Reserved2,
    );

late final _HttpQueryRequestQueueProperty = _httpapi.lookupFunction<
    Uint32 Function(
  IntPtr RequestQueueHandle,
  Int32 Property,
  Pointer PropertyInformation,
  Uint32 PropertyInformationLength,
  Uint32 Reserved1,
  Pointer<Uint32> ReturnLength,
  Pointer Reserved2,
),
    int Function(
  int RequestQueueHandle,
  int Property,
  Pointer PropertyInformation,
  int PropertyInformationLength,
  int Reserved1,
  Pointer<Uint32> ReturnLength,
  Pointer Reserved2,
)>('HttpQueryRequestQueueProperty');

int HttpQueryServerSessionProperty(
  int ServerSessionId,
  int Property,
  Pointer PropertyInformation,
  int PropertyInformationLength,
  Pointer<Uint32> ReturnLength,
) =>
    _HttpQueryServerSessionProperty(
      ServerSessionId,
      Property,
      PropertyInformation,
      PropertyInformationLength,
      ReturnLength,
    );

late final _HttpQueryServerSessionProperty = _httpapi.lookupFunction<
    Uint32 Function(
  Uint64 ServerSessionId,
  Int32 Property,
  Pointer PropertyInformation,
  Uint32 PropertyInformationLength,
  Pointer<Uint32> ReturnLength,
),
    int Function(
  int ServerSessionId,
  int Property,
  Pointer PropertyInformation,
  int PropertyInformationLength,
  Pointer<Uint32> ReturnLength,
)>('HttpQueryServerSessionProperty');

int HttpQueryServiceConfiguration(
  int ServiceHandle,
  int ConfigId,
  Pointer pInput,
  int InputLength,
  Pointer pOutput,
  int OutputLength,
  Pointer<Uint32> pReturnLength,
  Pointer<OVERLAPPED> pOverlapped,
) =>
    _HttpQueryServiceConfiguration(
      ServiceHandle,
      ConfigId,
      pInput,
      InputLength,
      pOutput,
      OutputLength,
      pReturnLength,
      pOverlapped,
    );

late final _HttpQueryServiceConfiguration = _httpapi.lookupFunction<
    Uint32 Function(
  IntPtr ServiceHandle,
  Int32 ConfigId,
  Pointer pInput,
  Uint32 InputLength,
  Pointer pOutput,
  Uint32 OutputLength,
  Pointer<Uint32> pReturnLength,
  Pointer<OVERLAPPED> pOverlapped,
),
    int Function(
  int ServiceHandle,
  int ConfigId,
  Pointer pInput,
  int InputLength,
  Pointer pOutput,
  int OutputLength,
  Pointer<Uint32> pReturnLength,
  Pointer<OVERLAPPED> pOverlapped,
)>('HttpQueryServiceConfiguration');

int HttpQueryUrlGroupProperty(
  int UrlGroupId,
  int Property,
  Pointer PropertyInformation,
  int PropertyInformationLength,
  Pointer<Uint32> ReturnLength,
) =>
    _HttpQueryUrlGroupProperty(
      UrlGroupId,
      Property,
      PropertyInformation,
      PropertyInformationLength,
      ReturnLength,
    );

late final _HttpQueryUrlGroupProperty = _httpapi.lookupFunction<
    Uint32 Function(
  Uint64 UrlGroupId,
  Int32 Property,
  Pointer PropertyInformation,
  Uint32 PropertyInformationLength,
  Pointer<Uint32> ReturnLength,
),
    int Function(
  int UrlGroupId,
  int Property,
  Pointer PropertyInformation,
  int PropertyInformationLength,
  Pointer<Uint32> ReturnLength,
)>('HttpQueryUrlGroupProperty');

int HttpReadFragmentFromCache(
  int RequestQueueHandle,
  Pointer<Utf16> UrlPrefix,
  Pointer<HTTP_BYTE_RANGE> ByteRange,
  Pointer Buffer,
  int BufferLength,
  Pointer<Uint32> BytesRead,
  Pointer<OVERLAPPED> Overlapped,
) =>
    _HttpReadFragmentFromCache(
      RequestQueueHandle,
      UrlPrefix,
      ByteRange,
      Buffer,
      BufferLength,
      BytesRead,
      Overlapped,
    );

late final _HttpReadFragmentFromCache = _httpapi.lookupFunction<
    Uint32 Function(
  IntPtr RequestQueueHandle,
  Pointer<Utf16> UrlPrefix,
  Pointer<HTTP_BYTE_RANGE> ByteRange,
  Pointer Buffer,
  Uint32 BufferLength,
  Pointer<Uint32> BytesRead,
  Pointer<OVERLAPPED> Overlapped,
),
    int Function(
  int RequestQueueHandle,
  Pointer<Utf16> UrlPrefix,
  Pointer<HTTP_BYTE_RANGE> ByteRange,
  Pointer Buffer,
  int BufferLength,
  Pointer<Uint32> BytesRead,
  Pointer<OVERLAPPED> Overlapped,
)>('HttpReadFragmentFromCache');

int HttpReceiveClientCertificate(
  int RequestQueueHandle,
  int ConnectionId,
  int Flags,
  Pointer<HTTP_SSL_CLIENT_CERT_INFO> SslClientCertInfo,
  int SslClientCertInfoSize,
  Pointer<Uint32> BytesReceived,
  Pointer<OVERLAPPED> Overlapped,
) =>
    _HttpReceiveClientCertificate(
      RequestQueueHandle,
      ConnectionId,
      Flags,
      SslClientCertInfo,
      SslClientCertInfoSize,
      BytesReceived,
      Overlapped,
    );

late final _HttpReceiveClientCertificate = _httpapi.lookupFunction<
    Uint32 Function(
  IntPtr RequestQueueHandle,
  Uint64 ConnectionId,
  Uint32 Flags,
  Pointer<HTTP_SSL_CLIENT_CERT_INFO> SslClientCertInfo,
  Uint32 SslClientCertInfoSize,
  Pointer<Uint32> BytesReceived,
  Pointer<OVERLAPPED> Overlapped,
),
    int Function(
  int RequestQueueHandle,
  int ConnectionId,
  int Flags,
  Pointer<HTTP_SSL_CLIENT_CERT_INFO> SslClientCertInfo,
  int SslClientCertInfoSize,
  Pointer<Uint32> BytesReceived,
  Pointer<OVERLAPPED> Overlapped,
)>('HttpReceiveClientCertificate');

int HttpReceiveHttpRequest(
  int RequestQueueHandle,
  int RequestId,
  int Flags,
  Pointer<HTTP_REQUEST_V2> RequestBuffer,
  int RequestBufferLength,
  Pointer<Uint32> BytesReturned,
  Pointer<OVERLAPPED> Overlapped,
) =>
    _HttpReceiveHttpRequest(
      RequestQueueHandle,
      RequestId,
      Flags,
      RequestBuffer,
      RequestBufferLength,
      BytesReturned,
      Overlapped,
    );

late final _HttpReceiveHttpRequest = _httpapi.lookupFunction<
    Uint32 Function(
  IntPtr RequestQueueHandle,
  Uint64 RequestId,
  Uint32 Flags,
  Pointer<HTTP_REQUEST_V2> RequestBuffer,
  Uint32 RequestBufferLength,
  Pointer<Uint32> BytesReturned,
  Pointer<OVERLAPPED> Overlapped,
),
    int Function(
  int RequestQueueHandle,
  int RequestId,
  int Flags,
  Pointer<HTTP_REQUEST_V2> RequestBuffer,
  int RequestBufferLength,
  Pointer<Uint32> BytesReturned,
  Pointer<OVERLAPPED> Overlapped,
)>('HttpReceiveHttpRequest');

int HttpReceiveRequestEntityBody(
  int RequestQueueHandle,
  int RequestId,
  int Flags,
  Pointer EntityBuffer,
  int EntityBufferLength,
  Pointer<Uint32> BytesReturned,
  Pointer<OVERLAPPED> Overlapped,
) =>
    _HttpReceiveRequestEntityBody(
      RequestQueueHandle,
      RequestId,
      Flags,
      EntityBuffer,
      EntityBufferLength,
      BytesReturned,
      Overlapped,
    );

late final _HttpReceiveRequestEntityBody = _httpapi.lookupFunction<
    Uint32 Function(
  IntPtr RequestQueueHandle,
  Uint64 RequestId,
  Uint32 Flags,
  Pointer EntityBuffer,
  Uint32 EntityBufferLength,
  Pointer<Uint32> BytesReturned,
  Pointer<OVERLAPPED> Overlapped,
),
    int Function(
  int RequestQueueHandle,
  int RequestId,
  int Flags,
  Pointer EntityBuffer,
  int EntityBufferLength,
  Pointer<Uint32> BytesReturned,
  Pointer<OVERLAPPED> Overlapped,
)>('HttpReceiveRequestEntityBody');

int HttpRemoveUrl(
  int RequestQueueHandle,
  Pointer<Utf16> FullyQualifiedUrl,
) =>
    _HttpRemoveUrl(
      RequestQueueHandle,
      FullyQualifiedUrl,
    );

late final _HttpRemoveUrl = _httpapi.lookupFunction<
    Uint32 Function(
  IntPtr RequestQueueHandle,
  Pointer<Utf16> FullyQualifiedUrl,
),
    int Function(
  int RequestQueueHandle,
  Pointer<Utf16> FullyQualifiedUrl,
)>('HttpRemoveUrl');

int HttpRemoveUrlFromUrlGroup(
  int UrlGroupId,
  Pointer<Utf16> pFullyQualifiedUrl,
  int Flags,
) =>
    _HttpRemoveUrlFromUrlGroup(
      UrlGroupId,
      pFullyQualifiedUrl,
      Flags,
    );

late final _HttpRemoveUrlFromUrlGroup = _httpapi.lookupFunction<
    Uint32 Function(
  Uint64 UrlGroupId,
  Pointer<Utf16> pFullyQualifiedUrl,
  Uint32 Flags,
),
    int Function(
  int UrlGroupId,
  Pointer<Utf16> pFullyQualifiedUrl,
  int Flags,
)>('HttpRemoveUrlFromUrlGroup');

int HttpSendHttpResponse(
  int RequestQueueHandle,
  int RequestId,
  int Flags,
  Pointer<HTTP_RESPONSE_V2> HttpResponse,
  Pointer<HTTP_CACHE_POLICY> CachePolicy,
  Pointer<Uint32> BytesSent,
  Pointer Reserved1,
  int Reserved2,
  Pointer<OVERLAPPED> Overlapped,
  Pointer<HTTP_LOG_DATA> LogData,
) =>
    _HttpSendHttpResponse(
      RequestQueueHandle,
      RequestId,
      Flags,
      HttpResponse,
      CachePolicy,
      BytesSent,
      Reserved1,
      Reserved2,
      Overlapped,
      LogData,
    );

late final _HttpSendHttpResponse = _httpapi.lookupFunction<
    Uint32 Function(
  IntPtr RequestQueueHandle,
  Uint64 RequestId,
  Uint32 Flags,
  Pointer<HTTP_RESPONSE_V2> HttpResponse,
  Pointer<HTTP_CACHE_POLICY> CachePolicy,
  Pointer<Uint32> BytesSent,
  Pointer Reserved1,
  Uint32 Reserved2,
  Pointer<OVERLAPPED> Overlapped,
  Pointer<HTTP_LOG_DATA> LogData,
),
    int Function(
  int RequestQueueHandle,
  int RequestId,
  int Flags,
  Pointer<HTTP_RESPONSE_V2> HttpResponse,
  Pointer<HTTP_CACHE_POLICY> CachePolicy,
  Pointer<Uint32> BytesSent,
  Pointer Reserved1,
  int Reserved2,
  Pointer<OVERLAPPED> Overlapped,
  Pointer<HTTP_LOG_DATA> LogData,
)>('HttpSendHttpResponse');

int HttpSendResponseEntityBody(
  int RequestQueueHandle,
  int RequestId,
  int Flags,
  int EntityChunkCount,
  Pointer<HTTP_DATA_CHUNK> EntityChunks,
  Pointer<Uint32> BytesSent,
  Pointer Reserved1,
  int Reserved2,
  Pointer<OVERLAPPED> Overlapped,
  Pointer<HTTP_LOG_DATA> LogData,
) =>
    _HttpSendResponseEntityBody(
      RequestQueueHandle,
      RequestId,
      Flags,
      EntityChunkCount,
      EntityChunks,
      BytesSent,
      Reserved1,
      Reserved2,
      Overlapped,
      LogData,
    );

late final _HttpSendResponseEntityBody = _httpapi.lookupFunction<
    Uint32 Function(
  IntPtr RequestQueueHandle,
  Uint64 RequestId,
  Uint32 Flags,
  Uint16 EntityChunkCount,
  Pointer<HTTP_DATA_CHUNK> EntityChunks,
  Pointer<Uint32> BytesSent,
  Pointer Reserved1,
  Uint32 Reserved2,
  Pointer<OVERLAPPED> Overlapped,
  Pointer<HTTP_LOG_DATA> LogData,
),
    int Function(
  int RequestQueueHandle,
  int RequestId,
  int Flags,
  int EntityChunkCount,
  Pointer<HTTP_DATA_CHUNK> EntityChunks,
  Pointer<Uint32> BytesSent,
  Pointer Reserved1,
  int Reserved2,
  Pointer<OVERLAPPED> Overlapped,
  Pointer<HTTP_LOG_DATA> LogData,
)>('HttpSendResponseEntityBody');

int HttpSetRequestProperty(
  int RequestQueueHandle,
  int Id,
  int PropertyId,
  Pointer Input,
  int InputPropertySize,
  Pointer<OVERLAPPED> Overlapped,
) =>
    _HttpSetRequestProperty(
      RequestQueueHandle,
      Id,
      PropertyId,
      Input,
      InputPropertySize,
      Overlapped,
    );

late final _HttpSetRequestProperty = _httpapi.lookupFunction<
    Uint32 Function(
  IntPtr RequestQueueHandle,
  Uint64 Id,
  Int32 PropertyId,
  Pointer Input,
  Uint32 InputPropertySize,
  Pointer<OVERLAPPED> Overlapped,
),
    int Function(
  int RequestQueueHandle,
  int Id,
  int PropertyId,
  Pointer Input,
  int InputPropertySize,
  Pointer<OVERLAPPED> Overlapped,
)>('HttpSetRequestProperty');

int HttpSetRequestQueueProperty(
  int RequestQueueHandle,
  int Property,
  Pointer PropertyInformation,
  int PropertyInformationLength,
  int Reserved1,
  Pointer Reserved2,
) =>
    _HttpSetRequestQueueProperty(
      RequestQueueHandle,
      Property,
      PropertyInformation,
      PropertyInformationLength,
      Reserved1,
      Reserved2,
    );

late final _HttpSetRequestQueueProperty = _httpapi.lookupFunction<
    Uint32 Function(
  IntPtr RequestQueueHandle,
  Int32 Property,
  Pointer PropertyInformation,
  Uint32 PropertyInformationLength,
  Uint32 Reserved1,
  Pointer Reserved2,
),
    int Function(
  int RequestQueueHandle,
  int Property,
  Pointer PropertyInformation,
  int PropertyInformationLength,
  int Reserved1,
  Pointer Reserved2,
)>('HttpSetRequestQueueProperty');

int HttpSetServerSessionProperty(
  int ServerSessionId,
  int Property,
  Pointer PropertyInformation,
  int PropertyInformationLength,
) =>
    _HttpSetServerSessionProperty(
      ServerSessionId,
      Property,
      PropertyInformation,
      PropertyInformationLength,
    );

late final _HttpSetServerSessionProperty = _httpapi.lookupFunction<
    Uint32 Function(
  Uint64 ServerSessionId,
  Int32 Property,
  Pointer PropertyInformation,
  Uint32 PropertyInformationLength,
),
    int Function(
  int ServerSessionId,
  int Property,
  Pointer PropertyInformation,
  int PropertyInformationLength,
)>('HttpSetServerSessionProperty');

int HttpSetServiceConfiguration(
  int ServiceHandle,
  int ConfigId,
  Pointer pConfigInformation,
  int ConfigInformationLength,
  Pointer<OVERLAPPED> pOverlapped,
) =>
    _HttpSetServiceConfiguration(
      ServiceHandle,
      ConfigId,
      pConfigInformation,
      ConfigInformationLength,
      pOverlapped,
    );

late final _HttpSetServiceConfiguration = _httpapi.lookupFunction<
    Uint32 Function(
  IntPtr ServiceHandle,
  Int32 ConfigId,
  Pointer pConfigInformation,
  Uint32 ConfigInformationLength,
  Pointer<OVERLAPPED> pOverlapped,
),
    int Function(
  int ServiceHandle,
  int ConfigId,
  Pointer pConfigInformation,
  int ConfigInformationLength,
  Pointer<OVERLAPPED> pOverlapped,
)>('HttpSetServiceConfiguration');

int HttpSetUrlGroupProperty(
  int UrlGroupId,
  int Property,
  Pointer PropertyInformation,
  int PropertyInformationLength,
) =>
    _HttpSetUrlGroupProperty(
      UrlGroupId,
      Property,
      PropertyInformation,
      PropertyInformationLength,
    );

late final _HttpSetUrlGroupProperty = _httpapi.lookupFunction<
    Uint32 Function(
  Uint64 UrlGroupId,
  Int32 Property,
  Pointer PropertyInformation,
  Uint32 PropertyInformationLength,
),
    int Function(
  int UrlGroupId,
  int Property,
  Pointer PropertyInformation,
  int PropertyInformationLength,
)>('HttpSetUrlGroupProperty');

int HttpShutdownRequestQueue(
  int RequestQueueHandle,
) =>
    _HttpShutdownRequestQueue(
      RequestQueueHandle,
    );

late final _HttpShutdownRequestQueue = _httpapi.lookupFunction<
    Uint32 Function(
  IntPtr RequestQueueHandle,
),
    int Function(
  int RequestQueueHandle,
)>('HttpShutdownRequestQueue');

int HttpTerminate(
  int Flags,
  Pointer pReserved,
) =>
    _HttpTerminate(
      Flags,
      pReserved,
    );

late final _HttpTerminate = _httpapi.lookupFunction<
    Uint32 Function(
  Uint32 Flags,
  Pointer pReserved,
),
    int Function(
  int Flags,
  Pointer pReserved,
)>('HttpTerminate');

int HttpUpdateServiceConfiguration(
  int $Handle,
  int ConfigId,
  Pointer ConfigInfo,
  int ConfigInfoLength,
  Pointer<OVERLAPPED> Overlapped,
) =>
    _HttpUpdateServiceConfiguration(
      $Handle,
      ConfigId,
      ConfigInfo,
      ConfigInfoLength,
      Overlapped,
    );

late final _HttpUpdateServiceConfiguration = _httpapi.lookupFunction<
    Uint32 Function(
  IntPtr $Handle,
  Int32 ConfigId,
  Pointer ConfigInfo,
  Uint32 ConfigInfoLength,
  Pointer<OVERLAPPED> Overlapped,
),
    int Function(
  int $Handle,
  int ConfigId,
  Pointer ConfigInfo,
  int ConfigInfoLength,
  Pointer<OVERLAPPED> Overlapped,
)>('HttpUpdateServiceConfiguration');

int HttpWaitForDemandStart(
  int RequestQueueHandle,
  Pointer<OVERLAPPED> Overlapped,
) =>
    _HttpWaitForDemandStart(
      RequestQueueHandle,
      Overlapped,
    );

late final _HttpWaitForDemandStart = _httpapi.lookupFunction<
    Uint32 Function(
  IntPtr RequestQueueHandle,
  Pointer<OVERLAPPED> Overlapped,
),
    int Function(
  int RequestQueueHandle,
  Pointer<OVERLAPPED> Overlapped,
)>('HttpWaitForDemandStart');

int HttpWaitForDisconnect(
  int RequestQueueHandle,
  int ConnectionId,
  Pointer<OVERLAPPED> Overlapped,
) =>
    _HttpWaitForDisconnect(
      RequestQueueHandle,
      ConnectionId,
      Overlapped,
    );

late final _HttpWaitForDisconnect = _httpapi.lookupFunction<
    Uint32 Function(
  IntPtr RequestQueueHandle,
  Uint64 ConnectionId,
  Pointer<OVERLAPPED> Overlapped,
),
    int Function(
  int RequestQueueHandle,
  int ConnectionId,
  Pointer<OVERLAPPED> Overlapped,
)>('HttpWaitForDisconnect');

int HttpWaitForDisconnectEx(
  int RequestQueueHandle,
  int ConnectionId,
  int Reserved,
  Pointer<OVERLAPPED> Overlapped,
) =>
    _HttpWaitForDisconnectEx(
      RequestQueueHandle,
      ConnectionId,
      Reserved,
      Overlapped,
    );

late final _HttpWaitForDisconnectEx = _httpapi.lookupFunction<
    Uint32 Function(
  IntPtr RequestQueueHandle,
  Uint64 ConnectionId,
  Uint32 Reserved,
  Pointer<OVERLAPPED> Overlapped,
),
    int Function(
  int RequestQueueHandle,
  int ConnectionId,
  int Reserved,
  Pointer<OVERLAPPED> Overlapped,
)>('HttpWaitForDisconnectEx');
