// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// Native callback functions that can get called by the Win32 API

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'structs.g.dart';
import '../../combase.dart';
import '../../guid.dart';
import '../../security/cryptography/structs.g.dart';
import '../../security/cryptography/callbacks.g.dart';
import '../../foundation/structs.g.dart';
import '../../security/structs.g.dart';

typedef CryptXmlDllCloseDigest = Int32 Function(
  Pointer hDigest,
);
typedef CryptXmlDllCreateDigest = Int32 Function(
  Pointer<CRYPT_XML_ALGORITHM> pDigestMethod,
  Pointer<Uint32> pcbSize,
  Pointer<Pointer> phDigest,
);
typedef CryptXmlDllCreateKey = Int32 Function(
  Pointer<CRYPT_XML_BLOB> pEncoded,
  Pointer<IntPtr> phKey,
);
typedef CryptXmlDllDigestData = Int32 Function(
  Pointer hDigest,
  Pointer<Uint8> pbData,
  Uint32 cbData,
);
typedef CryptXmlDllEncodeAlgorithm = Int32 Function(
  Pointer<CRYPT_XML_ALGORITHM_INFO> pAlgInfo,
  Int32 dwCharset,
  Pointer pvCallbackState,
  Pointer<NativeFunction<PFN_CRYPT_XML_WRITE_CALLBACK>> pfnWrite,
);
typedef CryptXmlDllEncodeKeyValue = Int32 Function(
  IntPtr hKey,
  Int32 dwCharset,
  Pointer pvCallbackState,
  Pointer<NativeFunction<PFN_CRYPT_XML_WRITE_CALLBACK>> pfnWrite,
);
typedef CryptXmlDllFinalizeDigest = Int32 Function(
  Pointer hDigest,
  Pointer<Uint8> pbDigest,
  Uint32 cbDigest,
);
typedef CryptXmlDllGetAlgorithmInfo = Int32 Function(
  Pointer<CRYPT_XML_ALGORITHM> pXmlAlgorithm,
  Pointer<Pointer<CRYPT_XML_ALGORITHM_INFO>> ppAlgInfo,
);
typedef CryptXmlDllGetInterface = Int32 Function(
  Uint32 dwFlags,
  Pointer<CRYPT_XML_ALGORITHM_INFO> pMethod,
  Pointer<CRYPT_XML_CRYPTOGRAPHIC_INTERFACE> pInterface,
);
typedef CryptXmlDllSignData = Int32 Function(
  Pointer<CRYPT_XML_ALGORITHM> pSignatureMethod,
  IntPtr hCryptProvOrNCryptKey,
  Uint32 dwKeySpec,
  Pointer<Uint8> pbInput,
  Uint32 cbInput,
  Pointer<Uint8> pbOutput,
  Uint32 cbOutput,
  Pointer<Uint32> pcbResult,
);
typedef CryptXmlDllVerifySignature = Int32 Function(
  Pointer<CRYPT_XML_ALGORITHM> pSignatureMethod,
  IntPtr hKey,
  Pointer<Uint8> pbInput,
  Uint32 cbInput,
  Pointer<Uint8> pbSignature,
  Uint32 cbSignature,
);
typedef PCRYPT_DECRYPT_PRIVATE_KEY_FUNC = Int32 Function(
  CRYPT_ALGORITHM_IDENTIFIER Algorithm,
  CRYPTOAPI_BLOB EncryptedPrivateKey,
  Pointer<Uint8> pbClearTextKey,
  Pointer<Uint32> pcbClearTextKey,
  Pointer pVoidDecryptFunc,
);
typedef PCRYPT_ENCRYPT_PRIVATE_KEY_FUNC = Int32 Function(
  Pointer<CRYPT_ALGORITHM_IDENTIFIER> pAlgorithm,
  Pointer<CRYPTOAPI_BLOB> pClearTextPrivateKey,
  Pointer<Uint8> pbEncryptedKey,
  Pointer<Uint32> pcbEncryptedKey,
  Pointer pVoidEncryptFunc,
);
typedef PCRYPT_RESOLVE_HCRYPTPROV_FUNC = Int32 Function(
  Pointer<CRYPT_PRIVATE_KEY_INFO> pPrivateKeyInfo,
  Pointer<IntPtr> phCryptProv,
  Pointer pVoidResolveFunc,
);
typedef PFNCryptStreamOutputCallback = Int32 Function(
  Pointer pvCallbackCtxt,
  Pointer<Uint8> pbData,
  IntPtr cbData,
  Int32 fFinal,
);
typedef PFNCryptStreamOutputCallbackEx = Int32 Function(
  Pointer pvCallbackCtxt,
  Pointer<Uint8> pbData,
  IntPtr cbData,
  IntPtr hDescriptor,
  Int32 fFinal,
);
typedef PFN_CANCEL_ASYNC_RETRIEVAL_FUNC = Int32 Function(
  IntPtr hAsyncRetrieve,
);
typedef PFN_CERT_CHAIN_FIND_BY_ISSUER_CALLBACK = Int32 Function(
  Pointer<CERT_CONTEXT> pCert,
  Pointer pvFindArg,
);
typedef PFN_CERT_CREATE_CONTEXT_SORT_FUNC = Int32 Function(
  Uint32 cbTotalEncoded,
  Uint32 cbRemainEncoded,
  Uint32 cEntry,
  Pointer pvSort,
);
typedef PFN_CERT_DLL_OPEN_STORE_PROV_FUNC = Int32 Function(
  Pointer<Utf8> lpszStoreProvider,
  Uint32 dwEncodingType,
  IntPtr hCryptProv,
  Uint32 dwFlags,
  Pointer pvPara,
  Pointer hCertStore,
  Pointer<CERT_STORE_PROV_INFO> pStoreProvInfo,
);
typedef PFN_CERT_ENUM_PHYSICAL_STORE = Int32 Function(
  Pointer pvSystemStore,
  Uint32 dwFlags,
  Pointer<Utf16> pwszStoreName,
  Pointer<CERT_PHYSICAL_STORE_INFO> pStoreInfo,
  Pointer pvReserved,
  Pointer pvArg,
);
typedef PFN_CERT_ENUM_SYSTEM_STORE = Int32 Function(
  Pointer pvSystemStore,
  Uint32 dwFlags,
  Pointer<CERT_SYSTEM_STORE_INFO> pStoreInfo,
  Pointer pvReserved,
  Pointer pvArg,
);
typedef PFN_CERT_ENUM_SYSTEM_STORE_LOCATION = Int32 Function(
  Pointer<Utf16> pwszStoreLocation,
  Uint32 dwFlags,
  Pointer pvReserved,
  Pointer pvArg,
);
typedef PFN_CERT_IS_WEAK_HASH = Int32 Function(
  Uint32 dwHashUseType,
  Pointer<Utf16> pwszCNGHashAlgid,
  Uint32 dwChainFlags,
  Pointer<CERT_CHAIN_CONTEXT> pSignerChainContext,
  Pointer<FILETIME> pTimeStamp,
  Pointer<Utf16> pwszFileName,
);
typedef PFN_CERT_SERVER_OCSP_RESPONSE_UPDATE_CALLBACK = Void Function(
  Pointer<CERT_CHAIN_CONTEXT> pChainContext,
  Pointer<CERT_SERVER_OCSP_RESPONSE_CONTEXT> pServerOcspResponseContext,
  Pointer<CRL_CONTEXT> pNewCrlContext,
  Pointer<CRL_CONTEXT> pPrevCrlContext,
  Pointer pvArg,
  Uint32 dwWriteOcspFileError,
);
typedef PFN_CERT_STORE_PROV_CLOSE = Void Function(
  Pointer hStoreProv,
  Uint32 dwFlags,
);
typedef PFN_CERT_STORE_PROV_CONTROL = Int32 Function(
  Pointer hStoreProv,
  Uint32 dwFlags,
  Uint32 dwCtrlType,
  Pointer pvCtrlPara,
);
typedef PFN_CERT_STORE_PROV_DELETE_CERT = Int32 Function(
  Pointer hStoreProv,
  Pointer<CERT_CONTEXT> pCertContext,
  Uint32 dwFlags,
);
typedef PFN_CERT_STORE_PROV_DELETE_CRL = Int32 Function(
  Pointer hStoreProv,
  Pointer<CRL_CONTEXT> pCrlContext,
  Uint32 dwFlags,
);
typedef PFN_CERT_STORE_PROV_DELETE_CTL = Int32 Function(
  Pointer hStoreProv,
  Pointer<CTL_CONTEXT> pCtlContext,
  Uint32 dwFlags,
);
typedef PFN_CERT_STORE_PROV_FIND_CERT = Int32 Function(
  Pointer hStoreProv,
  Pointer<CERT_STORE_PROV_FIND_INFO> pFindInfo,
  Pointer<CERT_CONTEXT> pPrevCertContext,
  Uint32 dwFlags,
  Pointer<Pointer> ppvStoreProvFindInfo,
  Pointer<Pointer<CERT_CONTEXT>> ppProvCertContext,
);
typedef PFN_CERT_STORE_PROV_FIND_CRL = Int32 Function(
  Pointer hStoreProv,
  Pointer<CERT_STORE_PROV_FIND_INFO> pFindInfo,
  Pointer<CRL_CONTEXT> pPrevCrlContext,
  Uint32 dwFlags,
  Pointer<Pointer> ppvStoreProvFindInfo,
  Pointer<Pointer<CRL_CONTEXT>> ppProvCrlContext,
);
typedef PFN_CERT_STORE_PROV_FIND_CTL = Int32 Function(
  Pointer hStoreProv,
  Pointer<CERT_STORE_PROV_FIND_INFO> pFindInfo,
  Pointer<CTL_CONTEXT> pPrevCtlContext,
  Uint32 dwFlags,
  Pointer<Pointer> ppvStoreProvFindInfo,
  Pointer<Pointer<CTL_CONTEXT>> ppProvCtlContext,
);
typedef PFN_CERT_STORE_PROV_FREE_FIND_CERT = Int32 Function(
  Pointer hStoreProv,
  Pointer<CERT_CONTEXT> pCertContext,
  Pointer pvStoreProvFindInfo,
  Uint32 dwFlags,
);
typedef PFN_CERT_STORE_PROV_FREE_FIND_CRL = Int32 Function(
  Pointer hStoreProv,
  Pointer<CRL_CONTEXT> pCrlContext,
  Pointer pvStoreProvFindInfo,
  Uint32 dwFlags,
);
typedef PFN_CERT_STORE_PROV_FREE_FIND_CTL = Int32 Function(
  Pointer hStoreProv,
  Pointer<CTL_CONTEXT> pCtlContext,
  Pointer pvStoreProvFindInfo,
  Uint32 dwFlags,
);
typedef PFN_CERT_STORE_PROV_GET_CERT_PROPERTY = Int32 Function(
  Pointer hStoreProv,
  Pointer<CERT_CONTEXT> pCertContext,
  Uint32 dwPropId,
  Uint32 dwFlags,
  Pointer pvData,
  Pointer<Uint32> pcbData,
);
typedef PFN_CERT_STORE_PROV_GET_CRL_PROPERTY = Int32 Function(
  Pointer hStoreProv,
  Pointer<CRL_CONTEXT> pCrlContext,
  Uint32 dwPropId,
  Uint32 dwFlags,
  Pointer pvData,
  Pointer<Uint32> pcbData,
);
typedef PFN_CERT_STORE_PROV_GET_CTL_PROPERTY = Int32 Function(
  Pointer hStoreProv,
  Pointer<CTL_CONTEXT> pCtlContext,
  Uint32 dwPropId,
  Uint32 dwFlags,
  Pointer pvData,
  Pointer<Uint32> pcbData,
);
typedef PFN_CERT_STORE_PROV_READ_CERT = Int32 Function(
  Pointer hStoreProv,
  Pointer<CERT_CONTEXT> pStoreCertContext,
  Uint32 dwFlags,
  Pointer<Pointer<CERT_CONTEXT>> ppProvCertContext,
);
typedef PFN_CERT_STORE_PROV_READ_CRL = Int32 Function(
  Pointer hStoreProv,
  Pointer<CRL_CONTEXT> pStoreCrlContext,
  Uint32 dwFlags,
  Pointer<Pointer<CRL_CONTEXT>> ppProvCrlContext,
);
typedef PFN_CERT_STORE_PROV_READ_CTL = Int32 Function(
  Pointer hStoreProv,
  Pointer<CTL_CONTEXT> pStoreCtlContext,
  Uint32 dwFlags,
  Pointer<Pointer<CTL_CONTEXT>> ppProvCtlContext,
);
typedef PFN_CERT_STORE_PROV_SET_CERT_PROPERTY = Int32 Function(
  Pointer hStoreProv,
  Pointer<CERT_CONTEXT> pCertContext,
  Uint32 dwPropId,
  Uint32 dwFlags,
  Pointer pvData,
);
typedef PFN_CERT_STORE_PROV_SET_CRL_PROPERTY = Int32 Function(
  Pointer hStoreProv,
  Pointer<CRL_CONTEXT> pCrlContext,
  Uint32 dwPropId,
  Uint32 dwFlags,
  Pointer pvData,
);
typedef PFN_CERT_STORE_PROV_SET_CTL_PROPERTY = Int32 Function(
  Pointer hStoreProv,
  Pointer<CTL_CONTEXT> pCtlContext,
  Uint32 dwPropId,
  Uint32 dwFlags,
  Pointer pvData,
);
typedef PFN_CERT_STORE_PROV_WRITE_CERT = Int32 Function(
  Pointer hStoreProv,
  Pointer<CERT_CONTEXT> pCertContext,
  Uint32 dwFlags,
);
typedef PFN_CERT_STORE_PROV_WRITE_CRL = Int32 Function(
  Pointer hStoreProv,
  Pointer<CRL_CONTEXT> pCrlContext,
  Uint32 dwFlags,
);
typedef PFN_CERT_STORE_PROV_WRITE_CTL = Int32 Function(
  Pointer hStoreProv,
  Pointer<CTL_CONTEXT> pCtlContext,
  Uint32 dwFlags,
);
typedef PFN_CMSG_ALLOC = Pointer Function(
  IntPtr cb,
);
typedef PFN_CMSG_CNG_IMPORT_CONTENT_ENCRYPT_KEY = Int32 Function(
  Pointer<CMSG_CNG_CONTENT_DECRYPT_INFO> pCNGContentDecryptInfo,
  Uint32 dwFlags,
  Pointer pvReserved,
);
typedef PFN_CMSG_CNG_IMPORT_KEY_AGREE = Int32 Function(
  Pointer<CMSG_CNG_CONTENT_DECRYPT_INFO> pCNGContentDecryptInfo,
  Pointer<CMSG_CTRL_KEY_AGREE_DECRYPT_PARA> pKeyAgreeDecryptPara,
  Uint32 dwFlags,
  Pointer pvReserved,
);
typedef PFN_CMSG_CNG_IMPORT_KEY_TRANS = Int32 Function(
  Pointer<CMSG_CNG_CONTENT_DECRYPT_INFO> pCNGContentDecryptInfo,
  Pointer<CMSG_CTRL_KEY_TRANS_DECRYPT_PARA> pKeyTransDecryptPara,
  Uint32 dwFlags,
  Pointer pvReserved,
);
typedef PFN_CMSG_EXPORT_ENCRYPT_KEY = Int32 Function(
  IntPtr hCryptProv,
  IntPtr hEncryptKey,
  Pointer<CERT_PUBLIC_KEY_INFO> pPublicKeyInfo,
  Pointer<Uint8> pbData,
  Pointer<Uint32> pcbData,
);
typedef PFN_CMSG_EXPORT_KEY_AGREE = Int32 Function(
  Pointer<CMSG_CONTENT_ENCRYPT_INFO> pContentEncryptInfo,
  Pointer<CMSG_KEY_AGREE_RECIPIENT_ENCODE_INFO> pKeyAgreeEncodeInfo,
  Pointer<CMSG_KEY_AGREE_ENCRYPT_INFO> pKeyAgreeEncryptInfo,
  Uint32 dwFlags,
  Pointer pvReserved,
);
typedef PFN_CMSG_EXPORT_KEY_TRANS = Int32 Function(
  Pointer<CMSG_CONTENT_ENCRYPT_INFO> pContentEncryptInfo,
  Pointer<CMSG_KEY_TRANS_RECIPIENT_ENCODE_INFO> pKeyTransEncodeInfo,
  Pointer<CMSG_KEY_TRANS_ENCRYPT_INFO> pKeyTransEncryptInfo,
  Uint32 dwFlags,
  Pointer pvReserved,
);
typedef PFN_CMSG_EXPORT_MAIL_LIST = Int32 Function(
  Pointer<CMSG_CONTENT_ENCRYPT_INFO> pContentEncryptInfo,
  Pointer<CMSG_MAIL_LIST_RECIPIENT_ENCODE_INFO> pMailListEncodeInfo,
  Pointer<CMSG_MAIL_LIST_ENCRYPT_INFO> pMailListEncryptInfo,
  Uint32 dwFlags,
  Pointer pvReserved,
);
typedef PFN_CMSG_FREE = Void Function(
  Pointer pv,
);
typedef PFN_CMSG_GEN_CONTENT_ENCRYPT_KEY = Int32 Function(
  Pointer<CMSG_CONTENT_ENCRYPT_INFO> pContentEncryptInfo,
  Uint32 dwFlags,
  Pointer pvReserved,
);
typedef PFN_CMSG_GEN_ENCRYPT_KEY = Int32 Function(
  Pointer<IntPtr> phCryptProv,
  Pointer<CRYPT_ALGORITHM_IDENTIFIER> paiEncrypt,
  Pointer pvEncryptAuxInfo,
  Pointer<CERT_PUBLIC_KEY_INFO> pPublicKeyInfo,
  Pointer<NativeFunction<PFN_CMSG_ALLOC>> pfnAlloc,
  Pointer<IntPtr> phEncryptKey,
  Pointer<Pointer<Uint8>> ppbEncryptParameters,
  Pointer<Uint32> pcbEncryptParameters,
);
typedef PFN_CMSG_IMPORT_ENCRYPT_KEY = Int32 Function(
  IntPtr hCryptProv,
  Uint32 dwKeySpec,
  Pointer<CRYPT_ALGORITHM_IDENTIFIER> paiEncrypt,
  Pointer<CRYPT_ALGORITHM_IDENTIFIER> paiPubKey,
  Pointer<Uint8> pbEncodedKey,
  Uint32 cbEncodedKey,
  Pointer<IntPtr> phEncryptKey,
);
typedef PFN_CMSG_IMPORT_KEY_AGREE = Int32 Function(
  Pointer<CRYPT_ALGORITHM_IDENTIFIER> pContentEncryptionAlgorithm,
  Pointer<CMSG_CTRL_KEY_AGREE_DECRYPT_PARA> pKeyAgreeDecryptPara,
  Uint32 dwFlags,
  Pointer pvReserved,
  Pointer<IntPtr> phContentEncryptKey,
);
typedef PFN_CMSG_IMPORT_KEY_TRANS = Int32 Function(
  Pointer<CRYPT_ALGORITHM_IDENTIFIER> pContentEncryptionAlgorithm,
  Pointer<CMSG_CTRL_KEY_TRANS_DECRYPT_PARA> pKeyTransDecryptPara,
  Uint32 dwFlags,
  Pointer pvReserved,
  Pointer<IntPtr> phContentEncryptKey,
);
typedef PFN_CMSG_IMPORT_MAIL_LIST = Int32 Function(
  Pointer<CRYPT_ALGORITHM_IDENTIFIER> pContentEncryptionAlgorithm,
  Pointer<CMSG_CTRL_MAIL_LIST_DECRYPT_PARA> pMailListDecryptPara,
  Uint32 dwFlags,
  Pointer pvReserved,
  Pointer<IntPtr> phContentEncryptKey,
);
typedef PFN_CMSG_STREAM_OUTPUT = Int32 Function(
  Pointer pvArg,
  Pointer<Uint8> pbData,
  Uint32 cbData,
  Int32 fFinal,
);
typedef PFN_CRYPT_ALLOC = Pointer Function(
  IntPtr cbSize,
);
typedef PFN_CRYPT_ASYNC_PARAM_FREE_FUNC = Void Function(
  Pointer<Utf8> pszParamOid,
  Pointer pvParam,
);
typedef PFN_CRYPT_ASYNC_RETRIEVAL_COMPLETION_FUNC = Void Function(
  Pointer pvCompletion,
  Uint32 dwCompletionCode,
  Pointer<Utf8> pszUrl,
  Pointer<Utf8> pszObjectOid,
  Pointer pvObject,
);
typedef PFN_CRYPT_CANCEL_RETRIEVAL = Int32 Function(
  Uint32 dwFlags,
  Pointer pvArg,
);
typedef PFN_CRYPT_ENUM_KEYID_PROP = Int32 Function(
  Pointer<CRYPTOAPI_BLOB> pKeyIdentifier,
  Uint32 dwFlags,
  Pointer pvReserved,
  Pointer pvArg,
  Uint32 cProp,
  Pointer<Uint32> rgdwPropId,
  Pointer<Pointer> rgpvData,
  Pointer<Uint32> rgcbData,
);
typedef PFN_CRYPT_ENUM_OID_FUNC = Int32 Function(
  Uint32 dwEncodingType,
  Pointer<Utf8> pszFuncName,
  Pointer<Utf8> pszOID,
  Uint32 cValue,
  Pointer<Uint32> rgdwValueType,
  Pointer<Pointer<Utf16>> rgpwszValueName,
  Pointer<Pointer<Uint8>> rgpbValueData,
  Pointer<Uint32> rgcbValueData,
  Pointer pvArg,
);
typedef PFN_CRYPT_ENUM_OID_INFO = Int32 Function(
  Pointer<CRYPT_OID_INFO> pInfo,
  Pointer pvArg,
);
typedef PFN_CRYPT_EXPORT_PUBLIC_KEY_INFO_EX2_FUNC = Int32 Function(
  IntPtr hNCryptKey,
  Uint32 dwCertEncodingType,
  Pointer<Utf8> pszPublicKeyObjId,
  Uint32 dwFlags,
  Pointer pvAuxInfo,
  Pointer<CERT_PUBLIC_KEY_INFO> pInfo,
  Pointer<Uint32> pcbInfo,
);
typedef PFN_CRYPT_EXPORT_PUBLIC_KEY_INFO_FROM_BCRYPT_HANDLE_FUNC = Int32
    Function(
  IntPtr hBCryptKey,
  Uint32 dwCertEncodingType,
  Pointer<Utf8> pszPublicKeyObjId,
  Uint32 dwFlags,
  Pointer pvAuxInfo,
  Pointer<CERT_PUBLIC_KEY_INFO> pInfo,
  Pointer<Uint32> pcbInfo,
);
typedef PFN_CRYPT_EXTRACT_ENCODED_SIGNATURE_PARAMETERS_FUNC = Int32 Function(
  Uint32 dwCertEncodingType,
  Pointer<CRYPT_ALGORITHM_IDENTIFIER> pSignatureAlgorithm,
  Pointer<Pointer> ppvDecodedSignPara,
  Pointer<Pointer<Utf16>> ppwszCNGHashAlgid,
);
typedef PFN_CRYPT_FREE = Void Function(
  Pointer pv,
);
typedef PFN_CRYPT_GET_SIGNER_CERTIFICATE = Pointer<CERT_CONTEXT> Function(
  Pointer pvGetArg,
  Uint32 dwCertEncodingType,
  Pointer<CERT_INFO> pSignerId,
  Pointer hMsgCertStore,
);
typedef PFN_CRYPT_OBJECT_LOCATOR_PROVIDER_FLUSH = Int32 Function(
  Pointer pContext,
  Pointer<Pointer<CRYPTOAPI_BLOB>> rgIdentifierOrNameList,
  Uint32 dwIdentifierOrNameListCount,
);
typedef PFN_CRYPT_OBJECT_LOCATOR_PROVIDER_FREE = Void Function(
  Pointer pPluginContext,
  Pointer<Uint8> pbData,
);
typedef PFN_CRYPT_OBJECT_LOCATOR_PROVIDER_FREE_IDENTIFIER = Void Function(
  Pointer pPluginContext,
  Pointer<CRYPTOAPI_BLOB> pIdentifier,
);
typedef PFN_CRYPT_OBJECT_LOCATOR_PROVIDER_FREE_PASSWORD = Void Function(
  Pointer pPluginContext,
  Pointer<Utf16> pwszPassword,
);
typedef PFN_CRYPT_OBJECT_LOCATOR_PROVIDER_GET = Int32 Function(
  Pointer pPluginContext,
  Pointer<CRYPTOAPI_BLOB> pIdentifier,
  Uint32 dwNameType,
  Pointer<CRYPTOAPI_BLOB> pNameBlob,
  Pointer<Pointer<Uint8>> ppbContent,
  Pointer<Uint32> pcbContent,
  Pointer<Pointer<Utf16>> ppwszPassword,
  Pointer<Pointer<CRYPTOAPI_BLOB>> ppIdentifier,
);
typedef PFN_CRYPT_OBJECT_LOCATOR_PROVIDER_INITIALIZE = Int32 Function(
  Pointer<NativeFunction<PFN_CRYPT_OBJECT_LOCATOR_PROVIDER_FLUSH>> pfnFlush,
  Pointer pContext,
  Pointer<Uint32> pdwExpectedObjectCount,
  Pointer<Pointer<CRYPT_OBJECT_LOCATOR_PROVIDER_TABLE>> ppFuncTable,
  Pointer<Pointer> ppPluginContext,
);
typedef PFN_CRYPT_OBJECT_LOCATOR_PROVIDER_RELEASE = Void Function(
  Uint32 dwReason,
  Pointer pPluginContext,
);
typedef PFN_CRYPT_SIGN_AND_ENCODE_HASH_FUNC = Int32 Function(
  IntPtr hKey,
  Uint32 dwCertEncodingType,
  Pointer<CRYPT_ALGORITHM_IDENTIFIER> pSignatureAlgorithm,
  Pointer pvDecodedSignPara,
  Pointer<Utf16> pwszCNGPubKeyAlgid,
  Pointer<Utf16> pwszCNGHashAlgid,
  Pointer<Uint8> pbComputedHash,
  Uint32 cbComputedHash,
  Pointer<Uint8> pbSignature,
  Pointer<Uint32> pcbSignature,
);
typedef PFN_CRYPT_VERIFY_ENCODED_SIGNATURE_FUNC = Int32 Function(
  Uint32 dwCertEncodingType,
  Pointer<CERT_PUBLIC_KEY_INFO> pPubKeyInfo,
  Pointer<CRYPT_ALGORITHM_IDENTIFIER> pSignatureAlgorithm,
  Pointer pvDecodedSignPara,
  Pointer<Utf16> pwszCNGPubKeyAlgid,
  Pointer<Utf16> pwszCNGHashAlgid,
  Pointer<Uint8> pbComputedHash,
  Uint32 cbComputedHash,
  Pointer<Uint8> pbSignature,
  Uint32 cbSignature,
);
typedef PFN_CRYPT_XML_CREATE_TRANSFORM = Int32 Function(
  Pointer<CRYPT_XML_ALGORITHM> pTransform,
  Pointer<CRYPT_XML_DATA_PROVIDER> pProviderIn,
  Pointer<CRYPT_XML_DATA_PROVIDER> pProviderOut,
);
typedef PFN_CRYPT_XML_DATA_PROVIDER_CLOSE = Int32 Function(
  Pointer pvCallbackState,
);
typedef PFN_CRYPT_XML_DATA_PROVIDER_READ = Int32 Function(
  Pointer pvCallbackState,
  Pointer<Uint8> pbData,
  Uint32 cbData,
  Pointer<Uint32> pcbRead,
);
typedef PFN_CRYPT_XML_ENUM_ALG_INFO = Int32 Function(
  Pointer<CRYPT_XML_ALGORITHM_INFO> pInfo,
  Pointer pvArg,
);
typedef PFN_CRYPT_XML_WRITE_CALLBACK = Int32 Function(
  Pointer pvCallbackState,
  Pointer<Uint8> pbData,
  Uint32 cbData,
);
typedef PFN_EXPORT_PRIV_KEY_FUNC = Int32 Function(
  IntPtr hCryptProv,
  Uint32 dwKeySpec,
  Pointer<Utf8> pszPrivateKeyObjId,
  Uint32 dwFlags,
  Pointer pvAuxInfo,
  Pointer<CRYPT_PRIVATE_KEY_INFO> pPrivateKeyInfo,
  Pointer<Uint32> pcbPrivateKeyInfo,
);
typedef PFN_FREE_ENCODED_OBJECT_FUNC = Void Function(
  Pointer<Utf8> pszObjectOid,
  Pointer<CRYPT_BLOB_ARRAY> pObject,
  Pointer pvFreeContext,
);
typedef PFN_IMPORT_PRIV_KEY_FUNC = Int32 Function(
  IntPtr hCryptProv,
  Pointer<CRYPT_PRIVATE_KEY_INFO> pPrivateKeyInfo,
  Uint32 dwFlags,
  Pointer pvAuxInfo,
);
typedef PFN_IMPORT_PUBLIC_KEY_INFO_EX2_FUNC = Int32 Function(
  Uint32 dwCertEncodingType,
  Pointer<CERT_PUBLIC_KEY_INFO> pInfo,
  Uint32 dwFlags,
  Pointer pvAuxInfo,
  Pointer<IntPtr> phKey,
);
typedef PFN_NCRYPT_ALLOC = Pointer Function(
  IntPtr cbSize,
);
typedef PFN_NCRYPT_FREE = Void Function(
  Pointer pv,
);
