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
import '../../../combase.dart';
import '../../../guid.dart';
import '../../../security/cryptography/structs.g.dart';
import '../../../foundation/structs.g.dart';
import '../../../security/cryptography/ui/structs.g.dart';
import '../../../security/cryptography/ui/callbacks.g.dart';
import '../../../ui/controls/structs.g.dart';
import '../../../security/wintrust/structs.g.dart';

/// {@category Struct}
class CERT_SELECTUI_INPUT extends Struct {
  external Pointer hStore;

  external Pointer<Pointer<CERT_CHAIN_CONTEXT>> prgpChain;

  @Uint32()
  external int cChain;
}

/// {@category Struct}
class CERT_SELECT_STRUCT_ extends Struct {
  @Uint32()
  external int dwSize;

  @IntPtr()
  external int hwndParent;

  @IntPtr()
  external int hInstance;

  external Pointer<Utf16> pTemplateName;

  @Uint32()
  external int dwFlags;

  external Pointer<Utf16> szTitle;

  @Uint32()
  external int cCertStore;

  external Pointer<Pointer> arrayCertStore;

  external Pointer<Utf8> szPurposeOid;

  @Uint32()
  external int cCertContext;

  external Pointer<Pointer<CERT_CONTEXT>> arrayCertContext;

  @IntPtr()
  external int lCustData;

  external Pointer<NativeFunction<PFNCMHOOKPROC>> pfnHook;

  external Pointer<NativeFunction<PFNCMFILTERPROC>> pfnFilter;

  external Pointer<Utf16> szHelpFileName;

  @Uint32()
  external int dwHelpId;

  @IntPtr()
  external int hprov;
}

/// {@category Struct}
class CERT_VERIFY_CERTIFICATE_TRUST extends Struct {
  @Uint32()
  external int cbSize;

  external Pointer<CERT_CONTEXT> pccert;

  @Uint32()
  external int dwFlags;

  @Uint32()
  external int dwIgnoreErr;

  external Pointer<Uint32> pdwErrors;

  external Pointer<Utf8> pszUsageOid;

  @IntPtr()
  external int hprov;

  @Uint32()
  external int cRootStores;

  external Pointer<Pointer> rghstoreRoots;

  @Uint32()
  external int cStores;

  external Pointer<Pointer> rghstoreCAs;

  @Uint32()
  external int cTrustStores;

  external Pointer<Pointer> rghstoreTrust;

  @IntPtr()
  external int lCustData;

  external Pointer<NativeFunction<PFNTRUSTHELPER>> pfnTrustHelper;

  external Pointer<Uint32> pcChain;

  external Pointer<Pointer<Pointer<CERT_CONTEXT>>> prgChain;

  external Pointer<Pointer<Uint32>> prgdwErrors;

  external Pointer<Pointer<CRYPTOAPI_BLOB>> prgpbTrustInfo;
}

/// {@category Struct}
class CERT_VIEWPROPERTIES_STRUCT_ extends Struct {
  @Uint32()
  external int dwSize;

  @IntPtr()
  external int hwndParent;

  @IntPtr()
  external int hInstance;

  @Uint32()
  external int dwFlags;

  external Pointer<Utf16> szTitle;

  external Pointer<CERT_CONTEXT> pCertContext;

  external Pointer<Pointer<Utf8>> arrayPurposes;

  @Uint32()
  external int cArrayPurposes;

  @Uint32()
  external int cRootStores;

  external Pointer<Pointer> rghstoreRoots;

  @Uint32()
  external int cStores;

  external Pointer<Pointer> rghstoreCAs;

  @Uint32()
  external int cTrustStores;

  external Pointer<Pointer> rghstoreTrust;

  @IntPtr()
  external int hprov;

  @IntPtr()
  external int lCustData;

  @Uint32()
  external int dwPad;

  external Pointer<Utf16> szHelpFileName;

  @Uint32()
  external int dwHelpId;

  @Uint32()
  external int nStartPage;

  @Uint32()
  external int cArrayPropSheetPages;

  external Pointer<PROPSHEETPAGE> arrayPropSheetPages;
}

/// {@category Struct}
class CMFLTR extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int cExtensionChecks;

  external Pointer<CMOID> arrayExtensionChecks;

  @Uint32()
  external int dwCheckingFlags;
}

/// {@category Struct}
class CMOID extends Struct {
  external Pointer<Utf8> szExtensionOID;

  @Uint32()
  external int dwTestOperation;

  external Pointer<Uint8> pbTestData;

  @Uint32()
  external int cbTestData;
}

/// {@category Struct}
class CRYPTUI_CERT_MGR_STRUCT extends Struct {
  @Uint32()
  external int dwSize;

