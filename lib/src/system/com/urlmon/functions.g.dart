// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';

import '../../../combase.dart';
import '../../../guid.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/com/IBindCtx.dart';
import '../../../system/com/structs.g.dart';
import '../../../system/com/IUri.dart';
import '../../../system/com/IServiceProvider.dart';
import '../../../system/com/urlmon/IInternetSecurityManager.dart';
import '../../../system/com/urlmon/IInternetZoneManager.dart';
import '../../../system/com/urlmon/structs.g.dart';
import '../../../system/com/urlmon/IInternetSession.dart';
import '../../../system/com/urlmon/IInternetSecurityManagerEx2.dart';
import '../../../system/com/IBindStatusCallback.dart';
import '../../../system/com/IEnumFORMATETC.dart';
import '../../../system/com/IMoniker.dart';
import '../../../system/com/IUnknown.dart';
import '../../../system/com/IStream.dart'; // -----------------------------------------------------------------------

// urlmon.dll
// -----------------------------------------------------------------------
final _urlmon = DynamicLibrary.open('urlmon.dll');

int CoGetClassObjectFromURL(
  Pointer<GUID> rCLASSID,
  Pointer<Utf16> szCODE,
  int dwFileVersionMS,
  int dwFileVersionLS,
  Pointer<Utf16> szTYPE,
  Pointer<COMObject> pBindCtx,
  int dwClsContext,
  Pointer pvReserved,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
) =>
    _CoGetClassObjectFromURL(
      rCLASSID,
      szCODE,
      dwFileVersionMS,
      dwFileVersionLS,
      szTYPE,
      pBindCtx,
      dwClsContext,
      pvReserved,
      riid,
      ppv,
    );

late final _CoGetClassObjectFromURL = _urlmon.lookupFunction<
    Int32 Function(
  Pointer<GUID> rCLASSID,
  Pointer<Utf16> szCODE,
  Uint32 dwFileVersionMS,
  Uint32 dwFileVersionLS,
  Pointer<Utf16> szTYPE,
  Pointer<COMObject> pBindCtx,
  Uint32 dwClsContext,
  Pointer pvReserved,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
),
    int Function(
  Pointer<GUID> rCLASSID,
  Pointer<Utf16> szCODE,
  int dwFileVersionMS,
  int dwFileVersionLS,
  Pointer<Utf16> szTYPE,
  Pointer<COMObject> pBindCtx,
  int dwClsContext,
  Pointer pvReserved,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
)>('CoGetClassObjectFromURL');

int CoInternetCombineIUri(
  Pointer<COMObject> pBaseUri,
  Pointer<COMObject> pRelativeUri,
  int dwCombineFlags,
  Pointer<Pointer<COMObject>> ppCombinedUri,
  int dwReserved,
) =>
    _CoInternetCombineIUri(
      pBaseUri,
      pRelativeUri,
      dwCombineFlags,
      ppCombinedUri,
      dwReserved,
    );

late final _CoInternetCombineIUri = _urlmon.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pBaseUri,
  Pointer<COMObject> pRelativeUri,
  Uint32 dwCombineFlags,
  Pointer<Pointer<COMObject>> ppCombinedUri,
  IntPtr dwReserved,
),
    int Function(
  Pointer<COMObject> pBaseUri,
  Pointer<COMObject> pRelativeUri,
  int dwCombineFlags,
  Pointer<Pointer<COMObject>> ppCombinedUri,
  int dwReserved,
)>('CoInternetCombineIUri');

int CoInternetCombineUrl(
  Pointer<Utf16> pwzBaseUrl,
  Pointer<Utf16> pwzRelativeUrl,
  int dwCombineFlags,
  Pointer<Utf16> pszResult,
  int cchResult,
  Pointer<Uint32> pcchResult,
  int dwReserved,
) =>
    _CoInternetCombineUrl(
      pwzBaseUrl,
      pwzRelativeUrl,
      dwCombineFlags,
      pszResult,
      cchResult,
      pcchResult,
      dwReserved,
    );

late final _CoInternetCombineUrl = _urlmon.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwzBaseUrl,
  Pointer<Utf16> pwzRelativeUrl,
  Uint32 dwCombineFlags,
  Pointer<Utf16> pszResult,
  Uint32 cchResult,
  Pointer<Uint32> pcchResult,
  Uint32 dwReserved,
),
    int Function(
  Pointer<Utf16> pwzBaseUrl,
  Pointer<Utf16> pwzRelativeUrl,
  int dwCombineFlags,
  Pointer<Utf16> pszResult,
  int cchResult,
  Pointer<Uint32> pcchResult,
  int dwReserved,
)>('CoInternetCombineUrl');

int CoInternetCombineUrlEx(
  Pointer<COMObject> pBaseUri,
  Pointer<Utf16> pwzRelativeUrl,
  int dwCombineFlags,
  Pointer<Pointer<COMObject>> ppCombinedUri,
  int dwReserved,
) =>
    _CoInternetCombineUrlEx(
      pBaseUri,
      pwzRelativeUrl,
      dwCombineFlags,
      ppCombinedUri,
      dwReserved,
    );

late final _CoInternetCombineUrlEx = _urlmon.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pBaseUri,
  Pointer<Utf16> pwzRelativeUrl,
  Uint32 dwCombineFlags,
  Pointer<Pointer<COMObject>> ppCombinedUri,
  IntPtr dwReserved,
),
    int Function(
  Pointer<COMObject> pBaseUri,
  Pointer<Utf16> pwzRelativeUrl,
  int dwCombineFlags,
  Pointer<Pointer<COMObject>> ppCombinedUri,
  int dwReserved,
)>('CoInternetCombineUrlEx');

int CoInternetCompareUrl(
  Pointer<Utf16> pwzUrl1,
  Pointer<Utf16> pwzUrl2,
  int dwFlags,
) =>
    _CoInternetCompareUrl(
      pwzUrl1,
      pwzUrl2,
      dwFlags,
    );

late final _CoInternetCompareUrl = _urlmon.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwzUrl1,
  Pointer<Utf16> pwzUrl2,
  Uint32 dwFlags,
),
    int Function(
  Pointer<Utf16> pwzUrl1,
  Pointer<Utf16> pwzUrl2,
  int dwFlags,
)>('CoInternetCompareUrl');

