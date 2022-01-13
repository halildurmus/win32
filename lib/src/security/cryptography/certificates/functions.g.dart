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
import '../../../security/cryptography/certificates/structs.g.dart';
import '../../../security/cryptography/structs.g.dart';
import '../../../security/authentication/identity/structs.g.dart'; // -----------------------------------------------------------------------

// certadm.dll
// -----------------------------------------------------------------------
final _certadm = DynamicLibrary.open('certadm.dll');

int CertSrvBackupClose(
  Pointer hbc,
) =>
    _CertSrvBackupClose(
      hbc,
    );

late final _CertSrvBackupClose = _certadm.lookupFunction<
    Int32 Function(
  Pointer hbc,
),
    int Function(
  Pointer hbc,
)>('CertSrvBackupClose');

int CertSrvBackupEnd(
  Pointer hbc,
) =>
    _CertSrvBackupEnd(
      hbc,
    );

late final _CertSrvBackupEnd = _certadm.lookupFunction<
    Int32 Function(
  Pointer hbc,
),
    int Function(
  Pointer hbc,
)>('CertSrvBackupEnd');

void CertSrvBackupFree(
  Pointer pv,
) =>
    _CertSrvBackupFree(
      pv,
    );

late final _CertSrvBackupFree = _certadm.lookupFunction<
    Void Function(
  Pointer pv,
),
    void Function(
  Pointer pv,
)>('CertSrvBackupFree');

int CertSrvBackupGetBackupLogs(
  Pointer hbc,
  Pointer<Pointer<Utf16>> ppwszzBackupLogFiles,
  Pointer<Uint32> pcbSize,
) =>
    _CertSrvBackupGetBackupLogs(
      hbc,
      ppwszzBackupLogFiles,
      pcbSize,
    );

late final _CertSrvBackupGetBackupLogs = _certadm.lookupFunction<
    Int32 Function(
  Pointer hbc,
  Pointer<Pointer<Utf16>> ppwszzBackupLogFiles,
  Pointer<Uint32> pcbSize,
),
    int Function(
  Pointer hbc,
  Pointer<Pointer<Utf16>> ppwszzBackupLogFiles,
  Pointer<Uint32> pcbSize,
)>('CertSrvBackupGetBackupLogsW');

int CertSrvBackupGetDatabaseNames(
  Pointer hbc,
  Pointer<Pointer<Utf16>> ppwszzAttachmentInformation,
  Pointer<Uint32> pcbSize,
) =>
    _CertSrvBackupGetDatabaseNames(
      hbc,
      ppwszzAttachmentInformation,
      pcbSize,
    );

late final _CertSrvBackupGetDatabaseNames = _certadm.lookupFunction<
    Int32 Function(
  Pointer hbc,
  Pointer<Pointer<Utf16>> ppwszzAttachmentInformation,
  Pointer<Uint32> pcbSize,
),
    int Function(
  Pointer hbc,
  Pointer<Pointer<Utf16>> ppwszzAttachmentInformation,
  Pointer<Uint32> pcbSize,
)>('CertSrvBackupGetDatabaseNamesW');

int CertSrvBackupGetDynamicFileList(
  Pointer hbc,
  Pointer<Pointer<Utf16>> ppwszzFileList,
  Pointer<Uint32> pcbSize,
) =>
    _CertSrvBackupGetDynamicFileList(
      hbc,
      ppwszzFileList,
      pcbSize,
    );

late final _CertSrvBackupGetDynamicFileList = _certadm.lookupFunction<
    Int32 Function(
  Pointer hbc,
  Pointer<Pointer<Utf16>> ppwszzFileList,
  Pointer<Uint32> pcbSize,
),
    int Function(
  Pointer hbc,
  Pointer<Pointer<Utf16>> ppwszzFileList,
  Pointer<Uint32> pcbSize,
)>('CertSrvBackupGetDynamicFileListW');

int CertSrvBackupOpenFile(
  Pointer hbc,
  Pointer<Utf16> pwszAttachmentName,
  int cbReadHintSize,
  Pointer<Int64> pliFileSize,
) =>
    _CertSrvBackupOpenFile(
      hbc,
      pwszAttachmentName,
      cbReadHintSize,
      pliFileSize,
    );

