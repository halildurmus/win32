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
import '../../security/wintrust/structs.g.dart';
import '../../security/cryptography/structs.g.dart'; // -----------------------------------------------------------------------

// wintrust.dll
// -----------------------------------------------------------------------
final _wintrust = DynamicLibrary.open('wintrust.dll');

int OpenPersonalTrustDBDialog(
  int hwndParent,
) =>
    _OpenPersonalTrustDBDialog(
      hwndParent,
    );

late final _OpenPersonalTrustDBDialog = _wintrust.lookupFunction<
    Int32 Function(
  IntPtr hwndParent,
),
    int Function(
  int hwndParent,
)>('OpenPersonalTrustDBDialog');

int OpenPersonalTrustDBDialogEx(
  int hwndParent,
  int dwFlags,
  Pointer<Pointer> pvReserved,
) =>
    _OpenPersonalTrustDBDialogEx(
      hwndParent,
      dwFlags,
      pvReserved,
    );

late final _OpenPersonalTrustDBDialogEx = _wintrust.lookupFunction<
    Int32 Function(
  IntPtr hwndParent,
  Uint32 dwFlags,
  Pointer<Pointer> pvReserved,
),
    int Function(
  int hwndParent,
  int dwFlags,
  Pointer<Pointer> pvReserved,
)>('OpenPersonalTrustDBDialogEx');

int WTHelperCertCheckValidSignature(
  Pointer<CRYPT_PROVIDER_DATA> pProvData,
) =>
    _WTHelperCertCheckValidSignature(
      pProvData,
    );

late final _WTHelperCertCheckValidSignature = _wintrust.lookupFunction<
    Int32 Function(
  Pointer<CRYPT_PROVIDER_DATA> pProvData,
),
    int Function(
  Pointer<CRYPT_PROVIDER_DATA> pProvData,
)>('WTHelperCertCheckValidSignature');

int WTHelperCertIsSelfSigned(
  int dwEncoding,
  Pointer<CERT_INFO> pCert,
) =>
    _WTHelperCertIsSelfSigned(
      dwEncoding,
      pCert,
    );

late final _WTHelperCertIsSelfSigned = _wintrust.lookupFunction<
    Int32 Function(
  Uint32 dwEncoding,
  Pointer<CERT_INFO> pCert,
),
    int Function(
  int dwEncoding,
  Pointer<CERT_INFO> pCert,
)>('WTHelperCertIsSelfSigned');

Pointer<CRYPT_PROVIDER_CERT> WTHelperGetProvCertFromChain(
  Pointer<CRYPT_PROVIDER_SGNR> pSgnr,
  int idxCert,
) =>
    _WTHelperGetProvCertFromChain(
      pSgnr,
      idxCert,
    );

late final _WTHelperGetProvCertFromChain = _wintrust.lookupFunction<
    Pointer<CRYPT_PROVIDER_CERT> Function(
  Pointer<CRYPT_PROVIDER_SGNR> pSgnr,
  Uint32 idxCert,
),
    Pointer<CRYPT_PROVIDER_CERT> Function(
  Pointer<CRYPT_PROVIDER_SGNR> pSgnr,
  int idxCert,
)>('WTHelperGetProvCertFromChain');

Pointer<CRYPT_PROVIDER_PRIVDATA> WTHelperGetProvPrivateDataFromChain(
  Pointer<CRYPT_PROVIDER_DATA> pProvData,
  Pointer<GUID> pgProviderID,
) =>
    _WTHelperGetProvPrivateDataFromChain(
      pProvData,
      pgProviderID,
    );

late final _WTHelperGetProvPrivateDataFromChain = _wintrust.lookupFunction<
    Pointer<CRYPT_PROVIDER_PRIVDATA> Function(
  Pointer<CRYPT_PROVIDER_DATA> pProvData,
  Pointer<GUID> pgProviderID,
),
    Pointer<CRYPT_PROVIDER_PRIVDATA> Function(
  Pointer<CRYPT_PROVIDER_DATA> pProvData,
  Pointer<GUID> pgProviderID,
)>('WTHelperGetProvPrivateDataFromChain');