int CoInternetCreateSecurityManager(
  Pointer<COMObject> pSP,
  Pointer<Pointer<COMObject>> ppSM,
  int dwReserved,
) =>
    _CoInternetCreateSecurityManager(
      pSP,
      ppSM,
      dwReserved,
    );

late final _CoInternetCreateSecurityManager = _urlmon.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pSP,
  Pointer<Pointer<COMObject>> ppSM,
  Uint32 dwReserved,
),
    int Function(
  Pointer<COMObject> pSP,
  Pointer<Pointer<COMObject>> ppSM,
  int dwReserved,
)>('CoInternetCreateSecurityManager');

int CoInternetCreateZoneManager(
  Pointer<COMObject> pSP,
  Pointer<Pointer<COMObject>> ppZM,
  int dwReserved,
) =>
    _CoInternetCreateZoneManager(
      pSP,
      ppZM,
      dwReserved,
    );

late final _CoInternetCreateZoneManager = _urlmon.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pSP,
  Pointer<Pointer<COMObject>> ppZM,
  Uint32 dwReserved,
),
    int Function(
  Pointer<COMObject> pSP,
  Pointer<Pointer<COMObject>> ppZM,
  int dwReserved,
)>('CoInternetCreateZoneManager');

int CoInternetGetProtocolFlags(
  Pointer<Utf16> pwzUrl,
  Pointer<Uint32> pdwFlags,
  int dwReserved,
) =>
    _CoInternetGetProtocolFlags(
      pwzUrl,
      pdwFlags,
      dwReserved,
    );

late final _CoInternetGetProtocolFlags = _urlmon.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwzUrl,
  Pointer<Uint32> pdwFlags,
  Uint32 dwReserved,
),
    int Function(
  Pointer<Utf16> pwzUrl,
  Pointer<Uint32> pdwFlags,
  int dwReserved,
)>('CoInternetGetProtocolFlags');

int CoInternetGetSecurityUrl(
  Pointer<Utf16> pwszUrl,
  Pointer<Pointer<Utf16>> ppwszSecUrl,
  int psuAction,
  int dwReserved,
) =>
    _CoInternetGetSecurityUrl(
      pwszUrl,
      ppwszSecUrl,
      psuAction,
      dwReserved,
    );

late final _CoInternetGetSecurityUrl = _urlmon.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwszUrl,
  Pointer<Pointer<Utf16>> ppwszSecUrl,
  Int32 psuAction,
  Uint32 dwReserved,
),
    int Function(
  Pointer<Utf16> pwszUrl,
  Pointer<Pointer<Utf16>> ppwszSecUrl,
  int psuAction,
  int dwReserved,
)>('CoInternetGetSecurityUrl');

int CoInternetGetSecurityUrlEx(
  Pointer<COMObject> pUri,
  Pointer<Pointer<COMObject>> ppSecUri,
  int psuAction,
  int dwReserved,
) =>
    _CoInternetGetSecurityUrlEx(
      pUri,
      ppSecUri,
      psuAction,
      dwReserved,
    );

late final _CoInternetGetSecurityUrlEx = _urlmon.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pUri,
  Pointer<Pointer<COMObject>> ppSecUri,
  Int32 psuAction,
  IntPtr dwReserved,
),
    int Function(
  Pointer<COMObject> pUri,
  Pointer<Pointer<COMObject>> ppSecUri,
  int psuAction,
  int dwReserved,
)>('CoInternetGetSecurityUrlEx');

int CoInternetGetSession(
  int dwSessionMode,
  Pointer<Pointer<COMObject>> ppIInternetSession,
  int dwReserved,
) =>
    _CoInternetGetSession(
      dwSessionMode,
      ppIInternetSession,
      dwReserved,
    );

late final _CoInternetGetSession = _urlmon.lookupFunction<
    Int32 Function(
  Uint32 dwSessionMode,
  Pointer<Pointer<COMObject>> ppIInternetSession,
  Uint32 dwReserved,
),
    int Function(
  int dwSessionMode,
  Pointer<Pointer<COMObject>> ppIInternetSession,
  int dwReserved,
)>('CoInternetGetSession');

int CoInternetIsFeatureEnabled(
  int FeatureEntry,
  int dwFlags,
) =>
    _CoInternetIsFeatureEnabled(
      FeatureEntry,
      dwFlags,
    );

late final _CoInternetIsFeatureEnabled = _urlmon.lookupFunction<
    Int32 Function(
  Int32 FeatureEntry,
  Uint32 dwFlags,
),
    int Function(
  int FeatureEntry,
  int dwFlags,
)>('CoInternetIsFeatureEnabled');

int CoInternetIsFeatureEnabledForIUri(
  int FeatureEntry,
  int dwFlags,
  Pointer<COMObject> pIUri,
  Pointer<COMObject> pSecMgr,
) =>
    _CoInternetIsFeatureEnabledForIUri(
      FeatureEntry,
      dwFlags,
      pIUri,
      pSecMgr,
    );

late final _CoInternetIsFeatureEnabledForIUri = _urlmon.lookupFunction<
    Int32 Function(
  Int32 FeatureEntry,
  Uint32 dwFlags,
  Pointer<COMObject> pIUri,
  Pointer<COMObject> pSecMgr,
),
    int Function(
  int FeatureEntry,
  int dwFlags,
  Pointer<COMObject> pIUri,
  Pointer<COMObject> pSecMgr,
)>('CoInternetIsFeatureEnabledForIUri');

int CoInternetIsFeatureEnabledForUrl(
  int FeatureEntry,
  int dwFlags,
  Pointer<Utf16> szURL,
  Pointer<COMObject> pSecMgr,
) =>
    _CoInternetIsFeatureEnabledForUrl(
      FeatureEntry,
      dwFlags,
      szURL,
      pSecMgr,
    );

late final _CoInternetIsFeatureEnabledForUrl = _urlmon.lookupFunction<
    Int32 Function(
  Int32 FeatureEntry,
  Uint32 dwFlags,
  Pointer<Utf16> szURL,
  Pointer<COMObject> pSecMgr,
),
    int Function(
  int FeatureEntry,
  int dwFlags,
  Pointer<Utf16> szURL,
  Pointer<COMObject> pSecMgr,
)>('CoInternetIsFeatureEnabledForUrl');

