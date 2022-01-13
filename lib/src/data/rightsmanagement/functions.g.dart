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
import '../../data/rightsmanagement/structs.g.dart';
import '../../data/rightsmanagement/callbacks.g.dart';
import '../../foundation/callbacks.g.dart'; // -----------------------------------------------------------------------

// msdrm.dll
// -----------------------------------------------------------------------
final _msdrm = DynamicLibrary.open('msdrm.dll');

int DRMAcquireAdvisories(
  int hLicenseStorage,
  Pointer<Utf16> wszLicense,
  Pointer<Utf16> wszURL,
  Pointer pvContext,
) =>
    _DRMAcquireAdvisories(
      hLicenseStorage,
      wszLicense,
      wszURL,
      pvContext,
    );

late final _DRMAcquireAdvisories = _msdrm.lookupFunction<
    Int32 Function(
  Uint32 hLicenseStorage,
  Pointer<Utf16> wszLicense,
  Pointer<Utf16> wszURL,
  Pointer pvContext,
),
    int Function(
  int hLicenseStorage,
  Pointer<Utf16> wszLicense,
  Pointer<Utf16> wszURL,
  Pointer pvContext,
)>('DRMAcquireAdvisories');

int DRMAcquireIssuanceLicenseTemplate(
  int hClient,
  int uFlags,
  Pointer pvReserved,
  int cTemplates,
  Pointer<Pointer<Utf16>> pwszTemplateIds,
  Pointer<Utf16> wszUrl,
  Pointer pvContext,
) =>
    _DRMAcquireIssuanceLicenseTemplate(
      hClient,
      uFlags,
      pvReserved,
      cTemplates,
      pwszTemplateIds,
      wszUrl,
      pvContext,
    );

late final _DRMAcquireIssuanceLicenseTemplate = _msdrm.lookupFunction<
    Int32 Function(
  Uint32 hClient,
  Uint32 uFlags,
  Pointer pvReserved,
  Uint32 cTemplates,
  Pointer<Pointer<Utf16>> pwszTemplateIds,
  Pointer<Utf16> wszUrl,
  Pointer pvContext,
),
    int Function(
  int hClient,
  int uFlags,
  Pointer pvReserved,
  int cTemplates,
  Pointer<Pointer<Utf16>> pwszTemplateIds,
  Pointer<Utf16> wszUrl,
  Pointer pvContext,
)>('DRMAcquireIssuanceLicenseTemplate');

int DRMAcquireLicense(
  int hSession,
  int uFlags,
  Pointer<Utf16> wszGroupIdentityCredential,
  Pointer<Utf16> wszRequestedRights,
  Pointer<Utf16> wszCustomData,
  Pointer<Utf16> wszURL,
  Pointer pvContext,
) =>
    _DRMAcquireLicense(
      hSession,
      uFlags,
      wszGroupIdentityCredential,
      wszRequestedRights,
      wszCustomData,
      wszURL,
      pvContext,
    );

late final _DRMAcquireLicense = _msdrm.lookupFunction<
    Int32 Function(
  Uint32 hSession,
  Uint32 uFlags,
  Pointer<Utf16> wszGroupIdentityCredential,
  Pointer<Utf16> wszRequestedRights,
  Pointer<Utf16> wszCustomData,
  Pointer<Utf16> wszURL,
  Pointer pvContext,
),
    int Function(
  int hSession,
  int uFlags,
  Pointer<Utf16> wszGroupIdentityCredential,
  Pointer<Utf16> wszRequestedRights,
  Pointer<Utf16> wszCustomData,
  Pointer<Utf16> wszURL,
  Pointer pvContext,
)>('DRMAcquireLicense');

int DRMActivate(
  int hClient,
  int uFlags,
  int uLangID,
  Pointer<DRM_ACTSERV_INFO> pActServInfo,
  Pointer pvContext,
  int hParentWnd,
) =>
    _DRMActivate(
      hClient,
      uFlags,
      uLangID,
      pActServInfo,
      pvContext,
      hParentWnd,
    );

late final _DRMActivate = _msdrm.lookupFunction<
    Int32 Function(
  Uint32 hClient,
  Uint32 uFlags,
  Uint32 uLangID,
  Pointer<DRM_ACTSERV_INFO> pActServInfo,
  Pointer pvContext,
  IntPtr hParentWnd,
),
    int Function(
  int hClient,
  int uFlags,
  int uLangID,
  Pointer<DRM_ACTSERV_INFO> pActServInfo,
  Pointer pvContext,
  int hParentWnd,
)>('DRMActivate');

int DRMAddLicense(
  int hLicenseStorage,
  int uFlags,
  Pointer<Utf16> wszLicense,
) =>
    _DRMAddLicense(
      hLicenseStorage,
      uFlags,
      wszLicense,
    );

late final _DRMAddLicense = _msdrm.lookupFunction<
    Int32 Function(
  Uint32 hLicenseStorage,
  Uint32 uFlags,
  Pointer<Utf16> wszLicense,
),
    int Function(
  int hLicenseStorage,
  int uFlags,
  Pointer<Utf16> wszLicense,
)>('DRMAddLicense');

int DRMAddRightWithUser(
  int hIssuanceLicense,
  int hRight,
  int hUser,
) =>
    _DRMAddRightWithUser(
      hIssuanceLicense,
      hRight,
      hUser,
    );

late final _DRMAddRightWithUser = _msdrm.lookupFunction<
    Int32 Function(
  Uint32 hIssuanceLicense,
  Uint32 hRight,
  Uint32 hUser,
),
    int Function(
  int hIssuanceLicense,
  int hRight,
  int hUser,
)>('DRMAddRightWithUser');

int DRMAttest(
  int hEnablingPrincipal,
  Pointer<Utf16> wszData,
  int eType,
  Pointer<Uint32> pcAttestedBlob,
  Pointer<Utf16> wszAttestedBlob,
) =>
    _DRMAttest(
      hEnablingPrincipal,
      wszData,
      eType,
      pcAttestedBlob,
      wszAttestedBlob,
    );

late final _DRMAttest = _msdrm.lookupFunction<
    Int32 Function(
  Uint32 hEnablingPrincipal,
  Pointer<Utf16> wszData,
  Int32 eType,
  Pointer<Uint32> pcAttestedBlob,
  Pointer<Utf16> wszAttestedBlob,
),
    int Function(
  int hEnablingPrincipal,
  Pointer<Utf16> wszData,
  int eType,
  Pointer<Uint32> pcAttestedBlob,
  Pointer<Utf16> wszAttestedBlob,
)>('DRMAttest');

int DRMCheckSecurity(
  int hEnv,
  int cLevel,
) =>
    _DRMCheckSecurity(
      hEnv,
      cLevel,
    );

late final _DRMCheckSecurity = _msdrm.lookupFunction<
    Int32 Function(
  Uint32 hEnv,
  Uint32 cLevel,
),
    int Function(
  int hEnv,
  int cLevel,
)>('DRMCheckSecurity');

int DRMClearAllRights(
  int hIssuanceLicense,
) =>
    _DRMClearAllRights(
      hIssuanceLicense,
    );

late final _DRMClearAllRights = _msdrm.lookupFunction<
    Int32 Function(
  Uint32 hIssuanceLicense,
),
    int Function(
  int hIssuanceLicense,
)>('DRMClearAllRights');

int DRMCloseEnvironmentHandle(
  int hEnv,
) =>
    _DRMCloseEnvironmentHandle(
      hEnv,
    );

late final _DRMCloseEnvironmentHandle = _msdrm.lookupFunction<
    Int32 Function(
  Uint32 hEnv,
),
    int Function(
  int hEnv,
)>('DRMCloseEnvironmentHandle');

int DRMCloseHandle(
  int handle,
) =>
    _DRMCloseHandle(
      handle,
    );

late final _DRMCloseHandle = _msdrm.lookupFunction<
    Int32 Function(
  Uint32 handle,
),
    int Function(
  int handle,
)>('DRMCloseHandle');

int DRMClosePubHandle(
  int hPub,
) =>
    _DRMClosePubHandle(
      hPub,
    );

late final _DRMClosePubHandle = _msdrm.lookupFunction<
    Int32 Function(
  Uint32 hPub,
),
    int Function(
  int hPub,
)>('DRMClosePubHandle');

int DRMCloseQueryHandle(
  int hQuery,
) =>
    _DRMCloseQueryHandle(
      hQuery,
    );

late final _DRMCloseQueryHandle = _msdrm.lookupFunction<
    Int32 Function(
  Uint32 hQuery,
),
    int Function(
  int hQuery,
)>('DRMCloseQueryHandle');

int DRMCloseSession(
  int hSession,
) =>
    _DRMCloseSession(
      hSession,
    );

late final _DRMCloseSession = _msdrm.lookupFunction<
    Int32 Function(
  Uint32 hSession,
),
    int Function(
  int hSession,
)>('DRMCloseSession');

int DRMConstructCertificateChain(
  int cCertificates,
  Pointer<Pointer<Utf16>> rgwszCertificates,
  Pointer<Uint32> pcChain,
  Pointer<Utf16> wszChain,
) =>
    _DRMConstructCertificateChain(
      cCertificates,
      rgwszCertificates,
      pcChain,
      wszChain,
    );

late final _DRMConstructCertificateChain = _msdrm.lookupFunction<
    Int32 Function(
  Uint32 cCertificates,
  Pointer<Pointer<Utf16>> rgwszCertificates,
  Pointer<Uint32> pcChain,
  Pointer<Utf16> wszChain,
),
    int Function(
  int cCertificates,
  Pointer<Pointer<Utf16>> rgwszCertificates,
  Pointer<Uint32> pcChain,
  Pointer<Utf16> wszChain,
)>('DRMConstructCertificateChain');

