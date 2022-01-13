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
import '../../security/cryptography/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../security/cryptography/callbacks.g.dart';
import '../../system/registry/structs.g.dart';

/// {@category Struct}
class AUTHENTICODE_EXTRA_CERT_CHAIN_POLICY_PARA extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwRegPolicySettings;

  external Pointer<CMSG_SIGNER_INFO> pSignerInfo;
}

/// {@category Struct}
class AUTHENTICODE_EXTRA_CERT_CHAIN_POLICY_STATUS extends Struct {
  @Uint32()
  external int cbSize;

  @Int32()
  external int fCommercial;
}

/// {@category Struct}
class AUTHENTICODE_TS_EXTRA_CERT_CHAIN_POLICY_PARA extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwRegPolicySettings;

  @Int32()
  external int fCommercial;
}

/// {@category Struct}
class BCRYPT_ALGORITHM_IDENTIFIER extends Struct {
  external Pointer<Utf16> pszName;

  @Uint32()
  external int dwClass;

  @Uint32()
  external int dwFlags;
}

/// {@category Struct}
class BCRYPT_AUTHENTICATED_CIPHER_MODE_INFO extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwInfoVersion;

  external Pointer<Uint8> pbNonce;

  @Uint32()
  external int cbNonce;

  external Pointer<Uint8> pbAuthData;

  @Uint32()
  external int cbAuthData;

  external Pointer<Uint8> pbTag;

  @Uint32()
  external int cbTag;

  external Pointer<Uint8> pbMacContext;

  @Uint32()
  external int cbMacContext;

  @Uint32()
  external int cbAAD;

  @Uint64()
  external int cbData;

  @Uint32()
  external int dwFlags;
}

/// {@category Struct}
class BCRYPT_DH_KEY_BLOB extends Struct {
  @Uint32()
  external int dwMagic;

  @Uint32()
  external int cbKey;
}

/// {@category Struct}
class BCRYPT_DH_PARAMETER_HEADER extends Struct {
  @Uint32()
  external int cbLength;

  @Uint32()
  external int dwMagic;

  @Uint32()
  external int cbKeyLength;
}

/// {@category Struct}
class BCRYPT_DSA_KEY_BLOB extends Struct {
  @Uint32()
  external int dwMagic;

  @Uint32()
  external int cbKey;

  @Array(4)
  external Array<Uint8> Count;

  @Array(20)
  external Array<Uint8> Seed;

  @Array(20)
  external Array<Uint8> q;
}

/// {@category Struct}
class BCRYPT_DSA_KEY_BLOB_V2 extends Struct {
  @Uint32()
  external int dwMagic;

  @Uint32()
  external int cbKey;

  @Int32()
  external int hashAlgorithm;

  @Int32()
  external int standardVersion;

  @Uint32()
  external int cbSeedLength;

  @Uint32()
  external int cbGroupSize;

  @Array(4)
  external Array<Uint8> Count;
}

/// {@category Struct}
class BCRYPT_DSA_PARAMETER_HEADER extends Struct {
  @Uint32()
  external int cbLength;

  @Uint32()
  external int dwMagic;

  @Uint32()
  external int cbKeyLength;

  @Array(4)
  external Array<Uint8> Count;

  @Array(20)
  external Array<Uint8> Seed;

  @Array(20)
  external Array<Uint8> q;
}

/// {@category Struct}
class BCRYPT_DSA_PARAMETER_HEADER_V2 extends Struct {
  @Uint32()
  external int cbLength;

  @Uint32()
  external int dwMagic;

  @Uint32()
  external int cbKeyLength;

  @Int32()
  external int hashAlgorithm;

  @Int32()
  external int standardVersion;

  @Uint32()
  external int cbSeedLength;

  @Uint32()
  external int cbGroupSize;

  @Array(4)
  external Array<Uint8> Count;
}

/// {@category Struct}
class BCRYPT_ECCFULLKEY_BLOB extends Struct {
  @Uint32()
  external int dwMagic;

  @Uint32()
  external int dwVersion;

  @Int32()
  external int dwCurveType;

  @Int32()
  external int dwCurveGenerationAlgId;

  @Uint32()
  external int cbFieldLength;

  @Uint32()
  external int cbSubgroupOrder;

  @Uint32()
  external int cbCofactor;

  @Uint32()
  external int cbSeed;
}

/// {@category Struct}
class BCRYPT_ECCKEY_BLOB extends Struct {
  @Uint32()
  external int dwMagic;

  @Uint32()
  external int cbKey;
}

/// {@category Struct}
class BCRYPT_ECC_CURVE_NAMES extends Struct {
  @Uint32()
  external int dwEccCurveNames;

  external Pointer<Pointer<Utf16>> pEccCurveNames;
}

/// {@category Struct}
class BCRYPT_INTERFACE_VERSION extends Struct {
  @Uint16()
  external int MajorVersion;

  @Uint16()
  external int MinorVersion;
}

/// {@category Struct}
class BCRYPT_KEY_BLOB extends Struct {
  @Uint32()
  external int Magic;
}

/// {@category Struct}
class BCRYPT_KEY_DATA_BLOB_HEADER extends Struct {
  @Uint32()
  external int dwMagic;

  @Uint32()
  external int dwVersion;

  @Uint32()
  external int cbKeyData;
}

/// {@category Struct}
class BCRYPT_KEY_LENGTHS_STRUCT extends Struct {
  @Uint32()
  external int dwMinLength;

  @Uint32()
  external int dwMaxLength;

  @Uint32()
  external int dwIncrement;
}

/// {@category Struct}
class BCRYPT_MULTI_HASH_OPERATION extends Struct {
  @Uint32()
  external int iHash;

  @Int32()
  external int hashOperation;

  external Pointer<Uint8> pbBuffer;

  @Uint32()
  external int cbBuffer;
}

/// {@category Struct}
class BCRYPT_MULTI_OBJECT_LENGTH_STRUCT extends Struct {
  @Uint32()
  external int cbPerObject;

  @Uint32()
  external int cbPerElement;
}

/// {@category Struct}
class BCRYPT_OAEP_PADDING_INFO extends Struct {
  external Pointer<Utf16> pszAlgId;

  external Pointer<Uint8> pbLabel;

  @Uint32()
  external int cbLabel;
}

/// {@category Struct}
class BCRYPT_OID extends Struct {
  @Uint32()
  external int cbOID;

  external Pointer<Uint8> pbOID;
}

/// {@category Struct}
class BCRYPT_OID_LIST extends Struct {
  @Uint32()
  external int dwOIDCount;

  external Pointer<BCRYPT_OID> pOIDs;
}

/// {@category Struct}
class BCRYPT_PKCS1_PADDING_INFO extends Struct {
  external Pointer<Utf16> pszAlgId;
}

/// {@category Struct}
class BCRYPT_PROVIDER_NAME extends Struct {
  external Pointer<Utf16> pszProviderName;
}

/// {@category Struct}
class BCRYPT_PSS_PADDING_INFO extends Struct {
  external Pointer<Utf16> pszAlgId;

  @Uint32()
  external int cbSalt;
}

/// {@category Struct}
class BCRYPT_RSAKEY_BLOB extends Struct {
  @Uint32()
  external int Magic;

  @Uint32()
  external int BitLength;

  @Uint32()
  external int cbPublicExp;

  @Uint32()
  external int cbModulus;

  @Uint32()
  external int cbPrime1;

  @Uint32()
  external int cbPrime2;
}

/// {@category Struct}
class BCryptBuffer extends Struct {
  @Uint32()
  external int cbBuffer;

  @Uint32()
  external int BufferType;

  external Pointer pvBuffer;
}

/// {@category Struct}
class BCryptBufferDesc extends Struct {
  @Uint32()
  external int ulVersion;

  @Uint32()
  external int cBuffers;

  external Pointer<BCryptBuffer> pBuffers;
}

/// {@category Struct}
class CERTIFICATE_CHAIN_BLOB extends Struct {
  @Uint32()
  external int certCount;

  external Pointer<CRYPTOAPI_BLOB> rawCertificates;
}

/// {@category Struct}
class CERT_ACCESS_DESCRIPTION extends Struct {
  external Pointer<Utf8> pszAccessMethod;

  external CERT_ALT_NAME_ENTRY AccessLocation;
}

/// {@category Struct}
class CERT_ALT_NAME_ENTRY extends Struct {
  @Uint32()
  external int dwAltNameChoice;

  external _CERT_ALT_NAME_ENTRY__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _CERT_ALT_NAME_ENTRY__Anonymous_e__Union extends Union {
  external Pointer<CERT_OTHER_NAME> pOtherName;

  external Pointer<Utf16> pwszRfc822Name;

  external Pointer<Utf16> pwszDNSName;

  external CRYPTOAPI_BLOB DirectoryName;

  external Pointer<Utf16> pwszURL;

  external CRYPTOAPI_BLOB IPAddress;

  external Pointer<Utf8> pszRegisteredID;
}

extension CERT_ALT_NAME_ENTRY_Extension on CERT_ALT_NAME_ENTRY {
  Pointer<CERT_OTHER_NAME> get pOtherName => this.Anonymous.pOtherName;
  set pOtherName(Pointer<CERT_OTHER_NAME> value) =>
      this.Anonymous.pOtherName = value;

  Pointer<Utf16> get pwszRfc822Name => this.Anonymous.pwszRfc822Name;
  set pwszRfc822Name(Pointer<Utf16> value) =>
      this.Anonymous.pwszRfc822Name = value;

  Pointer<Utf16> get pwszDNSName => this.Anonymous.pwszDNSName;
  set pwszDNSName(Pointer<Utf16> value) => this.Anonymous.pwszDNSName = value;

  CRYPTOAPI_BLOB get DirectoryName => this.Anonymous.DirectoryName;
  set DirectoryName(CRYPTOAPI_BLOB value) =>
      this.Anonymous.DirectoryName = value;

  Pointer<Utf16> get pwszURL => this.Anonymous.pwszURL;
  set pwszURL(Pointer<Utf16> value) => this.Anonymous.pwszURL = value;

  CRYPTOAPI_BLOB get IPAddress => this.Anonymous.IPAddress;
  set IPAddress(CRYPTOAPI_BLOB value) => this.Anonymous.IPAddress = value;

  Pointer<Utf8> get pszRegisteredID => this.Anonymous.pszRegisteredID;
  set pszRegisteredID(Pointer<Utf8> value) =>
      this.Anonymous.pszRegisteredID = value;
}

/// {@category Struct}
class CERT_ALT_NAME_INFO extends Struct {
  @Uint32()
  external int cAltEntry;

  external Pointer<CERT_ALT_NAME_ENTRY> rgAltEntry;
}

/// {@category Struct}
class CERT_AUTHORITY_INFO_ACCESS extends Struct {
  @Uint32()
  external int cAccDescr;

  external Pointer<CERT_ACCESS_DESCRIPTION> rgAccDescr;
}

/// {@category Struct}
class CERT_AUTHORITY_KEY_ID2_INFO extends Struct {
  external CRYPTOAPI_BLOB KeyId;

  external CERT_ALT_NAME_INFO AuthorityCertIssuer;

  external CRYPTOAPI_BLOB AuthorityCertSerialNumber;
}

/// {@category Struct}
class CERT_AUTHORITY_KEY_ID_INFO extends Struct {
  external CRYPTOAPI_BLOB KeyId;

  external CRYPTOAPI_BLOB CertIssuer;

  external CRYPTOAPI_BLOB CertSerialNumber;
}

/// {@category Struct}
class CERT_BASIC_CONSTRAINTS2_INFO extends Struct {
  @Int32()
  external int fCA;

  @Int32()
  external int fPathLenConstraint;

  @Uint32()
  external int dwPathLenConstraint;
}

/// {@category Struct}
class CERT_BASIC_CONSTRAINTS_INFO extends Struct {
  external CRYPT_BIT_BLOB SubjectType;

  @Int32()
  external int fPathLenConstraint;

  @Uint32()
  external int dwPathLenConstraint;

  @Uint32()
  external int cSubtreesConstraint;

  external Pointer<CRYPTOAPI_BLOB> rgSubtreesConstraint;
}

/// {@category Struct}
class CERT_BIOMETRIC_DATA extends Struct {
  @Uint32()
  external int dwTypeOfBiometricDataChoice;

  external _CERT_BIOMETRIC_DATA__Anonymous_e__Union Anonymous;

  external CERT_HASHED_URL HashedUrl;
}

/// {@category Struct}
class _CERT_BIOMETRIC_DATA__Anonymous_e__Union extends Union {
  @Uint32()
  external int dwPredefined;

  external Pointer<Utf8> pszObjId;
}

extension CERT_BIOMETRIC_DATA_Extension on CERT_BIOMETRIC_DATA {
  int get dwPredefined => this.Anonymous.dwPredefined;
  set dwPredefined(int value) => this.Anonymous.dwPredefined = value;

  Pointer<Utf8> get pszObjId => this.Anonymous.pszObjId;
  set pszObjId(Pointer<Utf8> value) => this.Anonymous.pszObjId = value;
}

/// {@category Struct}
class CERT_BIOMETRIC_EXT_INFO extends Struct {
  @Uint32()
  external int cBiometricData;

  external Pointer<CERT_BIOMETRIC_DATA> rgBiometricData;
}

/// {@category Struct}
class CERT_CHAIN extends Struct {
  @Uint32()
  external int cCerts;

  external Pointer<CRYPTOAPI_BLOB> certs;

  external CRYPT_KEY_PROV_INFO keyLocatorInfo;
}

/// {@category Struct}
class CERT_CHAIN_CONTEXT extends Struct {
  @Uint32()
  external int cbSize;

  external CERT_TRUST_STATUS TrustStatus;

  @Uint32()
  external int cChain;

  external Pointer<Pointer<CERT_SIMPLE_CHAIN>> rgpChain;

  @Uint32()
  external int cLowerQualityChainContext;

  external Pointer<Pointer<CERT_CHAIN_CONTEXT>> rgpLowerQualityChainContext;

  @Int32()
  external int fHasRevocationFreshnessTime;

  @Uint32()
  external int dwRevocationFreshnessTime;

  @Uint32()
  external int dwCreateFlags;

  external GUID ChainId;
}

/// {@category Struct}
class CERT_CHAIN_ELEMENT extends Struct {
  @Uint32()
  external int cbSize;

  external Pointer<CERT_CONTEXT> pCertContext;

  external CERT_TRUST_STATUS TrustStatus;

  external Pointer<CERT_REVOCATION_INFO> pRevocationInfo;

  external Pointer<CTL_USAGE> pIssuanceUsage;

  external Pointer<CTL_USAGE> pApplicationUsage;

  external Pointer<Utf16> pwszExtendedErrorInfo;
}

/// {@category Struct}
class CERT_CHAIN_ENGINE_CONFIG extends Struct {
  @Uint32()
  external int cbSize;

  external Pointer hRestrictedRoot;

  external Pointer hRestrictedTrust;

  external Pointer hRestrictedOther;

  @Uint32()
  external int cAdditionalStore;

  external Pointer<Pointer> rghAdditionalStore;

  @Uint32()
  external int dwFlags;

  @Uint32()
  external int dwUrlRetrievalTimeout;

  @Uint32()
  external int MaximumCachedCertificates;

  @Uint32()
  external int CycleDetectionModulus;

  external Pointer hExclusiveRoot;

  external Pointer hExclusiveTrustedPeople;

  @Uint32()
  external int dwExclusiveFlags;
}

/// {@category Struct}
class CERT_CHAIN_FIND_BY_ISSUER_PARA extends Struct {
  @Uint32()
  external int cbSize;

  external Pointer<Utf8> pszUsageIdentifier;

  @Uint32()
  external int dwKeySpec;

  @Uint32()
  external int dwAcquirePrivateKeyFlags;

  @Uint32()
  external int cIssuer;

  external Pointer<CRYPTOAPI_BLOB> rgIssuer;

  external Pointer<NativeFunction<PFN_CERT_CHAIN_FIND_BY_ISSUER_CALLBACK>>
      pfnFindCallback;

  external Pointer pvFindArg;
}

/// {@category Struct}
class CERT_CHAIN_PARA extends Struct {
  @Uint32()
  external int cbSize;

  external CERT_USAGE_MATCH RequestedUsage;
}

/// {@category Struct}
class CERT_CHAIN_POLICY_PARA extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwFlags;

  external Pointer pvExtraPolicyPara;
}

/// {@category Struct}
class CERT_CHAIN_POLICY_STATUS extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwError;

  @Int32()
  external int lChainIndex;

  @Int32()
  external int lElementIndex;

  external Pointer pvExtraPolicyStatus;
}

/// {@category Struct}
class CERT_CONTEXT extends Struct {
  @Uint32()
  external int dwCertEncodingType;

  external Pointer<Uint8> pbCertEncoded;

  @Uint32()
  external int cbCertEncoded;

  external Pointer<CERT_INFO> pCertInfo;

  external Pointer hCertStore;
}

/// {@category Struct}
class CERT_CREATE_CONTEXT_PARA extends Struct {
  @Uint32()
  external int cbSize;

  external Pointer<NativeFunction<PFN_CRYPT_FREE>> pfnFree;

  external Pointer pvFree;

  external Pointer<NativeFunction<PFN_CERT_CREATE_CONTEXT_SORT_FUNC>> pfnSort;

  external Pointer pvSort;
}

/// {@category Struct}
class CERT_CRL_CONTEXT_PAIR extends Struct {
  external Pointer<CERT_CONTEXT> pCertContext;

  external Pointer<CRL_CONTEXT> pCrlContext;
}

/// {@category Struct}
class CERT_DH_PARAMETERS extends Struct {
  external CRYPTOAPI_BLOB p;

  external CRYPTOAPI_BLOB g;
}

/// {@category Struct}
class CERT_DSS_PARAMETERS extends Struct {
  external CRYPTOAPI_BLOB p;

  external CRYPTOAPI_BLOB q;

  external CRYPTOAPI_BLOB g;
}

/// {@category Struct}
class CERT_ECC_SIGNATURE extends Struct {
  external CRYPTOAPI_BLOB r;

  external CRYPTOAPI_BLOB s;
}

/// {@category Struct}
class CERT_EXTENSION extends Struct {
  external Pointer<Utf8> pszObjId;

  @Int32()
  external int fCritical;

  external CRYPTOAPI_BLOB Value;
}