int CoInternetIsFeatureZoneElevationEnabled(
  Pointer<Utf16> szFromURL,
  Pointer<Utf16> szToURL,
  Pointer<COMObject> pSecMgr,
  int dwFlags,
) =>
    _CoInternetIsFeatureZoneElevationEnabled(
      szFromURL,
      szToURL,
      pSecMgr,
      dwFlags,
    );

late final _CoInternetIsFeatureZoneElevationEnabled = _urlmon.lookupFunction<
    Int32 Function(
  Pointer<Utf16> szFromURL,
  Pointer<Utf16> szToURL,
  Pointer<COMObject> pSecMgr,
  Uint32 dwFlags,
),
    int Function(
  Pointer<Utf16> szFromURL,
  Pointer<Utf16> szToURL,
  Pointer<COMObject> pSecMgr,
  int dwFlags,
)>('CoInternetIsFeatureZoneElevationEnabled');

int CoInternetParseIUri(
  Pointer<COMObject> pIUri,
  int ParseAction,
  int dwFlags,
  Pointer<Utf16> pwzResult,
  int cchResult,
  Pointer<Uint32> pcchResult,
  int dwReserved,
) =>
    _CoInternetParseIUri(
      pIUri,
      ParseAction,
      dwFlags,
      pwzResult,
      cchResult,
      pcchResult,
      dwReserved,
    );

late final _CoInternetParseIUri = _urlmon.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pIUri,
  Int32 ParseAction,
  Uint32 dwFlags,
  Pointer<Utf16> pwzResult,
  Uint32 cchResult,
  Pointer<Uint32> pcchResult,
  IntPtr dwReserved,
),
    int Function(
  Pointer<COMObject> pIUri,
  int ParseAction,
  int dwFlags,
  Pointer<Utf16> pwzResult,
  int cchResult,
  Pointer<Uint32> pcchResult,
  int dwReserved,
)>('CoInternetParseIUri');

int CoInternetParseUrl(
  Pointer<Utf16> pwzUrl,
  int ParseAction,
  int dwFlags,
  Pointer<Utf16> pszResult,
  int cchResult,
  Pointer<Uint32> pcchResult,
  int dwReserved,
) =>
    _CoInternetParseUrl(
      pwzUrl,
      ParseAction,
      dwFlags,
      pszResult,
      cchResult,
      pcchResult,
      dwReserved,
    );

late final _CoInternetParseUrl = _urlmon.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwzUrl,
  Int32 ParseAction,
  Uint32 dwFlags,
  Pointer<Utf16> pszResult,
  Uint32 cchResult,
  Pointer<Uint32> pcchResult,
  Uint32 dwReserved,
),
    int Function(
  Pointer<Utf16> pwzUrl,
  int ParseAction,
  int dwFlags,
  Pointer<Utf16> pszResult,
  int cchResult,
  Pointer<Uint32> pcchResult,
  int dwReserved,
)>('CoInternetParseUrl');

int CoInternetQueryInfo(
  Pointer<Utf16> pwzUrl,
  int QueryOptions,
  int dwQueryFlags,
  Pointer pvBuffer,
  int cbBuffer,
  Pointer<Uint32> pcbBuffer,
  int dwReserved,
) =>
    _CoInternetQueryInfo(
      pwzUrl,
      QueryOptions,
      dwQueryFlags,
      pvBuffer,
      cbBuffer,
      pcbBuffer,
      dwReserved,
    );

late final _CoInternetQueryInfo = _urlmon.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwzUrl,
  Int32 QueryOptions,
  Uint32 dwQueryFlags,
  Pointer pvBuffer,
  Uint32 cbBuffer,
  Pointer<Uint32> pcbBuffer,
  Uint32 dwReserved,
),
    int Function(
  Pointer<Utf16> pwzUrl,
  int QueryOptions,
  int dwQueryFlags,
  Pointer pvBuffer,
  int cbBuffer,
  Pointer<Uint32> pcbBuffer,
  int dwReserved,
)>('CoInternetQueryInfo');

int CoInternetSetFeatureEnabled(
  int FeatureEntry,
  int dwFlags,
  int fEnable,
) =>
    _CoInternetSetFeatureEnabled(
      FeatureEntry,
      dwFlags,
      fEnable,
    );

late final _CoInternetSetFeatureEnabled = _urlmon.lookupFunction<
    Int32 Function(
  Int32 FeatureEntry,
  Uint32 dwFlags,
  Int32 fEnable,
),
    int Function(
  int FeatureEntry,
  int dwFlags,
  int fEnable,
)>('CoInternetSetFeatureEnabled');

int CompareSecurityIds(
  Pointer<Uint8> pbSecurityId1,
  int dwLen1,
  Pointer<Uint8> pbSecurityId2,
  int dwLen2,
  int dwReserved,
) =>
    _CompareSecurityIds(
      pbSecurityId1,
      dwLen1,
      pbSecurityId2,
      dwLen2,
      dwReserved,
    );

late final _CompareSecurityIds = _urlmon.lookupFunction<
    Int32 Function(
  Pointer<Uint8> pbSecurityId1,
  Uint32 dwLen1,
  Pointer<Uint8> pbSecurityId2,
  Uint32 dwLen2,
  Uint32 dwReserved,
),
    int Function(
  Pointer<Uint8> pbSecurityId1,
  int dwLen1,
  Pointer<Uint8> pbSecurityId2,
  int dwLen2,
  int dwReserved,
)>('CompareSecurityIds');

int CompatFlagsFromClsid(
  Pointer<GUID> pclsid,
  Pointer<Uint32> pdwCompatFlags,
  Pointer<Uint32> pdwMiscStatusFlags,
) =>
    _CompatFlagsFromClsid(
      pclsid,
      pdwCompatFlags,
      pdwMiscStatusFlags,
    );

late final _CompatFlagsFromClsid = _urlmon.lookupFunction<
    Int32 Function(
  Pointer<GUID> pclsid,
  Pointer<Uint32> pdwCompatFlags,
  Pointer<Uint32> pdwMiscStatusFlags,
),
    int Function(
  Pointer<GUID> pclsid,
  Pointer<Uint32> pdwCompatFlags,
  Pointer<Uint32> pdwMiscStatusFlags,
)>('CompatFlagsFromClsid');