int DRMCreateBoundLicense(
  int hEnv,
  Pointer<DRMBOUNDLICENSEPARAMS> pParams,
  Pointer<Utf16> wszLicenseChain,
  Pointer<Uint32> phBoundLicense,
  Pointer<Uint32> phErrorLog,
) =>
    _DRMCreateBoundLicense(
      hEnv,
      pParams,
      wszLicenseChain,
      phBoundLicense,
      phErrorLog,
    );

late final _DRMCreateBoundLicense = _msdrm.lookupFunction<
    Int32 Function(
  Uint32 hEnv,
  Pointer<DRMBOUNDLICENSEPARAMS> pParams,
  Pointer<Utf16> wszLicenseChain,
  Pointer<Uint32> phBoundLicense,
  Pointer<Uint32> phErrorLog,
),
    int Function(
  int hEnv,
  Pointer<DRMBOUNDLICENSEPARAMS> pParams,
  Pointer<Utf16> wszLicenseChain,
  Pointer<Uint32> phBoundLicense,
  Pointer<Uint32> phErrorLog,
)>('DRMCreateBoundLicense');

int DRMCreateClientSession(
  Pointer<NativeFunction<DRMCALLBACK>> pfnCallback,
  int uCallbackVersion,
  Pointer<Utf16> wszGroupIDProviderType,
  Pointer<Utf16> wszGroupID,
  Pointer<Uint32> phClient,
) =>
    _DRMCreateClientSession(
      pfnCallback,
      uCallbackVersion,
      wszGroupIDProviderType,
      wszGroupID,
      phClient,
    );

late final _DRMCreateClientSession = _msdrm.lookupFunction<
    Int32 Function(
  Pointer<NativeFunction<DRMCALLBACK>> pfnCallback,
  Uint32 uCallbackVersion,
  Pointer<Utf16> wszGroupIDProviderType,
  Pointer<Utf16> wszGroupID,
  Pointer<Uint32> phClient,
),
    int Function(
  Pointer<NativeFunction<DRMCALLBACK>> pfnCallback,
  int uCallbackVersion,
  Pointer<Utf16> wszGroupIDProviderType,
  Pointer<Utf16> wszGroupID,
  Pointer<Uint32> phClient,
)>('DRMCreateClientSession');

int DRMCreateEnablingBitsDecryptor(
  int hBoundLicense,
  Pointer<Utf16> wszRight,
  int hAuxLib,
  Pointer<Utf16> wszAuxPlug,
  Pointer<Uint32> phDecryptor,
) =>
    _DRMCreateEnablingBitsDecryptor(
      hBoundLicense,
      wszRight,
      hAuxLib,
      wszAuxPlug,
      phDecryptor,
    );

late final _DRMCreateEnablingBitsDecryptor = _msdrm.lookupFunction<
    Int32 Function(
  Uint32 hBoundLicense,
  Pointer<Utf16> wszRight,
  Uint32 hAuxLib,
  Pointer<Utf16> wszAuxPlug,
  Pointer<Uint32> phDecryptor,
),
    int Function(
  int hBoundLicense,
  Pointer<Utf16> wszRight,
  int hAuxLib,
  Pointer<Utf16> wszAuxPlug,
  Pointer<Uint32> phDecryptor,
)>('DRMCreateEnablingBitsDecryptor');

int DRMCreateEnablingBitsEncryptor(
  int hBoundLicense,
  Pointer<Utf16> wszRight,
  int hAuxLib,
  Pointer<Utf16> wszAuxPlug,
  Pointer<Uint32> phEncryptor,
) =>
    _DRMCreateEnablingBitsEncryptor(
      hBoundLicense,
      wszRight,
      hAuxLib,
      wszAuxPlug,
      phEncryptor,
    );

late final _DRMCreateEnablingBitsEncryptor = _msdrm.lookupFunction<
    Int32 Function(
  Uint32 hBoundLicense,
  Pointer<Utf16> wszRight,
  Uint32 hAuxLib,
  Pointer<Utf16> wszAuxPlug,
  Pointer<Uint32> phEncryptor,
),
    int Function(
  int hBoundLicense,
  Pointer<Utf16> wszRight,
  int hAuxLib,
  Pointer<Utf16> wszAuxPlug,
  Pointer<Uint32> phEncryptor,
)>('DRMCreateEnablingBitsEncryptor');

int DRMCreateEnablingPrincipal(
  int hEnv,
  int hLibrary,
  Pointer<Utf16> wszObject,
  Pointer<DRMID> pidPrincipal,
  Pointer<Utf16> wszCredentials,
  Pointer<Uint32> phEnablingPrincipal,
) =>
    _DRMCreateEnablingPrincipal(
      hEnv,
      hLibrary,
      wszObject,
      pidPrincipal,
      wszCredentials,
      phEnablingPrincipal,
    );

late final _DRMCreateEnablingPrincipal = _msdrm.lookupFunction<
    Int32 Function(
  Uint32 hEnv,
  Uint32 hLibrary,
  Pointer<Utf16> wszObject,
  Pointer<DRMID> pidPrincipal,
  Pointer<Utf16> wszCredentials,
  Pointer<Uint32> phEnablingPrincipal,
),
    int Function(
  int hEnv,
  int hLibrary,
  Pointer<Utf16> wszObject,
  Pointer<DRMID> pidPrincipal,
  Pointer<Utf16> wszCredentials,
  Pointer<Uint32> phEnablingPrincipal,
)>('DRMCreateEnablingPrincipal');

int DRMCreateIssuanceLicense(
  Pointer<SYSTEMTIME> pstTimeFrom,
  Pointer<SYSTEMTIME> pstTimeUntil,
  Pointer<Utf16> wszReferralInfoName,
  Pointer<Utf16> wszReferralInfoURL,
  int hOwner,
  Pointer<Utf16> wszIssuanceLicense,
  int hBoundLicense,
  Pointer<Uint32> phIssuanceLicense,
) =>
    _DRMCreateIssuanceLicense(
      pstTimeFrom,
      pstTimeUntil,
      wszReferralInfoName,
      wszReferralInfoURL,
      hOwner,
      wszIssuanceLicense,
      hBoundLicense,
      phIssuanceLicense,
    );

late final _DRMCreateIssuanceLicense = _msdrm.lookupFunction<
    Int32 Function(
  Pointer<SYSTEMTIME> pstTimeFrom,
  Pointer<SYSTEMTIME> pstTimeUntil,
  Pointer<Utf16> wszReferralInfoName,
  Pointer<Utf16> wszReferralInfoURL,
  Uint32 hOwner,
  Pointer<Utf16> wszIssuanceLicense,
  Uint32 hBoundLicense,
  Pointer<Uint32> phIssuanceLicense,
),
    int Function(
  Pointer<SYSTEMTIME> pstTimeFrom,
  Pointer<SYSTEMTIME> pstTimeUntil,
  Pointer<Utf16> wszReferralInfoName,
  Pointer<Utf16> wszReferralInfoURL,
  int hOwner,
  Pointer<Utf16> wszIssuanceLicense,
  int hBoundLicense,
  Pointer<Uint32> phIssuanceLicense,
)>('DRMCreateIssuanceLicense');

int DRMCreateLicenseStorageSession(
  int hEnv,
  int hDefaultLibrary,
  int hClient,
  int uFlags,
  Pointer<Utf16> wszIssuanceLicense,
  Pointer<Uint32> phLicenseStorage,
) =>
    _DRMCreateLicenseStorageSession(
      hEnv,
      hDefaultLibrary,
      hClient,
      uFlags,
      wszIssuanceLicense,
      phLicenseStorage,
    );

late final _DRMCreateLicenseStorageSession = _msdrm.lookupFunction<
    Int32 Function(
  Uint32 hEnv,
  Uint32 hDefaultLibrary,
  Uint32 hClient,
  Uint32 uFlags,
  Pointer<Utf16> wszIssuanceLicense,
  Pointer<Uint32> phLicenseStorage,
),
    int Function(
  int hEnv,
  int hDefaultLibrary,
  int hClient,
  int uFlags,
  Pointer<Utf16> wszIssuanceLicense,
  Pointer<Uint32> phLicenseStorage,
)>('DRMCreateLicenseStorageSession');

int DRMCreateRight(
  Pointer<Utf16> wszRightName,
  Pointer<SYSTEMTIME> pstFrom,
  Pointer<SYSTEMTIME> pstUntil,
  int cExtendedInfo,
  Pointer<Pointer<Utf16>> pwszExtendedInfoName,
  Pointer<Pointer<Utf16>> pwszExtendedInfoValue,
  Pointer<Uint32> phRight,
) =>
    _DRMCreateRight(
      wszRightName,
      pstFrom,
      pstUntil,
      cExtendedInfo,
      pwszExtendedInfoName,
      pwszExtendedInfoValue,
      phRight,
    );

late final _DRMCreateRight = _msdrm.lookupFunction<
    Int32 Function(
  Pointer<Utf16> wszRightName,
  Pointer<SYSTEMTIME> pstFrom,
  Pointer<SYSTEMTIME> pstUntil,
  Uint32 cExtendedInfo,
  Pointer<Pointer<Utf16>> pwszExtendedInfoName,
  Pointer<Pointer<Utf16>> pwszExtendedInfoValue,
  Pointer<Uint32> phRight,
),
    int Function(
  Pointer<Utf16> wszRightName,
  Pointer<SYSTEMTIME> pstFrom,
  Pointer<SYSTEMTIME> pstUntil,
  int cExtendedInfo,
  Pointer<Pointer<Utf16>> pwszExtendedInfoName,
  Pointer<Pointer<Utf16>> pwszExtendedInfoValue,
  Pointer<Uint32> phRight,
)>('DRMCreateRight');

int DRMCreateUser(
  Pointer<Utf16> wszUserName,
  Pointer<Utf16> wszUserId,
  Pointer<Utf16> wszUserIdType,
  Pointer<Uint32> phUser,
) =>
    _DRMCreateUser(
      wszUserName,
      wszUserId,
      wszUserIdType,
      phUser,
    );

