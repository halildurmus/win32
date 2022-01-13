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
import '../../networking/wininet/structs.g.dart';
import '../../storage/filesystem/structs.g.dart';
import '../../networking/wininet/callbacks.g.dart';
import '../../networking/winhttp/structs.g.dart';
import '../../security/cryptography/structs.g.dart'; // -----------------------------------------------------------------------

// wininet.dll
// -----------------------------------------------------------------------
final _wininet = DynamicLibrary.open('wininet.dll');

int AppCacheCheckManifest(
  Pointer<Utf16> pwszMasterUrl,
  Pointer<Utf16> pwszManifestUrl,
  Pointer<Uint8> pbManifestData,
  int dwManifestDataSize,
  Pointer<Uint8> pbManifestResponseHeaders,
  int dwManifestResponseHeadersSize,
  Pointer<Int32> peState,
  Pointer<Pointer> phNewAppCache,
) =>
    _AppCacheCheckManifest(
      pwszMasterUrl,
      pwszManifestUrl,
      pbManifestData,
      dwManifestDataSize,
      pbManifestResponseHeaders,
      dwManifestResponseHeadersSize,
      peState,
      phNewAppCache,
    );

late final _AppCacheCheckManifest = _wininet.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> pwszMasterUrl,
  Pointer<Utf16> pwszManifestUrl,
  Pointer<Uint8> pbManifestData,
  Uint32 dwManifestDataSize,
  Pointer<Uint8> pbManifestResponseHeaders,
  Uint32 dwManifestResponseHeadersSize,
  Pointer<Int32> peState,
  Pointer<Pointer> phNewAppCache,
),
    int Function(
  Pointer<Utf16> pwszMasterUrl,
  Pointer<Utf16> pwszManifestUrl,
  Pointer<Uint8> pbManifestData,
  int dwManifestDataSize,
  Pointer<Uint8> pbManifestResponseHeaders,
  int dwManifestResponseHeadersSize,
  Pointer<Int32> peState,
  Pointer<Pointer> phNewAppCache,
)>('AppCacheCheckManifest');

void AppCacheCloseHandle(
  Pointer hAppCache,
) =>
    _AppCacheCloseHandle(
      hAppCache,
    );

late final _AppCacheCloseHandle = _wininet.lookupFunction<
    Void Function(
  Pointer hAppCache,
),
    void Function(
  Pointer hAppCache,
)>('AppCacheCloseHandle');

int AppCacheCreateAndCommitFile(
  Pointer hAppCache,
  Pointer<Utf16> pwszSourceFilePath,
  Pointer<Utf16> pwszUrl,
  Pointer<Uint8> pbResponseHeaders,
  int dwResponseHeadersSize,
) =>
    _AppCacheCreateAndCommitFile(
      hAppCache,
      pwszSourceFilePath,
      pwszUrl,
      pbResponseHeaders,
      dwResponseHeadersSize,
    );

late final _AppCacheCreateAndCommitFile = _wininet.lookupFunction<
    Uint32 Function(
  Pointer hAppCache,
  Pointer<Utf16> pwszSourceFilePath,
  Pointer<Utf16> pwszUrl,
  Pointer<Uint8> pbResponseHeaders,
  Uint32 dwResponseHeadersSize,
),
    int Function(
  Pointer hAppCache,
  Pointer<Utf16> pwszSourceFilePath,
  Pointer<Utf16> pwszUrl,
  Pointer<Uint8> pbResponseHeaders,
  int dwResponseHeadersSize,
)>('AppCacheCreateAndCommitFile');

int AppCacheDeleteGroup(
  Pointer<Utf16> pwszManifestUrl,
) =>
    _AppCacheDeleteGroup(
      pwszManifestUrl,
    );

late final _AppCacheDeleteGroup = _wininet.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> pwszManifestUrl,
),
    int Function(
  Pointer<Utf16> pwszManifestUrl,
)>('AppCacheDeleteGroup');

int AppCacheDeleteIEGroup(
  Pointer<Utf16> pwszManifestUrl,
) =>
    _AppCacheDeleteIEGroup(
      pwszManifestUrl,
    );

late final _AppCacheDeleteIEGroup = _wininet.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> pwszManifestUrl,
),
    int Function(
  Pointer<Utf16> pwszManifestUrl,
)>('AppCacheDeleteIEGroup');

int AppCacheDuplicateHandle(
  Pointer hAppCache,
  Pointer<Pointer> phDuplicatedAppCache,
) =>
    _AppCacheDuplicateHandle(
      hAppCache,
      phDuplicatedAppCache,
    );

late final _AppCacheDuplicateHandle = _wininet.lookupFunction<
    Uint32 Function(
  Pointer hAppCache,
  Pointer<Pointer> phDuplicatedAppCache,
),
    int Function(
  Pointer hAppCache,
  Pointer<Pointer> phDuplicatedAppCache,
)>('AppCacheDuplicateHandle');

int AppCacheFinalize(
  Pointer hAppCache,
  Pointer<Uint8> pbManifestData,
  int dwManifestDataSize,
  Pointer<Int32> peState,
) =>
    _AppCacheFinalize(
      hAppCache,
      pbManifestData,
      dwManifestDataSize,
      peState,
    );

late final _AppCacheFinalize = _wininet.lookupFunction<
    Uint32 Function(
  Pointer hAppCache,
  Pointer<Uint8> pbManifestData,
  Uint32 dwManifestDataSize,
  Pointer<Int32> peState,
),
    int Function(
  Pointer hAppCache,
  Pointer<Uint8> pbManifestData,
  int dwManifestDataSize,
  Pointer<Int32> peState,
)>('AppCacheFinalize');

void AppCacheFreeDownloadList(
  Pointer<APP_CACHE_DOWNLOAD_LIST> pDownloadList,
) =>
    _AppCacheFreeDownloadList(
      pDownloadList,
    );

late final _AppCacheFreeDownloadList = _wininet.lookupFunction<
    Void Function(
  Pointer<APP_CACHE_DOWNLOAD_LIST> pDownloadList,
),
    void Function(
  Pointer<APP_CACHE_DOWNLOAD_LIST> pDownloadList,
)>('AppCacheFreeDownloadList');

void AppCacheFreeGroupList(
  Pointer<APP_CACHE_GROUP_LIST> pAppCacheGroupList,
) =>
    _AppCacheFreeGroupList(
      pAppCacheGroupList,
    );

late final _AppCacheFreeGroupList = _wininet.lookupFunction<
    Void Function(
  Pointer<APP_CACHE_GROUP_LIST> pAppCacheGroupList,
),
    void Function(
  Pointer<APP_CACHE_GROUP_LIST> pAppCacheGroupList,
)>('AppCacheFreeGroupList');

int AppCacheFreeIESpace(
  FILETIME ftCutOff,
) =>
    _AppCacheFreeIESpace(
      ftCutOff,
    );

late final _AppCacheFreeIESpace = _wininet.lookupFunction<
    Uint32 Function(
  FILETIME ftCutOff,
),
    int Function(
  FILETIME ftCutOff,
)>('AppCacheFreeIESpace');

int AppCacheFreeSpace(
  FILETIME ftCutOff,
) =>
    _AppCacheFreeSpace(
      ftCutOff,
    );

late final _AppCacheFreeSpace = _wininet.lookupFunction<
    Uint32 Function(
  FILETIME ftCutOff,
),
    int Function(
  FILETIME ftCutOff,
)>('AppCacheFreeSpace');

int AppCacheGetDownloadList(
  Pointer hAppCache,
  Pointer<APP_CACHE_DOWNLOAD_LIST> pDownloadList,
) =>
    _AppCacheGetDownloadList(
      hAppCache,
      pDownloadList,
    );

late final _AppCacheGetDownloadList = _wininet.lookupFunction<
    Uint32 Function(
  Pointer hAppCache,
  Pointer<APP_CACHE_DOWNLOAD_LIST> pDownloadList,
),
    int Function(
  Pointer hAppCache,
  Pointer<APP_CACHE_DOWNLOAD_LIST> pDownloadList,
)>('AppCacheGetDownloadList');

int AppCacheGetFallbackUrl(
  Pointer hAppCache,
  Pointer<Utf16> pwszUrl,
  Pointer<Pointer<Utf16>> ppwszFallbackUrl,
) =>
    _AppCacheGetFallbackUrl(
      hAppCache,
      pwszUrl,
      ppwszFallbackUrl,
    );

late final _AppCacheGetFallbackUrl = _wininet.lookupFunction<
    Uint32 Function(
  Pointer hAppCache,
  Pointer<Utf16> pwszUrl,
  Pointer<Pointer<Utf16>> ppwszFallbackUrl,
),
    int Function(
  Pointer hAppCache,
  Pointer<Utf16> pwszUrl,
  Pointer<Pointer<Utf16>> ppwszFallbackUrl,
)>('AppCacheGetFallbackUrl');

int AppCacheGetGroupList(
  Pointer<APP_CACHE_GROUP_LIST> pAppCacheGroupList,
) =>
    _AppCacheGetGroupList(
      pAppCacheGroupList,
    );

late final _AppCacheGetGroupList = _wininet.lookupFunction<
    Uint32 Function(
  Pointer<APP_CACHE_GROUP_LIST> pAppCacheGroupList,
),
    int Function(
  Pointer<APP_CACHE_GROUP_LIST> pAppCacheGroupList,
)>('AppCacheGetGroupList');

int AppCacheGetIEGroupList(
  Pointer<APP_CACHE_GROUP_LIST> pAppCacheGroupList,
) =>
    _AppCacheGetIEGroupList(
      pAppCacheGroupList,
    );

late final _AppCacheGetIEGroupList = _wininet.lookupFunction<
    Uint32 Function(
  Pointer<APP_CACHE_GROUP_LIST> pAppCacheGroupList,
),
    int Function(
  Pointer<APP_CACHE_GROUP_LIST> pAppCacheGroupList,
)>('AppCacheGetIEGroupList');

int AppCacheGetInfo(
  Pointer hAppCache,
  Pointer<APP_CACHE_GROUP_INFO> pAppCacheInfo,
) =>
    _AppCacheGetInfo(
      hAppCache,
      pAppCacheInfo,
    );

late final _AppCacheGetInfo = _wininet.lookupFunction<
    Uint32 Function(
  Pointer hAppCache,
  Pointer<APP_CACHE_GROUP_INFO> pAppCacheInfo,
),
    int Function(
  Pointer hAppCache,
  Pointer<APP_CACHE_GROUP_INFO> pAppCacheInfo,
)>('AppCacheGetInfo');

int AppCacheGetManifestUrl(
  Pointer hAppCache,
  Pointer<Pointer<Utf16>> ppwszManifestUrl,
) =>
    _AppCacheGetManifestUrl(
      hAppCache,
      ppwszManifestUrl,
    );

late final _AppCacheGetManifestUrl = _wininet.lookupFunction<
    Uint32 Function(
  Pointer hAppCache,
  Pointer<Pointer<Utf16>> ppwszManifestUrl,
),
    int Function(
  Pointer hAppCache,
  Pointer<Pointer<Utf16>> ppwszManifestUrl,
)>('AppCacheGetManifestUrl');

int AppCacheLookup(
  Pointer<Utf16> pwszUrl,
  int dwFlags,
  Pointer<Pointer> phAppCache,
) =>
    _AppCacheLookup(
      pwszUrl,
      dwFlags,
      phAppCache,
    );

late final _AppCacheLookup = _wininet.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> pwszUrl,
  Uint32 dwFlags,
  Pointer<Pointer> phAppCache,
),
    int Function(
  Pointer<Utf16> pwszUrl,
  int dwFlags,
  Pointer<Pointer> phAppCache,
)>('AppCacheLookup');

int CommitUrlCacheEntryBinaryBlob(
  Pointer<Utf16> pwszUrlName,
  int dwType,
  FILETIME ftExpireTime,
  FILETIME ftModifiedTime,
  Pointer<Uint8> pbBlob,
  int cbBlob,
) =>
    _CommitUrlCacheEntryBinaryBlob(
      pwszUrlName,
      dwType,
      ftExpireTime,
      ftModifiedTime,
      pbBlob,
      cbBlob,
    );

late final _CommitUrlCacheEntryBinaryBlob = _wininet.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> pwszUrlName,
  Uint32 dwType,
  FILETIME ftExpireTime,
  FILETIME ftModifiedTime,
  Pointer<Uint8> pbBlob,
  Uint32 cbBlob,
),
    int Function(
  Pointer<Utf16> pwszUrlName,
  int dwType,
  FILETIME ftExpireTime,
  FILETIME ftModifiedTime,
  Pointer<Uint8> pbBlob,
  int cbBlob,
)>('CommitUrlCacheEntryBinaryBlob');

int CommitUrlCacheEntry(
  Pointer<Utf16> lpszUrlName,
  Pointer<Utf16> lpszLocalFileName,
  FILETIME ExpireTime,
  FILETIME LastModifiedTime,
  int CacheEntryType,
  Pointer<Utf16> lpszHeaderInfo,
  int cchHeaderInfo,
  Pointer<Utf16> lpszFileExtension,
  Pointer<Utf16> lpszOriginalUrl,
) =>
    _CommitUrlCacheEntry(
      lpszUrlName,
      lpszLocalFileName,
      ExpireTime,
      LastModifiedTime,
      CacheEntryType,
      lpszHeaderInfo,
      cchHeaderInfo,
      lpszFileExtension,
      lpszOriginalUrl,
    );

late final _CommitUrlCacheEntry = _wininet.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpszUrlName,
  Pointer<Utf16> lpszLocalFileName,
  FILETIME ExpireTime,
  FILETIME LastModifiedTime,
  Uint32 CacheEntryType,
  Pointer<Utf16> lpszHeaderInfo,
  Uint32 cchHeaderInfo,
  Pointer<Utf16> lpszFileExtension,
  Pointer<Utf16> lpszOriginalUrl,
),
    int Function(
  Pointer<Utf16> lpszUrlName,
  Pointer<Utf16> lpszLocalFileName,
  FILETIME ExpireTime,
  FILETIME LastModifiedTime,
  int CacheEntryType,
  Pointer<Utf16> lpszHeaderInfo,
  int cchHeaderInfo,
  Pointer<Utf16> lpszFileExtension,
  Pointer<Utf16> lpszOriginalUrl,
)>('CommitUrlCacheEntryW');

int CreateMD5SSOHash(
  Pointer<Utf16> pszChallengeInfo,
  Pointer<Utf16> pwszRealm,
  Pointer<Utf16> pwszTarget,
  Pointer<Uint8> pbHexHash,
) =>
    _CreateMD5SSOHash(
      pszChallengeInfo,
      pwszRealm,
      pwszTarget,
      pbHexHash,
    );

late final _CreateMD5SSOHash = _wininet.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszChallengeInfo,
  Pointer<Utf16> pwszRealm,
  Pointer<Utf16> pwszTarget,
  Pointer<Uint8> pbHexHash,
),
    int Function(
  Pointer<Utf16> pszChallengeInfo,
  Pointer<Utf16> pwszRealm,
  Pointer<Utf16> pwszTarget,
  Pointer<Uint8> pbHexHash,
)>('CreateMD5SSOHash');

int CreateUrlCacheContainer(
  Pointer<Utf16> Name,
  Pointer<Utf16> lpCachePrefix,
  Pointer<Utf16> lpszCachePath,
  int KBCacheLimit,
  int dwContainerType,
  int dwOptions,
  Pointer pvBuffer,
  Pointer<Uint32> cbBuffer,
) =>
    _CreateUrlCacheContainer(
      Name,
      lpCachePrefix,
      lpszCachePath,
      KBCacheLimit,
      dwContainerType,
      dwOptions,
      pvBuffer,
      cbBuffer,
    );

late final _CreateUrlCacheContainer = _wininet.lookupFunction<
    Int32 Function(
  Pointer<Utf16> Name,
  Pointer<Utf16> lpCachePrefix,
  Pointer<Utf16> lpszCachePath,
  Uint32 KBCacheLimit,
  Uint32 dwContainerType,
  Uint32 dwOptions,
  Pointer pvBuffer,
  Pointer<Uint32> cbBuffer,
),
    int Function(
  Pointer<Utf16> Name,
  Pointer<Utf16> lpCachePrefix,
  Pointer<Utf16> lpszCachePath,
  int KBCacheLimit,
  int dwContainerType,
  int dwOptions,
  Pointer pvBuffer,
  Pointer<Uint32> cbBuffer,
)>('CreateUrlCacheContainerW');

int CreateUrlCacheEntryEx(
  Pointer<Utf16> lpszUrlName,
  int dwExpectedFileSize,
  Pointer<Utf16> lpszFileExtension,
  Pointer<Utf16> lpszFileName,
  int dwReserved,
  int fPreserveIncomingFileName,
) =>
    _CreateUrlCacheEntryEx(
      lpszUrlName,
      dwExpectedFileSize,
      lpszFileExtension,
      lpszFileName,
      dwReserved,
      fPreserveIncomingFileName,
    );

late final _CreateUrlCacheEntryEx = _wininet.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpszUrlName,
  Uint32 dwExpectedFileSize,
  Pointer<Utf16> lpszFileExtension,
  Pointer<Utf16> lpszFileName,
  Uint32 dwReserved,
  Int32 fPreserveIncomingFileName,
),
    int Function(
  Pointer<Utf16> lpszUrlName,
  int dwExpectedFileSize,
  Pointer<Utf16> lpszFileExtension,
  Pointer<Utf16> lpszFileName,
  int dwReserved,
  int fPreserveIncomingFileName,
)>('CreateUrlCacheEntryExW');

int CreateUrlCacheEntry(
  Pointer<Utf16> lpszUrlName,
  int dwExpectedFileSize,
  Pointer<Utf16> lpszFileExtension,
  Pointer<Utf16> lpszFileName,
  int dwReserved,
) =>
    _CreateUrlCacheEntry(
      lpszUrlName,
      dwExpectedFileSize,
      lpszFileExtension,
      lpszFileName,
      dwReserved,
    );