late final _CertSrvBackupOpenFile = _certadm.lookupFunction<
    Int32 Function(
  Pointer hbc,
  Pointer<Utf16> pwszAttachmentName,
  Uint32 cbReadHintSize,
  Pointer<Int64> pliFileSize,
),
    int Function(
  Pointer hbc,
  Pointer<Utf16> pwszAttachmentName,
  int cbReadHintSize,
  Pointer<Int64> pliFileSize,
)>('CertSrvBackupOpenFileW');

int CertSrvBackupPrepare(
  Pointer<Utf16> pwszServerName,
  int grbitJet,
  int dwBackupFlags,
  Pointer<Pointer> phbc,
) =>
    _CertSrvBackupPrepare(
      pwszServerName,
      grbitJet,
      dwBackupFlags,
      phbc,
    );

late final _CertSrvBackupPrepare = _certadm.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwszServerName,
  Uint32 grbitJet,
  Uint32 dwBackupFlags,
  Pointer<Pointer> phbc,
),
    int Function(
  Pointer<Utf16> pwszServerName,
  int grbitJet,
  int dwBackupFlags,
  Pointer<Pointer> phbc,
)>('CertSrvBackupPrepareW');

int CertSrvBackupRead(
  Pointer hbc,
  Pointer pvBuffer,
  int cbBuffer,
  Pointer<Uint32> pcbRead,
) =>
    _CertSrvBackupRead(
      hbc,
      pvBuffer,
      cbBuffer,
      pcbRead,
    );

late final _CertSrvBackupRead = _certadm.lookupFunction<
    Int32 Function(
  Pointer hbc,
  Pointer pvBuffer,
  Uint32 cbBuffer,
  Pointer<Uint32> pcbRead,
),
    int Function(
  Pointer hbc,
  Pointer pvBuffer,
  int cbBuffer,
  Pointer<Uint32> pcbRead,
)>('CertSrvBackupRead');

int CertSrvBackupTruncateLogs(
  Pointer hbc,
) =>
    _CertSrvBackupTruncateLogs(
      hbc,
    );

late final _CertSrvBackupTruncateLogs = _certadm.lookupFunction<
    Int32 Function(
  Pointer hbc,
),
    int Function(
  Pointer hbc,
)>('CertSrvBackupTruncateLogs');

int CertSrvIsServerOnline(
  Pointer<Utf16> pwszServerName,
  Pointer<Int32> pfServerOnline,
) =>
    _CertSrvIsServerOnline(
      pwszServerName,
      pfServerOnline,
    );

late final _CertSrvIsServerOnline = _certadm.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwszServerName,
  Pointer<Int32> pfServerOnline,
),
    int Function(
  Pointer<Utf16> pwszServerName,
  Pointer<Int32> pfServerOnline,
)>('CertSrvIsServerOnlineW');

int CertSrvRestoreEnd(
  Pointer hbc,
) =>
    _CertSrvRestoreEnd(
      hbc,
    );

late final _CertSrvRestoreEnd = _certadm.lookupFunction<
    Int32 Function(
  Pointer hbc,
),
    int Function(
  Pointer hbc,
)>('CertSrvRestoreEnd');

int CertSrvRestoreGetDatabaseLocations(
  Pointer hbc,
  Pointer<Pointer<Utf16>> ppwszzDatabaseLocationList,
  Pointer<Uint32> pcbSize,
) =>
    _CertSrvRestoreGetDatabaseLocations(
      hbc,
      ppwszzDatabaseLocationList,
      pcbSize,
    );

late final _CertSrvRestoreGetDatabaseLocations = _certadm.lookupFunction<
    Int32 Function(
  Pointer hbc,
  Pointer<Pointer<Utf16>> ppwszzDatabaseLocationList,
  Pointer<Uint32> pcbSize,
),
    int Function(
  Pointer hbc,
  Pointer<Pointer<Utf16>> ppwszzDatabaseLocationList,
  Pointer<Uint32> pcbSize,
)>('CertSrvRestoreGetDatabaseLocationsW');

int CertSrvRestorePrepare(
  Pointer<Utf16> pwszServerName,
  int dwRestoreFlags,
  Pointer<Pointer> phbc,
) =>
    _CertSrvRestorePrepare(
      pwszServerName,
      dwRestoreFlags,
      phbc,
    );