late final _DRMCreateUser = _msdrm.lookupFunction<
    Int32 Function(
  Pointer<Utf16> wszUserName,
  Pointer<Utf16> wszUserId,
  Pointer<Utf16> wszUserIdType,
  Pointer<Uint32> phUser,
),
    int Function(
  Pointer<Utf16> wszUserName,
  Pointer<Utf16> wszUserId,
  Pointer<Utf16> wszUserIdType,
  Pointer<Uint32> phUser,
)>('DRMCreateUser');

int DRMDecode(
  Pointer<Utf16> wszAlgID,
  Pointer<Utf16> wszEncodedString,
  Pointer<Uint32> puDecodedDataLen,
  Pointer<Uint8> pbDecodedData,
) =>
    _DRMDecode(
      wszAlgID,
      wszEncodedString,
      puDecodedDataLen,
      pbDecodedData,
    );

late final _DRMDecode = _msdrm.lookupFunction<
    Int32 Function(
  Pointer<Utf16> wszAlgID,
  Pointer<Utf16> wszEncodedString,
  Pointer<Uint32> puDecodedDataLen,
  Pointer<Uint8> pbDecodedData,
),
    int Function(
  Pointer<Utf16> wszAlgID,
  Pointer<Utf16> wszEncodedString,
  Pointer<Uint32> puDecodedDataLen,
  Pointer<Uint8> pbDecodedData,
)>('DRMDecode');

int DRMDeconstructCertificateChain(
  Pointer<Utf16> wszChain,
  int iWhich,
  Pointer<Uint32> pcCert,
  Pointer<Utf16> wszCert,
) =>
    _DRMDeconstructCertificateChain(
      wszChain,
      iWhich,
      pcCert,
      wszCert,
    );

late final _DRMDeconstructCertificateChain = _msdrm.lookupFunction<
    Int32 Function(
  Pointer<Utf16> wszChain,
  Uint32 iWhich,
  Pointer<Uint32> pcCert,
  Pointer<Utf16> wszCert,
),
    int Function(
  Pointer<Utf16> wszChain,
  int iWhich,
  Pointer<Uint32> pcCert,
  Pointer<Utf16> wszCert,
)>('DRMDeconstructCertificateChain');

int DRMDecrypt(
  int hCryptoProvider,
  int iPosition,
  int cNumInBytes,
  Pointer<Uint8> pbInData,
  Pointer<Uint32> pcNumOutBytes,
  Pointer<Uint8> pbOutData,
) =>
    _DRMDecrypt(
      hCryptoProvider,
      iPosition,
      cNumInBytes,
      pbInData,
      pcNumOutBytes,
      pbOutData,
    );

late final _DRMDecrypt = _msdrm.lookupFunction<
    Int32 Function(
  Uint32 hCryptoProvider,
  Uint32 iPosition,
  Uint32 cNumInBytes,
  Pointer<Uint8> pbInData,
  Pointer<Uint32> pcNumOutBytes,
  Pointer<Uint8> pbOutData,
),
    int Function(
  int hCryptoProvider,
  int iPosition,
  int cNumInBytes,
  Pointer<Uint8> pbInData,
  Pointer<Uint32> pcNumOutBytes,
  Pointer<Uint8> pbOutData,
)>('DRMDecrypt');

int DRMDeleteLicense(
  int hSession,
  Pointer<Utf16> wszLicenseId,
) =>
    _DRMDeleteLicense(
      hSession,
      wszLicenseId,
    );

late final _DRMDeleteLicense = _msdrm.lookupFunction<
    Int32 Function(
  Uint32 hSession,
  Pointer<Utf16> wszLicenseId,
),
    int Function(
  int hSession,
  Pointer<Utf16> wszLicenseId,
)>('DRMDeleteLicense');

int DRMDuplicateEnvironmentHandle(
  int hToCopy,
  Pointer<Uint32> phCopy,
) =>
    _DRMDuplicateEnvironmentHandle(
      hToCopy,
      phCopy,
    );

late final _DRMDuplicateEnvironmentHandle = _msdrm.lookupFunction<
    Int32 Function(
  Uint32 hToCopy,
  Pointer<Uint32> phCopy,
),
    int Function(
  int hToCopy,
  Pointer<Uint32> phCopy,
)>('DRMDuplicateEnvironmentHandle');

int DRMDuplicateHandle(
  int hToCopy,
  Pointer<Uint32> phCopy,
) =>
    _DRMDuplicateHandle(
      hToCopy,
      phCopy,
    );

late final _DRMDuplicateHandle = _msdrm.lookupFunction<
    Int32 Function(
  Uint32 hToCopy,
  Pointer<Uint32> phCopy,
),
    int Function(
  int hToCopy,
  Pointer<Uint32> phCopy,
)>('DRMDuplicateHandle');

int DRMDuplicatePubHandle(
  int hPubIn,
  Pointer<Uint32> phPubOut,
) =>
    _DRMDuplicatePubHandle(
      hPubIn,
      phPubOut,
    );

late final _DRMDuplicatePubHandle = _msdrm.lookupFunction<
    Int32 Function(
  Uint32 hPubIn,
  Pointer<Uint32> phPubOut,
),
    int Function(
  int hPubIn,
  Pointer<Uint32> phPubOut,
)>('DRMDuplicatePubHandle');

int DRMDuplicateSession(
  int hSessionIn,
  Pointer<Uint32> phSessionOut,
) =>
    _DRMDuplicateSession(
      hSessionIn,
      phSessionOut,
    );

late final _DRMDuplicateSession = _msdrm.lookupFunction<
    Int32 Function(
  Uint32 hSessionIn,
  Pointer<Uint32> phSessionOut,
),
    int Function(
  int hSessionIn,
  Pointer<Uint32> phSessionOut,
)>('DRMDuplicateSession');

int DRMEncode(
  Pointer<Utf16> wszAlgID,
  int uDataLen,
  Pointer<Uint8> pbDecodedData,
  Pointer<Uint32> puEncodedStringLen,
  Pointer<Utf16> wszEncodedString,
) =>
    _DRMEncode(
      wszAlgID,
      uDataLen,
      pbDecodedData,
      puEncodedStringLen,
      wszEncodedString,
    );

late final _DRMEncode = _msdrm.lookupFunction<
    Int32 Function(
  Pointer<Utf16> wszAlgID,
  Uint32 uDataLen,
  Pointer<Uint8> pbDecodedData,
  Pointer<Uint32> puEncodedStringLen,
  Pointer<Utf16> wszEncodedString,
),
    int Function(
  Pointer<Utf16> wszAlgID,
  int uDataLen,
  Pointer<Uint8> pbDecodedData,
  Pointer<Uint32> puEncodedStringLen,
  Pointer<Utf16> wszEncodedString,
)>('DRMEncode');

int DRMEncrypt(
  int hCryptoProvider,
  int iPosition,
  int cNumInBytes,
  Pointer<Uint8> pbInData,
  Pointer<Uint32> pcNumOutBytes,
  Pointer<Uint8> pbOutData,
) =>
    _DRMEncrypt(
      hCryptoProvider,
      iPosition,
      cNumInBytes,
      pbInData,
      pcNumOutBytes,
      pbOutData,
    );

late final _DRMEncrypt = _msdrm.lookupFunction<
    Int32 Function(
  Uint32 hCryptoProvider,
  Uint32 iPosition,
  Uint32 cNumInBytes,
  Pointer<Uint8> pbInData,
  Pointer<Uint32> pcNumOutBytes,
  Pointer<Uint8> pbOutData,
),
    int Function(
  int hCryptoProvider,
  int iPosition,
  int cNumInBytes,
  Pointer<Uint8> pbInData,
  Pointer<Uint32> pcNumOutBytes,
  Pointer<Uint8> pbOutData,
)>('DRMEncrypt');

int DRMEnumerateLicense(
  int hSession,
  int uFlags,
  int uIndex,
  Pointer<Int32> pfSharedFlag,
  Pointer<Uint32> puCertificateDataLen,
  Pointer<Utf16> wszCertificateData,
) =>
    _DRMEnumerateLicense(
      hSession,
      uFlags,
      uIndex,
      pfSharedFlag,
      puCertificateDataLen,
      wszCertificateData,
    );

late final _DRMEnumerateLicense = _msdrm.lookupFunction<
    Int32 Function(
  Uint32 hSession,
  Uint32 uFlags,
  Uint32 uIndex,
  Pointer<Int32> pfSharedFlag,
  Pointer<Uint32> puCertificateDataLen,
  Pointer<Utf16> wszCertificateData,
),
    int Function(
  int hSession,
  int uFlags,
  int uIndex,
  Pointer<Int32> pfSharedFlag,
  Pointer<Uint32> puCertificateDataLen,
  Pointer<Utf16> wszCertificateData,
)>('DRMEnumerateLicense');

int DRMGetApplicationSpecificData(
  int hIssuanceLicense,
  int uIndex,
  Pointer<Uint32> puNameLength,
  Pointer<Utf16> wszName,
  Pointer<Uint32> puValueLength,
  Pointer<Utf16> wszValue,
) =>
    _DRMGetApplicationSpecificData(
      hIssuanceLicense,
      uIndex,
      puNameLength,
      wszName,
      puValueLength,
      wszValue,
    );

late final _DRMGetApplicationSpecificData = _msdrm.lookupFunction<
    Int32 Function(
  Uint32 hIssuanceLicense,
  Uint32 uIndex,
  Pointer<Uint32> puNameLength,
  Pointer<Utf16> wszName,
  Pointer<Uint32> puValueLength,
  Pointer<Utf16> wszValue,
),
    int Function(
  int hIssuanceLicense,
  int uIndex,
  Pointer<Uint32> puNameLength,
  Pointer<Utf16> wszName,
  Pointer<Uint32> puValueLength,
  Pointer<Utf16> wszValue,
)>('DRMGetApplicationSpecificData');