late final _CreateUrlCacheEntry = _wininet.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpszUrlName,
  Uint32 dwExpectedFileSize,
  Pointer<Utf16> lpszFileExtension,
  Pointer<Utf16> lpszFileName,
  Uint32 dwReserved,
),
    int Function(
  Pointer<Utf16> lpszUrlName,
  int dwExpectedFileSize,
  Pointer<Utf16> lpszFileExtension,
  Pointer<Utf16> lpszFileName,
  int dwReserved,
)>('CreateUrlCacheEntryW');

int CreateUrlCacheGroup(
  int dwFlags,
  Pointer lpReserved,
) =>
    _CreateUrlCacheGroup(
      dwFlags,
      lpReserved,
    );

late final _CreateUrlCacheGroup = _wininet.lookupFunction<
    Int64 Function(
  Uint32 dwFlags,
  Pointer lpReserved,
),
    int Function(
  int dwFlags,
  Pointer lpReserved,
)>('CreateUrlCacheGroup');

int DeleteIE3Cache(
  int hwnd,
  int hinst,
  Pointer<Utf8> lpszCmd,
  int nCmdShow,
) =>
    _DeleteIE3Cache(
      hwnd,
      hinst,
      lpszCmd,
      nCmdShow,
    );

late final _DeleteIE3Cache = _wininet.lookupFunction<
    Uint32 Function(
  IntPtr hwnd,
  IntPtr hinst,
  Pointer<Utf8> lpszCmd,
  Int32 nCmdShow,
),
    int Function(
  int hwnd,
  int hinst,
  Pointer<Utf8> lpszCmd,
  int nCmdShow,
)>('DeleteIE3Cache');

int DeleteUrlCacheContainer(
  Pointer<Utf16> Name,
  int dwOptions,
) =>
    _DeleteUrlCacheContainer(
      Name,
      dwOptions,
    );

late final _DeleteUrlCacheContainer = _wininet.lookupFunction<
    Int32 Function(
  Pointer<Utf16> Name,
  Uint32 dwOptions,
),
    int Function(
  Pointer<Utf16> Name,
  int dwOptions,
)>('DeleteUrlCacheContainerW');

int DeleteUrlCacheEntry(
  Pointer<Utf16> lpszUrlName,
) =>
    _DeleteUrlCacheEntry(
      lpszUrlName,
    );

late final _DeleteUrlCacheEntry = _wininet.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpszUrlName,
),
    int Function(
  Pointer<Utf16> lpszUrlName,
)>('DeleteUrlCacheEntryW');

int DeleteUrlCacheGroup(
  int GroupId,
  int dwFlags,
  Pointer lpReserved,
) =>
    _DeleteUrlCacheGroup(
      GroupId,
      dwFlags,
      lpReserved,
    );

late final _DeleteUrlCacheGroup = _wininet.lookupFunction<
    Int32 Function(
  Int64 GroupId,
  Uint32 dwFlags,
  Pointer lpReserved,
),
    int Function(
  int GroupId,
  int dwFlags,
  Pointer lpReserved,
)>('DeleteUrlCacheGroup');

int DeleteWpadCacheForNetworks(
  int param0,
) =>
    _DeleteWpadCacheForNetworks(
      param0,
    );

late final _DeleteWpadCacheForNetworks = _wininet.lookupFunction<
    Int32 Function(
  Int32 param0,
),
    int Function(
  int param0,
)>('DeleteWpadCacheForNetworks');

int DetectAutoProxyUrl(
  Pointer<Utf8> pszAutoProxyUrl,
  int cchAutoProxyUrl,
  int dwDetectFlags,
) =>
    _DetectAutoProxyUrl(
      pszAutoProxyUrl,
      cchAutoProxyUrl,
      dwDetectFlags,
    );

late final _DetectAutoProxyUrl = _wininet.lookupFunction<
    Int32 Function(
  Pointer<Utf8> pszAutoProxyUrl,
  Uint32 cchAutoProxyUrl,
  Uint32 dwDetectFlags,
),
    int Function(
  Pointer<Utf8> pszAutoProxyUrl,
  int cchAutoProxyUrl,
  int dwDetectFlags,
)>('DetectAutoProxyUrl');

int DoConnectoidsExist() => _DoConnectoidsExist();

late final _DoConnectoidsExist = _wininet
    .lookupFunction<Int32 Function(), int Function()>('DoConnectoidsExist');

int ExportCookieFile(
  Pointer<Utf16> szFilename,
  int fAppend,
) =>
    _ExportCookieFile(
      szFilename,
      fAppend,
    );

late final _ExportCookieFile = _wininet.lookupFunction<
    Int32 Function(
  Pointer<Utf16> szFilename,
  Int32 fAppend,
),
    int Function(
  Pointer<Utf16> szFilename,
  int fAppend,
)>('ExportCookieFileW');

int FindCloseUrlCache(
  int hEnumHandle,
) =>
    _FindCloseUrlCache(
      hEnumHandle,
    );

late final _FindCloseUrlCache = _wininet.lookupFunction<
    Int32 Function(
  IntPtr hEnumHandle,
),
    int Function(
  int hEnumHandle,
)>('FindCloseUrlCache');

int FindFirstUrlCacheContainer(
  Pointer<Uint32> pdwModified,
  Pointer<INTERNET_CACHE_CONTAINER_INFO> lpContainerInfo,
  Pointer<Uint32> lpcbContainerInfo,
  int dwOptions,
) =>
    _FindFirstUrlCacheContainer(
      pdwModified,
      lpContainerInfo,
      lpcbContainerInfo,
      dwOptions,
    );

late final _FindFirstUrlCacheContainer = _wininet.lookupFunction<
    IntPtr Function(
  Pointer<Uint32> pdwModified,
  Pointer<INTERNET_CACHE_CONTAINER_INFO> lpContainerInfo,
  Pointer<Uint32> lpcbContainerInfo,
  Uint32 dwOptions,
),
    int Function(
  Pointer<Uint32> pdwModified,
  Pointer<INTERNET_CACHE_CONTAINER_INFO> lpContainerInfo,
  Pointer<Uint32> lpcbContainerInfo,
  int dwOptions,
)>('FindFirstUrlCacheContainerW');

int FindFirstUrlCacheEntryEx(
  Pointer<Utf16> lpszUrlSearchPattern,
  int dwFlags,
  int dwFilter,
  int GroupId,
  Pointer<INTERNET_CACHE_ENTRY_INFO> lpFirstCacheEntryInfo,
  Pointer<Uint32> lpcbCacheEntryInfo,
  Pointer lpGroupAttributes,
  Pointer<Uint32> lpcbGroupAttributes,
  Pointer lpReserved,
) =>
    _FindFirstUrlCacheEntryEx(
      lpszUrlSearchPattern,
      dwFlags,
      dwFilter,
      GroupId,
      lpFirstCacheEntryInfo,
      lpcbCacheEntryInfo,
      lpGroupAttributes,
      lpcbGroupAttributes,
      lpReserved,
    );

late final _FindFirstUrlCacheEntryEx = _wininet.lookupFunction<
    IntPtr Function(
  Pointer<Utf16> lpszUrlSearchPattern,
  Uint32 dwFlags,
  Uint32 dwFilter,
  Int64 GroupId,
  Pointer<INTERNET_CACHE_ENTRY_INFO> lpFirstCacheEntryInfo,
  Pointer<Uint32> lpcbCacheEntryInfo,
  Pointer lpGroupAttributes,
  Pointer<Uint32> lpcbGroupAttributes,
  Pointer lpReserved,
),
    int Function(
  Pointer<Utf16> lpszUrlSearchPattern,
  int dwFlags,
  int dwFilter,
  int GroupId,
  Pointer<INTERNET_CACHE_ENTRY_INFO> lpFirstCacheEntryInfo,
  Pointer<Uint32> lpcbCacheEntryInfo,
  Pointer lpGroupAttributes,
  Pointer<Uint32> lpcbGroupAttributes,
  Pointer lpReserved,
)>('FindFirstUrlCacheEntryExW');

int FindFirstUrlCacheEntry(
  Pointer<Utf16> lpszUrlSearchPattern,
  Pointer<INTERNET_CACHE_ENTRY_INFO> lpFirstCacheEntryInfo,
  Pointer<Uint32> lpcbCacheEntryInfo,
) =>
    _FindFirstUrlCacheEntry(
      lpszUrlSearchPattern,
      lpFirstCacheEntryInfo,
      lpcbCacheEntryInfo,
    );

late final _FindFirstUrlCacheEntry = _wininet.lookupFunction<
    IntPtr Function(
  Pointer<Utf16> lpszUrlSearchPattern,
  Pointer<INTERNET_CACHE_ENTRY_INFO> lpFirstCacheEntryInfo,
  Pointer<Uint32> lpcbCacheEntryInfo,
),
    int Function(
  Pointer<Utf16> lpszUrlSearchPattern,
  Pointer<INTERNET_CACHE_ENTRY_INFO> lpFirstCacheEntryInfo,
  Pointer<Uint32> lpcbCacheEntryInfo,
)>('FindFirstUrlCacheEntryW');

int FindFirstUrlCacheGroup(
  int dwFlags,
  int dwFilter,
  Pointer lpSearchCondition,
  int dwSearchCondition,
  Pointer<Int64> lpGroupId,
  Pointer lpReserved,
) =>
    _FindFirstUrlCacheGroup(
      dwFlags,
      dwFilter,
      lpSearchCondition,
      dwSearchCondition,
      lpGroupId,
      lpReserved,
    );

late final _FindFirstUrlCacheGroup = _wininet.lookupFunction<
    IntPtr Function(
  Uint32 dwFlags,
  Uint32 dwFilter,
  Pointer lpSearchCondition,
  Uint32 dwSearchCondition,
  Pointer<Int64> lpGroupId,
  Pointer lpReserved,
),
    int Function(
  int dwFlags,
  int dwFilter,
  Pointer lpSearchCondition,
  int dwSearchCondition,
  Pointer<Int64> lpGroupId,
  Pointer lpReserved,
)>('FindFirstUrlCacheGroup');

int FindNextUrlCacheContainer(
  int hEnumHandle,
  Pointer<INTERNET_CACHE_CONTAINER_INFO> lpContainerInfo,
  Pointer<Uint32> lpcbContainerInfo,
) =>
    _FindNextUrlCacheContainer(
      hEnumHandle,
      lpContainerInfo,
      lpcbContainerInfo,
    );

late final _FindNextUrlCacheContainer = _wininet.lookupFunction<
    Int32 Function(
  IntPtr hEnumHandle,
  Pointer<INTERNET_CACHE_CONTAINER_INFO> lpContainerInfo,
  Pointer<Uint32> lpcbContainerInfo,
),
    int Function(
  int hEnumHandle,
  Pointer<INTERNET_CACHE_CONTAINER_INFO> lpContainerInfo,
  Pointer<Uint32> lpcbContainerInfo,
)>('FindNextUrlCacheContainerW');

int FindNextUrlCacheEntryEx(
  int hEnumHandle,
  Pointer<INTERNET_CACHE_ENTRY_INFO> lpNextCacheEntryInfo,
  Pointer<Uint32> lpcbCacheEntryInfo,
  Pointer lpGroupAttributes,
  Pointer<Uint32> lpcbGroupAttributes,
  Pointer lpReserved,
) =>
    _FindNextUrlCacheEntryEx(
      hEnumHandle,
      lpNextCacheEntryInfo,
      lpcbCacheEntryInfo,
      lpGroupAttributes,
      lpcbGroupAttributes,
      lpReserved,
    );

late final _FindNextUrlCacheEntryEx = _wininet.lookupFunction<
    Int32 Function(
  IntPtr hEnumHandle,
  Pointer<INTERNET_CACHE_ENTRY_INFO> lpNextCacheEntryInfo,
  Pointer<Uint32> lpcbCacheEntryInfo,
  Pointer lpGroupAttributes,
  Pointer<Uint32> lpcbGroupAttributes,
  Pointer lpReserved,
),
    int Function(
  int hEnumHandle,
  Pointer<INTERNET_CACHE_ENTRY_INFO> lpNextCacheEntryInfo,
  Pointer<Uint32> lpcbCacheEntryInfo,
  Pointer lpGroupAttributes,
  Pointer<Uint32> lpcbGroupAttributes,
  Pointer lpReserved,
)>('FindNextUrlCacheEntryExW');

int FindNextUrlCacheEntry(
  int hEnumHandle,
  Pointer<INTERNET_CACHE_ENTRY_INFO> lpNextCacheEntryInfo,
  Pointer<Uint32> lpcbCacheEntryInfo,
) =>
    _FindNextUrlCacheEntry(
      hEnumHandle,
      lpNextCacheEntryInfo,
      lpcbCacheEntryInfo,
    );

late final _FindNextUrlCacheEntry = _wininet.lookupFunction<
    Int32 Function(
  IntPtr hEnumHandle,
  Pointer<INTERNET_CACHE_ENTRY_INFO> lpNextCacheEntryInfo,
  Pointer<Uint32> lpcbCacheEntryInfo,
),
    int Function(
  int hEnumHandle,
  Pointer<INTERNET_CACHE_ENTRY_INFO> lpNextCacheEntryInfo,
  Pointer<Uint32> lpcbCacheEntryInfo,
)>('FindNextUrlCacheEntryW');

int FindNextUrlCacheGroup(
  int hFind,
  Pointer<Int64> lpGroupId,
  Pointer lpReserved,
) =>
    _FindNextUrlCacheGroup(
      hFind,
      lpGroupId,
      lpReserved,
    );

late final _FindNextUrlCacheGroup = _wininet.lookupFunction<
    Int32 Function(
  IntPtr hFind,
  Pointer<Int64> lpGroupId,
  Pointer lpReserved,
),
    int Function(
  int hFind,
  Pointer<Int64> lpGroupId,
  Pointer lpReserved,
)>('FindNextUrlCacheGroup');

int FindP3PPolicySymbol(
  Pointer<Utf8> pszSymbol,
) =>
    _FindP3PPolicySymbol(
      pszSymbol,
    );

late final _FindP3PPolicySymbol = _wininet.lookupFunction<
    Int32 Function(
  Pointer<Utf8> pszSymbol,
),
    int Function(
  Pointer<Utf8> pszSymbol,
)>('FindP3PPolicySymbol');

int FreeUrlCacheSpace(
  Pointer<Utf16> lpszCachePath,
  int dwSize,
  int dwFilter,
) =>
    _FreeUrlCacheSpace(
      lpszCachePath,
      dwSize,
      dwFilter,
    );

late final _FreeUrlCacheSpace = _wininet.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpszCachePath,
  Uint32 dwSize,
  Uint32 dwFilter,
),
    int Function(
  Pointer<Utf16> lpszCachePath,
  int dwSize,
  int dwFilter,
)>('FreeUrlCacheSpaceW');

int FtpCommand(
  Pointer hConnect,
  int fExpectResponse,
  int dwFlags,
  Pointer<Utf16> lpszCommand,
  int dwContext,
  Pointer<Pointer> phFtpCommand,
) =>
    _FtpCommand(
      hConnect,
      fExpectResponse,
      dwFlags,
      lpszCommand,
      dwContext,
      phFtpCommand,
    );

late final _FtpCommand = _wininet.lookupFunction<
    Int32 Function(
  Pointer hConnect,
  Int32 fExpectResponse,
  Uint32 dwFlags,
  Pointer<Utf16> lpszCommand,
  IntPtr dwContext,
  Pointer<Pointer> phFtpCommand,
),
    int Function(
  Pointer hConnect,
  int fExpectResponse,
  int dwFlags,
  Pointer<Utf16> lpszCommand,
  int dwContext,
  Pointer<Pointer> phFtpCommand,
)>('FtpCommandW');

int FtpCreateDirectory(
  Pointer hConnect,
  Pointer<Utf16> lpszDirectory,
) =>
    _FtpCreateDirectory(
      hConnect,
      lpszDirectory,
    );

late final _FtpCreateDirectory = _wininet.lookupFunction<
    Int32 Function(
  Pointer hConnect,
  Pointer<Utf16> lpszDirectory,
),
    int Function(
  Pointer hConnect,
  Pointer<Utf16> lpszDirectory,
)>('FtpCreateDirectoryW');

int FtpDeleteFile(
  Pointer hConnect,
  Pointer<Utf16> lpszFileName,
) =>
    _FtpDeleteFile(
      hConnect,
      lpszFileName,
    );

late final _FtpDeleteFile = _wininet.lookupFunction<
    Int32 Function(
  Pointer hConnect,
  Pointer<Utf16> lpszFileName,
),
    int Function(
  Pointer hConnect,
  Pointer<Utf16> lpszFileName,
)>('FtpDeleteFileW');

Pointer FtpFindFirstFile(
  Pointer hConnect,
  Pointer<Utf16> lpszSearchFile,
  Pointer<WIN32_FIND_DATA> lpFindFileData,
  int dwFlags,
  int dwContext,
) =>
    _FtpFindFirstFile(
      hConnect,
      lpszSearchFile,
      lpFindFileData,
      dwFlags,
      dwContext,
    );

late final _FtpFindFirstFile = _wininet.lookupFunction<
    Pointer Function(
  Pointer hConnect,
  Pointer<Utf16> lpszSearchFile,
  Pointer<WIN32_FIND_DATA> lpFindFileData,
  Uint32 dwFlags,
  IntPtr dwContext,
),
    Pointer Function(
  Pointer hConnect,
  Pointer<Utf16> lpszSearchFile,
  Pointer<WIN32_FIND_DATA> lpFindFileData,
  int dwFlags,
  int dwContext,
)>('FtpFindFirstFileW');

int FtpGetCurrentDirectory(
  Pointer hConnect,
  Pointer<Utf16> lpszCurrentDirectory,
  Pointer<Uint32> lpdwCurrentDirectory,
) =>
    _FtpGetCurrentDirectory(
      hConnect,
      lpszCurrentDirectory,
      lpdwCurrentDirectory,
    );