/// {@category Struct}
class CERT_EXTENSIONS extends Struct {
  @Uint32()
  external int cExtension;

  external Pointer<CERT_EXTENSION> rgExtension;
}

/// {@category Struct}
class CERT_FORTEZZA_DATA_PROP extends Struct {
  @Array(8)
  external Array<Uint8> SerialNumber;

  @Int32()
  external int CertIndex;

  @Array(36)
  external Array<Uint8> CertLabel;
}

/// {@category Struct}
class CERT_GENERAL_SUBTREE extends Struct {
  external CERT_ALT_NAME_ENTRY Base;

  @Uint32()
  external int dwMinimum;

  @Int32()
  external int fMaximum;

  @Uint32()
  external int dwMaximum;
}

/// {@category Struct}
class CERT_HASHED_URL extends Struct {
  external CRYPT_ALGORITHM_IDENTIFIER HashAlgorithm;

  external CRYPTOAPI_BLOB Hash;

  external Pointer<Utf16> pwszUrl;
}

/// {@category Struct}
class CERT_ID extends Struct {
  @Uint32()
  external int dwIdChoice;

  external _CERT_ID__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _CERT_ID__Anonymous_e__Union extends Union {
  external CERT_ISSUER_SERIAL_NUMBER IssuerSerialNumber;

  external CRYPTOAPI_BLOB KeyId;

  external CRYPTOAPI_BLOB HashId;
}

extension CERT_ID_Extension on CERT_ID {
  CERT_ISSUER_SERIAL_NUMBER get IssuerSerialNumber =>
      this.Anonymous.IssuerSerialNumber;
  set IssuerSerialNumber(CERT_ISSUER_SERIAL_NUMBER value) =>
      this.Anonymous.IssuerSerialNumber = value;

  CRYPTOAPI_BLOB get KeyId => this.Anonymous.KeyId;
  set KeyId(CRYPTOAPI_BLOB value) => this.Anonymous.KeyId = value;

  CRYPTOAPI_BLOB get HashId => this.Anonymous.HashId;
  set HashId(CRYPTOAPI_BLOB value) => this.Anonymous.HashId = value;
}

/// {@category Struct}
class CERT_INFO extends Struct {
  @Uint32()
  external int dwVersion;

  external CRYPTOAPI_BLOB SerialNumber;

  external CRYPT_ALGORITHM_IDENTIFIER SignatureAlgorithm;

  external CRYPTOAPI_BLOB Issuer;

  external FILETIME NotBefore;

  external FILETIME NotAfter;

  external CRYPTOAPI_BLOB Subject;

  external CERT_PUBLIC_KEY_INFO SubjectPublicKeyInfo;

  external CRYPT_BIT_BLOB IssuerUniqueId;

  external CRYPT_BIT_BLOB SubjectUniqueId;

  @Uint32()
  external int cExtension;

  external Pointer<CERT_EXTENSION> rgExtension;
}

/// {@category Struct}
class CERT_ISSUER_SERIAL_NUMBER extends Struct {
  external CRYPTOAPI_BLOB Issuer;

  external CRYPTOAPI_BLOB SerialNumber;
}

/// {@category Struct}
class CERT_KEYGEN_REQUEST_INFO extends Struct {
  @Uint32()
  external int dwVersion;

  external CERT_PUBLIC_KEY_INFO SubjectPublicKeyInfo;

  external Pointer<Utf16> pwszChallengeString;
}

/// {@category Struct}
class CERT_KEY_ATTRIBUTES_INFO extends Struct {
  external CRYPTOAPI_BLOB KeyId;

  external CRYPT_BIT_BLOB IntendedKeyUsage;

  external Pointer<CERT_PRIVATE_KEY_VALIDITY> pPrivateKeyUsagePeriod;
}

/// {@category Struct}
class CERT_KEY_CONTEXT extends Struct {
  @Uint32()
  external int cbSize;

  external _CERT_KEY_CONTEXT__Anonymous_e__Union Anonymous;

  @Uint32()
  external int dwKeySpec;
}

/// {@category Struct}
class _CERT_KEY_CONTEXT__Anonymous_e__Union extends Union {
  @IntPtr()
  external int hCryptProv;

  @IntPtr()
  external int hNCryptKey;
}

extension CERT_KEY_CONTEXT_Extension on CERT_KEY_CONTEXT {
  int get hCryptProv => this.Anonymous.hCryptProv;
  set hCryptProv(int value) => this.Anonymous.hCryptProv = value;

  int get hNCryptKey => this.Anonymous.hNCryptKey;
  set hNCryptKey(int value) => this.Anonymous.hNCryptKey = value;
}

/// {@category Struct}
class CERT_KEY_USAGE_RESTRICTION_INFO extends Struct {
  @Uint32()
  external int cCertPolicyId;

  external Pointer<CERT_POLICY_ID> rgCertPolicyId;

  external CRYPT_BIT_BLOB RestrictedKeyUsage;
}

/// {@category Struct}
class CERT_LDAP_STORE_OPENED_PARA extends Struct {
  external Pointer pvLdapSessionHandle;

  external Pointer<Utf16> pwszLdapUrl;
}

/// {@category Struct}
class CERT_LOGOTYPE_AUDIO extends Struct {
  external CERT_LOGOTYPE_DETAILS LogotypeDetails;

  external Pointer<CERT_LOGOTYPE_AUDIO_INFO> pLogotypeAudioInfo;
}

/// {@category Struct}
class CERT_LOGOTYPE_AUDIO_INFO extends Struct {
  @Uint32()
  external int dwFileSize;

  @Uint32()
  external int dwPlayTime;

  @Uint32()
  external int dwChannels;

  @Uint32()
  external int dwSampleRate;

  external Pointer<Utf16> pwszLanguage;
}

/// {@category Struct}
class CERT_LOGOTYPE_DATA extends Struct {
  @Uint32()
  external int cLogotypeImage;

  external Pointer<CERT_LOGOTYPE_IMAGE> rgLogotypeImage;

  @Uint32()
  external int cLogotypeAudio;

  external Pointer<CERT_LOGOTYPE_AUDIO> rgLogotypeAudio;
}

/// {@category Struct}
class CERT_LOGOTYPE_DETAILS extends Struct {
  external Pointer<Utf16> pwszMimeType;

  @Uint32()
  external int cHashedUrl;

  external Pointer<CERT_HASHED_URL> rgHashedUrl;
}

/// {@category Struct}
class CERT_LOGOTYPE_EXT_INFO extends Struct {
  @Uint32()
  external int cCommunityLogo;

  external Pointer<CERT_LOGOTYPE_INFO> rgCommunityLogo;

  external Pointer<CERT_LOGOTYPE_INFO> pIssuerLogo;

  external Pointer<CERT_LOGOTYPE_INFO> pSubjectLogo;

  @Uint32()
  external int cOtherLogo;

  external Pointer<CERT_OTHER_LOGOTYPE_INFO> rgOtherLogo;
}

/// {@category Struct}
class CERT_LOGOTYPE_IMAGE extends Struct {
  external CERT_LOGOTYPE_DETAILS LogotypeDetails;

  external Pointer<CERT_LOGOTYPE_IMAGE_INFO> pLogotypeImageInfo;
}

/// {@category Struct}
class CERT_LOGOTYPE_IMAGE_INFO extends Struct {
  @Uint32()
  external int dwLogotypeImageInfoChoice;

  @Uint32()
  external int dwFileSize;

  @Uint32()
  external int dwXSize;

  @Uint32()
  external int dwYSize;

  @Uint32()
  external int dwLogotypeImageResolutionChoice;

  external _CERT_LOGOTYPE_IMAGE_INFO__Anonymous_e__Union Anonymous;

  external Pointer<Utf16> pwszLanguage;
}

/// {@category Struct}
class _CERT_LOGOTYPE_IMAGE_INFO__Anonymous_e__Union extends Union {
  @Uint32()
  external int dwNumBits;

  @Uint32()
  external int dwTableSize;
}

extension CERT_LOGOTYPE_IMAGE_INFO_Extension on CERT_LOGOTYPE_IMAGE_INFO {
  int get dwNumBits => this.Anonymous.dwNumBits;
  set dwNumBits(int value) => this.Anonymous.dwNumBits = value;

  int get dwTableSize => this.Anonymous.dwTableSize;
  set dwTableSize(int value) => this.Anonymous.dwTableSize = value;
}

/// {@category Struct}
class CERT_LOGOTYPE_INFO extends Struct {
  @Uint32()
  external int dwLogotypeInfoChoice;

  external _CERT_LOGOTYPE_INFO__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _CERT_LOGOTYPE_INFO__Anonymous_e__Union extends Union {
  external Pointer<CERT_LOGOTYPE_DATA> pLogotypeDirectInfo;

  external Pointer<CERT_LOGOTYPE_REFERENCE> pLogotypeIndirectInfo;
}

extension CERT_LOGOTYPE_INFO_Extension on CERT_LOGOTYPE_INFO {
  Pointer<CERT_LOGOTYPE_DATA> get pLogotypeDirectInfo =>
      this.Anonymous.pLogotypeDirectInfo;
  set pLogotypeDirectInfo(Pointer<CERT_LOGOTYPE_DATA> value) =>
      this.Anonymous.pLogotypeDirectInfo = value;

  Pointer<CERT_LOGOTYPE_REFERENCE> get pLogotypeIndirectInfo =>
      this.Anonymous.pLogotypeIndirectInfo;
  set pLogotypeIndirectInfo(Pointer<CERT_LOGOTYPE_REFERENCE> value) =>
      this.Anonymous.pLogotypeIndirectInfo = value;
}

/// {@category Struct}
class CERT_LOGOTYPE_REFERENCE extends Struct {
  @Uint32()
  external int cHashedUrl;

  external Pointer<CERT_HASHED_URL> rgHashedUrl;
}

/// {@category Struct}
class CERT_NAME_CONSTRAINTS_INFO extends Struct {
  @Uint32()
  external int cPermittedSubtree;

  external Pointer<CERT_GENERAL_SUBTREE> rgPermittedSubtree;

  @Uint32()
  external int cExcludedSubtree;

  external Pointer<CERT_GENERAL_SUBTREE> rgExcludedSubtree;
}

/// {@category Struct}
class CERT_NAME_INFO extends Struct {
  @Uint32()
  external int cRDN;

  external Pointer<CERT_RDN> rgRDN;
}

/// {@category Struct}
class CERT_NAME_VALUE extends Struct {
  @Uint32()
  external int dwValueType;

  external CRYPTOAPI_BLOB Value;
}

/// {@category Struct}
class CERT_OR_CRL_BLOB extends Struct {
  @Uint32()
  external int dwChoice;

  @Uint32()
  external int cbEncoded;

  external Pointer<Uint8> pbEncoded;
}

/// {@category Struct}
class CERT_OR_CRL_BUNDLE extends Struct {
  @Uint32()
  external int cItem;

  external Pointer<CERT_OR_CRL_BLOB> rgItem;
}

/// {@category Struct}
class CERT_OTHER_LOGOTYPE_INFO extends Struct {
  external Pointer<Utf8> pszObjId;

  external CERT_LOGOTYPE_INFO LogotypeInfo;
}

/// {@category Struct}
class CERT_OTHER_NAME extends Struct {
  external Pointer<Utf8> pszObjId;

  external CRYPTOAPI_BLOB Value;
}

/// {@category Struct}
class CERT_PAIR extends Struct {
  external CRYPTOAPI_BLOB Forward;

  external CRYPTOAPI_BLOB Reverse;
}

/// {@category Struct}
class CERT_PHYSICAL_STORE_INFO extends Struct {
  @Uint32()
  external int cbSize;

  external Pointer<Utf8> pszOpenStoreProvider;

  @Uint32()
  external int dwOpenEncodingType;

  @Uint32()
  external int dwOpenFlags;

  external CRYPTOAPI_BLOB OpenParameters;

  @Uint32()
  external int dwFlags;

  @Uint32()
  external int dwPriority;
}

/// {@category Struct}
class CERT_POLICIES_INFO extends Struct {
  @Uint32()
  external int cPolicyInfo;

  external Pointer<CERT_POLICY_INFO> rgPolicyInfo;
}

/// {@category Struct}
class CERT_POLICY95_QUALIFIER1 extends Struct {
  external Pointer<Utf16> pszPracticesReference;

  external Pointer<Utf8> pszNoticeIdentifier;

  external Pointer<Utf8> pszNSINoticeIdentifier;

  @Uint32()
  external int cCPSURLs;

  external Pointer<CPS_URLS> rgCPSURLs;
}

/// {@category Struct}
class CERT_POLICY_CONSTRAINTS_INFO extends Struct {
  @Int32()
  external int fRequireExplicitPolicy;

  @Uint32()
  external int dwRequireExplicitPolicySkipCerts;

  @Int32()
  external int fInhibitPolicyMapping;

  @Uint32()
  external int dwInhibitPolicyMappingSkipCerts;
}

/// {@category Struct}
class CERT_POLICY_ID extends Struct {
  @Uint32()
  external int cCertPolicyElementId;

  external Pointer<Pointer<Utf8>> rgpszCertPolicyElementId;
}

/// {@category Struct}
class CERT_POLICY_INFO extends Struct {
  external Pointer<Utf8> pszPolicyIdentifier;

  @Uint32()
  external int cPolicyQualifier;

  external Pointer<CERT_POLICY_QUALIFIER_INFO> rgPolicyQualifier;
}

/// {@category Struct}
class CERT_POLICY_MAPPING extends Struct {
  external Pointer<Utf8> pszIssuerDomainPolicy;

  external Pointer<Utf8> pszSubjectDomainPolicy;
}

/// {@category Struct}
class CERT_POLICY_MAPPINGS_INFO extends Struct {
  @Uint32()
  external int cPolicyMapping;

  external Pointer<CERT_POLICY_MAPPING> rgPolicyMapping;
}

/// {@category Struct}
class CERT_POLICY_QUALIFIER_INFO extends Struct {
  external Pointer<Utf8> pszPolicyQualifierId;

  external CRYPTOAPI_BLOB Qualifier;
}

/// {@category Struct}
class CERT_POLICY_QUALIFIER_NOTICE_REFERENCE extends Struct {
  external Pointer<Utf8> pszOrganization;

  @Uint32()
  external int cNoticeNumbers;

  external Pointer<Int32> rgNoticeNumbers;
}

/// {@category Struct}
class CERT_POLICY_QUALIFIER_USER_NOTICE extends Struct {
  external Pointer<CERT_POLICY_QUALIFIER_NOTICE_REFERENCE> pNoticeReference;

  external Pointer<Utf16> pszDisplayText;
}

/// {@category Struct}
class CERT_PRIVATE_KEY_VALIDITY extends Struct {
  external FILETIME NotBefore;

  external FILETIME NotAfter;
}

/// {@category Struct}
class CERT_PUBLIC_KEY_INFO extends Struct {
  external CRYPT_ALGORITHM_IDENTIFIER Algorithm;

  external CRYPT_BIT_BLOB PublicKey;
}

/// {@category Struct}
class CERT_QC_STATEMENT extends Struct {
  external Pointer<Utf8> pszStatementId;

  external CRYPTOAPI_BLOB StatementInfo;
}

/// {@category Struct}
class CERT_QC_STATEMENTS_EXT_INFO extends Struct {
  @Uint32()
  external int cStatement;

  external Pointer<CERT_QC_STATEMENT> rgStatement;
}

/// {@category Struct}
class CERT_RDN extends Struct {
  @Uint32()
  external int cRDNAttr;

  external Pointer<CERT_RDN_ATTR> rgRDNAttr;
}

/// {@category Struct}
class CERT_RDN_ATTR extends Struct {
  external Pointer<Utf8> pszObjId;

  @Uint32()
  external int dwValueType;

  external CRYPTOAPI_BLOB Value;
}

/// {@category Struct}
class CERT_REGISTRY_STORE_CLIENT_GPT_PARA extends Struct {
  @IntPtr()
  external int hKeyBase;

  external Pointer<Utf16> pwszRegPath;
}

/// {@category Struct}
class CERT_REGISTRY_STORE_ROAMING_PARA extends Struct {
  @IntPtr()
  external int hKey;

  external Pointer<Utf16> pwszStoreDirectory;
}

/// {@category Struct}
class CERT_REQUEST_INFO extends Struct {
  @Uint32()
  external int dwVersion;

  external CRYPTOAPI_BLOB Subject;

  external CERT_PUBLIC_KEY_INFO SubjectPublicKeyInfo;

  @Uint32()
  external int cAttribute;

  external Pointer<CRYPT_ATTRIBUTE> rgAttribute;
}

/// {@category Struct}
class CERT_REVOCATION_CHAIN_PARA extends Struct {
  @Uint32()
  external int cbSize;

  @IntPtr()
  external int hChainEngine;

  external Pointer hAdditionalStore;

  @Uint32()
  external int dwChainFlags;

  @Uint32()
  external int dwUrlRetrievalTimeout;

  external Pointer<FILETIME> pftCurrentTime;

  external Pointer<FILETIME> pftCacheResync;

  @Uint32()
  external int cbMaxUrlRetrievalByteCount;
}

/// {@category Struct}
class CERT_REVOCATION_CRL_INFO extends Struct {
  @Uint32()
  external int cbSize;

  external Pointer<CRL_CONTEXT> pBaseCrlContext;

  external Pointer<CRL_CONTEXT> pDeltaCrlContext;

  external Pointer<CRL_ENTRY> pCrlEntry;

  @Int32()
  external int fDeltaCrlEntry;
}

/// {@category Struct}
class CERT_REVOCATION_INFO extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwRevocationResult;

  external Pointer<Utf8> pszRevocationOid;

  external Pointer pvOidSpecificInfo;

  @Int32()
  external int fHasFreshnessTime;

  @Uint32()
  external int dwFreshnessTime;

  external Pointer<CERT_REVOCATION_CRL_INFO> pCrlInfo;
}

/// {@category Struct}
class CERT_REVOCATION_PARA extends Struct {
  @Uint32()
  external int cbSize;

  external Pointer<CERT_CONTEXT> pIssuerCert;

  @Uint32()
  external int cCertStore;

  external Pointer<Pointer> rgCertStore;

  external Pointer hCrlStore;

  external Pointer<FILETIME> pftTimeToUse;
}

/// {@category Struct}
class CERT_REVOCATION_STATUS extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwIndex;