int DRMGetBoundLicenseAttribute(
  int hQueryRoot,
  Pointer<Utf16> wszAttribute,
  int iWhich,
  Pointer<Int32> peEncoding,
  Pointer<Uint32> pcBuffer,
  Pointer<Uint8> pbBuffer,
) =>
    _DRMGetBoundLicenseAttribute(
      hQueryRoot,
      wszAttribute,
      iWhich,
      peEncoding,
      pcBuffer,
      pbBuffer,
    );

late final _DRMGetBoundLicenseAttribute = _msdrm.lookupFunction<
    Int32 Function(
  Uint32 hQueryRoot,
  Pointer<Utf16> wszAttribute,
  Uint32 iWhich,
  Pointer<Int32> peEncoding,
  Pointer<Uint32> pcBuffer,
  Pointer<Uint8> pbBuffer,
),
    int Function(
  int hQueryRoot,
  Pointer<Utf16> wszAttribute,
  int iWhich,
  Pointer<Int32> peEncoding,
  Pointer<Uint32> pcBuffer,
  Pointer<Uint8> pbBuffer,
)>('DRMGetBoundLicenseAttribute');

int DRMGetBoundLicenseAttributeCount(
  int hQueryRoot,
  Pointer<Utf16> wszAttribute,
  Pointer<Uint32> pcAttributes,
) =>
    _DRMGetBoundLicenseAttributeCount(
      hQueryRoot,
      wszAttribute,
      pcAttributes,
    );

late final _DRMGetBoundLicenseAttributeCount = _msdrm.lookupFunction<
    Int32 Function(
  Uint32 hQueryRoot,
  Pointer<Utf16> wszAttribute,
  Pointer<Uint32> pcAttributes,
),
    int Function(
  int hQueryRoot,
  Pointer<Utf16> wszAttribute,
  Pointer<Uint32> pcAttributes,
)>('DRMGetBoundLicenseAttributeCount');

int DRMGetBoundLicenseObject(
  int hQueryRoot,
  Pointer<Utf16> wszSubObjectType,
  int iWhich,
  Pointer<Uint32> phSubObject,
) =>
    _DRMGetBoundLicenseObject(
      hQueryRoot,
      wszSubObjectType,
      iWhich,
      phSubObject,
    );

late final _DRMGetBoundLicenseObject = _msdrm.lookupFunction<
    Int32 Function(
  Uint32 hQueryRoot,
  Pointer<Utf16> wszSubObjectType,
  Uint32 iWhich,
  Pointer<Uint32> phSubObject,
),
    int Function(
  int hQueryRoot,
  Pointer<Utf16> wszSubObjectType,
  int iWhich,
  Pointer<Uint32> phSubObject,
)>('DRMGetBoundLicenseObject');

int DRMGetBoundLicenseObjectCount(
  int hQueryRoot,
  Pointer<Utf16> wszSubObjectType,
  Pointer<Uint32> pcSubObjects,
) =>
    _DRMGetBoundLicenseObjectCount(
      hQueryRoot,
      wszSubObjectType,
      pcSubObjects,
    );

late final _DRMGetBoundLicenseObjectCount = _msdrm.lookupFunction<
    Int32 Function(
  Uint32 hQueryRoot,
  Pointer<Utf16> wszSubObjectType,
  Pointer<Uint32> pcSubObjects,
),
    int Function(
  int hQueryRoot,
  Pointer<Utf16> wszSubObjectType,
  Pointer<Uint32> pcSubObjects,
)>('DRMGetBoundLicenseObjectCount');

int DRMGetCertificateChainCount(
  Pointer<Utf16> wszChain,
  Pointer<Uint32> pcCertCount,
) =>
    _DRMGetCertificateChainCount(
      wszChain,
      pcCertCount,
    );

late final _DRMGetCertificateChainCount = _msdrm.lookupFunction<
    Int32 Function(
  Pointer<Utf16> wszChain,
  Pointer<Uint32> pcCertCount,
),
    int Function(
  Pointer<Utf16> wszChain,
  Pointer<Uint32> pcCertCount,
)>('DRMGetCertificateChainCount');

int DRMGetClientVersion(
  Pointer<DRM_CLIENT_VERSION_INFO> pDRMClientVersionInfo,
) =>
    _DRMGetClientVersion(
      pDRMClientVersionInfo,
    );

late final _DRMGetClientVersion = _msdrm.lookupFunction<
    Int32 Function(
  Pointer<DRM_CLIENT_VERSION_INFO> pDRMClientVersionInfo,
),
    int Function(
  Pointer<DRM_CLIENT_VERSION_INFO> pDRMClientVersionInfo,
)>('DRMGetClientVersion');

int DRMGetEnvironmentInfo(
  int handle,
  Pointer<Utf16> wszAttribute,
  Pointer<Int32> peEncoding,
  Pointer<Uint32> pcBuffer,
  Pointer<Uint8> pbBuffer,
) =>
    _DRMGetEnvironmentInfo(
      handle,
      wszAttribute,
      peEncoding,
      pcBuffer,
      pbBuffer,
    );

late final _DRMGetEnvironmentInfo = _msdrm.lookupFunction<
    Int32 Function(
  Uint32 handle,
  Pointer<Utf16> wszAttribute,
  Pointer<Int32> peEncoding,
  Pointer<Uint32> pcBuffer,
  Pointer<Uint8> pbBuffer,
),
    int Function(
  int handle,
  Pointer<Utf16> wszAttribute,
  Pointer<Int32> peEncoding,
  Pointer<Uint32> pcBuffer,
  Pointer<Uint8> pbBuffer,
)>('DRMGetEnvironmentInfo');

int DRMGetInfo(
  int handle,
  Pointer<Utf16> wszAttribute,
  Pointer<Int32> peEncoding,
  Pointer<Uint32> pcBuffer,
  Pointer<Uint8> pbBuffer,
) =>
    _DRMGetInfo(
      handle,
      wszAttribute,
      peEncoding,
      pcBuffer,
      pbBuffer,
    );

late final _DRMGetInfo = _msdrm.lookupFunction<
    Int32 Function(
  Uint32 handle,
  Pointer<Utf16> wszAttribute,
  Pointer<Int32> peEncoding,
  Pointer<Uint32> pcBuffer,
  Pointer<Uint8> pbBuffer,
),
    int Function(
  int handle,
  Pointer<Utf16> wszAttribute,
  Pointer<Int32> peEncoding,
  Pointer<Uint32> pcBuffer,
  Pointer<Uint8> pbBuffer,
)>('DRMGetInfo');

int DRMGetIntervalTime(
  int hIssuanceLicense,
  Pointer<Uint32> pcDays,
) =>
    _DRMGetIntervalTime(
      hIssuanceLicense,
      pcDays,
    );

late final _DRMGetIntervalTime = _msdrm.lookupFunction<
    Int32 Function(
  Uint32 hIssuanceLicense,
  Pointer<Uint32> pcDays,
),
    int Function(
  int hIssuanceLicense,
  Pointer<Uint32> pcDays,
)>('DRMGetIntervalTime');

int DRMGetIssuanceLicenseInfo(
  int hIssuanceLicense,
  Pointer<SYSTEMTIME> pstTimeFrom,
  Pointer<SYSTEMTIME> pstTimeUntil,
  int uFlags,
  Pointer<Uint32> puDistributionPointNameLength,
  Pointer<Utf16> wszDistributionPointName,
  Pointer<Uint32> puDistributionPointURLLength,
  Pointer<Utf16> wszDistributionPointURL,
  Pointer<Uint32> phOwner,
  Pointer<Int32> pfOfficial,
) =>
    _DRMGetIssuanceLicenseInfo(
      hIssuanceLicense,
      pstTimeFrom,
      pstTimeUntil,
      uFlags,
      puDistributionPointNameLength,
      wszDistributionPointName,
      puDistributionPointURLLength,
      wszDistributionPointURL,
      phOwner,
      pfOfficial,
    );

late final _DRMGetIssuanceLicenseInfo = _msdrm.lookupFunction<
    Int32 Function(
  Uint32 hIssuanceLicense,
  Pointer<SYSTEMTIME> pstTimeFrom,
  Pointer<SYSTEMTIME> pstTimeUntil,
  Uint32 uFlags,
  Pointer<Uint32> puDistributionPointNameLength,
  Pointer<Utf16> wszDistributionPointName,
  Pointer<Uint32> puDistributionPointURLLength,
  Pointer<Utf16> wszDistributionPointURL,
  Pointer<Uint32> phOwner,
  Pointer<Int32> pfOfficial,
),
    int Function(
  int hIssuanceLicense,
  Pointer<SYSTEMTIME> pstTimeFrom,
  Pointer<SYSTEMTIME> pstTimeUntil,
  int uFlags,
  Pointer<Uint32> puDistributionPointNameLength,
  Pointer<Utf16> wszDistributionPointName,
  Pointer<Uint32> puDistributionPointURLLength,
  Pointer<Utf16> wszDistributionPointURL,
  Pointer<Uint32> phOwner,
  Pointer<Int32> pfOfficial,
)>('DRMGetIssuanceLicenseInfo');

int DRMGetIssuanceLicenseTemplate(
  int hIssuanceLicense,
  Pointer<Uint32> puIssuanceLicenseTemplateLength,
  Pointer<Utf16> wszIssuanceLicenseTemplate,
) =>
    _DRMGetIssuanceLicenseTemplate(
      hIssuanceLicense,
      puIssuanceLicenseTemplateLength,
      wszIssuanceLicenseTemplate,
    );