late final _FtpGetCurrentDirectory = _wininet.lookupFunction<
    Int32 Function(
  Pointer hConnect,
  Pointer<Utf16> lpszCurrentDirectory,
  Pointer<Uint32> lpdwCurrentDirectory,
),
    int Function(
  Pointer hConnect,
  Pointer<Utf16> lpszCurrentDirectory,
  Pointer<Uint32> lpdwCurrentDirectory,
)>('FtpGetCurrentDirectoryW');

int FtpGetFileEx(
  Pointer hFtpSession,
  Pointer<Utf8> lpszRemoteFile,
  Pointer<Utf16> lpszNewFile,
  int fFailIfExists,
  int dwFlagsAndAttributes,
  int dwFlags,
  int dwContext,
) =>
    _FtpGetFileEx(
      hFtpSession,
      lpszRemoteFile,
      lpszNewFile,
      fFailIfExists,
      dwFlagsAndAttributes,
      dwFlags,
      dwContext,
    );

late final _FtpGetFileEx = _wininet.lookupFunction<
    Int32 Function(
  Pointer hFtpSession,
  Pointer<Utf8> lpszRemoteFile,
  Pointer<Utf16> lpszNewFile,
  Int32 fFailIfExists,
  Uint32 dwFlagsAndAttributes,
  Uint32 dwFlags,
  IntPtr dwContext,
),
    int Function(
  Pointer hFtpSession,
  Pointer<Utf8> lpszRemoteFile,
  Pointer<Utf16> lpszNewFile,
  int fFailIfExists,
  int dwFlagsAndAttributes,
  int dwFlags,
  int dwContext,
)>('FtpGetFileEx');

int FtpGetFileSize(
  Pointer hFile,
  Pointer<Uint32> lpdwFileSizeHigh,
) =>
    _FtpGetFileSize(
      hFile,
      lpdwFileSizeHigh,
    );

late final _FtpGetFileSize = _wininet.lookupFunction<
    Uint32 Function(
  Pointer hFile,
  Pointer<Uint32> lpdwFileSizeHigh,
),
    int Function(
  Pointer hFile,
  Pointer<Uint32> lpdwFileSizeHigh,
)>('FtpGetFileSize');

int FtpGetFile(
  Pointer hConnect,
  Pointer<Utf16> lpszRemoteFile,
  Pointer<Utf16> lpszNewFile,
  int fFailIfExists,
  int dwFlagsAndAttributes,
  int dwFlags,
  int dwContext,
) =>
    _FtpGetFile(
      hConnect,
      lpszRemoteFile,
      lpszNewFile,
      fFailIfExists,
      dwFlagsAndAttributes,
      dwFlags,
      dwContext,
    );

late final _FtpGetFile = _wininet.lookupFunction<
    Int32 Function(
  Pointer hConnect,
  Pointer<Utf16> lpszRemoteFile,
  Pointer<Utf16> lpszNewFile,
  Int32 fFailIfExists,
  Uint32 dwFlagsAndAttributes,
  Uint32 dwFlags,
  IntPtr dwContext,
),
    int Function(
  Pointer hConnect,
  Pointer<Utf16> lpszRemoteFile,
  Pointer<Utf16> lpszNewFile,
  int fFailIfExists,
  int dwFlagsAndAttributes,
  int dwFlags,
  int dwContext,
)>('FtpGetFileW');

Pointer FtpOpenFile(
  Pointer hConnect,
  Pointer<Utf16> lpszFileName,
  int dwAccess,
  int dwFlags,
  int dwContext,
) =>
    _FtpOpenFile(
      hConnect,
      lpszFileName,
      dwAccess,
      dwFlags,
      dwContext,
    );

late final _FtpOpenFile = _wininet.lookupFunction<
    Pointer Function(
  Pointer hConnect,
  Pointer<Utf16> lpszFileName,
  Uint32 dwAccess,
  Uint32 dwFlags,
  IntPtr dwContext,
),
    Pointer Function(
  Pointer hConnect,
  Pointer<Utf16> lpszFileName,
  int dwAccess,
  int dwFlags,
  int dwContext,
)>('FtpOpenFileW');

int FtpPutFileEx(
  Pointer hFtpSession,
  Pointer<Utf16> lpszLocalFile,
  Pointer<Utf8> lpszNewRemoteFile,
  int dwFlags,
  int dwContext,
) =>
    _FtpPutFileEx(
      hFtpSession,
      lpszLocalFile,
      lpszNewRemoteFile,
      dwFlags,
      dwContext,
    );

late final _FtpPutFileEx = _wininet.lookupFunction<
    Int32 Function(
  Pointer hFtpSession,
  Pointer<Utf16> lpszLocalFile,
  Pointer<Utf8> lpszNewRemoteFile,
  Uint32 dwFlags,
  IntPtr dwContext,
),
    int Function(
  Pointer hFtpSession,
  Pointer<Utf16> lpszLocalFile,
  Pointer<Utf8> lpszNewRemoteFile,
  int dwFlags,
  int dwContext,
)>('FtpPutFileEx');

int FtpPutFile(
  Pointer hConnect,
  Pointer<Utf16> lpszLocalFile,
  Pointer<Utf16> lpszNewRemoteFile,
  int dwFlags,
  int dwContext,
) =>
    _FtpPutFile(
      hConnect,
      lpszLocalFile,
      lpszNewRemoteFile,
      dwFlags,
      dwContext,
    );

late final _FtpPutFile = _wininet.lookupFunction<
    Int32 Function(
  Pointer hConnect,
  Pointer<Utf16> lpszLocalFile,
  Pointer<Utf16> lpszNewRemoteFile,
  Uint32 dwFlags,
  IntPtr dwContext,
),
    int Function(
  Pointer hConnect,
  Pointer<Utf16> lpszLocalFile,
  Pointer<Utf16> lpszNewRemoteFile,
  int dwFlags,
  int dwContext,
)>('FtpPutFileW');

int FtpRemoveDirectory(
  Pointer hConnect,
  Pointer<Utf16> lpszDirectory,
) =>
    _FtpRemoveDirectory(
      hConnect,
      lpszDirectory,
    );

late final _FtpRemoveDirectory = _wininet.lookupFunction<
    Int32 Function(
  Pointer hConnect,
  Pointer<Utf16> lpszDirectory,
),
    int Function(
  Pointer hConnect,
  Pointer<Utf16> lpszDirectory,
)>('FtpRemoveDirectoryW');

int FtpRenameFile(
  Pointer hConnect,
  Pointer<Utf16> lpszExisting,
  Pointer<Utf16> lpszNew,
) =>
    _FtpRenameFile(
      hConnect,
      lpszExisting,
      lpszNew,
    );

late final _FtpRenameFile = _wininet.lookupFunction<
    Int32 Function(
  Pointer hConnect,
  Pointer<Utf16> lpszExisting,
  Pointer<Utf16> lpszNew,
),
    int Function(
  Pointer hConnect,
  Pointer<Utf16> lpszExisting,
  Pointer<Utf16> lpszNew,
)>('FtpRenameFileW');

int FtpSetCurrentDirectory(
  Pointer hConnect,
  Pointer<Utf16> lpszDirectory,
) =>
    _FtpSetCurrentDirectory(
      hConnect,
      lpszDirectory,
    );

late final _FtpSetCurrentDirectory = _wininet.lookupFunction<
    Int32 Function(
  Pointer hConnect,
  Pointer<Utf16> lpszDirectory,
),
    int Function(
  Pointer hConnect,
  Pointer<Utf16> lpszDirectory,
)>('FtpSetCurrentDirectoryW');

int GetUrlCacheConfigInfo(
  Pointer<INTERNET_CACHE_CONFIG_INFO> lpCacheConfigInfo,
  Pointer<Uint32> lpcbCacheConfigInfo,
  int dwFieldControl,
) =>
    _GetUrlCacheConfigInfo(
      lpCacheConfigInfo,
      lpcbCacheConfigInfo,
      dwFieldControl,
    );

late final _GetUrlCacheConfigInfo = _wininet.lookupFunction<
    Int32 Function(
  Pointer<INTERNET_CACHE_CONFIG_INFO> lpCacheConfigInfo,
  Pointer<Uint32> lpcbCacheConfigInfo,
  Uint32 dwFieldControl,
),
    int Function(
  Pointer<INTERNET_CACHE_CONFIG_INFO> lpCacheConfigInfo,
  Pointer<Uint32> lpcbCacheConfigInfo,
  int dwFieldControl,
)>('GetUrlCacheConfigInfoW');

int GetUrlCacheEntryBinaryBlob(
  Pointer<Utf16> pwszUrlName,
  Pointer<Uint32> dwType,
  Pointer<FILETIME> pftExpireTime,
  Pointer<FILETIME> pftAccessTime,
  Pointer<FILETIME> pftModifiedTime,
  Pointer<Pointer<Uint8>> ppbBlob,
  Pointer<Uint32> pcbBlob,
) =>
    _GetUrlCacheEntryBinaryBlob(
      pwszUrlName,
      dwType,
      pftExpireTime,
      pftAccessTime,
      pftModifiedTime,
      ppbBlob,
      pcbBlob,
    );

late final _GetUrlCacheEntryBinaryBlob = _wininet.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> pwszUrlName,
  Pointer<Uint32> dwType,
  Pointer<FILETIME> pftExpireTime,
  Pointer<FILETIME> pftAccessTime,
  Pointer<FILETIME> pftModifiedTime,
  Pointer<Pointer<Uint8>> ppbBlob,
  Pointer<Uint32> pcbBlob,
),
    int Function(
  Pointer<Utf16> pwszUrlName,
  Pointer<Uint32> dwType,
  Pointer<FILETIME> pftExpireTime,
  Pointer<FILETIME> pftAccessTime,
  Pointer<FILETIME> pftModifiedTime,
  Pointer<Pointer<Uint8>> ppbBlob,
  Pointer<Uint32> pcbBlob,
)>('GetUrlCacheEntryBinaryBlob');

int GetUrlCacheEntryInfoEx(
  Pointer<Utf16> lpszUrl,
  Pointer<INTERNET_CACHE_ENTRY_INFO> lpCacheEntryInfo,
  Pointer<Uint32> lpcbCacheEntryInfo,
  Pointer<Utf16> lpszRedirectUrl,
  Pointer<Uint32> lpcbRedirectUrl,
  Pointer lpReserved,
  int dwFlags,
) =>
    _GetUrlCacheEntryInfoEx(
      lpszUrl,
      lpCacheEntryInfo,
      lpcbCacheEntryInfo,
      lpszRedirectUrl,
      lpcbRedirectUrl,
      lpReserved,
      dwFlags,
    );

late final _GetUrlCacheEntryInfoEx = _wininet.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpszUrl,
  Pointer<INTERNET_CACHE_ENTRY_INFO> lpCacheEntryInfo,
  Pointer<Uint32> lpcbCacheEntryInfo,
  Pointer<Utf16> lpszRedirectUrl,
  Pointer<Uint32> lpcbRedirectUrl,
  Pointer lpReserved,
  Uint32 dwFlags,
),
    int Function(
  Pointer<Utf16> lpszUrl,
  Pointer<INTERNET_CACHE_ENTRY_INFO> lpCacheEntryInfo,
  Pointer<Uint32> lpcbCacheEntryInfo,
  Pointer<Utf16> lpszRedirectUrl,
  Pointer<Uint32> lpcbRedirectUrl,
  Pointer lpReserved,
  int dwFlags,
)>('GetUrlCacheEntryInfoExW');

int GetUrlCacheEntryInfo(
  Pointer<Utf16> lpszUrlName,
  Pointer<INTERNET_CACHE_ENTRY_INFO> lpCacheEntryInfo,
  Pointer<Uint32> lpcbCacheEntryInfo,
) =>
    _GetUrlCacheEntryInfo(
      lpszUrlName,
      lpCacheEntryInfo,
      lpcbCacheEntryInfo,
    );

late final _GetUrlCacheEntryInfo = _wininet.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpszUrlName,
  Pointer<INTERNET_CACHE_ENTRY_INFO> lpCacheEntryInfo,
  Pointer<Uint32> lpcbCacheEntryInfo,
),
    int Function(
  Pointer<Utf16> lpszUrlName,
  Pointer<INTERNET_CACHE_ENTRY_INFO> lpCacheEntryInfo,
  Pointer<Uint32> lpcbCacheEntryInfo,
)>('GetUrlCacheEntryInfoW');

int GetUrlCacheGroupAttribute(
  int gid,
  int dwFlags,
  int dwAttributes,
  Pointer<INTERNET_CACHE_GROUP_INFO> lpGroupInfo,
  Pointer<Uint32> lpcbGroupInfo,
  Pointer lpReserved,
) =>
    _GetUrlCacheGroupAttribute(
      gid,
      dwFlags,
      dwAttributes,
      lpGroupInfo,
      lpcbGroupInfo,
      lpReserved,
    );

late final _GetUrlCacheGroupAttribute = _wininet.lookupFunction<
    Int32 Function(
  Int64 gid,
  Uint32 dwFlags,
  Uint32 dwAttributes,
  Pointer<INTERNET_CACHE_GROUP_INFO> lpGroupInfo,
  Pointer<Uint32> lpcbGroupInfo,
  Pointer lpReserved,
),
    int Function(
  int gid,
  int dwFlags,
  int dwAttributes,
  Pointer<INTERNET_CACHE_GROUP_INFO> lpGroupInfo,
  Pointer<Uint32> lpcbGroupInfo,
  Pointer lpReserved,
)>('GetUrlCacheGroupAttributeW');

int GetUrlCacheHeaderData(
  int nIdx,
  Pointer<Uint32> lpdwData,
) =>
    _GetUrlCacheHeaderData(
      nIdx,
      lpdwData,
    );

late final _GetUrlCacheHeaderData = _wininet.lookupFunction<
    Int32 Function(
  Uint32 nIdx,
  Pointer<Uint32> lpdwData,
),
    int Function(
  int nIdx,
  Pointer<Uint32> lpdwData,
)>('GetUrlCacheHeaderData');

int GopherCreateLocator(
  Pointer<Utf16> lpszHost,
  int nServerPort,
  Pointer<Utf16> lpszDisplayString,
  Pointer<Utf16> lpszSelectorString,
  int dwGopherType,
  Pointer<Utf16> lpszLocator,
  Pointer<Uint32> lpdwBufferLength,
) =>
    _GopherCreateLocator(
      lpszHost,
      nServerPort,
      lpszDisplayString,
      lpszSelectorString,
      dwGopherType,
      lpszLocator,
      lpdwBufferLength,
    );

late final _GopherCreateLocator = _wininet.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpszHost,
  Uint16 nServerPort,
  Pointer<Utf16> lpszDisplayString,
  Pointer<Utf16> lpszSelectorString,
  Uint32 dwGopherType,
  Pointer<Utf16> lpszLocator,
  Pointer<Uint32> lpdwBufferLength,
),
    int Function(
  Pointer<Utf16> lpszHost,
  int nServerPort,
  Pointer<Utf16> lpszDisplayString,
  Pointer<Utf16> lpszSelectorString,
  int dwGopherType,
  Pointer<Utf16> lpszLocator,
  Pointer<Uint32> lpdwBufferLength,
)>('GopherCreateLocatorW');

Pointer GopherFindFirstFile(
  Pointer hConnect,
  Pointer<Utf16> lpszLocator,
  Pointer<Utf16> lpszSearchString,
  Pointer<GOPHER_FIND_DATA> lpFindData,
  int dwFlags,
  int dwContext,
) =>
    _GopherFindFirstFile(
      hConnect,
      lpszLocator,
      lpszSearchString,
      lpFindData,
      dwFlags,
      dwContext,
    );

late final _GopherFindFirstFile = _wininet.lookupFunction<
    Pointer Function(
  Pointer hConnect,
  Pointer<Utf16> lpszLocator,
  Pointer<Utf16> lpszSearchString,
  Pointer<GOPHER_FIND_DATA> lpFindData,
  Uint32 dwFlags,
  IntPtr dwContext,
),
    Pointer Function(
  Pointer hConnect,
  Pointer<Utf16> lpszLocator,
  Pointer<Utf16> lpszSearchString,
  Pointer<GOPHER_FIND_DATA> lpFindData,
  int dwFlags,
  int dwContext,
)>('GopherFindFirstFileW');

int GopherGetAttribute(
  Pointer hConnect,
  Pointer<Utf16> lpszLocator,
  Pointer<Utf16> lpszAttributeName,
  Pointer<Uint8> lpBuffer,
  int dwBufferLength,
  Pointer<Uint32> lpdwCharactersReturned,
  Pointer<NativeFunction<GOPHER_ATTRIBUTE_ENUMERATOR>> lpfnEnumerator,
  int dwContext,
) =>
    _GopherGetAttribute(
      hConnect,
      lpszLocator,
      lpszAttributeName,
      lpBuffer,
      dwBufferLength,
      lpdwCharactersReturned,
      lpfnEnumerator,
      dwContext,
    );

late final _GopherGetAttribute = _wininet.lookupFunction<
    Int32 Function(
  Pointer hConnect,
  Pointer<Utf16> lpszLocator,
  Pointer<Utf16> lpszAttributeName,
  Pointer<Uint8> lpBuffer,
  Uint32 dwBufferLength,
  Pointer<Uint32> lpdwCharactersReturned,
  Pointer<NativeFunction<GOPHER_ATTRIBUTE_ENUMERATOR>> lpfnEnumerator,
  IntPtr dwContext,
),
    int Function(
  Pointer hConnect,
  Pointer<Utf16> lpszLocator,
  Pointer<Utf16> lpszAttributeName,
  Pointer<Uint8> lpBuffer,
  int dwBufferLength,
  Pointer<Uint32> lpdwCharactersReturned,
  Pointer<NativeFunction<GOPHER_ATTRIBUTE_ENUMERATOR>> lpfnEnumerator,
  int dwContext,
)>('GopherGetAttributeW');

int GopherGetLocatorType(
  Pointer<Utf16> lpszLocator,
  Pointer<Uint32> lpdwGopherType,
) =>
    _GopherGetLocatorType(
      lpszLocator,
      lpdwGopherType,
    );

