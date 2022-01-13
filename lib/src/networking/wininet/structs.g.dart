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
import '../../foundation/structs.g.dart';
import '../../networking/wininet/structs.g.dart';
import '../../networking/wininet/callbacks.g.dart';
import '../../security/authentication/identity/structs.g.dart';
import '../../security/cryptography/structs.g.dart';

/// {@category Struct}
class APP_CACHE_DOWNLOAD_ENTRY extends Struct {
  external Pointer<Utf16> pwszUrl;

  @Uint32()
  external int dwEntryType;
}

/// {@category Struct}
class APP_CACHE_DOWNLOAD_LIST extends Struct {
  @Uint32()
  external int dwEntryCount;

  external Pointer<APP_CACHE_DOWNLOAD_ENTRY> pEntries;
}

/// {@category Struct}
class APP_CACHE_GROUP_INFO extends Struct {
  external Pointer<Utf16> pwszManifestUrl;

  external FILETIME ftLastAccessTime;

  @Uint64()
  external int ullSize;
}

/// {@category Struct}
class APP_CACHE_GROUP_LIST extends Struct {
  @Uint32()
  external int dwAppCacheGroupCount;

  external Pointer<APP_CACHE_GROUP_INFO> pAppCacheGroups;
}

/// {@category Struct}
class AUTO_PROXY_SCRIPT_BUFFER extends Struct {
  @Uint32()
  external int dwStructSize;

  external Pointer<Utf8> lpszScriptBuffer;

  @Uint32()
  external int dwScriptBufferSize;
}

/// {@category Struct}
class AutoProxyHelperFunctions extends Struct {
  external Pointer<AutoProxyHelperVtbl> lpVtbl;
}

/// {@category Struct}
class AutoProxyHelperVtbl extends Struct {
  @IntPtr()
  external int IsResolvable;

  @IntPtr()
  external int GetIPAddress;

  @IntPtr()
  external int ResolveHostName;

  @IntPtr()
  external int IsInNet;

  @IntPtr()
  external int IsResolvableEx;

  @IntPtr()
  external int GetIPAddressEx;

  @IntPtr()
  external int ResolveHostNameEx;

  @IntPtr()
  external int IsInNetEx;

  @IntPtr()
  external int SortIpList;
}

/// {@category Struct}
class COOKIE_DLG_INFO extends Struct {
  external Pointer<Utf16> pszServer;

  external Pointer<INTERNET_COOKIE> pic;

  @Uint32()
  external int dwStopWarning;

  @Int32()
  external int cx;

  @Int32()
  external int cy;

  external Pointer<Utf16> pszHeader;

  @Uint32()
  external int dwOperation;
}

/// {@category Struct}
class CookieDecision extends Struct {
  @Uint32()
  external int dwCookieState;

  @Int32()
  external int fAllowSession;
}

/// {@category Struct}
class GOPHER_ABSTRACT_ATTRIBUTE_TYPE extends Struct {
  external Pointer<Int8> ShortAbstract;

  external Pointer<Int8> AbstractFile;
}

/// {@category Struct}
class GOPHER_ADMIN_ATTRIBUTE_TYPE extends Struct {
  external Pointer<Int8> Comment;

  external Pointer<Int8> EmailAddress;
}

/// {@category Struct}
class GOPHER_ASK_ATTRIBUTE_TYPE extends Struct {
  external Pointer<Int8> QuestionType;

  external Pointer<Int8> QuestionText;
}

/// {@category Struct}
class GOPHER_ATTRIBUTE_TYPE extends Struct {
  @Uint32()
  external int CategoryId;

  @Uint32()
  external int AttributeId;

  external _GOPHER_ATTRIBUTE_TYPE__AttributeType_e__Union AttributeType;
}

/// {@category Struct}
class _GOPHER_ATTRIBUTE_TYPE__AttributeType_e__Union extends Union {
  external GOPHER_ADMIN_ATTRIBUTE_TYPE Admin;

  external GOPHER_MOD_DATE_ATTRIBUTE_TYPE ModDate;