Pointer<CRYPT_PROVIDER_SGNR> WTHelperGetProvSignerFromChain(
  Pointer<CRYPT_PROVIDER_DATA> pProvData,
  int idxSigner,
  int fCounterSigner,
  int idxCounterSigner,
) =>
    _WTHelperGetProvSignerFromChain(
      pProvData,
      idxSigner,
      fCounterSigner,
      idxCounterSigner,
    );

late final _WTHelperGetProvSignerFromChain = _wintrust.lookupFunction<
    Pointer<CRYPT_PROVIDER_SGNR> Function(
  Pointer<CRYPT_PROVIDER_DATA> pProvData,
  Uint32 idxSigner,
  Int32 fCounterSigner,
  Uint32 idxCounterSigner,
),
    Pointer<CRYPT_PROVIDER_SGNR> Function(
  Pointer<CRYPT_PROVIDER_DATA> pProvData,
  int idxSigner,
  int fCounterSigner,
  int idxCounterSigner,
)>('WTHelperGetProvSignerFromChain');

Pointer<CRYPT_PROVIDER_DATA> WTHelperProvDataFromStateData(
  int hStateData,
) =>
    _WTHelperProvDataFromStateData(
      hStateData,
    );

late final _WTHelperProvDataFromStateData = _wintrust.lookupFunction<
    Pointer<CRYPT_PROVIDER_DATA> Function(
  IntPtr hStateData,
),
    Pointer<CRYPT_PROVIDER_DATA> Function(
  int hStateData,
)>('WTHelperProvDataFromStateData');

int WinVerifyTrust(
  int hwnd,
  Pointer<GUID> pgActionID,
  Pointer pWVTData,
) =>
    _WinVerifyTrust(
      hwnd,
      pgActionID,
      pWVTData,
    );

late final _WinVerifyTrust = _wintrust.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  Pointer<GUID> pgActionID,
  Pointer pWVTData,
),
    int Function(
  int hwnd,
  Pointer<GUID> pgActionID,
  Pointer pWVTData,
)>('WinVerifyTrust');

int WinVerifyTrustEx(
  int hwnd,
  Pointer<GUID> pgActionID,
  Pointer<WINTRUST_DATA> pWinTrustData,
) =>
    _WinVerifyTrustEx(
      hwnd,
      pgActionID,
      pWinTrustData,
    );

late final _WinVerifyTrustEx = _wintrust.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  Pointer<GUID> pgActionID,
  Pointer<WINTRUST_DATA> pWinTrustData,
),
    int Function(
  int hwnd,
  Pointer<GUID> pgActionID,
  Pointer<WINTRUST_DATA> pWinTrustData,
)>('WinVerifyTrustEx');

int WintrustAddActionID(
  Pointer<GUID> pgActionID,
  int fdwFlags,
  Pointer<CRYPT_REGISTER_ACTIONID> psProvInfo,
) =>
    _WintrustAddActionID(
      pgActionID,
      fdwFlags,
      psProvInfo,
    );

late final _WintrustAddActionID = _wintrust.lookupFunction<
    Int32 Function(
  Pointer<GUID> pgActionID,
  Uint32 fdwFlags,
  Pointer<CRYPT_REGISTER_ACTIONID> psProvInfo,
),
    int Function(
  Pointer<GUID> pgActionID,
  int fdwFlags,
  Pointer<CRYPT_REGISTER_ACTIONID> psProvInfo,
)>('WintrustAddActionID');

int WintrustAddDefaultForUsage(
  Pointer<Utf8> pszUsageOID,
  Pointer<CRYPT_PROVIDER_REGDEFUSAGE> psDefUsage,
) =>
    _WintrustAddDefaultForUsage(
      pszUsageOID,
      psDefUsage,
    );