late final _CertSrvRestorePrepare = _certadm.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwszServerName,
  Uint32 dwRestoreFlags,
  Pointer<Pointer> phbc,
),
    int Function(
  Pointer<Utf16> pwszServerName,
  int dwRestoreFlags,
  Pointer<Pointer> phbc,
)>('CertSrvRestorePrepareW');

int CertSrvRestoreRegisterComplete(
  Pointer hbc,
  int hrRestoreState,
) =>
    _CertSrvRestoreRegisterComplete(
      hbc,
      hrRestoreState,
    );

late final _CertSrvRestoreRegisterComplete = _certadm.lookupFunction<
    Int32 Function(
  Pointer hbc,
  Int32 hrRestoreState,
),
    int Function(
  Pointer hbc,
  int hrRestoreState,
)>('CertSrvRestoreRegisterComplete');

int CertSrvRestoreRegisterThroughFile(
  Pointer hbc,
  Pointer<Utf16> pwszCheckPointFilePath,
  Pointer<Utf16> pwszLogPath,
  Pointer<CSEDB_RSTMAP> rgrstmap,
  int crstmap,
  Pointer<Utf16> pwszBackupLogPath,
  int genLow,
  int genHigh,
) =>
    _CertSrvRestoreRegisterThroughFile(
      hbc,
      pwszCheckPointFilePath,
      pwszLogPath,
      rgrstmap,
      crstmap,
      pwszBackupLogPath,
      genLow,
      genHigh,
    );

late final _CertSrvRestoreRegisterThroughFile = _certadm.lookupFunction<
    Int32 Function(
  Pointer hbc,
  Pointer<Utf16> pwszCheckPointFilePath,
  Pointer<Utf16> pwszLogPath,
  Pointer<CSEDB_RSTMAP> rgrstmap,
  Int32 crstmap,
  Pointer<Utf16> pwszBackupLogPath,
  Uint32 genLow,
  Uint32 genHigh,
),
    int Function(
  Pointer hbc,
  Pointer<Utf16> pwszCheckPointFilePath,
  Pointer<Utf16> pwszLogPath,
  Pointer<CSEDB_RSTMAP> rgrstmap,
  int crstmap,
  Pointer<Utf16> pwszBackupLogPath,
  int genLow,
  int genHigh,
)>('CertSrvRestoreRegisterThroughFile');

int CertSrvRestoreRegister(
  Pointer hbc,
  Pointer<Utf16> pwszCheckPointFilePath,
  Pointer<Utf16> pwszLogPath,
  Pointer<CSEDB_RSTMAP> rgrstmap,
  int crstmap,
  Pointer<Utf16> pwszBackupLogPath,
  int genLow,
  int genHigh,
) =>
    _CertSrvRestoreRegister(
      hbc,
      pwszCheckPointFilePath,
      pwszLogPath,
      rgrstmap,
      crstmap,
      pwszBackupLogPath,
      genLow,
      genHigh,
    );

late final _CertSrvRestoreRegister = _certadm.lookupFunction<
    Int32 Function(
  Pointer hbc,
  Pointer<Utf16> pwszCheckPointFilePath,
  Pointer<Utf16> pwszLogPath,
  Pointer<CSEDB_RSTMAP> rgrstmap,
  Int32 crstmap,
  Pointer<Utf16> pwszBackupLogPath,
  Uint32 genLow,
  Uint32 genHigh,
),
    int Function(
  Pointer hbc,
  Pointer<Utf16> pwszCheckPointFilePath,
  Pointer<Utf16> pwszLogPath,
  Pointer<CSEDB_RSTMAP> rgrstmap,
  int crstmap,
  Pointer<Utf16> pwszBackupLogPath,
  int genLow,
  int genHigh,
)>('CertSrvRestoreRegisterW');

int CertSrvServerControl(
  Pointer<Utf16> pwszServerName,
  int dwControlFlags,
  Pointer<Uint32> pcbOut,
  Pointer<Pointer<Uint8>> ppbOut,
) =>
    _CertSrvServerControl(
      pwszServerName,
      dwControlFlags,
      pcbOut,
      ppbOut,
    );

late final _CertSrvServerControl = _certadm.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwszServerName,
  Uint32 dwControlFlags,
  Pointer<Uint32> pcbOut,
  Pointer<Pointer<Uint8>> ppbOut,
),
    int Function(
  Pointer<Utf16> pwszServerName,
  int dwControlFlags,
  Pointer<Uint32> pcbOut,
  Pointer<Pointer<Uint8>> ppbOut,
)>('CertSrvServerControlW');