int CopyBindInfo(
  Pointer<BINDINFO> pcbiSrc,
  Pointer<BINDINFO> pbiDest,
) =>
    _CopyBindInfo(
      pcbiSrc,
      pbiDest,
    );

late final _CopyBindInfo = _urlmon.lookupFunction<
    Int32 Function(
  Pointer<BINDINFO> pcbiSrc,
  Pointer<BINDINFO> pbiDest,
),
    int Function(
  Pointer<BINDINFO> pcbiSrc,
  Pointer<BINDINFO> pbiDest,
)>('CopyBindInfo');

int CopyStgMedium(
  Pointer<STGMEDIUM> pcstgmedSrc,
  Pointer<STGMEDIUM> pstgmedDest,
) =>
    _CopyStgMedium(
      pcstgmedSrc,
      pstgmedDest,
    );

late final _CopyStgMedium = _urlmon.lookupFunction<
    Int32 Function(
  Pointer<STGMEDIUM> pcstgmedSrc,
  Pointer<STGMEDIUM> pstgmedDest,
),
    int Function(
  Pointer<STGMEDIUM> pcstgmedSrc,
  Pointer<STGMEDIUM> pstgmedDest,
)>('CopyStgMedium');

int CreateAsyncBindCtx(
  int reserved,
  Pointer<COMObject> pBSCb,
  Pointer<COMObject> pEFetc,
  Pointer<Pointer<COMObject>> ppBC,
) =>
    _CreateAsyncBindCtx(
      reserved,
      pBSCb,
      pEFetc,
      ppBC,
    );

late final _CreateAsyncBindCtx = _urlmon.lookupFunction<
    Int32 Function(
  Uint32 reserved,
  Pointer<COMObject> pBSCb,
  Pointer<COMObject> pEFetc,
  Pointer<Pointer<COMObject>> ppBC,
),
    int Function(
  int reserved,
  Pointer<COMObject> pBSCb,
  Pointer<COMObject> pEFetc,
  Pointer<Pointer<COMObject>> ppBC,
)>('CreateAsyncBindCtx');

int CreateAsyncBindCtxEx(
  Pointer<COMObject> pbc,
  int dwOptions,
  Pointer<COMObject> pBSCb,
  Pointer<COMObject> pEnum,
  Pointer<Pointer<COMObject>> ppBC,
  int reserved,
) =>
    _CreateAsyncBindCtxEx(
      pbc,
      dwOptions,
      pBSCb,
      pEnum,
      ppBC,
      reserved,
    );

late final _CreateAsyncBindCtxEx = _urlmon.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pbc,
  Uint32 dwOptions,
  Pointer<COMObject> pBSCb,
  Pointer<COMObject> pEnum,
  Pointer<Pointer<COMObject>> ppBC,
  Uint32 reserved,
),
    int Function(
  Pointer<COMObject> pbc,
  int dwOptions,
  Pointer<COMObject> pBSCb,
  Pointer<COMObject> pEnum,
  Pointer<Pointer<COMObject>> ppBC,
  int reserved,
)>('CreateAsyncBindCtxEx');

int CreateFormatEnumerator(
  int cfmtetc,
  Pointer<FORMATETC> rgfmtetc,
  Pointer<Pointer<COMObject>> ppenumfmtetc,
) =>
    _CreateFormatEnumerator(
      cfmtetc,
      rgfmtetc,
      ppenumfmtetc,
    );

late final _CreateFormatEnumerator = _urlmon.lookupFunction<
    Int32 Function(
  Uint32 cfmtetc,
  Pointer<FORMATETC> rgfmtetc,
  Pointer<Pointer<COMObject>> ppenumfmtetc,
),
    int Function(
  int cfmtetc,
  Pointer<FORMATETC> rgfmtetc,
  Pointer<Pointer<COMObject>> ppenumfmtetc,
)>('CreateFormatEnumerator');

int CreateURLMoniker(
  Pointer<COMObject> pMkCtx,
  Pointer<Utf16> szURL,
  Pointer<Pointer<COMObject>> ppmk,
) =>
    _CreateURLMoniker(
      pMkCtx,
      szURL,
      ppmk,
    );

late final _CreateURLMoniker = _urlmon.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pMkCtx,
  Pointer<Utf16> szURL,
  Pointer<Pointer<COMObject>> ppmk,
),
    int Function(
  Pointer<COMObject> pMkCtx,
  Pointer<Utf16> szURL,
  Pointer<Pointer<COMObject>> ppmk,
)>('CreateURLMoniker');

int CreateURLMonikerEx(
  Pointer<COMObject> pMkCtx,
  Pointer<Utf16> szURL,
  Pointer<Pointer<COMObject>> ppmk,
  int dwFlags,
) =>
    _CreateURLMonikerEx(
      pMkCtx,
      szURL,
      ppmk,
      dwFlags,
    );

late final _CreateURLMonikerEx = _urlmon.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pMkCtx,
  Pointer<Utf16> szURL,
  Pointer<Pointer<COMObject>> ppmk,
  Uint32 dwFlags,
),
    int Function(
  Pointer<COMObject> pMkCtx,
  Pointer<Utf16> szURL,
  Pointer<Pointer<COMObject>> ppmk,
  int dwFlags,
)>('CreateURLMonikerEx');

int CreateURLMonikerEx2(
  Pointer<COMObject> pMkCtx,
  Pointer<COMObject> pUri,
  Pointer<Pointer<COMObject>> ppmk,
  int dwFlags,
) =>
    _CreateURLMonikerEx2(
      pMkCtx,
      pUri,
      ppmk,
      dwFlags,
    );

late final _CreateURLMonikerEx2 = _urlmon.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pMkCtx,
  Pointer<COMObject> pUri,
  Pointer<Pointer<COMObject>> ppmk,
  Uint32 dwFlags,
),
    int Function(
  Pointer<COMObject> pMkCtx,
  Pointer<COMObject> pUri,
  Pointer<Pointer<COMObject>> ppmk,
  int dwFlags,
)>('CreateURLMonikerEx2');

int FaultInIEFeature(
  int hWnd,
  Pointer<uCLSSPEC> pClassSpec,
  Pointer<QUERYCONTEXT> pQuery,
  int dwFlags,
) =>
    _FaultInIEFeature(
      hWnd,
      pClassSpec,
      pQuery,
      dwFlags,
    );