late final _GopherGetLocatorType = _wininet.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpszLocator,
  Pointer<Uint32> lpdwGopherType,
),
    int Function(
  Pointer<Utf16> lpszLocator,
  Pointer<Uint32> lpdwGopherType,
)>('GopherGetLocatorTypeW');

Pointer GopherOpenFile(
  Pointer hConnect,
  Pointer<Utf16> lpszLocator,
  Pointer<Utf16> lpszView,
  int dwFlags,
  int dwContext,
) =>
    _GopherOpenFile(
      hConnect,
      lpszLocator,
      lpszView,
      dwFlags,
      dwContext,
    );

late final _GopherOpenFile = _wininet.lookupFunction<
    Pointer Function(
  Pointer hConnect,
  Pointer<Utf16> lpszLocator,
  Pointer<Utf16> lpszView,
  Uint32 dwFlags,
  IntPtr dwContext,
),
    Pointer Function(
  Pointer hConnect,
  Pointer<Utf16> lpszLocator,
  Pointer<Utf16> lpszView,
  int dwFlags,
  int dwContext,
)>('GopherOpenFileW');

int HttpAddRequestHeaders(
  Pointer hRequest,
  Pointer<Utf16> lpszHeaders,
  int dwHeadersLength,
  int dwModifiers,
) =>
    _HttpAddRequestHeaders(
      hRequest,
      lpszHeaders,
      dwHeadersLength,
      dwModifiers,
    );

late final _HttpAddRequestHeaders = _wininet.lookupFunction<
    Int32 Function(
  Pointer hRequest,
  Pointer<Utf16> lpszHeaders,
  Uint32 dwHeadersLength,
  Uint32 dwModifiers,
),
    int Function(
  Pointer hRequest,
  Pointer<Utf16> lpszHeaders,
  int dwHeadersLength,
  int dwModifiers,
)>('HttpAddRequestHeadersW');

int HttpCheckDavCompliance(
  Pointer<Utf16> lpszUrl,
  Pointer<Utf16> lpszComplianceToken,
  Pointer<Int32> lpfFound,
  int hWnd,
  Pointer lpvReserved,
) =>
    _HttpCheckDavCompliance(
      lpszUrl,
      lpszComplianceToken,
      lpfFound,
      hWnd,
      lpvReserved,
    );

late final _HttpCheckDavCompliance = _wininet.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpszUrl,
  Pointer<Utf16> lpszComplianceToken,
  Pointer<Int32> lpfFound,
  IntPtr hWnd,
  Pointer lpvReserved,
),
    int Function(
  Pointer<Utf16> lpszUrl,
  Pointer<Utf16> lpszComplianceToken,
  Pointer<Int32> lpfFound,
  int hWnd,
  Pointer lpvReserved,
)>('HttpCheckDavComplianceW');

void HttpCloseDependencyHandle(
  Pointer hDependencyHandle,
) =>
    _HttpCloseDependencyHandle(
      hDependencyHandle,
    );

late final _HttpCloseDependencyHandle = _wininet.lookupFunction<
    Void Function(
  Pointer hDependencyHandle,
),
    void Function(
  Pointer hDependencyHandle,
)>('HttpCloseDependencyHandle');

int HttpDuplicateDependencyHandle(
  Pointer hDependencyHandle,
  Pointer<Pointer> phDuplicatedDependencyHandle,
) =>
    _HttpDuplicateDependencyHandle(
      hDependencyHandle,
      phDuplicatedDependencyHandle,
    );

late final _HttpDuplicateDependencyHandle = _wininet.lookupFunction<
    Uint32 Function(
  Pointer hDependencyHandle,
  Pointer<Pointer> phDuplicatedDependencyHandle,
),
    int Function(
  Pointer hDependencyHandle,
  Pointer<Pointer> phDuplicatedDependencyHandle,
)>('HttpDuplicateDependencyHandle');

int HttpEndRequest(
  Pointer hRequest,
  Pointer<INTERNET_BUFFERS> lpBuffersOut,
  int dwFlags,
  int dwContext,
) =>
    _HttpEndRequest(
      hRequest,
      lpBuffersOut,
      dwFlags,
      dwContext,
    );

late final _HttpEndRequest = _wininet.lookupFunction<
    Int32 Function(
  Pointer hRequest,
  Pointer<INTERNET_BUFFERS> lpBuffersOut,
  Uint32 dwFlags,
  IntPtr dwContext,
),
    int Function(
  Pointer hRequest,
  Pointer<INTERNET_BUFFERS> lpBuffersOut,
  int dwFlags,
  int dwContext,
)>('HttpEndRequestW');

int HttpGetServerCredentials(
  Pointer<Utf16> pwszUrl,
  Pointer<Pointer<Utf16>> ppwszUserName,
  Pointer<Pointer<Utf16>> ppwszPassword,
) =>
    _HttpGetServerCredentials(
      pwszUrl,
      ppwszUserName,
      ppwszPassword,
    );

late final _HttpGetServerCredentials = _wininet.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> pwszUrl,
  Pointer<Pointer<Utf16>> ppwszUserName,
  Pointer<Pointer<Utf16>> ppwszPassword,
),
    int Function(
  Pointer<Utf16> pwszUrl,
  Pointer<Pointer<Utf16>> ppwszUserName,
  Pointer<Pointer<Utf16>> ppwszPassword,
)>('HttpGetServerCredentials');

int HttpIndicatePageLoadComplete(
  Pointer hDependencyHandle,
) =>
    _HttpIndicatePageLoadComplete(
      hDependencyHandle,
    );

late final _HttpIndicatePageLoadComplete = _wininet.lookupFunction<
    Uint32 Function(
  Pointer hDependencyHandle,
),
    int Function(
  Pointer hDependencyHandle,
)>('HttpIndicatePageLoadComplete');

int HttpIsHostHstsEnabled(
  Pointer<Utf16> pcwszUrl,
  Pointer<Int32> pfIsHsts,
) =>
    _HttpIsHostHstsEnabled(
      pcwszUrl,
      pfIsHsts,
    );

late final _HttpIsHostHstsEnabled = _wininet.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> pcwszUrl,
  Pointer<Int32> pfIsHsts,
),
    int Function(
  Pointer<Utf16> pcwszUrl,
  Pointer<Int32> pfIsHsts,
)>('HttpIsHostHstsEnabled');

int HttpOpenDependencyHandle(
  Pointer hRequestHandle,
  int fBackground,
  Pointer<Pointer> phDependencyHandle,
) =>
    _HttpOpenDependencyHandle(
      hRequestHandle,
      fBackground,
      phDependencyHandle,
    );

late final _HttpOpenDependencyHandle = _wininet.lookupFunction<
    Uint32 Function(
  Pointer hRequestHandle,
  Int32 fBackground,
  Pointer<Pointer> phDependencyHandle,
),
    int Function(
  Pointer hRequestHandle,
  int fBackground,
  Pointer<Pointer> phDependencyHandle,
)>('HttpOpenDependencyHandle');

Pointer HttpOpenRequest(
  Pointer hConnect,
  Pointer<Utf16> lpszVerb,
  Pointer<Utf16> lpszObjectName,
  Pointer<Utf16> lpszVersion,
  Pointer<Utf16> lpszReferrer,
  Pointer<Pointer<Utf16>> lplpszAcceptTypes,
  int dwFlags,
  int dwContext,
) =>
    _HttpOpenRequest(
      hConnect,
      lpszVerb,
      lpszObjectName,
      lpszVersion,
      lpszReferrer,
      lplpszAcceptTypes,
      dwFlags,
      dwContext,
    );

late final _HttpOpenRequest = _wininet.lookupFunction<
    Pointer Function(
  Pointer hConnect,
  Pointer<Utf16> lpszVerb,
  Pointer<Utf16> lpszObjectName,
  Pointer<Utf16> lpszVersion,
  Pointer<Utf16> lpszReferrer,
  Pointer<Pointer<Utf16>> lplpszAcceptTypes,
  Uint32 dwFlags,
  IntPtr dwContext,
),
    Pointer Function(
  Pointer hConnect,
  Pointer<Utf16> lpszVerb,
  Pointer<Utf16> lpszObjectName,
  Pointer<Utf16> lpszVersion,
  Pointer<Utf16> lpszReferrer,
  Pointer<Pointer<Utf16>> lplpszAcceptTypes,
  int dwFlags,
  int dwContext,
)>('HttpOpenRequestW');

void HttpPushClose(
  int hWait,
) =>
    _HttpPushClose(
      hWait,
    );

late final _HttpPushClose = _wininet.lookupFunction<
    Void Function(
  IntPtr hWait,
),
    void Function(
  int hWait,
)>('HttpPushClose');

int HttpPushEnable(
  Pointer hRequest,
  Pointer<HTTP_PUSH_TRANSPORT_SETTING> pTransportSetting,
  Pointer<IntPtr> phWait,
) =>
    _HttpPushEnable(
      hRequest,
      pTransportSetting,
      phWait,
    );

late final _HttpPushEnable = _wininet.lookupFunction<
    Uint32 Function(
  Pointer hRequest,
  Pointer<HTTP_PUSH_TRANSPORT_SETTING> pTransportSetting,
  Pointer<IntPtr> phWait,
),
    int Function(
  Pointer hRequest,
  Pointer<HTTP_PUSH_TRANSPORT_SETTING> pTransportSetting,
  Pointer<IntPtr> phWait,
)>('HttpPushEnable');

int HttpPushWait(
  int hWait,
  int eType,
  Pointer<HTTP_PUSH_NOTIFICATION_STATUS> pNotificationStatus,
) =>
    _HttpPushWait(
      hWait,
      eType,
      pNotificationStatus,
    );

late final _HttpPushWait = _wininet.lookupFunction<
    Uint32 Function(
  IntPtr hWait,
  Int32 eType,
  Pointer<HTTP_PUSH_NOTIFICATION_STATUS> pNotificationStatus,
),
    int Function(
  int hWait,
  int eType,
  Pointer<HTTP_PUSH_NOTIFICATION_STATUS> pNotificationStatus,
)>('HttpPushWait');

int HttpQueryInfo(
  Pointer hRequest,
  int dwInfoLevel,
  Pointer lpBuffer,
  Pointer<Uint32> lpdwBufferLength,
  Pointer<Uint32> lpdwIndex,
) =>
    _HttpQueryInfo(
      hRequest,
      dwInfoLevel,
      lpBuffer,
      lpdwBufferLength,
      lpdwIndex,
    );

late final _HttpQueryInfo = _wininet.lookupFunction<
    Int32 Function(
  Pointer hRequest,
  Uint32 dwInfoLevel,
  Pointer lpBuffer,
  Pointer<Uint32> lpdwBufferLength,
  Pointer<Uint32> lpdwIndex,
),
    int Function(
  Pointer hRequest,
  int dwInfoLevel,
  Pointer lpBuffer,
  Pointer<Uint32> lpdwBufferLength,
  Pointer<Uint32> lpdwIndex,
)>('HttpQueryInfoW');

int HttpSendRequestEx(
  Pointer hRequest,
  Pointer<INTERNET_BUFFERS> lpBuffersIn,
  Pointer<INTERNET_BUFFERS> lpBuffersOut,
  int dwFlags,
  int dwContext,
) =>
    _HttpSendRequestEx(
      hRequest,
      lpBuffersIn,
      lpBuffersOut,
      dwFlags,
      dwContext,
    );

late final _HttpSendRequestEx = _wininet.lookupFunction<
    Int32 Function(
  Pointer hRequest,
  Pointer<INTERNET_BUFFERS> lpBuffersIn,
  Pointer<INTERNET_BUFFERS> lpBuffersOut,
  Uint32 dwFlags,
  IntPtr dwContext,
),
    int Function(
  Pointer hRequest,
  Pointer<INTERNET_BUFFERS> lpBuffersIn,
  Pointer<INTERNET_BUFFERS> lpBuffersOut,
  int dwFlags,
  int dwContext,
)>('HttpSendRequestExW');

int HttpSendRequest(
  Pointer hRequest,
  Pointer<Utf16> lpszHeaders,
  int dwHeadersLength,
  Pointer lpOptional,
  int dwOptionalLength,
) =>
    _HttpSendRequest(
      hRequest,
      lpszHeaders,
      dwHeadersLength,
      lpOptional,
      dwOptionalLength,
    );

late final _HttpSendRequest = _wininet.lookupFunction<
    Int32 Function(
  Pointer hRequest,
  Pointer<Utf16> lpszHeaders,
  Uint32 dwHeadersLength,
  Pointer lpOptional,
  Uint32 dwOptionalLength,
),
    int Function(
  Pointer hRequest,
  Pointer<Utf16> lpszHeaders,
  int dwHeadersLength,
  Pointer lpOptional,
  int dwOptionalLength,
)>('HttpSendRequestW');

int HttpWebSocketClose(
  Pointer hWebSocket,
  int usStatus,
  Pointer pvReason,
  int dwReasonLength,
) =>
    _HttpWebSocketClose(
      hWebSocket,
      usStatus,
      pvReason,
      dwReasonLength,
    );

late final _HttpWebSocketClose = _wininet.lookupFunction<
    Int32 Function(
  Pointer hWebSocket,
  Uint16 usStatus,
  Pointer pvReason,
  Uint32 dwReasonLength,
),
    int Function(
  Pointer hWebSocket,
  int usStatus,
  Pointer pvReason,
  int dwReasonLength,
)>('HttpWebSocketClose');

Pointer HttpWebSocketCompleteUpgrade(
  Pointer hRequest,
  int dwContext,
) =>
    _HttpWebSocketCompleteUpgrade(
      hRequest,
      dwContext,
    );

late final _HttpWebSocketCompleteUpgrade = _wininet.lookupFunction<
    Pointer Function(
  Pointer hRequest,
  IntPtr dwContext,
),
    Pointer Function(
  Pointer hRequest,
  int dwContext,
)>('HttpWebSocketCompleteUpgrade');

int HttpWebSocketQueryCloseStatus(
  Pointer hWebSocket,
  Pointer<Uint16> pusStatus,
  Pointer pvReason,
  int dwReasonLength,
  Pointer<Uint32> pdwReasonLengthConsumed,
) =>
    _HttpWebSocketQueryCloseStatus(
      hWebSocket,
      pusStatus,
      pvReason,
      dwReasonLength,
      pdwReasonLengthConsumed,
    );

late final _HttpWebSocketQueryCloseStatus = _wininet.lookupFunction<
    Int32 Function(
  Pointer hWebSocket,
  Pointer<Uint16> pusStatus,
  Pointer pvReason,
  Uint32 dwReasonLength,
  Pointer<Uint32> pdwReasonLengthConsumed,
),
    int Function(
  Pointer hWebSocket,
  Pointer<Uint16> pusStatus,
  Pointer pvReason,
  int dwReasonLength,
  Pointer<Uint32> pdwReasonLengthConsumed,
)>('HttpWebSocketQueryCloseStatus');

int HttpWebSocketReceive(
  Pointer hWebSocket,
  Pointer pvBuffer,
  int dwBufferLength,
  Pointer<Uint32> pdwBytesRead,
  Pointer<Int32> pBufferType,
) =>
    _HttpWebSocketReceive(
      hWebSocket,
      pvBuffer,
      dwBufferLength,
      pdwBytesRead,
      pBufferType,
    );

late final _HttpWebSocketReceive = _wininet.lookupFunction<
    Int32 Function(
  Pointer hWebSocket,
  Pointer pvBuffer,
  Uint32 dwBufferLength,
  Pointer<Uint32> pdwBytesRead,
  Pointer<Int32> pBufferType,
),
    int Function(
  Pointer hWebSocket,
  Pointer pvBuffer,
  int dwBufferLength,
  Pointer<Uint32> pdwBytesRead,
  Pointer<Int32> pBufferType,
)>('HttpWebSocketReceive');

int HttpWebSocketSend(
  Pointer hWebSocket,
  int BufferType,
  Pointer pvBuffer,
  int dwBufferLength,
) =>
    _HttpWebSocketSend(
      hWebSocket,
      BufferType,
      pvBuffer,
      dwBufferLength,
    );

late final _HttpWebSocketSend = _wininet.lookupFunction<
    Int32 Function(
  Pointer hWebSocket,
  Int32 BufferType,
  Pointer pvBuffer,
  Uint32 dwBufferLength,
),
    int Function(
  Pointer hWebSocket,
  int BufferType,
  Pointer pvBuffer,
  int dwBufferLength,
)>('HttpWebSocketSend');

int HttpWebSocketShutdown(
  Pointer hWebSocket,
  int usStatus,
  Pointer pvReason,
  int dwReasonLength,
) =>
    _HttpWebSocketShutdown(
      hWebSocket,
      usStatus,
      pvReason,
      dwReasonLength,
    );

late final _HttpWebSocketShutdown = _wininet.lookupFunction<
    Int32 Function(
  Pointer hWebSocket,
  Uint16 usStatus,
  Pointer pvReason,
  Uint32 dwReasonLength,
),
    int Function(
  Pointer hWebSocket,
  int usStatus,
  Pointer pvReason,
  int dwReasonLength,
)>('HttpWebSocketShutdown');

int ImportCookieFile(
  Pointer<Utf16> szFilename,
) =>
    _ImportCookieFile(
      szFilename,
    );

late final _ImportCookieFile = _wininet.lookupFunction<
    Int32 Function(
  Pointer<Utf16> szFilename,
),
    int Function(
  Pointer<Utf16> szFilename,
)>('ImportCookieFileW');

int IncrementUrlCacheHeaderData(
  int nIdx,
  Pointer<Uint32> lpdwData,
) =>
    _IncrementUrlCacheHeaderData(
      nIdx,
      lpdwData,
    );

late final _IncrementUrlCacheHeaderData = _wininet.lookupFunction<
    Int32 Function(
  Uint32 nIdx,
  Pointer<Uint32> lpdwData,
),
    int Function(
  int nIdx,
  Pointer<Uint32> lpdwData,
)>('IncrementUrlCacheHeaderData');