// -----------------------------------------------------------------------
// certpoleng.dll
// -----------------------------------------------------------------------
final _certpoleng = DynamicLibrary.open('certpoleng.dll');

int PstAcquirePrivateKey(
  Pointer<CERT_CONTEXT> pCert,
) =>
    _PstAcquirePrivateKey(
      pCert,
    );

late final _PstAcquirePrivateKey = _certpoleng.lookupFunction<
    Int32 Function(
  Pointer<CERT_CONTEXT> pCert,
),
    int Function(
  Pointer<CERT_CONTEXT> pCert,
)>('PstAcquirePrivateKey');

int PstGetCertificateChain(
  Pointer<CERT_CONTEXT> pCert,
  Pointer<SecPkgContext_IssuerListInfoEx> pTrustedIssuers,
  Pointer<Pointer<CERT_CHAIN_CONTEXT>> ppCertChainContext,
) =>
    _PstGetCertificateChain(
      pCert,
      pTrustedIssuers,
      ppCertChainContext,
    );

late final _PstGetCertificateChain = _certpoleng.lookupFunction<
    Int32 Function(
  Pointer<CERT_CONTEXT> pCert,
  Pointer<SecPkgContext_IssuerListInfoEx> pTrustedIssuers,
  Pointer<Pointer<CERT_CHAIN_CONTEXT>> ppCertChainContext,
),
    int Function(
  Pointer<CERT_CONTEXT> pCert,
  Pointer<SecPkgContext_IssuerListInfoEx> pTrustedIssuers,
  Pointer<Pointer<CERT_CHAIN_CONTEXT>> ppCertChainContext,
)>('PstGetCertificateChain');

int PstGetCertificates(
  Pointer<UNICODE_STRING> pTargetName,
  int cCriteria,
  Pointer<CERT_SELECT_CRITERIA> rgpCriteria,
  int bIsClient,
  Pointer<Uint32> pdwCertChainContextCount,
  Pointer<Pointer<Pointer<CERT_CHAIN_CONTEXT>>> ppCertChainContexts,
) =>
    _PstGetCertificates(
      pTargetName,
      cCriteria,
      rgpCriteria,
      bIsClient,
      pdwCertChainContextCount,
      ppCertChainContexts,
    );

late final _PstGetCertificates = _certpoleng.lookupFunction<
    Int32 Function(
  Pointer<UNICODE_STRING> pTargetName,
  Uint32 cCriteria,
  Pointer<CERT_SELECT_CRITERIA> rgpCriteria,
  Int32 bIsClient,
  Pointer<Uint32> pdwCertChainContextCount,
  Pointer<Pointer<Pointer<CERT_CHAIN_CONTEXT>>> ppCertChainContexts,
),
    int Function(
  Pointer<UNICODE_STRING> pTargetName,
  int cCriteria,
  Pointer<CERT_SELECT_CRITERIA> rgpCriteria,
  int bIsClient,
  Pointer<Uint32> pdwCertChainContextCount,
  Pointer<Pointer<Pointer<CERT_CHAIN_CONTEXT>>> ppCertChainContexts,
)>('PstGetCertificates');

int PstGetTrustAnchors(
  Pointer<UNICODE_STRING> pTargetName,
  int cCriteria,
  Pointer<CERT_SELECT_CRITERIA> rgpCriteria,
  Pointer<Pointer<SecPkgContext_IssuerListInfoEx>> ppTrustedIssuers,
) =>
    _PstGetTrustAnchors(
      pTargetName,
      cCriteria,
      rgpCriteria,
      ppTrustedIssuers,
    );

late final _PstGetTrustAnchors = _certpoleng.lookupFunction<
    Int32 Function(
  Pointer<UNICODE_STRING> pTargetName,
  Uint32 cCriteria,
  Pointer<CERT_SELECT_CRITERIA> rgpCriteria,
  Pointer<Pointer<SecPkgContext_IssuerListInfoEx>> ppTrustedIssuers,
),
    int Function(
  Pointer<UNICODE_STRING> pTargetName,
  int cCriteria,
  Pointer<CERT_SELECT_CRITERIA> rgpCriteria,
  Pointer<Pointer<SecPkgContext_IssuerListInfoEx>> ppTrustedIssuers,
)>('PstGetTrustAnchors');