  external GOPHER_TTL_ATTRIBUTE_TYPE Ttl;

  external GOPHER_SCORE_ATTRIBUTE_TYPE Score;

  external GOPHER_SCORE_RANGE_ATTRIBUTE_TYPE ScoreRange;

  external GOPHER_SITE_ATTRIBUTE_TYPE Site;

  external GOPHER_ORGANIZATION_ATTRIBUTE_TYPE Organization;

  external GOPHER_LOCATION_ATTRIBUTE_TYPE Location;

  external GOPHER_GEOGRAPHICAL_LOCATION_ATTRIBUTE_TYPE GeographicalLocation;

  external GOPHER_TIMEZONE_ATTRIBUTE_TYPE TimeZone;

  external GOPHER_PROVIDER_ATTRIBUTE_TYPE Provider;

  external GOPHER_VERSION_ATTRIBUTE_TYPE Version;

  external GOPHER_ABSTRACT_ATTRIBUTE_TYPE Abstract;

  external GOPHER_VIEW_ATTRIBUTE_TYPE View;

  external GOPHER_VERONICA_ATTRIBUTE_TYPE Veronica;

  external GOPHER_ASK_ATTRIBUTE_TYPE Ask;

  external GOPHER_UNKNOWN_ATTRIBUTE_TYPE Unknown;
}

extension GOPHER_ATTRIBUTE_TYPE_Extension on GOPHER_ATTRIBUTE_TYPE {
  GOPHER_ADMIN_ATTRIBUTE_TYPE get Admin => this.AttributeType.Admin;
  set Admin(GOPHER_ADMIN_ATTRIBUTE_TYPE value) =>
      this.AttributeType.Admin = value;

  GOPHER_MOD_DATE_ATTRIBUTE_TYPE get ModDate => this.AttributeType.ModDate;
  set ModDate(GOPHER_MOD_DATE_ATTRIBUTE_TYPE value) =>
      this.AttributeType.ModDate = value;

  GOPHER_TTL_ATTRIBUTE_TYPE get Ttl => this.AttributeType.Ttl;
  set Ttl(GOPHER_TTL_ATTRIBUTE_TYPE value) => this.AttributeType.Ttl = value;

  GOPHER_SCORE_ATTRIBUTE_TYPE get Score => this.AttributeType.Score;
  set Score(GOPHER_SCORE_ATTRIBUTE_TYPE value) =>
      this.AttributeType.Score = value;

  GOPHER_SCORE_RANGE_ATTRIBUTE_TYPE get ScoreRange =>
      this.AttributeType.ScoreRange;
  set ScoreRange(GOPHER_SCORE_RANGE_ATTRIBUTE_TYPE value) =>
      this.AttributeType.ScoreRange = value;

  GOPHER_SITE_ATTRIBUTE_TYPE get Site => this.AttributeType.Site;
  set Site(GOPHER_SITE_ATTRIBUTE_TYPE value) => this.AttributeType.Site = value;

  GOPHER_ORGANIZATION_ATTRIBUTE_TYPE get Organization =>
      this.AttributeType.Organization;
  set Organization(GOPHER_ORGANIZATION_ATTRIBUTE_TYPE value) =>
      this.AttributeType.Organization = value;

  GOPHER_LOCATION_ATTRIBUTE_TYPE get Location => this.AttributeType.Location;
  set Location(GOPHER_LOCATION_ATTRIBUTE_TYPE value) =>
      this.AttributeType.Location = value;

  GOPHER_GEOGRAPHICAL_LOCATION_ATTRIBUTE_TYPE get GeographicalLocation =>
      this.AttributeType.GeographicalLocation;
  set GeographicalLocation(GOPHER_GEOGRAPHICAL_LOCATION_ATTRIBUTE_TYPE value) =>
      this.AttributeType.GeographicalLocation = value;

  GOPHER_TIMEZONE_ATTRIBUTE_TYPE get TimeZone => this.AttributeType.TimeZone;
  set TimeZone(GOPHER_TIMEZONE_ATTRIBUTE_TYPE value) =>
      this.AttributeType.TimeZone = value;