  @Uint32()
  external int dwError;

  @Uint32()
  external int dwReason;

  @Int32()
  external int fHasFreshnessTime;

  @Uint32()
  external int dwFreshnessTime;
}

/// {@category Struct}
class CERT_SELECT_CHAIN_PARA extends Struct {
  @IntPtr()
  external int hChainEngine;

  external Pointer<FILETIME> pTime;

  external Pointer hAdditionalStore;

  external Pointer<CERT_CHAIN_PARA> pChainPara;

  @Uint32()
  external int dwFlags;
}

/// {@category Struct}
class CERT_SELECT_CRITERIA extends Struct {
  @Uint32()
  external int dwType;

  @Uint32()
  external int cPara;

  external Pointer<Pointer> ppPara;
}

/// {@category Struct}
class CERT_SERVER_OCSP_RESPONSE_CONTEXT extends Struct {
  @Uint32()
  external int cbSize;

  external Pointer<Uint8> pbEncodedOcspResponse;

  @Uint32()
  external int cbEncodedOcspResponse;
}

/// {@category Struct}
class CERT_SERVER_OCSP_RESPONSE_OPEN_PARA extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwFlags;

  external Pointer<Uint32> pcbUsedSize;

  external Pointer<Utf16> pwszOcspDirectory;

  external Pointer<
          NativeFunction<PFN_CERT_SERVER_OCSP_RESPONSE_UPDATE_CALLBACK>>
      pfnUpdateCallback;

  external Pointer pvUpdateCallbackArg;
}

/// {@category Struct}
class CERT_SIGNED_CONTENT_INFO extends Struct {
  external CRYPTOAPI_BLOB ToBeSigned;

  external CRYPT_ALGORITHM_IDENTIFIER SignatureAlgorithm;

  external CRYPT_BIT_BLOB Signature;
}

/// {@category Struct}
class CERT_SIMPLE_CHAIN extends Struct {
  @Uint32()
  external int cbSize;

  external CERT_TRUST_STATUS TrustStatus;

  @Uint32()
  external int cElement;

  external Pointer<Pointer<CERT_CHAIN_ELEMENT>> rgpElement;

  external Pointer<CERT_TRUST_LIST_INFO> pTrustListInfo;

  @Int32()
  external int fHasRevocationFreshnessTime;

  @Uint32()
  external int dwRevocationFreshnessTime;
}

/// {@category Struct}
class CERT_STORE_PROV_FIND_INFO extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwMsgAndCertEncodingType;

  @Uint32()
  external int dwFindFlags;

  @Uint32()
  external int dwFindType;

  external Pointer pvFindPara;
}

/// {@category Struct}
class CERT_STORE_PROV_INFO extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int cStoreProvFunc;

  external Pointer<Pointer> rgpvStoreProvFunc;

  external Pointer hStoreProv;

  @Uint32()
  external int dwStoreProvFlags;

  external Pointer hStoreProvFuncAddr2;
}

/// {@category Struct}
class CERT_STRONG_SIGN_PARA extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwInfoChoice;

  external _CERT_STRONG_SIGN_PARA__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _CERT_STRONG_SIGN_PARA__Anonymous_e__Union extends Union {
  external Pointer pvInfo;

  external Pointer<CERT_STRONG_SIGN_SERIALIZED_INFO> pSerializedInfo;

  external Pointer<Utf8> pszOID;
}

extension CERT_STRONG_SIGN_PARA_Extension on CERT_STRONG_SIGN_PARA {
  Pointer get pvInfo => this.Anonymous.pvInfo;
  set pvInfo(Pointer value) => this.Anonymous.pvInfo = value;

  Pointer<CERT_STRONG_SIGN_SERIALIZED_INFO> get pSerializedInfo =>
      this.Anonymous.pSerializedInfo;
  set pSerializedInfo(Pointer<CERT_STRONG_SIGN_SERIALIZED_INFO> value) =>
      this.Anonymous.pSerializedInfo = value;

  Pointer<Utf8> get pszOID => this.Anonymous.pszOID;
  set pszOID(Pointer<Utf8> value) => this.Anonymous.pszOID = value;
}

/// {@category Struct}
class CERT_STRONG_SIGN_SERIALIZED_INFO extends Struct {
  @Uint32()
  external int dwFlags;

  external Pointer<Utf16> pwszCNGSignHashAlgids;

  external Pointer<Utf16> pwszCNGPubKeyMinBitLengths;
}

/// {@category Struct}
class CERT_SUPPORTED_ALGORITHM_INFO extends Struct {
  external CRYPT_ALGORITHM_IDENTIFIER Algorithm;

  external CRYPT_BIT_BLOB IntendedKeyUsage;

  external CERT_POLICIES_INFO IntendedCertPolicies;
}

/// {@category Struct}
class CERT_SYSTEM_STORE_INFO extends Struct {
  @Uint32()
  external int cbSize;
}

/// {@category Struct}
class CERT_SYSTEM_STORE_RELOCATE_PARA extends Struct {
  external _CERT_SYSTEM_STORE_RELOCATE_PARA__Anonymous1_e__Union Anonymous1;

  external _CERT_SYSTEM_STORE_RELOCATE_PARA__Anonymous2_e__Union Anonymous2;
}

/// {@category Struct}
class _CERT_SYSTEM_STORE_RELOCATE_PARA__Anonymous1_e__Union extends Union {
  @IntPtr()
  external int hKeyBase;

  external Pointer pvBase;
}

extension CERT_SYSTEM_STORE_RELOCATE_PARA_Extension
    on CERT_SYSTEM_STORE_RELOCATE_PARA {
  int get hKeyBase => this.Anonymous1.hKeyBase;
  set hKeyBase(int value) => this.Anonymous1.hKeyBase = value;

  Pointer get pvBase => this.Anonymous1.pvBase;
  set pvBase(Pointer value) => this.Anonymous1.pvBase = value;
}

/// {@category Struct}
class _CERT_SYSTEM_STORE_RELOCATE_PARA__Anonymous2_e__Union extends Union {
  external Pointer pvSystemStore;

  external Pointer<Utf8> pszSystemStore;

  external Pointer<Utf16> pwszSystemStore;
}

extension CERT_SYSTEM_STORE_RELOCATE_PARA_Extension_1
    on CERT_SYSTEM_STORE_RELOCATE_PARA {
  Pointer get pvSystemStore => this.Anonymous2.pvSystemStore;
  set pvSystemStore(Pointer value) => this.Anonymous2.pvSystemStore = value;

  Pointer<Utf8> get pszSystemStore => this.Anonymous2.pszSystemStore;
  set pszSystemStore(Pointer<Utf8> value) =>
      this.Anonymous2.pszSystemStore = value;

  Pointer<Utf16> get pwszSystemStore => this.Anonymous2.pwszSystemStore;
  set pwszSystemStore(Pointer<Utf16> value) =>
      this.Anonymous2.pwszSystemStore = value;
}

/// {@category Struct}
class CERT_TEMPLATE_EXT extends Struct {
  external Pointer<Utf8> pszObjId;

  @Uint32()
  external int dwMajorVersion;

  @Int32()
  external int fMinorVersion;

  @Uint32()
  external int dwMinorVersion;
}

/// {@category Struct}
class CERT_TPM_SPECIFICATION_INFO extends Struct {
  external Pointer<Utf16> pwszFamily;

  @Uint32()
  external int dwLevel;

  @Uint32()
  external int dwRevision;
}

/// {@category Struct}
class CERT_TRUST_LIST_INFO extends Struct {
  @Uint32()
  external int cbSize;

  external Pointer<CTL_ENTRY> pCtlEntry;

  external Pointer<CTL_CONTEXT> pCtlContext;
}

/// {@category Struct}
class CERT_TRUST_STATUS extends Struct {
  @Uint32()
  external int dwErrorStatus;

  @Uint32()
  external int dwInfoStatus;
}

/// {@category Struct}
class CERT_USAGE_MATCH extends Struct {
  @Uint32()
  external int dwType;

  external CTL_USAGE Usage;
}

/// {@category Struct}
class CERT_X942_DH_PARAMETERS extends Struct {
  external CRYPTOAPI_BLOB p;

  external CRYPTOAPI_BLOB g;

  external CRYPTOAPI_BLOB q;

  external CRYPTOAPI_BLOB j;

  external Pointer<CERT_X942_DH_VALIDATION_PARAMS> pValidationParams;
}

/// {@category Struct}
class CERT_X942_DH_VALIDATION_PARAMS extends Struct {
  external CRYPT_BIT_BLOB seed;

  @Uint32()
  external int pgenCounter;
}

/// {@category Struct}
class CLAIMLIST extends Struct {
  @Uint32()
  external int count;

  external Pointer<Pointer<Utf16>> claims;
}

/// {@category Struct}
class CMC_ADD_ATTRIBUTES_INFO extends Struct {
  @Uint32()
  external int dwCmcDataReference;

  @Uint32()
  external int cCertReference;

  external Pointer<Uint32> rgdwCertReference;

  @Uint32()
  external int cAttribute;

  external Pointer<CRYPT_ATTRIBUTE> rgAttribute;
}

/// {@category Struct}
class CMC_ADD_EXTENSIONS_INFO extends Struct {
  @Uint32()
  external int dwCmcDataReference;

  @Uint32()
  external int cCertReference;

  external Pointer<Uint32> rgdwCertReference;

  @Uint32()
  external int cExtension;

  external Pointer<CERT_EXTENSION> rgExtension;
}

/// {@category Struct}
class CMC_DATA_INFO extends Struct {
  @Uint32()
  external int cTaggedAttribute;

  external Pointer<CMC_TAGGED_ATTRIBUTE> rgTaggedAttribute;

  @Uint32()
  external int cTaggedRequest;

  external Pointer<CMC_TAGGED_REQUEST> rgTaggedRequest;

  @Uint32()
  external int cTaggedContentInfo;

  external Pointer<CMC_TAGGED_CONTENT_INFO> rgTaggedContentInfo;

  @Uint32()
  external int cTaggedOtherMsg;

  external Pointer<CMC_TAGGED_OTHER_MSG> rgTaggedOtherMsg;
}

/// {@category Struct}
class CMC_PEND_INFO extends Struct {
  external CRYPTOAPI_BLOB PendToken;

  external FILETIME PendTime;
}

/// {@category Struct}
class CMC_RESPONSE_INFO extends Struct {
  @Uint32()
  external int cTaggedAttribute;

  external Pointer<CMC_TAGGED_ATTRIBUTE> rgTaggedAttribute;

  @Uint32()
  external int cTaggedContentInfo;

  external Pointer<CMC_TAGGED_CONTENT_INFO> rgTaggedContentInfo;

  @Uint32()
  external int cTaggedOtherMsg;

  external Pointer<CMC_TAGGED_OTHER_MSG> rgTaggedOtherMsg;
}

/// {@category Struct}
class CMC_STATUS_INFO extends Struct {
  @Uint32()
  external int dwStatus;

  @Uint32()
  external int cBodyList;

  external Pointer<Uint32> rgdwBodyList;

  external Pointer<Utf16> pwszStatusString;

  @Uint32()
  external int dwOtherInfoChoice;

  external _CMC_STATUS_INFO__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _CMC_STATUS_INFO__Anonymous_e__Union extends Union {
  @Uint32()
  external int dwFailInfo;

  external Pointer<CMC_PEND_INFO> pPendInfo;
}

extension CMC_STATUS_INFO_Extension on CMC_STATUS_INFO {
  int get dwFailInfo => this.Anonymous.dwFailInfo;
  set dwFailInfo(int value) => this.Anonymous.dwFailInfo = value;

  Pointer<CMC_PEND_INFO> get pPendInfo => this.Anonymous.pPendInfo;
  set pPendInfo(Pointer<CMC_PEND_INFO> value) =>
      this.Anonymous.pPendInfo = value;
}

/// {@category Struct}
class CMC_TAGGED_ATTRIBUTE extends Struct {
  @Uint32()
  external int dwBodyPartID;

  external CRYPT_ATTRIBUTE Attribute;
}

/// {@category Struct}
class CMC_TAGGED_CERT_REQUEST extends Struct {
  @Uint32()
  external int dwBodyPartID;

  external CRYPTOAPI_BLOB SignedCertRequest;
}

/// {@category Struct}
class CMC_TAGGED_CONTENT_INFO extends Struct {
  @Uint32()
  external int dwBodyPartID;

  external CRYPTOAPI_BLOB EncodedContentInfo;
}

/// {@category Struct}
class CMC_TAGGED_OTHER_MSG extends Struct {
  @Uint32()
  external int dwBodyPartID;

  external Pointer<Utf8> pszObjId;

  external CRYPTOAPI_BLOB Value;
}

/// {@category Struct}
class CMC_TAGGED_REQUEST extends Struct {
  @Uint32()
  external int dwTaggedRequestChoice;

  external _CMC_TAGGED_REQUEST__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _CMC_TAGGED_REQUEST__Anonymous_e__Union extends Union {
  external Pointer<CMC_TAGGED_CERT_REQUEST> pTaggedCertRequest;
}

extension CMC_TAGGED_REQUEST_Extension on CMC_TAGGED_REQUEST {
  Pointer<CMC_TAGGED_CERT_REQUEST> get pTaggedCertRequest =>
      this.Anonymous.pTaggedCertRequest;
  set pTaggedCertRequest(Pointer<CMC_TAGGED_CERT_REQUEST> value) =>
      this.Anonymous.pTaggedCertRequest = value;
}

/// {@category Struct}
class CMSG_CMS_RECIPIENT_INFO extends Struct {
  @Uint32()
  external int dwRecipientChoice;

  external _CMSG_CMS_RECIPIENT_INFO__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _CMSG_CMS_RECIPIENT_INFO__Anonymous_e__Union extends Union {
  external Pointer<CMSG_KEY_TRANS_RECIPIENT_INFO> pKeyTrans;

  external Pointer<CMSG_KEY_AGREE_RECIPIENT_INFO> pKeyAgree;

  external Pointer<CMSG_MAIL_LIST_RECIPIENT_INFO> pMailList;
}

extension CMSG_CMS_RECIPIENT_INFO_Extension on CMSG_CMS_RECIPIENT_INFO {
  Pointer<CMSG_KEY_TRANS_RECIPIENT_INFO> get pKeyTrans =>
      this.Anonymous.pKeyTrans;
  set pKeyTrans(Pointer<CMSG_KEY_TRANS_RECIPIENT_INFO> value) =>
      this.Anonymous.pKeyTrans = value;

  Pointer<CMSG_KEY_AGREE_RECIPIENT_INFO> get pKeyAgree =>
      this.Anonymous.pKeyAgree;
  set pKeyAgree(Pointer<CMSG_KEY_AGREE_RECIPIENT_INFO> value) =>
      this.Anonymous.pKeyAgree = value;

  Pointer<CMSG_MAIL_LIST_RECIPIENT_INFO> get pMailList =>
      this.Anonymous.pMailList;
  set pMailList(Pointer<CMSG_MAIL_LIST_RECIPIENT_INFO> value) =>
      this.Anonymous.pMailList = value;
}

/// {@category Struct}
class CMSG_CMS_SIGNER_INFO extends Struct {
  @Uint32()
  external int dwVersion;

  external CERT_ID SignerId;

  external CRYPT_ALGORITHM_IDENTIFIER HashAlgorithm;

  external CRYPT_ALGORITHM_IDENTIFIER HashEncryptionAlgorithm;

  external CRYPTOAPI_BLOB EncryptedHash;

  external CRYPT_ATTRIBUTES AuthAttrs;

  external CRYPT_ATTRIBUTES UnauthAttrs;
}

/// {@category Struct}
class CMSG_CNG_CONTENT_DECRYPT_INFO extends Struct {
  @Uint32()
  external int cbSize;

  external CRYPT_ALGORITHM_IDENTIFIER ContentEncryptionAlgorithm;

  external Pointer<NativeFunction<PFN_CMSG_ALLOC>> pfnAlloc;

  external Pointer<NativeFunction<PFN_CMSG_FREE>> pfnFree;

  @IntPtr()
  external int hNCryptKey;

  external Pointer<Uint8> pbContentEncryptKey;

  @Uint32()
  external int cbContentEncryptKey;

  @IntPtr()
  external int hCNGContentEncryptKey;

  external Pointer<Uint8> pbCNGContentEncryptKeyObject;
}

/// {@category Struct}
class CMSG_CONTENT_ENCRYPT_INFO extends Struct {
  @Uint32()
  external int cbSize;

  @IntPtr()
  external int hCryptProv;

  external CRYPT_ALGORITHM_IDENTIFIER ContentEncryptionAlgorithm;

  external Pointer pvEncryptionAuxInfo;

  @Uint32()
  external int cRecipients;

  external Pointer<CMSG_RECIPIENT_ENCODE_INFO> rgCmsRecipients;

  external Pointer<NativeFunction<PFN_CMSG_ALLOC>> pfnAlloc;

  external Pointer<NativeFunction<PFN_CMSG_FREE>> pfnFree;

  @Uint32()
  external int dwEncryptFlags;

  external _CMSG_CONTENT_ENCRYPT_INFO__Anonymous_e__Union Anonymous;

  @Uint32()
  external int dwFlags;

  @Int32()
  external int fCNG;

  external Pointer<Uint8> pbCNGContentEncryptKeyObject;

  external Pointer<Uint8> pbContentEncryptKey;

  @Uint32()
  external int cbContentEncryptKey;
}

/// {@category Struct}
class _CMSG_CONTENT_ENCRYPT_INFO__Anonymous_e__Union extends Union {
  @IntPtr()
  external int hContentEncryptKey;

  @IntPtr()
  external int hCNGContentEncryptKey;
}

extension CMSG_CONTENT_ENCRYPT_INFO_Extension on CMSG_CONTENT_ENCRYPT_INFO {
  int get hContentEncryptKey => this.Anonymous.hContentEncryptKey;
  set hContentEncryptKey(int value) =>
      this.Anonymous.hContentEncryptKey = value;

  int get hCNGContentEncryptKey => this.Anonymous.hCNGContentEncryptKey;
  set hCNGContentEncryptKey(int value) =>
      this.Anonymous.hCNGContentEncryptKey = value;
}

/// {@category Struct}
class CMSG_CTRL_ADD_SIGNER_UNAUTH_ATTR_PARA extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwSignerIndex;