  @IntPtr()
  external int hwndParent;

  @Uint32()
  external int dwFlags;

  external Pointer<Utf16> pwszTitle;

  external Pointer<Utf8> pszInitUsageOID;
}

/// {@category Struct}
class CRYPTUI_INITDIALOG_STRUCT extends Struct {
  @IntPtr()
  external int lParam;

  external Pointer<CERT_CONTEXT> pCertContext;
}

/// {@category Struct}
class CRYPTUI_VIEWCERTIFICATE_STRUCT extends Struct {
  @Uint32()
  external int dwSize;

  @IntPtr()
  external int hwndParent;

  @Uint32()
  external int dwFlags;

  external Pointer<Utf16> szTitle;

  external Pointer<CERT_CONTEXT> pCertContext;

  external Pointer<Pointer<Utf8>> rgszPurposes;

  @Uint32()
  external int cPurposes;

  external _CRYPTUI_VIEWCERTIFICATE_STRUCTW__Anonymous_e__Union Anonymous;

  @Int32()
  external int fpCryptProviderDataTrustedUsage;

  @Uint32()
  external int idxSigner;

  @Uint32()
  external int idxCert;

  @Int32()
  external int fCounterSigner;

  @Uint32()
  external int idxCounterSigner;

  @Uint32()
  external int cStores;

  external Pointer<Pointer> rghStores;

  @Uint32()
  external int cPropSheetPages;

  external Pointer<PROPSHEETPAGE> rgPropSheetPages;

  @Uint32()
  external int nStartPage;
}

/// {@category Struct}
class _CRYPTUI_VIEWCERTIFICATE_STRUCTW__Anonymous_e__Union extends Union {
  external Pointer<CRYPT_PROVIDER_DATA> pCryptProviderData;

  @IntPtr()
  external int hWVTStateData;
}

extension CRYPTUI_VIEWCERTIFICATE_STRUCTW_Extension
    on CRYPTUI_VIEWCERTIFICATE_STRUCT {
  Pointer<CRYPT_PROVIDER_DATA> get pCryptProviderData =>
      this.Anonymous.pCryptProviderData;
  set pCryptProviderData(Pointer<CRYPT_PROVIDER_DATA> value) =>
      this.Anonymous.pCryptProviderData = value;

  int get hWVTStateData => this.Anonymous.hWVTStateData;
  set hWVTStateData(int value) => this.Anonymous.hWVTStateData = value;
}

/// {@category Struct}
class CRYPTUI_WIZ_DIGITAL_SIGN_BLOB_INFO extends Struct {
  @Uint32()
  external int dwSize;

  external Pointer<GUID> pGuidSubject;

  @Uint32()
  external int cbBlob;

  external Pointer<Uint8> pbBlob;

  external Pointer<Utf16> pwszDisplayName;
}

/// {@category Struct}
class CRYPTUI_WIZ_DIGITAL_SIGN_CERT_PVK_INFO extends Struct {
  @Uint32()
  external int dwSize;

  external Pointer<Utf16> pwszSigningCertFileName;

  @Uint32()
  external int dwPvkChoice;

  external _CRYPTUI_WIZ_DIGITAL_SIGN_CERT_PVK_INFO__Anonymous_e__Union
      Anonymous;
}

/// {@category Struct}
class _CRYPTUI_WIZ_DIGITAL_SIGN_CERT_PVK_INFO__Anonymous_e__Union
    extends Union {
  external Pointer<CRYPTUI_WIZ_DIGITAL_SIGN_PVK_FILE_INFO> pPvkFileInfo;

  external Pointer<CRYPT_KEY_PROV_INFO> pPvkProvInfo;
}

extension CRYPTUI_WIZ_DIGITAL_SIGN_CERT_PVK_INFO_Extension
    on CRYPTUI_WIZ_DIGITAL_SIGN_CERT_PVK_INFO {
  Pointer<CRYPTUI_WIZ_DIGITAL_SIGN_PVK_FILE_INFO> get pPvkFileInfo =>
      this.Anonymous.pPvkFileInfo;
  set pPvkFileInfo(Pointer<CRYPTUI_WIZ_DIGITAL_SIGN_PVK_FILE_INFO> value) =>
      this.Anonymous.pPvkFileInfo = value;

  Pointer<CRYPT_KEY_PROV_INFO> get pPvkProvInfo => this.Anonymous.pPvkProvInfo;
  set pPvkProvInfo(Pointer<CRYPT_KEY_PROV_INFO> value) =>
      this.Anonymous.pPvkProvInfo = value;
}

