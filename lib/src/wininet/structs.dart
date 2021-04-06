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

class HTTP_PUSH_WAIT_HANDLE extends Struct {
  @IntPtr() external int Value;
}

class HTTP_VERSION_INFO extends Struct {
  @Uint32() external int dwMajorVersion;
  @Uint32() external int dwMinorVersion;
}

class INTERNET_ASYNC_RESULT extends Struct {
  @IntPtr() external int dwResult;
  @Uint32() external int dwError;
}

class INTERNET_DIAGNOSTIC_SOCKET_INFO extends Struct {
  @IntPtr() external int Socket;
  @Uint32() external int SourcePort;
  @Uint32() external int DestPort;
  @Uint32() external int Flags;
}

class INTERNET_PROXY_INFO extends Struct {
  @Uint32() external int dwAccessType;
  external Pointer<Int8> lpszProxy;
  external Pointer<Int8> lpszProxyBypass;
}

class INTERNET_PER_CONN_OPTIONA extends Struct {
  @Uint32() external int dwOption;
  @Uint32() external int Value;
}

class INTERNET_PER_CONN_OPTIONW extends Struct {
  @Uint32() external int dwOption;
  @Uint32() external int Value;
}

class INTERNET_PER_CONN_OPTION_LISTA extends Struct {
  @Uint32() external int dwSize;
  external Pointer<Utf8> pszConnection;
  @Uint32() external int dwOptionCount;
  @Uint32() external int dwOptionError;
  external Pointer<INTERNET_PER_CONN_OPTIONA> pOptions;
}

class INTERNET_PER_CONN_OPTION_LISTW extends Struct {
  @Uint32() external int dwSize;
  external Pointer<Utf16> pszConnection;
  @Uint32() external int dwOptionCount;
  @Uint32() external int dwOptionError;
  external Pointer<INTERNET_PER_CONN_OPTION> pOptions;
}

class INTERNET_VERSION_INFO extends Struct {
  @Uint32() external int dwMajorVersion;
  @Uint32() external int dwMinorVersion;
}

class INTERNET_CONNECTED_INFO extends Struct {
  @Uint32() external int dwConnectedState;
  @Uint32() external int dwFlags;
}

class URL_COMPONENTSA extends Struct {
  @Uint32() external int dwStructSize;
  external Pointer<Utf8> lpszScheme;
  @Uint32() external int dwSchemeLength;
  @Uint32() external int nScheme;
  external Pointer<Utf8> lpszHostName;
  @Uint32() external int dwHostNameLength;
  @Uint16() external int nPort;
  external Pointer<Utf8> lpszUserName;
  @Uint32() external int dwUserNameLength;
  external Pointer<Utf8> lpszPassword;
  @Uint32() external int dwPasswordLength;
  external Pointer<Utf8> lpszUrlPath;
  @Uint32() external int dwUrlPathLength;
  external Pointer<Utf8> lpszExtraInfo;
  @Uint32() external int dwExtraInfoLength;
}