  external CRYPTOAPI_BLOB blob;
}

/// {@category Struct}
class CMSG_CTRL_DECRYPT_PARA extends Struct {
  @Uint32()
  external int cbSize;

  external _CMSG_CTRL_DECRYPT_PARA__Anonymous_e__Union Anonymous;

  @Uint32()
  external int dwKeySpec;

  @Uint32()
  external int dwRecipientIndex;
}

/// {@category Struct}
class _CMSG_CTRL_DECRYPT_PARA__Anonymous_e__Union extends Union {
  @IntPtr()
  external int hCryptProv;

  @IntPtr()
  external int hNCryptKey;
}

extension CMSG_CTRL_DECRYPT_PARA_Extension on CMSG_CTRL_DECRYPT_PARA {
  int get hCryptProv => this.Anonymous.hCryptProv;
  set hCryptProv(int value) => this.Anonymous.hCryptProv = value;

  int get hNCryptKey => this.Anonymous.hNCryptKey;
  set hNCryptKey(int value) => this.Anonymous.hNCryptKey = value;
}

/// {@category Struct}
class CMSG_CTRL_DEL_SIGNER_UNAUTH_ATTR_PARA extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwSignerIndex;

  @Uint32()
  external int dwUnauthAttrIndex;
}

/// {@category Struct}
class CMSG_CTRL_KEY_AGREE_DECRYPT_PARA extends Struct {
  @Uint32()
  external int cbSize;

  external _CMSG_CTRL_KEY_AGREE_DECRYPT_PARA__Anonymous_e__Union Anonymous;

  @Uint32()
  external int dwKeySpec;

  external Pointer<CMSG_KEY_AGREE_RECIPIENT_INFO> pKeyAgree;

  @Uint32()
  external int dwRecipientIndex;

  @Uint32()
  external int dwRecipientEncryptedKeyIndex;

  external CRYPT_BIT_BLOB OriginatorPublicKey;
}

/// {@category Struct}
class _CMSG_CTRL_KEY_AGREE_DECRYPT_PARA__Anonymous_e__Union extends Union {
  @IntPtr()
  external int hCryptProv;

  @IntPtr()
  external int hNCryptKey;
}

extension CMSG_CTRL_KEY_AGREE_DECRYPT_PARA_Extension
    on CMSG_CTRL_KEY_AGREE_DECRYPT_PARA {
  int get hCryptProv => this.Anonymous.hCryptProv;
  set hCryptProv(int value) => this.Anonymous.hCryptProv = value;

  int get hNCryptKey => this.Anonymous.hNCryptKey;
  set hNCryptKey(int value) => this.Anonymous.hNCryptKey = value;
}

/// {@category Struct}
class CMSG_CTRL_KEY_TRANS_DECRYPT_PARA extends Struct {
  @Uint32()
  external int cbSize;

  external _CMSG_CTRL_KEY_TRANS_DECRYPT_PARA__Anonymous_e__Union Anonymous;

  @Uint32()
  external int dwKeySpec;

  external Pointer<CMSG_KEY_TRANS_RECIPIENT_INFO> pKeyTrans;

  @Uint32()
  external int dwRecipientIndex;
}

/// {@category Struct}
class _CMSG_CTRL_KEY_TRANS_DECRYPT_PARA__Anonymous_e__Union extends Union {
  @IntPtr()
  external int hCryptProv;

  @IntPtr()
  external int hNCryptKey;
}

extension CMSG_CTRL_KEY_TRANS_DECRYPT_PARA_Extension
    on CMSG_CTRL_KEY_TRANS_DECRYPT_PARA {
  int get hCryptProv => this.Anonymous.hCryptProv;
  set hCryptProv(int value) => this.Anonymous.hCryptProv = value;

  int get hNCryptKey => this.Anonymous.hNCryptKey;
  set hNCryptKey(int value) => this.Anonymous.hNCryptKey = value;
}

/// {@category Struct}
class CMSG_CTRL_MAIL_LIST_DECRYPT_PARA extends Struct {
  @Uint32()
  external int cbSize;

  @IntPtr()
  external int hCryptProv;

  external Pointer<CMSG_MAIL_LIST_RECIPIENT_INFO> pMailList;

  @Uint32()
  external int dwRecipientIndex;

  @Uint32()
  external int dwKeyChoice;

  external _CMSG_CTRL_MAIL_LIST_DECRYPT_PARA__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _CMSG_CTRL_MAIL_LIST_DECRYPT_PARA__Anonymous_e__Union extends Union {
  @IntPtr()
  external int hKeyEncryptionKey;

  external Pointer pvKeyEncryptionKey;
}

extension CMSG_CTRL_MAIL_LIST_DECRYPT_PARA_Extension
    on CMSG_CTRL_MAIL_LIST_DECRYPT_PARA {
  int get hKeyEncryptionKey => this.Anonymous.hKeyEncryptionKey;
  set hKeyEncryptionKey(int value) => this.Anonymous.hKeyEncryptionKey = value;

  Pointer get pvKeyEncryptionKey => this.Anonymous.pvKeyEncryptionKey;
  set pvKeyEncryptionKey(Pointer value) =>
      this.Anonymous.pvKeyEncryptionKey = value;
}

/// {@category Struct}
class CMSG_CTRL_VERIFY_SIGNATURE_EX_PARA extends Struct {
  @Uint32()
  external int cbSize;

  @IntPtr()
  external int hCryptProv;

  @Uint32()
  external int dwSignerIndex;

  @Uint32()
  external int dwSignerType;

  external Pointer pvSigner;
}

/// {@category Struct}
class CMSG_ENCRYPTED_ENCODE_INFO extends Struct {
  @Uint32()
  external int cbSize;

  external CRYPT_ALGORITHM_IDENTIFIER ContentEncryptionAlgorithm;

  external Pointer pvEncryptionAuxInfo;
}

/// {@category Struct}
class CMSG_ENVELOPED_ENCODE_INFO extends Struct {
  @Uint32()
  external int cbSize;

  @IntPtr()
  external int hCryptProv;

  external CRYPT_ALGORITHM_IDENTIFIER ContentEncryptionAlgorithm;

  external Pointer pvEncryptionAuxInfo;

  @Uint32()
  external int cRecipients;

  external Pointer<Pointer<CERT_INFO>> rgpRecipients;
}

/// {@category Struct}
class CMSG_HASHED_ENCODE_INFO extends Struct {
  @Uint32()
  external int cbSize;

  @IntPtr()
  external int hCryptProv;

  external CRYPT_ALGORITHM_IDENTIFIER HashAlgorithm;

  external Pointer pvHashAuxInfo;
}

/// {@category Struct}
class CMSG_KEY_AGREE_ENCRYPT_INFO extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwRecipientIndex;

  external CRYPT_ALGORITHM_IDENTIFIER KeyEncryptionAlgorithm;

  external CRYPTOAPI_BLOB UserKeyingMaterial;

  @Uint32()
  external int dwOriginatorChoice;

  external _CMSG_KEY_AGREE_ENCRYPT_INFO__Anonymous_e__Union Anonymous;

  @Uint32()
  external int cKeyAgreeKeyEncryptInfo;

  external Pointer<Pointer<CMSG_KEY_AGREE_KEY_ENCRYPT_INFO>>
      rgpKeyAgreeKeyEncryptInfo;

  @Uint32()
  external int dwFlags;
}

/// {@category Struct}
class _CMSG_KEY_AGREE_ENCRYPT_INFO__Anonymous_e__Union extends Union {
  external CERT_ID OriginatorCertId;

  external CERT_PUBLIC_KEY_INFO OriginatorPublicKeyInfo;
}

extension CMSG_KEY_AGREE_ENCRYPT_INFO_Extension on CMSG_KEY_AGREE_ENCRYPT_INFO {
  CERT_ID get OriginatorCertId => this.Anonymous.OriginatorCertId;
  set OriginatorCertId(CERT_ID value) =>
      this.Anonymous.OriginatorCertId = value;

  CERT_PUBLIC_KEY_INFO get OriginatorPublicKeyInfo =>
      this.Anonymous.OriginatorPublicKeyInfo;
  set OriginatorPublicKeyInfo(CERT_PUBLIC_KEY_INFO value) =>
      this.Anonymous.OriginatorPublicKeyInfo = value;
}

/// {@category Struct}
class CMSG_KEY_AGREE_KEY_ENCRYPT_INFO extends Struct {
  @Uint32()
  external int cbSize;

  external CRYPTOAPI_BLOB EncryptedKey;
}

/// {@category Struct}
class CMSG_KEY_AGREE_RECIPIENT_ENCODE_INFO extends Struct {
  @Uint32()
  external int cbSize;

  external CRYPT_ALGORITHM_IDENTIFIER KeyEncryptionAlgorithm;

  external Pointer pvKeyEncryptionAuxInfo;

  external CRYPT_ALGORITHM_IDENTIFIER KeyWrapAlgorithm;

  external Pointer pvKeyWrapAuxInfo;

  @IntPtr()
  external int hCryptProv;

  @Uint32()
  external int dwKeySpec;

  @Uint32()
  external int dwKeyChoice;

  external _CMSG_KEY_AGREE_RECIPIENT_ENCODE_INFO__Anonymous_e__Union Anonymous;

  external CRYPTOAPI_BLOB UserKeyingMaterial;

  @Uint32()
  external int cRecipientEncryptedKeys;

  external Pointer<Pointer<CMSG_RECIPIENT_ENCRYPTED_KEY_ENCODE_INFO>>
      rgpRecipientEncryptedKeys;
}

/// {@category Struct}
class _CMSG_KEY_AGREE_RECIPIENT_ENCODE_INFO__Anonymous_e__Union extends Union {
  external Pointer<CRYPT_ALGORITHM_IDENTIFIER> pEphemeralAlgorithm;

  external Pointer<CERT_ID> pSenderId;
}

extension CMSG_KEY_AGREE_RECIPIENT_ENCODE_INFO_Extension
    on CMSG_KEY_AGREE_RECIPIENT_ENCODE_INFO {
  Pointer<CRYPT_ALGORITHM_IDENTIFIER> get pEphemeralAlgorithm =>
      this.Anonymous.pEphemeralAlgorithm;
  set pEphemeralAlgorithm(Pointer<CRYPT_ALGORITHM_IDENTIFIER> value) =>
      this.Anonymous.pEphemeralAlgorithm = value;

  Pointer<CERT_ID> get pSenderId => this.Anonymous.pSenderId;
  set pSenderId(Pointer<CERT_ID> value) => this.Anonymous.pSenderId = value;
}

/// {@category Struct}
class CMSG_KEY_AGREE_RECIPIENT_INFO extends Struct {
  @Uint32()
  external int dwVersion;

  @Uint32()
  external int dwOriginatorChoice;

  external _CMSG_KEY_AGREE_RECIPIENT_INFO__Anonymous_e__Union Anonymous;

  external CRYPTOAPI_BLOB UserKeyingMaterial;

  external CRYPT_ALGORITHM_IDENTIFIER KeyEncryptionAlgorithm;

  @Uint32()
  external int cRecipientEncryptedKeys;

  external Pointer<Pointer<CMSG_RECIPIENT_ENCRYPTED_KEY_INFO>>
      rgpRecipientEncryptedKeys;
}

/// {@category Struct}
class _CMSG_KEY_AGREE_RECIPIENT_INFO__Anonymous_e__Union extends Union {
  external CERT_ID OriginatorCertId;

  external CERT_PUBLIC_KEY_INFO OriginatorPublicKeyInfo;
}

extension CMSG_KEY_AGREE_RECIPIENT_INFO_Extension
    on CMSG_KEY_AGREE_RECIPIENT_INFO {
  CERT_ID get OriginatorCertId => this.Anonymous.OriginatorCertId;
  set OriginatorCertId(CERT_ID value) =>
      this.Anonymous.OriginatorCertId = value;

  CERT_PUBLIC_KEY_INFO get OriginatorPublicKeyInfo =>
      this.Anonymous.OriginatorPublicKeyInfo;
  set OriginatorPublicKeyInfo(CERT_PUBLIC_KEY_INFO value) =>
      this.Anonymous.OriginatorPublicKeyInfo = value;
}

/// {@category Struct}
class CMSG_KEY_TRANS_ENCRYPT_INFO extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwRecipientIndex;

  external CRYPT_ALGORITHM_IDENTIFIER KeyEncryptionAlgorithm;

  external CRYPTOAPI_BLOB EncryptedKey;

  @Uint32()
  external int dwFlags;
}

/// {@category Struct}
class CMSG_KEY_TRANS_RECIPIENT_ENCODE_INFO extends Struct {
  @Uint32()
  external int cbSize;

  external CRYPT_ALGORITHM_IDENTIFIER KeyEncryptionAlgorithm;

  external Pointer pvKeyEncryptionAuxInfo;

  @IntPtr()
  external int hCryptProv;

  external CRYPT_BIT_BLOB RecipientPublicKey;

  external CERT_ID RecipientId;
}

/// {@category Struct}
class CMSG_KEY_TRANS_RECIPIENT_INFO extends Struct {
  @Uint32()
  external int dwVersion;

  external CERT_ID RecipientId;

  external CRYPT_ALGORITHM_IDENTIFIER KeyEncryptionAlgorithm;

  external CRYPTOAPI_BLOB EncryptedKey;
}

/// {@category Struct}
class CMSG_MAIL_LIST_ENCRYPT_INFO extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwRecipientIndex;

  external CRYPT_ALGORITHM_IDENTIFIER KeyEncryptionAlgorithm;

  external CRYPTOAPI_BLOB EncryptedKey;

  @Uint32()
  external int dwFlags;
}

/// {@category Struct}
class CMSG_MAIL_LIST_RECIPIENT_ENCODE_INFO extends Struct {
  @Uint32()
  external int cbSize;

  external CRYPT_ALGORITHM_IDENTIFIER KeyEncryptionAlgorithm;

  external Pointer pvKeyEncryptionAuxInfo;

  @IntPtr()
  external int hCryptProv;

  @Uint32()
  external int dwKeyChoice;

  external _CMSG_MAIL_LIST_RECIPIENT_ENCODE_INFO__Anonymous_e__Union Anonymous;

  external CRYPTOAPI_BLOB KeyId;

  external FILETIME Date;

  external Pointer<CRYPT_ATTRIBUTE_TYPE_VALUE> pOtherAttr;
}

/// {@category Struct}
class _CMSG_MAIL_LIST_RECIPIENT_ENCODE_INFO__Anonymous_e__Union extends Union {
  @IntPtr()
  external int hKeyEncryptionKey;

  external Pointer pvKeyEncryptionKey;
}

extension CMSG_MAIL_LIST_RECIPIENT_ENCODE_INFO_Extension
    on CMSG_MAIL_LIST_RECIPIENT_ENCODE_INFO {
  int get hKeyEncryptionKey => this.Anonymous.hKeyEncryptionKey;
  set hKeyEncryptionKey(int value) => this.Anonymous.hKeyEncryptionKey = value;

  Pointer get pvKeyEncryptionKey => this.Anonymous.pvKeyEncryptionKey;
  set pvKeyEncryptionKey(Pointer value) =>
      this.Anonymous.pvKeyEncryptionKey = value;
}

/// {@category Struct}
class CMSG_MAIL_LIST_RECIPIENT_INFO extends Struct {
  @Uint32()
  external int dwVersion;

  external CRYPTOAPI_BLOB KeyId;

  external CRYPT_ALGORITHM_IDENTIFIER KeyEncryptionAlgorithm;

  external CRYPTOAPI_BLOB EncryptedKey;

  external FILETIME Date;

  external Pointer<CRYPT_ATTRIBUTE_TYPE_VALUE> pOtherAttr;
}

/// {@category Struct}
class CMSG_RC2_AUX_INFO extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwBitLen;
}

/// {@category Struct}
class CMSG_RC4_AUX_INFO extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwBitLen;
}

/// {@category Struct}
class CMSG_RECIPIENT_ENCODE_INFO extends Struct {
  @Uint32()
  external int dwRecipientChoice;

  external _CMSG_RECIPIENT_ENCODE_INFO__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _CMSG_RECIPIENT_ENCODE_INFO__Anonymous_e__Union extends Union {
  external Pointer<CMSG_KEY_TRANS_RECIPIENT_ENCODE_INFO> pKeyTrans;

  external Pointer<CMSG_KEY_AGREE_RECIPIENT_ENCODE_INFO> pKeyAgree;

  external Pointer<CMSG_MAIL_LIST_RECIPIENT_ENCODE_INFO> pMailList;
}

extension CMSG_RECIPIENT_ENCODE_INFO_Extension on CMSG_RECIPIENT_ENCODE_INFO {
  Pointer<CMSG_KEY_TRANS_RECIPIENT_ENCODE_INFO> get pKeyTrans =>
      this.Anonymous.pKeyTrans;
  set pKeyTrans(Pointer<CMSG_KEY_TRANS_RECIPIENT_ENCODE_INFO> value) =>
      this.Anonymous.pKeyTrans = value;

  Pointer<CMSG_KEY_AGREE_RECIPIENT_ENCODE_INFO> get pKeyAgree =>
      this.Anonymous.pKeyAgree;
  set pKeyAgree(Pointer<CMSG_KEY_AGREE_RECIPIENT_ENCODE_INFO> value) =>
      this.Anonymous.pKeyAgree = value;

  Pointer<CMSG_MAIL_LIST_RECIPIENT_ENCODE_INFO> get pMailList =>
      this.Anonymous.pMailList;
  set pMailList(Pointer<CMSG_MAIL_LIST_RECIPIENT_ENCODE_INFO> value) =>
      this.Anonymous.pMailList = value;
}

/// {@category Struct}
class CMSG_RECIPIENT_ENCRYPTED_KEY_ENCODE_INFO extends Struct {
  @Uint32()
  external int cbSize;

  external CRYPT_BIT_BLOB RecipientPublicKey;

  external CERT_ID RecipientId;

  external FILETIME Date;

  external Pointer<CRYPT_ATTRIBUTE_TYPE_VALUE> pOtherAttr;
}

/// {@category Struct}
class CMSG_RECIPIENT_ENCRYPTED_KEY_INFO extends Struct {
  external CERT_ID RecipientId;

  external CRYPTOAPI_BLOB EncryptedKey;

  external FILETIME Date;

