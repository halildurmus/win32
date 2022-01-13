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
import '../../security/cryptography/structs.g.dart';
import '../../security/wintrust/structs.g.dart';
import '../../security/wintrust/callbacks.g.dart';
import '../../security/cryptography/sip/structs.g.dart';

/// {@category Struct}
class CAT_MEMBERINFO extends Struct {
  external Pointer<Utf16> pwszSubjGuid;

  @Uint32()
  external int dwCertVersion;
}

/// {@category Struct}
class CAT_MEMBERINFO2 extends Struct {
  external GUID SubjectGuid;

  @Uint32()
  external int dwCertVersion;
}

/// {@category Struct}
class CAT_NAMEVALUE extends Struct {
  external Pointer<Utf16> pwszTag;

  @Uint32()
  external int fdwFlags;

  external CRYPTOAPI_BLOB Value;
}

/// {@category Struct}
class CONFIG_CI_PROV_INFO extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwPolicies;

  external Pointer<CRYPTOAPI_BLOB> pPolicies;

  external CONFIG_CI_PROV_INFO_RESULT result;

  @Uint32()
  external int dwScenario;
}

/// {@category Struct}
class CONFIG_CI_PROV_INFO_RESULT extends Struct {
  @Int32()
  external int hr;

  @Uint32()
  external int dwResult;

  @Uint32()
  external int dwPolicyIndex;

  @Uint8()
  external int fIsExplicitDeny;
}

/// {@category Struct}
class CRYPT_PROVIDER_CERT extends Struct {
  @Uint32()
  external int cbStruct;

  external Pointer<CERT_CONTEXT> pCert;

  @Int32()
  external int fCommercial;

  @Int32()
  external int fTrustedRoot;

  @Int32()
  external int fSelfSigned;

  @Int32()
  external int fTestCert;

  @Uint32()
  external int dwRevokedReason;

  @Uint32()
  external int dwConfidence;

  @Uint32()
  external int dwError;

  external Pointer<CTL_CONTEXT> pTrustListContext;

  @Int32()
  external int fTrustListSignerCert;

  external Pointer<CTL_CONTEXT> pCtlContext;

  @Uint32()
  external int dwCtlError;

  @Int32()
  external int fIsCyclic;

  external Pointer<CERT_CHAIN_ELEMENT> pChainElement;
}

/// {@category Struct}
class CRYPT_PROVIDER_DATA extends Struct {
  @Uint32()
  external int cbStruct;

  external Pointer<WINTRUST_DATA> pWintrustData;

  @Int32()
  external int fOpenedFile;

  @IntPtr()
  external int hWndParent;

  external Pointer<GUID> pgActionID;

  @IntPtr()
  external int hProv;

  @Uint32()
  external int dwError;

  @Uint32()
  external int dwRegSecuritySettings;

  @Uint32()
  external int dwRegPolicySettings;

  external Pointer<CRYPT_PROVIDER_FUNCTIONS> psPfns;

  @Uint32()
  external int cdwTrustStepErrors;

  external Pointer<Uint32> padwTrustStepErrors;

  @Uint32()
  external int chStores;

  external Pointer<Pointer> pahStores;

  @Uint32()
  external int dwEncoding;

  external Pointer hMsg;

  @Uint32()
  external int csSigners;

  external Pointer<CRYPT_PROVIDER_SGNR> pasSigners;

  @Uint32()
  external int csProvPrivData;

  external Pointer<CRYPT_PROVIDER_PRIVDATA> pasProvPrivData;

  @Uint32()
  external int dwSubjectChoice;

  external _CRYPT_PROVIDER_DATA__Anonymous_e__Union Anonymous;

  external Pointer<Utf8> pszUsageOID;

  @Int32()
  external int fRecallWithState;

  external FILETIME sftSystemTime;

  external Pointer<Utf8> pszCTLSignerUsageOID;

  @Uint32()
  external int dwProvFlags;

  @Uint32()
  external int dwFinalError;