late final _DRMGetIssuanceLicenseTemplate = _msdrm.lookupFunction<
    Int32 Function(
  Uint32 hIssuanceLicense,
  Pointer<Uint32> puIssuanceLicenseTemplateLength,
  Pointer<Utf16> wszIssuanceLicenseTemplate,
),
    int Function(
  int hIssuanceLicense,
  Pointer<Uint32> puIssuanceLicenseTemplateLength,
  Pointer<Utf16> wszIssuanceLicenseTemplate,
)>('DRMGetIssuanceLicenseTemplate');

int DRMGetMetaData(
  int hIssuanceLicense,
  Pointer<Uint32> puContentIdLength,
  Pointer<Utf16> wszContentId,
  Pointer<Uint32> puContentIdTypeLength,
  Pointer<Utf16> wszContentIdType,
  Pointer<Uint32> puSKUIdLength,
  Pointer<Utf16> wszSKUId,
  Pointer<Uint32> puSKUIdTypeLength,
  Pointer<Utf16> wszSKUIdType,
  Pointer<Uint32> puContentTypeLength,
  Pointer<Utf16> wszContentType,
  Pointer<Uint32> puContentNameLength,
  Pointer<Utf16> wszContentName,
) =>
    _DRMGetMetaData(
      hIssuanceLicense,
      puContentIdLength,
      wszContentId,
      puContentIdTypeLength,
      wszContentIdType,
      puSKUIdLength,
      wszSKUId,
      puSKUIdTypeLength,
      wszSKUIdType,
      puContentTypeLength,
      wszContentType,
      puContentNameLength,
      wszContentName,
    );

late final _DRMGetMetaData = _msdrm.lookupFunction<
    Int32 Function(
  Uint32 hIssuanceLicense,
  Pointer<Uint32> puContentIdLength,
  Pointer<Utf16> wszContentId,
  Pointer<Uint32> puContentIdTypeLength,
  Pointer<Utf16> wszContentIdType,
  Pointer<Uint32> puSKUIdLength,
  Pointer<Utf16> wszSKUId,
  Pointer<Uint32> puSKUIdTypeLength,
  Pointer<Utf16> wszSKUIdType,
  Pointer<Uint32> puContentTypeLength,
  Pointer<Utf16> wszContentType,
  Pointer<Uint32> puContentNameLength,
  Pointer<Utf16> wszContentName,
),
    int Function(
  int hIssuanceLicense,
  Pointer<Uint32> puContentIdLength,
  Pointer<Utf16> wszContentId,
  Pointer<Uint32> puContentIdTypeLength,
  Pointer<Utf16> wszContentIdType,
  Pointer<Uint32> puSKUIdLength,
  Pointer<Utf16> wszSKUId,
  Pointer<Uint32> puSKUIdTypeLength,
  Pointer<Utf16> wszSKUIdType,
  Pointer<Uint32> puContentTypeLength,
  Pointer<Utf16> wszContentType,
  Pointer<Uint32> puContentNameLength,
  Pointer<Utf16> wszContentName,
)>('DRMGetMetaData');

int DRMGetNameAndDescription(
  int hIssuanceLicense,
  int uIndex,
  Pointer<Uint32> pulcid,
  Pointer<Uint32> puNameLength,
  Pointer<Utf16> wszName,
  Pointer<Uint32> puDescriptionLength,
  Pointer<Utf16> wszDescription,
) =>
    _DRMGetNameAndDescription(
      hIssuanceLicense,
      uIndex,
      pulcid,
      puNameLength,
      wszName,
      puDescriptionLength,
      wszDescription,
    );

late final _DRMGetNameAndDescription = _msdrm.lookupFunction<
    Int32 Function(
  Uint32 hIssuanceLicense,
  Uint32 uIndex,
  Pointer<Uint32> pulcid,
  Pointer<Uint32> puNameLength,
  Pointer<Utf16> wszName,
  Pointer<Uint32> puDescriptionLength,
  Pointer<Utf16> wszDescription,
),
    int Function(
  int hIssuanceLicense,
  int uIndex,
  Pointer<Uint32> pulcid,
  Pointer<Uint32> puNameLength,
  Pointer<Utf16> wszName,
  Pointer<Uint32> puDescriptionLength,
  Pointer<Utf16> wszDescription,
)>('DRMGetNameAndDescription');

int DRMGetOwnerLicense(
  int hIssuanceLicense,
  Pointer<Uint32> puOwnerLicenseLength,
  Pointer<Utf16> wszOwnerLicense,
) =>
    _DRMGetOwnerLicense(
      hIssuanceLicense,
      puOwnerLicenseLength,
      wszOwnerLicense,
    );

late final _DRMGetOwnerLicense = _msdrm.lookupFunction<
    Int32 Function(
  Uint32 hIssuanceLicense,
  Pointer<Uint32> puOwnerLicenseLength,
  Pointer<Utf16> wszOwnerLicense,
),
    int Function(
  int hIssuanceLicense,
  Pointer<Uint32> puOwnerLicenseLength,
  Pointer<Utf16> wszOwnerLicense,
)>('DRMGetOwnerLicense');

int DRMGetProcAddress(
  int hLibrary,
  Pointer<Utf16> wszProcName,
  Pointer<Pointer> ppfnProcAddress,
) =>
    _DRMGetProcAddress(
      hLibrary,
      wszProcName,
      ppfnProcAddress,
    );

late final _DRMGetProcAddress = _msdrm.lookupFunction<
    Int32 Function(
  Uint32 hLibrary,
  Pointer<Utf16> wszProcName,
  Pointer<Pointer> ppfnProcAddress,
),
    int Function(
  int hLibrary,
  Pointer<Utf16> wszProcName,
  Pointer<Pointer> ppfnProcAddress,
)>('DRMGetProcAddress');

int DRMGetRevocationPoint(
  int hIssuanceLicense,
  Pointer<Uint32> puIdLength,
  Pointer<Utf16> wszId,
  Pointer<Uint32> puIdTypeLength,
  Pointer<Utf16> wszIdType,
  Pointer<Uint32> puURLLength,
  Pointer<Utf16> wszRL,
  Pointer<SYSTEMTIME> pstFrequency,
  Pointer<Uint32> puNameLength,
  Pointer<Utf16> wszName,
  Pointer<Uint32> puPublicKeyLength,
  Pointer<Utf16> wszPublicKey,
) =>
    _DRMGetRevocationPoint(
      hIssuanceLicense,
      puIdLength,
      wszId,
      puIdTypeLength,
      wszIdType,
      puURLLength,
      wszRL,
      pstFrequency,
      puNameLength,
      wszName,
      puPublicKeyLength,
      wszPublicKey,
    );

late final _DRMGetRevocationPoint = _msdrm.lookupFunction<
    Int32 Function(
  Uint32 hIssuanceLicense,
  Pointer<Uint32> puIdLength,
  Pointer<Utf16> wszId,
  Pointer<Uint32> puIdTypeLength,
  Pointer<Utf16> wszIdType,
  Pointer<Uint32> puURLLength,
  Pointer<Utf16> wszRL,
  Pointer<SYSTEMTIME> pstFrequency,
  Pointer<Uint32> puNameLength,
  Pointer<Utf16> wszName,
  Pointer<Uint32> puPublicKeyLength,
  Pointer<Utf16> wszPublicKey,
),
    int Function(
  int hIssuanceLicense,
  Pointer<Uint32> puIdLength,
  Pointer<Utf16> wszId,
  Pointer<Uint32> puIdTypeLength,
  Pointer<Utf16> wszIdType,
  Pointer<Uint32> puURLLength,
  Pointer<Utf16> wszRL,
  Pointer<SYSTEMTIME> pstFrequency,
  Pointer<Uint32> puNameLength,
  Pointer<Utf16> wszName,
  Pointer<Uint32> puPublicKeyLength,
  Pointer<Utf16> wszPublicKey,
)>('DRMGetRevocationPoint');

int DRMGetRightExtendedInfo(
  int hRight,
  int uIndex,
  Pointer<Uint32> puExtendedInfoNameLength,
  Pointer<Utf16> wszExtendedInfoName,
  Pointer<Uint32> puExtendedInfoValueLength,
  Pointer<Utf16> wszExtendedInfoValue,
) =>
    _DRMGetRightExtendedInfo(
      hRight,
      uIndex,
      puExtendedInfoNameLength,
      wszExtendedInfoName,
      puExtendedInfoValueLength,
      wszExtendedInfoValue,
    );

late final _DRMGetRightExtendedInfo = _msdrm.lookupFunction<
    Int32 Function(
  Uint32 hRight,
  Uint32 uIndex,
  Pointer<Uint32> puExtendedInfoNameLength,
  Pointer<Utf16> wszExtendedInfoName,
  Pointer<Uint32> puExtendedInfoValueLength,
  Pointer<Utf16> wszExtendedInfoValue,
),
    int Function(
  int hRight,
  int uIndex,
  Pointer<Uint32> puExtendedInfoNameLength,
  Pointer<Utf16> wszExtendedInfoName,
  Pointer<Uint32> puExtendedInfoValueLength,
  Pointer<Utf16> wszExtendedInfoValue,
)>('DRMGetRightExtendedInfo');

int DRMGetRightInfo(
  int hRight,
  Pointer<Uint32> puRightNameLength,
  Pointer<Utf16> wszRightName,
  Pointer<SYSTEMTIME> pstFrom,
  Pointer<SYSTEMTIME> pstUntil,
) =>
    _DRMGetRightInfo(
      hRight,
      puRightNameLength,
      wszRightName,
      pstFrom,
      pstUntil,
    );

late final _DRMGetRightInfo = _msdrm.lookupFunction<
    Int32 Function(
  Uint32 hRight,
  Pointer<Uint32> puRightNameLength,
  Pointer<Utf16> wszRightName,
  Pointer<SYSTEMTIME> pstFrom,
  Pointer<SYSTEMTIME> pstUntil,
),
    int Function(
  int hRight,
  Pointer<Uint32> puRightNameLength,
  Pointer<Utf16> wszRightName,
  Pointer<SYSTEMTIME> pstFrom,
  Pointer<SYSTEMTIME> pstUntil,
)>('DRMGetRightInfo');