  external Pointer<CRYPT_ATTRIBUTE_TYPE_VALUE> pOtherAttr;
}

/// {@category Struct}
class CMSG_SIGNED_AND_ENVELOPED_ENCODE_INFO extends Struct {
  @Uint32()
  external int cbSize;

  external CMSG_SIGNED_ENCODE_INFO SignedInfo;

  external CMSG_ENVELOPED_ENCODE_INFO EnvelopedInfo;
}

/// {@category Struct}
class CMSG_SIGNED_ENCODE_INFO extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int cSigners;

  external Pointer<CMSG_SIGNER_ENCODE_INFO> rgSigners;

  @Uint32()
  external int cCertEncoded;

  external Pointer<CRYPTOAPI_BLOB> rgCertEncoded;

  @Uint32()
  external int cCrlEncoded;

  external Pointer<CRYPTOAPI_BLOB> rgCrlEncoded;
}

/// {@category Struct}
class CMSG_SIGNER_ENCODE_INFO extends Struct {
  @Uint32()
  external int cbSize;

  external Pointer<CERT_INFO> pCertInfo;

  external _CMSG_SIGNER_ENCODE_INFO__Anonymous_e__Union Anonymous;

  @Uint32()
  external int dwKeySpec;

  external CRYPT_ALGORITHM_IDENTIFIER HashAlgorithm;

  external Pointer pvHashAuxInfo;

  @Uint32()
  external int cAuthAttr;

  external Pointer<CRYPT_ATTRIBUTE> rgAuthAttr;

  @Uint32()
  external int cUnauthAttr;

  external Pointer<CRYPT_ATTRIBUTE> rgUnauthAttr;
}

/// {@category Struct}
class _CMSG_SIGNER_ENCODE_INFO__Anonymous_e__Union extends Union {
  @IntPtr()
  external int hCryptProv;

  @IntPtr()
  external int hNCryptKey;
}

extension CMSG_SIGNER_ENCODE_INFO_Extension on CMSG_SIGNER_ENCODE_INFO {
  int get hCryptProv => this.Anonymous.hCryptProv;
  set hCryptProv(int value) => this.Anonymous.hCryptProv = value;

  int get hNCryptKey => this.Anonymous.hNCryptKey;
  set hNCryptKey(int value) => this.Anonymous.hNCryptKey = value;
}

/// {@category Struct}
class CMSG_SIGNER_INFO extends Struct {
  @Uint32()
  external int dwVersion;

  external CRYPTOAPI_BLOB Issuer;

  external CRYPTOAPI_BLOB SerialNumber;

  external CRYPT_ALGORITHM_IDENTIFIER HashAlgorithm;

  external CRYPT_ALGORITHM_IDENTIFIER HashEncryptionAlgorithm;

  external CRYPTOAPI_BLOB EncryptedHash;

  external CRYPT_ATTRIBUTES AuthAttrs;

  external CRYPT_ATTRIBUTES UnauthAttrs;
}

/// {@category Struct}
class CMSG_SP3_COMPATIBLE_AUX_INFO extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwFlags;
}

/// {@category Struct}
class CMSG_STREAM_INFO extends Struct {
  @Uint32()
  external int cbContent;

  external Pointer<NativeFunction<PFN_CMSG_STREAM_OUTPUT>> pfnStreamOutput;

  external Pointer pvArg;
}

/// {@category Struct}
class CMS_DH_KEY_INFO extends Struct {
  @Uint32()
  external int dwVersion;

  @Uint32()
  external int Algid;

  external Pointer<Utf8> pszContentEncObjId;

  external CRYPTOAPI_BLOB PubInfo;

  external Pointer pReserved;
}

/// {@category Struct}
class CMS_KEY_INFO extends Struct {
  @Uint32()
  external int dwVersion;

  @Uint32()
  external int Algid;

  external Pointer<Uint8> pbOID;

  @Uint32()
  external int cbOID;
}

/// {@category Struct}
class CPS_URLS extends Struct {
  external Pointer<Utf16> pszURL;

  external Pointer<CRYPT_ALGORITHM_IDENTIFIER> pAlgorithm;

  external Pointer<CRYPTOAPI_BLOB> pDigest;
}

/// {@category Struct}
class CRL_CONTEXT extends Struct {
  @Uint32()
  external int dwCertEncodingType;

  external Pointer<Uint8> pbCrlEncoded;

  @Uint32()
  external int cbCrlEncoded;

  external Pointer<CRL_INFO> pCrlInfo;

  external Pointer hCertStore;
}

/// {@category Struct}
class CRL_DIST_POINT extends Struct {
  external CRL_DIST_POINT_NAME DistPointName;

  external CRYPT_BIT_BLOB ReasonFlags;

  external CERT_ALT_NAME_INFO CRLIssuer;
}

/// {@category Struct}
class CRL_DIST_POINTS_INFO extends Struct {
  @Uint32()
  external int cDistPoint;

  external Pointer<CRL_DIST_POINT> rgDistPoint;
}

/// {@category Struct}
class CRL_DIST_POINT_NAME extends Struct {
  @Uint32()
  external int dwDistPointNameChoice;

  external _CRL_DIST_POINT_NAME__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _CRL_DIST_POINT_NAME__Anonymous_e__Union extends Union {
  external CERT_ALT_NAME_INFO FullName;
}

extension CRL_DIST_POINT_NAME_Extension on CRL_DIST_POINT_NAME {
  CERT_ALT_NAME_INFO get FullName => this.Anonymous.FullName;
  set FullName(CERT_ALT_NAME_INFO value) => this.Anonymous.FullName = value;
}

/// {@category Struct}
class CRL_ENTRY extends Struct {
  external CRYPTOAPI_BLOB SerialNumber;

  external FILETIME RevocationDate;

  @Uint32()
  external int cExtension;

  external Pointer<CERT_EXTENSION> rgExtension;
}

/// {@category Struct}
class CRL_FIND_ISSUED_FOR_PARA extends Struct {
  external Pointer<CERT_CONTEXT> pSubjectCert;

  external Pointer<CERT_CONTEXT> pIssuerCert;
}

/// {@category Struct}
class CRL_INFO extends Struct {
  @Uint32()
  external int dwVersion;

  external CRYPT_ALGORITHM_IDENTIFIER SignatureAlgorithm;

  external CRYPTOAPI_BLOB Issuer;

  external FILETIME ThisUpdate;

  external FILETIME NextUpdate;

  @Uint32()
  external int cCRLEntry;

  external Pointer<CRL_ENTRY> rgCRLEntry;

  @Uint32()
  external int cExtension;

  external Pointer<CERT_EXTENSION> rgExtension;
}

/// {@category Struct}
class CRL_ISSUING_DIST_POINT extends Struct {
  external CRL_DIST_POINT_NAME DistPointName;

  @Int32()
  external int fOnlyContainsUserCerts;

  @Int32()
  external int fOnlyContainsCACerts;

  external CRYPT_BIT_BLOB OnlySomeReasonFlags;

  @Int32()
  external int fIndirectCRL;
}

/// {@category Struct}
class CRL_REVOCATION_INFO extends Struct {
  external Pointer<CRL_ENTRY> pCrlEntry;

  external Pointer<CRL_CONTEXT> pCrlContext;

  external Pointer<CERT_CHAIN_CONTEXT> pCrlIssuerChain;
}

/// {@category Struct}
class CROSS_CERT_DIST_POINTS_INFO extends Struct {
  @Uint32()
  external int dwSyncDeltaTime;

  @Uint32()
  external int cDistPoint;

  external Pointer<CERT_ALT_NAME_INFO> rgDistPoint;
}

/// {@category Struct}
class CRYPTNET_URL_CACHE_FLUSH_INFO extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwExemptSeconds;

  external FILETIME ExpireTime;
}

/// {@category Struct}
class CRYPTNET_URL_CACHE_PRE_FETCH_INFO extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwObjectType;

  @Uint32()
  external int dwError;

  @Uint32()
  external int dwReserved;

  external FILETIME ThisUpdateTime;

  external FILETIME NextUpdateTime;

  external FILETIME PublishTime;
}

/// {@category Struct}
class CRYPTNET_URL_CACHE_RESPONSE_INFO extends Struct {
  @Uint32()
  external int cbSize;

  @Uint16()
  external int wResponseType;

  @Uint16()
  external int wResponseFlags;

  external FILETIME LastModifiedTime;

  @Uint32()
  external int dwMaxAge;

  external Pointer<Utf16> pwszETag;

  @Uint32()
  external int dwProxyId;
}

/// {@category Struct}
class CRYPTOAPI_BLOB extends Struct {
  @Uint32()
  external int cbData;

  external Pointer<Uint8> pbData;
}

/// {@category Struct}
class CRYPTPROTECT_PROMPTSTRUCT extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwPromptFlags;

  @IntPtr()
  external int hwndApp;

  external Pointer<Utf16> szPrompt;
}

/// {@category Struct}
class CRYPT_3DES_KEY_STATE extends Struct {
  @Array(24)
  external Array<Uint8> Key;

  @Array(8)
  external Array<Uint8> IV;

  @Array(8)
  external Array<Uint8> Feedback;
}

/// {@category Struct}
class CRYPT_AES_128_KEY_STATE extends Struct {
  @Array(16)
  external Array<Uint8> Key;

  @Array(16)
  external Array<Uint8> IV;

  @Array(176)
  external Array<Uint8> EncryptionState;

  @Array(176)
  external Array<Uint8> DecryptionState;

  @Array(16)
  external Array<Uint8> Feedback;
}

/// {@category Struct}
class CRYPT_AES_256_KEY_STATE extends Struct {
  @Array(32)
  external Array<Uint8> Key;

  @Array(16)
  external Array<Uint8> IV;

  @Array(240)
  external Array<Uint8> EncryptionState;

  @Array(240)
  external Array<Uint8> DecryptionState;

  @Array(16)
  external Array<Uint8> Feedback;
}

/// {@category Struct}
class CRYPT_ALGORITHM_IDENTIFIER extends Struct {
  external Pointer<Utf8> pszObjId;

  external CRYPTOAPI_BLOB Parameters;
}

/// {@category Struct}
class CRYPT_ASYNC_RETRIEVAL_COMPLETION extends Struct {
  external Pointer<NativeFunction<PFN_CRYPT_ASYNC_RETRIEVAL_COMPLETION_FUNC>>
      pfnCompletion;

  external Pointer pvCompletion;
}

/// {@category Struct}
class CRYPT_ATTRIBUTE extends Struct {
  external Pointer<Utf8> pszObjId;

  @Uint32()
  external int cValue;

  external Pointer<CRYPTOAPI_BLOB> rgValue;
}

/// {@category Struct}
class CRYPT_ATTRIBUTES extends Struct {
  @Uint32()
  external int cAttr;

  external Pointer<CRYPT_ATTRIBUTE> rgAttr;
}

/// {@category Struct}
class CRYPT_ATTRIBUTE_TYPE_VALUE extends Struct {
  external Pointer<Utf8> pszObjId;

  external CRYPTOAPI_BLOB Value;
}

/// {@category Struct}
class CRYPT_BIT_BLOB extends Struct {
  @Uint32()
  external int cbData;

  external Pointer<Uint8> pbData;

  @Uint32()
  external int cUnusedBits;
}

/// {@category Struct}
class CRYPT_BLOB_ARRAY extends Struct {
  @Uint32()
  external int cBlob;

  external Pointer<CRYPTOAPI_BLOB> rgBlob;
}

/// {@category Struct}
class CRYPT_CONTENT_INFO extends Struct {
  external Pointer<Utf8> pszObjId;

  external CRYPTOAPI_BLOB Content;
}

/// {@category Struct}
class CRYPT_CONTENT_INFO_SEQUENCE_OF_ANY extends Struct {
  external Pointer<Utf8> pszObjId;

  @Uint32()
  external int cValue;

  external Pointer<CRYPTOAPI_BLOB> rgValue;
}

/// {@category Struct}
class CRYPT_CONTEXTS extends Struct {
  @Uint32()
  external int cContexts;

  external Pointer<Pointer<Utf16>> rgpszContexts;
}

/// {@category Struct}
class CRYPT_CONTEXT_CONFIG extends Struct {
  @Uint32()
  external int dwFlags;

  @Uint32()
  external int dwReserved;
}

/// {@category Struct}
class CRYPT_CONTEXT_FUNCTIONS extends Struct {
  @Uint32()
  external int cFunctions;

  external Pointer<Pointer<Utf16>> rgpszFunctions;
}

/// {@category Struct}
class CRYPT_CONTEXT_FUNCTION_CONFIG extends Struct {
  @Uint32()
  external int dwFlags;

  @Uint32()
  external int dwReserved;
}

/// {@category Struct}
class CRYPT_CONTEXT_FUNCTION_PROVIDERS extends Struct {
  @Uint32()
  external int cProviders;

  external Pointer<Pointer<Utf16>> rgpszProviders;
}

/// {@category Struct}
class CRYPT_CREDENTIALS extends Struct {
  @Uint32()
  external int cbSize;

  external Pointer<Utf8> pszCredentialsOid;

  external Pointer pvCredentials;
}

/// {@category Struct}
class CRYPT_CSP_PROVIDER extends Struct {
  @Uint32()
  external int dwKeySpec;

  external Pointer<Utf16> pwszProviderName;

  external CRYPT_BIT_BLOB Signature;
}

/// {@category Struct}
class CRYPT_DECODE_PARA extends Struct {
  @Uint32()
  external int cbSize;

  external Pointer<NativeFunction<PFN_CRYPT_ALLOC>> pfnAlloc;

  external Pointer<NativeFunction<PFN_CRYPT_FREE>> pfnFree;
}

/// {@category Struct}
class CRYPT_DECRYPT_MESSAGE_PARA extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwMsgAndCertEncodingType;

  @Uint32()
  external int cCertStore;

  external Pointer<Pointer> rghCertStore;
}

/// {@category Struct}
class CRYPT_DEFAULT_CONTEXT_MULTI_OID_PARA extends Struct {
  @Uint32()
  external int cOID;

  external Pointer<Pointer<Utf8>> rgpszOID;
}

/// {@category Struct}
class CRYPT_DES_KEY_STATE extends Struct {
  @Array(8)
  external Array<Uint8> Key;

  @Array(8)
  external Array<Uint8> IV;

  @Array(8)
  external Array<Uint8> Feedback;
}

/// {@category Struct}
class CRYPT_ECC_CMS_SHARED_INFO extends Struct {
  external CRYPT_ALGORITHM_IDENTIFIER Algorithm;

  external CRYPTOAPI_BLOB EntityUInfo;

  @Array(4)
  external Array<Uint8> rgbSuppPubInfo;
}

/// {@category Struct}
class CRYPT_ECC_PRIVATE_KEY_INFO extends Struct {
  @Uint32()
  external int dwVersion;

  external CRYPTOAPI_BLOB PrivateKey;

  external Pointer<Utf8> szCurveOid;

  external CRYPT_BIT_BLOB PublicKey;
}

/// {@category Struct}
class CRYPT_ENCODE_PARA extends Struct {
  @Uint32()
  external int cbSize;

  external Pointer<NativeFunction<PFN_CRYPT_ALLOC>> pfnAlloc;

  external Pointer<NativeFunction<PFN_CRYPT_FREE>> pfnFree;
}

/// {@category Struct}
class CRYPT_ENCRYPTED_PRIVATE_KEY_INFO extends Struct {
  external CRYPT_ALGORITHM_IDENTIFIER EncryptionAlgorithm;

  external CRYPTOAPI_BLOB EncryptedPrivateKey;
}

/// {@category Struct}
class CRYPT_ENCRYPT_MESSAGE_PARA extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwMsgEncodingType;

  @IntPtr()
  external int hCryptProv;

  external CRYPT_ALGORITHM_IDENTIFIER ContentEncryptionAlgorithm;

  external Pointer pvEncryptionAuxInfo;

  @Uint32()
  external int dwFlags;

  @Uint32()
  external int dwInnerContentType;
}

/// {@category Struct}
class CRYPT_ENROLLMENT_NAME_VALUE_PAIR extends Struct {
  external Pointer<Utf16> pwszName;

  external Pointer<Utf16> pwszValue;
}

/// {@category Struct}
class CRYPT_GET_TIME_VALID_OBJECT_EXTRA_INFO extends Struct {
  @Uint32()
  external int cbSize;

  @Int32()
  external int iDeltaCrlIndicator;

  external Pointer<FILETIME> pftCacheResync;

  external Pointer<FILETIME> pLastSyncTime;

  external Pointer<FILETIME> pMaxAgeTime;

  external Pointer<CERT_REVOCATION_CHAIN_PARA> pChainPara;

  external Pointer<CRYPTOAPI_BLOB> pDeltaCrlIndicator;
}

/// {@category Struct}
class CRYPT_HASH_INFO extends Struct {
  external CRYPT_ALGORITHM_IDENTIFIER HashAlgorithm;

  external CRYPTOAPI_BLOB Hash;
}

/// {@category Struct}
class CRYPT_HASH_MESSAGE_PARA extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwMsgEncodingType;

  @IntPtr()
  external int hCryptProv;

  external CRYPT_ALGORITHM_IDENTIFIER HashAlgorithm;

  external Pointer pvHashAuxInfo;
}

/// {@category Struct}
class CRYPT_IMAGE_REF extends Struct {
  external Pointer<Utf16> pszImage;

  @Uint32()
  external int dwFlags;
}

/// {@category Struct}
class CRYPT_IMAGE_REG extends Struct {
  external Pointer<Utf16> pszImage;

  @Uint32()
  external int cInterfaces;

  external Pointer<Pointer<CRYPT_INTERFACE_REG>> rgpInterfaces;
}

/// {@category Struct}
class CRYPT_INTERFACE_REG extends Struct {
  @Uint32()
  external int dwInterface;

  @Uint32()
  external int dwFlags;

  @Uint32()
  external int cFunctions;

  external Pointer<Pointer<Utf16>> rgpszFunctions;
}

/// {@category Struct}
class CRYPT_KEY_PROV_INFO extends Struct {
  external Pointer<Utf16> pwszContainerName;

  external Pointer<Utf16> pwszProvName;

  @Uint32()
  external int dwProvType;

  @Uint32()
  external int dwFlags;

  @Uint32()
  external int cProvParam;

  external Pointer<CRYPT_KEY_PROV_PARAM> rgProvParam;

  @Uint32()
  external int dwKeySpec;
}