late final _FaultInIEFeature = _urlmon.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
  Pointer<uCLSSPEC> pClassSpec,
  Pointer<QUERYCONTEXT> pQuery,
  Uint32 dwFlags,
),
    int Function(
  int hWnd,
  Pointer<uCLSSPEC> pClassSpec,
  Pointer<QUERYCONTEXT> pQuery,
  int dwFlags,
)>('FaultInIEFeature');

int FindMediaType(
  Pointer<Utf8> rgszTypes,
  Pointer<Uint16> rgcfTypes,
) =>
    _FindMediaType(
      rgszTypes,
      rgcfTypes,
    );

late final _FindMediaType = _urlmon.lookupFunction<
    Int32 Function(
  Pointer<Utf8> rgszTypes,
  Pointer<Uint16> rgcfTypes,
),
    int Function(
  Pointer<Utf8> rgszTypes,
  Pointer<Uint16> rgcfTypes,
)>('FindMediaType');

int FindMediaTypeClass(
  Pointer<COMObject> pBC,
  Pointer<Utf8> szType,
  Pointer<GUID> pclsID,
  int reserved,
) =>
    _FindMediaTypeClass(
      pBC,
      szType,
      pclsID,
      reserved,
    );

late final _FindMediaTypeClass = _urlmon.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pBC,
  Pointer<Utf8> szType,
  Pointer<GUID> pclsID,
  Uint32 reserved,
),
    int Function(
  Pointer<COMObject> pBC,
  Pointer<Utf8> szType,
  Pointer<GUID> pclsID,
  int reserved,
)>('FindMediaTypeClass');

int FindMimeFromData(
  Pointer<COMObject> pBC,
  Pointer<Utf16> pwzUrl,
  Pointer pBuffer,
  int cbSize,
  Pointer<Utf16> pwzMimeProposed,
  int dwMimeFlags,
  Pointer<Pointer<Utf16>> ppwzMimeOut,
  int dwReserved,
) =>
    _FindMimeFromData(
      pBC,
      pwzUrl,
      pBuffer,
      cbSize,
      pwzMimeProposed,
      dwMimeFlags,
      ppwzMimeOut,
      dwReserved,
    );

late final _FindMimeFromData = _urlmon.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pBC,
  Pointer<Utf16> pwzUrl,
  Pointer pBuffer,
  Uint32 cbSize,
  Pointer<Utf16> pwzMimeProposed,
  Uint32 dwMimeFlags,
  Pointer<Pointer<Utf16>> ppwzMimeOut,
  Uint32 dwReserved,
),
    int Function(
  Pointer<COMObject> pBC,
  Pointer<Utf16> pwzUrl,
  Pointer pBuffer,
  int cbSize,
  Pointer<Utf16> pwzMimeProposed,
  int dwMimeFlags,
  Pointer<Pointer<Utf16>> ppwzMimeOut,
  int dwReserved,
)>('FindMimeFromData');

int GetClassFileOrMime(
  Pointer<COMObject> pBC,
  Pointer<Utf16> szFilename,
  Pointer pBuffer,
  int cbSize,
  Pointer<Utf16> szMime,
  int dwReserved,
  Pointer<GUID> pclsid,
) =>
    _GetClassFileOrMime(
      pBC,
      szFilename,
      pBuffer,
      cbSize,
      szMime,
      dwReserved,
      pclsid,
    );

late final _GetClassFileOrMime = _urlmon.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pBC,
  Pointer<Utf16> szFilename,
  Pointer pBuffer,
  Uint32 cbSize,
  Pointer<Utf16> szMime,
  Uint32 dwReserved,
  Pointer<GUID> pclsid,
),
    int Function(
  Pointer<COMObject> pBC,
  Pointer<Utf16> szFilename,
  Pointer pBuffer,
  int cbSize,
  Pointer<Utf16> szMime,
  int dwReserved,
  Pointer<GUID> pclsid,
)>('GetClassFileOrMime');

int GetClassURL(
  Pointer<Utf16> szURL,
  Pointer<GUID> pClsID,
) =>
    _GetClassURL(
      szURL,
      pClsID,
    );

late final _GetClassURL = _urlmon.lookupFunction<
    Int32 Function(
  Pointer<Utf16> szURL,
  Pointer<GUID> pClsID,
),
    int Function(
  Pointer<Utf16> szURL,
  Pointer<GUID> pClsID,
)>('GetClassURL');

int GetComponentIDFromCLSSPEC(
  Pointer<uCLSSPEC> pClassspec,
  Pointer<Pointer<Utf8>> ppszComponentID,
) =>
    _GetComponentIDFromCLSSPEC(
      pClassspec,
      ppszComponentID,
    );

late final _GetComponentIDFromCLSSPEC = _urlmon.lookupFunction<
    Int32 Function(
  Pointer<uCLSSPEC> pClassspec,
  Pointer<Pointer<Utf8>> ppszComponentID,
),
    int Function(
  Pointer<uCLSSPEC> pClassspec,
  Pointer<Pointer<Utf8>> ppszComponentID,
)>('GetComponentIDFromCLSSPEC');

int GetSoftwareUpdateInfo(
  Pointer<Utf16> szDistUnit,
  Pointer<SOFTDISTINFO> psdi,
) =>
    _GetSoftwareUpdateInfo(
      szDistUnit,
      psdi,
    );

late final _GetSoftwareUpdateInfo = _urlmon.lookupFunction<
    Int32 Function(
  Pointer<Utf16> szDistUnit,
  Pointer<SOFTDISTINFO> psdi,
),
    int Function(
  Pointer<Utf16> szDistUnit,
  Pointer<SOFTDISTINFO> psdi,
)>('GetSoftwareUpdateInfo');

int HlinkGoBack(
  Pointer<COMObject> pUnk,
) =>
    _HlinkGoBack(
      pUnk,
    );

late final _HlinkGoBack = _urlmon.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pUnk,
),
    int Function(
  Pointer<COMObject> pUnk,
)>('HlinkGoBack');

int HlinkGoForward(
  Pointer<COMObject> pUnk,
) =>
    _HlinkGoForward(
      pUnk,
    );