class URL_COMPONENTSW extends Struct {
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

class INTERNET_CERTIFICATE_INFO extends Struct {
  external FILETIME ftExpiry;
  external FILETIME ftStart;
  external Pointer<Int8> lpszSubjectInfo;
  external Pointer<Int8> lpszIssuerInfo;
  external Pointer<Int8> lpszProtocolName;
  external Pointer<Int8> lpszSignatureAlgName;
  external Pointer<Int8> lpszEncryptionAlgName;
  @Uint32() external int dwKeySize;
}

class INTERNET_BUFFERSA extends Struct {
  @Uint32() external int dwStructSize;
  external Pointer<INTERNET_BUFFERSA> Next;
  external Pointer<Utf8> lpcszHeader;
  @Uint32() external int dwHeadersLength;
  @Uint32() external int dwHeadersTotal;
  external Pointer lpvBuffer;
  @Uint32() external int dwBufferLength;
  @Uint32() external int dwBufferTotal;
  @Uint32() external int dwOffsetLow;
  @Uint32() external int dwOffsetHigh;
}

class INTERNET_BUFFERSW extends Struct {
  @Uint32() external int dwStructSize;
  external Pointer<INTERNET_BUFFERS> Next;
  external Pointer<Utf16> lpcszHeader;
  @Uint32() external int dwHeadersLength;
  @Uint32() external int dwHeadersTotal;
  external Pointer lpvBuffer;
  @Uint32() external int dwBufferLength;
  @Uint32() external int dwBufferTotal;
  @Uint32() external int dwOffsetLow;
  @Uint32() external int dwOffsetHigh;
}

class IncomingCookieState extends Struct {
  @Int32() external int cSession;
  @Int32() external int cPersistent;
  @Int32() external int cAccepted;
  @Int32() external int cLeashed;
  @Int32() external int cDowngraded;
  @Int32() external int cBlocked;
  external Pointer<Utf8> pszLocation;
}

class OutgoingCookieState extends Struct {
  @Int32() external int cSent;
  @Int32() external int cSuppressed;
  external Pointer<Utf8> pszLocation;
}

class InternetCookieHistory extends Struct {
  @Int32() external int fAccepted;
  @Int32() external int fLeashed;
  @Int32() external int fDowngraded;
  @Int32() external int fRejected;
}

class CookieDecision extends Struct {
  @Uint32() external int dwCookieState;
  @Int32() external int fAllowSession;
}

class GOPHER_FIND_DATAA extends Struct {
  @Array(128)
  external Array<Int8> DisplayString;
  @Uint32() external int GopherType;
  @Uint32() external int SizeLow;
  @Uint32() external int SizeHigh;
  external FILETIME LastModificationTime;
  @Array(130)
  external Array<Int8> Locator;
}

class GOPHER_FIND_DATAW extends Struct {
  @Array(128)
  external Array<Uint16> DisplayString;
  @Uint32() external int GopherType;
  @Uint32() external int SizeLow;
  @Uint32() external int SizeHigh;
  external FILETIME LastModificationTime;
  @Array(130)
  external Array<Uint16> Locator;
}

class GOPHER_ADMIN_ATTRIBUTE_TYPE extends Struct {
  external Pointer<Int8> Comment;
  external Pointer<Int8> EmailAddress;
}

class GOPHER_MOD_DATE_ATTRIBUTE_TYPE extends Struct {
  external FILETIME DateAndTime;
}

class GOPHER_TTL_ATTRIBUTE_TYPE extends Struct {
  @Uint32() external int Ttl;
}

class GOPHER_SCORE_ATTRIBUTE_TYPE extends Struct {
  @Int32() external int Score;
}

class GOPHER_SCORE_RANGE_ATTRIBUTE_TYPE extends Struct {
  @Int32() external int LowerBound;
  @Int32() external int UpperBound;
}

class GOPHER_SITE_ATTRIBUTE_TYPE extends Struct {
  external Pointer<Int8> Site;
}

class GOPHER_ORGANIZATION_ATTRIBUTE_TYPE extends Struct {
  external Pointer<Int8> Organization;
}

class GOPHER_LOCATION_ATTRIBUTE_TYPE extends Struct {
  external Pointer<Int8> Location;
}

class GOPHER_GEOGRAPHICAL_LOCATION_ATTRIBUTE_TYPE extends Struct {
  @Int32() external int DegreesNorth;
  @Int32() external int MinutesNorth;
  @Int32() external int SecondsNorth;
  @Int32() external int DegreesEast;
  @Int32() external int MinutesEast;
  @Int32() external int SecondsEast;
}

class GOPHER_TIMEZONE_ATTRIBUTE_TYPE extends Struct {
  @Int32() external int Zone;
}

class GOPHER_PROVIDER_ATTRIBUTE_TYPE extends Struct {
  external Pointer<Int8> Provider;
}

class GOPHER_VERSION_ATTRIBUTE_TYPE extends Struct {
  external Pointer<Int8> Version;
}

class GOPHER_ABSTRACT_ATTRIBUTE_TYPE extends Struct {
  external Pointer<Int8> ShortAbstract;
  external Pointer<Int8> AbstractFile;
}

class GOPHER_VIEW_ATTRIBUTE_TYPE extends Struct {
  external Pointer<Int8> ContentType;
  external Pointer<Int8> Language;
  @Uint32() external int Size;
}

class GOPHER_VERONICA_ATTRIBUTE_TYPE extends Struct {
  @Int32() external int TreeWalk;
}

class GOPHER_ASK_ATTRIBUTE_TYPE extends Struct {
  external Pointer<Int8> QuestionType;
  external Pointer<Int8> QuestionText;
}

class GOPHER_UNKNOWN_ATTRIBUTE_TYPE extends Struct {
  external Pointer<Int8> Text;
}

class GOPHER_ATTRIBUTE_TYPE extends Struct {
  @Uint32() external int CategoryId;
  @Uint32() external int AttributeId;
  @Uint32() external int AttributeType;
}

class INTERNET_COOKIE2 extends Struct {
  external Pointer<Utf16> pwszName;
  external Pointer<Utf16> pwszValue;
  external Pointer<Utf16> pwszDomain;
  external Pointer<Utf16> pwszPath;
  @Uint32() external int dwFlags;
  external FILETIME ftExpires;
  @Int32() external int fExpiresSet;
}

class INTERNET_AUTH_NOTIFY_DATA extends Struct {
  @Uint32() external int cbStruct;
  @Uint32() external int dwOptions;
  external PFN_AUTH_NOTIFY pfnNotify;
  @IntPtr() external int dwContext;
}

class INTERNET_CACHE_ENTRY_INFOA extends Struct {
  @Uint32() external int dwStructSize;
  external Pointer<Utf8> lpszSourceUrlName;
  external Pointer<Utf8> lpszLocalFileName;
  @Uint32() external int CacheEntryType;
  @Uint32() external int dwUseCount;
  @Uint32() external int dwHitRate;
  @Uint32() external int dwSizeLow;
  @Uint32() external int dwSizeHigh;
  external FILETIME LastModifiedTime;
  external FILETIME ExpireTime;
  external FILETIME LastAccessTime;
  external FILETIME LastSyncTime;
  external Pointer<Utf8> lpHeaderInfo;
  @Uint32() external int dwHeaderInfoSize;
  external Pointer<Utf8> lpszFileExtension;
  @Uint32() external int Anonymous;
}

class INTERNET_CACHE_ENTRY_INFOW extends Struct {
  @Uint32() external int dwStructSize;
  external Pointer<Utf16> lpszSourceUrlName;
  external Pointer<Utf16> lpszLocalFileName;
  @Uint32() external int CacheEntryType;
  @Uint32() external int dwUseCount;
  @Uint32() external int dwHitRate;
  @Uint32() external int dwSizeLow;
  @Uint32() external int dwSizeHigh;
  external FILETIME LastModifiedTime;
  external FILETIME ExpireTime;
  external FILETIME LastAccessTime;
  external FILETIME LastSyncTime;
  external Pointer<Utf16> lpHeaderInfo;
  @Uint32() external int dwHeaderInfoSize;
  external Pointer<Utf16> lpszFileExtension;
  @Uint32() external int Anonymous;
}

class INTERNET_CACHE_TIMESTAMPS extends Struct {
  external FILETIME ftExpires;
  external FILETIME ftLastModified;
}

class INTERNET_CACHE_GROUP_INFOA extends Struct {
  @Uint32() external int dwGroupSize;
  @Uint32() external int dwGroupFlags;
  @Uint32() external int dwGroupType;
  @Uint32() external int dwDiskUsage;
  @Uint32() external int dwDiskQuota;
  @Array(4)
  external Array<Uint32> dwOwnerStorage;
  @Array(120)
  external Array<Int8> szGroupName;
}

class INTERNET_CACHE_GROUP_INFOW extends Struct {
  @Uint32() external int dwGroupSize;
  @Uint32() external int dwGroupFlags;
  @Uint32() external int dwGroupType;
  @Uint32() external int dwDiskUsage;
  @Uint32() external int dwDiskQuota;
  @Array(4)
  external Array<Uint32> dwOwnerStorage;
  @Array(120)
  external Array<Uint16> szGroupName;
}

class AutoProxyHelperVtbl extends Struct {
  @IntPtr() external int IsResolvable;
  @IntPtr() external int GetIPAddress;
  @IntPtr() external int ResolveHostName;
  @IntPtr() external int IsInNet;
  @IntPtr() external int IsResolvableEx;
  @IntPtr() external int GetIPAddressEx;
  @IntPtr() external int ResolveHostNameEx;
  @IntPtr() external int IsInNetEx;
  @IntPtr() external int SortIpList;
}

class AUTO_PROXY_SCRIPT_BUFFER extends Struct {
  @Uint32() external int dwStructSize;
  external Pointer<Utf8> lpszScriptBuffer;
  @Uint32() external int dwScriptBufferSize;
}

class AutoProxyHelperFunctions extends Struct {
  external Pointer<AutoProxyHelperVtbl> lpVtbl;
}

class INTERNET_PREFETCH_STATUS extends Struct {
  @Uint32() external int dwStatus;
  @Uint32() external int dwSize;
}

class INTERNET_SECURITY_INFO extends Struct {
  @Uint32() external int dwSize;
  external Pointer<CERT_CONTEXT> pCertificate;
  external Pointer<CERT_CHAIN_CONTEXT> pcCertChain;
  external SecPkgContext_ConnectionInfo connectionInfo;
  external SecPkgContext_CipherInfo cipherInfo;
  external Pointer<CERT_CHAIN_CONTEXT> pcUnverifiedCertChain;
  external SecPkgContext_Bindings channelBindingToken;
}

class INTERNET_SECURITY_CONNECTION_INFO extends Struct {
  @Uint32() external int dwSize;
  @Int32() external int fSecure;
  external SecPkgContext_ConnectionInfo connectionInfo;
  external SecPkgContext_CipherInfo cipherInfo;
}

class INTERNET_DOWNLOAD_MODE_HANDLE extends Struct {
  external Pointer<Utf16> pcwszFileName;
  external Pointer<IntPtr> phFile;
}

class HTTP_REQUEST_TIMES extends Struct {
  @Uint32() external int cTimes;
  @Array(32)
  external Array<Uint64> rgTimes;
}

class INTERNET_SERVER_CONNECTION_STATE extends Struct {
  external Pointer<Utf16> lpcwszHostName;
  @Int32() external int fProxy;
  @Uint32() external int dwCounter;
  @Uint32() external int dwConnectionLimit;
  @Uint32() external int dwAvailableCreates;
  @Uint32() external int dwAvailableKeepAlives;
  @Uint32() external int dwActiveConnections;
  @Uint32() external int dwWaiters;
}

class INTERNET_END_BROWSER_SESSION_DATA extends Struct {
  external Pointer lpBuffer;
  @Uint32() external int dwBufferLength;
}

class INTERNET_CALLBACK_COOKIE extends Struct {
  external Pointer<Utf16> pcwszName;
  external Pointer<Utf16> pcwszValue;
  external Pointer<Utf16> pcwszDomain;
  external Pointer<Utf16> pcwszPath;
  external FILETIME ftExpires;
  @Uint32() external int dwFlags;
}

class INTERNET_CREDENTIALS extends Struct {
  external Pointer<Utf16> lpcwszHostName;
  @Uint32() external int dwPort;
  @Uint32() external int dwScheme;
  external Pointer<Utf16> lpcwszUrl;
  external Pointer<Utf16> lpcwszRealm;
  @Int32() external int fAuthIdentity;
  @Uint32() external int Anonymous;
}

class HTTP_PUSH_TRANSPORT_SETTING extends Struct {
  external GUID TransportSettingId;
  external GUID BrokerEventId;
}

class HTTP_PUSH_NOTIFICATION_STATUS extends Struct {
  @Int32() external int ChannelStatusValid;
  @Uint32() external int ChannelStatus;
}

class INTERNET_COOKIE extends Struct {
  @Uint32() external int cbSize;
  external Pointer<Utf8> pszName;
  external Pointer<Utf8> pszData;
  external Pointer<Utf8> pszDomain;
  external Pointer<Utf8> pszPath;
  external Pointer<FILETIME> pftExpires;
  @Uint32() external int dwFlags;
  external Pointer<Utf8> pszUrl;
  external Pointer<Utf8> pszP3PPolicy;
}

class COOKIE_DLG_INFO extends Struct {
  external Pointer<Utf16> pszServer;
  external Pointer<INTERNET_COOKIE> pic;
  @Uint32() external int dwStopWarning;
  @Int32() external int cx;
  @Int32() external int cy;
  external Pointer<Utf16> pszHeader;
  @Uint32() external int dwOperation;
}

class INTERNET_CACHE_CONFIG_PATH_ENTRYA extends Struct {
  @Array(129)
  external Array<Int8> CachePath;
  @Uint32() external int dwCacheSize;
}

class INTERNET_CACHE_CONFIG_PATH_ENTRYW extends Struct {
  @Array(129)
  external Array<Uint16> CachePath;
  @Uint32() external int dwCacheSize;
}

class INTERNET_CACHE_CONFIG_INFOA extends Struct {
  @Uint32() external int dwStructSize;
  @Uint32() external int dwContainer;
  @Uint32() external int dwQuota;
  @Uint32() external int dwReserved4;
  @Int32() external int fPerUser;
  @Uint32() external int dwSyncMode;
  @Uint32() external int dwNumCachePaths;
  @Uint32() external int Anonymous;
  @Uint32() external int dwNormalUsage;
  @Uint32() external int dwExemptUsage;
}

class INTERNET_CACHE_CONFIG_INFOW extends Struct {
  @Uint32() external int dwStructSize;
  @Uint32() external int dwContainer;
  @Uint32() external int dwQuota;
  @Uint32() external int dwReserved4;
  @Int32() external int fPerUser;
  @Uint32() external int dwSyncMode;
  @Uint32() external int dwNumCachePaths;
  @Uint32() external int Anonymous;
  @Uint32() external int dwNormalUsage;
  @Uint32() external int dwExemptUsage;
}

class INTERNET_CACHE_CONTAINER_INFOA extends Struct {
  @Uint32() external int dwCacheVersion;
  external Pointer<Utf8> lpszName;
  external Pointer<Utf8> lpszCachePrefix;
  external Pointer<Utf8> lpszVolumeLabel;
  external Pointer<Utf8> lpszVolumeTitle;
}

class INTERNET_CACHE_CONTAINER_INFOW extends Struct {
  @Uint32() external int dwCacheVersion;
  external Pointer<Utf16> lpszName;
  external Pointer<Utf16> lpszCachePrefix;
  external Pointer<Utf16> lpszVolumeLabel;
  external Pointer<Utf16> lpszVolumeTitle;
}

class APP_CACHE_DOWNLOAD_ENTRY extends Struct {
  external Pointer<Utf16> pwszUrl;
  @Uint32() external int dwEntryType;
}

class APP_CACHE_DOWNLOAD_LIST extends Struct {
  @Uint32() external int dwEntryCount;
  external Pointer<APP_CACHE_DOWNLOAD_ENTRY> pEntries;
}

class APP_CACHE_GROUP_INFO extends Struct {
  external Pointer<Utf16> pwszManifestUrl;
  external FILETIME ftLastAccessTime;
  @Uint64() external int ullSize;
}

class APP_CACHE_GROUP_LIST extends Struct {
  @Uint32() external int dwAppCacheGroupCount;
  external Pointer<APP_CACHE_GROUP_INFO> pAppCacheGroups;
}

class URLCACHE_ENTRY_INFO extends Struct {
  external Pointer<Utf16> pwszSourceUrlName;
  external Pointer<Utf16> pwszLocalFileName;
  @Uint32() external int dwCacheEntryType;
  @Uint32() external int dwUseCount;
  @Uint32() external int dwHitRate;
  @Uint32() external int dwSizeLow;
  @Uint32() external int dwSizeHigh;
  external FILETIME ftLastModifiedTime;
  external FILETIME ftExpireTime;
  external FILETIME ftLastAccessTime;
  external FILETIME ftLastSyncTime;
  external Pointer<Uint8> pbHeaderInfo;
  @Uint32() external int cbHeaderInfoSize;
  external Pointer<Uint8> pbExtraData;
  @Uint32() external int cbExtraDataSize;
}

class WININET_PROXY_INFO extends Struct {
  @Int32() external int fProxy;
  @Int32() external int fBypass;
  @Uint32() external int ProxyScheme;
  external Pointer<Utf16> pwszProxy;
  @Uint16() external int ProxyPort;
}

class WININET_PROXY_INFO_LIST extends Struct {
  @Uint32() external int dwProxyInfoCount;
  external Pointer<WININET_PROXY_INFO> pProxyInfo;
}

class HTTP_WEB_SOCKET_ASYNC_RESULT extends Struct {
  external INTERNET_ASYNC_RESULT AsyncResult;
  @Uint32() external int Operation;
  @Uint32() external int BufferType;
  @Uint32() external int dwBytesTransferred;
}

class ProofOfPossessionCookieInfoManager extends Struct {
}

class ProofOfPossessionCookieInfo extends Struct {
  external Pointer<Utf16> name;
  external Pointer<Utf16> data;
  @Uint32() external int flags;
  external Pointer<Utf16> p3pHeader;
}