/// {@category Struct}
class CRYPT_KEY_PROV_PARAM extends Struct {
  @Uint32()
  external int dwParam;

  external Pointer<Uint8> pbData;

  @Uint32()
  external int cbData;

  @Uint32()
  external int dwFlags;
}

/// {@category Struct}
class CRYPT_KEY_SIGN_MESSAGE_PARA extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwMsgAndCertEncodingType;

  external _CRYPT_KEY_SIGN_MESSAGE_PARA__Anonymous_e__Union Anonymous;

  @Uint32()
  external int dwKeySpec;

  external CRYPT_ALGORITHM_IDENTIFIER HashAlgorithm;

  external Pointer pvHashAuxInfo;

  external CRYPT_ALGORITHM_IDENTIFIER PubKeyAlgorithm;
}

/// {@category Struct}
class _CRYPT_KEY_SIGN_MESSAGE_PARA__Anonymous_e__Union extends Union {
  @IntPtr()
  external int hCryptProv;

  @IntPtr()
  external int hNCryptKey;
}

extension CRYPT_KEY_SIGN_MESSAGE_PARA_Extension on CRYPT_KEY_SIGN_MESSAGE_PARA {
  int get hCryptProv => this.Anonymous.hCryptProv;
  set hCryptProv(int value) => this.Anonymous.hCryptProv = value;

  int get hNCryptKey => this.Anonymous.hNCryptKey;
  set hNCryptKey(int value) => this.Anonymous.hNCryptKey = value;
}

/// {@category Struct}
class CRYPT_KEY_VERIFY_MESSAGE_PARA extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwMsgEncodingType;

  @IntPtr()
  external int hCryptProv;
}

/// {@category Struct}
class CRYPT_MASK_GEN_ALGORITHM extends Struct {
  external Pointer<Utf8> pszObjId;

  external CRYPT_ALGORITHM_IDENTIFIER HashAlgorithm;
}

/// {@category Struct}
class CRYPT_OBJECT_LOCATOR_PROVIDER_TABLE extends Struct {
  @Uint32()
  external int cbSize;

  external Pointer<NativeFunction<PFN_CRYPT_OBJECT_LOCATOR_PROVIDER_GET>>
      pfnGet;

  external Pointer<NativeFunction<PFN_CRYPT_OBJECT_LOCATOR_PROVIDER_RELEASE>>
      pfnRelease;

  external Pointer<
          NativeFunction<PFN_CRYPT_OBJECT_LOCATOR_PROVIDER_FREE_PASSWORD>>
      pfnFreePassword;

  external Pointer<NativeFunction<PFN_CRYPT_OBJECT_LOCATOR_PROVIDER_FREE>>
      pfnFree;

  external Pointer<
          NativeFunction<PFN_CRYPT_OBJECT_LOCATOR_PROVIDER_FREE_IDENTIFIER>>
      pfnFreeIdentifier;
}

/// {@category Struct}
class CRYPT_OBJID_TABLE extends Struct {
  @Uint32()
  external int dwAlgId;

  external Pointer<Utf8> pszObjId;
}

/// {@category Struct}
class CRYPT_OID_FUNC_ENTRY extends Struct {
  external Pointer<Utf8> pszOID;

  external Pointer pvFuncAddr;
}

/// {@category Struct}
class CRYPT_OID_INFO extends Struct {
  @Uint32()
  external int cbSize;

  external Pointer<Utf8> pszOID;

  external Pointer<Utf16> pwszName;

  @Uint32()
  external int dwGroupId;

  external _CRYPT_OID_INFO__Anonymous_e__Union Anonymous;

  external CRYPTOAPI_BLOB ExtraInfo;
}

/// {@category Struct}
class _CRYPT_OID_INFO__Anonymous_e__Union extends Union {
  @Uint32()
  external int dwValue;

  @Uint32()
  external int Algid;

  @Uint32()
  external int dwLength;
}

extension CRYPT_OID_INFO_Extension on CRYPT_OID_INFO {
  int get dwValue => this.Anonymous.dwValue;
  set dwValue(int value) => this.Anonymous.dwValue = value;

  int get Algid => this.Anonymous.Algid;
  set Algid(int value) => this.Anonymous.Algid = value;

  int get dwLength => this.Anonymous.dwLength;
  set dwLength(int value) => this.Anonymous.dwLength = value;
}

/// {@category Struct}
class CRYPT_PASSWORD_CREDENTIALS extends Struct {
  @Uint32()
  external int cbSize;

  external Pointer<Utf16> pszUsername;

  external Pointer<Utf16> pszPassword;
}

/// {@category Struct}
class CRYPT_PKCS12_PBE_PARAMS extends Struct {
  @Int32()
  external int iIterations;

  @Uint32()
  external int cbSalt;
}

/// {@category Struct}
class CRYPT_PKCS8_EXPORT_PARAMS extends Struct {
  @IntPtr()
  external int hCryptProv;

  @Uint32()
  external int dwKeySpec;

  external Pointer<Utf8> pszPrivateKeyObjId;

  external Pointer<NativeFunction<PCRYPT_ENCRYPT_PRIVATE_KEY_FUNC>>
      pEncryptPrivateKeyFunc;

  external Pointer pVoidEncryptFunc;
}

/// {@category Struct}
class CRYPT_PKCS8_IMPORT_PARAMS extends Struct {
  external CRYPTOAPI_BLOB PrivateKey;

  external Pointer<NativeFunction<PCRYPT_RESOLVE_HCRYPTPROV_FUNC>>
      pResolvehCryptProvFunc;

  external Pointer pVoidResolveFunc;

  external Pointer<NativeFunction<PCRYPT_DECRYPT_PRIVATE_KEY_FUNC>>
      pDecryptPrivateKeyFunc;

  external Pointer pVoidDecryptFunc;
}

/// {@category Struct}
class CRYPT_PRIVATE_KEY_INFO extends Struct {
  @Uint32()
  external int Version;

  external CRYPT_ALGORITHM_IDENTIFIER Algorithm;

  external CRYPTOAPI_BLOB PrivateKey;

  external Pointer<CRYPT_ATTRIBUTES> pAttributes;
}

/// {@category Struct}
class CRYPT_PROPERTY_REF extends Struct {
  external Pointer<Utf16> pszProperty;

  @Uint32()
  external int cbValue;

  external Pointer<Uint8> pbValue;
}

/// {@category Struct}
class CRYPT_PROVIDERS extends Struct {
  @Uint32()
  external int cProviders;

  external Pointer<Pointer<Utf16>> rgpszProviders;
}

/// {@category Struct}
class CRYPT_PROVIDER_REF extends Struct {
  @Uint32()
  external int dwInterface;

  external Pointer<Utf16> pszFunction;

  external Pointer<Utf16> pszProvider;

  @Uint32()
  external int cProperties;

  external Pointer<Pointer<CRYPT_PROPERTY_REF>> rgpProperties;

  external Pointer<CRYPT_IMAGE_REF> pUM;

  external Pointer<CRYPT_IMAGE_REF> pKM;
}

/// {@category Struct}
class CRYPT_PROVIDER_REFS extends Struct {
  @Uint32()
  external int cProviders;

  external Pointer<Pointer<CRYPT_PROVIDER_REF>> rgpProviders;
}

/// {@category Struct}
class CRYPT_PROVIDER_REG extends Struct {
  @Uint32()
  external int cAliases;

  external Pointer<Pointer<Utf16>> rgpszAliases;

  external Pointer<CRYPT_IMAGE_REG> pUM;

  external Pointer<CRYPT_IMAGE_REG> pKM;
}

/// {@category Struct}
class CRYPT_PSOURCE_ALGORITHM extends Struct {
  external Pointer<Utf8> pszObjId;

  external CRYPTOAPI_BLOB EncodingParameters;
}

/// {@category Struct}
class CRYPT_RC2_CBC_PARAMETERS extends Struct {
  @Uint32()
  external int dwVersion;

  @Int32()
  external int fIV;

  @Array(8)
  external Array<Uint8> rgbIV;
}

/// {@category Struct}
class CRYPT_RC4_KEY_STATE extends Struct {
  @Array(16)
  external Array<Uint8> Key;

  @Array(256)
  external Array<Uint8> SBox;

  @Uint8()
  external int i;

  @Uint8()
  external int j;
}

/// {@category Struct}
class CRYPT_RETRIEVE_AUX_INFO extends Struct {
  @Uint32()
  external int cbSize;

  external Pointer<FILETIME> pLastSyncTime;

  @Uint32()
  external int dwMaxUrlRetrievalByteCount;

  external Pointer<CRYPTNET_URL_CACHE_PRE_FETCH_INFO> pPreFetchInfo;

  external Pointer<CRYPTNET_URL_CACHE_FLUSH_INFO> pFlushInfo;

  external Pointer<Pointer<CRYPTNET_URL_CACHE_RESPONSE_INFO>> ppResponseInfo;

  external Pointer<Utf16> pwszCacheFileNamePrefix;

  external Pointer<FILETIME> pftCacheResync;

  @Int32()
  external int fProxyCacheRetrieval;

  @Uint32()
  external int dwHttpStatusCode;

  external Pointer<Pointer<Utf16>> ppwszErrorResponseHeaders;

  external Pointer<Pointer<CRYPTOAPI_BLOB>> ppErrorContentBlob;
}

/// {@category Struct}
class CRYPT_RSAES_OAEP_PARAMETERS extends Struct {
  external CRYPT_ALGORITHM_IDENTIFIER HashAlgorithm;

  external CRYPT_MASK_GEN_ALGORITHM MaskGenAlgorithm;

  external CRYPT_PSOURCE_ALGORITHM PSourceAlgorithm;
}

/// {@category Struct}
class CRYPT_RSA_SSA_PSS_PARAMETERS extends Struct {
  external CRYPT_ALGORITHM_IDENTIFIER HashAlgorithm;

  external CRYPT_MASK_GEN_ALGORITHM MaskGenAlgorithm;

  @Uint32()
  external int dwSaltLength;

  @Uint32()
  external int dwTrailerField;
}

/// {@category Struct}
class CRYPT_SEQUENCE_OF_ANY extends Struct {
  @Uint32()
  external int cValue;

  external Pointer<CRYPTOAPI_BLOB> rgValue;
}

/// {@category Struct}
class CRYPT_SIGN_MESSAGE_PARA extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwMsgEncodingType;

  external Pointer<CERT_CONTEXT> pSigningCert;

  external CRYPT_ALGORITHM_IDENTIFIER HashAlgorithm;

  external Pointer pvHashAuxInfo;

  @Uint32()
  external int cMsgCert;

  external Pointer<Pointer<CERT_CONTEXT>> rgpMsgCert;

  @Uint32()
  external int cMsgCrl;

  external Pointer<Pointer<CRL_CONTEXT>> rgpMsgCrl;

  @Uint32()
  external int cAuthAttr;

  external Pointer<CRYPT_ATTRIBUTE> rgAuthAttr;

  @Uint32()
  external int cUnauthAttr;

  external Pointer<CRYPT_ATTRIBUTE> rgUnauthAttr;

  @Uint32()
  external int dwFlags;

  @Uint32()
  external int dwInnerContentType;
}

/// {@category Struct}
class CRYPT_SMART_CARD_ROOT_INFO extends Struct {
  @Array(16)
  external Array<Uint8> rgbCardID;

  external ROOT_INFO_LUID luid;
}

/// {@category Struct}
class CRYPT_SMIME_CAPABILITIES extends Struct {
  @Uint32()
  external int cCapability;

  external Pointer<CRYPT_SMIME_CAPABILITY> rgCapability;
}

/// {@category Struct}
class CRYPT_SMIME_CAPABILITY extends Struct {
  external Pointer<Utf8> pszObjId;

  external CRYPTOAPI_BLOB Parameters;
}

/// {@category Struct}
class CRYPT_TIMESTAMP_ACCURACY extends Struct {
  @Uint32()
  external int dwSeconds;

  @Uint32()
  external int dwMillis;

  @Uint32()
  external int dwMicros;
}

/// {@category Struct}
class CRYPT_TIMESTAMP_CONTEXT extends Struct {
  @Uint32()
  external int cbEncoded;

  external Pointer<Uint8> pbEncoded;

  external Pointer<CRYPT_TIMESTAMP_INFO> pTimeStamp;
}

/// {@category Struct}
class CRYPT_TIMESTAMP_INFO extends Struct {
  @Uint32()
  external int dwVersion;

  external Pointer<Utf8> pszTSAPolicyId;

  external CRYPT_ALGORITHM_IDENTIFIER HashAlgorithm;

  external CRYPTOAPI_BLOB HashedMessage;

  external CRYPTOAPI_BLOB SerialNumber;

  external FILETIME ftTime;

  external Pointer<CRYPT_TIMESTAMP_ACCURACY> pvAccuracy;

  @Int32()
  external int fOrdering;

  external CRYPTOAPI_BLOB Nonce;

  external CRYPTOAPI_BLOB Tsa;

  @Uint32()
  external int cExtension;

  external Pointer<CERT_EXTENSION> rgExtension;
}

/// {@category Struct}
class CRYPT_TIMESTAMP_PARA extends Struct {
  external Pointer<Utf8> pszTSAPolicyId;

  @Int32()
  external int fRequestCerts;

  external CRYPTOAPI_BLOB Nonce;

  @Uint32()
  external int cExtension;

  external Pointer<CERT_EXTENSION> rgExtension;
}

/// {@category Struct}
class CRYPT_TIMESTAMP_REQUEST extends Struct {
  @Uint32()
  external int dwVersion;

  external CRYPT_ALGORITHM_IDENTIFIER HashAlgorithm;

  external CRYPTOAPI_BLOB HashedMessage;

  external Pointer<Utf8> pszTSAPolicyId;

  external CRYPTOAPI_BLOB Nonce;

  @Int32()
  external int fCertReq;

  @Uint32()
  external int cExtension;

  external Pointer<CERT_EXTENSION> rgExtension;
}

/// {@category Struct}
class CRYPT_TIMESTAMP_RESPONSE extends Struct {
  @Uint32()
  external int dwStatus;

  @Uint32()
  external int cFreeText;

  external Pointer<Pointer<Utf16>> rgFreeText;

  external CRYPT_BIT_BLOB FailureInfo;

  external CRYPTOAPI_BLOB ContentInfo;
}

/// {@category Struct}
class CRYPT_TIME_STAMP_REQUEST_INFO extends Struct {
  external Pointer<Utf8> pszTimeStampAlgorithm;

  external Pointer<Utf8> pszContentType;

  external CRYPTOAPI_BLOB Content;

  @Uint32()
  external int cAttribute;

  external Pointer<CRYPT_ATTRIBUTE> rgAttribute;
}

/// {@category Struct}
class CRYPT_URL_ARRAY extends Struct {
  @Uint32()
  external int cUrl;

  external Pointer<Pointer<Utf16>> rgwszUrl;
}

/// {@category Struct}
class CRYPT_URL_INFO extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwSyncDeltaTime;

  @Uint32()
  external int cGroup;

  external Pointer<Uint32> rgcGroupEntry;
}

/// {@category Struct}
class CRYPT_VERIFY_CERT_SIGN_STRONG_PROPERTIES_INFO extends Struct {
  external CRYPTOAPI_BLOB CertSignHashCNGAlgPropData;

  external CRYPTOAPI_BLOB CertIssuerPubKeyBitLengthPropData;
}

/// {@category Struct}
class CRYPT_VERIFY_CERT_SIGN_WEAK_HASH_INFO extends Struct {
  @Uint32()
  external int cCNGHashAlgid;

  external Pointer<Pointer<Utf16>> rgpwszCNGHashAlgid;

  @Uint32()
  external int dwWeakIndex;
}

/// {@category Struct}
class CRYPT_VERIFY_MESSAGE_PARA extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwMsgAndCertEncodingType;

  @IntPtr()
  external int hCryptProv;

  external Pointer<NativeFunction<PFN_CRYPT_GET_SIGNER_CERTIFICATE>>
      pfnGetSignerCertificate;

  external Pointer pvGetArg;
}

/// {@category Struct}
class CRYPT_X942_OTHER_INFO extends Struct {
  external Pointer<Utf8> pszContentEncryptionObjId;

  @Array(4)
  external Array<Uint8> rgbCounter;

  @Array(4)
  external Array<Uint8> rgbKeyLength;

  external CRYPTOAPI_BLOB PubInfo;
}

/// {@category Struct}
class CRYPT_XML_ALGORITHM extends Struct {
  @Uint32()
  external int cbSize;

  external Pointer<Utf16> wszAlgorithm;

  external CRYPT_XML_BLOB Encoded;
}

/// {@category Struct}
class CRYPT_XML_ALGORITHM_INFO extends Struct {
  @Uint32()
  external int cbSize;

  external Pointer<Utf16> wszAlgorithmURI;

  external Pointer<Utf16> wszName;

  @Uint32()
  external int dwGroupId;

  external Pointer<Utf16> wszCNGAlgid;

  external Pointer<Utf16> wszCNGExtraAlgid;

  @Uint32()
  external int dwSignFlags;

  @Uint32()
  external int dwVerifyFlags;

  external Pointer pvPaddingInfo;

  external Pointer pvExtraInfo;
}

/// {@category Struct}
class CRYPT_XML_BLOB extends Struct {
  @Int32()
  external int dwCharset;

  @Uint32()
  external int cbData;

  external Pointer<Uint8> pbData;
}

/// {@category Struct}
class CRYPT_XML_CRYPTOGRAPHIC_INTERFACE extends Struct {
  @Uint32()
  external int cbSize;

  external Pointer<NativeFunction<CryptXmlDllEncodeAlgorithm>>
      fpCryptXmlEncodeAlgorithm;

  external Pointer<NativeFunction<CryptXmlDllCreateDigest>>
      fpCryptXmlCreateDigest;

  external Pointer<NativeFunction<CryptXmlDllDigestData>> fpCryptXmlDigestData;

  external Pointer<NativeFunction<CryptXmlDllFinalizeDigest>>
      fpCryptXmlFinalizeDigest;

  external Pointer<NativeFunction<CryptXmlDllCloseDigest>>
      fpCryptXmlCloseDigest;

  external Pointer<NativeFunction<CryptXmlDllSignData>> fpCryptXmlSignData;

  external Pointer<NativeFunction<CryptXmlDllVerifySignature>>
      fpCryptXmlVerifySignature;