late final _HlinkGoForward = _urlmon.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pUnk,
),
    int Function(
  Pointer<COMObject> pUnk,
)>('HlinkGoForward');

int HlinkNavigateMoniker(
  Pointer<COMObject> pUnk,
  Pointer<COMObject> pmkTarget,
) =>
    _HlinkNavigateMoniker(
      pUnk,
      pmkTarget,
    );

late final _HlinkNavigateMoniker = _urlmon.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pUnk,
  Pointer<COMObject> pmkTarget,
),
    int Function(
  Pointer<COMObject> pUnk,
  Pointer<COMObject> pmkTarget,
)>('HlinkNavigateMoniker');

int HlinkNavigateString(
  Pointer<COMObject> pUnk,
  Pointer<Utf16> szTarget,
) =>
    _HlinkNavigateString(
      pUnk,
      szTarget,
    );

late final _HlinkNavigateString = _urlmon.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pUnk,
  Pointer<Utf16> szTarget,
),
    int Function(
  Pointer<COMObject> pUnk,
  Pointer<Utf16> szTarget,
)>('HlinkNavigateString');

int HlinkSimpleNavigateToMoniker(
  Pointer<COMObject> pmkTarget,
  Pointer<Utf16> szLocation,
  Pointer<Utf16> szTargetFrameName,
  Pointer<COMObject> pUnk,
  Pointer<COMObject> pbc,
  Pointer<COMObject> param5,
  int grfHLNF,
  int dwReserved,
) =>
    _HlinkSimpleNavigateToMoniker(
      pmkTarget,
      szLocation,
      szTargetFrameName,
      pUnk,
      pbc,
      param5,
      grfHLNF,
      dwReserved,
    );

late final _HlinkSimpleNavigateToMoniker = _urlmon.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pmkTarget,
  Pointer<Utf16> szLocation,
  Pointer<Utf16> szTargetFrameName,
  Pointer<COMObject> pUnk,
  Pointer<COMObject> pbc,
  Pointer<COMObject> param5,
  Uint32 grfHLNF,
  Uint32 dwReserved,
),
    int Function(
  Pointer<COMObject> pmkTarget,
  Pointer<Utf16> szLocation,
  Pointer<Utf16> szTargetFrameName,
  Pointer<COMObject> pUnk,
  Pointer<COMObject> pbc,
  Pointer<COMObject> param5,
  int grfHLNF,
  int dwReserved,
)>('HlinkSimpleNavigateToMoniker');

int HlinkSimpleNavigateToString(
  Pointer<Utf16> szTarget,
  Pointer<Utf16> szLocation,
  Pointer<Utf16> szTargetFrameName,
  Pointer<COMObject> pUnk,
  Pointer<COMObject> pbc,
  Pointer<COMObject> param5,
  int grfHLNF,
  int dwReserved,
) =>
    _HlinkSimpleNavigateToString(
      szTarget,
      szLocation,
      szTargetFrameName,
      pUnk,
      pbc,
      param5,
      grfHLNF,
      dwReserved,
    );

late final _HlinkSimpleNavigateToString = _urlmon.lookupFunction<
    Int32 Function(
  Pointer<Utf16> szTarget,
  Pointer<Utf16> szLocation,
  Pointer<Utf16> szTargetFrameName,
  Pointer<COMObject> pUnk,
  Pointer<COMObject> pbc,
  Pointer<COMObject> param5,
  Uint32 grfHLNF,
  Uint32 dwReserved,
),
    int Function(
  Pointer<Utf16> szTarget,
  Pointer<Utf16> szLocation,
  Pointer<Utf16> szTargetFrameName,
  Pointer<COMObject> pUnk,
  Pointer<COMObject> pbc,
  Pointer<COMObject> param5,
  int grfHLNF,
  int dwReserved,
)>('HlinkSimpleNavigateToString');

Pointer<Utf16> IEGetUserPrivateNamespaceName() =>
    _IEGetUserPrivateNamespaceName();

late final _IEGetUserPrivateNamespaceName = _urlmon.lookupFunction<
    Pointer<Utf16> Function(),
    Pointer<Utf16> Function()>('IEGetUserPrivateNamespaceName');

int IEInstallScope(
  Pointer<Uint32> pdwScope,
) =>
    _IEInstallScope(
      pdwScope,
    );

late final _IEInstallScope = _urlmon.lookupFunction<
    Int32 Function(
  Pointer<Uint32> pdwScope,
),
    int Function(
  Pointer<Uint32> pdwScope,
)>('IEInstallScope');

int IsAsyncMoniker(
  Pointer<COMObject> pmk,
) =>
    _IsAsyncMoniker(
      pmk,
    );

late final _IsAsyncMoniker = _urlmon.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pmk,
),
    int Function(
  Pointer<COMObject> pmk,
)>('IsAsyncMoniker');

int IsLoggingEnabled(
  Pointer<Utf16> pwszUrl,
) =>
    _IsLoggingEnabled(
      pwszUrl,
    );

late final _IsLoggingEnabled = _urlmon.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwszUrl,
),
    int Function(
  Pointer<Utf16> pwszUrl,
)>('IsLoggingEnabledW');

int IsValidURL(
  Pointer<COMObject> pBC,
  Pointer<Utf16> szURL,
  int dwReserved,
) =>
    _IsValidURL(
      pBC,
      szURL,
      dwReserved,
    );

late final _IsValidURL = _urlmon.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pBC,
  Pointer<Utf16> szURL,
  Uint32 dwReserved,
),
    int Function(
  Pointer<COMObject> pBC,
  Pointer<Utf16> szURL,
  int dwReserved,
)>('IsValidURL');

int MkParseDisplayNameEx(
  Pointer<COMObject> pbc,
  Pointer<Utf16> szDisplayName,
  Pointer<Uint32> pchEaten,
  Pointer<Pointer<COMObject>> ppmk,
) =>
    _MkParseDisplayNameEx(
      pbc,
      szDisplayName,
      pchEaten,
      ppmk,
    );

late final _MkParseDisplayNameEx = _urlmon.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pbc,
  Pointer<Utf16> szDisplayName,
  Pointer<Uint32> pchEaten,
  Pointer<Pointer<COMObject>> ppmk,
),
    int Function(
  Pointer<COMObject> pbc,
  Pointer<Utf16> szDisplayName,
  Pointer<Uint32> pchEaten,
  Pointer<Pointer<COMObject>> ppmk,
)>('MkParseDisplayNameEx');