late final _WintrustAddDefaultForUsage = _wintrust.lookupFunction<
    Int32 Function(
  Pointer<Utf8> pszUsageOID,
  Pointer<CRYPT_PROVIDER_REGDEFUSAGE> psDefUsage,
),
    int Function(
  Pointer<Utf8> pszUsageOID,
  Pointer<CRYPT_PROVIDER_REGDEFUSAGE> psDefUsage,
)>('WintrustAddDefaultForUsage');

int WintrustGetDefaultForUsage(
  int dwAction,
  Pointer<Utf8> pszUsageOID,
  Pointer<CRYPT_PROVIDER_DEFUSAGE> psUsage,
) =>
    _WintrustGetDefaultForUsage(
      dwAction,
      pszUsageOID,
      psUsage,
    );

late final _WintrustGetDefaultForUsage = _wintrust.lookupFunction<
    Int32 Function(
  Uint32 dwAction,
  Pointer<Utf8> pszUsageOID,
  Pointer<CRYPT_PROVIDER_DEFUSAGE> psUsage,
),
    int Function(
  int dwAction,
  Pointer<Utf8> pszUsageOID,
  Pointer<CRYPT_PROVIDER_DEFUSAGE> psUsage,
)>('WintrustGetDefaultForUsage');

void WintrustGetRegPolicyFlags(
  Pointer<Uint32> pdwPolicyFlags,
) =>
    _WintrustGetRegPolicyFlags(
      pdwPolicyFlags,
    );

late final _WintrustGetRegPolicyFlags = _wintrust.lookupFunction<
    Void Function(
  Pointer<Uint32> pdwPolicyFlags,
),
    void Function(
  Pointer<Uint32> pdwPolicyFlags,
)>('WintrustGetRegPolicyFlags');

int WintrustLoadFunctionPointers(
  Pointer<GUID> pgActionID,
  Pointer<CRYPT_PROVIDER_FUNCTIONS> pPfns,
) =>
    _WintrustLoadFunctionPointers(
      pgActionID,
      pPfns,
    );

late final _WintrustLoadFunctionPointers = _wintrust.lookupFunction<
    Int32 Function(
  Pointer<GUID> pgActionID,
  Pointer<CRYPT_PROVIDER_FUNCTIONS> pPfns,
),
    int Function(
  Pointer<GUID> pgActionID,
  Pointer<CRYPT_PROVIDER_FUNCTIONS> pPfns,
)>('WintrustLoadFunctionPointers');

int WintrustRemoveActionID(
  Pointer<GUID> pgActionID,
) =>
    _WintrustRemoveActionID(
      pgActionID,
    );

late final _WintrustRemoveActionID = _wintrust.lookupFunction<
    Int32 Function(
  Pointer<GUID> pgActionID,
),
    int Function(
  Pointer<GUID> pgActionID,
)>('WintrustRemoveActionID');

void WintrustSetDefaultIncludePEPageHashes(
  int fIncludePEPageHashes,
) =>
    _WintrustSetDefaultIncludePEPageHashes(
      fIncludePEPageHashes,
    );

late final _WintrustSetDefaultIncludePEPageHashes = _wintrust.lookupFunction<
    Void Function(
  Int32 fIncludePEPageHashes,
),
    void Function(
  int fIncludePEPageHashes,
)>('WintrustSetDefaultIncludePEPageHashes');

int WintrustSetRegPolicyFlags(
  int dwPolicyFlags,
) =>
    _WintrustSetRegPolicyFlags(
      dwPolicyFlags,
    );

late final _WintrustSetRegPolicyFlags = _wintrust.lookupFunction<
    Int32 Function(
  Uint32 dwPolicyFlags,
),
    int Function(
  int dwPolicyFlags,
)>('WintrustSetRegPolicyFlags');