  external Pointer<NativeFunction<CryptXmlDllGetAlgorithmInfo>>
      fpCryptXmlGetAlgorithmInfo;
}

/// {@category Struct}
class CRYPT_XML_DATA_BLOB extends Struct {
  @Uint32()
  external int cbData;

  external Pointer<Uint8> pbData;
}

/// {@category Struct}
class CRYPT_XML_DATA_PROVIDER extends Struct {
  external Pointer pvCallbackState;

  @Uint32()
  external int cbBufferSize;

  external Pointer<NativeFunction<PFN_CRYPT_XML_DATA_PROVIDER_READ>> pfnRead;

  external Pointer<NativeFunction<PFN_CRYPT_XML_DATA_PROVIDER_CLOSE>> pfnClose;
}

/// {@category Struct}
class CRYPT_XML_DOC_CTXT extends Struct {
  @Uint32()
  external int cbSize;

  external Pointer hDocCtxt;

  external Pointer<CRYPT_XML_TRANSFORM_CHAIN_CONFIG> pTransformsConfig;

  @Uint32()
  external int cSignature;

  external Pointer<Pointer<CRYPT_XML_SIGNATURE>> rgpSignature;
}

/// {@category Struct}
class CRYPT_XML_ISSUER_SERIAL extends Struct {
  external Pointer<Utf16> wszIssuer;

  external Pointer<Utf16> wszSerial;
}

/// {@category Struct}
class CRYPT_XML_KEYINFO_PARAM extends Struct {
  external Pointer<Utf16> wszId;

  external Pointer<Utf16> wszKeyName;

  external CRYPTOAPI_BLOB SKI;

  external Pointer<Utf16> wszSubjectName;

  @Uint32()
  external int cCertificate;

  external Pointer<CRYPTOAPI_BLOB> rgCertificate;

  @Uint32()
  external int cCRL;

  external Pointer<CRYPTOAPI_BLOB> rgCRL;
}

/// {@category Struct}
class CRYPT_XML_KEY_DSA_KEY_VALUE extends Struct {
  external CRYPT_XML_DATA_BLOB P;

  external CRYPT_XML_DATA_BLOB Q;

  external CRYPT_XML_DATA_BLOB G;

  external CRYPT_XML_DATA_BLOB Y;

  external CRYPT_XML_DATA_BLOB J;

  external CRYPT_XML_DATA_BLOB Seed;

  external CRYPT_XML_DATA_BLOB Counter;
}

/// {@category Struct}
class CRYPT_XML_KEY_ECDSA_KEY_VALUE extends Struct {
  external Pointer<Utf16> wszNamedCurve;

  external CRYPT_XML_DATA_BLOB X;

  external CRYPT_XML_DATA_BLOB Y;

  external CRYPT_XML_BLOB ExplicitPara;
}

/// {@category Struct}
class CRYPT_XML_KEY_INFO extends Struct {
  @Uint32()
  external int cbSize;

  external Pointer<Utf16> wszId;

  @Uint32()
  external int cKeyInfo;

  external Pointer<CRYPT_XML_KEY_INFO_ITEM> rgKeyInfo;

  @IntPtr()
  external int hVerifyKey;
}

/// {@category Struct}
class CRYPT_XML_KEY_INFO_ITEM extends Struct {
  @Uint32()
  external int dwType;

  external _CRYPT_XML_KEY_INFO_ITEM__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _CRYPT_XML_KEY_INFO_ITEM__Anonymous_e__Union extends Union {
  external Pointer<Utf16> wszKeyName;

  external CRYPT_XML_KEY_VALUE KeyValue;

  external CRYPT_XML_BLOB RetrievalMethod;

  external CRYPT_XML_X509DATA X509Data;

  external CRYPT_XML_BLOB Custom;
}

extension CRYPT_XML_KEY_INFO_ITEM_Extension on CRYPT_XML_KEY_INFO_ITEM {
  Pointer<Utf16> get wszKeyName => this.Anonymous.wszKeyName;
  set wszKeyName(Pointer<Utf16> value) => this.Anonymous.wszKeyName = value;

  CRYPT_XML_KEY_VALUE get KeyValue => this.Anonymous.KeyValue;
  set KeyValue(CRYPT_XML_KEY_VALUE value) => this.Anonymous.KeyValue = value;

  CRYPT_XML_BLOB get RetrievalMethod => this.Anonymous.RetrievalMethod;
  set RetrievalMethod(CRYPT_XML_BLOB value) =>
      this.Anonymous.RetrievalMethod = value;

  CRYPT_XML_X509DATA get X509Data => this.Anonymous.X509Data;
  set X509Data(CRYPT_XML_X509DATA value) => this.Anonymous.X509Data = value;

  CRYPT_XML_BLOB get Custom => this.Anonymous.Custom;
  set Custom(CRYPT_XML_BLOB value) => this.Anonymous.Custom = value;
}

/// {@category Struct}
class CRYPT_XML_KEY_RSA_KEY_VALUE extends Struct {
  external CRYPT_XML_DATA_BLOB Modulus;

  external CRYPT_XML_DATA_BLOB Exponent;
}

/// {@category Struct}
class CRYPT_XML_KEY_VALUE extends Struct {
  @Uint32()
  external int dwType;

  external _CRYPT_XML_KEY_VALUE__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _CRYPT_XML_KEY_VALUE__Anonymous_e__Union extends Union {
  external CRYPT_XML_KEY_DSA_KEY_VALUE DSAKeyValue;

  external CRYPT_XML_KEY_RSA_KEY_VALUE RSAKeyValue;

  external CRYPT_XML_KEY_ECDSA_KEY_VALUE ECDSAKeyValue;

  external CRYPT_XML_BLOB Custom;
}

extension CRYPT_XML_KEY_VALUE_Extension on CRYPT_XML_KEY_VALUE {
  CRYPT_XML_KEY_DSA_KEY_VALUE get DSAKeyValue => this.Anonymous.DSAKeyValue;
  set DSAKeyValue(CRYPT_XML_KEY_DSA_KEY_VALUE value) =>
      this.Anonymous.DSAKeyValue = value;

  CRYPT_XML_KEY_RSA_KEY_VALUE get RSAKeyValue => this.Anonymous.RSAKeyValue;
  set RSAKeyValue(CRYPT_XML_KEY_RSA_KEY_VALUE value) =>
      this.Anonymous.RSAKeyValue = value;

  CRYPT_XML_KEY_ECDSA_KEY_VALUE get ECDSAKeyValue =>
      this.Anonymous.ECDSAKeyValue;
  set ECDSAKeyValue(CRYPT_XML_KEY_ECDSA_KEY_VALUE value) =>
      this.Anonymous.ECDSAKeyValue = value;

  CRYPT_XML_BLOB get Custom => this.Anonymous.Custom;
  set Custom(CRYPT_XML_BLOB value) => this.Anonymous.Custom = value;
}

/// {@category Struct}
class CRYPT_XML_OBJECT extends Struct {
  @Uint32()
  external int cbSize;

  external Pointer hObject;

  external Pointer<Utf16> wszId;

  external Pointer<Utf16> wszMimeType;

  external Pointer<Utf16> wszEncoding;

  external CRYPT_XML_REFERENCES Manifest;

  external CRYPT_XML_BLOB Encoded;
}

/// {@category Struct}
class CRYPT_XML_PROPERTY extends Struct {
  @Int32()
  external int dwPropId;

  external Pointer pvValue;

  @Uint32()
  external int cbValue;
}

/// {@category Struct}
class CRYPT_XML_REFERENCE extends Struct {
  @Uint32()
  external int cbSize;

  external Pointer hReference;

  external Pointer<Utf16> wszId;

  external Pointer<Utf16> wszUri;

  external Pointer<Utf16> wszType;

  external CRYPT_XML_ALGORITHM DigestMethod;

  external CRYPTOAPI_BLOB DigestValue;

  @Uint32()
  external int cTransform;

  external Pointer<CRYPT_XML_ALGORITHM> rgTransform;
}

/// {@category Struct}
class CRYPT_XML_REFERENCES extends Struct {
  @Uint32()
  external int cReference;

  external Pointer<Pointer<CRYPT_XML_REFERENCE>> rgpReference;
}

/// {@category Struct}
class CRYPT_XML_SIGNATURE extends Struct {
  @Uint32()
  external int cbSize;

  external Pointer hSignature;

  external Pointer<Utf16> wszId;

  external CRYPT_XML_SIGNED_INFO SignedInfo;

  external CRYPTOAPI_BLOB SignatureValue;

  external Pointer<CRYPT_XML_KEY_INFO> pKeyInfo;

  @Uint32()
  external int cObject;

  external Pointer<Pointer<CRYPT_XML_OBJECT>> rgpObject;
}

/// {@category Struct}
class CRYPT_XML_SIGNED_INFO extends Struct {
  @Uint32()
  external int cbSize;

  external Pointer<Utf16> wszId;

  external CRYPT_XML_ALGORITHM Canonicalization;

  external CRYPT_XML_ALGORITHM SignatureMethod;

  @Uint32()
  external int cReference;

  external Pointer<Pointer<CRYPT_XML_REFERENCE>> rgpReference;

  external CRYPT_XML_BLOB Encoded;
}

/// {@category Struct}
class CRYPT_XML_STATUS extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwErrorStatus;

  @Uint32()
  external int dwInfoStatus;
}

/// {@category Struct}
class CRYPT_XML_TRANSFORM_CHAIN_CONFIG extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int cTransformInfo;

  external Pointer<Pointer<CRYPT_XML_TRANSFORM_INFO>> rgpTransformInfo;
}

/// {@category Struct}
class CRYPT_XML_TRANSFORM_INFO extends Struct {
  @Uint32()
  external int cbSize;

  external Pointer<Utf16> wszAlgorithm;

  @Uint32()
  external int cbBufferSize;

  @Uint32()
  external int dwFlags;

  external Pointer<NativeFunction<PFN_CRYPT_XML_CREATE_TRANSFORM>>
      pfnCreateTransform;
}

/// {@category Struct}
class CRYPT_XML_X509DATA extends Struct {
  @Uint32()
  external int cX509Data;

  external Pointer<CRYPT_XML_X509DATA_ITEM> rgX509Data;
}

/// {@category Struct}
class CRYPT_XML_X509DATA_ITEM extends Struct {
  @Uint32()
  external int dwType;

  external _CRYPT_XML_X509DATA_ITEM__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _CRYPT_XML_X509DATA_ITEM__Anonymous_e__Union extends Union {
  external CRYPT_XML_ISSUER_SERIAL IssuerSerial;

  external CRYPT_XML_DATA_BLOB SKI;

  external Pointer<Utf16> wszSubjectName;

  external CRYPT_XML_DATA_BLOB Certificate;

  external CRYPT_XML_DATA_BLOB CRL;

  external CRYPT_XML_BLOB Custom;
}

extension CRYPT_XML_X509DATA_ITEM_Extension on CRYPT_XML_X509DATA_ITEM {
  CRYPT_XML_ISSUER_SERIAL get IssuerSerial => this.Anonymous.IssuerSerial;
  set IssuerSerial(CRYPT_XML_ISSUER_SERIAL value) =>
      this.Anonymous.IssuerSerial = value;

  CRYPT_XML_DATA_BLOB get SKI => this.Anonymous.SKI;
  set SKI(CRYPT_XML_DATA_BLOB value) => this.Anonymous.SKI = value;

  Pointer<Utf16> get wszSubjectName => this.Anonymous.wszSubjectName;
  set wszSubjectName(Pointer<Utf16> value) =>
      this.Anonymous.wszSubjectName = value;

  CRYPT_XML_DATA_BLOB get Certificate => this.Anonymous.Certificate;
  set Certificate(CRYPT_XML_DATA_BLOB value) =>
      this.Anonymous.Certificate = value;

  CRYPT_XML_DATA_BLOB get CRL => this.Anonymous.CRL;
  set CRL(CRYPT_XML_DATA_BLOB value) => this.Anonymous.CRL = value;

  CRYPT_XML_BLOB get Custom => this.Anonymous.Custom;
  set Custom(CRYPT_XML_BLOB value) => this.Anonymous.Custom = value;
}

/// {@category Struct}
class CTL_ANY_SUBJECT_INFO extends Struct {
  external CRYPT_ALGORITHM_IDENTIFIER SubjectAlgorithm;

  external CRYPTOAPI_BLOB SubjectIdentifier;
}

/// {@category Struct}
class CTL_CONTEXT extends Struct {
  @Uint32()
  external int dwMsgAndCertEncodingType;

  external Pointer<Uint8> pbCtlEncoded;

  @Uint32()
  external int cbCtlEncoded;

  external Pointer<CTL_INFO> pCtlInfo;

  external Pointer hCertStore;

  external Pointer hCryptMsg;

  external Pointer<Uint8> pbCtlContent;

  @Uint32()
  external int cbCtlContent;
}

/// {@category Struct}
class CTL_ENTRY extends Struct {
  external CRYPTOAPI_BLOB SubjectIdentifier;

  @Uint32()
  external int cAttribute;

  external Pointer<CRYPT_ATTRIBUTE> rgAttribute;
}

/// {@category Struct}
class CTL_FIND_SUBJECT_PARA extends Struct {
  @Uint32()
  external int cbSize;

  external Pointer<CTL_FIND_USAGE_PARA> pUsagePara;

  @Uint32()
  external int dwSubjectType;

  external Pointer pvSubject;
}

/// {@category Struct}
class CTL_FIND_USAGE_PARA extends Struct {
  @Uint32()
  external int cbSize;

  external CTL_USAGE SubjectUsage;

  external CRYPTOAPI_BLOB ListIdentifier;

  external Pointer<CERT_INFO> pSigner;
}

/// {@category Struct}
class CTL_INFO extends Struct {
  @Uint32()
  external int dwVersion;

  external CTL_USAGE SubjectUsage;

  external CRYPTOAPI_BLOB ListIdentifier;

  external CRYPTOAPI_BLOB SequenceNumber;

  external FILETIME ThisUpdate;

  external FILETIME NextUpdate;

  external CRYPT_ALGORITHM_IDENTIFIER SubjectAlgorithm;

  @Uint32()
  external int cCTLEntry;

  external Pointer<CTL_ENTRY> rgCTLEntry;

  @Uint32()
  external int cExtension;

  external Pointer<CERT_EXTENSION> rgExtension;
}

/// {@category Struct}
class CTL_USAGE extends Struct {
  @Uint32()
  external int cUsageIdentifier;

  external Pointer<Pointer<Utf8>> rgpszUsageIdentifier;
}

/// {@category Struct}
class CTL_USAGE_MATCH extends Struct {
  @Uint32()
  external int dwType;

  external CTL_USAGE Usage;
}

/// {@category Struct}
class CTL_VERIFY_USAGE_PARA extends Struct {
  @Uint32()
  external int cbSize;

  external CRYPTOAPI_BLOB ListIdentifier;

  @Uint32()
  external int cCtlStore;

  external Pointer<Pointer> rghCtlStore;

  @Uint32()
  external int cSignerStore;

  external Pointer<Pointer> rghSignerStore;
}

/// {@category Struct}
class CTL_VERIFY_USAGE_STATUS extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwError;

  @Uint32()
  external int dwFlags;

  external Pointer<Pointer<CTL_CONTEXT>> ppCtl;

  @Uint32()
  external int dwCtlEntryIndex;

  external Pointer<Pointer<CERT_CONTEXT>> ppSigner;

  @Uint32()
  external int dwSignerIndex;
}

/// {@category Struct}
class DSSSEED extends Struct {
  @Uint32()
  external int counter;

  @Array(20)
  external Array<Uint8> seed;
}

/// {@category Struct}
class ENDPOINTADDRESS extends Struct {
  external Pointer<Utf16> serviceUrl;

  external Pointer<Utf16> policyUrl;

  external CRYPTOAPI_BLOB rawCertificate;
}

/// {@category Struct}
class ENDPOINTADDRESS2 extends Struct {
  external Pointer<Utf16> serviceUrl;

  external Pointer<Utf16> policyUrl;

  @Uint32()
  external int identityType;

  external Pointer identityBytes;
}

/// {@category Struct}
class EV_EXTRA_CERT_CHAIN_POLICY_PARA extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwRootProgramQualifierFlags;
}

/// {@category Struct}
class EV_EXTRA_CERT_CHAIN_POLICY_STATUS extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwQualifiers;

  @Uint32()
  external int dwIssuanceUsageIndex;
}

/// {@category Struct}
class GENERIC_XML_TOKEN extends Struct {
  external FILETIME createDate;

  external FILETIME expiryDate;

  external Pointer<Utf16> xmlToken;

  external Pointer<Utf16> internalTokenReference;

  external Pointer<Utf16> externalTokenReference;
}

/// {@category Struct}
class HMAC_Info extends Struct {
  @Uint32()
  external int HashAlgid;

  external Pointer<Uint8> pbInnerString;

  @Uint32()
  external int cbInnerString;

  external Pointer<Uint8> pbOuterString;

  @Uint32()
  external int cbOuterString;
}

/// {@category Struct}
class HTTPSPolicyCallbackData extends Struct {
  external _HTTPSPolicyCallbackData__Anonymous_e__Union Anonymous;

  @Uint32()
  external int dwAuthType;

  @Uint32()
  external int fdwChecks;

  external Pointer<Utf16> pwszServerName;
}

/// {@category Struct}
class _HTTPSPolicyCallbackData__Anonymous_e__Union extends Union {
  @Uint32()
  external int cbStruct;

  @Uint32()
  external int cbSize;
}

extension HTTPSPolicyCallbackData_Extension on HTTPSPolicyCallbackData {
  int get cbStruct => this.Anonymous.cbStruct;
  set cbStruct(int value) => this.Anonymous.cbStruct = value;

  int get cbSize => this.Anonymous.cbSize;
  set cbSize(int value) => this.Anonymous.cbSize = value;
}

/// {@category Struct}
class INFORMATIONCARD_ASYMMETRIC_CRYPTO_PARAMETERS extends Struct {
  @Int32()
  external int keySize;

  external Pointer<Utf16> keyExchangeAlgorithm;

  external Pointer<Utf16> signatureAlgorithm;
}

/// {@category Struct}
class INFORMATIONCARD_CRYPTO_HANDLE extends Struct {
  @Int32()
  external int type;

  @Int64()
  external int expiration;

  external Pointer cryptoParameters;
}