int ObtainUserAgentString(
  int dwOption,
  Pointer<Utf8> pszUAOut,
  Pointer<Uint32> cbSize,
) =>
    _ObtainUserAgentString(
      dwOption,
      pszUAOut,
      cbSize,
    );

late final _ObtainUserAgentString = _urlmon.lookupFunction<
    Int32 Function(
  Uint32 dwOption,
  Pointer<Utf8> pszUAOut,
  Pointer<Uint32> cbSize,
),
    int Function(
  int dwOption,
  Pointer<Utf8> pszUAOut,
  Pointer<Uint32> cbSize,
)>('ObtainUserAgentString');

int RegisterBindStatusCallback(
  Pointer<COMObject> pBC,
  Pointer<COMObject> pBSCb,
  Pointer<Pointer<COMObject>> ppBSCBPrev,
  int dwReserved,
) =>
    _RegisterBindStatusCallback(
      pBC,
      pBSCb,
      ppBSCBPrev,
      dwReserved,
    );

late final _RegisterBindStatusCallback = _urlmon.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pBC,
  Pointer<COMObject> pBSCb,
  Pointer<Pointer<COMObject>> ppBSCBPrev,
  Uint32 dwReserved,
),
    int Function(
  Pointer<COMObject> pBC,
  Pointer<COMObject> pBSCb,
  Pointer<Pointer<COMObject>> ppBSCBPrev,
  int dwReserved,
)>('RegisterBindStatusCallback');

int RegisterFormatEnumerator(
  Pointer<COMObject> pBC,
  Pointer<COMObject> pEFetc,
  int reserved,
) =>
    _RegisterFormatEnumerator(
      pBC,
      pEFetc,
      reserved,
    );

late final _RegisterFormatEnumerator = _urlmon.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pBC,
  Pointer<COMObject> pEFetc,
  Uint32 reserved,
),
    int Function(
  Pointer<COMObject> pBC,
  Pointer<COMObject> pEFetc,
  int reserved,
)>('RegisterFormatEnumerator');

int RegisterMediaTypeClass(
  Pointer<COMObject> pBC,
  int ctypes,
  Pointer<Pointer<Utf8>> rgszTypes,
  Pointer<GUID> rgclsID,
  int reserved,
) =>
    _RegisterMediaTypeClass(
      pBC,
      ctypes,
      rgszTypes,
      rgclsID,
      reserved,
    );

late final _RegisterMediaTypeClass = _urlmon.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pBC,
  Uint32 ctypes,
  Pointer<Pointer<Utf8>> rgszTypes,
  Pointer<GUID> rgclsID,
  Uint32 reserved,
),
    int Function(
  Pointer<COMObject> pBC,
  int ctypes,
  Pointer<Pointer<Utf8>> rgszTypes,
  Pointer<GUID> rgclsID,
  int reserved,
)>('RegisterMediaTypeClass');

int RegisterMediaTypes(
  int ctypes,
  Pointer<Pointer<Utf8>> rgszTypes,
  Pointer<Uint16> rgcfTypes,
) =>
    _RegisterMediaTypes(
      ctypes,
      rgszTypes,
      rgcfTypes,
    );

late final _RegisterMediaTypes = _urlmon.lookupFunction<
    Int32 Function(
  Uint32 ctypes,
  Pointer<Pointer<Utf8>> rgszTypes,
  Pointer<Uint16> rgcfTypes,
),
    int Function(
  int ctypes,
  Pointer<Pointer<Utf8>> rgszTypes,
  Pointer<Uint16> rgcfTypes,
)>('RegisterMediaTypes');

void ReleaseBindInfo(
  Pointer<BINDINFO> pbindinfo,
) =>
    _ReleaseBindInfo(
      pbindinfo,
    );

late final _ReleaseBindInfo = _urlmon.lookupFunction<
    Void Function(
  Pointer<BINDINFO> pbindinfo,
),
    void Function(
  Pointer<BINDINFO> pbindinfo,
)>('ReleaseBindInfo');

int RevokeBindStatusCallback(
  Pointer<COMObject> pBC,
  Pointer<COMObject> pBSCb,
) =>
    _RevokeBindStatusCallback(
      pBC,
      pBSCb,
    );

late final _RevokeBindStatusCallback = _urlmon.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pBC,
  Pointer<COMObject> pBSCb,
),
    int Function(
  Pointer<COMObject> pBC,
  Pointer<COMObject> pBSCb,
)>('RevokeBindStatusCallback');

int RevokeFormatEnumerator(
  Pointer<COMObject> pBC,
  Pointer<COMObject> pEFetc,
) =>
    _RevokeFormatEnumerator(
      pBC,
      pEFetc,
    );

late final _RevokeFormatEnumerator = _urlmon.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pBC,
  Pointer<COMObject> pEFetc,
),
    int Function(
  Pointer<COMObject> pBC,
  Pointer<COMObject> pEFetc,
)>('RevokeFormatEnumerator');

int SetAccessForIEAppContainer(
  int hObject,
  int ieObjectType,
  int dwAccessMask,
) =>
    _SetAccessForIEAppContainer(
      hObject,
      ieObjectType,
      dwAccessMask,
    );

late final _SetAccessForIEAppContainer = _urlmon.lookupFunction<
    Int32 Function(
  IntPtr hObject,
  Int32 ieObjectType,
  Uint32 dwAccessMask,
),
    int Function(
  int hObject,
  int ieObjectType,
  int dwAccessMask,
)>('SetAccessForIEAppContainer');

int SetSoftwareUpdateAdvertisementState(
  Pointer<Utf16> szDistUnit,
  int dwAdState,
  int dwAdvertisedVersionMS,
  int dwAdvertisedVersionLS,
) =>
    _SetSoftwareUpdateAdvertisementState(
      szDistUnit,
      dwAdState,
      dwAdvertisedVersionMS,
      dwAdvertisedVersionLS,
    );