  external Pointer<CERT_USAGE_MATCH> pRequestUsage;

  @Uint32()
  external int dwTrustPubSettings;

  @Uint32()
  external int dwUIStateFlags;

  external Pointer<CRYPT_PROVIDER_SIGSTATE> pSigState;

  external Pointer<WINTRUST_SIGNATURE_SETTINGS> pSigSettings;
}

/// {@category Struct}
class _CRYPT_PROVIDER_DATA__Anonymous_e__Union extends Union {
  external Pointer<PROVDATA_SIP> pPDSip;
}

extension CRYPT_PROVIDER_DATA_Extension on CRYPT_PROVIDER_DATA {
  Pointer<PROVDATA_SIP> get pPDSip => this.Anonymous.pPDSip;
  set pPDSip(Pointer<PROVDATA_SIP> value) => this.Anonymous.pPDSip = value;
}

/// {@category Struct}
class CRYPT_PROVIDER_DEFUSAGE extends Struct {
  @Uint32()
  external int cbStruct;

  external GUID gActionID;

  external Pointer pDefPolicyCallbackData;

  external Pointer pDefSIPClientData;
}

/// {@category Struct}
class CRYPT_PROVIDER_FUNCTIONS extends Struct {
  @Uint32()
  external int cbStruct;

  external Pointer<NativeFunction<PFN_CPD_MEM_ALLOC>> pfnAlloc;

  external Pointer<NativeFunction<PFN_CPD_MEM_FREE>> pfnFree;

  external Pointer<NativeFunction<PFN_CPD_ADD_STORE>> pfnAddStore2Chain;

  external Pointer<NativeFunction<PFN_CPD_ADD_SGNR>> pfnAddSgnr2Chain;

  external Pointer<NativeFunction<PFN_CPD_ADD_CERT>> pfnAddCert2Chain;

  external Pointer<NativeFunction<PFN_CPD_ADD_PRIVDATA>> pfnAddPrivData2Chain;

  external Pointer<NativeFunction<PFN_PROVIDER_INIT_CALL>> pfnInitialize;

  external Pointer<NativeFunction<PFN_PROVIDER_OBJTRUST_CALL>> pfnObjectTrust;

  external Pointer<NativeFunction<PFN_PROVIDER_SIGTRUST_CALL>>
      pfnSignatureTrust;

  external Pointer<NativeFunction<PFN_PROVIDER_CERTTRUST_CALL>>
      pfnCertificateTrust;

  external Pointer<NativeFunction<PFN_PROVIDER_FINALPOLICY_CALL>>
      pfnFinalPolicy;

  external Pointer<NativeFunction<PFN_PROVIDER_CERTCHKPOLICY_CALL>>
      pfnCertCheckPolicy;

  external Pointer<NativeFunction<PFN_PROVIDER_TESTFINALPOLICY_CALL>>
      pfnTestFinalPolicy;

  external Pointer<CRYPT_PROVUI_FUNCS> psUIpfns;

  external Pointer<NativeFunction<PFN_PROVIDER_CLEANUP_CALL>> pfnCleanupPolicy;
}

/// {@category Struct}
class CRYPT_PROVIDER_PRIVDATA extends Struct {
  @Uint32()
  external int cbStruct;

  external GUID gProviderID;

  @Uint32()
  external int cbProvData;

  external Pointer pvProvData;
}

/// {@category Struct}
class CRYPT_PROVIDER_REGDEFUSAGE extends Struct {
  @Uint32()
  external int cbStruct;

  external Pointer<GUID> pgActionID;

  external Pointer<Utf16> pwszDllName;

  external Pointer<Utf8> pwszLoadCallbackDataFunctionName;

  external Pointer<Utf8> pwszFreeCallbackDataFunctionName;
}

/// {@category Struct}
class CRYPT_PROVIDER_SGNR extends Struct {
  @Uint32()
  external int cbStruct;

  external FILETIME sftVerifyAsOf;

  @Uint32()
  external int csCertChain;