int DRMGetSecurityProvider(
  int uFlags,
  Pointer<Uint32> puTypeLen,
  Pointer<Utf16> wszType,
  Pointer<Uint32> puPathLen,
  Pointer<Utf16> wszPath,
) =>
    _DRMGetSecurityProvider(
      uFlags,
      puTypeLen,
      wszType,
      puPathLen,
      wszPath,
    );

late final _DRMGetSecurityProvider = _msdrm.lookupFunction<
    Int32 Function(
  Uint32 uFlags,
  Pointer<Uint32> puTypeLen,
  Pointer<Utf16> wszType,
  Pointer<Uint32> puPathLen,
  Pointer<Utf16> wszPath,
),
    int Function(
  int uFlags,
  Pointer<Uint32> puTypeLen,
  Pointer<Utf16> wszType,
  Pointer<Uint32> puPathLen,
  Pointer<Utf16> wszPath,
)>('DRMGetSecurityProvider');

int DRMGetServiceLocation(
  int hClient,
  int uServiceType,
  int uServiceLocation,
  Pointer<Utf16> wszIssuanceLicense,
  Pointer<Uint32> puServiceURLLength,
  Pointer<Utf16> wszServiceURL,
) =>
    _DRMGetServiceLocation(
      hClient,
      uServiceType,
      uServiceLocation,
      wszIssuanceLicense,
      puServiceURLLength,
      wszServiceURL,
    );

late final _DRMGetServiceLocation = _msdrm.lookupFunction<
    Int32 Function(
  Uint32 hClient,
  Uint32 uServiceType,
  Uint32 uServiceLocation,
  Pointer<Utf16> wszIssuanceLicense,
  Pointer<Uint32> puServiceURLLength,
  Pointer<Utf16> wszServiceURL,
),
    int Function(
  int hClient,
  int uServiceType,
  int uServiceLocation,
  Pointer<Utf16> wszIssuanceLicense,
  Pointer<Uint32> puServiceURLLength,
  Pointer<Utf16> wszServiceURL,
)>('DRMGetServiceLocation');

int DRMGetSignedIssuanceLicense(
  int hEnv,
  int hIssuanceLicense,
  int uFlags,
  Pointer<Uint8> pbSymKey,
  int cbSymKey,
  Pointer<Utf16> wszSymKeyType,
  Pointer<Utf16> wszClientLicensorCertificate,
  Pointer<NativeFunction<DRMCALLBACK>> pfnCallback,
  Pointer<Utf16> wszURL,
  Pointer pvContext,
) =>
    _DRMGetSignedIssuanceLicense(
      hEnv,
      hIssuanceLicense,
      uFlags,
      pbSymKey,
      cbSymKey,
      wszSymKeyType,
      wszClientLicensorCertificate,
      pfnCallback,
      wszURL,
      pvContext,
    );

late final _DRMGetSignedIssuanceLicense = _msdrm.lookupFunction<
    Int32 Function(
  Uint32 hEnv,
  Uint32 hIssuanceLicense,
  Uint32 uFlags,
  Pointer<Uint8> pbSymKey,
  Uint32 cbSymKey,
  Pointer<Utf16> wszSymKeyType,
  Pointer<Utf16> wszClientLicensorCertificate,
  Pointer<NativeFunction<DRMCALLBACK>> pfnCallback,
  Pointer<Utf16> wszURL,
  Pointer pvContext,
),
    int Function(
  int hEnv,
  int hIssuanceLicense,
  int uFlags,
  Pointer<Uint8> pbSymKey,
  int cbSymKey,
  Pointer<Utf16> wszSymKeyType,
  Pointer<Utf16> wszClientLicensorCertificate,
  Pointer<NativeFunction<DRMCALLBACK>> pfnCallback,
  Pointer<Utf16> wszURL,
  Pointer pvContext,
)>('DRMGetSignedIssuanceLicense');

int DRMGetSignedIssuanceLicenseEx(
  int hEnv,
  int hIssuanceLicense,
  int uFlags,
  Pointer<Uint8> pbSymKey,
  int cbSymKey,
  Pointer<Utf16> wszSymKeyType,
  Pointer pvReserved,
  int hEnablingPrincipal,
  int hBoundLicenseCLC,
  Pointer<NativeFunction<DRMCALLBACK>> pfnCallback,
  Pointer pvContext,
) =>
    _DRMGetSignedIssuanceLicenseEx(
      hEnv,
      hIssuanceLicense,
      uFlags,
      pbSymKey,
      cbSymKey,
      wszSymKeyType,
      pvReserved,
      hEnablingPrincipal,
      hBoundLicenseCLC,
      pfnCallback,
      pvContext,
    );

late final _DRMGetSignedIssuanceLicenseEx = _msdrm.lookupFunction<
    Int32 Function(
  Uint32 hEnv,
  Uint32 hIssuanceLicense,
  Uint32 uFlags,
  Pointer<Uint8> pbSymKey,
  Uint32 cbSymKey,
  Pointer<Utf16> wszSymKeyType,
  Pointer pvReserved,
  Uint32 hEnablingPrincipal,
  Uint32 hBoundLicenseCLC,
  Pointer<NativeFunction<DRMCALLBACK>> pfnCallback,
  Pointer pvContext,
),
    int Function(
  int hEnv,
  int hIssuanceLicense,
  int uFlags,
  Pointer<Uint8> pbSymKey,
  int cbSymKey,
  Pointer<Utf16> wszSymKeyType,
  Pointer pvReserved,
  int hEnablingPrincipal,
  int hBoundLicenseCLC,
  Pointer<NativeFunction<DRMCALLBACK>> pfnCallback,
  Pointer pvContext,
)>('DRMGetSignedIssuanceLicenseEx');

int DRMGetTime(
  int hEnv,
  int eTimerIdType,
  Pointer<SYSTEMTIME> poTimeObject,
) =>
    _DRMGetTime(
      hEnv,
      eTimerIdType,
      poTimeObject,
    );

late final _DRMGetTime = _msdrm.lookupFunction<
    Int32 Function(
  Uint32 hEnv,
  Int32 eTimerIdType,
  Pointer<SYSTEMTIME> poTimeObject,
),
    int Function(
  int hEnv,
  int eTimerIdType,
  Pointer<SYSTEMTIME> poTimeObject,
)>('DRMGetTime');

int DRMGetUnboundLicenseAttribute(
  int hQueryRoot,
  Pointer<Utf16> wszAttributeType,
  int iWhich,
  Pointer<Int32> peEncoding,
  Pointer<Uint32> pcBuffer,
  Pointer<Uint8> pbBuffer,
) =>
    _DRMGetUnboundLicenseAttribute(
      hQueryRoot,
      wszAttributeType,
      iWhich,
      peEncoding,
      pcBuffer,
      pbBuffer,
    );

late final _DRMGetUnboundLicenseAttribute = _msdrm.lookupFunction<
    Int32 Function(
  Uint32 hQueryRoot,
  Pointer<Utf16> wszAttributeType,
  Uint32 iWhich,
  Pointer<Int32> peEncoding,
  Pointer<Uint32> pcBuffer,
  Pointer<Uint8> pbBuffer,
),
    int Function(
  int hQueryRoot,
  Pointer<Utf16> wszAttributeType,
  int iWhich,
  Pointer<Int32> peEncoding,
  Pointer<Uint32> pcBuffer,
  Pointer<Uint8> pbBuffer,
)>('DRMGetUnboundLicenseAttribute');

int DRMGetUnboundLicenseAttributeCount(
  int hQueryRoot,
  Pointer<Utf16> wszAttributeType,
  Pointer<Uint32> pcAttributes,
) =>
    _DRMGetUnboundLicenseAttributeCount(
      hQueryRoot,
      wszAttributeType,
      pcAttributes,
    );

late final _DRMGetUnboundLicenseAttributeCount = _msdrm.lookupFunction<
    Int32 Function(
  Uint32 hQueryRoot,
  Pointer<Utf16> wszAttributeType,
  Pointer<Uint32> pcAttributes,
),
    int Function(
  int hQueryRoot,
  Pointer<Utf16> wszAttributeType,
  Pointer<Uint32> pcAttributes,
)>('DRMGetUnboundLicenseAttributeCount');

int DRMGetUnboundLicenseObject(
  int hQueryRoot,
  Pointer<Utf16> wszSubObjectType,
  int iIndex,
  Pointer<Uint32> phSubQuery,
) =>
    _DRMGetUnboundLicenseObject(
      hQueryRoot,
      wszSubObjectType,
      iIndex,
      phSubQuery,
    );

late final _DRMGetUnboundLicenseObject = _msdrm.lookupFunction<
    Int32 Function(
  Uint32 hQueryRoot,
  Pointer<Utf16> wszSubObjectType,
  Uint32 iIndex,
  Pointer<Uint32> phSubQuery,
),
    int Function(
  int hQueryRoot,
  Pointer<Utf16> wszSubObjectType,
  int iIndex,
  Pointer<Uint32> phSubQuery,
)>('DRMGetUnboundLicenseObject');

int DRMGetUnboundLicenseObjectCount(
  int hQueryRoot,
  Pointer<Utf16> wszSubObjectType,
  Pointer<Uint32> pcSubObjects,
) =>
    _DRMGetUnboundLicenseObjectCount(
      hQueryRoot,
      wszSubObjectType,
      pcSubObjects,
    );

late final _DRMGetUnboundLicenseObjectCount = _msdrm.lookupFunction<
    Int32 Function(
  Uint32 hQueryRoot,
  Pointer<Utf16> wszSubObjectType,
  Pointer<Uint32> pcSubObjects,
),
    int Function(
  int hQueryRoot,
  Pointer<Utf16> wszSubObjectType,
  Pointer<Uint32> pcSubObjects,
)>('DRMGetUnboundLicenseObjectCount');