  GOPHER_PROVIDER_ATTRIBUTE_TYPE get Provider => this.AttributeType.Provider;
  set Provider(GOPHER_PROVIDER_ATTRIBUTE_TYPE value) =>
      this.AttributeType.Provider = value;

  GOPHER_VERSION_ATTRIBUTE_TYPE get Version => this.AttributeType.Version;
  set Version(GOPHER_VERSION_ATTRIBUTE_TYPE value) =>
      this.AttributeType.Version = value;

  GOPHER_ABSTRACT_ATTRIBUTE_TYPE get Abstract => this.AttributeType.Abstract;
  set Abstract(GOPHER_ABSTRACT_ATTRIBUTE_TYPE value) =>
      this.AttributeType.Abstract = value;

  GOPHER_VIEW_ATTRIBUTE_TYPE get View => this.AttributeType.View;
  set View(GOPHER_VIEW_ATTRIBUTE_TYPE value) => this.AttributeType.View = value;

  GOPHER_VERONICA_ATTRIBUTE_TYPE get Veronica => this.AttributeType.Veronica;
  set Veronica(GOPHER_VERONICA_ATTRIBUTE_TYPE value) =>
      this.AttributeType.Veronica = value;

  GOPHER_ASK_ATTRIBUTE_TYPE get Ask => this.AttributeType.Ask;
  set Ask(GOPHER_ASK_ATTRIBUTE_TYPE value) => this.AttributeType.Ask = value;

  GOPHER_UNKNOWN_ATTRIBUTE_TYPE get Unknown => this.AttributeType.Unknown;
  set Unknown(GOPHER_UNKNOWN_ATTRIBUTE_TYPE value) =>
      this.AttributeType.Unknown = value;
}

/// {@category Struct}
class GOPHER_FIND_DATA extends Struct {
  @Array(129)
  external Array<Uint16> _DisplayString;