  external Pointer<CRYPT_PROVIDER_CERT> pasCertChain;

  @Uint32()
  external int dwSignerType;

  external Pointer<CMSG_SIGNER_INFO> psSigner;

  @Uint32()
  external int dwError;

  @Uint32()
  external int csCounterSigners;

  external Pointer<CRYPT_PROVIDER_SGNR> pasCounterSigners;

  external Pointer<CERT_CHAIN_CONTEXT> pChainContext;
}

/// {@category Struct}
class CRYPT_PROVIDER_SIGSTATE extends Struct {
  @Uint32()
  external int cbStruct;

  external Pointer<Pointer> rhSecondarySigs;

  external Pointer hPrimarySig;

  @Int32()
  external int fFirstAttemptMade;

  @Int32()
  external int fNoMoreSigs;

  @Uint32()
  external int cSecondarySigs;

  @Uint32()
  external int dwCurrentIndex;

  @Int32()
  external int fSupportMultiSig;

  @Uint32()
  external int dwCryptoPolicySupport;

  @Uint32()
  external int iAttemptCount;

  @Int32()
  external int fCheckedSealing;

  external Pointer<SEALING_SIGNATURE_ATTRIBUTE> pSealingSignature;
}

/// {@category Struct}
class CRYPT_PROVUI_DATA extends Struct {
  @Uint32()
  external int cbStruct;

  @Uint32()
  external int dwFinalError;

  external Pointer<Utf16> pYesButtonText;

  external Pointer<Utf16> pNoButtonText;

  external Pointer<Utf16> pMoreInfoButtonText;

  external Pointer<Utf16> pAdvancedLinkText;

  external Pointer<Utf16> pCopyActionText;

  external Pointer<Utf16> pCopyActionTextNoTS;

  external Pointer<Utf16> pCopyActionTextNotSigned;
}

/// {@category Struct}
class CRYPT_PROVUI_FUNCS extends Struct {
  @Uint32()
  external int cbStruct;

  external Pointer<CRYPT_PROVUI_DATA> psUIData;

  external Pointer<NativeFunction<PFN_PROVUI_CALL>> pfnOnMoreInfoClick;

  external Pointer<NativeFunction<PFN_PROVUI_CALL>> pfnOnMoreInfoClickDefault;

  external Pointer<NativeFunction<PFN_PROVUI_CALL>> pfnOnAdvancedClick;

  external Pointer<NativeFunction<PFN_PROVUI_CALL>> pfnOnAdvancedClickDefault;
}

/// {@category Struct}
class CRYPT_REGISTER_ACTIONID extends Struct {
  @Uint32()
  external int cbStruct;

  external CRYPT_TRUST_REG_ENTRY sInitProvider;

  external CRYPT_TRUST_REG_ENTRY sObjectProvider;

  external CRYPT_TRUST_REG_ENTRY sSignatureProvider;

  external CRYPT_TRUST_REG_ENTRY sCertificateProvider;

  external CRYPT_TRUST_REG_ENTRY sCertificatePolicyProvider;

  external CRYPT_TRUST_REG_ENTRY sFinalPolicyProvider;

  external CRYPT_TRUST_REG_ENTRY sTestPolicyProvider;

  external CRYPT_TRUST_REG_ENTRY sCleanupProvider;
}

/// {@category Struct}
class CRYPT_TRUST_REG_ENTRY extends Struct {
  @Uint32()
  external int cbStruct;

  external Pointer<Utf16> pwszDLLName;

  external Pointer<Utf16> pwszFunctionName;
}

/// {@category Struct}
class DRIVER_VER_INFO extends Struct {
  @Uint32()
  external int cbStruct;

  @IntPtr()
  external int dwReserved1;

  @IntPtr()
  external int dwReserved2;

  @Uint32()
  external int dwPlatform;

  @Uint32()
  external int dwVersion;

  @Array(260)
  external Array<Uint16> _wszVersion;