/// {@category Struct}
class CRYPTUI_WIZ_DIGITAL_SIGN_CONTEXT extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int cbBlob;

  external Pointer<Uint8> pbBlob;
}

/// {@category Struct}
class CRYPTUI_WIZ_DIGITAL_SIGN_EXTENDED_INFO extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwAttrFlags;

  external Pointer<Utf16> pwszDescription;

  external Pointer<Utf16> pwszMoreInfoLocation;

  external Pointer<Utf8> pszHashAlg;

  external Pointer<Utf16> pwszSigningCertDisplayString;

  external Pointer hAdditionalCertStore;

  external Pointer<CRYPT_ATTRIBUTES> psAuthenticated;

  external Pointer<CRYPT_ATTRIBUTES> psUnauthenticated;
}

/// {@category Struct}
class CRYPTUI_WIZ_DIGITAL_SIGN_INFO extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwSubjectChoice;

  external _CRYPTUI_WIZ_DIGITAL_SIGN_INFO__Anonymous1_e__Union Anonymous1;

  @Uint32()
  external int dwSigningCertChoice;

  external _CRYPTUI_WIZ_DIGITAL_SIGN_INFO__Anonymous2_e__Union Anonymous2;

  external Pointer<Utf16> pwszTimestampURL;

  @Uint32()
  external int dwAdditionalCertChoice;

  external Pointer<CRYPTUI_WIZ_DIGITAL_SIGN_EXTENDED_INFO> pSignExtInfo;
}

/// {@category Struct}
class _CRYPTUI_WIZ_DIGITAL_SIGN_INFO__Anonymous1_e__Union extends Union {
  external Pointer<Utf16> pwszFileName;

  external Pointer<CRYPTUI_WIZ_DIGITAL_SIGN_BLOB_INFO> pSignBlobInfo;
}

extension CRYPTUI_WIZ_DIGITAL_SIGN_INFO_Extension
    on CRYPTUI_WIZ_DIGITAL_SIGN_INFO {
  Pointer<Utf16> get pwszFileName => this.Anonymous1.pwszFileName;
  set pwszFileName(Pointer<Utf16> value) =>
      this.Anonymous1.pwszFileName = value;

  Pointer<CRYPTUI_WIZ_DIGITAL_SIGN_BLOB_INFO> get pSignBlobInfo =>
      this.Anonymous1.pSignBlobInfo;
  set pSignBlobInfo(Pointer<CRYPTUI_WIZ_DIGITAL_SIGN_BLOB_INFO> value) =>
      this.Anonymous1.pSignBlobInfo = value;
}

/// {@category Struct}
class _CRYPTUI_WIZ_DIGITAL_SIGN_INFO__Anonymous2_e__Union extends Union {
  external Pointer<CERT_CONTEXT> pSigningCertContext;

  external Pointer<CRYPTUI_WIZ_DIGITAL_SIGN_STORE_INFO> pSigningCertStore;

  external Pointer<CRYPTUI_WIZ_DIGITAL_SIGN_CERT_PVK_INFO> pSigningCertPvkInfo;
}

extension CRYPTUI_WIZ_DIGITAL_SIGN_INFO_Extension_1
    on CRYPTUI_WIZ_DIGITAL_SIGN_INFO {
  Pointer<CERT_CONTEXT> get pSigningCertContext =>
      this.Anonymous2.pSigningCertContext;
  set pSigningCertContext(Pointer<CERT_CONTEXT> value) =>
      this.Anonymous2.pSigningCertContext = value;

  Pointer<CRYPTUI_WIZ_DIGITAL_SIGN_STORE_INFO> get pSigningCertStore =>
      this.Anonymous2.pSigningCertStore;
  set pSigningCertStore(Pointer<CRYPTUI_WIZ_DIGITAL_SIGN_STORE_INFO> value) =>
      this.Anonymous2.pSigningCertStore = value;

  Pointer<CRYPTUI_WIZ_DIGITAL_SIGN_CERT_PVK_INFO> get pSigningCertPvkInfo =>
      this.Anonymous2.pSigningCertPvkInfo;
  set pSigningCertPvkInfo(
          Pointer<CRYPTUI_WIZ_DIGITAL_SIGN_CERT_PVK_INFO> value) =>
      this.Anonymous2.pSigningCertPvkInfo = value;
}

/// {@category Struct}
class CRYPTUI_WIZ_DIGITAL_SIGN_PVK_FILE_INFO extends Struct {
  @Uint32()
  external int dwSize;

  external Pointer<Utf16> pwszPvkFileName;

  external Pointer<Utf16> pwszProvName;