int PstGetTrustAnchorsEx(
  Pointer<UNICODE_STRING> pTargetName,
  int cCriteria,
  Pointer<CERT_SELECT_CRITERIA> rgpCriteria,
  Pointer<CERT_CONTEXT> pCertContext,
  Pointer<Pointer<SecPkgContext_IssuerListInfoEx>> ppTrustedIssuers,
) =>
    _PstGetTrustAnchorsEx(
      pTargetName,
      cCriteria,
      rgpCriteria,
      pCertContext,
      ppTrustedIssuers,
    );

late final _PstGetTrustAnchorsEx = _certpoleng.lookupFunction<
    Int32 Function(
  Pointer<UNICODE_STRING> pTargetName,
  Uint32 cCriteria,
  Pointer<CERT_SELECT_CRITERIA> rgpCriteria,
  Pointer<CERT_CONTEXT> pCertContext,
  Pointer<Pointer<SecPkgContext_IssuerListInfoEx>> ppTrustedIssuers,
),
    int Function(
  Pointer<UNICODE_STRING> pTargetName,
  int cCriteria,
  Pointer<CERT_SELECT_CRITERIA> rgpCriteria,
  Pointer<CERT_CONTEXT> pCertContext,
  Pointer<Pointer<SecPkgContext_IssuerListInfoEx>> ppTrustedIssuers,
)>('PstGetTrustAnchorsEx');

int PstGetUserNameForCertificate(
  Pointer<CERT_CONTEXT> pCertContext,
  Pointer<UNICODE_STRING> UserName,
) =>
    _PstGetUserNameForCertificate(
      pCertContext,
      UserName,
    );

late final _PstGetUserNameForCertificate = _certpoleng.lookupFunction<
    Int32 Function(
  Pointer<CERT_CONTEXT> pCertContext,
  Pointer<UNICODE_STRING> UserName,
),
    int Function(
  Pointer<CERT_CONTEXT> pCertContext,
  Pointer<UNICODE_STRING> UserName,
)>('PstGetUserNameForCertificate');

int PstMapCertificate(
  Pointer<CERT_CONTEXT> pCert,
  Pointer<Int32> pTokenInformationType,
  Pointer<Pointer> ppTokenInformation,
) =>
    _PstMapCertificate(
      pCert,
      pTokenInformationType,
      ppTokenInformation,
    );

late final _PstMapCertificate = _certpoleng.lookupFunction<
    Int32 Function(
  Pointer<CERT_CONTEXT> pCert,
  Pointer<Int32> pTokenInformationType,
  Pointer<Pointer> ppTokenInformation,
),
    int Function(
  Pointer<CERT_CONTEXT> pCert,
  Pointer<Int32> pTokenInformationType,
  Pointer<Pointer> ppTokenInformation,
)>('PstMapCertificate');

int PstValidate(
  Pointer<UNICODE_STRING> pTargetName,
  int bIsClient,
  Pointer<CERT_USAGE_MATCH> pRequestedIssuancePolicy,
  Pointer<Pointer> phAdditionalCertStore,
  Pointer<CERT_CONTEXT> pCert,
  Pointer<GUID> pProvGUID,
) =>
    _PstValidate(
      pTargetName,
      bIsClient,
      pRequestedIssuancePolicy,
      phAdditionalCertStore,
      pCert,
      pProvGUID,
    );

late final _PstValidate = _certpoleng.lookupFunction<
    Int32 Function(
  Pointer<UNICODE_STRING> pTargetName,
  Int32 bIsClient,
  Pointer<CERT_USAGE_MATCH> pRequestedIssuancePolicy,
  Pointer<Pointer> phAdditionalCertStore,
  Pointer<CERT_CONTEXT> pCert,
  Pointer<GUID> pProvGUID,
),
    int Function(
  Pointer<UNICODE_STRING> pTargetName,
  int bIsClient,
  Pointer<CERT_USAGE_MATCH> pRequestedIssuancePolicy,
  Pointer<Pointer> phAdditionalCertStore,
  Pointer<CERT_CONTEXT> pCert,
  Pointer<GUID> pProvGUID,
)>('PstValidate');