  String get wszVersion {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_wszVersion[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wszVersion(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _wszVersion[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(260)
  external Array<Uint16> _wszSignedBy;

  String get wszSignedBy {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_wszSignedBy[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wszSignedBy(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _wszSignedBy[i] = stringToStore.codeUnitAt(i);
    }
  }

  external Pointer<CERT_CONTEXT> pcSignerCertContext;

  external DRIVER_VER_MAJORMINOR sOSVersionLow;

  external DRIVER_VER_MAJORMINOR sOSVersionHigh;

  @Uint32()
  external int dwBuildNumberLow;

  @Uint32()
  external int dwBuildNumberHigh;
}

/// {@category Struct}
class DRIVER_VER_MAJORMINOR extends Struct {
  @Uint32()
  external int dwMajor;

  @Uint32()
  external int dwMinor;
}

/// {@category Struct}
class INTENT_TO_SEAL_ATTRIBUTE extends Struct {
  @Uint32()
  external int version;

  @Uint8()
  external int seal;
}

/// {@category Struct}
class PROVDATA_SIP extends Struct {
  @Uint32()
  external int cbStruct;

  external GUID gSubject;

  external Pointer<SIP_DISPATCH_INFO> pSip;

  external Pointer<SIP_DISPATCH_INFO> pCATSip;

  external Pointer<SIP_SUBJECTINFO> psSipSubjectInfo;

  external Pointer<SIP_SUBJECTINFO> psSipCATSubjectInfo;

  external Pointer<SIP_INDIRECT_DATA> psIndirectData;
}

/// {@category Struct}
class SEALING_SIGNATURE_ATTRIBUTE extends Struct {
  @Uint32()
  external int version;

  @Uint32()
  external int signerIndex;

  external CRYPT_ALGORITHM_IDENTIFIER signatureAlgorithm;

  external CRYPTOAPI_BLOB encryptedDigest;
}

/// {@category Struct}
class SEALING_TIMESTAMP_ATTRIBUTE extends Struct {
  @Uint32()
  external int version;

  @Uint32()
  external int signerIndex;

  external CRYPTOAPI_BLOB sealTimeStampToken;
}

/// {@category Struct}
class SPC_FINANCIAL_CRITERIA extends Struct {
  @Int32()
  external int fFinancialInfoAvailable;

  @Int32()
  external int fMeetsCriteria;
}

/// {@category Struct}
class SPC_IMAGE extends Struct {
  external Pointer<SPC_LINK> pImageLink;

  external CRYPTOAPI_BLOB Bitmap;

  external CRYPTOAPI_BLOB Metafile;

  external CRYPTOAPI_BLOB EnhancedMetafile;

  external CRYPTOAPI_BLOB GifFile;
}

/// {@category Struct}
class SPC_INDIRECT_DATA_CONTENT extends Struct {
  external CRYPT_ATTRIBUTE_TYPE_VALUE Data;

  external CRYPT_ALGORITHM_IDENTIFIER DigestAlgorithm;

  external CRYPTOAPI_BLOB Digest;
}

/// {@category Struct}
class SPC_LINK extends Struct {
  @Uint32()
  external int dwLinkChoice;

  external _SPC_LINK__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _SPC_LINK__Anonymous_e__Union extends Union {
  external Pointer<Utf16> pwszUrl;

  external SPC_SERIALIZED_OBJECT Moniker;

  external Pointer<Utf16> pwszFile;
}

extension SPC_LINK_Extension on SPC_LINK {
  Pointer<Utf16> get pwszUrl => this.Anonymous.pwszUrl;
  set pwszUrl(Pointer<Utf16> value) => this.Anonymous.pwszUrl = value;

  SPC_SERIALIZED_OBJECT get Moniker => this.Anonymous.Moniker;
  set Moniker(SPC_SERIALIZED_OBJECT value) => this.Anonymous.Moniker = value;

  Pointer<Utf16> get pwszFile => this.Anonymous.pwszFile;
  set pwszFile(Pointer<Utf16> value) => this.Anonymous.pwszFile = value;
}

/// {@category Struct}
class SPC_PE_IMAGE_DATA extends Struct {
  external CRYPT_BIT_BLOB Flags;

  external Pointer<SPC_LINK> pFile;
}

/// {@category Struct}
class SPC_SERIALIZED_OBJECT extends Struct {
  @Array(16)
  external Array<Uint8> ClassId;

  external CRYPTOAPI_BLOB SerializedData;
}

/// {@category Struct}
class SPC_SIGINFO extends Struct {
  @Uint32()
  external int dwSipVersion;

  external GUID gSIPGuid;

  @Uint32()
  external int dwReserved1;

  @Uint32()
  external int dwReserved2;

  @Uint32()
  external int dwReserved3;

  @Uint32()
  external int dwReserved4;

  @Uint32()
  external int dwReserved5;
}

/// {@category Struct}
class SPC_SP_AGENCY_INFO extends Struct {
  external Pointer<SPC_LINK> pPolicyInformation;

  external Pointer<Utf16> pwszPolicyDisplayText;

  external Pointer<SPC_IMAGE> pLogoImage;

  external Pointer<SPC_LINK> pLogoLink;
}

/// {@category Struct}
class SPC_SP_OPUS_INFO extends Struct {
  external Pointer<Utf16> pwszProgramName;

  external Pointer<SPC_LINK> pMoreInfo;

  external Pointer<SPC_LINK> pPublisherInfo;
}

/// {@category Struct}
class SPC_STATEMENT_TYPE extends Struct {
  @Uint32()
  external int cKeyPurposeId;

  external Pointer<Pointer<Utf8>> rgpszKeyPurposeId;
}

/// {@category Struct}
class WINTRUST_BLOB_INFO extends Struct {
  @Uint32()
  external int cbStruct;

  external GUID gSubject;

  external Pointer<Utf16> pcwszDisplayName;

  @Uint32()
  external int cbMemObject;

  external Pointer<Uint8> pbMemObject;

  @Uint32()
  external int cbMemSignedMsg;

  external Pointer<Uint8> pbMemSignedMsg;
}

/// {@category Struct}
class WINTRUST_CATALOG_INFO extends Struct {
  @Uint32()
  external int cbStruct;

  @Uint32()
  external int dwCatalogVersion;

  external Pointer<Utf16> pcwszCatalogFilePath;

  external Pointer<Utf16> pcwszMemberTag;

  external Pointer<Utf16> pcwszMemberFilePath;

  @IntPtr()
  external int hMemberFile;

  external Pointer<Uint8> pbCalculatedFileHash;

  @Uint32()
  external int cbCalculatedFileHash;

  external Pointer<CTL_CONTEXT> pcCatalogContext;

  @IntPtr()
  external int hCatAdmin;
}

/// {@category Struct}
class WINTRUST_CERT_INFO extends Struct {
  @Uint32()
  external int cbStruct;

  external Pointer<Utf16> pcwszDisplayName;

  external Pointer<CERT_CONTEXT> psCertContext;

  @Uint32()
  external int chStores;

  external Pointer<Pointer> pahStores;

  @Uint32()
  external int dwFlags;

  external Pointer<FILETIME> psftVerifyAsOf;
}

/// {@category Struct}
class WINTRUST_DATA extends Struct {
  @Uint32()
  external int cbStruct;

  external Pointer pPolicyCallbackData;

  external Pointer pSIPClientData;

  @Uint32()
  external int dwUIChoice;

  @Uint32()
  external int fdwRevocationChecks;

  @Uint32()
  external int dwUnionChoice;

  external _WINTRUST_DATA__Anonymous_e__Union Anonymous;

  @Uint32()
  external int dwStateAction;

  @IntPtr()
  external int hWVTStateData;

  external Pointer<Utf16> pwszURLReference;

  @Uint32()
  external int dwProvFlags;

  @Uint32()
  external int dwUIContext;

  external Pointer<WINTRUST_SIGNATURE_SETTINGS> pSignatureSettings;
}

/// {@category Struct}
class _WINTRUST_DATA__Anonymous_e__Union extends Union {
  external Pointer<WINTRUST_FILE_INFO> pFile;

  external Pointer<WINTRUST_CATALOG_INFO> pCatalog;

  external Pointer<WINTRUST_BLOB_INFO> pBlob;

  external Pointer<WINTRUST_SGNR_INFO> pSgnr;

  external Pointer<WINTRUST_CERT_INFO> pCert;
}

extension WINTRUST_DATA_Extension on WINTRUST_DATA {
  Pointer<WINTRUST_FILE_INFO> get pFile => this.Anonymous.pFile;
  set pFile(Pointer<WINTRUST_FILE_INFO> value) => this.Anonymous.pFile = value;

  Pointer<WINTRUST_CATALOG_INFO> get pCatalog => this.Anonymous.pCatalog;
  set pCatalog(Pointer<WINTRUST_CATALOG_INFO> value) =>
      this.Anonymous.pCatalog = value;

  Pointer<WINTRUST_BLOB_INFO> get pBlob => this.Anonymous.pBlob;
  set pBlob(Pointer<WINTRUST_BLOB_INFO> value) => this.Anonymous.pBlob = value;

  Pointer<WINTRUST_SGNR_INFO> get pSgnr => this.Anonymous.pSgnr;
  set pSgnr(Pointer<WINTRUST_SGNR_INFO> value) => this.Anonymous.pSgnr = value;

  Pointer<WINTRUST_CERT_INFO> get pCert => this.Anonymous.pCert;
  set pCert(Pointer<WINTRUST_CERT_INFO> value) => this.Anonymous.pCert = value;
}

/// {@category Struct}
class WINTRUST_FILE_INFO extends Struct {
  @Uint32()
  external int cbStruct;

  external Pointer<Utf16> pcwszFilePath;

  @IntPtr()
  external int hFile;

  external Pointer<GUID> pgKnownSubject;
}

/// {@category Struct}
class WINTRUST_SGNR_INFO extends Struct {
  @Uint32()
  external int cbStruct;

  external Pointer<Utf16> pcwszDisplayName;

  external Pointer<CMSG_SIGNER_INFO> psSignerInfo;

  @Uint32()
  external int chStores;

  external Pointer<Pointer> pahStores;
}

/// {@category Struct}
class WINTRUST_SIGNATURE_SETTINGS extends Struct {
  @Uint32()
  external int cbStruct;

  @Uint32()
  external int dwIndex;

  @Uint32()
  external int dwFlags;

  @Uint32()
  external int cSecondarySigs;

  @Uint32()
  external int dwVerifiedSigIndex;

  external Pointer<CERT_STRONG_SIGN_PARA> pCryptoPolicy;
}

/// {@category Struct}
class WIN_CERTIFICATE extends Struct {
  @Uint32()
  external int dwLength;

  @Uint16()
  external int wRevision;

  @Uint16()
  external int wCertificateType;

  @Array(1)
  external Array<Uint8> bCertificate;
}

/// {@category Struct}
class WIN_SPUB_TRUSTED_PUBLISHER_DATA extends Struct {
  @IntPtr()
  external int hClientToken;

  external Pointer<WIN_CERTIFICATE> lpCertificate;
}

/// {@category Struct}
class WIN_TRUST_ACTDATA_CONTEXT_WITH_SUBJECT extends Struct {
  @IntPtr()
  external int hClientToken;

  external Pointer<GUID> SubjectType;

  external Pointer Subject;
}

/// {@category Struct}
class WIN_TRUST_ACTDATA_SUBJECT_ONLY extends Struct {
  external Pointer<GUID> SubjectType;

  external Pointer Subject;
}

/// {@category Struct}
class WIN_TRUST_SUBJECT_FILE extends Struct {
  @IntPtr()
  external int hFile;

  external Pointer<Utf16> lpPath;
}

/// {@category Struct}
class WIN_TRUST_SUBJECT_FILE_AND_DISPLAY extends Struct {
  @IntPtr()
  external int hFile;

  external Pointer<Utf16> lpPath;

  external Pointer<Utf16> lpDisplayName;
}

/// {@category Struct}
class WTD_GENERIC_CHAIN_POLICY_CREATE_INFO extends Struct {
  external _WTD_GENERIC_CHAIN_POLICY_CREATE_INFO__Anonymous_e__Union Anonymous;

  @IntPtr()
  external int hChainEngine;

  external Pointer<CERT_CHAIN_PARA> pChainPara;

  @Uint32()
  external int dwFlags;

  external Pointer pvReserved;
}

/// {@category Struct}
class _WTD_GENERIC_CHAIN_POLICY_CREATE_INFO__Anonymous_e__Union extends Union {
  @Uint32()
  external int cbStruct;

  @Uint32()
  external int cbSize;
}

extension WTD_GENERIC_CHAIN_POLICY_CREATE_INFO_Extension
    on WTD_GENERIC_CHAIN_POLICY_CREATE_INFO {
  int get cbStruct => this.Anonymous.cbStruct;
  set cbStruct(int value) => this.Anonymous.cbStruct = value;

  int get cbSize => this.Anonymous.cbSize;
  set cbSize(int value) => this.Anonymous.cbSize = value;
}

/// {@category Struct}
class WTD_GENERIC_CHAIN_POLICY_DATA extends Struct {
  external _WTD_GENERIC_CHAIN_POLICY_DATA__Anonymous_e__Union Anonymous;

  external Pointer<WTD_GENERIC_CHAIN_POLICY_CREATE_INFO> pSignerChainInfo;

  external Pointer<WTD_GENERIC_CHAIN_POLICY_CREATE_INFO>
      pCounterSignerChainInfo;

  external Pointer<NativeFunction<PFN_WTD_GENERIC_CHAIN_POLICY_CALLBACK>>
      pfnPolicyCallback;

  external Pointer pvPolicyArg;
}

/// {@category Struct}
class _WTD_GENERIC_CHAIN_POLICY_DATA__Anonymous_e__Union extends Union {
  @Uint32()
  external int cbStruct;

  @Uint32()
  external int cbSize;
}

extension WTD_GENERIC_CHAIN_POLICY_DATA_Extension
    on WTD_GENERIC_CHAIN_POLICY_DATA {
  int get cbStruct => this.Anonymous.cbStruct;
  set cbStruct(int value) => this.Anonymous.cbStruct = value;

  int get cbSize => this.Anonymous.cbSize;
  set cbSize(int value) => this.Anonymous.cbSize = value;
}

/// {@category Struct}
class WTD_GENERIC_CHAIN_POLICY_SIGNER_INFO extends Struct {
  external _WTD_GENERIC_CHAIN_POLICY_SIGNER_INFO__Anonymous_e__Union Anonymous;

  external Pointer<CERT_CHAIN_CONTEXT> pChainContext;

  @Uint32()
  external int dwSignerType;

  external Pointer<CMSG_SIGNER_INFO> pMsgSignerInfo;

  @Uint32()
  external int dwError;

  @Uint32()
  external int cCounterSigner;

  external Pointer<Pointer<WTD_GENERIC_CHAIN_POLICY_SIGNER_INFO>>
      rgpCounterSigner;
}

/// {@category Struct}
class _WTD_GENERIC_CHAIN_POLICY_SIGNER_INFO__Anonymous_e__Union extends Union {
  @Uint32()
  external int cbStruct;

  @Uint32()
  external int cbSize;
}

extension WTD_GENERIC_CHAIN_POLICY_SIGNER_INFO_Extension
    on WTD_GENERIC_CHAIN_POLICY_SIGNER_INFO {
  int get cbStruct => this.Anonymous.cbStruct;
  set cbStruct(int value) => this.Anonymous.cbStruct = value;

  int get cbSize => this.Anonymous.cbSize;
  set cbSize(int value) => this.Anonymous.cbSize = value;
}