int InternalInternetGetCookie(
  Pointer<Utf8> lpszUrl,
  Pointer<Utf8> lpszCookieData,
  Pointer<Uint32> lpdwDataSize,
) =>
    _InternalInternetGetCookie(
      lpszUrl,
      lpszCookieData,
      lpdwDataSize,
    );

late final _InternalInternetGetCookie = _wininet.lookupFunction<
    Uint32 Function(
  Pointer<Utf8> lpszUrl,
  Pointer<Utf8> lpszCookieData,
  Pointer<Uint32> lpdwDataSize,
),
    int Function(
  Pointer<Utf8> lpszUrl,
  Pointer<Utf8> lpszCookieData,
  Pointer<Uint32> lpdwDataSize,
)>('InternalInternetGetCookie');

int InternetAlgIdToString(
  int ai,
  Pointer<Utf16> lpstr,
  Pointer<Uint32> lpdwstrLength,
  int dwReserved,
) =>
    _InternetAlgIdToString(
      ai,
      lpstr,
      lpdwstrLength,
      dwReserved,
    );

late final _InternetAlgIdToString = _wininet.lookupFunction<
    Int32 Function(
  Uint32 ai,
  Pointer<Utf16> lpstr,
  Pointer<Uint32> lpdwstrLength,
  Uint32 dwReserved,
),
    int Function(
  int ai,
  Pointer<Utf16> lpstr,
  Pointer<Uint32> lpdwstrLength,
  int dwReserved,
)>('InternetAlgIdToStringW');

int InternetAttemptConnect(
  int dwReserved,
) =>
    _InternetAttemptConnect(
      dwReserved,
    );

late final _InternetAttemptConnect = _wininet.lookupFunction<
    Uint32 Function(
  Uint32 dwReserved,
),
    int Function(
  int dwReserved,
)>('InternetAttemptConnect');

int InternetAutodial(
  int dwFlags,
  int hwndParent,
) =>
    _InternetAutodial(
      dwFlags,
      hwndParent,
    );

late final _InternetAutodial = _wininet.lookupFunction<
    Int32 Function(
  Uint32 dwFlags,
  IntPtr hwndParent,
),
    int Function(
  int dwFlags,
  int hwndParent,
)>('InternetAutodial');

int InternetAutodialHangup(
  int dwReserved,
) =>
    _InternetAutodialHangup(
      dwReserved,
    );

late final _InternetAutodialHangup = _wininet.lookupFunction<
    Int32 Function(
  Uint32 dwReserved,
),
    int Function(
  int dwReserved,
)>('InternetAutodialHangup');

int InternetCanonicalizeUrl(
  Pointer<Utf16> lpszUrl,
  Pointer<Utf16> lpszBuffer,
  Pointer<Uint32> lpdwBufferLength,
  int dwFlags,
) =>
    _InternetCanonicalizeUrl(
      lpszUrl,
      lpszBuffer,
      lpdwBufferLength,
      dwFlags,
    );

late final _InternetCanonicalizeUrl = _wininet.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpszUrl,
  Pointer<Utf16> lpszBuffer,
  Pointer<Uint32> lpdwBufferLength,
  Uint32 dwFlags,
),
    int Function(
  Pointer<Utf16> lpszUrl,
  Pointer<Utf16> lpszBuffer,
  Pointer<Uint32> lpdwBufferLength,
  int dwFlags,
)>('InternetCanonicalizeUrlW');

int InternetCheckConnection(
  Pointer<Utf16> lpszUrl,
  int dwFlags,
  int dwReserved,
) =>
    _InternetCheckConnection(
      lpszUrl,
      dwFlags,
      dwReserved,
    );

late final _InternetCheckConnection = _wininet.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpszUrl,
  Uint32 dwFlags,
  Uint32 dwReserved,
),
    int Function(
  Pointer<Utf16> lpszUrl,
  int dwFlags,
  int dwReserved,
)>('InternetCheckConnectionW');

int InternetClearAllPerSiteCookieDecisions() =>
    _InternetClearAllPerSiteCookieDecisions();

late final _InternetClearAllPerSiteCookieDecisions =
    _wininet.lookupFunction<Int32 Function(), int Function()>(
        'InternetClearAllPerSiteCookieDecisions');

int InternetCloseHandle(
  Pointer hInternet,
) =>
    _InternetCloseHandle(
      hInternet,
    );

late final _InternetCloseHandle = _wininet.lookupFunction<
    Int32 Function(
  Pointer hInternet,
),
    int Function(
  Pointer hInternet,
)>('InternetCloseHandle');

int InternetCombineUrl(
  Pointer<Utf16> lpszBaseUrl,
  Pointer<Utf16> lpszRelativeUrl,
  Pointer<Utf16> lpszBuffer,
  Pointer<Uint32> lpdwBufferLength,
  int dwFlags,
) =>
    _InternetCombineUrl(
      lpszBaseUrl,
      lpszRelativeUrl,
      lpszBuffer,
      lpdwBufferLength,
      dwFlags,
    );

late final _InternetCombineUrl = _wininet.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpszBaseUrl,
  Pointer<Utf16> lpszRelativeUrl,
  Pointer<Utf16> lpszBuffer,
  Pointer<Uint32> lpdwBufferLength,
  Uint32 dwFlags,
),
    int Function(
  Pointer<Utf16> lpszBaseUrl,
  Pointer<Utf16> lpszRelativeUrl,
  Pointer<Utf16> lpszBuffer,
  Pointer<Uint32> lpdwBufferLength,
  int dwFlags,
)>('InternetCombineUrlW');

int InternetConfirmZoneCrossing(
  int hWnd,
  Pointer<Utf16> szUrlPrev,
  Pointer<Utf16> szUrlNew,
  int bPost,
) =>
    _InternetConfirmZoneCrossing(
      hWnd,
      szUrlPrev,
      szUrlNew,
      bPost,
    );

late final _InternetConfirmZoneCrossing = _wininet.lookupFunction<
    Uint32 Function(
  IntPtr hWnd,
  Pointer<Utf16> szUrlPrev,
  Pointer<Utf16> szUrlNew,
  Int32 bPost,
),
    int Function(
  int hWnd,
  Pointer<Utf16> szUrlPrev,
  Pointer<Utf16> szUrlNew,
  int bPost,
)>('InternetConfirmZoneCrossingW');

Pointer InternetConnect(
  Pointer hInternet,
  Pointer<Utf16> lpszServerName,
  int nServerPort,
  Pointer<Utf16> lpszUserName,
  Pointer<Utf16> lpszPassword,
  int dwService,
  int dwFlags,
  int dwContext,
) =>
    _InternetConnect(
      hInternet,
      lpszServerName,
      nServerPort,
      lpszUserName,
      lpszPassword,
      dwService,
      dwFlags,
      dwContext,
    );

late final _InternetConnect = _wininet.lookupFunction<
    Pointer Function(
  Pointer hInternet,
  Pointer<Utf16> lpszServerName,
  Uint16 nServerPort,
  Pointer<Utf16> lpszUserName,
  Pointer<Utf16> lpszPassword,
  Uint32 dwService,
  Uint32 dwFlags,
  IntPtr dwContext,
),
    Pointer Function(
  Pointer hInternet,
  Pointer<Utf16> lpszServerName,
  int nServerPort,
  Pointer<Utf16> lpszUserName,
  Pointer<Utf16> lpszPassword,
  int dwService,
  int dwFlags,
  int dwContext,
)>('InternetConnectW');

int InternetConvertUrlFromWireToWideChar(
  Pointer<Utf8> pcszUrl,
  int cchUrl,
  Pointer<Utf16> pcwszBaseUrl,
  int dwCodePageHost,
  int dwCodePagePath,
  int fEncodePathExtra,
  int dwCodePageExtra,
  Pointer<Pointer<Utf16>> ppwszConvertedUrl,
) =>
    _InternetConvertUrlFromWireToWideChar(
      pcszUrl,
      cchUrl,
      pcwszBaseUrl,
      dwCodePageHost,
      dwCodePagePath,
      fEncodePathExtra,
      dwCodePageExtra,
      ppwszConvertedUrl,
    );

late final _InternetConvertUrlFromWireToWideChar = _wininet.lookupFunction<
    Uint32 Function(
  Pointer<Utf8> pcszUrl,
  Uint32 cchUrl,
  Pointer<Utf16> pcwszBaseUrl,
  Uint32 dwCodePageHost,
  Uint32 dwCodePagePath,
  Int32 fEncodePathExtra,
  Uint32 dwCodePageExtra,
  Pointer<Pointer<Utf16>> ppwszConvertedUrl,
),
    int Function(
  Pointer<Utf8> pcszUrl,
  int cchUrl,
  Pointer<Utf16> pcwszBaseUrl,
  int dwCodePageHost,
  int dwCodePagePath,
  int fEncodePathExtra,
  int dwCodePageExtra,
  Pointer<Pointer<Utf16>> ppwszConvertedUrl,
)>('InternetConvertUrlFromWireToWideChar');

int InternetCrackUrl(
  Pointer<Utf16> lpszUrl,
  int dwUrlLength,
  int dwFlags,
  Pointer<URL_COMPONENTS> lpUrlComponents,
) =>
    _InternetCrackUrl(
      lpszUrl,
      dwUrlLength,
      dwFlags,
      lpUrlComponents,
    );

late final _InternetCrackUrl = _wininet.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpszUrl,
  Uint32 dwUrlLength,
  Uint32 dwFlags,
  Pointer<URL_COMPONENTS> lpUrlComponents,
),
    int Function(
  Pointer<Utf16> lpszUrl,
  int dwUrlLength,
  int dwFlags,
  Pointer<URL_COMPONENTS> lpUrlComponents,
)>('InternetCrackUrlW');

int InternetCreateUrl(
  Pointer<URL_COMPONENTS> lpUrlComponents,
  int dwFlags,
  Pointer<Utf16> lpszUrl,
  Pointer<Uint32> lpdwUrlLength,
) =>
    _InternetCreateUrl(
      lpUrlComponents,
      dwFlags,
      lpszUrl,
      lpdwUrlLength,
    );

late final _InternetCreateUrl = _wininet.lookupFunction<
    Int32 Function(
  Pointer<URL_COMPONENTS> lpUrlComponents,
  Uint32 dwFlags,
  Pointer<Utf16> lpszUrl,
  Pointer<Uint32> lpdwUrlLength,
),
    int Function(
  Pointer<URL_COMPONENTS> lpUrlComponents,
  int dwFlags,
  Pointer<Utf16> lpszUrl,
  Pointer<Uint32> lpdwUrlLength,
)>('InternetCreateUrlW');

int InternetDial(
  int hwndParent,
  Pointer<Utf16> lpszConnectoid,
  int dwFlags,
  Pointer<IntPtr> lpdwConnection,
  int dwReserved,
) =>
    _InternetDial(
      hwndParent,
      lpszConnectoid,
      dwFlags,
      lpdwConnection,
      dwReserved,
    );

late final _InternetDial = _wininet.lookupFunction<
    Uint32 Function(
  IntPtr hwndParent,
  Pointer<Utf16> lpszConnectoid,
  Uint32 dwFlags,
  Pointer<IntPtr> lpdwConnection,
  Uint32 dwReserved,
),
    int Function(
  int hwndParent,
  Pointer<Utf16> lpszConnectoid,
  int dwFlags,
  Pointer<IntPtr> lpdwConnection,
  int dwReserved,
)>('InternetDialW');

int InternetEnumPerSiteCookieDecision(
  Pointer<Utf16> pszSiteName,
  Pointer<Uint32> pcSiteNameSize,
  Pointer<Uint32> pdwDecision,
  int dwIndex,
) =>
    _InternetEnumPerSiteCookieDecision(
      pszSiteName,
      pcSiteNameSize,
      pdwDecision,
      dwIndex,
    );

late final _InternetEnumPerSiteCookieDecision = _wininet.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszSiteName,
  Pointer<Uint32> pcSiteNameSize,
  Pointer<Uint32> pdwDecision,
  Uint32 dwIndex,
),
    int Function(
  Pointer<Utf16> pszSiteName,
  Pointer<Uint32> pcSiteNameSize,
  Pointer<Uint32> pdwDecision,
  int dwIndex,
)>('InternetEnumPerSiteCookieDecisionW');

int InternetErrorDlg(
  int hWnd,
  Pointer hRequest,
  int dwError,
  int dwFlags,
  Pointer<Pointer> lppvData,
) =>
    _InternetErrorDlg(
      hWnd,
      hRequest,
      dwError,
      dwFlags,
      lppvData,
    );

late final _InternetErrorDlg = _wininet.lookupFunction<
    Uint32 Function(
  IntPtr hWnd,
  Pointer hRequest,
  Uint32 dwError,
  Uint32 dwFlags,
  Pointer<Pointer> lppvData,
),
    int Function(
  int hWnd,
  Pointer hRequest,
  int dwError,
  int dwFlags,
  Pointer<Pointer> lppvData,
)>('InternetErrorDlg');

int InternetFindNextFile(
  Pointer hFind,
  Pointer lpvFindData,
) =>
    _InternetFindNextFile(
      hFind,
      lpvFindData,
    );

late final _InternetFindNextFile = _wininet.lookupFunction<
    Int32 Function(
  Pointer hFind,
  Pointer lpvFindData,
),
    int Function(
  Pointer hFind,
  Pointer lpvFindData,
)>('InternetFindNextFileW');

int InternetFortezzaCommand(
  int dwCommand,
  int hwnd,
  int dwReserved,
) =>
    _InternetFortezzaCommand(
      dwCommand,
      hwnd,
      dwReserved,
    );

late final _InternetFortezzaCommand = _wininet.lookupFunction<
    Int32 Function(
  Uint32 dwCommand,
  IntPtr hwnd,
  IntPtr dwReserved,
),
    int Function(
  int dwCommand,
  int hwnd,
  int dwReserved,
)>('InternetFortezzaCommand');

void InternetFreeCookies(
  Pointer<INTERNET_COOKIE2> pCookies,
  int dwCookieCount,
) =>
    _InternetFreeCookies(
      pCookies,
      dwCookieCount,
    );

late final _InternetFreeCookies = _wininet.lookupFunction<
    Void Function(
  Pointer<INTERNET_COOKIE2> pCookies,
  Uint32 dwCookieCount,
),
    void Function(
  Pointer<INTERNET_COOKIE2> pCookies,
  int dwCookieCount,
)>('InternetFreeCookies');

void InternetFreeProxyInfoList(
  Pointer<WININET_PROXY_INFO_LIST> pProxyInfoList,
) =>
    _InternetFreeProxyInfoList(
      pProxyInfoList,
    );

late final _InternetFreeProxyInfoList = _wininet.lookupFunction<
    Void Function(
  Pointer<WININET_PROXY_INFO_LIST> pProxyInfoList,
),
    void Function(
  Pointer<WININET_PROXY_INFO_LIST> pProxyInfoList,
)>('InternetFreeProxyInfoList');

int InternetGetConnectedState(
  Pointer<Uint32> lpdwFlags,
  int dwReserved,
) =>
    _InternetGetConnectedState(
      lpdwFlags,
      dwReserved,
    );

late final _InternetGetConnectedState = _wininet.lookupFunction<
    Int32 Function(
  Pointer<Uint32> lpdwFlags,
  Uint32 dwReserved,
),
    int Function(
  Pointer<Uint32> lpdwFlags,
  int dwReserved,
)>('InternetGetConnectedState');

int InternetGetConnectedStateEx(
  Pointer<Uint32> lpdwFlags,
  Pointer<Utf16> lpszConnectionName,
  int cchNameLen,
  int dwReserved,
) =>
    _InternetGetConnectedStateEx(
      lpdwFlags,
      lpszConnectionName,
      cchNameLen,
      dwReserved,
    );

late final _InternetGetConnectedStateEx = _wininet.lookupFunction<
    Int32 Function(
  Pointer<Uint32> lpdwFlags,
  Pointer<Utf16> lpszConnectionName,
  Uint32 cchNameLen,
  Uint32 dwReserved,
),
    int Function(
  Pointer<Uint32> lpdwFlags,
  Pointer<Utf16> lpszConnectionName,
  int cchNameLen,
  int dwReserved,
)>('InternetGetConnectedStateExW');

int InternetGetCookieEx2(
  Pointer<Utf16> pcwszUrl,
  Pointer<Utf16> pcwszCookieName,
  int dwFlags,
  Pointer<Pointer<INTERNET_COOKIE2>> ppCookies,
  Pointer<Uint32> pdwCookieCount,
) =>
    _InternetGetCookieEx2(
      pcwszUrl,
      pcwszCookieName,
      dwFlags,
      ppCookies,
      pdwCookieCount,
    );

late final _InternetGetCookieEx2 = _wininet.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> pcwszUrl,
  Pointer<Utf16> pcwszCookieName,
  Uint32 dwFlags,
  Pointer<Pointer<INTERNET_COOKIE2>> ppCookies,
  Pointer<Uint32> pdwCookieCount,
),
    int Function(
  Pointer<Utf16> pcwszUrl,
  Pointer<Utf16> pcwszCookieName,
  int dwFlags,
  Pointer<Pointer<INTERNET_COOKIE2>> ppCookies,
  Pointer<Uint32> pdwCookieCount,
)>('InternetGetCookieEx2');

int InternetGetCookieEx(
  Pointer<Utf16> lpszUrl,
  Pointer<Utf16> lpszCookieName,
  Pointer<Utf16> lpszCookieData,
  Pointer<Uint32> lpdwSize,
  int dwFlags,
  Pointer lpReserved,
) =>
    _InternetGetCookieEx(
      lpszUrl,
      lpszCookieName,
      lpszCookieData,
      lpdwSize,
      dwFlags,
      lpReserved,
    );

late final _InternetGetCookieEx = _wininet.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpszUrl,
  Pointer<Utf16> lpszCookieName,
  Pointer<Utf16> lpszCookieData,
  Pointer<Uint32> lpdwSize,
  Uint32 dwFlags,
  Pointer lpReserved,
),
    int Function(
  Pointer<Utf16> lpszUrl,
  Pointer<Utf16> lpszCookieName,
  Pointer<Utf16> lpszCookieData,
  Pointer<Uint32> lpdwSize,
  int dwFlags,
  Pointer lpReserved,
)>('InternetGetCookieExW');