  String get DisplayString {
    final charCodes = <int>[];
    for (var i = 0; i < 129; i++) {
      charCodes.add(_DisplayString[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set DisplayString(String value) {
    final stringToStore = value.padRight(129, '\x00');
    for (var i = 0; i < 129; i++) {
      _DisplayString[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int GopherType;

  @Uint32()
  external int SizeLow;

  @Uint32()
  external int SizeHigh;

  external FILETIME LastModificationTime;

  @Array(654)
  external Array<Uint16> _Locator;

  String get Locator {
    final charCodes = <int>[];
    for (var i = 0; i < 654; i++) {
      charCodes.add(_Locator[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set Locator(String value) {
    final stringToStore = value.padRight(654, '\x00');
    for (var i = 0; i < 654; i++) {
      _Locator[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class GOPHER_GEOGRAPHICAL_LOCATION_ATTRIBUTE_TYPE extends Struct {
  @Int32()
  external int DegreesNorth;

  @Int32()
  external int MinutesNorth;

  @Int32()
  external int SecondsNorth;

  @Int32()
  external int DegreesEast;

  @Int32()
  external int MinutesEast;

  @Int32()
  external int SecondsEast;
}

/// {@category Struct}
class GOPHER_LOCATION_ATTRIBUTE_TYPE extends Struct {
  external Pointer<Int8> Location;
}

/// {@category Struct}
class GOPHER_MOD_DATE_ATTRIBUTE_TYPE extends Struct {
  external FILETIME DateAndTime;
}

/// {@category Struct}
class GOPHER_ORGANIZATION_ATTRIBUTE_TYPE extends Struct {
  external Pointer<Int8> Organization;
}

/// {@category Struct}
class GOPHER_PROVIDER_ATTRIBUTE_TYPE extends Struct {
  external Pointer<Int8> Provider;
}

/// {@category Struct}
class GOPHER_SCORE_ATTRIBUTE_TYPE extends Struct {
  @Int32()
  external int Score;
}

/// {@category Struct}
class GOPHER_SCORE_RANGE_ATTRIBUTE_TYPE extends Struct {
  @Int32()
  external int LowerBound;

  @Int32()
  external int UpperBound;
}

/// {@category Struct}
class GOPHER_SITE_ATTRIBUTE_TYPE extends Struct {
  external Pointer<Int8> Site;
}

/// {@category Struct}
class GOPHER_TIMEZONE_ATTRIBUTE_TYPE extends Struct {
  @Int32()
  external int Zone;
}

/// {@category Struct}
class GOPHER_TTL_ATTRIBUTE_TYPE extends Struct {
  @Uint32()
  external int Ttl;
}

/// {@category Struct}
class GOPHER_UNKNOWN_ATTRIBUTE_TYPE extends Struct {
  external Pointer<Int8> Text;
}

/// {@category Struct}
class GOPHER_VERONICA_ATTRIBUTE_TYPE extends Struct {
  @Int32()
  external int TreeWalk;
}

/// {@category Struct}
class GOPHER_VERSION_ATTRIBUTE_TYPE extends Struct {
  external Pointer<Int8> Version;
}

/// {@category Struct}
class GOPHER_VIEW_ATTRIBUTE_TYPE extends Struct {
  external Pointer<Int8> ContentType;

  external Pointer<Int8> Language;

  @Uint32()
  external int Size;
}

/// {@category Struct}
class HTTP_PUSH_NOTIFICATION_STATUS extends Struct {
  @Int32()
  external int ChannelStatusValid;

  @Uint32()
  external int ChannelStatus;
}

/// {@category Struct}
class HTTP_PUSH_TRANSPORT_SETTING extends Struct {
  external GUID TransportSettingId;

  external GUID BrokerEventId;
}

/// {@category Struct}
class HTTP_REQUEST_TIMES extends Struct {
  @Uint32()
  external int cTimes;

  @Array(32)
  external Array<Uint64> rgTimes;
}

/// {@category Struct}
class HTTP_WEB_SOCKET_ASYNC_RESULT extends Struct {
  external INTERNET_ASYNC_RESULT AsyncResult;

  @Int32()
  external int Operation;

  @Int32()
  external int BufferType;

  @Uint32()
  external int dwBytesTransferred;
}

/// {@category Struct}
class INTERNET_ASYNC_RESULT extends Struct {
  @IntPtr()
  external int dwResult;

  @Uint32()
  external int dwError;
}

/// {@category Struct}
class INTERNET_AUTH_NOTIFY_DATA extends Struct {
  @Uint32()
  external int cbStruct;

  @Uint32()
  external int dwOptions;

  external Pointer<NativeFunction<PFN_AUTH_NOTIFY>> pfnNotify;

  @IntPtr()
  external int dwContext;
}

/// {@category Struct}
class INTERNET_BUFFERS extends Struct {
  @Uint32()
  external int dwStructSize;

  external Pointer<INTERNET_BUFFERS> Next;

  external Pointer<Utf16> lpcszHeader;

  @Uint32()
  external int dwHeadersLength;

  @Uint32()
  external int dwHeadersTotal;

  external Pointer lpvBuffer;

  @Uint32()
  external int dwBufferLength;

  @Uint32()
  external int dwBufferTotal;

  @Uint32()
  external int dwOffsetLow;

  @Uint32()
  external int dwOffsetHigh;
}

/// {@category Struct}
class INTERNET_CACHE_CONFIG_INFO extends Struct {
  @Uint32()
  external int dwStructSize;

  @Uint32()
  external int dwContainer;

  @Uint32()
  external int dwQuota;

  @Uint32()
  external int dwReserved4;

  @Int32()
  external int fPerUser;

  @Uint32()
  external int dwSyncMode;

  @Uint32()
  external int dwNumCachePaths;

  external _INTERNET_CACHE_CONFIG_INFOW__Anonymous_e__Union Anonymous;

  @Uint32()
  external int dwNormalUsage;

  @Uint32()
  external int dwExemptUsage;
}

/// {@category Struct}
class _INTERNET_CACHE_CONFIG_INFOW__Anonymous_e__Union extends Union {
  external _INTERNET_CACHE_CONFIG_INFOW__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;

  @Array(1)
  external Array<INTERNET_CACHE_CONFIG_PATH_ENTRY> CachePaths;
}

/// {@category Struct}
class _INTERNET_CACHE_CONFIG_INFOW__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Array(260)
  external Array<Uint16> _CachePath;

  String get CachePath {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_CachePath[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set CachePath(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _CachePath[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int dwCacheSize;
}

extension INTERNET_CACHE_CONFIG_INFOW__Anonymous_e__Union_Extension
    on INTERNET_CACHE_CONFIG_INFO {
  String get CachePath => this.Anonymous.Anonymous.CachePath;
  set CachePath(String value) => this.Anonymous.Anonymous.CachePath = value;

  int get dwCacheSize => this.Anonymous.Anonymous.dwCacheSize;
  set dwCacheSize(int value) => this.Anonymous.Anonymous.dwCacheSize = value;
}

extension INTERNET_CACHE_CONFIG_INFOW_Extension on INTERNET_CACHE_CONFIG_INFO {
  _INTERNET_CACHE_CONFIG_INFOW__Anonymous_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
          _INTERNET_CACHE_CONFIG_INFOW__Anonymous_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous.Anonymous = value;

  Array<INTERNET_CACHE_CONFIG_PATH_ENTRY> get CachePaths =>
      this.Anonymous.CachePaths;
  set CachePaths(Array<INTERNET_CACHE_CONFIG_PATH_ENTRY> value) =>
      this.Anonymous.CachePaths = value;
}

/// {@category Struct}
class INTERNET_CACHE_CONFIG_PATH_ENTRY extends Struct {
  @Array(260)
  external Array<Uint16> _CachePath;

  String get CachePath {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_CachePath[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set CachePath(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _CachePath[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int dwCacheSize;
}

/// {@category Struct}
class INTERNET_CACHE_CONTAINER_INFO extends Struct {
  @Uint32()
  external int dwCacheVersion;

  external Pointer<Utf16> lpszName;

  external Pointer<Utf16> lpszCachePrefix;

  external Pointer<Utf16> lpszVolumeLabel;

  external Pointer<Utf16> lpszVolumeTitle;
}

/// {@category Struct}
class INTERNET_CACHE_ENTRY_INFO extends Struct {
  @Uint32()
  external int dwStructSize;

  external Pointer<Utf16> lpszSourceUrlName;

  external Pointer<Utf16> lpszLocalFileName;

  @Uint32()
  external int CacheEntryType;

  @Uint32()
  external int dwUseCount;

  @Uint32()
  external int dwHitRate;

  @Uint32()
  external int dwSizeLow;

  @Uint32()
  external int dwSizeHigh;

  external FILETIME LastModifiedTime;

  external FILETIME ExpireTime;

  external FILETIME LastAccessTime;

  external FILETIME LastSyncTime;

  external Pointer<Utf16> lpHeaderInfo;

  @Uint32()
  external int dwHeaderInfoSize;

  external Pointer<Utf16> lpszFileExtension;

  external _INTERNET_CACHE_ENTRY_INFOW__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _INTERNET_CACHE_ENTRY_INFOW__Anonymous_e__Union extends Union {
  @Uint32()
  external int dwReserved;

  @Uint32()
  external int dwExemptDelta;
}

extension INTERNET_CACHE_ENTRY_INFOW_Extension on INTERNET_CACHE_ENTRY_INFO {
  int get dwReserved => this.Anonymous.dwReserved;
  set dwReserved(int value) => this.Anonymous.dwReserved = value;

  int get dwExemptDelta => this.Anonymous.dwExemptDelta;
  set dwExemptDelta(int value) => this.Anonymous.dwExemptDelta = value;
}

/// {@category Struct}
class INTERNET_CACHE_GROUP_INFO extends Struct {
  @Uint32()
  external int dwGroupSize;

  @Uint32()
  external int dwGroupFlags;

  @Uint32()
  external int dwGroupType;

  @Uint32()
  external int dwDiskUsage;

  @Uint32()
  external int dwDiskQuota;

  @Array(4)
  external Array<Uint32> dwOwnerStorage;

  @Array(120)
  external Array<Uint16> _szGroupName;

  String get szGroupName {
    final charCodes = <int>[];
    for (var i = 0; i < 120; i++) {
      charCodes.add(_szGroupName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szGroupName(String value) {
    final stringToStore = value.padRight(120, '\x00');
    for (var i = 0; i < 120; i++) {
      _szGroupName[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class INTERNET_CACHE_TIMESTAMPS extends Struct {
  external FILETIME ftExpires;

  external FILETIME ftLastModified;
}

/// {@category Struct}
class INTERNET_CALLBACK_COOKIE extends Struct {
  external Pointer<Utf16> pcwszName;

  external Pointer<Utf16> pcwszValue;

  external Pointer<Utf16> pcwszDomain;

  external Pointer<Utf16> pcwszPath;

  external FILETIME ftExpires;

  @Uint32()
  external int dwFlags;
}

/// {@category Struct}
class INTERNET_CERTIFICATE_INFO extends Struct {
  external FILETIME ftExpiry;

  external FILETIME ftStart;

  external Pointer<Int8> lpszSubjectInfo;

  external Pointer<Int8> lpszIssuerInfo;

  external Pointer<Int8> lpszProtocolName;

  external Pointer<Int8> lpszSignatureAlgName;

  external Pointer<Int8> lpszEncryptionAlgName;

  @Uint32()
  external int dwKeySize;
}

/// {@category Struct}
class INTERNET_CONNECTED_INFO extends Struct {
  @Uint32()
  external int dwConnectedState;

  @Uint32()
  external int dwFlags;
}

/// {@category Struct}
class INTERNET_COOKIE extends Struct {
  @Uint32()
  external int cbSize;

  external Pointer<Utf8> pszName;

  external Pointer<Utf8> pszData;

  external Pointer<Utf8> pszDomain;

  external Pointer<Utf8> pszPath;

  external Pointer<FILETIME> pftExpires;

  @Uint32()
  external int dwFlags;

  external Pointer<Utf8> pszUrl;

  external Pointer<Utf8> pszP3PPolicy;
}

/// {@category Struct}
class INTERNET_COOKIE2 extends Struct {
  external Pointer<Utf16> pwszName;

  external Pointer<Utf16> pwszValue;

  external Pointer<Utf16> pwszDomain;

  external Pointer<Utf16> pwszPath;

  @Uint32()
  external int dwFlags;

  external FILETIME ftExpires;

  @Int32()
  external int fExpiresSet;
}

/// {@category Struct}
class INTERNET_CREDENTIALS extends Struct {
  external Pointer<Utf16> lpcwszHostName;

  @Uint32()
  external int dwPort;

  @Uint32()
  external int dwScheme;

  external Pointer<Utf16> lpcwszUrl;

  external Pointer<Utf16> lpcwszRealm;

  @Int32()
  external int fAuthIdentity;

  external _INTERNET_CREDENTIALS__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _INTERNET_CREDENTIALS__Anonymous_e__Union extends Union {
  external _INTERNET_CREDENTIALS__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;

  external Pointer pAuthIdentityOpaque;
}

/// {@category Struct}
class _INTERNET_CREDENTIALS__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  external Pointer<Utf16> lpcwszUserName;

  external Pointer<Utf16> lpcwszPassword;
}

extension INTERNET_CREDENTIALS__Anonymous_e__Union_Extension
    on INTERNET_CREDENTIALS {
  Pointer<Utf16> get lpcwszUserName => this.Anonymous.Anonymous.lpcwszUserName;
  set lpcwszUserName(Pointer<Utf16> value) =>
      this.Anonymous.Anonymous.lpcwszUserName = value;

  Pointer<Utf16> get lpcwszPassword => this.Anonymous.Anonymous.lpcwszPassword;
  set lpcwszPassword(Pointer<Utf16> value) =>
      this.Anonymous.Anonymous.lpcwszPassword = value;
}

extension INTERNET_CREDENTIALS_Extension on INTERNET_CREDENTIALS {
  _INTERNET_CREDENTIALS__Anonymous_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
          _INTERNET_CREDENTIALS__Anonymous_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous.Anonymous = value;

  Pointer get pAuthIdentityOpaque => this.Anonymous.pAuthIdentityOpaque;
  set pAuthIdentityOpaque(Pointer value) =>
      this.Anonymous.pAuthIdentityOpaque = value;
}

/// {@category Struct}
class INTERNET_DIAGNOSTIC_SOCKET_INFO extends Struct {
  @IntPtr()
  external int Socket;

  @Uint32()
  external int SourcePort;

  @Uint32()
  external int DestPort;

  @Uint32()
  external int Flags;
}

/// {@category Struct}
class INTERNET_DOWNLOAD_MODE_HANDLE extends Struct {
  external Pointer<Utf16> pcwszFileName;

  external Pointer<IntPtr> phFile;
}

/// {@category Struct}
class INTERNET_END_BROWSER_SESSION_DATA extends Struct {
  external Pointer lpBuffer;

  @Uint32()
  external int dwBufferLength;
}

/// {@category Struct}
class INTERNET_PER_CONN_OPTION extends Struct {
  @Uint32()
  external int dwOption;

  external _INTERNET_PER_CONN_OPTIONW__Value_e__Union Value;
}

/// {@category Struct}
class _INTERNET_PER_CONN_OPTIONW__Value_e__Union extends Union {
  @Uint32()
  external int dwValue;

  external Pointer<Utf16> pszValue;

  external FILETIME ftValue;
}

extension INTERNET_PER_CONN_OPTIONW_Extension on INTERNET_PER_CONN_OPTION {
  int get dwValue => this.Value.dwValue;
  set dwValue(int value) => this.Value.dwValue = value;

  Pointer<Utf16> get pszValue => this.Value.pszValue;
  set pszValue(Pointer<Utf16> value) => this.Value.pszValue = value;

  FILETIME get ftValue => this.Value.ftValue;
  set ftValue(FILETIME value) => this.Value.ftValue = value;
}

/// {@category Struct}
class INTERNET_PER_CONN_OPTION_LIST extends Struct {
  @Uint32()
  external int dwSize;

  external Pointer<Utf16> pszConnection;

  @Uint32()
  external int dwOptionCount;

  @Uint32()
  external int dwOptionError;

  external Pointer<INTERNET_PER_CONN_OPTION> pOptions;
}

/// {@category Struct}
class INTERNET_PREFETCH_STATUS extends Struct {
  @Uint32()
  external int dwStatus;

  @Uint32()
  external int dwSize;
}

/// {@category Struct}
class INTERNET_PROXY_INFO extends Struct {
  @Uint32()
  external int dwAccessType;

  external Pointer<Int8> lpszProxy;

  external Pointer<Int8> lpszProxyBypass;
}

/// {@category Struct}
class INTERNET_SECURITY_CONNECTION_INFO extends Struct {
  @Uint32()
  external int dwSize;

  @Int32()
  external int fSecure;

  external SecPkgContext_ConnectionInfo connectionInfo;

  external SecPkgContext_CipherInfo cipherInfo;
}

/// {@category Struct}
class INTERNET_SECURITY_INFO extends Struct {
  @Uint32()
  external int dwSize;

  external Pointer<CERT_CONTEXT> pCertificate;

  external Pointer<CERT_CHAIN_CONTEXT> pcCertChain;

  external SecPkgContext_ConnectionInfo connectionInfo;

  external SecPkgContext_CipherInfo cipherInfo;

  external Pointer<CERT_CHAIN_CONTEXT> pcUnverifiedCertChain;

  external SecPkgContext_Bindings channelBindingToken;
}

/// {@category Struct}
class INTERNET_SERVER_CONNECTION_STATE extends Struct {
  external Pointer<Utf16> lpcwszHostName;

  @Int32()
  external int fProxy;

  @Uint32()
  external int dwCounter;

  @Uint32()
  external int dwConnectionLimit;

  @Uint32()
  external int dwAvailableCreates;

  @Uint32()
  external int dwAvailableKeepAlives;

  @Uint32()
  external int dwActiveConnections;

  @Uint32()
  external int dwWaiters;
}

/// {@category Struct}
class INTERNET_VERSION_INFO extends Struct {
  @Uint32()
  external int dwMajorVersion;

  @Uint32()
  external int dwMinorVersion;
}

/// {@category Struct}
class IncomingCookieState extends Struct {
  @Int32()
  external int cSession;

  @Int32()
  external int cPersistent;

  @Int32()
  external int cAccepted;

  @Int32()
  external int cLeashed;

  @Int32()
  external int cDowngraded;

  @Int32()
  external int cBlocked;

  external Pointer<Utf8> pszLocation;
}

/// {@category Struct}
class InternetCookieHistory extends Struct {
  @Int32()
  external int fAccepted;

  @Int32()
  external int fLeashed;

  @Int32()
  external int fDowngraded;

  @Int32()
  external int fRejected;
}

/// {@category Struct}
class OutgoingCookieState extends Struct {
  @Int32()
  external int cSent;

  @Int32()
  external int cSuppressed;

  external Pointer<Utf8> pszLocation;
}

/// {@category Struct}
class ProofOfPossessionCookieInfo extends Struct {
  external Pointer<Utf16> name;

  external Pointer<Utf16> data;

  @Uint32()
  external int flags;

  external Pointer<Utf16> p3pHeader;
}

/// {@category Struct}
class URLCACHE_ENTRY_INFO extends Struct {
  external Pointer<Utf16> pwszSourceUrlName;

  external Pointer<Utf16> pwszLocalFileName;

  @Uint32()
  external int dwCacheEntryType;

  @Uint32()
  external int dwUseCount;

  @Uint32()
  external int dwHitRate;

  @Uint32()
  external int dwSizeLow;

  @Uint32()
  external int dwSizeHigh;

  external FILETIME ftLastModifiedTime;

  external FILETIME ftExpireTime;

  external FILETIME ftLastAccessTime;

  external FILETIME ftLastSyncTime;

  external Pointer<Uint8> pbHeaderInfo;

  @Uint32()
  external int cbHeaderInfoSize;

  external Pointer<Uint8> pbExtraData;

  @Uint32()
  external int cbExtraDataSize;
}

/// {@category Struct}
class URL_COMPONENTS extends Struct {
  @Uint32()
  external int dwStructSize;

  external Pointer<Utf16> lpszScheme;

  @Uint32()
  external int dwSchemeLength;

  @Int32()
  external int nScheme;

  external Pointer<Utf16> lpszHostName;

  @Uint32()
  external int dwHostNameLength;

  @Uint16()
  external int nPort;

  external Pointer<Utf16> lpszUserName;

  @Uint32()
  external int dwUserNameLength;

  external Pointer<Utf16> lpszPassword;

  @Uint32()
  external int dwPasswordLength;

  external Pointer<Utf16> lpszUrlPath;

  @Uint32()
  external int dwUrlPathLength;

  external Pointer<Utf16> lpszExtraInfo;

  @Uint32()
  external int dwExtraInfoLength;
}

/// {@category Struct}
class WININET_PROXY_INFO extends Struct {
  @Int32()
  external int fProxy;

  @Int32()
  external int fBypass;

  @Int32()
  external int ProxyScheme;

  external Pointer<Utf16> pwszProxy;

  @Uint16()
  external int ProxyPort;
}

/// {@category Struct}
class WININET_PROXY_INFO_LIST extends Struct {
  @Uint32()
  external int dwProxyInfoCount;

  external Pointer<WININET_PROXY_INFO> pProxyInfo;
}