int DRMGetUsagePolicy(
  int hIssuanceLicense,
  int uIndex,
  Pointer<Int32> peUsagePolicyType,
  Pointer<Int32> pfExclusion,
  Pointer<Uint32> puNameLength,
  Pointer<Utf16> wszName,
  Pointer<Uint32> puMinVersionLength,
  Pointer<Utf16> wszMinVersion,
  Pointer<Uint32> puMaxVersionLength,
  Pointer<Utf16> wszMaxVersion,
  Pointer<Uint32> puPublicKeyLength,
  Pointer<Utf16> wszPublicKey,
  Pointer<Uint32> puDigestAlgorithmLength,
  Pointer<Utf16> wszDigestAlgorithm,
  Pointer<Uint32> pcbDigest,
  Pointer<Uint8> pbDigest,
) =>
    _DRMGetUsagePolicy(
      hIssuanceLicense,
      uIndex,
      peUsagePolicyType,
      pfExclusion,
      puNameLength,
      wszName,
      puMinVersionLength,
      wszMinVersion,
      puMaxVersionLength,
      wszMaxVersion,
      puPublicKeyLength,
      wszPublicKey,
      puDigestAlgorithmLength,
      wszDigestAlgorithm,
      pcbDigest,
      pbDigest,
    );

late final _DRMGetUsagePolicy = _msdrm.lookupFunction<
    Int32 Function(
  Uint32 hIssuanceLicense,
  Uint32 uIndex,
  Pointer<Int32> peUsagePolicyType,
  Pointer<Int32> pfExclusion,
  Pointer<Uint32> puNameLength,
  Pointer<Utf16> wszName,
  Pointer<Uint32> puMinVersionLength,
  Pointer<Utf16> wszMinVersion,
  Pointer<Uint32> puMaxVersionLength,
  Pointer<Utf16> wszMaxVersion,
  Pointer<Uint32> puPublicKeyLength,
  Pointer<Utf16> wszPublicKey,
  Pointer<Uint32> puDigestAlgorithmLength,
  Pointer<Utf16> wszDigestAlgorithm,
  Pointer<Uint32> pcbDigest,
  Pointer<Uint8> pbDigest,
),
    int Function(
  int hIssuanceLicense,
  int uIndex,
  Pointer<Int32> peUsagePolicyType,
  Pointer<Int32> pfExclusion,
  Pointer<Uint32> puNameLength,
  Pointer<Utf16> wszName,
  Pointer<Uint32> puMinVersionLength,
  Pointer<Utf16> wszMinVersion,
  Pointer<Uint32> puMaxVersionLength,
  Pointer<Utf16> wszMaxVersion,
  Pointer<Uint32> puPublicKeyLength,
  Pointer<Utf16> wszPublicKey,
  Pointer<Uint32> puDigestAlgorithmLength,
  Pointer<Utf16> wszDigestAlgorithm,
  Pointer<Uint32> pcbDigest,
  Pointer<Uint8> pbDigest,
)>('DRMGetUsagePolicy');

int DRMGetUserInfo(
  int hUser,
  Pointer<Uint32> puUserNameLength,
  Pointer<Utf16> wszUserName,
  Pointer<Uint32> puUserIdLength,
  Pointer<Utf16> wszUserId,
  Pointer<Uint32> puUserIdTypeLength,
  Pointer<Utf16> wszUserIdType,
) =>
    _DRMGetUserInfo(
      hUser,
      puUserNameLength,
      wszUserName,
      puUserIdLength,
      wszUserId,
      puUserIdTypeLength,
      wszUserIdType,
    );

late final _DRMGetUserInfo = _msdrm.lookupFunction<
    Int32 Function(
  Uint32 hUser,
  Pointer<Uint32> puUserNameLength,
  Pointer<Utf16> wszUserName,
  Pointer<Uint32> puUserIdLength,
  Pointer<Utf16> wszUserId,
  Pointer<Uint32> puUserIdTypeLength,
  Pointer<Utf16> wszUserIdType,
),
    int Function(
  int hUser,
  Pointer<Uint32> puUserNameLength,
  Pointer<Utf16> wszUserName,
  Pointer<Uint32> puUserIdLength,
  Pointer<Utf16> wszUserId,
  Pointer<Uint32> puUserIdTypeLength,
  Pointer<Utf16> wszUserIdType,
)>('DRMGetUserInfo');

int DRMGetUserRights(
  int hIssuanceLicense,
  int hUser,
  int uIndex,
  Pointer<Uint32> phRight,
) =>
    _DRMGetUserRights(
      hIssuanceLicense,
      hUser,
      uIndex,
      phRight,
    );

late final _DRMGetUserRights = _msdrm.lookupFunction<
    Int32 Function(
  Uint32 hIssuanceLicense,
  Uint32 hUser,
  Uint32 uIndex,
  Pointer<Uint32> phRight,
),
    int Function(
  int hIssuanceLicense,
  int hUser,
  int uIndex,
  Pointer<Uint32> phRight,
)>('DRMGetUserRights');

int DRMGetUsers(
  int hIssuanceLicense,
  int uIndex,
  Pointer<Uint32> phUser,
) =>
    _DRMGetUsers(
      hIssuanceLicense,
      uIndex,
      phUser,
    );

late final _DRMGetUsers = _msdrm.lookupFunction<
    Int32 Function(
  Uint32 hIssuanceLicense,
  Uint32 uIndex,
  Pointer<Uint32> phUser,
),
    int Function(
  int hIssuanceLicense,
  int uIndex,
  Pointer<Uint32> phUser,
)>('DRMGetUsers');

int DRMInitEnvironment(
  int eSecurityProviderType,
  int eSpecification,
  Pointer<Utf16> wszSecurityProvider,
  Pointer<Utf16> wszManifestCredentials,
  Pointer<Utf16> wszMachineCredentials,
  Pointer<Uint32> phEnv,
  Pointer<Uint32> phDefaultLibrary,
) =>
    _DRMInitEnvironment(
      eSecurityProviderType,
      eSpecification,
      wszSecurityProvider,
      wszManifestCredentials,
      wszMachineCredentials,
      phEnv,
      phDefaultLibrary,
    );

late final _DRMInitEnvironment = _msdrm.lookupFunction<
    Int32 Function(
  Int32 eSecurityProviderType,
  Int32 eSpecification,
  Pointer<Utf16> wszSecurityProvider,
  Pointer<Utf16> wszManifestCredentials,
  Pointer<Utf16> wszMachineCredentials,
  Pointer<Uint32> phEnv,
  Pointer<Uint32> phDefaultLibrary,
),
    int Function(
  int eSecurityProviderType,
  int eSpecification,
  Pointer<Utf16> wszSecurityProvider,
  Pointer<Utf16> wszManifestCredentials,
  Pointer<Utf16> wszMachineCredentials,
  Pointer<Uint32> phEnv,
  Pointer<Uint32> phDefaultLibrary,
)>('DRMInitEnvironment');

int DRMIsActivated(
  int hClient,
  int uFlags,
  Pointer<DRM_ACTSERV_INFO> pActServInfo,
) =>
    _DRMIsActivated(
      hClient,
      uFlags,
      pActServInfo,
    );

late final _DRMIsActivated = _msdrm.lookupFunction<
    Int32 Function(
  Uint32 hClient,
  Uint32 uFlags,
  Pointer<DRM_ACTSERV_INFO> pActServInfo,
),
    int Function(
  int hClient,
  int uFlags,
  Pointer<DRM_ACTSERV_INFO> pActServInfo,
)>('DRMIsActivated');

int DRMIsWindowProtected(
  int hwnd,
  Pointer<Int32> pfProtected,
) =>
    _DRMIsWindowProtected(
      hwnd,
      pfProtected,
    );

late final _DRMIsWindowProtected = _msdrm.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  Pointer<Int32> pfProtected,
),
    int Function(
  int hwnd,
  Pointer<Int32> pfProtected,
)>('DRMIsWindowProtected');

int DRMLoadLibrary(
  int hEnv,
  int eSpecification,
  Pointer<Utf16> wszLibraryProvider,
  Pointer<Utf16> wszCredentials,
  Pointer<Uint32> phLibrary,
) =>
    _DRMLoadLibrary(
      hEnv,
      eSpecification,
      wszLibraryProvider,
      wszCredentials,
      phLibrary,
    );

late final _DRMLoadLibrary = _msdrm.lookupFunction<
    Int32 Function(
  Uint32 hEnv,
  Int32 eSpecification,
  Pointer<Utf16> wszLibraryProvider,
  Pointer<Utf16> wszCredentials,
  Pointer<Uint32> phLibrary,
),
    int Function(
  int hEnv,
  int eSpecification,
  Pointer<Utf16> wszLibraryProvider,
  Pointer<Utf16> wszCredentials,
  Pointer<Uint32> phLibrary,
)>('DRMLoadLibrary');

int DRMParseUnboundLicense(
  Pointer<Utf16> wszCertificate,
  Pointer<Uint32> phQueryRoot,
) =>
    _DRMParseUnboundLicense(
      wszCertificate,
      phQueryRoot,
    );

late final _DRMParseUnboundLicense = _msdrm.lookupFunction<
    Int32 Function(
  Pointer<Utf16> wszCertificate,
  Pointer<Uint32> phQueryRoot,
),
    int Function(
  Pointer<Utf16> wszCertificate,
  Pointer<Uint32> phQueryRoot,
)>('DRMParseUnboundLicense');

int DRMRegisterContent(
  int fRegister,
) =>
    _DRMRegisterContent(
      fRegister,
    );

late final _DRMRegisterContent = _msdrm.lookupFunction<
    Int32 Function(
  Int32 fRegister,
),
    int Function(
  int fRegister,
)>('DRMRegisterContent');