int InternetGetCookie(
  Pointer<Utf16> lpszUrl,
  Pointer<Utf16> lpszCookieName,
  Pointer<Utf16> lpszCookieData,
  Pointer<Uint32> lpdwSize,
) =>
    _InternetGetCookie(
      lpszUrl,
      lpszCookieName,
      lpszCookieData,
      lpdwSize,
    );

late final _InternetGetCookie = _wininet.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpszUrl,
  Pointer<Utf16> lpszCookieName,
  Pointer<Utf16> lpszCookieData,
  Pointer<Uint32> lpdwSize,
),
    int Function(
  Pointer<Utf16> lpszUrl,
  Pointer<Utf16> lpszCookieName,
  Pointer<Utf16> lpszCookieData,
  Pointer<Uint32> lpdwSize,
)>('InternetGetCookieW');

int InternetGetLastResponseInfo(
  Pointer<Uint32> lpdwError,
  Pointer<Utf16> lpszBuffer,
  Pointer<Uint32> lpdwBufferLength,
) =>
    _InternetGetLastResponseInfo(
      lpdwError,
      lpszBuffer,
      lpdwBufferLength,
    );

late final _InternetGetLastResponseInfo = _wininet.lookupFunction<
    Int32 Function(
  Pointer<Uint32> lpdwError,
  Pointer<Utf16> lpszBuffer,
  Pointer<Uint32> lpdwBufferLength,
),
    int Function(
  Pointer<Uint32> lpdwError,
  Pointer<Utf16> lpszBuffer,
  Pointer<Uint32> lpdwBufferLength,
)>('InternetGetLastResponseInfoW');

int InternetGetPerSiteCookieDecision(
  Pointer<Utf16> pchHostName,
  Pointer<Uint32> pResult,
) =>
    _InternetGetPerSiteCookieDecision(
      pchHostName,
      pResult,
    );

late final _InternetGetPerSiteCookieDecision = _wininet.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pchHostName,
  Pointer<Uint32> pResult,
),
    int Function(
  Pointer<Utf16> pchHostName,
  Pointer<Uint32> pResult,
)>('InternetGetPerSiteCookieDecisionW');

int InternetGetProxyForUrl(
  Pointer hInternet,
  Pointer<Utf16> pcwszUrl,
  Pointer<WININET_PROXY_INFO_LIST> pProxyInfoList,
) =>
    _InternetGetProxyForUrl(
      hInternet,
      pcwszUrl,
      pProxyInfoList,
    );

late final _InternetGetProxyForUrl = _wininet.lookupFunction<
    Uint32 Function(
  Pointer hInternet,
  Pointer<Utf16> pcwszUrl,
  Pointer<WININET_PROXY_INFO_LIST> pProxyInfoList,
),
    int Function(
  Pointer hInternet,
  Pointer<Utf16> pcwszUrl,
  Pointer<WININET_PROXY_INFO_LIST> pProxyInfoList,
)>('InternetGetProxyForUrl');

int InternetGetSecurityInfoByURL(
  Pointer<Utf16> lpszURL,
  Pointer<Pointer<CERT_CHAIN_CONTEXT>> ppCertChain,
  Pointer<Uint32> pdwSecureFlags,
) =>
    _InternetGetSecurityInfoByURL(
      lpszURL,
      ppCertChain,
      pdwSecureFlags,
    );

late final _InternetGetSecurityInfoByURL = _wininet.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpszURL,
  Pointer<Pointer<CERT_CHAIN_CONTEXT>> ppCertChain,
  Pointer<Uint32> pdwSecureFlags,
),
    int Function(
  Pointer<Utf16> lpszURL,
  Pointer<Pointer<CERT_CHAIN_CONTEXT>> ppCertChain,
  Pointer<Uint32> pdwSecureFlags,
)>('InternetGetSecurityInfoByURLW');

int InternetGoOnline(
  Pointer<Utf16> lpszURL,
  int hwndParent,
  int dwFlags,
) =>
    _InternetGoOnline(
      lpszURL,
      hwndParent,
      dwFlags,
    );

late final _InternetGoOnline = _wininet.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpszURL,
  IntPtr hwndParent,
  Uint32 dwFlags,
),
    int Function(
  Pointer<Utf16> lpszURL,
  int hwndParent,
  int dwFlags,
)>('InternetGoOnlineW');

int InternetHangUp(
  int dwConnection,
  int dwReserved,
) =>
    _InternetHangUp(
      dwConnection,
      dwReserved,
    );

late final _InternetHangUp = _wininet.lookupFunction<
    Uint32 Function(
  IntPtr dwConnection,
  Uint32 dwReserved,
),
    int Function(
  int dwConnection,
  int dwReserved,
)>('InternetHangUp');

int InternetInitializeAutoProxyDll(
  int dwReserved,
) =>
    _InternetInitializeAutoProxyDll(
      dwReserved,
    );

late final _InternetInitializeAutoProxyDll = _wininet.lookupFunction<
    Int32 Function(
  Uint32 dwReserved,
),
    int Function(
  int dwReserved,
)>('InternetInitializeAutoProxyDll');

int InternetLockRequestFile(
  Pointer hInternet,
  Pointer<IntPtr> lphLockRequestInfo,
) =>
    _InternetLockRequestFile(
      hInternet,
      lphLockRequestInfo,
    );

late final _InternetLockRequestFile = _wininet.lookupFunction<
    Int32 Function(
  Pointer hInternet,
  Pointer<IntPtr> lphLockRequestInfo,
),
    int Function(
  Pointer hInternet,
  Pointer<IntPtr> lphLockRequestInfo,
)>('InternetLockRequestFile');

Pointer InternetOpenUrl(
  Pointer hInternet,
  Pointer<Utf16> lpszUrl,
  Pointer<Utf16> lpszHeaders,
  int dwHeadersLength,
  int dwFlags,
  int dwContext,
) =>
    _InternetOpenUrl(
      hInternet,
      lpszUrl,
      lpszHeaders,
      dwHeadersLength,
      dwFlags,
      dwContext,
    );

late final _InternetOpenUrl = _wininet.lookupFunction<
    Pointer Function(
  Pointer hInternet,
  Pointer<Utf16> lpszUrl,
  Pointer<Utf16> lpszHeaders,
  Uint32 dwHeadersLength,
  Uint32 dwFlags,
  IntPtr dwContext,
),
    Pointer Function(
  Pointer hInternet,
  Pointer<Utf16> lpszUrl,
  Pointer<Utf16> lpszHeaders,
  int dwHeadersLength,
  int dwFlags,
  int dwContext,
)>('InternetOpenUrlW');

Pointer InternetOpen(
  Pointer<Utf16> lpszAgent,
  int dwAccessType,
  Pointer<Utf16> lpszProxy,
  Pointer<Utf16> lpszProxyBypass,
  int dwFlags,
) =>
    _InternetOpen(
      lpszAgent,
      dwAccessType,
      lpszProxy,
      lpszProxyBypass,
      dwFlags,
    );

late final _InternetOpen = _wininet.lookupFunction<
    Pointer Function(
  Pointer<Utf16> lpszAgent,
  Uint32 dwAccessType,
  Pointer<Utf16> lpszProxy,
  Pointer<Utf16> lpszProxyBypass,
  Uint32 dwFlags,
),
    Pointer Function(
  Pointer<Utf16> lpszAgent,
  int dwAccessType,
  Pointer<Utf16> lpszProxy,
  Pointer<Utf16> lpszProxyBypass,
  int dwFlags,
)>('InternetOpenW');

int InternetQueryDataAvailable(
  Pointer hFile,
  Pointer<Uint32> lpdwNumberOfBytesAvailable,
  int dwFlags,
  int dwContext,
) =>
    _InternetQueryDataAvailable(
      hFile,
      lpdwNumberOfBytesAvailable,
      dwFlags,
      dwContext,
    );

late final _InternetQueryDataAvailable = _wininet.lookupFunction<
    Int32 Function(
  Pointer hFile,
  Pointer<Uint32> lpdwNumberOfBytesAvailable,
  Uint32 dwFlags,
  IntPtr dwContext,
),
    int Function(
  Pointer hFile,
  Pointer<Uint32> lpdwNumberOfBytesAvailable,
  int dwFlags,
  int dwContext,
)>('InternetQueryDataAvailable');

int InternetQueryFortezzaStatus(
  Pointer<Uint32> pdwStatus,
  int dwReserved,
) =>
    _InternetQueryFortezzaStatus(
      pdwStatus,
      dwReserved,
    );

late final _InternetQueryFortezzaStatus = _wininet.lookupFunction<
    Int32 Function(
  Pointer<Uint32> pdwStatus,
  IntPtr dwReserved,
),
    int Function(
  Pointer<Uint32> pdwStatus,
  int dwReserved,
)>('InternetQueryFortezzaStatus');

int InternetQueryOption(
  Pointer hInternet,
  int dwOption,
  Pointer lpBuffer,
  Pointer<Uint32> lpdwBufferLength,
) =>
    _InternetQueryOption(
      hInternet,
      dwOption,
      lpBuffer,
      lpdwBufferLength,
    );

late final _InternetQueryOption = _wininet.lookupFunction<
    Int32 Function(
  Pointer hInternet,
  Uint32 dwOption,
  Pointer lpBuffer,
  Pointer<Uint32> lpdwBufferLength,
),
    int Function(
  Pointer hInternet,
  int dwOption,
  Pointer lpBuffer,
  Pointer<Uint32> lpdwBufferLength,
)>('InternetQueryOptionW');

int InternetReadFile(
  Pointer hFile,
  Pointer lpBuffer,
  int dwNumberOfBytesToRead,
  Pointer<Uint32> lpdwNumberOfBytesRead,
) =>
    _InternetReadFile(
      hFile,
      lpBuffer,
      dwNumberOfBytesToRead,
      lpdwNumberOfBytesRead,
    );

late final _InternetReadFile = _wininet.lookupFunction<
    Int32 Function(
  Pointer hFile,
  Pointer lpBuffer,
  Uint32 dwNumberOfBytesToRead,
  Pointer<Uint32> lpdwNumberOfBytesRead,
),
    int Function(
  Pointer hFile,
  Pointer lpBuffer,
  int dwNumberOfBytesToRead,
  Pointer<Uint32> lpdwNumberOfBytesRead,
)>('InternetReadFile');

int InternetReadFileEx(
  Pointer hFile,
  Pointer<INTERNET_BUFFERS> lpBuffersOut,
  int dwFlags,
  int dwContext,
) =>
    _InternetReadFileEx(
      hFile,
      lpBuffersOut,
      dwFlags,
      dwContext,
    );

late final _InternetReadFileEx = _wininet.lookupFunction<
    Int32 Function(
  Pointer hFile,
  Pointer<INTERNET_BUFFERS> lpBuffersOut,
  Uint32 dwFlags,
  IntPtr dwContext,
),
    int Function(
  Pointer hFile,
  Pointer<INTERNET_BUFFERS> lpBuffersOut,
  int dwFlags,
  int dwContext,
)>('InternetReadFileExW');

int InternetSecurityProtocolToString(
  int dwProtocol,
  Pointer<Utf16> lpstr,
  Pointer<Uint32> lpdwstrLength,
  int dwReserved,
) =>
    _InternetSecurityProtocolToString(
      dwProtocol,
      lpstr,
      lpdwstrLength,
      dwReserved,
    );

late final _InternetSecurityProtocolToString = _wininet.lookupFunction<
    Int32 Function(
  Uint32 dwProtocol,
  Pointer<Utf16> lpstr,
  Pointer<Uint32> lpdwstrLength,
  Uint32 dwReserved,
),
    int Function(
  int dwProtocol,
  Pointer<Utf16> lpstr,
  Pointer<Uint32> lpdwstrLength,
  int dwReserved,
)>('InternetSecurityProtocolToStringW');

int InternetSetCookieEx2(
  Pointer<Utf16> pcwszUrl,
  Pointer<INTERNET_COOKIE2> pCookie,
  Pointer<Utf16> pcwszP3PPolicy,
  int dwFlags,
  Pointer<Uint32> pdwCookieState,
) =>
    _InternetSetCookieEx2(
      pcwszUrl,
      pCookie,
      pcwszP3PPolicy,
      dwFlags,
      pdwCookieState,
    );

late final _InternetSetCookieEx2 = _wininet.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> pcwszUrl,
  Pointer<INTERNET_COOKIE2> pCookie,
  Pointer<Utf16> pcwszP3PPolicy,
  Uint32 dwFlags,
  Pointer<Uint32> pdwCookieState,
),
    int Function(
  Pointer<Utf16> pcwszUrl,
  Pointer<INTERNET_COOKIE2> pCookie,
  Pointer<Utf16> pcwszP3PPolicy,
  int dwFlags,
  Pointer<Uint32> pdwCookieState,
)>('InternetSetCookieEx2');

int InternetSetCookieEx(
  Pointer<Utf16> lpszUrl,
  Pointer<Utf16> lpszCookieName,
  Pointer<Utf16> lpszCookieData,
  int dwFlags,
  int dwReserved,
) =>
    _InternetSetCookieEx(
      lpszUrl,
      lpszCookieName,
      lpszCookieData,
      dwFlags,
      dwReserved,
    );

late final _InternetSetCookieEx = _wininet.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> lpszUrl,
  Pointer<Utf16> lpszCookieName,
  Pointer<Utf16> lpszCookieData,
  Uint32 dwFlags,
  IntPtr dwReserved,
),
    int Function(
  Pointer<Utf16> lpszUrl,
  Pointer<Utf16> lpszCookieName,
  Pointer<Utf16> lpszCookieData,
  int dwFlags,
  int dwReserved,
)>('InternetSetCookieExW');

int InternetSetCookie(
  Pointer<Utf16> lpszUrl,
  Pointer<Utf16> lpszCookieName,
  Pointer<Utf16> lpszCookieData,
) =>
    _InternetSetCookie(
      lpszUrl,
      lpszCookieName,
      lpszCookieData,
    );

late final _InternetSetCookie = _wininet.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpszUrl,
  Pointer<Utf16> lpszCookieName,
  Pointer<Utf16> lpszCookieData,
),
    int Function(
  Pointer<Utf16> lpszUrl,
  Pointer<Utf16> lpszCookieName,
  Pointer<Utf16> lpszCookieData,
)>('InternetSetCookieW');

int InternetSetDialState(
  Pointer<Utf16> lpszConnectoid,
  int dwState,
  int dwReserved,
) =>
    _InternetSetDialState(
      lpszConnectoid,
      dwState,
      dwReserved,
    );

late final _InternetSetDialState = _wininet.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpszConnectoid,
  Uint32 dwState,
  Uint32 dwReserved,
),
    int Function(
  Pointer<Utf16> lpszConnectoid,
  int dwState,
  int dwReserved,
)>('InternetSetDialStateW');

int InternetSetFilePointer(
  Pointer hFile,
  int lDistanceToMove,
  Pointer<Int32> lpDistanceToMoveHigh,
  int dwMoveMethod,
  int dwContext,
) =>
    _InternetSetFilePointer(
      hFile,
      lDistanceToMove,
      lpDistanceToMoveHigh,
      dwMoveMethod,
      dwContext,
    );

late final _InternetSetFilePointer = _wininet.lookupFunction<
    Uint32 Function(
  Pointer hFile,
  Int32 lDistanceToMove,
  Pointer<Int32> lpDistanceToMoveHigh,
  Uint32 dwMoveMethod,
  IntPtr dwContext,
),
    int Function(
  Pointer hFile,
  int lDistanceToMove,
  Pointer<Int32> lpDistanceToMoveHigh,
  int dwMoveMethod,
  int dwContext,
)>('InternetSetFilePointer');

int InternetSetOptionEx(
  Pointer hInternet,
  int dwOption,
  Pointer lpBuffer,
  int dwBufferLength,
  int dwFlags,
) =>
    _InternetSetOptionEx(
      hInternet,
      dwOption,
      lpBuffer,
      dwBufferLength,
      dwFlags,
    );

late final _InternetSetOptionEx = _wininet.lookupFunction<
    Int32 Function(
  Pointer hInternet,
  Uint32 dwOption,
  Pointer lpBuffer,
  Uint32 dwBufferLength,
  Uint32 dwFlags,
),
    int Function(
  Pointer hInternet,
  int dwOption,
  Pointer lpBuffer,
  int dwBufferLength,
  int dwFlags,
)>('InternetSetOptionExW');

int InternetSetOption(
  Pointer hInternet,
  int dwOption,
  Pointer lpBuffer,
  int dwBufferLength,
) =>
    _InternetSetOption(
      hInternet,
      dwOption,
      lpBuffer,
      dwBufferLength,
    );

late final _InternetSetOption = _wininet.lookupFunction<
    Int32 Function(
  Pointer hInternet,
  Uint32 dwOption,
  Pointer lpBuffer,
  Uint32 dwBufferLength,
),
    int Function(
  Pointer hInternet,
  int dwOption,
  Pointer lpBuffer,
  int dwBufferLength,
)>('InternetSetOptionW');

int InternetSetPerSiteCookieDecision(
  Pointer<Utf16> pchHostName,
  int dwDecision,
) =>
    _InternetSetPerSiteCookieDecision(
      pchHostName,
      dwDecision,
    );

late final _InternetSetPerSiteCookieDecision = _wininet.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pchHostName,
  Uint32 dwDecision,
),
    int Function(
  Pointer<Utf16> pchHostName,
  int dwDecision,
)>('InternetSetPerSiteCookieDecisionW');

Pointer<NativeFunction<LPINTERNET_STATUS_CALLBACK>> InternetSetStatusCallback(
  Pointer hInternet,
  Pointer<NativeFunction<LPINTERNET_STATUS_CALLBACK>> lpfnInternetCallback,
) =>
    _InternetSetStatusCallback(
      hInternet,
      lpfnInternetCallback,
    );