  @Uint32()
  external int dwProvType;
}

/// {@category Struct}
class CRYPTUI_WIZ_DIGITAL_SIGN_STORE_INFO extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int cCertStore;

  external Pointer<Pointer> rghCertStore;

  external Pointer<NativeFunction<PFNCFILTERPROC>> pFilterCallback;

  external Pointer pvCallbackData;
}

/// {@category Struct}
class CRYPTUI_WIZ_EXPORT_CERTCONTEXT_INFO extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwExportFormat;

  @Int32()
  external int fExportChain;

  @Int32()
  external int fExportPrivateKeys;

  external Pointer<Utf16> pwszPassword;

  @Int32()
  external int fStrongEncryption;
}

/// {@category Struct}
class CRYPTUI_WIZ_EXPORT_INFO extends Struct {
  @Uint32()
  external int dwSize;

  external Pointer<Utf16> pwszExportFileName;

  @Uint32()
  external int dwSubjectChoice;

  external _CRYPTUI_WIZ_EXPORT_INFO__Anonymous_e__Union Anonymous;

  @Uint32()
  external int cStores;

  external Pointer<Pointer> rghStores;
}

/// {@category Struct}
class _CRYPTUI_WIZ_EXPORT_INFO__Anonymous_e__Union extends Union {
  external Pointer<CERT_CONTEXT> pCertContext;

  external Pointer<CTL_CONTEXT> pCTLContext;

  external Pointer<CRL_CONTEXT> pCRLContext;

  external Pointer hCertStore;
}

extension CRYPTUI_WIZ_EXPORT_INFO_Extension on CRYPTUI_WIZ_EXPORT_INFO {
  Pointer<CERT_CONTEXT> get pCertContext => this.Anonymous.pCertContext;
  set pCertContext(Pointer<CERT_CONTEXT> value) =>
      this.Anonymous.pCertContext = value;

  Pointer<CTL_CONTEXT> get pCTLContext => this.Anonymous.pCTLContext;
  set pCTLContext(Pointer<CTL_CONTEXT> value) =>
      this.Anonymous.pCTLContext = value;

  Pointer<CRL_CONTEXT> get pCRLContext => this.Anonymous.pCRLContext;
  set pCRLContext(Pointer<CRL_CONTEXT> value) =>
      this.Anonymous.pCRLContext = value;

  Pointer get hCertStore => this.Anonymous.hCertStore;
  set hCertStore(Pointer value) => this.Anonymous.hCertStore = value;
}

/// {@category Struct}
class CRYPTUI_WIZ_IMPORT_SRC_INFO extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwSubjectChoice;

  external _CRYPTUI_WIZ_IMPORT_SRC_INFO__Anonymous_e__Union Anonymous;

  @Uint32()
  external int dwFlags;

  external Pointer<Utf16> pwszPassword;
}

/// {@category Struct}
class _CRYPTUI_WIZ_IMPORT_SRC_INFO__Anonymous_e__Union extends Union {
  external Pointer<Utf16> pwszFileName;

  external Pointer<CERT_CONTEXT> pCertContext;

  external Pointer<CTL_CONTEXT> pCTLContext;

  external Pointer<CRL_CONTEXT> pCRLContext;

  external Pointer hCertStore;
}

extension CRYPTUI_WIZ_IMPORT_SRC_INFO_Extension on CRYPTUI_WIZ_IMPORT_SRC_INFO {
  Pointer<Utf16> get pwszFileName => this.Anonymous.pwszFileName;
  set pwszFileName(Pointer<Utf16> value) => this.Anonymous.pwszFileName = value;

  Pointer<CERT_CONTEXT> get pCertContext => this.Anonymous.pCertContext;
  set pCertContext(Pointer<CERT_CONTEXT> value) =>
      this.Anonymous.pCertContext = value;

  Pointer<CTL_CONTEXT> get pCTLContext => this.Anonymous.pCTLContext;
  set pCTLContext(Pointer<CTL_CONTEXT> value) =>
      this.Anonymous.pCTLContext = value;

  Pointer<CRL_CONTEXT> get pCRLContext => this.Anonymous.pCRLContext;
  set pCRLContext(Pointer<CRL_CONTEXT> value) =>
      this.Anonymous.pCRLContext = value;

  Pointer get hCertStore => this.Anonymous.hCertStore;
  set hCertStore(Pointer value) => this.Anonymous.hCertStore = value;
}

/// {@category Struct}
class CTL_MODIFY_REQUEST extends Struct {
  external Pointer<CERT_CONTEXT> pccert;

  @Uint32()
  external int dwOperation;

  @Uint32()
  external int dwError;
}