int DRMRegisterProtectedWindow(
  int hEnv,
  int hwnd,
) =>
    _DRMRegisterProtectedWindow(
      hEnv,
      hwnd,
    );

late final _DRMRegisterProtectedWindow = _msdrm.lookupFunction<
    Int32 Function(
  Uint32 hEnv,
  IntPtr hwnd,
),
    int Function(
  int hEnv,
  int hwnd,
)>('DRMRegisterProtectedWindow');

int DRMRegisterRevocationList(
  int hEnv,
  Pointer<Utf16> wszRevocationList,
) =>
    _DRMRegisterRevocationList(
      hEnv,
      wszRevocationList,
    );

late final _DRMRegisterRevocationList = _msdrm.lookupFunction<
    Int32 Function(
  Uint32 hEnv,
  Pointer<Utf16> wszRevocationList,
),
    int Function(
  int hEnv,
  Pointer<Utf16> wszRevocationList,
)>('DRMRegisterRevocationList');

int DRMRepair() => _DRMRepair();

late final _DRMRepair =
    _msdrm.lookupFunction<Int32 Function(), int Function()>('DRMRepair');

int DRMSetApplicationSpecificData(
  int hIssuanceLicense,
  int fDelete,
  Pointer<Utf16> wszName,
  Pointer<Utf16> wszValue,
) =>
    _DRMSetApplicationSpecificData(
      hIssuanceLicense,
      fDelete,
      wszName,
      wszValue,
    );

late final _DRMSetApplicationSpecificData = _msdrm.lookupFunction<
    Int32 Function(
  Uint32 hIssuanceLicense,
  Int32 fDelete,
  Pointer<Utf16> wszName,
  Pointer<Utf16> wszValue,
),
    int Function(
  int hIssuanceLicense,
  int fDelete,
  Pointer<Utf16> wszName,
  Pointer<Utf16> wszValue,
)>('DRMSetApplicationSpecificData');

int DRMSetGlobalOptions(
  int eGlobalOptions,
  Pointer pvdata,
  int dwlen,
) =>
    _DRMSetGlobalOptions(
      eGlobalOptions,
      pvdata,
      dwlen,
    );

late final _DRMSetGlobalOptions = _msdrm.lookupFunction<
    Int32 Function(
  Int32 eGlobalOptions,
  Pointer pvdata,
  Uint32 dwlen,
),
    int Function(
  int eGlobalOptions,
  Pointer pvdata,
  int dwlen,
)>('DRMSetGlobalOptions');

int DRMSetIntervalTime(
  int hIssuanceLicense,
  int cDays,
) =>
    _DRMSetIntervalTime(
      hIssuanceLicense,
      cDays,
    );

late final _DRMSetIntervalTime = _msdrm.lookupFunction<
    Int32 Function(
  Uint32 hIssuanceLicense,
  Uint32 cDays,
),
    int Function(
  int hIssuanceLicense,
  int cDays,
)>('DRMSetIntervalTime');

int DRMSetMetaData(
  int hIssuanceLicense,
  Pointer<Utf16> wszContentId,
  Pointer<Utf16> wszContentIdType,
  Pointer<Utf16> wszSKUId,
  Pointer<Utf16> wszSKUIdType,
  Pointer<Utf16> wszContentType,
  Pointer<Utf16> wszContentName,
) =>
    _DRMSetMetaData(
      hIssuanceLicense,
      wszContentId,
      wszContentIdType,
      wszSKUId,
      wszSKUIdType,
      wszContentType,
      wszContentName,
    );

late final _DRMSetMetaData = _msdrm.lookupFunction<
    Int32 Function(
  Uint32 hIssuanceLicense,
  Pointer<Utf16> wszContentId,
  Pointer<Utf16> wszContentIdType,
  Pointer<Utf16> wszSKUId,
  Pointer<Utf16> wszSKUIdType,
  Pointer<Utf16> wszContentType,
  Pointer<Utf16> wszContentName,
),
    int Function(
  int hIssuanceLicense,
  Pointer<Utf16> wszContentId,
  Pointer<Utf16> wszContentIdType,
  Pointer<Utf16> wszSKUId,
  Pointer<Utf16> wszSKUIdType,
  Pointer<Utf16> wszContentType,
  Pointer<Utf16> wszContentName,
)>('DRMSetMetaData');

int DRMSetNameAndDescription(
  int hIssuanceLicense,
  int fDelete,
  int lcid,
  Pointer<Utf16> wszName,
  Pointer<Utf16> wszDescription,
) =>
    _DRMSetNameAndDescription(
      hIssuanceLicense,
      fDelete,
      lcid,
      wszName,
      wszDescription,
    );

late final _DRMSetNameAndDescription = _msdrm.lookupFunction<
    Int32 Function(
  Uint32 hIssuanceLicense,
  Int32 fDelete,
  Uint32 lcid,
  Pointer<Utf16> wszName,
  Pointer<Utf16> wszDescription,
),
    int Function(
  int hIssuanceLicense,
  int fDelete,
  int lcid,
  Pointer<Utf16> wszName,
  Pointer<Utf16> wszDescription,
)>('DRMSetNameAndDescription');

int DRMSetRevocationPoint(
  int hIssuanceLicense,
  int fDelete,
  Pointer<Utf16> wszId,
  Pointer<Utf16> wszIdType,
  Pointer<Utf16> wszURL,
  Pointer<SYSTEMTIME> pstFrequency,
  Pointer<Utf16> wszName,
  Pointer<Utf16> wszPublicKey,
) =>
    _DRMSetRevocationPoint(
      hIssuanceLicense,
      fDelete,
      wszId,
      wszIdType,
      wszURL,
      pstFrequency,
      wszName,
      wszPublicKey,
    );

late final _DRMSetRevocationPoint = _msdrm.lookupFunction<
    Int32 Function(
  Uint32 hIssuanceLicense,
  Int32 fDelete,
  Pointer<Utf16> wszId,
  Pointer<Utf16> wszIdType,
  Pointer<Utf16> wszURL,
  Pointer<SYSTEMTIME> pstFrequency,
  Pointer<Utf16> wszName,
  Pointer<Utf16> wszPublicKey,
),
    int Function(
  int hIssuanceLicense,
  int fDelete,
  Pointer<Utf16> wszId,
  Pointer<Utf16> wszIdType,
  Pointer<Utf16> wszURL,
  Pointer<SYSTEMTIME> pstFrequency,
  Pointer<Utf16> wszName,
  Pointer<Utf16> wszPublicKey,
)>('DRMSetRevocationPoint');

int DRMSetUsagePolicy(
  int hIssuanceLicense,
  int eUsagePolicyType,
  int fDelete,
  int fExclusion,
  Pointer<Utf16> wszName,
  Pointer<Utf16> wszMinVersion,
  Pointer<Utf16> wszMaxVersion,
  Pointer<Utf16> wszPublicKey,
  Pointer<Utf16> wszDigestAlgorithm,
  Pointer<Uint8> pbDigest,
  int cbDigest,
) =>
    _DRMSetUsagePolicy(
      hIssuanceLicense,
      eUsagePolicyType,
      fDelete,
      fExclusion,
      wszName,
      wszMinVersion,
      wszMaxVersion,
      wszPublicKey,
      wszDigestAlgorithm,
      pbDigest,
      cbDigest,
    );

late final _DRMSetUsagePolicy = _msdrm.lookupFunction<
    Int32 Function(
  Uint32 hIssuanceLicense,
  Int32 eUsagePolicyType,
  Int32 fDelete,
  Int32 fExclusion,
  Pointer<Utf16> wszName,
  Pointer<Utf16> wszMinVersion,
  Pointer<Utf16> wszMaxVersion,
  Pointer<Utf16> wszPublicKey,
  Pointer<Utf16> wszDigestAlgorithm,
  Pointer<Uint8> pbDigest,
  Uint32 cbDigest,
),
    int Function(
  int hIssuanceLicense,
  int eUsagePolicyType,
  int fDelete,
  int fExclusion,
  Pointer<Utf16> wszName,
  Pointer<Utf16> wszMinVersion,
  Pointer<Utf16> wszMaxVersion,
  Pointer<Utf16> wszPublicKey,
  Pointer<Utf16> wszDigestAlgorithm,
  Pointer<Uint8> pbDigest,
  int cbDigest,
)>('DRMSetUsagePolicy');

int DRMVerify(
  Pointer<Utf16> wszData,
  Pointer<Uint32> pcAttestedData,
  Pointer<Utf16> wszAttestedData,
  Pointer<Int32> peType,
  Pointer<Uint32> pcPrincipal,
  Pointer<Utf16> wszPrincipal,
  Pointer<Uint32> pcManifest,
  Pointer<Utf16> wszManifest,
) =>
    _DRMVerify(
      wszData,
      pcAttestedData,
      wszAttestedData,
      peType,
      pcPrincipal,
      wszPrincipal,
      pcManifest,
      wszManifest,
    );

late final _DRMVerify = _msdrm.lookupFunction<
    Int32 Function(
  Pointer<Utf16> wszData,
  Pointer<Uint32> pcAttestedData,
  Pointer<Utf16> wszAttestedData,
  Pointer<Int32> peType,
  Pointer<Uint32> pcPrincipal,
  Pointer<Utf16> wszPrincipal,
  Pointer<Uint32> pcManifest,
  Pointer<Utf16> wszManifest,
),
    int Function(
  Pointer<Utf16> wszData,
  Pointer<Uint32> pcAttestedData,
  Pointer<Utf16> wszAttestedData,
  Pointer<Int32> peType,
  Pointer<Uint32> pcPrincipal,
  Pointer<Utf16> wszPrincipal,
  Pointer<Uint32> pcManifest,
  Pointer<Utf16> wszManifest,
)>('DRMVerify');