late final _InternetSetStatusCallback = _wininet.lookupFunction<
    Pointer<NativeFunction<LPINTERNET_STATUS_CALLBACK>> Function(
  Pointer hInternet,
  Pointer<NativeFunction<LPINTERNET_STATUS_CALLBACK>> lpfnInternetCallback,
),
    Pointer<NativeFunction<LPINTERNET_STATUS_CALLBACK>> Function(
  Pointer hInternet,
  Pointer<NativeFunction<LPINTERNET_STATUS_CALLBACK>> lpfnInternetCallback,
)>('InternetSetStatusCallbackW');

int InternetShowSecurityInfoByURL(
  Pointer<Utf16> lpszURL,
  int hwndParent,
) =>
    _InternetShowSecurityInfoByURL(
      lpszURL,
      hwndParent,
    );

late final _InternetShowSecurityInfoByURL = _wininet.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpszURL,
  IntPtr hwndParent,
),
    int Function(
  Pointer<Utf16> lpszURL,
  int hwndParent,
)>('InternetShowSecurityInfoByURLW');

int InternetTimeFromSystemTime(
  Pointer<SYSTEMTIME> pst,
  int dwRFC,
  Pointer<Utf16> lpszTime,
  int cbTime,
) =>
    _InternetTimeFromSystemTime(
      pst,
      dwRFC,
      lpszTime,
      cbTime,
    );

late final _InternetTimeFromSystemTime = _wininet.lookupFunction<
    Int32 Function(
  Pointer<SYSTEMTIME> pst,
  Uint32 dwRFC,
  Pointer<Utf16> lpszTime,
  Uint32 cbTime,
),
    int Function(
  Pointer<SYSTEMTIME> pst,
  int dwRFC,
  Pointer<Utf16> lpszTime,
  int cbTime,
)>('InternetTimeFromSystemTimeW');

int InternetTimeToSystemTime(
  Pointer<Utf16> lpszTime,
  Pointer<SYSTEMTIME> pst,
  int dwReserved,
) =>
    _InternetTimeToSystemTime(
      lpszTime,
      pst,
      dwReserved,
    );

late final _InternetTimeToSystemTime = _wininet.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpszTime,
  Pointer<SYSTEMTIME> pst,
  Uint32 dwReserved,
),
    int Function(
  Pointer<Utf16> lpszTime,
  Pointer<SYSTEMTIME> pst,
  int dwReserved,
)>('InternetTimeToSystemTimeW');

int InternetUnlockRequestFile(
  int hLockRequestInfo,
) =>
    _InternetUnlockRequestFile(
      hLockRequestInfo,
    );

late final _InternetUnlockRequestFile = _wininet.lookupFunction<
    Int32 Function(
  IntPtr hLockRequestInfo,
),
    int Function(
  int hLockRequestInfo,
)>('InternetUnlockRequestFile');

int InternetWriteFile(
  Pointer hFile,
  Pointer lpBuffer,
  int dwNumberOfBytesToWrite,
  Pointer<Uint32> lpdwNumberOfBytesWritten,
) =>
    _InternetWriteFile(
      hFile,
      lpBuffer,
      dwNumberOfBytesToWrite,
      lpdwNumberOfBytesWritten,
    );

late final _InternetWriteFile = _wininet.lookupFunction<
    Int32 Function(
  Pointer hFile,
  Pointer lpBuffer,
  Uint32 dwNumberOfBytesToWrite,
  Pointer<Uint32> lpdwNumberOfBytesWritten,
),
    int Function(
  Pointer hFile,
  Pointer lpBuffer,
  int dwNumberOfBytesToWrite,
  Pointer<Uint32> lpdwNumberOfBytesWritten,
)>('InternetWriteFile');

int InternetWriteFileEx(
  Pointer hFile,
  Pointer<INTERNET_BUFFERS> lpBuffersIn,
  int dwFlags,
  int dwContext,
) =>
    _InternetWriteFileEx(
      hFile,
      lpBuffersIn,
      dwFlags,
      dwContext,
    );

late final _InternetWriteFileEx = _wininet.lookupFunction<
    Int32 Function(
  Pointer hFile,
  Pointer<INTERNET_BUFFERS> lpBuffersIn,
  Uint32 dwFlags,
  IntPtr dwContext,
),
    int Function(
  Pointer hFile,
  Pointer<INTERNET_BUFFERS> lpBuffersIn,
  int dwFlags,
  int dwContext,
)>('InternetWriteFileExW');

int IsDomainLegalCookieDomain(
  Pointer<Utf16> pchDomain,
  Pointer<Utf16> pchFullDomain,
) =>
    _IsDomainLegalCookieDomain(
      pchDomain,
      pchFullDomain,
    );

late final _IsDomainLegalCookieDomain = _wininet.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pchDomain,
  Pointer<Utf16> pchFullDomain,
),
    int Function(
  Pointer<Utf16> pchDomain,
  Pointer<Utf16> pchFullDomain,
)>('IsDomainLegalCookieDomainW');

int IsHostInProxyBypassList(
  int tScheme,
  Pointer<Utf8> lpszHost,
  int cchHost,
) =>
    _IsHostInProxyBypassList(
      tScheme,
      lpszHost,
      cchHost,
    );

late final _IsHostInProxyBypassList = _wininet.lookupFunction<
    Int32 Function(
  Int32 tScheme,
  Pointer<Utf8> lpszHost,
  Uint32 cchHost,
),
    int Function(
  int tScheme,
  Pointer<Utf8> lpszHost,
  int cchHost,
)>('IsHostInProxyBypassList');

int IsProfilesEnabled() => _IsProfilesEnabled();

late final _IsProfilesEnabled = _wininet
    .lookupFunction<Int32 Function(), int Function()>('IsProfilesEnabled');

int IsUrlCacheEntryExpired(
  Pointer<Utf16> lpszUrlName,
  int dwFlags,
  Pointer<FILETIME> pftLastModified,
) =>
    _IsUrlCacheEntryExpired(
      lpszUrlName,
      dwFlags,
      pftLastModified,
    );

late final _IsUrlCacheEntryExpired = _wininet.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpszUrlName,
  Uint32 dwFlags,
  Pointer<FILETIME> pftLastModified,
),
    int Function(
  Pointer<Utf16> lpszUrlName,
  int dwFlags,
  Pointer<FILETIME> pftLastModified,
)>('IsUrlCacheEntryExpiredW');

int LoadUrlCacheContent() => _LoadUrlCacheContent();

late final _LoadUrlCacheContent = _wininet
    .lookupFunction<Int32 Function(), int Function()>('LoadUrlCacheContent');

int ParseX509EncodedCertificateForListBoxEntry(
  Pointer<Uint8> lpCert,
  int cbCert,
  Pointer<Utf8> lpszListBoxEntry,
  Pointer<Uint32> lpdwListBoxEntry,
) =>
    _ParseX509EncodedCertificateForListBoxEntry(
      lpCert,
      cbCert,
      lpszListBoxEntry,
      lpdwListBoxEntry,
    );

late final _ParseX509EncodedCertificateForListBoxEntry =
    _wininet.lookupFunction<
        Uint32 Function(
  Pointer<Uint8> lpCert,
  Uint32 cbCert,
  Pointer<Utf8> lpszListBoxEntry,
  Pointer<Uint32> lpdwListBoxEntry,
),
        int Function(
  Pointer<Uint8> lpCert,
  int cbCert,
  Pointer<Utf8> lpszListBoxEntry,
  Pointer<Uint32> lpdwListBoxEntry,
)>('ParseX509EncodedCertificateForListBoxEntry');

int PrivacyGetZonePreference(
  int dwZone,
  int dwType,
  Pointer<Uint32> pdwTemplate,
  Pointer<Utf16> pszBuffer,
  Pointer<Uint32> pdwBufferLength,
) =>
    _PrivacyGetZonePreference(
      dwZone,
      dwType,
      pdwTemplate,
      pszBuffer,
      pdwBufferLength,
    );

late final _PrivacyGetZonePreference = _wininet.lookupFunction<
    Uint32 Function(
  Uint32 dwZone,
  Uint32 dwType,
  Pointer<Uint32> pdwTemplate,
  Pointer<Utf16> pszBuffer,
  Pointer<Uint32> pdwBufferLength,
),
    int Function(
  int dwZone,
  int dwType,
  Pointer<Uint32> pdwTemplate,
  Pointer<Utf16> pszBuffer,
  Pointer<Uint32> pdwBufferLength,
)>('PrivacyGetZonePreferenceW');

int PrivacySetZonePreference(
  int dwZone,
  int dwType,
  int dwTemplate,
  Pointer<Utf16> pszPreference,
) =>
    _PrivacySetZonePreference(
      dwZone,
      dwType,
      dwTemplate,
      pszPreference,
    );

late final _PrivacySetZonePreference = _wininet.lookupFunction<
    Uint32 Function(
  Uint32 dwZone,
  Uint32 dwType,
  Uint32 dwTemplate,
  Pointer<Utf16> pszPreference,
),
    int Function(
  int dwZone,
  int dwType,
  int dwTemplate,
  Pointer<Utf16> pszPreference,
)>('PrivacySetZonePreferenceW');

int ReadGuidsForConnectedNetworks(
  Pointer<Uint32> pcNetworks,
  Pointer<Pointer<Pointer<Utf16>>> pppwszNetworkGuids,
  Pointer<Pointer<Pointer<Utf16>>> pppbstrNetworkNames,
  Pointer<Pointer<Pointer<Utf16>>> pppwszGWMacs,
  Pointer<Uint32> pcGatewayMacs,
  Pointer<Uint32> pdwFlags,
) =>
    _ReadGuidsForConnectedNetworks(
      pcNetworks,
      pppwszNetworkGuids,
      pppbstrNetworkNames,
      pppwszGWMacs,
      pcGatewayMacs,
      pdwFlags,
    );

late final _ReadGuidsForConnectedNetworks = _wininet.lookupFunction<
    Int32 Function(
  Pointer<Uint32> pcNetworks,
  Pointer<Pointer<Pointer<Utf16>>> pppwszNetworkGuids,
  Pointer<Pointer<Pointer<Utf16>>> pppbstrNetworkNames,
  Pointer<Pointer<Pointer<Utf16>>> pppwszGWMacs,
  Pointer<Uint32> pcGatewayMacs,
  Pointer<Uint32> pdwFlags,
),
    int Function(
  Pointer<Uint32> pcNetworks,
  Pointer<Pointer<Pointer<Utf16>>> pppwszNetworkGuids,
  Pointer<Pointer<Pointer<Utf16>>> pppbstrNetworkNames,
  Pointer<Pointer<Pointer<Utf16>>> pppwszGWMacs,
  Pointer<Uint32> pcGatewayMacs,
  Pointer<Uint32> pdwFlags,
)>('ReadGuidsForConnectedNetworks');

int ReadUrlCacheEntryStream(
  int hUrlCacheStream,
  int dwLocation,
  Pointer lpBuffer,
  Pointer<Uint32> lpdwLen,
  int Reserved,
) =>
    _ReadUrlCacheEntryStream(
      hUrlCacheStream,
      dwLocation,
      lpBuffer,
      lpdwLen,
      Reserved,
    );

late final _ReadUrlCacheEntryStream = _wininet.lookupFunction<
    Int32 Function(
  IntPtr hUrlCacheStream,
  Uint32 dwLocation,
  Pointer lpBuffer,
  Pointer<Uint32> lpdwLen,
  Uint32 Reserved,
),
    int Function(
  int hUrlCacheStream,
  int dwLocation,
  Pointer lpBuffer,
  Pointer<Uint32> lpdwLen,
  int Reserved,
)>('ReadUrlCacheEntryStream');

int ReadUrlCacheEntryStreamEx(
  int hUrlCacheStream,
  int qwLocation,
  Pointer lpBuffer,
  Pointer<Uint32> lpdwLen,
) =>
    _ReadUrlCacheEntryStreamEx(
      hUrlCacheStream,
      qwLocation,
      lpBuffer,
      lpdwLen,
    );

late final _ReadUrlCacheEntryStreamEx = _wininet.lookupFunction<
    Int32 Function(
  IntPtr hUrlCacheStream,
  Uint64 qwLocation,
  Pointer lpBuffer,
  Pointer<Uint32> lpdwLen,
),
    int Function(
  int hUrlCacheStream,
  int qwLocation,
  Pointer lpBuffer,
  Pointer<Uint32> lpdwLen,
)>('ReadUrlCacheEntryStreamEx');

int RegisterUrlCacheNotification(
  int hWnd,
  int uMsg,
  int gid,
  int dwOpsFilter,
  int dwReserved,
) =>
    _RegisterUrlCacheNotification(
      hWnd,
      uMsg,
      gid,
      dwOpsFilter,
      dwReserved,
    );

late final _RegisterUrlCacheNotification = _wininet.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
  Uint32 uMsg,
  Int64 gid,
  Uint32 dwOpsFilter,
  Uint32 dwReserved,
),
    int Function(
  int hWnd,
  int uMsg,
  int gid,
  int dwOpsFilter,
  int dwReserved,
)>('RegisterUrlCacheNotification');

int ResumeSuspendedDownload(
  Pointer hRequest,
  int dwResultCode,
) =>
    _ResumeSuspendedDownload(
      hRequest,
      dwResultCode,
    );

late final _ResumeSuspendedDownload = _wininet.lookupFunction<
    Int32 Function(
  Pointer hRequest,
  Uint32 dwResultCode,
),
    int Function(
  Pointer hRequest,
  int dwResultCode,
)>('ResumeSuspendedDownload');

int RetrieveUrlCacheEntryFile(
  Pointer<Utf16> lpszUrlName,
  Pointer<INTERNET_CACHE_ENTRY_INFO> lpCacheEntryInfo,
  Pointer<Uint32> lpcbCacheEntryInfo,
  int dwReserved,
) =>
    _RetrieveUrlCacheEntryFile(
      lpszUrlName,
      lpCacheEntryInfo,
      lpcbCacheEntryInfo,
      dwReserved,
    );

late final _RetrieveUrlCacheEntryFile = _wininet.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpszUrlName,
  Pointer<INTERNET_CACHE_ENTRY_INFO> lpCacheEntryInfo,
  Pointer<Uint32> lpcbCacheEntryInfo,
  Uint32 dwReserved,
),
    int Function(
  Pointer<Utf16> lpszUrlName,
  Pointer<INTERNET_CACHE_ENTRY_INFO> lpCacheEntryInfo,
  Pointer<Uint32> lpcbCacheEntryInfo,
  int dwReserved,
)>('RetrieveUrlCacheEntryFileW');

int RetrieveUrlCacheEntryStream(
  Pointer<Utf16> lpszUrlName,
  Pointer<INTERNET_CACHE_ENTRY_INFO> lpCacheEntryInfo,
  Pointer<Uint32> lpcbCacheEntryInfo,
  int fRandomRead,
  int dwReserved,
) =>
    _RetrieveUrlCacheEntryStream(
      lpszUrlName,
      lpCacheEntryInfo,
      lpcbCacheEntryInfo,
      fRandomRead,
      dwReserved,
    );

late final _RetrieveUrlCacheEntryStream = _wininet.lookupFunction<
    IntPtr Function(
  Pointer<Utf16> lpszUrlName,
  Pointer<INTERNET_CACHE_ENTRY_INFO> lpCacheEntryInfo,
  Pointer<Uint32> lpcbCacheEntryInfo,
  Int32 fRandomRead,
  Uint32 dwReserved,
),
    int Function(
  Pointer<Utf16> lpszUrlName,
  Pointer<INTERNET_CACHE_ENTRY_INFO> lpCacheEntryInfo,
  Pointer<Uint32> lpcbCacheEntryInfo,
  int fRandomRead,
  int dwReserved,
)>('RetrieveUrlCacheEntryStreamW');

int RunOnceUrlCache(
  int hwnd,
  int hinst,
  Pointer<Utf8> lpszCmd,
  int nCmdShow,
) =>
    _RunOnceUrlCache(
      hwnd,
      hinst,
      lpszCmd,
      nCmdShow,
    );

late final _RunOnceUrlCache = _wininet.lookupFunction<
    Uint32 Function(
  IntPtr hwnd,
  IntPtr hinst,
  Pointer<Utf8> lpszCmd,
  Int32 nCmdShow,
),
    int Function(
  int hwnd,
  int hinst,
  Pointer<Utf8> lpszCmd,
  int nCmdShow,
)>('RunOnceUrlCache');

int SetUrlCacheConfigInfo(
  Pointer<INTERNET_CACHE_CONFIG_INFO> lpCacheConfigInfo,
  int dwFieldControl,
) =>
    _SetUrlCacheConfigInfo(
      lpCacheConfigInfo,
      dwFieldControl,
    );

late final _SetUrlCacheConfigInfo = _wininet.lookupFunction<
    Int32 Function(
  Pointer<INTERNET_CACHE_CONFIG_INFO> lpCacheConfigInfo,
  Uint32 dwFieldControl,
),
    int Function(
  Pointer<INTERNET_CACHE_CONFIG_INFO> lpCacheConfigInfo,
  int dwFieldControl,
)>('SetUrlCacheConfigInfoW');

int SetUrlCacheEntryGroup(
  Pointer<Utf16> lpszUrlName,
  int dwFlags,
  int GroupId,
  Pointer<Uint8> pbGroupAttributes,
  int cbGroupAttributes,
  Pointer lpReserved,
) =>
    _SetUrlCacheEntryGroup(
      lpszUrlName,
      dwFlags,
      GroupId,
      pbGroupAttributes,
      cbGroupAttributes,
      lpReserved,
    );

late final _SetUrlCacheEntryGroup = _wininet.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpszUrlName,
  Uint32 dwFlags,
  Int64 GroupId,
  Pointer<Uint8> pbGroupAttributes,
  Uint32 cbGroupAttributes,
  Pointer lpReserved,
),
    int Function(
  Pointer<Utf16> lpszUrlName,
  int dwFlags,
  int GroupId,
  Pointer<Uint8> pbGroupAttributes,
  int cbGroupAttributes,
  Pointer lpReserved,
)>('SetUrlCacheEntryGroupW');