/// {@category Struct}
class INFORMATIONCARD_HASH_CRYPTO_PARAMETERS extends Struct {
  @Int32()
  external int hashSize;

  external INFORMATIONCARD_TRANSFORM_CRYPTO_PARAMETERS transform;
}

/// {@category Struct}
class INFORMATIONCARD_SYMMETRIC_CRYPTO_PARAMETERS extends Struct {
  @Int32()
  external int keySize;

  @Int32()
  external int blockSize;

  @Int32()
  external int feedbackSize;
}

/// {@category Struct}
class INFORMATIONCARD_TRANSFORM_CRYPTO_PARAMETERS extends Struct {
  @Int32()
  external int inputBlockSize;

  @Int32()
  external int outputBlockSize;

  @Int32()
  external int canTransformMultipleBlocks;

  @Int32()
  external int canReuseTransform;
}

/// {@category Struct}
class KEY_TYPE_SUBTYPE extends Struct {
  @Uint32()
  external int dwKeySpec;

  external GUID Type;

  external GUID Subtype;
}

/// {@category Struct}
class NCRYPT_ALLOC_PARA extends Struct {
  @Uint32()
  external int cbSize;

  external Pointer<NativeFunction<PFN_NCRYPT_ALLOC>> pfnAlloc;

  external Pointer<NativeFunction<PFN_NCRYPT_FREE>> pfnFree;
}

/// {@category Struct}
class NCRYPT_CIPHER_PADDING_INFO extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwFlags;

  external Pointer<Uint8> pbIV;

  @Uint32()
  external int cbIV;

  external Pointer<Uint8> pbOtherInfo;

  @Uint32()
  external int cbOtherInfo;
}

/// {@category Struct}
class NCRYPT_EXPORTED_ISOLATED_KEY_ENVELOPE extends Struct {
  external NCRYPT_EXPORTED_ISOLATED_KEY_HEADER Header;
}

/// {@category Struct}
class NCRYPT_EXPORTED_ISOLATED_KEY_HEADER extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int KeyUsage;

  @Uint32()
  external int bitfield;

  @Uint32()
  external int cbAlgName;

  @Uint32()
  external int cbNonce;

  @Uint32()
  external int cbAuthTag;

  @Uint32()
  external int cbWrappingKey;

  @Uint32()
  external int cbIsolatedKey;
}

/// {@category Struct}
class NCRYPT_ISOLATED_KEY_ATTESTED_ATTRIBUTES extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int Flags;

  @Uint32()
  external int cbPublicKeyBlob;
}

/// {@category Struct}
class NCRYPT_KEY_ACCESS_POLICY_BLOB extends Struct {
  @Uint32()
  external int dwVersion;

  @Uint32()
  external int dwPolicyFlags;

  @Uint32()
  external int cbUserSid;

  @Uint32()
  external int cbApplicationSid;
}

/// {@category Struct}
class NCRYPT_KEY_ATTEST_PADDING_INFO extends Struct {
  @Uint32()
  external int magic;

  external Pointer<Uint8> pbKeyBlob;

  @Uint32()
  external int cbKeyBlob;

  external Pointer<Uint8> pbKeyAuth;

  @Uint32()
  external int cbKeyAuth;
}

/// {@category Struct}
class NCRYPT_KEY_BLOB_HEADER extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwMagic;

  @Uint32()
  external int cbAlgName;

  @Uint32()
  external int cbKeyData;
}

/// {@category Struct}
class NCRYPT_PCP_HMAC_AUTH_SIGNATURE_INFO extends Struct {
  @Uint32()
  external int dwVersion;

  @Int32()
  external int iExpiration;

  @Array(32)
  external Array<Uint8> pabNonce;

  @Array(32)
  external Array<Uint8> pabPolicyRef;

  @Array(32)
  external Array<Uint8> pabHMAC;
}

/// {@category Struct}
class NCRYPT_PCP_RAW_POLICYDIGEST extends Struct {
  @Uint32()
  external int dwVersion;

  @Uint32()
  external int cbDigest;
}

/// {@category Struct}
class NCRYPT_PCP_TPM_FW_VERSION_INFO extends Struct {
  @Uint16()
  external int major1;

  @Uint16()
  external int major2;

  @Uint16()
  external int minor1;

  @Uint16()
  external int minor2;
}

/// {@category Struct}
class NCRYPT_PLATFORM_ATTEST_PADDING_INFO extends Struct {
  @Uint32()
  external int magic;

  @Uint32()
  external int pcrMask;
}

/// {@category Struct}
class NCRYPT_PROTECT_STREAM_INFO extends Struct {
  external Pointer<NativeFunction<PFNCryptStreamOutputCallback>>
      pfnStreamOutput;

  external Pointer pvCallbackCtxt;
}

/// {@category Struct}
class NCRYPT_PROTECT_STREAM_INFO_EX extends Struct {
  external Pointer<NativeFunction<PFNCryptStreamOutputCallbackEx>>
      pfnStreamOutput;

  external Pointer pvCallbackCtxt;
}

/// {@category Struct}
class NCRYPT_SUPPORTED_LENGTHS extends Struct {
  @Uint32()
  external int dwMinLength;

  @Uint32()
  external int dwMaxLength;

  @Uint32()
  external int dwIncrement;

  @Uint32()
  external int dwDefaultLength;
}

/// {@category Struct}
class NCRYPT_TPM_LOADABLE_KEY_BLOB_HEADER extends Struct {
  @Uint32()
  external int magic;

  @Uint32()
  external int cbHeader;

  @Uint32()
  external int cbPublic;

  @Uint32()
  external int cbPrivate;

  @Uint32()
  external int cbName;
}

/// {@category Struct}
class NCRYPT_TPM_PLATFORM_ATTESTATION_STATEMENT extends Struct {
  @Uint32()
  external int Magic;

  @Uint32()
  external int Version;

  @Uint32()
  external int pcrAlg;

  @Uint32()
  external int cbSignature;

  @Uint32()
  external int cbQuote;

  @Uint32()
  external int cbPcrs;
}

/// {@category Struct}
class NCRYPT_UI_POLICY extends Struct {
  @Uint32()
  external int dwVersion;

  @Uint32()
  external int dwFlags;

  external Pointer<Utf16> pszCreationTitle;

  external Pointer<Utf16> pszFriendlyName;

  external Pointer<Utf16> pszDescription;
}

/// {@category Struct}
class NCRYPT_VSM_KEY_ATTESTATION_CLAIM_RESTRICTIONS extends Struct {
  @Uint32()
  external int Version;

  @Uint64()
  external int TrustletId;

  @Uint32()
  external int MinSvn;

  @Uint32()
  external int FlagsMask;

  @Uint32()
  external int FlagsExpected;

  @Uint32()
  external int bitfield;
}

/// {@category Struct}
class NCRYPT_VSM_KEY_ATTESTATION_STATEMENT extends Struct {
  @Uint32()
  external int Magic;

  @Uint32()
  external int Version;

  @Uint32()
  external int cbSignature;

  @Uint32()
  external int cbReport;

  @Uint32()
  external int cbAttributes;
}

/// {@category Struct}
class NCryptAlgorithmName extends Struct {
  external Pointer<Utf16> pszName;

  @Uint32()
  external int dwClass;

  @Uint32()
  external int dwAlgOperations;

  @Uint32()
  external int dwFlags;
}

/// {@category Struct}
class NCryptKeyName extends Struct {
  external Pointer<Utf16> pszName;

  external Pointer<Utf16> pszAlgid;

  @Uint32()
  external int dwLegacyKeySpec;

  @Uint32()
  external int dwFlags;
}

/// {@category Struct}
class NCryptProviderName extends Struct {
  external Pointer<Utf16> pszName;

  external Pointer<Utf16> pszComment;
}

/// {@category Struct}
class OCSP_BASIC_RESPONSE_ENTRY extends Struct {
  external OCSP_CERT_ID CertId;

  @Uint32()
  external int dwCertStatus;

  external _OCSP_BASIC_RESPONSE_ENTRY__Anonymous_e__Union Anonymous;

  external FILETIME ThisUpdate;

  external FILETIME NextUpdate;

  @Uint32()
  external int cExtension;

  external Pointer<CERT_EXTENSION> rgExtension;
}

/// {@category Struct}
class _OCSP_BASIC_RESPONSE_ENTRY__Anonymous_e__Union extends Union {
  external Pointer<OCSP_BASIC_REVOKED_INFO> pRevokedInfo;
}

extension OCSP_BASIC_RESPONSE_ENTRY_Extension on OCSP_BASIC_RESPONSE_ENTRY {
  Pointer<OCSP_BASIC_REVOKED_INFO> get pRevokedInfo =>
      this.Anonymous.pRevokedInfo;
  set pRevokedInfo(Pointer<OCSP_BASIC_REVOKED_INFO> value) =>
      this.Anonymous.pRevokedInfo = value;
}

/// {@category Struct}
class OCSP_BASIC_RESPONSE_INFO extends Struct {
  @Uint32()
  external int dwVersion;

  @Uint32()
  external int dwResponderIdChoice;

  external _OCSP_BASIC_RESPONSE_INFO__Anonymous_e__Union Anonymous;

  external FILETIME ProducedAt;

  @Uint32()
  external int cResponseEntry;

  external Pointer<OCSP_BASIC_RESPONSE_ENTRY> rgResponseEntry;

  @Uint32()
  external int cExtension;

  external Pointer<CERT_EXTENSION> rgExtension;
}

/// {@category Struct}
class _OCSP_BASIC_RESPONSE_INFO__Anonymous_e__Union extends Union {
  external CRYPTOAPI_BLOB ByNameResponderId;

  external CRYPTOAPI_BLOB ByKeyResponderId;
}

extension OCSP_BASIC_RESPONSE_INFO_Extension on OCSP_BASIC_RESPONSE_INFO {
  CRYPTOAPI_BLOB get ByNameResponderId => this.Anonymous.ByNameResponderId;
  set ByNameResponderId(CRYPTOAPI_BLOB value) =>
      this.Anonymous.ByNameResponderId = value;

  CRYPTOAPI_BLOB get ByKeyResponderId => this.Anonymous.ByKeyResponderId;
  set ByKeyResponderId(CRYPTOAPI_BLOB value) =>
      this.Anonymous.ByKeyResponderId = value;
}

/// {@category Struct}
class OCSP_BASIC_REVOKED_INFO extends Struct {
  external FILETIME RevocationDate;

  @Uint32()
  external int dwCrlReasonCode;
}

/// {@category Struct}
class OCSP_BASIC_SIGNED_RESPONSE_INFO extends Struct {
  external CRYPTOAPI_BLOB ToBeSigned;

  external OCSP_SIGNATURE_INFO SignatureInfo;
}

/// {@category Struct}
class OCSP_CERT_ID extends Struct {
  external CRYPT_ALGORITHM_IDENTIFIER HashAlgorithm;

  external CRYPTOAPI_BLOB IssuerNameHash;

  external CRYPTOAPI_BLOB IssuerKeyHash;

  external CRYPTOAPI_BLOB SerialNumber;
}

/// {@category Struct}
class OCSP_REQUEST_ENTRY extends Struct {
  external OCSP_CERT_ID CertId;

  @Uint32()
  external int cExtension;

  external Pointer<CERT_EXTENSION> rgExtension;
}

/// {@category Struct}
class OCSP_REQUEST_INFO extends Struct {
  @Uint32()
  external int dwVersion;

  external Pointer<CERT_ALT_NAME_ENTRY> pRequestorName;

  @Uint32()
  external int cRequestEntry;

  external Pointer<OCSP_REQUEST_ENTRY> rgRequestEntry;

  @Uint32()
  external int cExtension;

  external Pointer<CERT_EXTENSION> rgExtension;
}

/// {@category Struct}
class OCSP_RESPONSE_INFO extends Struct {
  @Uint32()
  external int dwStatus;

  external Pointer<Utf8> pszObjId;

  external CRYPTOAPI_BLOB Value;
}

/// {@category Struct}
class OCSP_SIGNATURE_INFO extends Struct {
  external CRYPT_ALGORITHM_IDENTIFIER SignatureAlgorithm;

  external CRYPT_BIT_BLOB Signature;

  @Uint32()
  external int cCertEncoded;

  external Pointer<CRYPTOAPI_BLOB> rgCertEncoded;
}

/// {@category Struct}
class OCSP_SIGNED_REQUEST_INFO extends Struct {
  external CRYPTOAPI_BLOB ToBeSigned;

  external Pointer<OCSP_SIGNATURE_INFO> pOptionalSignatureInfo;
}

/// {@category Struct}
class PKCS12_PBES2_EXPORT_PARAMS extends Struct {
  @Uint32()
  external int dwSize;

  external Pointer hNcryptDescriptor;

  external Pointer<Utf16> pwszPbes2Alg;
}

/// {@category Struct}
class POLICY_ELEMENT extends Struct {
  external Pointer<Utf16> targetEndpointAddress;

  external Pointer<Utf16> issuerEndpointAddress;

  external Pointer<Utf16> issuedTokenParameters;

  external Pointer<Utf16> privacyNoticeLink;

  @Uint32()
  external int privacyNoticeVersion;

  @Int32()
  external int useManagedPresentation;
}

/// {@category Struct}
class PRIVKEYVER3 extends Struct {
  @Uint32()
  external int magic;

  @Uint32()
  external int bitlenP;

  @Uint32()
  external int bitlenQ;

  @Uint32()
  external int bitlenJ;

  @Uint32()
  external int bitlenX;

  external DSSSEED DSSSeed;
}

/// {@category Struct}
class PROV_ENUMALGS extends Struct {
  @Uint32()
  external int aiAlgid;

  @Uint32()
  external int dwBitLen;

  @Uint32()
  external int dwNameLen;

  @Array(20)
  external Array<Uint8> szName;
}

/// {@category Struct}
class PROV_ENUMALGS_EX extends Struct {
  @Uint32()
  external int aiAlgid;

  @Uint32()
  external int dwDefaultLen;

  @Uint32()
  external int dwMinLen;

  @Uint32()
  external int dwMaxLen;

  @Uint32()
  external int dwProtocols;

  @Uint32()
  external int dwNameLen;

  @Array(20)
  external Array<Uint8> szName;

  @Uint32()
  external int dwLongNameLen;

  @Array(40)
  external Array<Uint8> szLongName;
}

/// {@category Struct}
class PUBKEY extends Struct {
  @Uint32()
  external int magic;

  @Uint32()
  external int bitlen;
}

/// {@category Struct}
class PUBKEYVER3 extends Struct {
  @Uint32()
  external int magic;

  @Uint32()
  external int bitlenP;

  @Uint32()
  external int bitlenQ;

  @Uint32()
  external int bitlenJ;

  external DSSSEED DSSSeed;
}

/// {@category Struct}
class PUBLICKEYSTRUC extends Struct {
  @Uint8()
  external int bType;

  @Uint8()
  external int bVersion;

  @Uint16()
  external int reserved;

  @Uint32()
  external int aiKeyAlg;
}

/// {@category Struct}
class RECIPIENTPOLICY extends Struct {
  external ENDPOINTADDRESS recipient;

  external ENDPOINTADDRESS issuer;

  external Pointer<Utf16> tokenType;

  external CLAIMLIST requiredClaims;

  external CLAIMLIST optionalClaims;

  external Pointer<Utf16> privacyUrl;

  @Uint32()
  external int privacyVersion;
}

/// {@category Struct}
class RECIPIENTPOLICY2 extends Struct {
  external ENDPOINTADDRESS2 recipient;

  external ENDPOINTADDRESS2 issuer;

  external Pointer<Utf16> tokenType;

  external CLAIMLIST requiredClaims;

  external CLAIMLIST optionalClaims;

  external Pointer<Utf16> privacyUrl;

  @Uint32()
  external int privacyVersion;
}

/// {@category Struct}
class ROOT_INFO_LUID extends Struct {
  @Uint32()
  external int LowPart;

  @Int32()
  external int HighPart;
}

/// {@category Struct}
class RSAPUBKEY extends Struct {
  @Uint32()
  external int magic;

  @Uint32()
  external int bitlen;

  @Uint32()
  external int pubexp;
}

/// {@category Struct}
class SCHANNEL_ALG extends Struct {
  @Uint32()
  external int dwUse;

  @Uint32()
  external int Algid;

  @Uint32()
  external int cBits;

  @Uint32()
  external int dwFlags;

  @Uint32()
  external int dwReserved;
}

/// {@category Struct}
class SSL_ECCKEY_BLOB extends Struct {
  @Uint32()
  external int dwCurveType;

  @Uint32()
  external int cbKey;
}

/// {@category Struct}
class SSL_F12_EXTRA_CERT_CHAIN_POLICY_STATUS extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwErrorLevel;

  @Uint32()
  external int dwErrorCategory;

  @Uint32()
  external int dwReserved;

  @Array(256)
  external Array<Uint16> _wszErrorText;

  String get wszErrorText {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_wszErrorText[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wszErrorText(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _wszErrorText[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class SSL_HPKP_HEADER_EXTRA_CERT_CHAIN_POLICY_PARA extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwReserved;

  external Pointer<Utf16> pwszServerName;

  @Array(2)
  external Array<Pointer<Utf8>> rgpszHpkpValue;
}

/// {@category Struct}
class SSL_KEY_PIN_EXTRA_CERT_CHAIN_POLICY_PARA extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwReserved;

  external Pointer<Utf16> pwszServerName;
}

/// {@category Struct}
class SSL_KEY_PIN_EXTRA_CERT_CHAIN_POLICY_STATUS extends Struct {
  @Uint32()
  external int cbSize;

  @Int32()
  external int lError;

  @Array(512)
  external Array<Uint16> _wszErrorText;

  String get wszErrorText {
    final charCodes = <int>[];
    for (var i = 0; i < 512; i++) {
      charCodes.add(_wszErrorText[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wszErrorText(String value) {
    final stringToStore = value.padRight(512, '\x00');
    for (var i = 0; i < 512; i++) {
      _wszErrorText[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class NCRYPT_PCP_TPM_WEB_AUTHN_ATTESTATION_STATEMENT extends Struct {
  @Uint32()
  external int Magic;

  @Uint32()
  external int Version;

  @Uint32()
  external int HeaderSize;

  @Uint32()
  external int cbCertifyInfo;

  @Uint32()
  external int cbSignature;

  @Uint32()
  external int cbTpmPublic;
}