late final _SetSoftwareUpdateAdvertisementState = _urlmon.lookupFunction<
    Int32 Function(
  Pointer<Utf16> szDistUnit,
  Uint32 dwAdState,
  Uint32 dwAdvertisedVersionMS,
  Uint32 dwAdvertisedVersionLS,
),
    int Function(
  Pointer<Utf16> szDistUnit,
  int dwAdState,
  int dwAdvertisedVersionMS,
  int dwAdvertisedVersionLS,
)>('SetSoftwareUpdateAdvertisementState');

int URLDownloadToCacheFile(
  Pointer<COMObject> param0,
  Pointer<Utf16> param1,
  Pointer<Utf16> param2,
  int cchFileName,
  int param4,
  Pointer<COMObject> param5,
) =>
    _URLDownloadToCacheFile(
      param0,
      param1,
      param2,
      cchFileName,
      param4,
      param5,
    );

late final _URLDownloadToCacheFile = _urlmon.lookupFunction<
    Int32 Function(
  Pointer<COMObject> param0,
  Pointer<Utf16> param1,
  Pointer<Utf16> param2,
  Uint32 cchFileName,
  Uint32 param4,
  Pointer<COMObject> param5,
),
    int Function(
  Pointer<COMObject> param0,
  Pointer<Utf16> param1,
  Pointer<Utf16> param2,
  int cchFileName,
  int param4,
  Pointer<COMObject> param5,
)>('URLDownloadToCacheFileW');

int URLDownloadToFile(
  Pointer<COMObject> param0,
  Pointer<Utf16> param1,
  Pointer<Utf16> param2,
  int param3,
  Pointer<COMObject> param4,
) =>
    _URLDownloadToFile(
      param0,
      param1,
      param2,
      param3,
      param4,
    );

late final _URLDownloadToFile = _urlmon.lookupFunction<
    Int32 Function(
  Pointer<COMObject> param0,
  Pointer<Utf16> param1,
  Pointer<Utf16> param2,
  Uint32 param3,
  Pointer<COMObject> param4,
),
    int Function(
  Pointer<COMObject> param0,
  Pointer<Utf16> param1,
  Pointer<Utf16> param2,
  int param3,
  Pointer<COMObject> param4,
)>('URLDownloadToFileW');

int URLOpenBlockingStream(
  Pointer<COMObject> param0,
  Pointer<Utf16> param1,
  Pointer<Pointer<COMObject>> param2,
  int param3,
  Pointer<COMObject> param4,
) =>
    _URLOpenBlockingStream(
      param0,
      param1,
      param2,
      param3,
      param4,
    );

late final _URLOpenBlockingStream = _urlmon.lookupFunction<
    Int32 Function(
  Pointer<COMObject> param0,
  Pointer<Utf16> param1,
  Pointer<Pointer<COMObject>> param2,
  Uint32 param3,
  Pointer<COMObject> param4,
),
    int Function(
  Pointer<COMObject> param0,
  Pointer<Utf16> param1,
  Pointer<Pointer<COMObject>> param2,
  int param3,
  Pointer<COMObject> param4,
)>('URLOpenBlockingStreamW');

int URLOpenPullStream(
  Pointer<COMObject> param0,
  Pointer<Utf16> param1,
  int param2,
  Pointer<COMObject> param3,
) =>
    _URLOpenPullStream(
      param0,
      param1,
      param2,
      param3,
    );

late final _URLOpenPullStream = _urlmon.lookupFunction<
    Int32 Function(
  Pointer<COMObject> param0,
  Pointer<Utf16> param1,
  Uint32 param2,
  Pointer<COMObject> param3,
),
    int Function(
  Pointer<COMObject> param0,
  Pointer<Utf16> param1,
  int param2,
  Pointer<COMObject> param3,
)>('URLOpenPullStreamW');

int URLOpenStream(
  Pointer<COMObject> param0,
  Pointer<Utf16> param1,
  int param2,
  Pointer<COMObject> param3,
) =>
    _URLOpenStream(
      param0,
      param1,
      param2,
      param3,
    );

late final _URLOpenStream = _urlmon.lookupFunction<
    Int32 Function(
  Pointer<COMObject> param0,
  Pointer<Utf16> param1,
  Uint32 param2,
  Pointer<COMObject> param3,
),
    int Function(
  Pointer<COMObject> param0,
  Pointer<Utf16> param1,
  int param2,
  Pointer<COMObject> param3,
)>('URLOpenStreamW');

int UrlMkGetSessionOption(
  int dwOption,
  Pointer pBuffer,
  int dwBufferLength,
  Pointer<Uint32> pdwBufferLengthOut,
  int dwReserved,
) =>
    _UrlMkGetSessionOption(
      dwOption,
      pBuffer,
      dwBufferLength,
      pdwBufferLengthOut,
      dwReserved,
    );

late final _UrlMkGetSessionOption = _urlmon.lookupFunction<
    Int32 Function(
  Uint32 dwOption,
  Pointer pBuffer,
  Uint32 dwBufferLength,
  Pointer<Uint32> pdwBufferLengthOut,
  Uint32 dwReserved,
),
    int Function(
  int dwOption,
  Pointer pBuffer,
  int dwBufferLength,
  Pointer<Uint32> pdwBufferLengthOut,
  int dwReserved,
)>('UrlMkGetSessionOption');

int UrlMkSetSessionOption(
  int dwOption,
  Pointer pBuffer,
  int dwBufferLength,
  int dwReserved,
) =>
    _UrlMkSetSessionOption(
      dwOption,
      pBuffer,
      dwBufferLength,
      dwReserved,
    );

late final _UrlMkSetSessionOption = _urlmon.lookupFunction<
    Int32 Function(
  Uint32 dwOption,
  Pointer pBuffer,
  Uint32 dwBufferLength,
  Uint32 dwReserved,
),
    int Function(
  int dwOption,
  Pointer pBuffer,
  int dwBufferLength,
  int dwReserved,
)>('UrlMkSetSessionOption');

int WriteHitLogging(
  Pointer<HIT_LOGGING_INFO> lpLogginginfo,
) =>
    _WriteHitLogging(
      lpLogginginfo,
    );

late final _WriteHitLogging = _urlmon.lookupFunction<
    Int32 Function(
  Pointer<HIT_LOGGING_INFO> lpLogginginfo,
),
    int Function(
  Pointer<HIT_LOGGING_INFO> lpLogginginfo,
)>('WriteHitLogging');