int SetUrlCacheEntryInfo(
  Pointer<Utf16> lpszUrlName,
  Pointer<INTERNET_CACHE_ENTRY_INFO> lpCacheEntryInfo,
  int dwFieldControl,
) =>
    _SetUrlCacheEntryInfo(
      lpszUrlName,
      lpCacheEntryInfo,
      dwFieldControl,
    );

late final _SetUrlCacheEntryInfo = _wininet.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpszUrlName,
  Pointer<INTERNET_CACHE_ENTRY_INFO> lpCacheEntryInfo,
  Uint32 dwFieldControl,
),
    int Function(
  Pointer<Utf16> lpszUrlName,
  Pointer<INTERNET_CACHE_ENTRY_INFO> lpCacheEntryInfo,
  int dwFieldControl,
)>('SetUrlCacheEntryInfoW');

int SetUrlCacheGroupAttribute(
  int gid,
  int dwFlags,
  int dwAttributes,
  Pointer<INTERNET_CACHE_GROUP_INFO> lpGroupInfo,
  Pointer lpReserved,
) =>
    _SetUrlCacheGroupAttribute(
      gid,
      dwFlags,
      dwAttributes,
      lpGroupInfo,
      lpReserved,
    );

late final _SetUrlCacheGroupAttribute = _wininet.lookupFunction<
    Int32 Function(
  Int64 gid,
  Uint32 dwFlags,
  Uint32 dwAttributes,
  Pointer<INTERNET_CACHE_GROUP_INFO> lpGroupInfo,
  Pointer lpReserved,
),
    int Function(
  int gid,
  int dwFlags,
  int dwAttributes,
  Pointer<INTERNET_CACHE_GROUP_INFO> lpGroupInfo,
  Pointer lpReserved,
)>('SetUrlCacheGroupAttributeW');

int SetUrlCacheHeaderData(
  int nIdx,
  int dwData,
) =>
    _SetUrlCacheHeaderData(
      nIdx,
      dwData,
    );

late final _SetUrlCacheHeaderData = _wininet.lookupFunction<
    Int32 Function(
  Uint32 nIdx,
  Uint32 dwData,
),
    int Function(
  int nIdx,
  int dwData,
)>('SetUrlCacheHeaderData');

int ShowClientAuthCerts(
  int hWndParent,
) =>
    _ShowClientAuthCerts(
      hWndParent,
    );

late final _ShowClientAuthCerts = _wininet.lookupFunction<
    Uint32 Function(
  IntPtr hWndParent,
),
    int Function(
  int hWndParent,
)>('ShowClientAuthCerts');

int ShowSecurityInfo(
  int hWndParent,
  Pointer<INTERNET_SECURITY_INFO> pSecurityInfo,
) =>
    _ShowSecurityInfo(
      hWndParent,
      pSecurityInfo,
    );

late final _ShowSecurityInfo = _wininet.lookupFunction<
    Uint32 Function(
  IntPtr hWndParent,
  Pointer<INTERNET_SECURITY_INFO> pSecurityInfo,
),
    int Function(
  int hWndParent,
  Pointer<INTERNET_SECURITY_INFO> pSecurityInfo,
)>('ShowSecurityInfo');

int ShowX509EncodedCertificate(
  int hWndParent,
  Pointer<Uint8> lpCert,
  int cbCert,
) =>
    _ShowX509EncodedCertificate(
      hWndParent,
      lpCert,
      cbCert,
    );

late final _ShowX509EncodedCertificate = _wininet.lookupFunction<
    Uint32 Function(
  IntPtr hWndParent,
  Pointer<Uint8> lpCert,
  Uint32 cbCert,
),
    int Function(
  int hWndParent,
  Pointer<Uint8> lpCert,
  int cbCert,
)>('ShowX509EncodedCertificate');

int UnlockUrlCacheEntryFile(
  Pointer<Utf16> lpszUrlName,
  int dwReserved,
) =>
    _UnlockUrlCacheEntryFile(
      lpszUrlName,
      dwReserved,
    );

late final _UnlockUrlCacheEntryFile = _wininet.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpszUrlName,
  Uint32 dwReserved,
),
    int Function(
  Pointer<Utf16> lpszUrlName,
  int dwReserved,
)>('UnlockUrlCacheEntryFileW');

int UnlockUrlCacheEntryStream(
  int hUrlCacheStream,
  int Reserved,
) =>
    _UnlockUrlCacheEntryStream(
      hUrlCacheStream,
      Reserved,
    );

late final _UnlockUrlCacheEntryStream = _wininet.lookupFunction<
    Int32 Function(
  IntPtr hUrlCacheStream,
  Uint32 Reserved,
),
    int Function(
  int hUrlCacheStream,
  int Reserved,
)>('UnlockUrlCacheEntryStream');

int UpdateUrlCacheContentPath(
  Pointer<Utf8> szNewPath,
) =>
    _UpdateUrlCacheContentPath(
      szNewPath,
    );

late final _UpdateUrlCacheContentPath = _wininet.lookupFunction<
    Int32 Function(
  Pointer<Utf8> szNewPath,
),
    int Function(
  Pointer<Utf8> szNewPath,
)>('UpdateUrlCacheContentPath');

int UrlCacheCheckEntriesExist(
  Pointer<Pointer<Utf16>> rgpwszUrls,
  int cEntries,
  Pointer<Int32> rgfExist,
) =>
    _UrlCacheCheckEntriesExist(
      rgpwszUrls,
      cEntries,
      rgfExist,
    );

late final _UrlCacheCheckEntriesExist = _wininet.lookupFunction<
    Uint32 Function(
  Pointer<Pointer<Utf16>> rgpwszUrls,
  Uint32 cEntries,
  Pointer<Int32> rgfExist,
),
    int Function(
  Pointer<Pointer<Utf16>> rgpwszUrls,
  int cEntries,
  Pointer<Int32> rgfExist,
)>('UrlCacheCheckEntriesExist');

void UrlCacheCloseEntryHandle(
  Pointer hEntryFile,
) =>
    _UrlCacheCloseEntryHandle(
      hEntryFile,
    );

late final _UrlCacheCloseEntryHandle = _wininet.lookupFunction<
    Void Function(
  Pointer hEntryFile,
),
    void Function(
  Pointer hEntryFile,
)>('UrlCacheCloseEntryHandle');

int UrlCacheContainerSetEntryMaximumAge(
  Pointer<Utf16> pwszPrefix,
  int dwEntryMaxAge,
) =>
    _UrlCacheContainerSetEntryMaximumAge(
      pwszPrefix,
      dwEntryMaxAge,
    );

late final _UrlCacheContainerSetEntryMaximumAge = _wininet.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> pwszPrefix,
  Uint32 dwEntryMaxAge,
),
    int Function(
  Pointer<Utf16> pwszPrefix,
  int dwEntryMaxAge,
)>('UrlCacheContainerSetEntryMaximumAge');

int UrlCacheCreateContainer(
  Pointer<Utf16> pwszName,
  Pointer<Utf16> pwszPrefix,
  Pointer<Utf16> pwszDirectory,
  int ullLimit,
  int dwOptions,
) =>
    _UrlCacheCreateContainer(
      pwszName,
      pwszPrefix,
      pwszDirectory,
      ullLimit,
      dwOptions,
    );

late final _UrlCacheCreateContainer = _wininet.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> pwszName,
  Pointer<Utf16> pwszPrefix,
  Pointer<Utf16> pwszDirectory,
  Uint64 ullLimit,
  Uint32 dwOptions,
),
    int Function(
  Pointer<Utf16> pwszName,
  Pointer<Utf16> pwszPrefix,
  Pointer<Utf16> pwszDirectory,
  int ullLimit,
  int dwOptions,
)>('UrlCacheCreateContainer');

int UrlCacheFindFirstEntry(
  Pointer<Utf16> pwszPrefix,
  int dwFlags,
  int dwFilter,
  int GroupId,
  Pointer<URLCACHE_ENTRY_INFO> pCacheEntryInfo,
  Pointer<IntPtr> phFind,
) =>
    _UrlCacheFindFirstEntry(
      pwszPrefix,
      dwFlags,
      dwFilter,
      GroupId,
      pCacheEntryInfo,
      phFind,
    );

late final _UrlCacheFindFirstEntry = _wininet.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> pwszPrefix,
  Uint32 dwFlags,
  Uint32 dwFilter,
  Int64 GroupId,
  Pointer<URLCACHE_ENTRY_INFO> pCacheEntryInfo,
  Pointer<IntPtr> phFind,
),
    int Function(
  Pointer<Utf16> pwszPrefix,
  int dwFlags,
  int dwFilter,
  int GroupId,
  Pointer<URLCACHE_ENTRY_INFO> pCacheEntryInfo,
  Pointer<IntPtr> phFind,
)>('UrlCacheFindFirstEntry');

int UrlCacheFindNextEntry(
  int hFind,
  Pointer<URLCACHE_ENTRY_INFO> pCacheEntryInfo,
) =>
    _UrlCacheFindNextEntry(
      hFind,
      pCacheEntryInfo,
    );

late final _UrlCacheFindNextEntry = _wininet.lookupFunction<
    Uint32 Function(
  IntPtr hFind,
  Pointer<URLCACHE_ENTRY_INFO> pCacheEntryInfo,
),
    int Function(
  int hFind,
  Pointer<URLCACHE_ENTRY_INFO> pCacheEntryInfo,
)>('UrlCacheFindNextEntry');

void UrlCacheFreeEntryInfo(
  Pointer<URLCACHE_ENTRY_INFO> pCacheEntryInfo,
) =>
    _UrlCacheFreeEntryInfo(
      pCacheEntryInfo,
    );

late final _UrlCacheFreeEntryInfo = _wininet.lookupFunction<
    Void Function(
  Pointer<URLCACHE_ENTRY_INFO> pCacheEntryInfo,
),
    void Function(
  Pointer<URLCACHE_ENTRY_INFO> pCacheEntryInfo,
)>('UrlCacheFreeEntryInfo');

int UrlCacheFreeGlobalSpace(
  int ullTargetSize,
  int dwFilter,
) =>
    _UrlCacheFreeGlobalSpace(
      ullTargetSize,
      dwFilter,
    );

late final _UrlCacheFreeGlobalSpace = _wininet.lookupFunction<
    Uint32 Function(
  Uint64 ullTargetSize,
  Uint32 dwFilter,
),
    int Function(
  int ullTargetSize,
  int dwFilter,
)>('UrlCacheFreeGlobalSpace');

int UrlCacheGetContentPaths(
  Pointer<Pointer<Pointer<Utf16>>> pppwszDirectories,
  Pointer<Uint32> pcDirectories,
) =>
    _UrlCacheGetContentPaths(
      pppwszDirectories,
      pcDirectories,
    );

late final _UrlCacheGetContentPaths = _wininet.lookupFunction<
    Uint32 Function(
  Pointer<Pointer<Pointer<Utf16>>> pppwszDirectories,
  Pointer<Uint32> pcDirectories,
),
    int Function(
  Pointer<Pointer<Pointer<Utf16>>> pppwszDirectories,
  Pointer<Uint32> pcDirectories,
)>('UrlCacheGetContentPaths');

int UrlCacheGetEntryInfo(
  Pointer hAppCache,
  Pointer<Utf16> pcwszUrl,
  Pointer<URLCACHE_ENTRY_INFO> pCacheEntryInfo,
) =>
    _UrlCacheGetEntryInfo(
      hAppCache,
      pcwszUrl,
      pCacheEntryInfo,
    );

late final _UrlCacheGetEntryInfo = _wininet.lookupFunction<
    Uint32 Function(
  Pointer hAppCache,
  Pointer<Utf16> pcwszUrl,
  Pointer<URLCACHE_ENTRY_INFO> pCacheEntryInfo,
),
    int Function(
  Pointer hAppCache,
  Pointer<Utf16> pcwszUrl,
  Pointer<URLCACHE_ENTRY_INFO> pCacheEntryInfo,
)>('UrlCacheGetEntryInfo');

int UrlCacheGetGlobalCacheSize(
  int dwFilter,
  Pointer<Uint64> pullSize,
  Pointer<Uint64> pullLimit,
) =>
    _UrlCacheGetGlobalCacheSize(
      dwFilter,
      pullSize,
      pullLimit,
    );

late final _UrlCacheGetGlobalCacheSize = _wininet.lookupFunction<
    Uint32 Function(
  Uint32 dwFilter,
  Pointer<Uint64> pullSize,
  Pointer<Uint64> pullLimit,
),
    int Function(
  int dwFilter,
  Pointer<Uint64> pullSize,
  Pointer<Uint64> pullLimit,
)>('UrlCacheGetGlobalCacheSize');

int UrlCacheGetGlobalLimit(
  int limitType,
  Pointer<Uint64> pullLimit,
) =>
    _UrlCacheGetGlobalLimit(
      limitType,
      pullLimit,
    );

late final _UrlCacheGetGlobalLimit = _wininet.lookupFunction<
    Uint32 Function(
  Int32 limitType,
  Pointer<Uint64> pullLimit,
),
    int Function(
  int limitType,
  Pointer<Uint64> pullLimit,
)>('UrlCacheGetGlobalLimit');

int UrlCacheReadEntryStream(
  Pointer hUrlCacheStream,
  int ullLocation,
  Pointer pBuffer,
  int dwBufferLen,
  Pointer<Uint32> pdwBufferLen,
) =>
    _UrlCacheReadEntryStream(
      hUrlCacheStream,
      ullLocation,
      pBuffer,
      dwBufferLen,
      pdwBufferLen,
    );

late final _UrlCacheReadEntryStream = _wininet.lookupFunction<
    Uint32 Function(
  Pointer hUrlCacheStream,
  Uint64 ullLocation,
  Pointer pBuffer,
  Uint32 dwBufferLen,
  Pointer<Uint32> pdwBufferLen,
),
    int Function(
  Pointer hUrlCacheStream,
  int ullLocation,
  Pointer pBuffer,
  int dwBufferLen,
  Pointer<Uint32> pdwBufferLen,
)>('UrlCacheReadEntryStream');

int UrlCacheReloadSettings() => _UrlCacheReloadSettings();

late final _UrlCacheReloadSettings =
    _wininet.lookupFunction<Uint32 Function(), int Function()>(
        'UrlCacheReloadSettings');

int UrlCacheRetrieveEntryFile(
  Pointer hAppCache,
  Pointer<Utf16> pcwszUrl,
  Pointer<URLCACHE_ENTRY_INFO> pCacheEntryInfo,
  Pointer<Pointer> phEntryFile,
) =>
    _UrlCacheRetrieveEntryFile(
      hAppCache,
      pcwszUrl,
      pCacheEntryInfo,
      phEntryFile,
    );

late final _UrlCacheRetrieveEntryFile = _wininet.lookupFunction<
    Uint32 Function(
  Pointer hAppCache,
  Pointer<Utf16> pcwszUrl,
  Pointer<URLCACHE_ENTRY_INFO> pCacheEntryInfo,
  Pointer<Pointer> phEntryFile,
),
    int Function(
  Pointer hAppCache,
  Pointer<Utf16> pcwszUrl,
  Pointer<URLCACHE_ENTRY_INFO> pCacheEntryInfo,
  Pointer<Pointer> phEntryFile,
)>('UrlCacheRetrieveEntryFile');

int UrlCacheRetrieveEntryStream(
  Pointer hAppCache,
  Pointer<Utf16> pcwszUrl,
  int fRandomRead,
  Pointer<URLCACHE_ENTRY_INFO> pCacheEntryInfo,
  Pointer<Pointer> phEntryStream,
) =>
    _UrlCacheRetrieveEntryStream(
      hAppCache,
      pcwszUrl,
      fRandomRead,
      pCacheEntryInfo,
      phEntryStream,
    );

late final _UrlCacheRetrieveEntryStream = _wininet.lookupFunction<
    Uint32 Function(
  Pointer hAppCache,
  Pointer<Utf16> pcwszUrl,
  Int32 fRandomRead,
  Pointer<URLCACHE_ENTRY_INFO> pCacheEntryInfo,
  Pointer<Pointer> phEntryStream,
),
    int Function(
  Pointer hAppCache,
  Pointer<Utf16> pcwszUrl,
  int fRandomRead,
  Pointer<URLCACHE_ENTRY_INFO> pCacheEntryInfo,
  Pointer<Pointer> phEntryStream,
)>('UrlCacheRetrieveEntryStream');

int UrlCacheServer() => _UrlCacheServer();

late final _UrlCacheServer = _wininet
    .lookupFunction<Uint32 Function(), int Function()>('UrlCacheServer');

int UrlCacheSetGlobalLimit(
  int limitType,
  int ullLimit,
) =>
    _UrlCacheSetGlobalLimit(
      limitType,
      ullLimit,
    );

late final _UrlCacheSetGlobalLimit = _wininet.lookupFunction<
    Uint32 Function(
  Int32 limitType,
  Uint64 ullLimit,
),
    int Function(
  int limitType,
  int ullLimit,
)>('UrlCacheSetGlobalLimit');

int UrlCacheUpdateEntryExtraData(
  Pointer hAppCache,
  Pointer<Utf16> pcwszUrl,
  Pointer<Uint8> pbExtraData,
  int cbExtraData,
) =>
    _UrlCacheUpdateEntryExtraData(
      hAppCache,
      pcwszUrl,
      pbExtraData,
      cbExtraData,
    );

late final _UrlCacheUpdateEntryExtraData = _wininet.lookupFunction<
    Uint32 Function(
  Pointer hAppCache,
  Pointer<Utf16> pcwszUrl,
  Pointer<Uint8> pbExtraData,
  Uint32 cbExtraData,
),
    int Function(
  Pointer hAppCache,
  Pointer<Utf16> pcwszUrl,
  Pointer<Uint8> pbExtraData,
  int cbExtraData,
)>('UrlCacheUpdateEntryExtraData');
