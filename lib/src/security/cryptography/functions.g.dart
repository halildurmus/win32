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
import '../../security/cryptography/structs.g.dart';
import '../../security/structs.g.dart';
import '../../security/cryptography/callbacks.g.dart';
import '../../system/registry/structs.g.dart'; // -----------------------------------------------------------------------

// advapi32.dll
// -----------------------------------------------------------------------
final _advapi32 = DynamicLibrary.open('advapi32.dll');

int CryptAcquireContext(
  Pointer<IntPtr> phProv,
  Pointer<Utf16> szContainer,
  Pointer<Utf16> szProvider,
  int dwProvType,
  int dwFlags,
) =>
    _CryptAcquireContext(
      phProv,
      szContainer,
      szProvider,
      dwProvType,
      dwFlags,
    );

late final _CryptAcquireContext = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<IntPtr> phProv,
  Pointer<Utf16> szContainer,
  Pointer<Utf16> szProvider,
  Uint32 dwProvType,
  Uint32 dwFlags,
),
    int Function(
  Pointer<IntPtr> phProv,
  Pointer<Utf16> szContainer,
  Pointer<Utf16> szProvider,
  int dwProvType,
  int dwFlags,
)>('CryptAcquireContextW');

int CryptContextAddRef(
  int hProv,
  Pointer<Uint32> pdwReserved,
  int dwFlags,
) =>
    _CryptContextAddRef(
      hProv,
      pdwReserved,
      dwFlags,
    );

late final _CryptContextAddRef = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr hProv,
  Pointer<Uint32> pdwReserved,
  Uint32 dwFlags,
),
    int Function(
  int hProv,
  Pointer<Uint32> pdwReserved,
  int dwFlags,
)>('CryptContextAddRef');

int CryptCreateHash(
  int hProv,
  int Algid,
  int hKey,
  int dwFlags,
  Pointer<IntPtr> phHash,
) =>
    _CryptCreateHash(
      hProv,
      Algid,
      hKey,
      dwFlags,
      phHash,
    );

late final _CryptCreateHash = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr hProv,
  Uint32 Algid,
  IntPtr hKey,
  Uint32 dwFlags,
  Pointer<IntPtr> phHash,
),
    int Function(
  int hProv,
  int Algid,
  int hKey,
  int dwFlags,
  Pointer<IntPtr> phHash,
)>('CryptCreateHash');

int CryptDecrypt(
  int hKey,
  int hHash,
  int Final,
  int dwFlags,
  Pointer<Uint8> pbData,
  Pointer<Uint32> pdwDataLen,
) =>
    _CryptDecrypt(
      hKey,
      hHash,
      Final,
      dwFlags,
      pbData,
      pdwDataLen,
    );

late final _CryptDecrypt = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr hKey,
  IntPtr hHash,
  Int32 Final,
  Uint32 dwFlags,
  Pointer<Uint8> pbData,
  Pointer<Uint32> pdwDataLen,
),
    int Function(
  int hKey,
  int hHash,
  int Final,
  int dwFlags,
  Pointer<Uint8> pbData,
  Pointer<Uint32> pdwDataLen,
)>('CryptDecrypt');

int CryptDeriveKey(
  int hProv,
  int Algid,
  int hBaseData,
  int dwFlags,
  Pointer<IntPtr> phKey,
) =>
    _CryptDeriveKey(
      hProv,
      Algid,
      hBaseData,
      dwFlags,
      phKey,
    );

late final _CryptDeriveKey = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr hProv,
  Uint32 Algid,
  IntPtr hBaseData,
  Uint32 dwFlags,
  Pointer<IntPtr> phKey,
),
    int Function(
  int hProv,
  int Algid,
  int hBaseData,
  int dwFlags,
  Pointer<IntPtr> phKey,
)>('CryptDeriveKey');

int CryptDestroyHash(
  int hHash,
) =>
    _CryptDestroyHash(
      hHash,
    );

late final _CryptDestroyHash = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr hHash,
),
    int Function(
  int hHash,
)>('CryptDestroyHash');

int CryptDestroyKey(
  int hKey,
) =>
    _CryptDestroyKey(
      hKey,
    );

late final _CryptDestroyKey = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr hKey,
),
    int Function(
  int hKey,
)>('CryptDestroyKey');

int CryptDuplicateHash(
  int hHash,
  Pointer<Uint32> pdwReserved,
  int dwFlags,
  Pointer<IntPtr> phHash,
) =>
    _CryptDuplicateHash(
      hHash,
      pdwReserved,
      dwFlags,
      phHash,
    );

late final _CryptDuplicateHash = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr hHash,
  Pointer<Uint32> pdwReserved,
  Uint32 dwFlags,
  Pointer<IntPtr> phHash,
),
    int Function(
  int hHash,
  Pointer<Uint32> pdwReserved,
  int dwFlags,
  Pointer<IntPtr> phHash,
)>('CryptDuplicateHash');

int CryptDuplicateKey(
  int hKey,
  Pointer<Uint32> pdwReserved,
  int dwFlags,
  Pointer<IntPtr> phKey,
) =>
    _CryptDuplicateKey(
      hKey,
      pdwReserved,
      dwFlags,
      phKey,
    );

late final _CryptDuplicateKey = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr hKey,
  Pointer<Uint32> pdwReserved,
  Uint32 dwFlags,
  Pointer<IntPtr> phKey,
),
    int Function(
  int hKey,
  Pointer<Uint32> pdwReserved,
  int dwFlags,
  Pointer<IntPtr> phKey,
)>('CryptDuplicateKey');

int CryptEncrypt(
  int hKey,
  int hHash,
  int Final,
  int dwFlags,
  Pointer<Uint8> pbData,
  Pointer<Uint32> pdwDataLen,
  int dwBufLen,
) =>
    _CryptEncrypt(
      hKey,
      hHash,
      Final,
      dwFlags,
      pbData,
      pdwDataLen,
      dwBufLen,
    );

late final _CryptEncrypt = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr hKey,
  IntPtr hHash,
  Int32 Final,
  Uint32 dwFlags,
  Pointer<Uint8> pbData,
  Pointer<Uint32> pdwDataLen,
  Uint32 dwBufLen,
),
    int Function(
  int hKey,
  int hHash,
  int Final,
  int dwFlags,
  Pointer<Uint8> pbData,
  Pointer<Uint32> pdwDataLen,
  int dwBufLen,
)>('CryptEncrypt');

int CryptEnumProviderTypes(
  int dwIndex,
  Pointer<Uint32> pdwReserved,
  int dwFlags,
  Pointer<Uint32> pdwProvType,
  Pointer<Utf16> szTypeName,
  Pointer<Uint32> pcbTypeName,
) =>
    _CryptEnumProviderTypes(
      dwIndex,
      pdwReserved,
      dwFlags,
      pdwProvType,
      szTypeName,
      pcbTypeName,
    );

late final _CryptEnumProviderTypes = _advapi32.lookupFunction<
    Int32 Function(
  Uint32 dwIndex,
  Pointer<Uint32> pdwReserved,
  Uint32 dwFlags,
  Pointer<Uint32> pdwProvType,
  Pointer<Utf16> szTypeName,
  Pointer<Uint32> pcbTypeName,
),
    int Function(
  int dwIndex,
  Pointer<Uint32> pdwReserved,
  int dwFlags,
  Pointer<Uint32> pdwProvType,
  Pointer<Utf16> szTypeName,
  Pointer<Uint32> pcbTypeName,
)>('CryptEnumProviderTypesW');

int CryptEnumProviders(
  int dwIndex,
  Pointer<Uint32> pdwReserved,
  int dwFlags,
  Pointer<Uint32> pdwProvType,
  Pointer<Utf16> szProvName,
  Pointer<Uint32> pcbProvName,
) =>
    _CryptEnumProviders(
      dwIndex,
      pdwReserved,
      dwFlags,
      pdwProvType,
      szProvName,
      pcbProvName,
    );

late final _CryptEnumProviders = _advapi32.lookupFunction<
    Int32 Function(
  Uint32 dwIndex,
  Pointer<Uint32> pdwReserved,
  Uint32 dwFlags,
  Pointer<Uint32> pdwProvType,
  Pointer<Utf16> szProvName,
  Pointer<Uint32> pcbProvName,
),
    int Function(
  int dwIndex,
  Pointer<Uint32> pdwReserved,
  int dwFlags,
  Pointer<Uint32> pdwProvType,
  Pointer<Utf16> szProvName,
  Pointer<Uint32> pcbProvName,
)>('CryptEnumProvidersW');

int CryptExportKey(
  int hKey,
  int hExpKey,
  int dwBlobType,
  int dwFlags,
  Pointer<Uint8> pbData,
  Pointer<Uint32> pdwDataLen,
) =>
    _CryptExportKey(
      hKey,
      hExpKey,
      dwBlobType,
      dwFlags,
      pbData,
      pdwDataLen,
    );

late final _CryptExportKey = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr hKey,
  IntPtr hExpKey,
  Uint32 dwBlobType,
  Uint32 dwFlags,
  Pointer<Uint8> pbData,
  Pointer<Uint32> pdwDataLen,
),
    int Function(
  int hKey,
  int hExpKey,
  int dwBlobType,
  int dwFlags,
  Pointer<Uint8> pbData,
  Pointer<Uint32> pdwDataLen,
)>('CryptExportKey');

int CryptGenKey(
  int hProv,
  int Algid,
  int dwFlags,
  Pointer<IntPtr> phKey,
) =>
    _CryptGenKey(
      hProv,
      Algid,
      dwFlags,
      phKey,
    );

late final _CryptGenKey = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr hProv,
  Uint32 Algid,
  Uint32 dwFlags,
  Pointer<IntPtr> phKey,
),
    int Function(
  int hProv,
  int Algid,
  int dwFlags,
  Pointer<IntPtr> phKey,
)>('CryptGenKey');

int CryptGenRandom(
  int hProv,
  int dwLen,
  Pointer<Uint8> pbBuffer,
) =>
    _CryptGenRandom(
      hProv,
      dwLen,
      pbBuffer,
    );

late final _CryptGenRandom = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr hProv,
  Uint32 dwLen,
  Pointer<Uint8> pbBuffer,
),
    int Function(
  int hProv,
  int dwLen,
  Pointer<Uint8> pbBuffer,
)>('CryptGenRandom');

int CryptGetDefaultProvider(
  int dwProvType,
  Pointer<Uint32> pdwReserved,
  int dwFlags,
  Pointer<Utf16> pszProvName,
  Pointer<Uint32> pcbProvName,
) =>
    _CryptGetDefaultProvider(
      dwProvType,
      pdwReserved,
      dwFlags,
      pszProvName,
      pcbProvName,
    );

late final _CryptGetDefaultProvider = _advapi32.lookupFunction<
    Int32 Function(
  Uint32 dwProvType,
  Pointer<Uint32> pdwReserved,
  Uint32 dwFlags,
  Pointer<Utf16> pszProvName,
  Pointer<Uint32> pcbProvName,
),
    int Function(
  int dwProvType,
  Pointer<Uint32> pdwReserved,
  int dwFlags,
  Pointer<Utf16> pszProvName,
  Pointer<Uint32> pcbProvName,
)>('CryptGetDefaultProviderW');

int CryptGetHashParam(
  int hHash,
  int dwParam,
  Pointer<Uint8> pbData,
  Pointer<Uint32> pdwDataLen,
  int dwFlags,
) =>
    _CryptGetHashParam(
      hHash,
      dwParam,
      pbData,
      pdwDataLen,
      dwFlags,
    );

late final _CryptGetHashParam = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr hHash,
  Uint32 dwParam,
  Pointer<Uint8> pbData,
  Pointer<Uint32> pdwDataLen,
  Uint32 dwFlags,
),
    int Function(
  int hHash,
  int dwParam,
  Pointer<Uint8> pbData,
  Pointer<Uint32> pdwDataLen,
  int dwFlags,
)>('CryptGetHashParam');

int CryptGetKeyParam(
  int hKey,
  int dwParam,
  Pointer<Uint8> pbData,
  Pointer<Uint32> pdwDataLen,
  int dwFlags,
) =>
    _CryptGetKeyParam(
      hKey,
      dwParam,
      pbData,
      pdwDataLen,
      dwFlags,
    );

late final _CryptGetKeyParam = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr hKey,
  Uint32 dwParam,
  Pointer<Uint8> pbData,
  Pointer<Uint32> pdwDataLen,
  Uint32 dwFlags,
),
    int Function(
  int hKey,
  int dwParam,
  Pointer<Uint8> pbData,
  Pointer<Uint32> pdwDataLen,
  int dwFlags,
)>('CryptGetKeyParam');

int CryptGetProvParam(
  int hProv,
  int dwParam,
  Pointer<Uint8> pbData,
  Pointer<Uint32> pdwDataLen,
  int dwFlags,
) =>
    _CryptGetProvParam(
      hProv,
      dwParam,
      pbData,
      pdwDataLen,
      dwFlags,
    );

late final _CryptGetProvParam = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr hProv,
  Uint32 dwParam,
  Pointer<Uint8> pbData,
  Pointer<Uint32> pdwDataLen,
  Uint32 dwFlags,
),
    int Function(
  int hProv,
  int dwParam,
  Pointer<Uint8> pbData,
  Pointer<Uint32> pdwDataLen,
  int dwFlags,
)>('CryptGetProvParam');

int CryptGetUserKey(
  int hProv,
  int dwKeySpec,
  Pointer<IntPtr> phUserKey,
) =>
    _CryptGetUserKey(
      hProv,
      dwKeySpec,
      phUserKey,
    );

late final _CryptGetUserKey = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr hProv,
  Uint32 dwKeySpec,
  Pointer<IntPtr> phUserKey,
),
    int Function(
  int hProv,
  int dwKeySpec,
  Pointer<IntPtr> phUserKey,
)>('CryptGetUserKey');

int CryptHashData(
  int hHash,
  Pointer<Uint8> pbData,
  int dwDataLen,
  int dwFlags,
) =>
    _CryptHashData(
      hHash,
      pbData,
      dwDataLen,
      dwFlags,
    );

late final _CryptHashData = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr hHash,
  Pointer<Uint8> pbData,
  Uint32 dwDataLen,
  Uint32 dwFlags,
),
    int Function(
  int hHash,
  Pointer<Uint8> pbData,
  int dwDataLen,
  int dwFlags,
)>('CryptHashData');

int CryptHashSessionKey(
  int hHash,
  int hKey,
  int dwFlags,
) =>
    _CryptHashSessionKey(
      hHash,
      hKey,
      dwFlags,
    );

late final _CryptHashSessionKey = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr hHash,
  IntPtr hKey,
  Uint32 dwFlags,
),
    int Function(
  int hHash,
  int hKey,
  int dwFlags,
)>('CryptHashSessionKey');

int CryptImportKey(
  int hProv,
  Pointer<Uint8> pbData,
  int dwDataLen,
  int hPubKey,
  int dwFlags,
  Pointer<IntPtr> phKey,
) =>
    _CryptImportKey(
      hProv,
      pbData,
      dwDataLen,
      hPubKey,
      dwFlags,
      phKey,
    );

late final _CryptImportKey = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr hProv,
  Pointer<Uint8> pbData,
  Uint32 dwDataLen,
  IntPtr hPubKey,
  Uint32 dwFlags,
  Pointer<IntPtr> phKey,
),
    int Function(
  int hProv,
  Pointer<Uint8> pbData,
  int dwDataLen,
  int hPubKey,
  int dwFlags,
  Pointer<IntPtr> phKey,
)>('CryptImportKey');

int CryptReleaseContext(
  int hProv,
  int dwFlags,
) =>
    _CryptReleaseContext(
      hProv,
      dwFlags,
    );

late final _CryptReleaseContext = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr hProv,
  Uint32 dwFlags,
),
    int Function(
  int hProv,
  int dwFlags,
)>('CryptReleaseContext');

int CryptSetHashParam(
  int hHash,
  int dwParam,
  Pointer<Uint8> pbData,
  int dwFlags,
) =>
    _CryptSetHashParam(
      hHash,
      dwParam,
      pbData,
      dwFlags,
    );

late final _CryptSetHashParam = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr hHash,
  Uint32 dwParam,
  Pointer<Uint8> pbData,
  Uint32 dwFlags,
),
    int Function(
  int hHash,
  int dwParam,
  Pointer<Uint8> pbData,
  int dwFlags,
)>('CryptSetHashParam');

int CryptSetKeyParam(
  int hKey,
  int dwParam,
  Pointer<Uint8> pbData,
  int dwFlags,
) =>
    _CryptSetKeyParam(
      hKey,
      dwParam,
      pbData,
      dwFlags,
    );

late final _CryptSetKeyParam = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr hKey,
  Uint32 dwParam,
  Pointer<Uint8> pbData,
  Uint32 dwFlags,
),
    int Function(
  int hKey,
  int dwParam,
  Pointer<Uint8> pbData,
  int dwFlags,
)>('CryptSetKeyParam');

int CryptSetProvParam(
  int hProv,
  int dwParam,
  Pointer<Uint8> pbData,
  int dwFlags,
) =>
    _CryptSetProvParam(
      hProv,
      dwParam,
      pbData,
      dwFlags,
    );

late final _CryptSetProvParam = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr hProv,
  Uint32 dwParam,
  Pointer<Uint8> pbData,
  Uint32 dwFlags,
),
    int Function(
  int hProv,
  int dwParam,
  Pointer<Uint8> pbData,
  int dwFlags,
)>('CryptSetProvParam');

int CryptSetProviderEx(
  Pointer<Utf16> pszProvName,
  int dwProvType,
  Pointer<Uint32> pdwReserved,
  int dwFlags,
) =>
    _CryptSetProviderEx(
      pszProvName,
      dwProvType,
      pdwReserved,
      dwFlags,
    );

late final _CryptSetProviderEx = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszProvName,
  Uint32 dwProvType,
  Pointer<Uint32> pdwReserved,
  Uint32 dwFlags,
),
    int Function(
  Pointer<Utf16> pszProvName,
  int dwProvType,
  Pointer<Uint32> pdwReserved,
  int dwFlags,
)>('CryptSetProviderExW');

int CryptSetProvider(
  Pointer<Utf16> pszProvName,
  int dwProvType,
) =>
    _CryptSetProvider(
      pszProvName,
      dwProvType,
    );

late final _CryptSetProvider = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszProvName,
  Uint32 dwProvType,
),
    int Function(
  Pointer<Utf16> pszProvName,
  int dwProvType,
)>('CryptSetProviderW');

int CryptSignHash(
  int hHash,
  int dwKeySpec,
  Pointer<Utf16> szDescription,
  int dwFlags,
  Pointer<Uint8> pbSignature,
  Pointer<Uint32> pdwSigLen,
) =>
    _CryptSignHash(
      hHash,
      dwKeySpec,
      szDescription,
      dwFlags,
      pbSignature,
      pdwSigLen,
    );

late final _CryptSignHash = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr hHash,
  Uint32 dwKeySpec,
  Pointer<Utf16> szDescription,
  Uint32 dwFlags,
  Pointer<Uint8> pbSignature,
  Pointer<Uint32> pdwSigLen,
),
    int Function(
  int hHash,
  int dwKeySpec,
  Pointer<Utf16> szDescription,
  int dwFlags,
  Pointer<Uint8> pbSignature,
  Pointer<Uint32> pdwSigLen,
)>('CryptSignHashW');

int CryptVerifySignature(
  int hHash,
  Pointer<Uint8> pbSignature,
  int dwSigLen,
  int hPubKey,
  Pointer<Utf16> szDescription,
  int dwFlags,
) =>
    _CryptVerifySignature(
      hHash,
      pbSignature,
      dwSigLen,
      hPubKey,
      szDescription,
      dwFlags,
    );

late final _CryptVerifySignature = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr hHash,
  Pointer<Uint8> pbSignature,
  Uint32 dwSigLen,
  IntPtr hPubKey,
  Pointer<Utf16> szDescription,
  Uint32 dwFlags,
),
    int Function(
  int hHash,
  Pointer<Uint8> pbSignature,
  int dwSigLen,
  int hPubKey,
  Pointer<Utf16> szDescription,
  int dwFlags,
)>('CryptVerifySignatureW');

// -----------------------------------------------------------------------
// bcrypt.dll
// -----------------------------------------------------------------------
final _bcrypt = DynamicLibrary.open('bcrypt.dll');

int BCryptAddContextFunction(
  int dwTable,
  Pointer<Utf16> pszContext,
  int dwInterface,
  Pointer<Utf16> pszFunction,
  int dwPosition,
) =>
    _BCryptAddContextFunction(
      dwTable,
      pszContext,
      dwInterface,
      pszFunction,
      dwPosition,
    );

late final _BCryptAddContextFunction = _bcrypt.lookupFunction<
    Int32 Function(
  Uint32 dwTable,
  Pointer<Utf16> pszContext,
  Uint32 dwInterface,
  Pointer<Utf16> pszFunction,
  Uint32 dwPosition,
),
    int Function(
  int dwTable,
  Pointer<Utf16> pszContext,
  int dwInterface,
  Pointer<Utf16> pszFunction,
  int dwPosition,
)>('BCryptAddContextFunction');

int BCryptCloseAlgorithmProvider(
  int hAlgorithm,
  int dwFlags,
) =>
    _BCryptCloseAlgorithmProvider(
      hAlgorithm,
      dwFlags,
    );

late final _BCryptCloseAlgorithmProvider = _bcrypt.lookupFunction<
    Int32 Function(
  IntPtr hAlgorithm,
  Uint32 dwFlags,
),
    int Function(
  int hAlgorithm,
  int dwFlags,
)>('BCryptCloseAlgorithmProvider');

int BCryptConfigureContext(
  int dwTable,
  Pointer<Utf16> pszContext,
  Pointer<CRYPT_CONTEXT_CONFIG> pConfig,
) =>
    _BCryptConfigureContext(
      dwTable,
      pszContext,
      pConfig,
    );

late final _BCryptConfigureContext = _bcrypt.lookupFunction<
    Int32 Function(
  Uint32 dwTable,
  Pointer<Utf16> pszContext,
  Pointer<CRYPT_CONTEXT_CONFIG> pConfig,
),
    int Function(
  int dwTable,
  Pointer<Utf16> pszContext,
  Pointer<CRYPT_CONTEXT_CONFIG> pConfig,
)>('BCryptConfigureContext');

int BCryptConfigureContextFunction(
  int dwTable,
  Pointer<Utf16> pszContext,
  int dwInterface,
  Pointer<Utf16> pszFunction,
  Pointer<CRYPT_CONTEXT_FUNCTION_CONFIG> pConfig,
) =>
    _BCryptConfigureContextFunction(
      dwTable,
      pszContext,
      dwInterface,
      pszFunction,
      pConfig,
    );

late final _BCryptConfigureContextFunction = _bcrypt.lookupFunction<
    Int32 Function(
  Uint32 dwTable,
  Pointer<Utf16> pszContext,
  Uint32 dwInterface,
  Pointer<Utf16> pszFunction,
  Pointer<CRYPT_CONTEXT_FUNCTION_CONFIG> pConfig,
),
    int Function(
  int dwTable,
  Pointer<Utf16> pszContext,
  int dwInterface,
  Pointer<Utf16> pszFunction,
  Pointer<CRYPT_CONTEXT_FUNCTION_CONFIG> pConfig,
)>('BCryptConfigureContextFunction');

int BCryptCreateContext(
  int dwTable,
  Pointer<Utf16> pszContext,
  Pointer<CRYPT_CONTEXT_CONFIG> pConfig,
) =>
    _BCryptCreateContext(
      dwTable,
      pszContext,
      pConfig,
    );

late final _BCryptCreateContext = _bcrypt.lookupFunction<
    Int32 Function(
  Uint32 dwTable,
  Pointer<Utf16> pszContext,
  Pointer<CRYPT_CONTEXT_CONFIG> pConfig,
),
    int Function(
  int dwTable,
  Pointer<Utf16> pszContext,
  Pointer<CRYPT_CONTEXT_CONFIG> pConfig,
)>('BCryptCreateContext');

int BCryptCreateHash(
  int hAlgorithm,
  Pointer<Pointer> phHash,
  Pointer<Uint8> pbHashObject,
  int cbHashObject,
  Pointer<Uint8> pbSecret,
  int cbSecret,
  int dwFlags,
) =>
    _BCryptCreateHash(
      hAlgorithm,
      phHash,
      pbHashObject,
      cbHashObject,
      pbSecret,
      cbSecret,
      dwFlags,
    );

late final _BCryptCreateHash = _bcrypt.lookupFunction<
    Int32 Function(
  IntPtr hAlgorithm,
  Pointer<Pointer> phHash,
  Pointer<Uint8> pbHashObject,
  Uint32 cbHashObject,
  Pointer<Uint8> pbSecret,
  Uint32 cbSecret,
  Uint32 dwFlags,
),
    int Function(
  int hAlgorithm,
  Pointer<Pointer> phHash,
  Pointer<Uint8> pbHashObject,
  int cbHashObject,
  Pointer<Uint8> pbSecret,
  int cbSecret,
  int dwFlags,
)>('BCryptCreateHash');

int BCryptCreateMultiHash(
  int hAlgorithm,
  Pointer<Pointer> phHash,
  int nHashes,
  Pointer<Uint8> pbHashObject,
  int cbHashObject,
  Pointer<Uint8> pbSecret,
  int cbSecret,
  int dwFlags,
) =>
    _BCryptCreateMultiHash(
      hAlgorithm,
      phHash,
      nHashes,
      pbHashObject,
      cbHashObject,
      pbSecret,
      cbSecret,
      dwFlags,
    );

late final _BCryptCreateMultiHash = _bcrypt.lookupFunction<
    Int32 Function(
  IntPtr hAlgorithm,
  Pointer<Pointer> phHash,
  Uint32 nHashes,
  Pointer<Uint8> pbHashObject,
  Uint32 cbHashObject,
  Pointer<Uint8> pbSecret,
  Uint32 cbSecret,
  Uint32 dwFlags,
),
    int Function(
  int hAlgorithm,
  Pointer<Pointer> phHash,
  int nHashes,
  Pointer<Uint8> pbHashObject,
  int cbHashObject,
  Pointer<Uint8> pbSecret,
  int cbSecret,
  int dwFlags,
)>('BCryptCreateMultiHash');

int BCryptDecrypt(
  int hKey,
  Pointer<Uint8> pbInput,
  int cbInput,
  Pointer pPaddingInfo,
  Pointer<Uint8> pbIV,
  int cbIV,
  Pointer<Uint8> pbOutput,
  int cbOutput,
  Pointer<Uint32> pcbResult,
  int dwFlags,
) =>
    _BCryptDecrypt(
      hKey,
      pbInput,
      cbInput,
      pPaddingInfo,
      pbIV,
      cbIV,
      pbOutput,
      cbOutput,
      pcbResult,
      dwFlags,
    );

late final _BCryptDecrypt = _bcrypt.lookupFunction<
    Int32 Function(
  IntPtr hKey,
  Pointer<Uint8> pbInput,
  Uint32 cbInput,
  Pointer pPaddingInfo,
  Pointer<Uint8> pbIV,
  Uint32 cbIV,
  Pointer<Uint8> pbOutput,
  Uint32 cbOutput,
  Pointer<Uint32> pcbResult,
  Uint32 dwFlags,
),
    int Function(
  int hKey,
  Pointer<Uint8> pbInput,
  int cbInput,
  Pointer pPaddingInfo,
  Pointer<Uint8> pbIV,
  int cbIV,
  Pointer<Uint8> pbOutput,
  int cbOutput,
  Pointer<Uint32> pcbResult,
  int dwFlags,
)>('BCryptDecrypt');

int BCryptDeleteContext(
  int dwTable,
  Pointer<Utf16> pszContext,
) =>
    _BCryptDeleteContext(
      dwTable,
      pszContext,
    );

late final _BCryptDeleteContext = _bcrypt.lookupFunction<
    Int32 Function(
  Uint32 dwTable,
  Pointer<Utf16> pszContext,
),
    int Function(
  int dwTable,
  Pointer<Utf16> pszContext,
)>('BCryptDeleteContext');

int BCryptDeriveKey(
  Pointer hSharedSecret,
  Pointer<Utf16> pwszKDF,
  Pointer<BCryptBufferDesc> pParameterList,
  Pointer<Uint8> pbDerivedKey,
  int cbDerivedKey,
  Pointer<Uint32> pcbResult,
  int dwFlags,
) =>
    _BCryptDeriveKey(
      hSharedSecret,
      pwszKDF,
      pParameterList,
      pbDerivedKey,
      cbDerivedKey,
      pcbResult,
      dwFlags,
    );

late final _BCryptDeriveKey = _bcrypt.lookupFunction<
    Int32 Function(
  Pointer hSharedSecret,
  Pointer<Utf16> pwszKDF,
  Pointer<BCryptBufferDesc> pParameterList,
  Pointer<Uint8> pbDerivedKey,
  Uint32 cbDerivedKey,
  Pointer<Uint32> pcbResult,
  Uint32 dwFlags,
),
    int Function(
  Pointer hSharedSecret,
  Pointer<Utf16> pwszKDF,
  Pointer<BCryptBufferDesc> pParameterList,
  Pointer<Uint8> pbDerivedKey,
  int cbDerivedKey,
  Pointer<Uint32> pcbResult,
  int dwFlags,
)>('BCryptDeriveKey');

int BCryptDeriveKeyCapi(
  Pointer hHash,
  int hTargetAlg,
  Pointer<Uint8> pbDerivedKey,
  int cbDerivedKey,
  int dwFlags,
) =>
    _BCryptDeriveKeyCapi(
      hHash,
      hTargetAlg,
      pbDerivedKey,
      cbDerivedKey,
      dwFlags,
    );

late final _BCryptDeriveKeyCapi = _bcrypt.lookupFunction<
    Int32 Function(
  Pointer hHash,
  IntPtr hTargetAlg,
  Pointer<Uint8> pbDerivedKey,
  Uint32 cbDerivedKey,
  Uint32 dwFlags,
),
    int Function(
  Pointer hHash,
  int hTargetAlg,
  Pointer<Uint8> pbDerivedKey,
  int cbDerivedKey,
  int dwFlags,
)>('BCryptDeriveKeyCapi');

int BCryptDeriveKeyPBKDF2(
  int hPrf,
  Pointer<Uint8> pbPassword,
  int cbPassword,
  Pointer<Uint8> pbSalt,
  int cbSalt,
  int cIterations,
  Pointer<Uint8> pbDerivedKey,
  int cbDerivedKey,
  int dwFlags,
) =>
    _BCryptDeriveKeyPBKDF2(
      hPrf,
      pbPassword,
      cbPassword,
      pbSalt,
      cbSalt,
      cIterations,
      pbDerivedKey,
      cbDerivedKey,
      dwFlags,
    );

late final _BCryptDeriveKeyPBKDF2 = _bcrypt.lookupFunction<
    Int32 Function(
  IntPtr hPrf,
  Pointer<Uint8> pbPassword,
  Uint32 cbPassword,
  Pointer<Uint8> pbSalt,
  Uint32 cbSalt,
  Uint64 cIterations,
  Pointer<Uint8> pbDerivedKey,
  Uint32 cbDerivedKey,
  Uint32 dwFlags,
),
    int Function(
  int hPrf,
  Pointer<Uint8> pbPassword,
  int cbPassword,
  Pointer<Uint8> pbSalt,
  int cbSalt,
  int cIterations,
  Pointer<Uint8> pbDerivedKey,
  int cbDerivedKey,
  int dwFlags,
)>('BCryptDeriveKeyPBKDF2');

int BCryptDestroyHash(
  Pointer hHash,
) =>
    _BCryptDestroyHash(
      hHash,
    );

late final _BCryptDestroyHash = _bcrypt.lookupFunction<
    Int32 Function(
  Pointer hHash,
),
    int Function(
  Pointer hHash,
)>('BCryptDestroyHash');

int BCryptDestroyKey(
  int hKey,
) =>
    _BCryptDestroyKey(
      hKey,
    );

late final _BCryptDestroyKey = _bcrypt.lookupFunction<
    Int32 Function(
  IntPtr hKey,
),
    int Function(
  int hKey,
)>('BCryptDestroyKey');

int BCryptDestroySecret(
  Pointer hSecret,
) =>
    _BCryptDestroySecret(
      hSecret,
    );

late final _BCryptDestroySecret = _bcrypt.lookupFunction<
    Int32 Function(
  Pointer hSecret,
),
    int Function(
  Pointer hSecret,
)>('BCryptDestroySecret');

int BCryptDuplicateHash(
  Pointer hHash,
  Pointer<Pointer> phNewHash,
  Pointer<Uint8> pbHashObject,
  int cbHashObject,
  int dwFlags,
) =>
    _BCryptDuplicateHash(
      hHash,
      phNewHash,
      pbHashObject,
      cbHashObject,
      dwFlags,
    );

late final _BCryptDuplicateHash = _bcrypt.lookupFunction<
    Int32 Function(
  Pointer hHash,
  Pointer<Pointer> phNewHash,
  Pointer<Uint8> pbHashObject,
  Uint32 cbHashObject,
  Uint32 dwFlags,
),
    int Function(
  Pointer hHash,
  Pointer<Pointer> phNewHash,
  Pointer<Uint8> pbHashObject,
  int cbHashObject,
  int dwFlags,
)>('BCryptDuplicateHash');

int BCryptDuplicateKey(
  int hKey,
  Pointer<IntPtr> phNewKey,
  Pointer<Uint8> pbKeyObject,
  int cbKeyObject,
  int dwFlags,
) =>
    _BCryptDuplicateKey(
      hKey,
      phNewKey,
      pbKeyObject,
      cbKeyObject,
      dwFlags,
    );

late final _BCryptDuplicateKey = _bcrypt.lookupFunction<
    Int32 Function(
  IntPtr hKey,
  Pointer<IntPtr> phNewKey,
  Pointer<Uint8> pbKeyObject,
  Uint32 cbKeyObject,
  Uint32 dwFlags,
),
    int Function(
  int hKey,
  Pointer<IntPtr> phNewKey,
  Pointer<Uint8> pbKeyObject,
  int cbKeyObject,
  int dwFlags,
)>('BCryptDuplicateKey');

int BCryptEncrypt(
  int hKey,
  Pointer<Uint8> pbInput,
  int cbInput,
  Pointer pPaddingInfo,
  Pointer<Uint8> pbIV,
  int cbIV,
  Pointer<Uint8> pbOutput,
  int cbOutput,
  Pointer<Uint32> pcbResult,
  int dwFlags,
) =>
    _BCryptEncrypt(
      hKey,
      pbInput,
      cbInput,
      pPaddingInfo,
      pbIV,
      cbIV,
      pbOutput,
      cbOutput,
      pcbResult,
      dwFlags,
    );

late final _BCryptEncrypt = _bcrypt.lookupFunction<
    Int32 Function(
  IntPtr hKey,
  Pointer<Uint8> pbInput,
  Uint32 cbInput,
  Pointer pPaddingInfo,
  Pointer<Uint8> pbIV,
  Uint32 cbIV,
  Pointer<Uint8> pbOutput,
  Uint32 cbOutput,
  Pointer<Uint32> pcbResult,
  Uint32 dwFlags,
),
    int Function(
  int hKey,
  Pointer<Uint8> pbInput,
  int cbInput,
  Pointer pPaddingInfo,
  Pointer<Uint8> pbIV,
  int cbIV,
  Pointer<Uint8> pbOutput,
  int cbOutput,
  Pointer<Uint32> pcbResult,
  int dwFlags,
)>('BCryptEncrypt');

int BCryptEnumAlgorithms(
  int dwAlgOperations,
  Pointer<Uint32> pAlgCount,
  Pointer<Pointer<BCRYPT_ALGORITHM_IDENTIFIER>> ppAlgList,
  int dwFlags,
) =>
    _BCryptEnumAlgorithms(
      dwAlgOperations,
      pAlgCount,
      ppAlgList,
      dwFlags,
    );

late final _BCryptEnumAlgorithms = _bcrypt.lookupFunction<
    Int32 Function(
  Uint32 dwAlgOperations,
  Pointer<Uint32> pAlgCount,
  Pointer<Pointer<BCRYPT_ALGORITHM_IDENTIFIER>> ppAlgList,
  Uint32 dwFlags,
),
    int Function(
  int dwAlgOperations,
  Pointer<Uint32> pAlgCount,
  Pointer<Pointer<BCRYPT_ALGORITHM_IDENTIFIER>> ppAlgList,
  int dwFlags,
)>('BCryptEnumAlgorithms');

int BCryptEnumContextFunctionProviders(
  int dwTable,
  Pointer<Utf16> pszContext,
  int dwInterface,
  Pointer<Utf16> pszFunction,
  Pointer<Uint32> pcbBuffer,
  Pointer<Pointer<CRYPT_CONTEXT_FUNCTION_PROVIDERS>> ppBuffer,
) =>
    _BCryptEnumContextFunctionProviders(
      dwTable,
      pszContext,
      dwInterface,
      pszFunction,
      pcbBuffer,
      ppBuffer,
    );

late final _BCryptEnumContextFunctionProviders = _bcrypt.lookupFunction<
    Int32 Function(
  Uint32 dwTable,
  Pointer<Utf16> pszContext,
  Uint32 dwInterface,
  Pointer<Utf16> pszFunction,
  Pointer<Uint32> pcbBuffer,
  Pointer<Pointer<CRYPT_CONTEXT_FUNCTION_PROVIDERS>> ppBuffer,
),
    int Function(
  int dwTable,
  Pointer<Utf16> pszContext,
  int dwInterface,
  Pointer<Utf16> pszFunction,
  Pointer<Uint32> pcbBuffer,
  Pointer<Pointer<CRYPT_CONTEXT_FUNCTION_PROVIDERS>> ppBuffer,
)>('BCryptEnumContextFunctionProviders');

int BCryptEnumContextFunctions(
  int dwTable,
  Pointer<Utf16> pszContext,
  int dwInterface,
  Pointer<Uint32> pcbBuffer,
  Pointer<Pointer<CRYPT_CONTEXT_FUNCTIONS>> ppBuffer,
) =>
    _BCryptEnumContextFunctions(
      dwTable,
      pszContext,
      dwInterface,
      pcbBuffer,
      ppBuffer,
    );

late final _BCryptEnumContextFunctions = _bcrypt.lookupFunction<
    Int32 Function(
  Uint32 dwTable,
  Pointer<Utf16> pszContext,
  Uint32 dwInterface,
  Pointer<Uint32> pcbBuffer,
  Pointer<Pointer<CRYPT_CONTEXT_FUNCTIONS>> ppBuffer,
),
    int Function(
  int dwTable,
  Pointer<Utf16> pszContext,
  int dwInterface,
  Pointer<Uint32> pcbBuffer,
  Pointer<Pointer<CRYPT_CONTEXT_FUNCTIONS>> ppBuffer,
)>('BCryptEnumContextFunctions');

int BCryptEnumContexts(
  int dwTable,
  Pointer<Uint32> pcbBuffer,
  Pointer<Pointer<CRYPT_CONTEXTS>> ppBuffer,
) =>
    _BCryptEnumContexts(
      dwTable,
      pcbBuffer,
      ppBuffer,
    );

late final _BCryptEnumContexts = _bcrypt.lookupFunction<
    Int32 Function(
  Uint32 dwTable,
  Pointer<Uint32> pcbBuffer,
  Pointer<Pointer<CRYPT_CONTEXTS>> ppBuffer,
),
    int Function(
  int dwTable,
  Pointer<Uint32> pcbBuffer,
  Pointer<Pointer<CRYPT_CONTEXTS>> ppBuffer,
)>('BCryptEnumContexts');

int BCryptEnumProviders(
  Pointer<Utf16> pszAlgId,
  Pointer<Uint32> pImplCount,
  Pointer<Pointer<BCRYPT_PROVIDER_NAME>> ppImplList,
  int dwFlags,
) =>
    _BCryptEnumProviders(
      pszAlgId,
      pImplCount,
      ppImplList,
      dwFlags,
    );

late final _BCryptEnumProviders = _bcrypt.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszAlgId,
  Pointer<Uint32> pImplCount,
  Pointer<Pointer<BCRYPT_PROVIDER_NAME>> ppImplList,
  Uint32 dwFlags,
),
    int Function(
  Pointer<Utf16> pszAlgId,
  Pointer<Uint32> pImplCount,
  Pointer<Pointer<BCRYPT_PROVIDER_NAME>> ppImplList,
  int dwFlags,
)>('BCryptEnumProviders');

int BCryptEnumRegisteredProviders(
  Pointer<Uint32> pcbBuffer,
  Pointer<Pointer<CRYPT_PROVIDERS>> ppBuffer,
) =>
    _BCryptEnumRegisteredProviders(
      pcbBuffer,
      ppBuffer,
    );

late final _BCryptEnumRegisteredProviders = _bcrypt.lookupFunction<
    Int32 Function(
  Pointer<Uint32> pcbBuffer,
  Pointer<Pointer<CRYPT_PROVIDERS>> ppBuffer,
),
    int Function(
  Pointer<Uint32> pcbBuffer,
  Pointer<Pointer<CRYPT_PROVIDERS>> ppBuffer,
)>('BCryptEnumRegisteredProviders');

int BCryptExportKey(
  int hKey,
  int hExportKey,
  Pointer<Utf16> pszBlobType,
  Pointer<Uint8> pbOutput,
  int cbOutput,
  Pointer<Uint32> pcbResult,
  int dwFlags,
) =>
    _BCryptExportKey(
      hKey,
      hExportKey,
      pszBlobType,
      pbOutput,
      cbOutput,
      pcbResult,
      dwFlags,
    );

late final _BCryptExportKey = _bcrypt.lookupFunction<
    Int32 Function(
  IntPtr hKey,
  IntPtr hExportKey,
  Pointer<Utf16> pszBlobType,
  Pointer<Uint8> pbOutput,
  Uint32 cbOutput,
  Pointer<Uint32> pcbResult,
  Uint32 dwFlags,
),
    int Function(
  int hKey,
  int hExportKey,
  Pointer<Utf16> pszBlobType,
  Pointer<Uint8> pbOutput,
  int cbOutput,
  Pointer<Uint32> pcbResult,
  int dwFlags,
)>('BCryptExportKey');

int BCryptFinalizeKeyPair(
  int hKey,
  int dwFlags,
) =>
    _BCryptFinalizeKeyPair(
      hKey,
      dwFlags,
    );

late final _BCryptFinalizeKeyPair = _bcrypt.lookupFunction<
    Int32 Function(
  IntPtr hKey,
  Uint32 dwFlags,
),
    int Function(
  int hKey,
  int dwFlags,
)>('BCryptFinalizeKeyPair');

int BCryptFinishHash(
  Pointer hHash,
  Pointer<Uint8> pbOutput,
  int cbOutput,
  int dwFlags,
) =>
    _BCryptFinishHash(
      hHash,
      pbOutput,
      cbOutput,
      dwFlags,
    );

late final _BCryptFinishHash = _bcrypt.lookupFunction<
    Int32 Function(
  Pointer hHash,
  Pointer<Uint8> pbOutput,
  Uint32 cbOutput,
  Uint32 dwFlags,
),
    int Function(
  Pointer hHash,
  Pointer<Uint8> pbOutput,
  int cbOutput,
  int dwFlags,
)>('BCryptFinishHash');

void BCryptFreeBuffer(
  Pointer pvBuffer,
) =>
    _BCryptFreeBuffer(
      pvBuffer,
    );

late final _BCryptFreeBuffer = _bcrypt.lookupFunction<
    Void Function(
  Pointer pvBuffer,
),
    void Function(
  Pointer pvBuffer,
)>('BCryptFreeBuffer');

int BCryptGenRandom(
  int hAlgorithm,
  Pointer<Uint8> pbBuffer,
  int cbBuffer,
  int dwFlags,
) =>
    _BCryptGenRandom(
      hAlgorithm,
      pbBuffer,
      cbBuffer,
      dwFlags,
    );

late final _BCryptGenRandom = _bcrypt.lookupFunction<
    Int32 Function(
  IntPtr hAlgorithm,
  Pointer<Uint8> pbBuffer,
  Uint32 cbBuffer,
  Uint32 dwFlags,
),
    int Function(
  int hAlgorithm,
  Pointer<Uint8> pbBuffer,
  int cbBuffer,
  int dwFlags,
)>('BCryptGenRandom');

int BCryptGenerateKeyPair(
  int hAlgorithm,
  Pointer<IntPtr> phKey,
  int dwLength,
  int dwFlags,
) =>
    _BCryptGenerateKeyPair(
      hAlgorithm,
      phKey,
      dwLength,
      dwFlags,
    );

late final _BCryptGenerateKeyPair = _bcrypt.lookupFunction<
    Int32 Function(
  IntPtr hAlgorithm,
  Pointer<IntPtr> phKey,
  Uint32 dwLength,
  Uint32 dwFlags,
),
    int Function(
  int hAlgorithm,
  Pointer<IntPtr> phKey,
  int dwLength,
  int dwFlags,
)>('BCryptGenerateKeyPair');

int BCryptGenerateSymmetricKey(
  int hAlgorithm,
  Pointer<IntPtr> phKey,
  Pointer<Uint8> pbKeyObject,
  int cbKeyObject,
  Pointer<Uint8> pbSecret,
  int cbSecret,
  int dwFlags,
) =>
    _BCryptGenerateSymmetricKey(
      hAlgorithm,
      phKey,
      pbKeyObject,
      cbKeyObject,
      pbSecret,
      cbSecret,
      dwFlags,
    );

late final _BCryptGenerateSymmetricKey = _bcrypt.lookupFunction<
    Int32 Function(
  IntPtr hAlgorithm,
  Pointer<IntPtr> phKey,
  Pointer<Uint8> pbKeyObject,
  Uint32 cbKeyObject,
  Pointer<Uint8> pbSecret,
  Uint32 cbSecret,
  Uint32 dwFlags,
),
    int Function(
  int hAlgorithm,
  Pointer<IntPtr> phKey,
  Pointer<Uint8> pbKeyObject,
  int cbKeyObject,
  Pointer<Uint8> pbSecret,
  int cbSecret,
  int dwFlags,
)>('BCryptGenerateSymmetricKey');

int BCryptGetFipsAlgorithmMode(
  Pointer<Uint8> pfEnabled,
) =>
    _BCryptGetFipsAlgorithmMode(
      pfEnabled,
    );

late final _BCryptGetFipsAlgorithmMode = _bcrypt.lookupFunction<
    Int32 Function(
  Pointer<Uint8> pfEnabled,
),
    int Function(
  Pointer<Uint8> pfEnabled,
)>('BCryptGetFipsAlgorithmMode');

int BCryptGetProperty(
  Pointer hObject,
  Pointer<Utf16> pszProperty,
  Pointer<Uint8> pbOutput,
  int cbOutput,
  Pointer<Uint32> pcbResult,
  int dwFlags,
) =>
    _BCryptGetProperty(
      hObject,
      pszProperty,
      pbOutput,
      cbOutput,
      pcbResult,
      dwFlags,
    );

late final _BCryptGetProperty = _bcrypt.lookupFunction<
    Int32 Function(
  Pointer hObject,
  Pointer<Utf16> pszProperty,
  Pointer<Uint8> pbOutput,
  Uint32 cbOutput,
  Pointer<Uint32> pcbResult,
  Uint32 dwFlags,
),
    int Function(
  Pointer hObject,
  Pointer<Utf16> pszProperty,
  Pointer<Uint8> pbOutput,
  int cbOutput,
  Pointer<Uint32> pcbResult,
  int dwFlags,
)>('BCryptGetProperty');

int BCryptHash(
  int hAlgorithm,
  Pointer<Uint8> pbSecret,
  int cbSecret,
  Pointer<Uint8> pbInput,
  int cbInput,
  Pointer<Uint8> pbOutput,
  int cbOutput,
) =>
    _BCryptHash(
      hAlgorithm,
      pbSecret,
      cbSecret,
      pbInput,
      cbInput,
      pbOutput,
      cbOutput,
    );

late final _BCryptHash = _bcrypt.lookupFunction<
    Int32 Function(
  IntPtr hAlgorithm,
  Pointer<Uint8> pbSecret,
  Uint32 cbSecret,
  Pointer<Uint8> pbInput,
  Uint32 cbInput,
  Pointer<Uint8> pbOutput,
  Uint32 cbOutput,
),
    int Function(
  int hAlgorithm,
  Pointer<Uint8> pbSecret,
  int cbSecret,
  Pointer<Uint8> pbInput,
  int cbInput,
  Pointer<Uint8> pbOutput,
  int cbOutput,
)>('BCryptHash');

int BCryptHashData(
  Pointer hHash,
  Pointer<Uint8> pbInput,
  int cbInput,
  int dwFlags,
) =>
    _BCryptHashData(
      hHash,
      pbInput,
      cbInput,
      dwFlags,
    );

late final _BCryptHashData = _bcrypt.lookupFunction<
    Int32 Function(
  Pointer hHash,
  Pointer<Uint8> pbInput,
  Uint32 cbInput,
  Uint32 dwFlags,
),
    int Function(
  Pointer hHash,
  Pointer<Uint8> pbInput,
  int cbInput,
  int dwFlags,
)>('BCryptHashData');

int BCryptImportKey(
  int hAlgorithm,
  int hImportKey,
  Pointer<Utf16> pszBlobType,
  Pointer<IntPtr> phKey,
  Pointer<Uint8> pbKeyObject,
  int cbKeyObject,
  Pointer<Uint8> pbInput,
  int cbInput,
  int dwFlags,
) =>
    _BCryptImportKey(
      hAlgorithm,
      hImportKey,
      pszBlobType,
      phKey,
      pbKeyObject,
      cbKeyObject,
      pbInput,
      cbInput,
      dwFlags,
    );

late final _BCryptImportKey = _bcrypt.lookupFunction<
    Int32 Function(
  IntPtr hAlgorithm,
  IntPtr hImportKey,
  Pointer<Utf16> pszBlobType,
  Pointer<IntPtr> phKey,
  Pointer<Uint8> pbKeyObject,
  Uint32 cbKeyObject,
  Pointer<Uint8> pbInput,
  Uint32 cbInput,
  Uint32 dwFlags,
),
    int Function(
  int hAlgorithm,
  int hImportKey,
  Pointer<Utf16> pszBlobType,
  Pointer<IntPtr> phKey,
  Pointer<Uint8> pbKeyObject,
  int cbKeyObject,
  Pointer<Uint8> pbInput,
  int cbInput,
  int dwFlags,
)>('BCryptImportKey');

int BCryptImportKeyPair(
  int hAlgorithm,
  int hImportKey,
  Pointer<Utf16> pszBlobType,
  Pointer<IntPtr> phKey,
  Pointer<Uint8> pbInput,
  int cbInput,
  int dwFlags,
) =>
    _BCryptImportKeyPair(
      hAlgorithm,
      hImportKey,
      pszBlobType,
      phKey,
      pbInput,
      cbInput,
      dwFlags,
    );

late final _BCryptImportKeyPair = _bcrypt.lookupFunction<
    Int32 Function(
  IntPtr hAlgorithm,
  IntPtr hImportKey,
  Pointer<Utf16> pszBlobType,
  Pointer<IntPtr> phKey,
  Pointer<Uint8> pbInput,
  Uint32 cbInput,
  Uint32 dwFlags,
),
    int Function(
  int hAlgorithm,
  int hImportKey,
  Pointer<Utf16> pszBlobType,
  Pointer<IntPtr> phKey,
  Pointer<Uint8> pbInput,
  int cbInput,
  int dwFlags,
)>('BCryptImportKeyPair');

int BCryptKeyDerivation(
  int hKey,
  Pointer<BCryptBufferDesc> pParameterList,
  Pointer<Uint8> pbDerivedKey,
  int cbDerivedKey,
  Pointer<Uint32> pcbResult,
  int dwFlags,
) =>
    _BCryptKeyDerivation(
      hKey,
      pParameterList,
      pbDerivedKey,
      cbDerivedKey,
      pcbResult,
      dwFlags,
    );

late final _BCryptKeyDerivation = _bcrypt.lookupFunction<
    Int32 Function(
  IntPtr hKey,
  Pointer<BCryptBufferDesc> pParameterList,
  Pointer<Uint8> pbDerivedKey,
  Uint32 cbDerivedKey,
  Pointer<Uint32> pcbResult,
  Uint32 dwFlags,
),
    int Function(
  int hKey,
  Pointer<BCryptBufferDesc> pParameterList,
  Pointer<Uint8> pbDerivedKey,
  int cbDerivedKey,
  Pointer<Uint32> pcbResult,
  int dwFlags,
)>('BCryptKeyDerivation');

int BCryptOpenAlgorithmProvider(
  Pointer<IntPtr> phAlgorithm,
  Pointer<Utf16> pszAlgId,
  Pointer<Utf16> pszImplementation,
  int dwFlags,
) =>
    _BCryptOpenAlgorithmProvider(
      phAlgorithm,
      pszAlgId,
      pszImplementation,
      dwFlags,
    );

late final _BCryptOpenAlgorithmProvider = _bcrypt.lookupFunction<
    Int32 Function(
  Pointer<IntPtr> phAlgorithm,
  Pointer<Utf16> pszAlgId,
  Pointer<Utf16> pszImplementation,
  Uint32 dwFlags,
),
    int Function(
  Pointer<IntPtr> phAlgorithm,
  Pointer<Utf16> pszAlgId,
  Pointer<Utf16> pszImplementation,
  int dwFlags,
)>('BCryptOpenAlgorithmProvider');

int BCryptProcessMultiOperations(
  Pointer hObject,
  int operationType,
  Pointer pOperations,
  int cbOperations,
  int dwFlags,
) =>
    _BCryptProcessMultiOperations(
      hObject,
      operationType,
      pOperations,
      cbOperations,
      dwFlags,
    );

late final _BCryptProcessMultiOperations = _bcrypt.lookupFunction<
    Int32 Function(
  Pointer hObject,
  Int32 operationType,
  Pointer pOperations,
  Uint32 cbOperations,
  Uint32 dwFlags,
),
    int Function(
  Pointer hObject,
  int operationType,
  Pointer pOperations,
  int cbOperations,
  int dwFlags,
)>('BCryptProcessMultiOperations');

int BCryptQueryContextConfiguration(
  int dwTable,
  Pointer<Utf16> pszContext,
  Pointer<Uint32> pcbBuffer,
  Pointer<Pointer<CRYPT_CONTEXT_CONFIG>> ppBuffer,
) =>
    _BCryptQueryContextConfiguration(
      dwTable,
      pszContext,
      pcbBuffer,
      ppBuffer,
    );

late final _BCryptQueryContextConfiguration = _bcrypt.lookupFunction<
    Int32 Function(
  Uint32 dwTable,
  Pointer<Utf16> pszContext,
  Pointer<Uint32> pcbBuffer,
  Pointer<Pointer<CRYPT_CONTEXT_CONFIG>> ppBuffer,
),
    int Function(
  int dwTable,
  Pointer<Utf16> pszContext,
  Pointer<Uint32> pcbBuffer,
  Pointer<Pointer<CRYPT_CONTEXT_CONFIG>> ppBuffer,
)>('BCryptQueryContextConfiguration');

int BCryptQueryContextFunctionConfiguration(
  int dwTable,
  Pointer<Utf16> pszContext,
  int dwInterface,
  Pointer<Utf16> pszFunction,
  Pointer<Uint32> pcbBuffer,
  Pointer<Pointer<CRYPT_CONTEXT_FUNCTION_CONFIG>> ppBuffer,
) =>
    _BCryptQueryContextFunctionConfiguration(
      dwTable,
      pszContext,
      dwInterface,
      pszFunction,
      pcbBuffer,
      ppBuffer,
    );

late final _BCryptQueryContextFunctionConfiguration = _bcrypt.lookupFunction<
    Int32 Function(
  Uint32 dwTable,
  Pointer<Utf16> pszContext,
  Uint32 dwInterface,
  Pointer<Utf16> pszFunction,
  Pointer<Uint32> pcbBuffer,
  Pointer<Pointer<CRYPT_CONTEXT_FUNCTION_CONFIG>> ppBuffer,
),
    int Function(
  int dwTable,
  Pointer<Utf16> pszContext,
  int dwInterface,
  Pointer<Utf16> pszFunction,
  Pointer<Uint32> pcbBuffer,
  Pointer<Pointer<CRYPT_CONTEXT_FUNCTION_CONFIG>> ppBuffer,
)>('BCryptQueryContextFunctionConfiguration');

int BCryptQueryContextFunctionProperty(
  int dwTable,
  Pointer<Utf16> pszContext,
  int dwInterface,
  Pointer<Utf16> pszFunction,
  Pointer<Utf16> pszProperty,
  Pointer<Uint32> pcbValue,
  Pointer<Pointer<Uint8>> ppbValue,
) =>
    _BCryptQueryContextFunctionProperty(
      dwTable,
      pszContext,
      dwInterface,
      pszFunction,
      pszProperty,
      pcbValue,
      ppbValue,
    );

late final _BCryptQueryContextFunctionProperty = _bcrypt.lookupFunction<
    Int32 Function(
  Uint32 dwTable,
  Pointer<Utf16> pszContext,
  Uint32 dwInterface,
  Pointer<Utf16> pszFunction,
  Pointer<Utf16> pszProperty,
  Pointer<Uint32> pcbValue,
  Pointer<Pointer<Uint8>> ppbValue,
),
    int Function(
  int dwTable,
  Pointer<Utf16> pszContext,
  int dwInterface,
  Pointer<Utf16> pszFunction,
  Pointer<Utf16> pszProperty,
  Pointer<Uint32> pcbValue,
  Pointer<Pointer<Uint8>> ppbValue,
)>('BCryptQueryContextFunctionProperty');

int BCryptQueryProviderRegistration(
  Pointer<Utf16> pszProvider,
  int dwMode,
  int dwInterface,
  Pointer<Uint32> pcbBuffer,
  Pointer<Pointer<CRYPT_PROVIDER_REG>> ppBuffer,
) =>
    _BCryptQueryProviderRegistration(
      pszProvider,
      dwMode,
      dwInterface,
      pcbBuffer,
      ppBuffer,
    );

late final _BCryptQueryProviderRegistration = _bcrypt.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszProvider,
  Uint32 dwMode,
  Uint32 dwInterface,
  Pointer<Uint32> pcbBuffer,
  Pointer<Pointer<CRYPT_PROVIDER_REG>> ppBuffer,
),
    int Function(
  Pointer<Utf16> pszProvider,
  int dwMode,
  int dwInterface,
  Pointer<Uint32> pcbBuffer,
  Pointer<Pointer<CRYPT_PROVIDER_REG>> ppBuffer,
)>('BCryptQueryProviderRegistration');

int BCryptRegisterConfigChangeNotify(
  Pointer<IntPtr> phEvent,
) =>
    _BCryptRegisterConfigChangeNotify(
      phEvent,
    );

late final _BCryptRegisterConfigChangeNotify = _bcrypt.lookupFunction<
    Int32 Function(
  Pointer<IntPtr> phEvent,
),
    int Function(
  Pointer<IntPtr> phEvent,
)>('BCryptRegisterConfigChangeNotify');

int BCryptRemoveContextFunction(
  int dwTable,
  Pointer<Utf16> pszContext,
  int dwInterface,
  Pointer<Utf16> pszFunction,
) =>
    _BCryptRemoveContextFunction(
      dwTable,
      pszContext,
      dwInterface,
      pszFunction,
    );

late final _BCryptRemoveContextFunction = _bcrypt.lookupFunction<
    Int32 Function(
  Uint32 dwTable,
  Pointer<Utf16> pszContext,
  Uint32 dwInterface,
  Pointer<Utf16> pszFunction,
),
    int Function(
  int dwTable,
  Pointer<Utf16> pszContext,
  int dwInterface,
  Pointer<Utf16> pszFunction,
)>('BCryptRemoveContextFunction');

int BCryptResolveProviders(
  Pointer<Utf16> pszContext,
  int dwInterface,
  Pointer<Utf16> pszFunction,
  Pointer<Utf16> pszProvider,
  int dwMode,
  int dwFlags,
  Pointer<Uint32> pcbBuffer,
  Pointer<Pointer<CRYPT_PROVIDER_REFS>> ppBuffer,
) =>
    _BCryptResolveProviders(
      pszContext,
      dwInterface,
      pszFunction,
      pszProvider,
      dwMode,
      dwFlags,
      pcbBuffer,
      ppBuffer,
    );

late final _BCryptResolveProviders = _bcrypt.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszContext,
  Uint32 dwInterface,
  Pointer<Utf16> pszFunction,
  Pointer<Utf16> pszProvider,
  Uint32 dwMode,
  Uint32 dwFlags,
  Pointer<Uint32> pcbBuffer,
  Pointer<Pointer<CRYPT_PROVIDER_REFS>> ppBuffer,
),
    int Function(
  Pointer<Utf16> pszContext,
  int dwInterface,
  Pointer<Utf16> pszFunction,
  Pointer<Utf16> pszProvider,
  int dwMode,
  int dwFlags,
  Pointer<Uint32> pcbBuffer,
  Pointer<Pointer<CRYPT_PROVIDER_REFS>> ppBuffer,
)>('BCryptResolveProviders');

int BCryptSecretAgreement(
  int hPrivKey,
  int hPubKey,
  Pointer<Pointer> phAgreedSecret,
  int dwFlags,
) =>
    _BCryptSecretAgreement(
      hPrivKey,
      hPubKey,
      phAgreedSecret,
      dwFlags,
    );

late final _BCryptSecretAgreement = _bcrypt.lookupFunction<
    Int32 Function(
  IntPtr hPrivKey,
  IntPtr hPubKey,
  Pointer<Pointer> phAgreedSecret,
  Uint32 dwFlags,
),
    int Function(
  int hPrivKey,
  int hPubKey,
  Pointer<Pointer> phAgreedSecret,
  int dwFlags,
)>('BCryptSecretAgreement');

int BCryptSetContextFunctionProperty(
  int dwTable,
  Pointer<Utf16> pszContext,
  int dwInterface,
  Pointer<Utf16> pszFunction,
  Pointer<Utf16> pszProperty,
  int cbValue,
  Pointer<Uint8> pbValue,
) =>
    _BCryptSetContextFunctionProperty(
      dwTable,
      pszContext,
      dwInterface,
      pszFunction,
      pszProperty,
      cbValue,
      pbValue,
    );

late final _BCryptSetContextFunctionProperty = _bcrypt.lookupFunction<
    Int32 Function(
  Uint32 dwTable,
  Pointer<Utf16> pszContext,
  Uint32 dwInterface,
  Pointer<Utf16> pszFunction,
  Pointer<Utf16> pszProperty,
  Uint32 cbValue,
  Pointer<Uint8> pbValue,
),
    int Function(
  int dwTable,
  Pointer<Utf16> pszContext,
  int dwInterface,
  Pointer<Utf16> pszFunction,
  Pointer<Utf16> pszProperty,
  int cbValue,
  Pointer<Uint8> pbValue,
)>('BCryptSetContextFunctionProperty');

int BCryptSetProperty(
  Pointer hObject,
  Pointer<Utf16> pszProperty,
  Pointer<Uint8> pbInput,
  int cbInput,
  int dwFlags,
) =>
    _BCryptSetProperty(
      hObject,
      pszProperty,
      pbInput,
      cbInput,
      dwFlags,
    );

late final _BCryptSetProperty = _bcrypt.lookupFunction<
    Int32 Function(
  Pointer hObject,
  Pointer<Utf16> pszProperty,
  Pointer<Uint8> pbInput,
  Uint32 cbInput,
  Uint32 dwFlags,
),
    int Function(
  Pointer hObject,
  Pointer<Utf16> pszProperty,
  Pointer<Uint8> pbInput,
  int cbInput,
  int dwFlags,
)>('BCryptSetProperty');

int BCryptSignHash(
  int hKey,
  Pointer pPaddingInfo,
  Pointer<Uint8> pbInput,
  int cbInput,
  Pointer<Uint8> pbOutput,
  int cbOutput,
  Pointer<Uint32> pcbResult,
  int dwFlags,
) =>
    _BCryptSignHash(
      hKey,
      pPaddingInfo,
      pbInput,
      cbInput,
      pbOutput,
      cbOutput,
      pcbResult,
      dwFlags,
    );

late final _BCryptSignHash = _bcrypt.lookupFunction<
    Int32 Function(
  IntPtr hKey,
  Pointer pPaddingInfo,
  Pointer<Uint8> pbInput,
  Uint32 cbInput,
  Pointer<Uint8> pbOutput,
  Uint32 cbOutput,
  Pointer<Uint32> pcbResult,
  Uint32 dwFlags,
),
    int Function(
  int hKey,
  Pointer pPaddingInfo,
  Pointer<Uint8> pbInput,
  int cbInput,
  Pointer<Uint8> pbOutput,
  int cbOutput,
  Pointer<Uint32> pcbResult,
  int dwFlags,
)>('BCryptSignHash');

int BCryptUnregisterConfigChangeNotify(
  int hEvent,
) =>
    _BCryptUnregisterConfigChangeNotify(
      hEvent,
    );

late final _BCryptUnregisterConfigChangeNotify = _bcrypt.lookupFunction<
    Int32 Function(
  IntPtr hEvent,
),
    int Function(
  int hEvent,
)>('BCryptUnregisterConfigChangeNotify');

int BCryptVerifySignature(
  int hKey,
  Pointer pPaddingInfo,
  Pointer<Uint8> pbHash,
  int cbHash,
  Pointer<Uint8> pbSignature,
  int cbSignature,
  int dwFlags,
) =>
    _BCryptVerifySignature(
      hKey,
      pPaddingInfo,
      pbHash,
      cbHash,
      pbSignature,
      cbSignature,
      dwFlags,
    );

late final _BCryptVerifySignature = _bcrypt.lookupFunction<
    Int32 Function(
  IntPtr hKey,
  Pointer pPaddingInfo,
  Pointer<Uint8> pbHash,
  Uint32 cbHash,
  Pointer<Uint8> pbSignature,
  Uint32 cbSignature,
  Uint32 dwFlags,
),
    int Function(
  int hKey,
  Pointer pPaddingInfo,
  Pointer<Uint8> pbHash,
  int cbHash,
  Pointer<Uint8> pbSignature,
  int cbSignature,
  int dwFlags,
)>('BCryptVerifySignature');

// -----------------------------------------------------------------------
// ncrypt.dll
// -----------------------------------------------------------------------
final _ncrypt = DynamicLibrary.open('ncrypt.dll');

int NCryptCloseProtectionDescriptor(
  int hDescriptor,
) =>
    _NCryptCloseProtectionDescriptor(
      hDescriptor,
    );

late final _NCryptCloseProtectionDescriptor = _ncrypt.lookupFunction<
    Int32 Function(
  IntPtr hDescriptor,
),
    int Function(
  int hDescriptor,
)>('NCryptCloseProtectionDescriptor');

int NCryptCreateClaim(
  int hSubjectKey,
  int hAuthorityKey,
  int dwClaimType,
  Pointer<BCryptBufferDesc> pParameterList,
  Pointer<Uint8> pbClaimBlob,
  int cbClaimBlob,
  Pointer<Uint32> pcbResult,
  int dwFlags,
) =>
    _NCryptCreateClaim(
      hSubjectKey,
      hAuthorityKey,
      dwClaimType,
      pParameterList,
      pbClaimBlob,
      cbClaimBlob,
      pcbResult,
      dwFlags,
    );

late final _NCryptCreateClaim = _ncrypt.lookupFunction<
    Int32 Function(
  IntPtr hSubjectKey,
  IntPtr hAuthorityKey,
  Uint32 dwClaimType,
  Pointer<BCryptBufferDesc> pParameterList,
  Pointer<Uint8> pbClaimBlob,
  Uint32 cbClaimBlob,
  Pointer<Uint32> pcbResult,
  Uint32 dwFlags,
),
    int Function(
  int hSubjectKey,
  int hAuthorityKey,
  int dwClaimType,
  Pointer<BCryptBufferDesc> pParameterList,
  Pointer<Uint8> pbClaimBlob,
  int cbClaimBlob,
  Pointer<Uint32> pcbResult,
  int dwFlags,
)>('NCryptCreateClaim');

int NCryptCreatePersistedKey(
  int hProvider,
  Pointer<IntPtr> phKey,
  Pointer<Utf16> pszAlgId,
  Pointer<Utf16> pszKeyName,
  int dwLegacyKeySpec,
  int dwFlags,
) =>
    _NCryptCreatePersistedKey(
      hProvider,
      phKey,
      pszAlgId,
      pszKeyName,
      dwLegacyKeySpec,
      dwFlags,
    );

late final _NCryptCreatePersistedKey = _ncrypt.lookupFunction<
    Int32 Function(
  IntPtr hProvider,
  Pointer<IntPtr> phKey,
  Pointer<Utf16> pszAlgId,
  Pointer<Utf16> pszKeyName,
  Uint32 dwLegacyKeySpec,
  Uint32 dwFlags,
),
    int Function(
  int hProvider,
  Pointer<IntPtr> phKey,
  Pointer<Utf16> pszAlgId,
  Pointer<Utf16> pszKeyName,
  int dwLegacyKeySpec,
  int dwFlags,
)>('NCryptCreatePersistedKey');

int NCryptCreateProtectionDescriptor(
  Pointer<Utf16> pwszDescriptorString,
  int dwFlags,
  Pointer<IntPtr> phDescriptor,
) =>
    _NCryptCreateProtectionDescriptor(
      pwszDescriptorString,
      dwFlags,
      phDescriptor,
    );

late final _NCryptCreateProtectionDescriptor = _ncrypt.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwszDescriptorString,
  Uint32 dwFlags,
  Pointer<IntPtr> phDescriptor,
),
    int Function(
  Pointer<Utf16> pwszDescriptorString,
  int dwFlags,
  Pointer<IntPtr> phDescriptor,
)>('NCryptCreateProtectionDescriptor');

int NCryptDecrypt(
  int hKey,
  Pointer<Uint8> pbInput,
  int cbInput,
  Pointer pPaddingInfo,
  Pointer<Uint8> pbOutput,
  int cbOutput,
  Pointer<Uint32> pcbResult,
  int dwFlags,
) =>
    _NCryptDecrypt(
      hKey,
      pbInput,
      cbInput,
      pPaddingInfo,
      pbOutput,
      cbOutput,
      pcbResult,
      dwFlags,
    );

late final _NCryptDecrypt = _ncrypt.lookupFunction<
    Int32 Function(
  IntPtr hKey,
  Pointer<Uint8> pbInput,
  Uint32 cbInput,
  Pointer pPaddingInfo,
  Pointer<Uint8> pbOutput,
  Uint32 cbOutput,
  Pointer<Uint32> pcbResult,
  Uint32 dwFlags,
),
    int Function(
  int hKey,
  Pointer<Uint8> pbInput,
  int cbInput,
  Pointer pPaddingInfo,
  Pointer<Uint8> pbOutput,
  int cbOutput,
  Pointer<Uint32> pcbResult,
  int dwFlags,
)>('NCryptDecrypt');

int NCryptDeleteKey(
  int hKey,
  int dwFlags,
) =>
    _NCryptDeleteKey(
      hKey,
      dwFlags,
    );

late final _NCryptDeleteKey = _ncrypt.lookupFunction<
    Int32 Function(
  IntPtr hKey,
  Uint32 dwFlags,
),
    int Function(
  int hKey,
  int dwFlags,
)>('NCryptDeleteKey');

int NCryptDeriveKey(
  int hSharedSecret,
  Pointer<Utf16> pwszKDF,
  Pointer<BCryptBufferDesc> pParameterList,
  Pointer<Uint8> pbDerivedKey,
  int cbDerivedKey,
  Pointer<Uint32> pcbResult,
  int dwFlags,
) =>
    _NCryptDeriveKey(
      hSharedSecret,
      pwszKDF,
      pParameterList,
      pbDerivedKey,
      cbDerivedKey,
      pcbResult,
      dwFlags,
    );

late final _NCryptDeriveKey = _ncrypt.lookupFunction<
    Int32 Function(
  IntPtr hSharedSecret,
  Pointer<Utf16> pwszKDF,
  Pointer<BCryptBufferDesc> pParameterList,
  Pointer<Uint8> pbDerivedKey,
  Uint32 cbDerivedKey,
  Pointer<Uint32> pcbResult,
  Uint32 dwFlags,
),
    int Function(
  int hSharedSecret,
  Pointer<Utf16> pwszKDF,
  Pointer<BCryptBufferDesc> pParameterList,
  Pointer<Uint8> pbDerivedKey,
  int cbDerivedKey,
  Pointer<Uint32> pcbResult,
  int dwFlags,
)>('NCryptDeriveKey');

int NCryptEncrypt(
  int hKey,
  Pointer<Uint8> pbInput,
  int cbInput,
  Pointer pPaddingInfo,
  Pointer<Uint8> pbOutput,
  int cbOutput,
  Pointer<Uint32> pcbResult,
  int dwFlags,
) =>
    _NCryptEncrypt(
      hKey,
      pbInput,
      cbInput,
      pPaddingInfo,
      pbOutput,
      cbOutput,
      pcbResult,
      dwFlags,
    );

late final _NCryptEncrypt = _ncrypt.lookupFunction<
    Int32 Function(
  IntPtr hKey,
  Pointer<Uint8> pbInput,
  Uint32 cbInput,
  Pointer pPaddingInfo,
  Pointer<Uint8> pbOutput,
  Uint32 cbOutput,
  Pointer<Uint32> pcbResult,
  Uint32 dwFlags,
),
    int Function(
  int hKey,
  Pointer<Uint8> pbInput,
  int cbInput,
  Pointer pPaddingInfo,
  Pointer<Uint8> pbOutput,
  int cbOutput,
  Pointer<Uint32> pcbResult,
  int dwFlags,
)>('NCryptEncrypt');

int NCryptEnumAlgorithms(
  int hProvider,
  int dwAlgOperations,
  Pointer<Uint32> pdwAlgCount,
  Pointer<Pointer<NCryptAlgorithmName>> ppAlgList,
  int dwFlags,
) =>
    _NCryptEnumAlgorithms(
      hProvider,
      dwAlgOperations,
      pdwAlgCount,
      ppAlgList,
      dwFlags,
    );

late final _NCryptEnumAlgorithms = _ncrypt.lookupFunction<
    Int32 Function(
  IntPtr hProvider,
  Uint32 dwAlgOperations,
  Pointer<Uint32> pdwAlgCount,
  Pointer<Pointer<NCryptAlgorithmName>> ppAlgList,
  Uint32 dwFlags,
),
    int Function(
  int hProvider,
  int dwAlgOperations,
  Pointer<Uint32> pdwAlgCount,
  Pointer<Pointer<NCryptAlgorithmName>> ppAlgList,
  int dwFlags,
)>('NCryptEnumAlgorithms');

int NCryptEnumKeys(
  int hProvider,
  Pointer<Utf16> pszScope,
  Pointer<Pointer<NCryptKeyName>> ppKeyName,
  Pointer<Pointer> ppEnumState,
  int dwFlags,
) =>
    _NCryptEnumKeys(
      hProvider,
      pszScope,
      ppKeyName,
      ppEnumState,
      dwFlags,
    );

late final _NCryptEnumKeys = _ncrypt.lookupFunction<
    Int32 Function(
  IntPtr hProvider,
  Pointer<Utf16> pszScope,
  Pointer<Pointer<NCryptKeyName>> ppKeyName,
  Pointer<Pointer> ppEnumState,
  Uint32 dwFlags,
),
    int Function(
  int hProvider,
  Pointer<Utf16> pszScope,
  Pointer<Pointer<NCryptKeyName>> ppKeyName,
  Pointer<Pointer> ppEnumState,
  int dwFlags,
)>('NCryptEnumKeys');

int NCryptEnumStorageProviders(
  Pointer<Uint32> pdwProviderCount,
  Pointer<Pointer<NCryptProviderName>> ppProviderList,
  int dwFlags,
) =>
    _NCryptEnumStorageProviders(
      pdwProviderCount,
      ppProviderList,
      dwFlags,
    );

late final _NCryptEnumStorageProviders = _ncrypt.lookupFunction<
    Int32 Function(
  Pointer<Uint32> pdwProviderCount,
  Pointer<Pointer<NCryptProviderName>> ppProviderList,
  Uint32 dwFlags,
),
    int Function(
  Pointer<Uint32> pdwProviderCount,
  Pointer<Pointer<NCryptProviderName>> ppProviderList,
  int dwFlags,
)>('NCryptEnumStorageProviders');

int NCryptExportKey(
  int hKey,
  int hExportKey,
  Pointer<Utf16> pszBlobType,
  Pointer<BCryptBufferDesc> pParameterList,
  Pointer<Uint8> pbOutput,
  int cbOutput,
  Pointer<Uint32> pcbResult,
  int dwFlags,
) =>
    _NCryptExportKey(
      hKey,
      hExportKey,
      pszBlobType,
      pParameterList,
      pbOutput,
      cbOutput,
      pcbResult,
      dwFlags,
    );

late final _NCryptExportKey = _ncrypt.lookupFunction<
    Int32 Function(
  IntPtr hKey,
  IntPtr hExportKey,
  Pointer<Utf16> pszBlobType,
  Pointer<BCryptBufferDesc> pParameterList,
  Pointer<Uint8> pbOutput,
  Uint32 cbOutput,
  Pointer<Uint32> pcbResult,
  Uint32 dwFlags,
),
    int Function(
  int hKey,
  int hExportKey,
  Pointer<Utf16> pszBlobType,
  Pointer<BCryptBufferDesc> pParameterList,
  Pointer<Uint8> pbOutput,
  int cbOutput,
  Pointer<Uint32> pcbResult,
  int dwFlags,
)>('NCryptExportKey');

int NCryptFinalizeKey(
  int hKey,
  int dwFlags,
) =>
    _NCryptFinalizeKey(
      hKey,
      dwFlags,
    );

late final _NCryptFinalizeKey = _ncrypt.lookupFunction<
    Int32 Function(
  IntPtr hKey,
  Uint32 dwFlags,
),
    int Function(
  int hKey,
  int dwFlags,
)>('NCryptFinalizeKey');

int NCryptFreeBuffer(
  Pointer pvInput,
) =>
    _NCryptFreeBuffer(
      pvInput,
    );

late final _NCryptFreeBuffer = _ncrypt.lookupFunction<
    Int32 Function(
  Pointer pvInput,
),
    int Function(
  Pointer pvInput,
)>('NCryptFreeBuffer');

int NCryptFreeObject(
  int hObject,
) =>
    _NCryptFreeObject(
      hObject,
    );

late final _NCryptFreeObject = _ncrypt.lookupFunction<
    Int32 Function(
  IntPtr hObject,
),
    int Function(
  int hObject,
)>('NCryptFreeObject');

int NCryptGetProperty(
  int hObject,
  Pointer<Utf16> pszProperty,
  Pointer<Uint8> pbOutput,
  int cbOutput,
  Pointer<Uint32> pcbResult,
  int dwFlags,
) =>
    _NCryptGetProperty(
      hObject,
      pszProperty,
      pbOutput,
      cbOutput,
      pcbResult,
      dwFlags,
    );

late final _NCryptGetProperty = _ncrypt.lookupFunction<
    Int32 Function(
  IntPtr hObject,
  Pointer<Utf16> pszProperty,
  Pointer<Uint8> pbOutput,
  Uint32 cbOutput,
  Pointer<Uint32> pcbResult,
  Uint32 dwFlags,
),
    int Function(
  int hObject,
  Pointer<Utf16> pszProperty,
  Pointer<Uint8> pbOutput,
  int cbOutput,
  Pointer<Uint32> pcbResult,
  int dwFlags,
)>('NCryptGetProperty');

int NCryptGetProtectionDescriptorInfo(
  int hDescriptor,
  Pointer<NCRYPT_ALLOC_PARA> pMemPara,
  int dwInfoType,
  Pointer<Pointer> ppvInfo,
) =>
    _NCryptGetProtectionDescriptorInfo(
      hDescriptor,
      pMemPara,
      dwInfoType,
      ppvInfo,
    );

late final _NCryptGetProtectionDescriptorInfo = _ncrypt.lookupFunction<
    Int32 Function(
  IntPtr hDescriptor,
  Pointer<NCRYPT_ALLOC_PARA> pMemPara,
  Uint32 dwInfoType,
  Pointer<Pointer> ppvInfo,
),
    int Function(
  int hDescriptor,
  Pointer<NCRYPT_ALLOC_PARA> pMemPara,
  int dwInfoType,
  Pointer<Pointer> ppvInfo,
)>('NCryptGetProtectionDescriptorInfo');

int NCryptImportKey(
  int hProvider,
  int hImportKey,
  Pointer<Utf16> pszBlobType,
  Pointer<BCryptBufferDesc> pParameterList,
  Pointer<IntPtr> phKey,
  Pointer<Uint8> pbData,
  int cbData,
  int dwFlags,
) =>
    _NCryptImportKey(
      hProvider,
      hImportKey,
      pszBlobType,
      pParameterList,
      phKey,
      pbData,
      cbData,
      dwFlags,
    );

late final _NCryptImportKey = _ncrypt.lookupFunction<
    Int32 Function(
  IntPtr hProvider,
  IntPtr hImportKey,
  Pointer<Utf16> pszBlobType,
  Pointer<BCryptBufferDesc> pParameterList,
  Pointer<IntPtr> phKey,
  Pointer<Uint8> pbData,
  Uint32 cbData,
  Uint32 dwFlags,
),
    int Function(
  int hProvider,
  int hImportKey,
  Pointer<Utf16> pszBlobType,
  Pointer<BCryptBufferDesc> pParameterList,
  Pointer<IntPtr> phKey,
  Pointer<Uint8> pbData,
  int cbData,
  int dwFlags,
)>('NCryptImportKey');

int NCryptIsAlgSupported(
  int hProvider,
  Pointer<Utf16> pszAlgId,
  int dwFlags,
) =>
    _NCryptIsAlgSupported(
      hProvider,
      pszAlgId,
      dwFlags,
    );

late final _NCryptIsAlgSupported = _ncrypt.lookupFunction<
    Int32 Function(
  IntPtr hProvider,
  Pointer<Utf16> pszAlgId,
  Uint32 dwFlags,
),
    int Function(
  int hProvider,
  Pointer<Utf16> pszAlgId,
  int dwFlags,
)>('NCryptIsAlgSupported');

int NCryptIsKeyHandle(
  int hKey,
) =>
    _NCryptIsKeyHandle(
      hKey,
    );

late final _NCryptIsKeyHandle = _ncrypt.lookupFunction<
    Int32 Function(
  IntPtr hKey,
),
    int Function(
  int hKey,
)>('NCryptIsKeyHandle');

int NCryptKeyDerivation(
  int hKey,
  Pointer<BCryptBufferDesc> pParameterList,
  Pointer<Uint8> pbDerivedKey,
  int cbDerivedKey,
  Pointer<Uint32> pcbResult,
  int dwFlags,
) =>
    _NCryptKeyDerivation(
      hKey,
      pParameterList,
      pbDerivedKey,
      cbDerivedKey,
      pcbResult,
      dwFlags,
    );

late final _NCryptKeyDerivation = _ncrypt.lookupFunction<
    Int32 Function(
  IntPtr hKey,
  Pointer<BCryptBufferDesc> pParameterList,
  Pointer<Uint8> pbDerivedKey,
  Uint32 cbDerivedKey,
  Pointer<Uint32> pcbResult,
  Uint32 dwFlags,
),
    int Function(
  int hKey,
  Pointer<BCryptBufferDesc> pParameterList,
  Pointer<Uint8> pbDerivedKey,
  int cbDerivedKey,
  Pointer<Uint32> pcbResult,
  int dwFlags,
)>('NCryptKeyDerivation');

int NCryptNotifyChangeKey(
  int hProvider,
  Pointer<IntPtr> phEvent,
  int dwFlags,
) =>
    _NCryptNotifyChangeKey(
      hProvider,
      phEvent,
      dwFlags,
    );

late final _NCryptNotifyChangeKey = _ncrypt.lookupFunction<
    Int32 Function(
  IntPtr hProvider,
  Pointer<IntPtr> phEvent,
  Uint32 dwFlags,
),
    int Function(
  int hProvider,
  Pointer<IntPtr> phEvent,
  int dwFlags,
)>('NCryptNotifyChangeKey');

int NCryptOpenKey(
  int hProvider,
  Pointer<IntPtr> phKey,
  Pointer<Utf16> pszKeyName,
  int dwLegacyKeySpec,
  int dwFlags,
) =>
    _NCryptOpenKey(
      hProvider,
      phKey,
      pszKeyName,
      dwLegacyKeySpec,
      dwFlags,
    );

late final _NCryptOpenKey = _ncrypt.lookupFunction<
    Int32 Function(
  IntPtr hProvider,
  Pointer<IntPtr> phKey,
  Pointer<Utf16> pszKeyName,
  Uint32 dwLegacyKeySpec,
  Uint32 dwFlags,
),
    int Function(
  int hProvider,
  Pointer<IntPtr> phKey,
  Pointer<Utf16> pszKeyName,
  int dwLegacyKeySpec,
  int dwFlags,
)>('NCryptOpenKey');

int NCryptOpenStorageProvider(
  Pointer<IntPtr> phProvider,
  Pointer<Utf16> pszProviderName,
  int dwFlags,
) =>
    _NCryptOpenStorageProvider(
      phProvider,
      pszProviderName,
      dwFlags,
    );

late final _NCryptOpenStorageProvider = _ncrypt.lookupFunction<
    Int32 Function(
  Pointer<IntPtr> phProvider,
  Pointer<Utf16> pszProviderName,
  Uint32 dwFlags,
),
    int Function(
  Pointer<IntPtr> phProvider,
  Pointer<Utf16> pszProviderName,
  int dwFlags,
)>('NCryptOpenStorageProvider');

int NCryptProtectSecret(
  int hDescriptor,
  int dwFlags,
  Pointer<Uint8> pbData,
  int cbData,
  Pointer<NCRYPT_ALLOC_PARA> pMemPara,
  int hWnd,
  Pointer<Pointer<Uint8>> ppbProtectedBlob,
  Pointer<Uint32> pcbProtectedBlob,
) =>
    _NCryptProtectSecret(
      hDescriptor,
      dwFlags,
      pbData,
      cbData,
      pMemPara,
      hWnd,
      ppbProtectedBlob,
      pcbProtectedBlob,
    );

late final _NCryptProtectSecret = _ncrypt.lookupFunction<
    Int32 Function(
  IntPtr hDescriptor,
  Uint32 dwFlags,
  Pointer<Uint8> pbData,
  Uint32 cbData,
  Pointer<NCRYPT_ALLOC_PARA> pMemPara,
  IntPtr hWnd,
  Pointer<Pointer<Uint8>> ppbProtectedBlob,
  Pointer<Uint32> pcbProtectedBlob,
),
    int Function(
  int hDescriptor,
  int dwFlags,
  Pointer<Uint8> pbData,
  int cbData,
  Pointer<NCRYPT_ALLOC_PARA> pMemPara,
  int hWnd,
  Pointer<Pointer<Uint8>> ppbProtectedBlob,
  Pointer<Uint32> pcbProtectedBlob,
)>('NCryptProtectSecret');

int NCryptQueryProtectionDescriptorName(
  Pointer<Utf16> pwszName,
  Pointer<Utf16> pwszDescriptorString,
  Pointer<IntPtr> pcDescriptorString,
  int dwFlags,
) =>
    _NCryptQueryProtectionDescriptorName(
      pwszName,
      pwszDescriptorString,
      pcDescriptorString,
      dwFlags,
    );

late final _NCryptQueryProtectionDescriptorName = _ncrypt.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwszName,
  Pointer<Utf16> pwszDescriptorString,
  Pointer<IntPtr> pcDescriptorString,
  Uint32 dwFlags,
),
    int Function(
  Pointer<Utf16> pwszName,
  Pointer<Utf16> pwszDescriptorString,
  Pointer<IntPtr> pcDescriptorString,
  int dwFlags,
)>('NCryptQueryProtectionDescriptorName');

int NCryptRegisterProtectionDescriptorName(
  Pointer<Utf16> pwszName,
  Pointer<Utf16> pwszDescriptorString,
  int dwFlags,
) =>
    _NCryptRegisterProtectionDescriptorName(
      pwszName,
      pwszDescriptorString,
      dwFlags,
    );

late final _NCryptRegisterProtectionDescriptorName = _ncrypt.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwszName,
  Pointer<Utf16> pwszDescriptorString,
  Uint32 dwFlags,
),
    int Function(
  Pointer<Utf16> pwszName,
  Pointer<Utf16> pwszDescriptorString,
  int dwFlags,
)>('NCryptRegisterProtectionDescriptorName');

int NCryptSecretAgreement(
  int hPrivKey,
  int hPubKey,
  Pointer<IntPtr> phAgreedSecret,
  int dwFlags,
) =>
    _NCryptSecretAgreement(
      hPrivKey,
      hPubKey,
      phAgreedSecret,
      dwFlags,
    );

late final _NCryptSecretAgreement = _ncrypt.lookupFunction<
    Int32 Function(
  IntPtr hPrivKey,
  IntPtr hPubKey,
  Pointer<IntPtr> phAgreedSecret,
  Uint32 dwFlags,
),
    int Function(
  int hPrivKey,
  int hPubKey,
  Pointer<IntPtr> phAgreedSecret,
  int dwFlags,
)>('NCryptSecretAgreement');

int NCryptSetProperty(
  int hObject,
  Pointer<Utf16> pszProperty,
  Pointer<Uint8> pbInput,
  int cbInput,
  int dwFlags,
) =>
    _NCryptSetProperty(
      hObject,
      pszProperty,
      pbInput,
      cbInput,
      dwFlags,
    );

late final _NCryptSetProperty = _ncrypt.lookupFunction<
    Int32 Function(
  IntPtr hObject,
  Pointer<Utf16> pszProperty,
  Pointer<Uint8> pbInput,
  Uint32 cbInput,
  Uint32 dwFlags,
),
    int Function(
  int hObject,
  Pointer<Utf16> pszProperty,
  Pointer<Uint8> pbInput,
  int cbInput,
  int dwFlags,
)>('NCryptSetProperty');

int NCryptSignHash(
  int hKey,
  Pointer pPaddingInfo,
  Pointer<Uint8> pbHashValue,
  int cbHashValue,
  Pointer<Uint8> pbSignature,
  int cbSignature,
  Pointer<Uint32> pcbResult,
  int dwFlags,
) =>
    _NCryptSignHash(
      hKey,
      pPaddingInfo,
      pbHashValue,
      cbHashValue,
      pbSignature,
      cbSignature,
      pcbResult,
      dwFlags,
    );

late final _NCryptSignHash = _ncrypt.lookupFunction<
    Int32 Function(
  IntPtr hKey,
  Pointer pPaddingInfo,
  Pointer<Uint8> pbHashValue,
  Uint32 cbHashValue,
  Pointer<Uint8> pbSignature,
  Uint32 cbSignature,
  Pointer<Uint32> pcbResult,
  Uint32 dwFlags,
),
    int Function(
  int hKey,
  Pointer pPaddingInfo,
  Pointer<Uint8> pbHashValue,
  int cbHashValue,
  Pointer<Uint8> pbSignature,
  int cbSignature,
  Pointer<Uint32> pcbResult,
  int dwFlags,
)>('NCryptSignHash');

int NCryptStreamClose(
  int hStream,
) =>
    _NCryptStreamClose(
      hStream,
    );

late final _NCryptStreamClose = _ncrypt.lookupFunction<
    Int32 Function(
  IntPtr hStream,
),
    int Function(
  int hStream,
)>('NCryptStreamClose');

int NCryptStreamOpenToProtect(
  int hDescriptor,
  int dwFlags,
  int hWnd,
  Pointer<NCRYPT_PROTECT_STREAM_INFO> pStreamInfo,
  Pointer<IntPtr> phStream,
) =>
    _NCryptStreamOpenToProtect(
      hDescriptor,
      dwFlags,
      hWnd,
      pStreamInfo,
      phStream,
    );

late final _NCryptStreamOpenToProtect = _ncrypt.lookupFunction<
    Int32 Function(
  IntPtr hDescriptor,
  Uint32 dwFlags,
  IntPtr hWnd,
  Pointer<NCRYPT_PROTECT_STREAM_INFO> pStreamInfo,
  Pointer<IntPtr> phStream,
),
    int Function(
  int hDescriptor,
  int dwFlags,
  int hWnd,
  Pointer<NCRYPT_PROTECT_STREAM_INFO> pStreamInfo,
  Pointer<IntPtr> phStream,
)>('NCryptStreamOpenToProtect');

int NCryptStreamOpenToUnprotect(
  Pointer<NCRYPT_PROTECT_STREAM_INFO> pStreamInfo,
  int dwFlags,
  int hWnd,
  Pointer<IntPtr> phStream,
) =>
    _NCryptStreamOpenToUnprotect(
      pStreamInfo,
      dwFlags,
      hWnd,
      phStream,
    );

late final _NCryptStreamOpenToUnprotect = _ncrypt.lookupFunction<
    Int32 Function(
  Pointer<NCRYPT_PROTECT_STREAM_INFO> pStreamInfo,
  Uint32 dwFlags,
  IntPtr hWnd,
  Pointer<IntPtr> phStream,
),
    int Function(
  Pointer<NCRYPT_PROTECT_STREAM_INFO> pStreamInfo,
  int dwFlags,
  int hWnd,
  Pointer<IntPtr> phStream,
)>('NCryptStreamOpenToUnprotect');

int NCryptStreamOpenToUnprotectEx(
  Pointer<NCRYPT_PROTECT_STREAM_INFO_EX> pStreamInfo,
  int dwFlags,
  int hWnd,
  Pointer<IntPtr> phStream,
) =>
    _NCryptStreamOpenToUnprotectEx(
      pStreamInfo,
      dwFlags,
      hWnd,
      phStream,
    );

late final _NCryptStreamOpenToUnprotectEx = _ncrypt.lookupFunction<
    Int32 Function(
  Pointer<NCRYPT_PROTECT_STREAM_INFO_EX> pStreamInfo,
  Uint32 dwFlags,
  IntPtr hWnd,
  Pointer<IntPtr> phStream,
),
    int Function(
  Pointer<NCRYPT_PROTECT_STREAM_INFO_EX> pStreamInfo,
  int dwFlags,
  int hWnd,
  Pointer<IntPtr> phStream,
)>('NCryptStreamOpenToUnprotectEx');

int NCryptStreamUpdate(
  int hStream,
  Pointer<Uint8> pbData,
  int cbData,
  int fFinal,
) =>
    _NCryptStreamUpdate(
      hStream,
      pbData,
      cbData,
      fFinal,
    );

late final _NCryptStreamUpdate = _ncrypt.lookupFunction<
    Int32 Function(
  IntPtr hStream,
  Pointer<Uint8> pbData,
  IntPtr cbData,
  Int32 fFinal,
),
    int Function(
  int hStream,
  Pointer<Uint8> pbData,
  int cbData,
  int fFinal,
)>('NCryptStreamUpdate');

int NCryptTranslateHandle(
  Pointer<IntPtr> phProvider,
  Pointer<IntPtr> phKey,
  int hLegacyProv,
  int hLegacyKey,
  int dwLegacyKeySpec,
  int dwFlags,
) =>
    _NCryptTranslateHandle(
      phProvider,
      phKey,
      hLegacyProv,
      hLegacyKey,
      dwLegacyKeySpec,
      dwFlags,
    );

late final _NCryptTranslateHandle = _ncrypt.lookupFunction<
    Int32 Function(
  Pointer<IntPtr> phProvider,
  Pointer<IntPtr> phKey,
  IntPtr hLegacyProv,
  IntPtr hLegacyKey,
  Uint32 dwLegacyKeySpec,
  Uint32 dwFlags,
),
    int Function(
  Pointer<IntPtr> phProvider,
  Pointer<IntPtr> phKey,
  int hLegacyProv,
  int hLegacyKey,
  int dwLegacyKeySpec,
  int dwFlags,
)>('NCryptTranslateHandle');

int NCryptUnprotectSecret(
  Pointer<IntPtr> phDescriptor,
  int dwFlags,
  Pointer<Uint8> pbProtectedBlob,
  int cbProtectedBlob,
  Pointer<NCRYPT_ALLOC_PARA> pMemPara,
  int hWnd,
  Pointer<Pointer<Uint8>> ppbData,
  Pointer<Uint32> pcbData,
) =>
    _NCryptUnprotectSecret(
      phDescriptor,
      dwFlags,
      pbProtectedBlob,
      cbProtectedBlob,
      pMemPara,
      hWnd,
      ppbData,
      pcbData,
    );

late final _NCryptUnprotectSecret = _ncrypt.lookupFunction<
    Int32 Function(
  Pointer<IntPtr> phDescriptor,
  Uint32 dwFlags,
  Pointer<Uint8> pbProtectedBlob,
  Uint32 cbProtectedBlob,
  Pointer<NCRYPT_ALLOC_PARA> pMemPara,
  IntPtr hWnd,
  Pointer<Pointer<Uint8>> ppbData,
  Pointer<Uint32> pcbData,
),
    int Function(
  Pointer<IntPtr> phDescriptor,
  int dwFlags,
  Pointer<Uint8> pbProtectedBlob,
  int cbProtectedBlob,
  Pointer<NCRYPT_ALLOC_PARA> pMemPara,
  int hWnd,
  Pointer<Pointer<Uint8>> ppbData,
  Pointer<Uint32> pcbData,
)>('NCryptUnprotectSecret');

int NCryptVerifyClaim(
  int hSubjectKey,
  int hAuthorityKey,
  int dwClaimType,
  Pointer<BCryptBufferDesc> pParameterList,
  Pointer<Uint8> pbClaimBlob,
  int cbClaimBlob,
  Pointer<BCryptBufferDesc> pOutput,
  int dwFlags,
) =>
    _NCryptVerifyClaim(
      hSubjectKey,
      hAuthorityKey,
      dwClaimType,
      pParameterList,
      pbClaimBlob,
      cbClaimBlob,
      pOutput,
      dwFlags,
    );

late final _NCryptVerifyClaim = _ncrypt.lookupFunction<
    Int32 Function(
  IntPtr hSubjectKey,
  IntPtr hAuthorityKey,
  Uint32 dwClaimType,
  Pointer<BCryptBufferDesc> pParameterList,
  Pointer<Uint8> pbClaimBlob,
  Uint32 cbClaimBlob,
  Pointer<BCryptBufferDesc> pOutput,
  Uint32 dwFlags,
),
    int Function(
  int hSubjectKey,
  int hAuthorityKey,
  int dwClaimType,
  Pointer<BCryptBufferDesc> pParameterList,
  Pointer<Uint8> pbClaimBlob,
  int cbClaimBlob,
  Pointer<BCryptBufferDesc> pOutput,
  int dwFlags,
)>('NCryptVerifyClaim');

int NCryptVerifySignature(
  int hKey,
  Pointer pPaddingInfo,
  Pointer<Uint8> pbHashValue,
  int cbHashValue,
  Pointer<Uint8> pbSignature,
  int cbSignature,
  int dwFlags,
) =>
    _NCryptVerifySignature(
      hKey,
      pPaddingInfo,
      pbHashValue,
      cbHashValue,
      pbSignature,
      cbSignature,
      dwFlags,
    );

late final _NCryptVerifySignature = _ncrypt.lookupFunction<
    Int32 Function(
  IntPtr hKey,
  Pointer pPaddingInfo,
  Pointer<Uint8> pbHashValue,
  Uint32 cbHashValue,
  Pointer<Uint8> pbSignature,
  Uint32 cbSignature,
  Uint32 dwFlags,
),
    int Function(
  int hKey,
  Pointer pPaddingInfo,
  Pointer<Uint8> pbHashValue,
  int cbHashValue,
  Pointer<Uint8> pbSignature,
  int cbSignature,
  int dwFlags,
)>('NCryptVerifySignature');

// -----------------------------------------------------------------------
// crypt32.dll
// -----------------------------------------------------------------------
final _crypt32 = DynamicLibrary.open('crypt32.dll');

int CertAddCRLContextToStore(
  Pointer hCertStore,
  Pointer<CRL_CONTEXT> pCrlContext,
  int dwAddDisposition,
  Pointer<Pointer<CRL_CONTEXT>> ppStoreContext,
) =>
    _CertAddCRLContextToStore(
      hCertStore,
      pCrlContext,
      dwAddDisposition,
      ppStoreContext,
    );

late final _CertAddCRLContextToStore = _crypt32.lookupFunction<
    Int32 Function(
  Pointer hCertStore,
  Pointer<CRL_CONTEXT> pCrlContext,
  Uint32 dwAddDisposition,
  Pointer<Pointer<CRL_CONTEXT>> ppStoreContext,
),
    int Function(
  Pointer hCertStore,
  Pointer<CRL_CONTEXT> pCrlContext,
  int dwAddDisposition,
  Pointer<Pointer<CRL_CONTEXT>> ppStoreContext,
)>('CertAddCRLContextToStore');

int CertAddCRLLinkToStore(
  Pointer hCertStore,
  Pointer<CRL_CONTEXT> pCrlContext,
  int dwAddDisposition,
  Pointer<Pointer<CRL_CONTEXT>> ppStoreContext,
) =>
    _CertAddCRLLinkToStore(
      hCertStore,
      pCrlContext,
      dwAddDisposition,
      ppStoreContext,
    );

late final _CertAddCRLLinkToStore = _crypt32.lookupFunction<
    Int32 Function(
  Pointer hCertStore,
  Pointer<CRL_CONTEXT> pCrlContext,
  Uint32 dwAddDisposition,
  Pointer<Pointer<CRL_CONTEXT>> ppStoreContext,
),
    int Function(
  Pointer hCertStore,
  Pointer<CRL_CONTEXT> pCrlContext,
  int dwAddDisposition,
  Pointer<Pointer<CRL_CONTEXT>> ppStoreContext,
)>('CertAddCRLLinkToStore');

int CertAddCTLContextToStore(
  Pointer hCertStore,
  Pointer<CTL_CONTEXT> pCtlContext,
  int dwAddDisposition,
  Pointer<Pointer<CTL_CONTEXT>> ppStoreContext,
) =>
    _CertAddCTLContextToStore(
      hCertStore,
      pCtlContext,
      dwAddDisposition,
      ppStoreContext,
    );

late final _CertAddCTLContextToStore = _crypt32.lookupFunction<
    Int32 Function(
  Pointer hCertStore,
  Pointer<CTL_CONTEXT> pCtlContext,
  Uint32 dwAddDisposition,
  Pointer<Pointer<CTL_CONTEXT>> ppStoreContext,
),
    int Function(
  Pointer hCertStore,
  Pointer<CTL_CONTEXT> pCtlContext,
  int dwAddDisposition,
  Pointer<Pointer<CTL_CONTEXT>> ppStoreContext,
)>('CertAddCTLContextToStore');

int CertAddCTLLinkToStore(
  Pointer hCertStore,
  Pointer<CTL_CONTEXT> pCtlContext,
  int dwAddDisposition,
  Pointer<Pointer<CTL_CONTEXT>> ppStoreContext,
) =>
    _CertAddCTLLinkToStore(
      hCertStore,
      pCtlContext,
      dwAddDisposition,
      ppStoreContext,
    );

late final _CertAddCTLLinkToStore = _crypt32.lookupFunction<
    Int32 Function(
  Pointer hCertStore,
  Pointer<CTL_CONTEXT> pCtlContext,
  Uint32 dwAddDisposition,
  Pointer<Pointer<CTL_CONTEXT>> ppStoreContext,
),
    int Function(
  Pointer hCertStore,
  Pointer<CTL_CONTEXT> pCtlContext,
  int dwAddDisposition,
  Pointer<Pointer<CTL_CONTEXT>> ppStoreContext,
)>('CertAddCTLLinkToStore');

int CertAddCertificateContextToStore(
  Pointer hCertStore,
  Pointer<CERT_CONTEXT> pCertContext,
  int dwAddDisposition,
  Pointer<Pointer<CERT_CONTEXT>> ppStoreContext,
) =>
    _CertAddCertificateContextToStore(
      hCertStore,
      pCertContext,
      dwAddDisposition,
      ppStoreContext,
    );

late final _CertAddCertificateContextToStore = _crypt32.lookupFunction<
    Int32 Function(
  Pointer hCertStore,
  Pointer<CERT_CONTEXT> pCertContext,
  Uint32 dwAddDisposition,
  Pointer<Pointer<CERT_CONTEXT>> ppStoreContext,
),
    int Function(
  Pointer hCertStore,
  Pointer<CERT_CONTEXT> pCertContext,
  int dwAddDisposition,
  Pointer<Pointer<CERT_CONTEXT>> ppStoreContext,
)>('CertAddCertificateContextToStore');

int CertAddCertificateLinkToStore(
  Pointer hCertStore,
  Pointer<CERT_CONTEXT> pCertContext,
  int dwAddDisposition,
  Pointer<Pointer<CERT_CONTEXT>> ppStoreContext,
) =>
    _CertAddCertificateLinkToStore(
      hCertStore,
      pCertContext,
      dwAddDisposition,
      ppStoreContext,
    );

late final _CertAddCertificateLinkToStore = _crypt32.lookupFunction<
    Int32 Function(
  Pointer hCertStore,
  Pointer<CERT_CONTEXT> pCertContext,
  Uint32 dwAddDisposition,
  Pointer<Pointer<CERT_CONTEXT>> ppStoreContext,
),
    int Function(
  Pointer hCertStore,
  Pointer<CERT_CONTEXT> pCertContext,
  int dwAddDisposition,
  Pointer<Pointer<CERT_CONTEXT>> ppStoreContext,
)>('CertAddCertificateLinkToStore');

int CertAddEncodedCRLToStore(
  Pointer hCertStore,
  int dwCertEncodingType,
  Pointer<Uint8> pbCrlEncoded,
  int cbCrlEncoded,
  int dwAddDisposition,
  Pointer<Pointer<CRL_CONTEXT>> ppCrlContext,
) =>
    _CertAddEncodedCRLToStore(
      hCertStore,
      dwCertEncodingType,
      pbCrlEncoded,
      cbCrlEncoded,
      dwAddDisposition,
      ppCrlContext,
    );

late final _CertAddEncodedCRLToStore = _crypt32.lookupFunction<
    Int32 Function(
  Pointer hCertStore,
  Uint32 dwCertEncodingType,
  Pointer<Uint8> pbCrlEncoded,
  Uint32 cbCrlEncoded,
  Uint32 dwAddDisposition,
  Pointer<Pointer<CRL_CONTEXT>> ppCrlContext,
),
    int Function(
  Pointer hCertStore,
  int dwCertEncodingType,
  Pointer<Uint8> pbCrlEncoded,
  int cbCrlEncoded,
  int dwAddDisposition,
  Pointer<Pointer<CRL_CONTEXT>> ppCrlContext,
)>('CertAddEncodedCRLToStore');

int CertAddEncodedCTLToStore(
  Pointer hCertStore,
  int dwMsgAndCertEncodingType,
  Pointer<Uint8> pbCtlEncoded,
  int cbCtlEncoded,
  int dwAddDisposition,
  Pointer<Pointer<CTL_CONTEXT>> ppCtlContext,
) =>
    _CertAddEncodedCTLToStore(
      hCertStore,
      dwMsgAndCertEncodingType,
      pbCtlEncoded,
      cbCtlEncoded,
      dwAddDisposition,
      ppCtlContext,
    );

late final _CertAddEncodedCTLToStore = _crypt32.lookupFunction<
    Int32 Function(
  Pointer hCertStore,
  Uint32 dwMsgAndCertEncodingType,
  Pointer<Uint8> pbCtlEncoded,
  Uint32 cbCtlEncoded,
  Uint32 dwAddDisposition,
  Pointer<Pointer<CTL_CONTEXT>> ppCtlContext,
),
    int Function(
  Pointer hCertStore,
  int dwMsgAndCertEncodingType,
  Pointer<Uint8> pbCtlEncoded,
  int cbCtlEncoded,
  int dwAddDisposition,
  Pointer<Pointer<CTL_CONTEXT>> ppCtlContext,
)>('CertAddEncodedCTLToStore');

int CertAddEncodedCertificateToStore(
  Pointer hCertStore,
  int dwCertEncodingType,
  Pointer<Uint8> pbCertEncoded,
  int cbCertEncoded,
  int dwAddDisposition,
  Pointer<Pointer<CERT_CONTEXT>> ppCertContext,
) =>
    _CertAddEncodedCertificateToStore(
      hCertStore,
      dwCertEncodingType,
      pbCertEncoded,
      cbCertEncoded,
      dwAddDisposition,
      ppCertContext,
    );

late final _CertAddEncodedCertificateToStore = _crypt32.lookupFunction<
    Int32 Function(
  Pointer hCertStore,
  Uint32 dwCertEncodingType,
  Pointer<Uint8> pbCertEncoded,
  Uint32 cbCertEncoded,
  Uint32 dwAddDisposition,
  Pointer<Pointer<CERT_CONTEXT>> ppCertContext,
),
    int Function(
  Pointer hCertStore,
  int dwCertEncodingType,
  Pointer<Uint8> pbCertEncoded,
  int cbCertEncoded,
  int dwAddDisposition,
  Pointer<Pointer<CERT_CONTEXT>> ppCertContext,
)>('CertAddEncodedCertificateToStore');

int CertAddEncodedCertificateToSystemStore(
  Pointer<Utf16> szCertStoreName,
  Pointer<Uint8> pbCertEncoded,
  int cbCertEncoded,
) =>
    _CertAddEncodedCertificateToSystemStore(
      szCertStoreName,
      pbCertEncoded,
      cbCertEncoded,
    );

late final _CertAddEncodedCertificateToSystemStore = _crypt32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> szCertStoreName,
  Pointer<Uint8> pbCertEncoded,
  Uint32 cbCertEncoded,
),
    int Function(
  Pointer<Utf16> szCertStoreName,
  Pointer<Uint8> pbCertEncoded,
  int cbCertEncoded,
)>('CertAddEncodedCertificateToSystemStoreW');

int CertAddEnhancedKeyUsageIdentifier(
  Pointer<CERT_CONTEXT> pCertContext,
  Pointer<Utf8> pszUsageIdentifier,
) =>
    _CertAddEnhancedKeyUsageIdentifier(
      pCertContext,
      pszUsageIdentifier,
    );

late final _CertAddEnhancedKeyUsageIdentifier = _crypt32.lookupFunction<
    Int32 Function(
  Pointer<CERT_CONTEXT> pCertContext,
  Pointer<Utf8> pszUsageIdentifier,
),
    int Function(
  Pointer<CERT_CONTEXT> pCertContext,
  Pointer<Utf8> pszUsageIdentifier,
)>('CertAddEnhancedKeyUsageIdentifier');

void CertAddRefServerOcspResponse(
  Pointer hServerOcspResponse,
) =>
    _CertAddRefServerOcspResponse(
      hServerOcspResponse,
    );

late final _CertAddRefServerOcspResponse = _crypt32.lookupFunction<
    Void Function(
  Pointer hServerOcspResponse,
),
    void Function(
  Pointer hServerOcspResponse,
)>('CertAddRefServerOcspResponse');

void CertAddRefServerOcspResponseContext(
  Pointer<CERT_SERVER_OCSP_RESPONSE_CONTEXT> pServerOcspResponseContext,
) =>
    _CertAddRefServerOcspResponseContext(
      pServerOcspResponseContext,
    );

late final _CertAddRefServerOcspResponseContext = _crypt32.lookupFunction<
    Void Function(
  Pointer<CERT_SERVER_OCSP_RESPONSE_CONTEXT> pServerOcspResponseContext,
),
    void Function(
  Pointer<CERT_SERVER_OCSP_RESPONSE_CONTEXT> pServerOcspResponseContext,
)>('CertAddRefServerOcspResponseContext');

int CertAddSerializedElementToStore(
  Pointer hCertStore,
  Pointer<Uint8> pbElement,
  int cbElement,
  int dwAddDisposition,
  int dwFlags,
  int dwContextTypeFlags,
  Pointer<Uint32> pdwContextType,
  Pointer<Pointer> ppvContext,
) =>
    _CertAddSerializedElementToStore(
      hCertStore,
      pbElement,
      cbElement,
      dwAddDisposition,
      dwFlags,
      dwContextTypeFlags,
      pdwContextType,
      ppvContext,
    );

late final _CertAddSerializedElementToStore = _crypt32.lookupFunction<
    Int32 Function(
  Pointer hCertStore,
  Pointer<Uint8> pbElement,
  Uint32 cbElement,
  Uint32 dwAddDisposition,
  Uint32 dwFlags,
  Uint32 dwContextTypeFlags,
  Pointer<Uint32> pdwContextType,
  Pointer<Pointer> ppvContext,
),
    int Function(
  Pointer hCertStore,
  Pointer<Uint8> pbElement,
  int cbElement,
  int dwAddDisposition,
  int dwFlags,
  int dwContextTypeFlags,
  Pointer<Uint32> pdwContextType,
  Pointer<Pointer> ppvContext,
)>('CertAddSerializedElementToStore');

int CertAddStoreToCollection(
  Pointer hCollectionStore,
  Pointer hSiblingStore,
  int dwUpdateFlags,
  int dwPriority,
) =>
    _CertAddStoreToCollection(
      hCollectionStore,
      hSiblingStore,
      dwUpdateFlags,
      dwPriority,
    );

late final _CertAddStoreToCollection = _crypt32.lookupFunction<
    Int32 Function(
  Pointer hCollectionStore,
  Pointer hSiblingStore,
  Uint32 dwUpdateFlags,
  Uint32 dwPriority,
),
    int Function(
  Pointer hCollectionStore,
  Pointer hSiblingStore,
  int dwUpdateFlags,
  int dwPriority,
)>('CertAddStoreToCollection');

Pointer<Utf8> CertAlgIdToOID(
  int dwAlgId,
) =>
    _CertAlgIdToOID(
      dwAlgId,
    );

late final _CertAlgIdToOID = _crypt32.lookupFunction<
    Pointer<Utf8> Function(
  Uint32 dwAlgId,
),
    Pointer<Utf8> Function(
  int dwAlgId,
)>('CertAlgIdToOID');

void CertCloseServerOcspResponse(
  Pointer hServerOcspResponse,
  int dwFlags,
) =>
    _CertCloseServerOcspResponse(
      hServerOcspResponse,
      dwFlags,
    );

late final _CertCloseServerOcspResponse = _crypt32.lookupFunction<
    Void Function(
  Pointer hServerOcspResponse,
  Uint32 dwFlags,
),
    void Function(
  Pointer hServerOcspResponse,
  int dwFlags,
)>('CertCloseServerOcspResponse');

int CertCloseStore(
  Pointer hCertStore,
  int dwFlags,
) =>
    _CertCloseStore(
      hCertStore,
      dwFlags,
    );

late final _CertCloseStore = _crypt32.lookupFunction<
    Int32 Function(
  Pointer hCertStore,
  Uint32 dwFlags,
),
    int Function(
  Pointer hCertStore,
  int dwFlags,
)>('CertCloseStore');

int CertCompareCertificate(
  int dwCertEncodingType,
  Pointer<CERT_INFO> pCertId1,
  Pointer<CERT_INFO> pCertId2,
) =>
    _CertCompareCertificate(
      dwCertEncodingType,
      pCertId1,
      pCertId2,
    );

late final _CertCompareCertificate = _crypt32.lookupFunction<
    Int32 Function(
  Uint32 dwCertEncodingType,
  Pointer<CERT_INFO> pCertId1,
  Pointer<CERT_INFO> pCertId2,
),
    int Function(
  int dwCertEncodingType,
  Pointer<CERT_INFO> pCertId1,
  Pointer<CERT_INFO> pCertId2,
)>('CertCompareCertificate');

int CertCompareCertificateName(
  int dwCertEncodingType,
  Pointer<CRYPTOAPI_BLOB> pCertName1,
  Pointer<CRYPTOAPI_BLOB> pCertName2,
) =>
    _CertCompareCertificateName(
      dwCertEncodingType,
      pCertName1,
      pCertName2,
    );

late final _CertCompareCertificateName = _crypt32.lookupFunction<
    Int32 Function(
  Uint32 dwCertEncodingType,
  Pointer<CRYPTOAPI_BLOB> pCertName1,
  Pointer<CRYPTOAPI_BLOB> pCertName2,
),
    int Function(
  int dwCertEncodingType,
  Pointer<CRYPTOAPI_BLOB> pCertName1,
  Pointer<CRYPTOAPI_BLOB> pCertName2,
)>('CertCompareCertificateName');

int CertCompareIntegerBlob(
  Pointer<CRYPTOAPI_BLOB> pInt1,
  Pointer<CRYPTOAPI_BLOB> pInt2,
) =>
    _CertCompareIntegerBlob(
      pInt1,
      pInt2,
    );

late final _CertCompareIntegerBlob = _crypt32.lookupFunction<
    Int32 Function(
  Pointer<CRYPTOAPI_BLOB> pInt1,
  Pointer<CRYPTOAPI_BLOB> pInt2,
),
    int Function(
  Pointer<CRYPTOAPI_BLOB> pInt1,
  Pointer<CRYPTOAPI_BLOB> pInt2,
)>('CertCompareIntegerBlob');

int CertComparePublicKeyInfo(
  int dwCertEncodingType,
  Pointer<CERT_PUBLIC_KEY_INFO> pPublicKey1,
  Pointer<CERT_PUBLIC_KEY_INFO> pPublicKey2,
) =>
    _CertComparePublicKeyInfo(
      dwCertEncodingType,
      pPublicKey1,
      pPublicKey2,
    );

late final _CertComparePublicKeyInfo = _crypt32.lookupFunction<
    Int32 Function(
  Uint32 dwCertEncodingType,
  Pointer<CERT_PUBLIC_KEY_INFO> pPublicKey1,
  Pointer<CERT_PUBLIC_KEY_INFO> pPublicKey2,
),
    int Function(
  int dwCertEncodingType,
  Pointer<CERT_PUBLIC_KEY_INFO> pPublicKey1,
  Pointer<CERT_PUBLIC_KEY_INFO> pPublicKey2,
)>('CertComparePublicKeyInfo');

int CertControlStore(
  Pointer hCertStore,
  int dwFlags,
  int dwCtrlType,
  Pointer pvCtrlPara,
) =>
    _CertControlStore(
      hCertStore,
      dwFlags,
      dwCtrlType,
      pvCtrlPara,
    );

late final _CertControlStore = _crypt32.lookupFunction<
    Int32 Function(
  Pointer hCertStore,
  Uint32 dwFlags,
  Uint32 dwCtrlType,
  Pointer pvCtrlPara,
),
    int Function(
  Pointer hCertStore,
  int dwFlags,
  int dwCtrlType,
  Pointer pvCtrlPara,
)>('CertControlStore');

Pointer<CRL_CONTEXT> CertCreateCRLContext(
  int dwCertEncodingType,
  Pointer<Uint8> pbCrlEncoded,
  int cbCrlEncoded,
) =>
    _CertCreateCRLContext(
      dwCertEncodingType,
      pbCrlEncoded,
      cbCrlEncoded,
    );

late final _CertCreateCRLContext = _crypt32.lookupFunction<
    Pointer<CRL_CONTEXT> Function(
  Uint32 dwCertEncodingType,
  Pointer<Uint8> pbCrlEncoded,
  Uint32 cbCrlEncoded,
),
    Pointer<CRL_CONTEXT> Function(
  int dwCertEncodingType,
  Pointer<Uint8> pbCrlEncoded,
  int cbCrlEncoded,
)>('CertCreateCRLContext');

Pointer<CTL_CONTEXT> CertCreateCTLContext(
  int dwMsgAndCertEncodingType,
  Pointer<Uint8> pbCtlEncoded,
  int cbCtlEncoded,
) =>
    _CertCreateCTLContext(
      dwMsgAndCertEncodingType,
      pbCtlEncoded,
      cbCtlEncoded,
    );

late final _CertCreateCTLContext = _crypt32.lookupFunction<
    Pointer<CTL_CONTEXT> Function(
  Uint32 dwMsgAndCertEncodingType,
  Pointer<Uint8> pbCtlEncoded,
  Uint32 cbCtlEncoded,
),
    Pointer<CTL_CONTEXT> Function(
  int dwMsgAndCertEncodingType,
  Pointer<Uint8> pbCtlEncoded,
  int cbCtlEncoded,
)>('CertCreateCTLContext');

int CertCreateCTLEntryFromCertificateContextProperties(
  Pointer<CERT_CONTEXT> pCertContext,
  int cOptAttr,
  Pointer<CRYPT_ATTRIBUTE> rgOptAttr,
  int dwFlags,
  Pointer pvReserved,
  Pointer<CTL_ENTRY> pCtlEntry,
  Pointer<Uint32> pcbCtlEntry,
) =>
    _CertCreateCTLEntryFromCertificateContextProperties(
      pCertContext,
      cOptAttr,
      rgOptAttr,
      dwFlags,
      pvReserved,
      pCtlEntry,
      pcbCtlEntry,
    );

late final _CertCreateCTLEntryFromCertificateContextProperties =
    _crypt32.lookupFunction<
        Int32 Function(
  Pointer<CERT_CONTEXT> pCertContext,
  Uint32 cOptAttr,
  Pointer<CRYPT_ATTRIBUTE> rgOptAttr,
  Uint32 dwFlags,
  Pointer pvReserved,
  Pointer<CTL_ENTRY> pCtlEntry,
  Pointer<Uint32> pcbCtlEntry,
),
        int Function(
  Pointer<CERT_CONTEXT> pCertContext,
  int cOptAttr,
  Pointer<CRYPT_ATTRIBUTE> rgOptAttr,
  int dwFlags,
  Pointer pvReserved,
  Pointer<CTL_ENTRY> pCtlEntry,
  Pointer<Uint32> pcbCtlEntry,
)>('CertCreateCTLEntryFromCertificateContextProperties');

int CertCreateCertificateChainEngine(
  Pointer<CERT_CHAIN_ENGINE_CONFIG> pConfig,
  Pointer<IntPtr> phChainEngine,
) =>
    _CertCreateCertificateChainEngine(
      pConfig,
      phChainEngine,
    );

late final _CertCreateCertificateChainEngine = _crypt32.lookupFunction<
    Int32 Function(
  Pointer<CERT_CHAIN_ENGINE_CONFIG> pConfig,
  Pointer<IntPtr> phChainEngine,
),
    int Function(
  Pointer<CERT_CHAIN_ENGINE_CONFIG> pConfig,
  Pointer<IntPtr> phChainEngine,
)>('CertCreateCertificateChainEngine');

Pointer<CERT_CONTEXT> CertCreateCertificateContext(
  int dwCertEncodingType,
  Pointer<Uint8> pbCertEncoded,
  int cbCertEncoded,
) =>
    _CertCreateCertificateContext(
      dwCertEncodingType,
      pbCertEncoded,
      cbCertEncoded,
    );

late final _CertCreateCertificateContext = _crypt32.lookupFunction<
    Pointer<CERT_CONTEXT> Function(
  Uint32 dwCertEncodingType,
  Pointer<Uint8> pbCertEncoded,
  Uint32 cbCertEncoded,
),
    Pointer<CERT_CONTEXT> Function(
  int dwCertEncodingType,
  Pointer<Uint8> pbCertEncoded,
  int cbCertEncoded,
)>('CertCreateCertificateContext');

Pointer CertCreateContext(
  int dwContextType,
  int dwEncodingType,
  Pointer<Uint8> pbEncoded,
  int cbEncoded,
  int dwFlags,
  Pointer<CERT_CREATE_CONTEXT_PARA> pCreatePara,
) =>
    _CertCreateContext(
      dwContextType,
      dwEncodingType,
      pbEncoded,
      cbEncoded,
      dwFlags,
      pCreatePara,
    );

late final _CertCreateContext = _crypt32.lookupFunction<
    Pointer Function(
  Uint32 dwContextType,
  Uint32 dwEncodingType,
  Pointer<Uint8> pbEncoded,
  Uint32 cbEncoded,
  Uint32 dwFlags,
  Pointer<CERT_CREATE_CONTEXT_PARA> pCreatePara,
),
    Pointer Function(
  int dwContextType,
  int dwEncodingType,
  Pointer<Uint8> pbEncoded,
  int cbEncoded,
  int dwFlags,
  Pointer<CERT_CREATE_CONTEXT_PARA> pCreatePara,
)>('CertCreateContext');

Pointer<CERT_CONTEXT> CertCreateSelfSignCertificate(
  int hCryptProvOrNCryptKey,
  Pointer<CRYPTOAPI_BLOB> pSubjectIssuerBlob,
  int dwFlags,
  Pointer<CRYPT_KEY_PROV_INFO> pKeyProvInfo,
  Pointer<CRYPT_ALGORITHM_IDENTIFIER> pSignatureAlgorithm,
  Pointer<SYSTEMTIME> pStartTime,
  Pointer<SYSTEMTIME> pEndTime,
  Pointer<CERT_EXTENSIONS> pExtensions,
) =>
    _CertCreateSelfSignCertificate(
      hCryptProvOrNCryptKey,
      pSubjectIssuerBlob,
      dwFlags,
      pKeyProvInfo,
      pSignatureAlgorithm,
      pStartTime,
      pEndTime,
      pExtensions,
    );

late final _CertCreateSelfSignCertificate = _crypt32.lookupFunction<
    Pointer<CERT_CONTEXT> Function(
  IntPtr hCryptProvOrNCryptKey,
  Pointer<CRYPTOAPI_BLOB> pSubjectIssuerBlob,
  Uint32 dwFlags,
  Pointer<CRYPT_KEY_PROV_INFO> pKeyProvInfo,
  Pointer<CRYPT_ALGORITHM_IDENTIFIER> pSignatureAlgorithm,
  Pointer<SYSTEMTIME> pStartTime,
  Pointer<SYSTEMTIME> pEndTime,
  Pointer<CERT_EXTENSIONS> pExtensions,
),
    Pointer<CERT_CONTEXT> Function(
  int hCryptProvOrNCryptKey,
  Pointer<CRYPTOAPI_BLOB> pSubjectIssuerBlob,
  int dwFlags,
  Pointer<CRYPT_KEY_PROV_INFO> pKeyProvInfo,
  Pointer<CRYPT_ALGORITHM_IDENTIFIER> pSignatureAlgorithm,
  Pointer<SYSTEMTIME> pStartTime,
  Pointer<SYSTEMTIME> pEndTime,
  Pointer<CERT_EXTENSIONS> pExtensions,
)>('CertCreateSelfSignCertificate');

int CertDeleteCRLFromStore(
  Pointer<CRL_CONTEXT> pCrlContext,
) =>
    _CertDeleteCRLFromStore(
      pCrlContext,
    );

late final _CertDeleteCRLFromStore = _crypt32.lookupFunction<
    Int32 Function(
  Pointer<CRL_CONTEXT> pCrlContext,
),
    int Function(
  Pointer<CRL_CONTEXT> pCrlContext,
)>('CertDeleteCRLFromStore');

int CertDeleteCTLFromStore(
  Pointer<CTL_CONTEXT> pCtlContext,
) =>
    _CertDeleteCTLFromStore(
      pCtlContext,
    );

late final _CertDeleteCTLFromStore = _crypt32.lookupFunction<
    Int32 Function(
  Pointer<CTL_CONTEXT> pCtlContext,
),
    int Function(
  Pointer<CTL_CONTEXT> pCtlContext,
)>('CertDeleteCTLFromStore');

int CertDeleteCertificateFromStore(
  Pointer<CERT_CONTEXT> pCertContext,
) =>
    _CertDeleteCertificateFromStore(
      pCertContext,
    );

late final _CertDeleteCertificateFromStore = _crypt32.lookupFunction<
    Int32 Function(
  Pointer<CERT_CONTEXT> pCertContext,
),
    int Function(
  Pointer<CERT_CONTEXT> pCertContext,
)>('CertDeleteCertificateFromStore');

Pointer<CRL_CONTEXT> CertDuplicateCRLContext(
  Pointer<CRL_CONTEXT> pCrlContext,
) =>
    _CertDuplicateCRLContext(
      pCrlContext,
    );

late final _CertDuplicateCRLContext = _crypt32.lookupFunction<
    Pointer<CRL_CONTEXT> Function(
  Pointer<CRL_CONTEXT> pCrlContext,
),
    Pointer<CRL_CONTEXT> Function(
  Pointer<CRL_CONTEXT> pCrlContext,
)>('CertDuplicateCRLContext');

Pointer<CTL_CONTEXT> CertDuplicateCTLContext(
  Pointer<CTL_CONTEXT> pCtlContext,
) =>
    _CertDuplicateCTLContext(
      pCtlContext,
    );

late final _CertDuplicateCTLContext = _crypt32.lookupFunction<
    Pointer<CTL_CONTEXT> Function(
  Pointer<CTL_CONTEXT> pCtlContext,
),
    Pointer<CTL_CONTEXT> Function(
  Pointer<CTL_CONTEXT> pCtlContext,
)>('CertDuplicateCTLContext');

Pointer<CERT_CHAIN_CONTEXT> CertDuplicateCertificateChain(
  Pointer<CERT_CHAIN_CONTEXT> pChainContext,
) =>
    _CertDuplicateCertificateChain(
      pChainContext,
    );

late final _CertDuplicateCertificateChain = _crypt32.lookupFunction<
    Pointer<CERT_CHAIN_CONTEXT> Function(
  Pointer<CERT_CHAIN_CONTEXT> pChainContext,
),
    Pointer<CERT_CHAIN_CONTEXT> Function(
  Pointer<CERT_CHAIN_CONTEXT> pChainContext,
)>('CertDuplicateCertificateChain');

Pointer<CERT_CONTEXT> CertDuplicateCertificateContext(
  Pointer<CERT_CONTEXT> pCertContext,
) =>
    _CertDuplicateCertificateContext(
      pCertContext,
    );

late final _CertDuplicateCertificateContext = _crypt32.lookupFunction<
    Pointer<CERT_CONTEXT> Function(
  Pointer<CERT_CONTEXT> pCertContext,
),
    Pointer<CERT_CONTEXT> Function(
  Pointer<CERT_CONTEXT> pCertContext,
)>('CertDuplicateCertificateContext');

Pointer CertDuplicateStore(
  Pointer hCertStore,
) =>
    _CertDuplicateStore(
      hCertStore,
    );

late final _CertDuplicateStore = _crypt32.lookupFunction<
    Pointer Function(
  Pointer hCertStore,
),
    Pointer Function(
  Pointer hCertStore,
)>('CertDuplicateStore');

int CertEnumCRLContextProperties(
  Pointer<CRL_CONTEXT> pCrlContext,
  int dwPropId,
) =>
    _CertEnumCRLContextProperties(
      pCrlContext,
      dwPropId,
    );

late final _CertEnumCRLContextProperties = _crypt32.lookupFunction<
    Uint32 Function(
  Pointer<CRL_CONTEXT> pCrlContext,
  Uint32 dwPropId,
),
    int Function(
  Pointer<CRL_CONTEXT> pCrlContext,
  int dwPropId,
)>('CertEnumCRLContextProperties');

Pointer<CRL_CONTEXT> CertEnumCRLsInStore(
  Pointer hCertStore,
  Pointer<CRL_CONTEXT> pPrevCrlContext,
) =>
    _CertEnumCRLsInStore(
      hCertStore,
      pPrevCrlContext,
    );

late final _CertEnumCRLsInStore = _crypt32.lookupFunction<
    Pointer<CRL_CONTEXT> Function(
  Pointer hCertStore,
  Pointer<CRL_CONTEXT> pPrevCrlContext,
),
    Pointer<CRL_CONTEXT> Function(
  Pointer hCertStore,
  Pointer<CRL_CONTEXT> pPrevCrlContext,
)>('CertEnumCRLsInStore');

int CertEnumCTLContextProperties(
  Pointer<CTL_CONTEXT> pCtlContext,
  int dwPropId,
) =>
    _CertEnumCTLContextProperties(
      pCtlContext,
      dwPropId,
    );

late final _CertEnumCTLContextProperties = _crypt32.lookupFunction<
    Uint32 Function(
  Pointer<CTL_CONTEXT> pCtlContext,
  Uint32 dwPropId,
),
    int Function(
  Pointer<CTL_CONTEXT> pCtlContext,
  int dwPropId,
)>('CertEnumCTLContextProperties');

Pointer<CTL_CONTEXT> CertEnumCTLsInStore(
  Pointer hCertStore,
  Pointer<CTL_CONTEXT> pPrevCtlContext,
) =>
    _CertEnumCTLsInStore(
      hCertStore,
      pPrevCtlContext,
    );

late final _CertEnumCTLsInStore = _crypt32.lookupFunction<
    Pointer<CTL_CONTEXT> Function(
  Pointer hCertStore,
  Pointer<CTL_CONTEXT> pPrevCtlContext,
),
    Pointer<CTL_CONTEXT> Function(
  Pointer hCertStore,
  Pointer<CTL_CONTEXT> pPrevCtlContext,
)>('CertEnumCTLsInStore');

int CertEnumCertificateContextProperties(
  Pointer<CERT_CONTEXT> pCertContext,
  int dwPropId,
) =>
    _CertEnumCertificateContextProperties(
      pCertContext,
      dwPropId,
    );

late final _CertEnumCertificateContextProperties = _crypt32.lookupFunction<
    Uint32 Function(
  Pointer<CERT_CONTEXT> pCertContext,
  Uint32 dwPropId,
),
    int Function(
  Pointer<CERT_CONTEXT> pCertContext,
  int dwPropId,
)>('CertEnumCertificateContextProperties');

Pointer<CERT_CONTEXT> CertEnumCertificatesInStore(
  Pointer hCertStore,
  Pointer<CERT_CONTEXT> pPrevCertContext,
) =>
    _CertEnumCertificatesInStore(
      hCertStore,
      pPrevCertContext,
    );

late final _CertEnumCertificatesInStore = _crypt32.lookupFunction<
    Pointer<CERT_CONTEXT> Function(
  Pointer hCertStore,
  Pointer<CERT_CONTEXT> pPrevCertContext,
),
    Pointer<CERT_CONTEXT> Function(
  Pointer hCertStore,
  Pointer<CERT_CONTEXT> pPrevCertContext,
)>('CertEnumCertificatesInStore');

int CertEnumPhysicalStore(
  Pointer pvSystemStore,
  int dwFlags,
  Pointer pvArg,
  Pointer<NativeFunction<PFN_CERT_ENUM_PHYSICAL_STORE>> pfnEnum,
) =>
    _CertEnumPhysicalStore(
      pvSystemStore,
      dwFlags,
      pvArg,
      pfnEnum,
    );

late final _CertEnumPhysicalStore = _crypt32.lookupFunction<
    Int32 Function(
  Pointer pvSystemStore,
  Uint32 dwFlags,
  Pointer pvArg,
  Pointer<NativeFunction<PFN_CERT_ENUM_PHYSICAL_STORE>> pfnEnum,
),
    int Function(
  Pointer pvSystemStore,
  int dwFlags,
  Pointer pvArg,
  Pointer<NativeFunction<PFN_CERT_ENUM_PHYSICAL_STORE>> pfnEnum,
)>('CertEnumPhysicalStore');

int CertEnumSubjectInSortedCTL(
  Pointer<CTL_CONTEXT> pCtlContext,
  Pointer<Pointer> ppvNextSubject,
  Pointer<CRYPTOAPI_BLOB> pSubjectIdentifier,
  Pointer<CRYPTOAPI_BLOB> pEncodedAttributes,
) =>
    _CertEnumSubjectInSortedCTL(
      pCtlContext,
      ppvNextSubject,
      pSubjectIdentifier,
      pEncodedAttributes,
    );

late final _CertEnumSubjectInSortedCTL = _crypt32.lookupFunction<
    Int32 Function(
  Pointer<CTL_CONTEXT> pCtlContext,
  Pointer<Pointer> ppvNextSubject,
  Pointer<CRYPTOAPI_BLOB> pSubjectIdentifier,
  Pointer<CRYPTOAPI_BLOB> pEncodedAttributes,
),
    int Function(
  Pointer<CTL_CONTEXT> pCtlContext,
  Pointer<Pointer> ppvNextSubject,
  Pointer<CRYPTOAPI_BLOB> pSubjectIdentifier,
  Pointer<CRYPTOAPI_BLOB> pEncodedAttributes,
)>('CertEnumSubjectInSortedCTL');

int CertEnumSystemStore(
  int dwFlags,
  Pointer pvSystemStoreLocationPara,
  Pointer pvArg,
  Pointer<NativeFunction<PFN_CERT_ENUM_SYSTEM_STORE>> pfnEnum,
) =>
    _CertEnumSystemStore(
      dwFlags,
      pvSystemStoreLocationPara,
      pvArg,
      pfnEnum,
    );

late final _CertEnumSystemStore = _crypt32.lookupFunction<
    Int32 Function(
  Uint32 dwFlags,
  Pointer pvSystemStoreLocationPara,
  Pointer pvArg,
  Pointer<NativeFunction<PFN_CERT_ENUM_SYSTEM_STORE>> pfnEnum,
),
    int Function(
  int dwFlags,
  Pointer pvSystemStoreLocationPara,
  Pointer pvArg,
  Pointer<NativeFunction<PFN_CERT_ENUM_SYSTEM_STORE>> pfnEnum,
)>('CertEnumSystemStore');

int CertEnumSystemStoreLocation(
  int dwFlags,
  Pointer pvArg,
  Pointer<NativeFunction<PFN_CERT_ENUM_SYSTEM_STORE_LOCATION>> pfnEnum,
) =>
    _CertEnumSystemStoreLocation(
      dwFlags,
      pvArg,
      pfnEnum,
    );

late final _CertEnumSystemStoreLocation = _crypt32.lookupFunction<
    Int32 Function(
  Uint32 dwFlags,
  Pointer pvArg,
  Pointer<NativeFunction<PFN_CERT_ENUM_SYSTEM_STORE_LOCATION>> pfnEnum,
),
    int Function(
  int dwFlags,
  Pointer pvArg,
  Pointer<NativeFunction<PFN_CERT_ENUM_SYSTEM_STORE_LOCATION>> pfnEnum,
)>('CertEnumSystemStoreLocation');

Pointer<CRYPT_ATTRIBUTE> CertFindAttribute(
  Pointer<Utf8> pszObjId,
  int cAttr,
  Pointer<CRYPT_ATTRIBUTE> rgAttr,
) =>
    _CertFindAttribute(
      pszObjId,
      cAttr,
      rgAttr,
    );

late final _CertFindAttribute = _crypt32.lookupFunction<
    Pointer<CRYPT_ATTRIBUTE> Function(
  Pointer<Utf8> pszObjId,
  Uint32 cAttr,
  Pointer<CRYPT_ATTRIBUTE> rgAttr,
),
    Pointer<CRYPT_ATTRIBUTE> Function(
  Pointer<Utf8> pszObjId,
  int cAttr,
  Pointer<CRYPT_ATTRIBUTE> rgAttr,
)>('CertFindAttribute');

Pointer<CRL_CONTEXT> CertFindCRLInStore(
  Pointer hCertStore,
  int dwCertEncodingType,
  int dwFindFlags,
  int dwFindType,
  Pointer pvFindPara,
  Pointer<CRL_CONTEXT> pPrevCrlContext,
) =>
    _CertFindCRLInStore(
      hCertStore,
      dwCertEncodingType,
      dwFindFlags,
      dwFindType,
      pvFindPara,
      pPrevCrlContext,
    );

late final _CertFindCRLInStore = _crypt32.lookupFunction<
    Pointer<CRL_CONTEXT> Function(
  Pointer hCertStore,
  Uint32 dwCertEncodingType,
  Uint32 dwFindFlags,
  Uint32 dwFindType,
  Pointer pvFindPara,
  Pointer<CRL_CONTEXT> pPrevCrlContext,
),
    Pointer<CRL_CONTEXT> Function(
  Pointer hCertStore,
  int dwCertEncodingType,
  int dwFindFlags,
  int dwFindType,
  Pointer pvFindPara,
  Pointer<CRL_CONTEXT> pPrevCrlContext,
)>('CertFindCRLInStore');

Pointer<CTL_CONTEXT> CertFindCTLInStore(
  Pointer hCertStore,
  int dwMsgAndCertEncodingType,
  int dwFindFlags,
  int dwFindType,
  Pointer pvFindPara,
  Pointer<CTL_CONTEXT> pPrevCtlContext,
) =>
    _CertFindCTLInStore(
      hCertStore,
      dwMsgAndCertEncodingType,
      dwFindFlags,
      dwFindType,
      pvFindPara,
      pPrevCtlContext,
    );

late final _CertFindCTLInStore = _crypt32.lookupFunction<
    Pointer<CTL_CONTEXT> Function(
  Pointer hCertStore,
  Uint32 dwMsgAndCertEncodingType,
  Uint32 dwFindFlags,
  Uint32 dwFindType,
  Pointer pvFindPara,
  Pointer<CTL_CONTEXT> pPrevCtlContext,
),
    Pointer<CTL_CONTEXT> Function(
  Pointer hCertStore,
  int dwMsgAndCertEncodingType,
  int dwFindFlags,
  int dwFindType,
  Pointer pvFindPara,
  Pointer<CTL_CONTEXT> pPrevCtlContext,
)>('CertFindCTLInStore');

int CertFindCertificateInCRL(
  Pointer<CERT_CONTEXT> pCert,
  Pointer<CRL_CONTEXT> pCrlContext,
  int dwFlags,
  Pointer pvReserved,
  Pointer<Pointer<CRL_ENTRY>> ppCrlEntry,
) =>
    _CertFindCertificateInCRL(
      pCert,
      pCrlContext,
      dwFlags,
      pvReserved,
      ppCrlEntry,
    );

late final _CertFindCertificateInCRL = _crypt32.lookupFunction<
    Int32 Function(
  Pointer<CERT_CONTEXT> pCert,
  Pointer<CRL_CONTEXT> pCrlContext,
  Uint32 dwFlags,
  Pointer pvReserved,
  Pointer<Pointer<CRL_ENTRY>> ppCrlEntry,
),
    int Function(
  Pointer<CERT_CONTEXT> pCert,
  Pointer<CRL_CONTEXT> pCrlContext,
  int dwFlags,
  Pointer pvReserved,
  Pointer<Pointer<CRL_ENTRY>> ppCrlEntry,
)>('CertFindCertificateInCRL');

Pointer<CERT_CONTEXT> CertFindCertificateInStore(
  Pointer hCertStore,
  int dwCertEncodingType,
  int dwFindFlags,
  int dwFindType,
  Pointer pvFindPara,
  Pointer<CERT_CONTEXT> pPrevCertContext,
) =>
    _CertFindCertificateInStore(
      hCertStore,
      dwCertEncodingType,
      dwFindFlags,
      dwFindType,
      pvFindPara,
      pPrevCertContext,
    );

late final _CertFindCertificateInStore = _crypt32.lookupFunction<
    Pointer<CERT_CONTEXT> Function(
  Pointer hCertStore,
  Uint32 dwCertEncodingType,
  Uint32 dwFindFlags,
  Uint32 dwFindType,
  Pointer pvFindPara,
  Pointer<CERT_CONTEXT> pPrevCertContext,
),
    Pointer<CERT_CONTEXT> Function(
  Pointer hCertStore,
  int dwCertEncodingType,
  int dwFindFlags,
  int dwFindType,
  Pointer pvFindPara,
  Pointer<CERT_CONTEXT> pPrevCertContext,
)>('CertFindCertificateInStore');

Pointer<CERT_CHAIN_CONTEXT> CertFindChainInStore(
  Pointer hCertStore,
  int dwCertEncodingType,
  int dwFindFlags,
  int dwFindType,
  Pointer pvFindPara,
  Pointer<CERT_CHAIN_CONTEXT> pPrevChainContext,
) =>
    _CertFindChainInStore(
      hCertStore,
      dwCertEncodingType,
      dwFindFlags,
      dwFindType,
      pvFindPara,
      pPrevChainContext,
    );

late final _CertFindChainInStore = _crypt32.lookupFunction<
    Pointer<CERT_CHAIN_CONTEXT> Function(
  Pointer hCertStore,
  Uint32 dwCertEncodingType,
  Uint32 dwFindFlags,
  Uint32 dwFindType,
  Pointer pvFindPara,
  Pointer<CERT_CHAIN_CONTEXT> pPrevChainContext,
),
    Pointer<CERT_CHAIN_CONTEXT> Function(
  Pointer hCertStore,
  int dwCertEncodingType,
  int dwFindFlags,
  int dwFindType,
  Pointer pvFindPara,
  Pointer<CERT_CHAIN_CONTEXT> pPrevChainContext,
)>('CertFindChainInStore');

Pointer<CERT_EXTENSION> CertFindExtension(
  Pointer<Utf8> pszObjId,
  int cExtensions,
  Pointer<CERT_EXTENSION> rgExtensions,
) =>
    _CertFindExtension(
      pszObjId,
      cExtensions,
      rgExtensions,
    );

late final _CertFindExtension = _crypt32.lookupFunction<
    Pointer<CERT_EXTENSION> Function(
  Pointer<Utf8> pszObjId,
  Uint32 cExtensions,
  Pointer<CERT_EXTENSION> rgExtensions,
),
    Pointer<CERT_EXTENSION> Function(
  Pointer<Utf8> pszObjId,
  int cExtensions,
  Pointer<CERT_EXTENSION> rgExtensions,
)>('CertFindExtension');

Pointer<CERT_RDN_ATTR> CertFindRDNAttr(
  Pointer<Utf8> pszObjId,
  Pointer<CERT_NAME_INFO> pName,
) =>
    _CertFindRDNAttr(
      pszObjId,
      pName,
    );

late final _CertFindRDNAttr = _crypt32.lookupFunction<
    Pointer<CERT_RDN_ATTR> Function(
  Pointer<Utf8> pszObjId,
  Pointer<CERT_NAME_INFO> pName,
),
    Pointer<CERT_RDN_ATTR> Function(
  Pointer<Utf8> pszObjId,
  Pointer<CERT_NAME_INFO> pName,
)>('CertFindRDNAttr');

Pointer<CTL_ENTRY> CertFindSubjectInCTL(
  int dwEncodingType,
  int dwSubjectType,
  Pointer pvSubject,
  Pointer<CTL_CONTEXT> pCtlContext,
  int dwFlags,
) =>
    _CertFindSubjectInCTL(
      dwEncodingType,
      dwSubjectType,
      pvSubject,
      pCtlContext,
      dwFlags,
    );

late final _CertFindSubjectInCTL = _crypt32.lookupFunction<
    Pointer<CTL_ENTRY> Function(
  Uint32 dwEncodingType,
  Uint32 dwSubjectType,
  Pointer pvSubject,
  Pointer<CTL_CONTEXT> pCtlContext,
  Uint32 dwFlags,
),
    Pointer<CTL_ENTRY> Function(
  int dwEncodingType,
  int dwSubjectType,
  Pointer pvSubject,
  Pointer<CTL_CONTEXT> pCtlContext,
  int dwFlags,
)>('CertFindSubjectInCTL');

int CertFindSubjectInSortedCTL(
  Pointer<CRYPTOAPI_BLOB> pSubjectIdentifier,
  Pointer<CTL_CONTEXT> pCtlContext,
  int dwFlags,
  Pointer pvReserved,
  Pointer<CRYPTOAPI_BLOB> pEncodedAttributes,
) =>
    _CertFindSubjectInSortedCTL(
      pSubjectIdentifier,
      pCtlContext,
      dwFlags,
      pvReserved,
      pEncodedAttributes,
    );

late final _CertFindSubjectInSortedCTL = _crypt32.lookupFunction<
    Int32 Function(
  Pointer<CRYPTOAPI_BLOB> pSubjectIdentifier,
  Pointer<CTL_CONTEXT> pCtlContext,
  Uint32 dwFlags,
  Pointer pvReserved,
  Pointer<CRYPTOAPI_BLOB> pEncodedAttributes,
),
    int Function(
  Pointer<CRYPTOAPI_BLOB> pSubjectIdentifier,
  Pointer<CTL_CONTEXT> pCtlContext,
  int dwFlags,
  Pointer pvReserved,
  Pointer<CRYPTOAPI_BLOB> pEncodedAttributes,
)>('CertFindSubjectInSortedCTL');

int CertFreeCRLContext(
  Pointer<CRL_CONTEXT> pCrlContext,
) =>
    _CertFreeCRLContext(
      pCrlContext,
    );

late final _CertFreeCRLContext = _crypt32.lookupFunction<
    Int32 Function(
  Pointer<CRL_CONTEXT> pCrlContext,
),
    int Function(
  Pointer<CRL_CONTEXT> pCrlContext,
)>('CertFreeCRLContext');

int CertFreeCTLContext(
  Pointer<CTL_CONTEXT> pCtlContext,
) =>
    _CertFreeCTLContext(
      pCtlContext,
    );

late final _CertFreeCTLContext = _crypt32.lookupFunction<
    Int32 Function(
  Pointer<CTL_CONTEXT> pCtlContext,
),
    int Function(
  Pointer<CTL_CONTEXT> pCtlContext,
)>('CertFreeCTLContext');

void CertFreeCertificateChain(
  Pointer<CERT_CHAIN_CONTEXT> pChainContext,
) =>
    _CertFreeCertificateChain(
      pChainContext,
    );

late final _CertFreeCertificateChain = _crypt32.lookupFunction<
    Void Function(
  Pointer<CERT_CHAIN_CONTEXT> pChainContext,
),
    void Function(
  Pointer<CERT_CHAIN_CONTEXT> pChainContext,
)>('CertFreeCertificateChain');

void CertFreeCertificateChainEngine(
  int hChainEngine,
) =>
    _CertFreeCertificateChainEngine(
      hChainEngine,
    );

late final _CertFreeCertificateChainEngine = _crypt32.lookupFunction<
    Void Function(
  IntPtr hChainEngine,
),
    void Function(
  int hChainEngine,
)>('CertFreeCertificateChainEngine');

void CertFreeCertificateChainList(
  Pointer<Pointer<CERT_CHAIN_CONTEXT>> prgpSelection,
) =>
    _CertFreeCertificateChainList(
      prgpSelection,
    );

late final _CertFreeCertificateChainList = _crypt32.lookupFunction<
    Void Function(
  Pointer<Pointer<CERT_CHAIN_CONTEXT>> prgpSelection,
),
    void Function(
  Pointer<Pointer<CERT_CHAIN_CONTEXT>> prgpSelection,
)>('CertFreeCertificateChainList');

int CertFreeCertificateContext(
  Pointer<CERT_CONTEXT> pCertContext,
) =>
    _CertFreeCertificateContext(
      pCertContext,
    );

late final _CertFreeCertificateContext = _crypt32.lookupFunction<
    Int32 Function(
  Pointer<CERT_CONTEXT> pCertContext,
),
    int Function(
  Pointer<CERT_CONTEXT> pCertContext,
)>('CertFreeCertificateContext');

void CertFreeServerOcspResponseContext(
  Pointer<CERT_SERVER_OCSP_RESPONSE_CONTEXT> pServerOcspResponseContext,
) =>
    _CertFreeServerOcspResponseContext(
      pServerOcspResponseContext,
    );

late final _CertFreeServerOcspResponseContext = _crypt32.lookupFunction<
    Void Function(
  Pointer<CERT_SERVER_OCSP_RESPONSE_CONTEXT> pServerOcspResponseContext,
),
    void Function(
  Pointer<CERT_SERVER_OCSP_RESPONSE_CONTEXT> pServerOcspResponseContext,
)>('CertFreeServerOcspResponseContext');

int CertGetCRLContextProperty(
  Pointer<CRL_CONTEXT> pCrlContext,
  int dwPropId,
  Pointer pvData,
  Pointer<Uint32> pcbData,
) =>
    _CertGetCRLContextProperty(
      pCrlContext,
      dwPropId,
      pvData,
      pcbData,
    );

late final _CertGetCRLContextProperty = _crypt32.lookupFunction<
    Int32 Function(
  Pointer<CRL_CONTEXT> pCrlContext,
  Uint32 dwPropId,
  Pointer pvData,
  Pointer<Uint32> pcbData,
),
    int Function(
  Pointer<CRL_CONTEXT> pCrlContext,
  int dwPropId,
  Pointer pvData,
  Pointer<Uint32> pcbData,
)>('CertGetCRLContextProperty');

Pointer<CRL_CONTEXT> CertGetCRLFromStore(
  Pointer hCertStore,
  Pointer<CERT_CONTEXT> pIssuerContext,
  Pointer<CRL_CONTEXT> pPrevCrlContext,
  Pointer<Uint32> pdwFlags,
) =>
    _CertGetCRLFromStore(
      hCertStore,
      pIssuerContext,
      pPrevCrlContext,
      pdwFlags,
    );

late final _CertGetCRLFromStore = _crypt32.lookupFunction<
    Pointer<CRL_CONTEXT> Function(
  Pointer hCertStore,
  Pointer<CERT_CONTEXT> pIssuerContext,
  Pointer<CRL_CONTEXT> pPrevCrlContext,
  Pointer<Uint32> pdwFlags,
),
    Pointer<CRL_CONTEXT> Function(
  Pointer hCertStore,
  Pointer<CERT_CONTEXT> pIssuerContext,
  Pointer<CRL_CONTEXT> pPrevCrlContext,
  Pointer<Uint32> pdwFlags,
)>('CertGetCRLFromStore');

int CertGetCTLContextProperty(
  Pointer<CTL_CONTEXT> pCtlContext,
  int dwPropId,
  Pointer pvData,
  Pointer<Uint32> pcbData,
) =>
    _CertGetCTLContextProperty(
      pCtlContext,
      dwPropId,
      pvData,
      pcbData,
    );

late final _CertGetCTLContextProperty = _crypt32.lookupFunction<
    Int32 Function(
  Pointer<CTL_CONTEXT> pCtlContext,
  Uint32 dwPropId,
  Pointer pvData,
  Pointer<Uint32> pcbData,
),
    int Function(
  Pointer<CTL_CONTEXT> pCtlContext,
  int dwPropId,
  Pointer pvData,
  Pointer<Uint32> pcbData,
)>('CertGetCTLContextProperty');

int CertGetCertificateChain(
  int hChainEngine,
  Pointer<CERT_CONTEXT> pCertContext,
  Pointer<FILETIME> pTime,
  Pointer hAdditionalStore,
  Pointer<CERT_CHAIN_PARA> pChainPara,
  int dwFlags,
  Pointer pvReserved,
  Pointer<Pointer<CERT_CHAIN_CONTEXT>> ppChainContext,
) =>
    _CertGetCertificateChain(
      hChainEngine,
      pCertContext,
      pTime,
      hAdditionalStore,
      pChainPara,
      dwFlags,
      pvReserved,
      ppChainContext,
    );

late final _CertGetCertificateChain = _crypt32.lookupFunction<
    Int32 Function(
  IntPtr hChainEngine,
  Pointer<CERT_CONTEXT> pCertContext,
  Pointer<FILETIME> pTime,
  Pointer hAdditionalStore,
  Pointer<CERT_CHAIN_PARA> pChainPara,
  Uint32 dwFlags,
  Pointer pvReserved,
  Pointer<Pointer<CERT_CHAIN_CONTEXT>> ppChainContext,
),
    int Function(
  int hChainEngine,
  Pointer<CERT_CONTEXT> pCertContext,
  Pointer<FILETIME> pTime,
  Pointer hAdditionalStore,
  Pointer<CERT_CHAIN_PARA> pChainPara,
  int dwFlags,
  Pointer pvReserved,
  Pointer<Pointer<CERT_CHAIN_CONTEXT>> ppChainContext,
)>('CertGetCertificateChain');

int CertGetCertificateContextProperty(
  Pointer<CERT_CONTEXT> pCertContext,
  int dwPropId,
  Pointer pvData,
  Pointer<Uint32> pcbData,
) =>
    _CertGetCertificateContextProperty(
      pCertContext,
      dwPropId,
      pvData,
      pcbData,
    );

late final _CertGetCertificateContextProperty = _crypt32.lookupFunction<
    Int32 Function(
  Pointer<CERT_CONTEXT> pCertContext,
  Uint32 dwPropId,
  Pointer pvData,
  Pointer<Uint32> pcbData,
),
    int Function(
  Pointer<CERT_CONTEXT> pCertContext,
  int dwPropId,
  Pointer pvData,
  Pointer<Uint32> pcbData,
)>('CertGetCertificateContextProperty');

int CertGetEnhancedKeyUsage(
  Pointer<CERT_CONTEXT> pCertContext,
  int dwFlags,
  Pointer<CTL_USAGE> pUsage,
  Pointer<Uint32> pcbUsage,
) =>
    _CertGetEnhancedKeyUsage(
      pCertContext,
      dwFlags,
      pUsage,
      pcbUsage,
    );

late final _CertGetEnhancedKeyUsage = _crypt32.lookupFunction<
    Int32 Function(
  Pointer<CERT_CONTEXT> pCertContext,
  Uint32 dwFlags,
  Pointer<CTL_USAGE> pUsage,
  Pointer<Uint32> pcbUsage,
),
    int Function(
  Pointer<CERT_CONTEXT> pCertContext,
  int dwFlags,
  Pointer<CTL_USAGE> pUsage,
  Pointer<Uint32> pcbUsage,
)>('CertGetEnhancedKeyUsage');

int CertGetIntendedKeyUsage(
  int dwCertEncodingType,
  Pointer<CERT_INFO> pCertInfo,
  Pointer<Uint8> pbKeyUsage,
  int cbKeyUsage,
) =>
    _CertGetIntendedKeyUsage(
      dwCertEncodingType,
      pCertInfo,
      pbKeyUsage,
      cbKeyUsage,
    );

late final _CertGetIntendedKeyUsage = _crypt32.lookupFunction<
    Int32 Function(
  Uint32 dwCertEncodingType,
  Pointer<CERT_INFO> pCertInfo,
  Pointer<Uint8> pbKeyUsage,
  Uint32 cbKeyUsage,
),
    int Function(
  int dwCertEncodingType,
  Pointer<CERT_INFO> pCertInfo,
  Pointer<Uint8> pbKeyUsage,
  int cbKeyUsage,
)>('CertGetIntendedKeyUsage');

Pointer<CERT_CONTEXT> CertGetIssuerCertificateFromStore(
  Pointer hCertStore,
  Pointer<CERT_CONTEXT> pSubjectContext,
  Pointer<CERT_CONTEXT> pPrevIssuerContext,
  Pointer<Uint32> pdwFlags,
) =>
    _CertGetIssuerCertificateFromStore(
      hCertStore,
      pSubjectContext,
      pPrevIssuerContext,
      pdwFlags,
    );

late final _CertGetIssuerCertificateFromStore = _crypt32.lookupFunction<
    Pointer<CERT_CONTEXT> Function(
  Pointer hCertStore,
  Pointer<CERT_CONTEXT> pSubjectContext,
  Pointer<CERT_CONTEXT> pPrevIssuerContext,
  Pointer<Uint32> pdwFlags,
),
    Pointer<CERT_CONTEXT> Function(
  Pointer hCertStore,
  Pointer<CERT_CONTEXT> pSubjectContext,
  Pointer<CERT_CONTEXT> pPrevIssuerContext,
  Pointer<Uint32> pdwFlags,
)>('CertGetIssuerCertificateFromStore');

int CertGetNameString(
  Pointer<CERT_CONTEXT> pCertContext,
  int dwType,
  int dwFlags,
  Pointer pvTypePara,
  Pointer<Utf16> pszNameString,
  int cchNameString,
) =>
    _CertGetNameString(
      pCertContext,
      dwType,
      dwFlags,
      pvTypePara,
      pszNameString,
      cchNameString,
    );

late final _CertGetNameString = _crypt32.lookupFunction<
    Uint32 Function(
  Pointer<CERT_CONTEXT> pCertContext,
  Uint32 dwType,
  Uint32 dwFlags,
  Pointer pvTypePara,
  Pointer<Utf16> pszNameString,
  Uint32 cchNameString,
),
    int Function(
  Pointer<CERT_CONTEXT> pCertContext,
  int dwType,
  int dwFlags,
  Pointer pvTypePara,
  Pointer<Utf16> pszNameString,
  int cchNameString,
)>('CertGetNameStringW');

int CertGetPublicKeyLength(
  int dwCertEncodingType,
  Pointer<CERT_PUBLIC_KEY_INFO> pPublicKey,
) =>
    _CertGetPublicKeyLength(
      dwCertEncodingType,
      pPublicKey,
    );

late final _CertGetPublicKeyLength = _crypt32.lookupFunction<
    Uint32 Function(
  Uint32 dwCertEncodingType,
  Pointer<CERT_PUBLIC_KEY_INFO> pPublicKey,
),
    int Function(
  int dwCertEncodingType,
  Pointer<CERT_PUBLIC_KEY_INFO> pPublicKey,
)>('CertGetPublicKeyLength');

Pointer<CERT_SERVER_OCSP_RESPONSE_CONTEXT> CertGetServerOcspResponseContext(
  Pointer hServerOcspResponse,
  int dwFlags,
  Pointer pvReserved,
) =>
    _CertGetServerOcspResponseContext(
      hServerOcspResponse,
      dwFlags,
      pvReserved,
    );

late final _CertGetServerOcspResponseContext = _crypt32.lookupFunction<
    Pointer<CERT_SERVER_OCSP_RESPONSE_CONTEXT> Function(
  Pointer hServerOcspResponse,
  Uint32 dwFlags,
  Pointer pvReserved,
),
    Pointer<CERT_SERVER_OCSP_RESPONSE_CONTEXT> Function(
  Pointer hServerOcspResponse,
  int dwFlags,
  Pointer pvReserved,
)>('CertGetServerOcspResponseContext');

int CertGetStoreProperty(
  Pointer hCertStore,
  int dwPropId,
  Pointer pvData,
  Pointer<Uint32> pcbData,
) =>
    _CertGetStoreProperty(
      hCertStore,
      dwPropId,
      pvData,
      pcbData,
    );

late final _CertGetStoreProperty = _crypt32.lookupFunction<
    Int32 Function(
  Pointer hCertStore,
  Uint32 dwPropId,
  Pointer pvData,
  Pointer<Uint32> pcbData,
),
    int Function(
  Pointer hCertStore,
  int dwPropId,
  Pointer pvData,
  Pointer<Uint32> pcbData,
)>('CertGetStoreProperty');

Pointer<CERT_CONTEXT> CertGetSubjectCertificateFromStore(
  Pointer hCertStore,
  int dwCertEncodingType,
  Pointer<CERT_INFO> pCertId,
) =>
    _CertGetSubjectCertificateFromStore(
      hCertStore,
      dwCertEncodingType,
      pCertId,
    );

late final _CertGetSubjectCertificateFromStore = _crypt32.lookupFunction<
    Pointer<CERT_CONTEXT> Function(
  Pointer hCertStore,
  Uint32 dwCertEncodingType,
  Pointer<CERT_INFO> pCertId,
),
    Pointer<CERT_CONTEXT> Function(
  Pointer hCertStore,
  int dwCertEncodingType,
  Pointer<CERT_INFO> pCertId,
)>('CertGetSubjectCertificateFromStore');

int CertGetValidUsages(
  int cCerts,
  Pointer<Pointer<CERT_CONTEXT>> rghCerts,
  Pointer<Int32> cNumOIDs,
  Pointer<Pointer<Utf8>> rghOIDs,
  Pointer<Uint32> pcbOIDs,
) =>
    _CertGetValidUsages(
      cCerts,
      rghCerts,
      cNumOIDs,
      rghOIDs,
      pcbOIDs,
    );

late final _CertGetValidUsages = _crypt32.lookupFunction<
    Int32 Function(
  Uint32 cCerts,
  Pointer<Pointer<CERT_CONTEXT>> rghCerts,
  Pointer<Int32> cNumOIDs,
  Pointer<Pointer<Utf8>> rghOIDs,
  Pointer<Uint32> pcbOIDs,
),
    int Function(
  int cCerts,
  Pointer<Pointer<CERT_CONTEXT>> rghCerts,
  Pointer<Int32> cNumOIDs,
  Pointer<Pointer<Utf8>> rghOIDs,
  Pointer<Uint32> pcbOIDs,
)>('CertGetValidUsages');

int CertIsRDNAttrsInCertificateName(
  int dwCertEncodingType,
  int dwFlags,
  Pointer<CRYPTOAPI_BLOB> pCertName,
  Pointer<CERT_RDN> pRDN,
) =>
    _CertIsRDNAttrsInCertificateName(
      dwCertEncodingType,
      dwFlags,
      pCertName,
      pRDN,
    );

late final _CertIsRDNAttrsInCertificateName = _crypt32.lookupFunction<
    Int32 Function(
  Uint32 dwCertEncodingType,
  Uint32 dwFlags,
  Pointer<CRYPTOAPI_BLOB> pCertName,
  Pointer<CERT_RDN> pRDN,
),
    int Function(
  int dwCertEncodingType,
  int dwFlags,
  Pointer<CRYPTOAPI_BLOB> pCertName,
  Pointer<CERT_RDN> pRDN,
)>('CertIsRDNAttrsInCertificateName');

int CertIsStrongHashToSign(
  Pointer<CERT_STRONG_SIGN_PARA> pStrongSignPara,
  Pointer<Utf16> pwszCNGHashAlgid,
  Pointer<CERT_CONTEXT> pSigningCert,
) =>
    _CertIsStrongHashToSign(
      pStrongSignPara,
      pwszCNGHashAlgid,
      pSigningCert,
    );

late final _CertIsStrongHashToSign = _crypt32.lookupFunction<
    Int32 Function(
  Pointer<CERT_STRONG_SIGN_PARA> pStrongSignPara,
  Pointer<Utf16> pwszCNGHashAlgid,
  Pointer<CERT_CONTEXT> pSigningCert,
),
    int Function(
  Pointer<CERT_STRONG_SIGN_PARA> pStrongSignPara,
  Pointer<Utf16> pwszCNGHashAlgid,
  Pointer<CERT_CONTEXT> pSigningCert,
)>('CertIsStrongHashToSign');

int CertIsValidCRLForCertificate(
  Pointer<CERT_CONTEXT> pCert,
  Pointer<CRL_CONTEXT> pCrl,
  int dwFlags,
  Pointer pvReserved,
) =>
    _CertIsValidCRLForCertificate(
      pCert,
      pCrl,
      dwFlags,
      pvReserved,
    );

late final _CertIsValidCRLForCertificate = _crypt32.lookupFunction<
    Int32 Function(
  Pointer<CERT_CONTEXT> pCert,
  Pointer<CRL_CONTEXT> pCrl,
  Uint32 dwFlags,
  Pointer pvReserved,
),
    int Function(
  Pointer<CERT_CONTEXT> pCert,
  Pointer<CRL_CONTEXT> pCrl,
  int dwFlags,
  Pointer pvReserved,
)>('CertIsValidCRLForCertificate');

int CertIsWeakHash(
  int dwHashUseType,
  Pointer<Utf16> pwszCNGHashAlgid,
  int dwChainFlags,
  Pointer<CERT_CHAIN_CONTEXT> pSignerChainContext,
  Pointer<FILETIME> pTimeStamp,
  Pointer<Utf16> pwszFileName,
) =>
    _CertIsWeakHash(
      dwHashUseType,
      pwszCNGHashAlgid,
      dwChainFlags,
      pSignerChainContext,
      pTimeStamp,
      pwszFileName,
    );

late final _CertIsWeakHash = _crypt32.lookupFunction<
    Int32 Function(
  Uint32 dwHashUseType,
  Pointer<Utf16> pwszCNGHashAlgid,
  Uint32 dwChainFlags,
  Pointer<CERT_CHAIN_CONTEXT> pSignerChainContext,
  Pointer<FILETIME> pTimeStamp,
  Pointer<Utf16> pwszFileName,
),
    int Function(
  int dwHashUseType,
  Pointer<Utf16> pwszCNGHashAlgid,
  int dwChainFlags,
  Pointer<CERT_CHAIN_CONTEXT> pSignerChainContext,
  Pointer<FILETIME> pTimeStamp,
  Pointer<Utf16> pwszFileName,
)>('CertIsWeakHash');

int CertNameToStr(
  int dwCertEncodingType,
  Pointer<CRYPTOAPI_BLOB> pName,
  int dwStrType,
  Pointer<Utf16> psz,
  int csz,
) =>
    _CertNameToStr(
      dwCertEncodingType,
      pName,
      dwStrType,
      psz,
      csz,
    );

late final _CertNameToStr = _crypt32.lookupFunction<
    Uint32 Function(
  Uint32 dwCertEncodingType,
  Pointer<CRYPTOAPI_BLOB> pName,
  Uint32 dwStrType,
  Pointer<Utf16> psz,
  Uint32 csz,
),
    int Function(
  int dwCertEncodingType,
  Pointer<CRYPTOAPI_BLOB> pName,
  int dwStrType,
  Pointer<Utf16> psz,
  int csz,
)>('CertNameToStrW');

int CertOIDToAlgId(
  Pointer<Utf8> pszObjId,
) =>
    _CertOIDToAlgId(
      pszObjId,
    );

late final _CertOIDToAlgId = _crypt32.lookupFunction<
    Uint32 Function(
  Pointer<Utf8> pszObjId,
),
    int Function(
  Pointer<Utf8> pszObjId,
)>('CertOIDToAlgId');

Pointer CertOpenServerOcspResponse(
  Pointer<CERT_CHAIN_CONTEXT> pChainContext,
  int dwFlags,
  Pointer<CERT_SERVER_OCSP_RESPONSE_OPEN_PARA> pOpenPara,
) =>
    _CertOpenServerOcspResponse(
      pChainContext,
      dwFlags,
      pOpenPara,
    );

late final _CertOpenServerOcspResponse = _crypt32.lookupFunction<
    Pointer Function(
  Pointer<CERT_CHAIN_CONTEXT> pChainContext,
  Uint32 dwFlags,
  Pointer<CERT_SERVER_OCSP_RESPONSE_OPEN_PARA> pOpenPara,
),
    Pointer Function(
  Pointer<CERT_CHAIN_CONTEXT> pChainContext,
  int dwFlags,
  Pointer<CERT_SERVER_OCSP_RESPONSE_OPEN_PARA> pOpenPara,
)>('CertOpenServerOcspResponse');

Pointer CertOpenStore(
  Pointer<Utf8> lpszStoreProvider,
  int dwEncodingType,
  int hCryptProv,
  int dwFlags,
  Pointer pvPara,
) =>
    _CertOpenStore(
      lpszStoreProvider,
      dwEncodingType,
      hCryptProv,
      dwFlags,
      pvPara,
    );

late final _CertOpenStore = _crypt32.lookupFunction<
    Pointer Function(
  Pointer<Utf8> lpszStoreProvider,
  Uint32 dwEncodingType,
  IntPtr hCryptProv,
  Uint32 dwFlags,
  Pointer pvPara,
),
    Pointer Function(
  Pointer<Utf8> lpszStoreProvider,
  int dwEncodingType,
  int hCryptProv,
  int dwFlags,
  Pointer pvPara,
)>('CertOpenStore');

Pointer CertOpenSystemStore(
  int hProv,
  Pointer<Utf16> szSubsystemProtocol,
) =>
    _CertOpenSystemStore(
      hProv,
      szSubsystemProtocol,
    );

late final _CertOpenSystemStore = _crypt32.lookupFunction<
    Pointer Function(
  IntPtr hProv,
  Pointer<Utf16> szSubsystemProtocol,
),
    Pointer Function(
  int hProv,
  Pointer<Utf16> szSubsystemProtocol,
)>('CertOpenSystemStoreW');

int CertRDNValueToStr(
  int dwValueType,
  Pointer<CRYPTOAPI_BLOB> pValue,
  Pointer<Utf16> psz,
  int csz,
) =>
    _CertRDNValueToStr(
      dwValueType,
      pValue,
      psz,
      csz,
    );

late final _CertRDNValueToStr = _crypt32.lookupFunction<
    Uint32 Function(
  Uint32 dwValueType,
  Pointer<CRYPTOAPI_BLOB> pValue,
  Pointer<Utf16> psz,
  Uint32 csz,
),
    int Function(
  int dwValueType,
  Pointer<CRYPTOAPI_BLOB> pValue,
  Pointer<Utf16> psz,
  int csz,
)>('CertRDNValueToStrW');

int CertRegisterPhysicalStore(
  Pointer pvSystemStore,
  int dwFlags,
  Pointer<Utf16> pwszStoreName,
  Pointer<CERT_PHYSICAL_STORE_INFO> pStoreInfo,
  Pointer pvReserved,
) =>
    _CertRegisterPhysicalStore(
      pvSystemStore,
      dwFlags,
      pwszStoreName,
      pStoreInfo,
      pvReserved,
    );

late final _CertRegisterPhysicalStore = _crypt32.lookupFunction<
    Int32 Function(
  Pointer pvSystemStore,
  Uint32 dwFlags,
  Pointer<Utf16> pwszStoreName,
  Pointer<CERT_PHYSICAL_STORE_INFO> pStoreInfo,
  Pointer pvReserved,
),
    int Function(
  Pointer pvSystemStore,
  int dwFlags,
  Pointer<Utf16> pwszStoreName,
  Pointer<CERT_PHYSICAL_STORE_INFO> pStoreInfo,
  Pointer pvReserved,
)>('CertRegisterPhysicalStore');

int CertRegisterSystemStore(
  Pointer pvSystemStore,
  int dwFlags,
  Pointer<CERT_SYSTEM_STORE_INFO> pStoreInfo,
  Pointer pvReserved,
) =>
    _CertRegisterSystemStore(
      pvSystemStore,
      dwFlags,
      pStoreInfo,
      pvReserved,
    );

late final _CertRegisterSystemStore = _crypt32.lookupFunction<
    Int32 Function(
  Pointer pvSystemStore,
  Uint32 dwFlags,
  Pointer<CERT_SYSTEM_STORE_INFO> pStoreInfo,
  Pointer pvReserved,
),
    int Function(
  Pointer pvSystemStore,
  int dwFlags,
  Pointer<CERT_SYSTEM_STORE_INFO> pStoreInfo,
  Pointer pvReserved,
)>('CertRegisterSystemStore');

int CertRemoveEnhancedKeyUsageIdentifier(
  Pointer<CERT_CONTEXT> pCertContext,
  Pointer<Utf8> pszUsageIdentifier,
) =>
    _CertRemoveEnhancedKeyUsageIdentifier(
      pCertContext,
      pszUsageIdentifier,
    );

late final _CertRemoveEnhancedKeyUsageIdentifier = _crypt32.lookupFunction<
    Int32 Function(
  Pointer<CERT_CONTEXT> pCertContext,
  Pointer<Utf8> pszUsageIdentifier,
),
    int Function(
  Pointer<CERT_CONTEXT> pCertContext,
  Pointer<Utf8> pszUsageIdentifier,
)>('CertRemoveEnhancedKeyUsageIdentifier');

void CertRemoveStoreFromCollection(
  Pointer hCollectionStore,
  Pointer hSiblingStore,
) =>
    _CertRemoveStoreFromCollection(
      hCollectionStore,
      hSiblingStore,
    );

late final _CertRemoveStoreFromCollection = _crypt32.lookupFunction<
    Void Function(
  Pointer hCollectionStore,
  Pointer hSiblingStore,
),
    void Function(
  Pointer hCollectionStore,
  Pointer hSiblingStore,
)>('CertRemoveStoreFromCollection');

int CertResyncCertificateChainEngine(
  int hChainEngine,
) =>
    _CertResyncCertificateChainEngine(
      hChainEngine,
    );

late final _CertResyncCertificateChainEngine = _crypt32.lookupFunction<
    Int32 Function(
  IntPtr hChainEngine,
),
    int Function(
  int hChainEngine,
)>('CertResyncCertificateChainEngine');

int CertRetrieveLogoOrBiometricInfo(
  Pointer<CERT_CONTEXT> pCertContext,
  Pointer<Utf8> lpszLogoOrBiometricType,
  int dwRetrievalFlags,
  int dwTimeout,
  int dwFlags,
  Pointer pvReserved,
  Pointer<Pointer<Uint8>> ppbData,
  Pointer<Uint32> pcbData,
  Pointer<Pointer<Utf16>> ppwszMimeType,
) =>
    _CertRetrieveLogoOrBiometricInfo(
      pCertContext,
      lpszLogoOrBiometricType,
      dwRetrievalFlags,
      dwTimeout,
      dwFlags,
      pvReserved,
      ppbData,
      pcbData,
      ppwszMimeType,
    );

late final _CertRetrieveLogoOrBiometricInfo = _crypt32.lookupFunction<
    Int32 Function(
  Pointer<CERT_CONTEXT> pCertContext,
  Pointer<Utf8> lpszLogoOrBiometricType,
  Uint32 dwRetrievalFlags,
  Uint32 dwTimeout,
  Uint32 dwFlags,
  Pointer pvReserved,
  Pointer<Pointer<Uint8>> ppbData,
  Pointer<Uint32> pcbData,
  Pointer<Pointer<Utf16>> ppwszMimeType,
),
    int Function(
  Pointer<CERT_CONTEXT> pCertContext,
  Pointer<Utf8> lpszLogoOrBiometricType,
  int dwRetrievalFlags,
  int dwTimeout,
  int dwFlags,
  Pointer pvReserved,
  Pointer<Pointer<Uint8>> ppbData,
  Pointer<Uint32> pcbData,
  Pointer<Pointer<Utf16>> ppwszMimeType,
)>('CertRetrieveLogoOrBiometricInfo');

int CertSaveStore(
  Pointer hCertStore,
  int dwEncodingType,
  int dwSaveAs,
  int dwSaveTo,
  Pointer pvSaveToPara,
  int dwFlags,
) =>
    _CertSaveStore(
      hCertStore,
      dwEncodingType,
      dwSaveAs,
      dwSaveTo,
      pvSaveToPara,
      dwFlags,
    );

late final _CertSaveStore = _crypt32.lookupFunction<
    Int32 Function(
  Pointer hCertStore,
  Uint32 dwEncodingType,
  Uint32 dwSaveAs,
  Uint32 dwSaveTo,
  Pointer pvSaveToPara,
  Uint32 dwFlags,
),
    int Function(
  Pointer hCertStore,
  int dwEncodingType,
  int dwSaveAs,
  int dwSaveTo,
  Pointer pvSaveToPara,
  int dwFlags,
)>('CertSaveStore');

int CertSelectCertificateChains(
  Pointer<GUID> pSelectionContext,
  int dwFlags,
  Pointer<CERT_SELECT_CHAIN_PARA> pChainParameters,
  int cCriteria,
  Pointer<CERT_SELECT_CRITERIA> rgpCriteria,
  Pointer hStore,
  Pointer<Uint32> pcSelection,
  Pointer<Pointer<Pointer<CERT_CHAIN_CONTEXT>>> pprgpSelection,
) =>
    _CertSelectCertificateChains(
      pSelectionContext,
      dwFlags,
      pChainParameters,
      cCriteria,
      rgpCriteria,
      hStore,
      pcSelection,
      pprgpSelection,
    );

late final _CertSelectCertificateChains = _crypt32.lookupFunction<
    Int32 Function(
  Pointer<GUID> pSelectionContext,
  Uint32 dwFlags,
  Pointer<CERT_SELECT_CHAIN_PARA> pChainParameters,
  Uint32 cCriteria,
  Pointer<CERT_SELECT_CRITERIA> rgpCriteria,
  Pointer hStore,
  Pointer<Uint32> pcSelection,
  Pointer<Pointer<Pointer<CERT_CHAIN_CONTEXT>>> pprgpSelection,
),
    int Function(
  Pointer<GUID> pSelectionContext,
  int dwFlags,
  Pointer<CERT_SELECT_CHAIN_PARA> pChainParameters,
  int cCriteria,
  Pointer<CERT_SELECT_CRITERIA> rgpCriteria,
  Pointer hStore,
  Pointer<Uint32> pcSelection,
  Pointer<Pointer<Pointer<CERT_CHAIN_CONTEXT>>> pprgpSelection,
)>('CertSelectCertificateChains');

int CertSerializeCRLStoreElement(
  Pointer<CRL_CONTEXT> pCrlContext,
  int dwFlags,
  Pointer<Uint8> pbElement,
  Pointer<Uint32> pcbElement,
) =>
    _CertSerializeCRLStoreElement(
      pCrlContext,
      dwFlags,
      pbElement,
      pcbElement,
    );

late final _CertSerializeCRLStoreElement = _crypt32.lookupFunction<
    Int32 Function(
  Pointer<CRL_CONTEXT> pCrlContext,
  Uint32 dwFlags,
  Pointer<Uint8> pbElement,
  Pointer<Uint32> pcbElement,
),
    int Function(
  Pointer<CRL_CONTEXT> pCrlContext,
  int dwFlags,
  Pointer<Uint8> pbElement,
  Pointer<Uint32> pcbElement,
)>('CertSerializeCRLStoreElement');

int CertSerializeCTLStoreElement(
  Pointer<CTL_CONTEXT> pCtlContext,
  int dwFlags,
  Pointer<Uint8> pbElement,
  Pointer<Uint32> pcbElement,
) =>
    _CertSerializeCTLStoreElement(
      pCtlContext,
      dwFlags,
      pbElement,
      pcbElement,
    );

late final _CertSerializeCTLStoreElement = _crypt32.lookupFunction<
    Int32 Function(
  Pointer<CTL_CONTEXT> pCtlContext,
  Uint32 dwFlags,
  Pointer<Uint8> pbElement,
  Pointer<Uint32> pcbElement,
),
    int Function(
  Pointer<CTL_CONTEXT> pCtlContext,
  int dwFlags,
  Pointer<Uint8> pbElement,
  Pointer<Uint32> pcbElement,
)>('CertSerializeCTLStoreElement');

int CertSerializeCertificateStoreElement(
  Pointer<CERT_CONTEXT> pCertContext,
  int dwFlags,
  Pointer<Uint8> pbElement,
  Pointer<Uint32> pcbElement,
) =>
    _CertSerializeCertificateStoreElement(
      pCertContext,
      dwFlags,
      pbElement,
      pcbElement,
    );

late final _CertSerializeCertificateStoreElement = _crypt32.lookupFunction<
    Int32 Function(
  Pointer<CERT_CONTEXT> pCertContext,
  Uint32 dwFlags,
  Pointer<Uint8> pbElement,
  Pointer<Uint32> pcbElement,
),
    int Function(
  Pointer<CERT_CONTEXT> pCertContext,
  int dwFlags,
  Pointer<Uint8> pbElement,
  Pointer<Uint32> pcbElement,
)>('CertSerializeCertificateStoreElement');

int CertSetCRLContextProperty(
  Pointer<CRL_CONTEXT> pCrlContext,
  int dwPropId,
  int dwFlags,
  Pointer pvData,
) =>
    _CertSetCRLContextProperty(
      pCrlContext,
      dwPropId,
      dwFlags,
      pvData,
    );

late final _CertSetCRLContextProperty = _crypt32.lookupFunction<
    Int32 Function(
  Pointer<CRL_CONTEXT> pCrlContext,
  Uint32 dwPropId,
  Uint32 dwFlags,
  Pointer pvData,
),
    int Function(
  Pointer<CRL_CONTEXT> pCrlContext,
  int dwPropId,
  int dwFlags,
  Pointer pvData,
)>('CertSetCRLContextProperty');

int CertSetCTLContextProperty(
  Pointer<CTL_CONTEXT> pCtlContext,
  int dwPropId,
  int dwFlags,
  Pointer pvData,
) =>
    _CertSetCTLContextProperty(
      pCtlContext,
      dwPropId,
      dwFlags,
      pvData,
    );

late final _CertSetCTLContextProperty = _crypt32.lookupFunction<
    Int32 Function(
  Pointer<CTL_CONTEXT> pCtlContext,
  Uint32 dwPropId,
  Uint32 dwFlags,
  Pointer pvData,
),
    int Function(
  Pointer<CTL_CONTEXT> pCtlContext,
  int dwPropId,
  int dwFlags,
  Pointer pvData,
)>('CertSetCTLContextProperty');

int CertSetCertificateContextPropertiesFromCTLEntry(
  Pointer<CERT_CONTEXT> pCertContext,
  Pointer<CTL_ENTRY> pCtlEntry,
  int dwFlags,
) =>
    _CertSetCertificateContextPropertiesFromCTLEntry(
      pCertContext,
      pCtlEntry,
      dwFlags,
    );

late final _CertSetCertificateContextPropertiesFromCTLEntry =
    _crypt32.lookupFunction<
        Int32 Function(
  Pointer<CERT_CONTEXT> pCertContext,
  Pointer<CTL_ENTRY> pCtlEntry,
  Uint32 dwFlags,
),
        int Function(
  Pointer<CERT_CONTEXT> pCertContext,
  Pointer<CTL_ENTRY> pCtlEntry,
  int dwFlags,
)>('CertSetCertificateContextPropertiesFromCTLEntry');

int CertSetCertificateContextProperty(
  Pointer<CERT_CONTEXT> pCertContext,
  int dwPropId,
  int dwFlags,
  Pointer pvData,
) =>
    _CertSetCertificateContextProperty(
      pCertContext,
      dwPropId,
      dwFlags,
      pvData,
    );

late final _CertSetCertificateContextProperty = _crypt32.lookupFunction<
    Int32 Function(
  Pointer<CERT_CONTEXT> pCertContext,
  Uint32 dwPropId,
  Uint32 dwFlags,
  Pointer pvData,
),
    int Function(
  Pointer<CERT_CONTEXT> pCertContext,
  int dwPropId,
  int dwFlags,
  Pointer pvData,
)>('CertSetCertificateContextProperty');

int CertSetEnhancedKeyUsage(
  Pointer<CERT_CONTEXT> pCertContext,
  Pointer<CTL_USAGE> pUsage,
) =>
    _CertSetEnhancedKeyUsage(
      pCertContext,
      pUsage,
    );

late final _CertSetEnhancedKeyUsage = _crypt32.lookupFunction<
    Int32 Function(
  Pointer<CERT_CONTEXT> pCertContext,
  Pointer<CTL_USAGE> pUsage,
),
    int Function(
  Pointer<CERT_CONTEXT> pCertContext,
  Pointer<CTL_USAGE> pUsage,
)>('CertSetEnhancedKeyUsage');

int CertSetStoreProperty(
  Pointer hCertStore,
  int dwPropId,
  int dwFlags,
  Pointer pvData,
) =>
    _CertSetStoreProperty(
      hCertStore,
      dwPropId,
      dwFlags,
      pvData,
    );

late final _CertSetStoreProperty = _crypt32.lookupFunction<
    Int32 Function(
  Pointer hCertStore,
  Uint32 dwPropId,
  Uint32 dwFlags,
  Pointer pvData,
),
    int Function(
  Pointer hCertStore,
  int dwPropId,
  int dwFlags,
  Pointer pvData,
)>('CertSetStoreProperty');

int CertStrToName(
  int dwCertEncodingType,
  Pointer<Utf16> pszX500,
  int dwStrType,
  Pointer pvReserved,
  Pointer<Uint8> pbEncoded,
  Pointer<Uint32> pcbEncoded,
  Pointer<Pointer<Utf16>> ppszError,
) =>
    _CertStrToName(
      dwCertEncodingType,
      pszX500,
      dwStrType,
      pvReserved,
      pbEncoded,
      pcbEncoded,
      ppszError,
    );

late final _CertStrToName = _crypt32.lookupFunction<
    Int32 Function(
  Uint32 dwCertEncodingType,
  Pointer<Utf16> pszX500,
  Uint32 dwStrType,
  Pointer pvReserved,
  Pointer<Uint8> pbEncoded,
  Pointer<Uint32> pcbEncoded,
  Pointer<Pointer<Utf16>> ppszError,
),
    int Function(
  int dwCertEncodingType,
  Pointer<Utf16> pszX500,
  int dwStrType,
  Pointer pvReserved,
  Pointer<Uint8> pbEncoded,
  Pointer<Uint32> pcbEncoded,
  Pointer<Pointer<Utf16>> ppszError,
)>('CertStrToNameW');

int CertUnregisterPhysicalStore(
  Pointer pvSystemStore,
  int dwFlags,
  Pointer<Utf16> pwszStoreName,
) =>
    _CertUnregisterPhysicalStore(
      pvSystemStore,
      dwFlags,
      pwszStoreName,
    );

late final _CertUnregisterPhysicalStore = _crypt32.lookupFunction<
    Int32 Function(
  Pointer pvSystemStore,
  Uint32 dwFlags,
  Pointer<Utf16> pwszStoreName,
),
    int Function(
  Pointer pvSystemStore,
  int dwFlags,
  Pointer<Utf16> pwszStoreName,
)>('CertUnregisterPhysicalStore');

int CertUnregisterSystemStore(
  Pointer pvSystemStore,
  int dwFlags,
) =>
    _CertUnregisterSystemStore(
      pvSystemStore,
      dwFlags,
    );

late final _CertUnregisterSystemStore = _crypt32.lookupFunction<
    Int32 Function(
  Pointer pvSystemStore,
  Uint32 dwFlags,
),
    int Function(
  Pointer pvSystemStore,
  int dwFlags,
)>('CertUnregisterSystemStore');

int CertVerifyCRLRevocation(
  int dwCertEncodingType,
  Pointer<CERT_INFO> pCertId,
  int cCrlInfo,
  Pointer<Pointer<CRL_INFO>> rgpCrlInfo,
) =>
    _CertVerifyCRLRevocation(
      dwCertEncodingType,
      pCertId,
      cCrlInfo,
      rgpCrlInfo,
    );

late final _CertVerifyCRLRevocation = _crypt32.lookupFunction<
    Int32 Function(
  Uint32 dwCertEncodingType,
  Pointer<CERT_INFO> pCertId,
  Uint32 cCrlInfo,
  Pointer<Pointer<CRL_INFO>> rgpCrlInfo,
),
    int Function(
  int dwCertEncodingType,
  Pointer<CERT_INFO> pCertId,
  int cCrlInfo,
  Pointer<Pointer<CRL_INFO>> rgpCrlInfo,
)>('CertVerifyCRLRevocation');

int CertVerifyCRLTimeValidity(
  Pointer<FILETIME> pTimeToVerify,
  Pointer<CRL_INFO> pCrlInfo,
) =>
    _CertVerifyCRLTimeValidity(
      pTimeToVerify,
      pCrlInfo,
    );

late final _CertVerifyCRLTimeValidity = _crypt32.lookupFunction<
    Int32 Function(
  Pointer<FILETIME> pTimeToVerify,
  Pointer<CRL_INFO> pCrlInfo,
),
    int Function(
  Pointer<FILETIME> pTimeToVerify,
  Pointer<CRL_INFO> pCrlInfo,
)>('CertVerifyCRLTimeValidity');

int CertVerifyCTLUsage(
  int dwEncodingType,
  int dwSubjectType,
  Pointer pvSubject,
  Pointer<CTL_USAGE> pSubjectUsage,
  int dwFlags,
  Pointer<CTL_VERIFY_USAGE_PARA> pVerifyUsagePara,
  Pointer<CTL_VERIFY_USAGE_STATUS> pVerifyUsageStatus,
) =>
    _CertVerifyCTLUsage(
      dwEncodingType,
      dwSubjectType,
      pvSubject,
      pSubjectUsage,
      dwFlags,
      pVerifyUsagePara,
      pVerifyUsageStatus,
    );

late final _CertVerifyCTLUsage = _crypt32.lookupFunction<
    Int32 Function(
  Uint32 dwEncodingType,
  Uint32 dwSubjectType,
  Pointer pvSubject,
  Pointer<CTL_USAGE> pSubjectUsage,
  Uint32 dwFlags,
  Pointer<CTL_VERIFY_USAGE_PARA> pVerifyUsagePara,
  Pointer<CTL_VERIFY_USAGE_STATUS> pVerifyUsageStatus,
),
    int Function(
  int dwEncodingType,
  int dwSubjectType,
  Pointer pvSubject,
  Pointer<CTL_USAGE> pSubjectUsage,
  int dwFlags,
  Pointer<CTL_VERIFY_USAGE_PARA> pVerifyUsagePara,
  Pointer<CTL_VERIFY_USAGE_STATUS> pVerifyUsageStatus,
)>('CertVerifyCTLUsage');

int CertVerifyCertificateChainPolicy(
  Pointer<Utf8> pszPolicyOID,
  Pointer<CERT_CHAIN_CONTEXT> pChainContext,
  Pointer<CERT_CHAIN_POLICY_PARA> pPolicyPara,
  Pointer<CERT_CHAIN_POLICY_STATUS> pPolicyStatus,
) =>
    _CertVerifyCertificateChainPolicy(
      pszPolicyOID,
      pChainContext,
      pPolicyPara,
      pPolicyStatus,
    );

late final _CertVerifyCertificateChainPolicy = _crypt32.lookupFunction<
    Int32 Function(
  Pointer<Utf8> pszPolicyOID,
  Pointer<CERT_CHAIN_CONTEXT> pChainContext,
  Pointer<CERT_CHAIN_POLICY_PARA> pPolicyPara,
  Pointer<CERT_CHAIN_POLICY_STATUS> pPolicyStatus,
),
    int Function(
  Pointer<Utf8> pszPolicyOID,
  Pointer<CERT_CHAIN_CONTEXT> pChainContext,
  Pointer<CERT_CHAIN_POLICY_PARA> pPolicyPara,
  Pointer<CERT_CHAIN_POLICY_STATUS> pPolicyStatus,
)>('CertVerifyCertificateChainPolicy');

int CertVerifyRevocation(
  int dwEncodingType,
  int dwRevType,
  int cContext,
  Pointer<Pointer> rgpvContext,
  int dwFlags,
  Pointer<CERT_REVOCATION_PARA> pRevPara,
  Pointer<CERT_REVOCATION_STATUS> pRevStatus,
) =>
    _CertVerifyRevocation(
      dwEncodingType,
      dwRevType,
      cContext,
      rgpvContext,
      dwFlags,
      pRevPara,
      pRevStatus,
    );

late final _CertVerifyRevocation = _crypt32.lookupFunction<
    Int32 Function(
  Uint32 dwEncodingType,
  Uint32 dwRevType,
  Uint32 cContext,
  Pointer<Pointer> rgpvContext,
  Uint32 dwFlags,
  Pointer<CERT_REVOCATION_PARA> pRevPara,
  Pointer<CERT_REVOCATION_STATUS> pRevStatus,
),
    int Function(
  int dwEncodingType,
  int dwRevType,
  int cContext,
  Pointer<Pointer> rgpvContext,
  int dwFlags,
  Pointer<CERT_REVOCATION_PARA> pRevPara,
  Pointer<CERT_REVOCATION_STATUS> pRevStatus,
)>('CertVerifyRevocation');

int CertVerifySubjectCertificateContext(
  Pointer<CERT_CONTEXT> pSubject,
  Pointer<CERT_CONTEXT> pIssuer,
  Pointer<Uint32> pdwFlags,
) =>
    _CertVerifySubjectCertificateContext(
      pSubject,
      pIssuer,
      pdwFlags,
    );

late final _CertVerifySubjectCertificateContext = _crypt32.lookupFunction<
    Int32 Function(
  Pointer<CERT_CONTEXT> pSubject,
  Pointer<CERT_CONTEXT> pIssuer,
  Pointer<Uint32> pdwFlags,
),
    int Function(
  Pointer<CERT_CONTEXT> pSubject,
  Pointer<CERT_CONTEXT> pIssuer,
  Pointer<Uint32> pdwFlags,
)>('CertVerifySubjectCertificateContext');

int CertVerifyTimeValidity(
  Pointer<FILETIME> pTimeToVerify,
  Pointer<CERT_INFO> pCertInfo,
) =>
    _CertVerifyTimeValidity(
      pTimeToVerify,
      pCertInfo,
    );

late final _CertVerifyTimeValidity = _crypt32.lookupFunction<
    Int32 Function(
  Pointer<FILETIME> pTimeToVerify,
  Pointer<CERT_INFO> pCertInfo,
),
    int Function(
  Pointer<FILETIME> pTimeToVerify,
  Pointer<CERT_INFO> pCertInfo,
)>('CertVerifyTimeValidity');

int CertVerifyValidityNesting(
  Pointer<CERT_INFO> pSubjectInfo,
  Pointer<CERT_INFO> pIssuerInfo,
) =>
    _CertVerifyValidityNesting(
      pSubjectInfo,
      pIssuerInfo,
    );

late final _CertVerifyValidityNesting = _crypt32.lookupFunction<
    Int32 Function(
  Pointer<CERT_INFO> pSubjectInfo,
  Pointer<CERT_INFO> pIssuerInfo,
),
    int Function(
  Pointer<CERT_INFO> pSubjectInfo,
  Pointer<CERT_INFO> pIssuerInfo,
)>('CertVerifyValidityNesting');

int CryptAcquireCertificatePrivateKey(
  Pointer<CERT_CONTEXT> pCert,
  int dwFlags,
  Pointer pvParameters,
  Pointer<IntPtr> phCryptProvOrNCryptKey,
  Pointer<Uint32> pdwKeySpec,
  Pointer<Int32> pfCallerFreeProvOrNCryptKey,
) =>
    _CryptAcquireCertificatePrivateKey(
      pCert,
      dwFlags,
      pvParameters,
      phCryptProvOrNCryptKey,
      pdwKeySpec,
      pfCallerFreeProvOrNCryptKey,
    );

late final _CryptAcquireCertificatePrivateKey = _crypt32.lookupFunction<
    Int32 Function(
  Pointer<CERT_CONTEXT> pCert,
  Uint32 dwFlags,
  Pointer pvParameters,
  Pointer<IntPtr> phCryptProvOrNCryptKey,
  Pointer<Uint32> pdwKeySpec,
  Pointer<Int32> pfCallerFreeProvOrNCryptKey,
),
    int Function(
  Pointer<CERT_CONTEXT> pCert,
  int dwFlags,
  Pointer pvParameters,
  Pointer<IntPtr> phCryptProvOrNCryptKey,
  Pointer<Uint32> pdwKeySpec,
  Pointer<Int32> pfCallerFreeProvOrNCryptKey,
)>('CryptAcquireCertificatePrivateKey');

int CryptBinaryToString(
  Pointer<Uint8> pbBinary,
  int cbBinary,
  int dwFlags,
  Pointer<Utf16> pszString,
  Pointer<Uint32> pcchString,
) =>
    _CryptBinaryToString(
      pbBinary,
      cbBinary,
      dwFlags,
      pszString,
      pcchString,
    );

late final _CryptBinaryToString = _crypt32.lookupFunction<
    Int32 Function(
  Pointer<Uint8> pbBinary,
  Uint32 cbBinary,
  Uint32 dwFlags,
  Pointer<Utf16> pszString,
  Pointer<Uint32> pcchString,
),
    int Function(
  Pointer<Uint8> pbBinary,
  int cbBinary,
  int dwFlags,
  Pointer<Utf16> pszString,
  Pointer<Uint32> pcchString,
)>('CryptBinaryToStringW');

int CryptCloseAsyncHandle(
  int hAsync,
) =>
    _CryptCloseAsyncHandle(
      hAsync,
    );

late final _CryptCloseAsyncHandle = _crypt32.lookupFunction<
    Int32 Function(
  IntPtr hAsync,
),
    int Function(
  int hAsync,
)>('CryptCloseAsyncHandle');

int CryptCreateAsyncHandle(
  int dwFlags,
  Pointer<IntPtr> phAsync,
) =>
    _CryptCreateAsyncHandle(
      dwFlags,
      phAsync,
    );

late final _CryptCreateAsyncHandle = _crypt32.lookupFunction<
    Int32 Function(
  Uint32 dwFlags,
  Pointer<IntPtr> phAsync,
),
    int Function(
  int dwFlags,
  Pointer<IntPtr> phAsync,
)>('CryptCreateAsyncHandle');

int CryptCreateKeyIdentifierFromCSP(
  int dwCertEncodingType,
  Pointer<Utf8> pszPubKeyOID,
  Pointer<PUBLICKEYSTRUC> pPubKeyStruc,
  int cbPubKeyStruc,
  int dwFlags,
  Pointer pvReserved,
  Pointer<Uint8> pbHash,
  Pointer<Uint32> pcbHash,
) =>
    _CryptCreateKeyIdentifierFromCSP(
      dwCertEncodingType,
      pszPubKeyOID,
      pPubKeyStruc,
      cbPubKeyStruc,
      dwFlags,
      pvReserved,
      pbHash,
      pcbHash,
    );

late final _CryptCreateKeyIdentifierFromCSP = _crypt32.lookupFunction<
    Int32 Function(
  Uint32 dwCertEncodingType,
  Pointer<Utf8> pszPubKeyOID,
  Pointer<PUBLICKEYSTRUC> pPubKeyStruc,
  Uint32 cbPubKeyStruc,
  Uint32 dwFlags,
  Pointer pvReserved,
  Pointer<Uint8> pbHash,
  Pointer<Uint32> pcbHash,
),
    int Function(
  int dwCertEncodingType,
  Pointer<Utf8> pszPubKeyOID,
  Pointer<PUBLICKEYSTRUC> pPubKeyStruc,
  int cbPubKeyStruc,
  int dwFlags,
  Pointer pvReserved,
  Pointer<Uint8> pbHash,
  Pointer<Uint32> pcbHash,
)>('CryptCreateKeyIdentifierFromCSP');

int CryptDecodeMessage(
  int dwMsgTypeFlags,
  Pointer<CRYPT_DECRYPT_MESSAGE_PARA> pDecryptPara,
  Pointer<CRYPT_VERIFY_MESSAGE_PARA> pVerifyPara,
  int dwSignerIndex,
  Pointer<Uint8> pbEncodedBlob,
  int cbEncodedBlob,
  int dwPrevInnerContentType,
  Pointer<Uint32> pdwMsgType,
  Pointer<Uint32> pdwInnerContentType,
  Pointer<Uint8> pbDecoded,
  Pointer<Uint32> pcbDecoded,
  Pointer<Pointer<CERT_CONTEXT>> ppXchgCert,
  Pointer<Pointer<CERT_CONTEXT>> ppSignerCert,
) =>
    _CryptDecodeMessage(
      dwMsgTypeFlags,
      pDecryptPara,
      pVerifyPara,
      dwSignerIndex,
      pbEncodedBlob,
      cbEncodedBlob,
      dwPrevInnerContentType,
      pdwMsgType,
      pdwInnerContentType,
      pbDecoded,
      pcbDecoded,
      ppXchgCert,
      ppSignerCert,
    );

late final _CryptDecodeMessage = _crypt32.lookupFunction<
    Int32 Function(
  Uint32 dwMsgTypeFlags,
  Pointer<CRYPT_DECRYPT_MESSAGE_PARA> pDecryptPara,
  Pointer<CRYPT_VERIFY_MESSAGE_PARA> pVerifyPara,
  Uint32 dwSignerIndex,
  Pointer<Uint8> pbEncodedBlob,
  Uint32 cbEncodedBlob,
  Uint32 dwPrevInnerContentType,
  Pointer<Uint32> pdwMsgType,
  Pointer<Uint32> pdwInnerContentType,
  Pointer<Uint8> pbDecoded,
  Pointer<Uint32> pcbDecoded,
  Pointer<Pointer<CERT_CONTEXT>> ppXchgCert,
  Pointer<Pointer<CERT_CONTEXT>> ppSignerCert,
),
    int Function(
  int dwMsgTypeFlags,
  Pointer<CRYPT_DECRYPT_MESSAGE_PARA> pDecryptPara,
  Pointer<CRYPT_VERIFY_MESSAGE_PARA> pVerifyPara,
  int dwSignerIndex,
  Pointer<Uint8> pbEncodedBlob,
  int cbEncodedBlob,
  int dwPrevInnerContentType,
  Pointer<Uint32> pdwMsgType,
  Pointer<Uint32> pdwInnerContentType,
  Pointer<Uint8> pbDecoded,
  Pointer<Uint32> pcbDecoded,
  Pointer<Pointer<CERT_CONTEXT>> ppXchgCert,
  Pointer<Pointer<CERT_CONTEXT>> ppSignerCert,
)>('CryptDecodeMessage');

int CryptDecodeObject(
  int dwCertEncodingType,
  Pointer<Utf8> lpszStructType,
  Pointer<Uint8> pbEncoded,
  int cbEncoded,
  int dwFlags,
  Pointer pvStructInfo,
  Pointer<Uint32> pcbStructInfo,
) =>
    _CryptDecodeObject(
      dwCertEncodingType,
      lpszStructType,
      pbEncoded,
      cbEncoded,
      dwFlags,
      pvStructInfo,
      pcbStructInfo,
    );

late final _CryptDecodeObject = _crypt32.lookupFunction<
    Int32 Function(
  Uint32 dwCertEncodingType,
  Pointer<Utf8> lpszStructType,
  Pointer<Uint8> pbEncoded,
  Uint32 cbEncoded,
  Uint32 dwFlags,
  Pointer pvStructInfo,
  Pointer<Uint32> pcbStructInfo,
),
    int Function(
  int dwCertEncodingType,
  Pointer<Utf8> lpszStructType,
  Pointer<Uint8> pbEncoded,
  int cbEncoded,
  int dwFlags,
  Pointer pvStructInfo,
  Pointer<Uint32> pcbStructInfo,
)>('CryptDecodeObject');

int CryptDecodeObjectEx(
  int dwCertEncodingType,
  Pointer<Utf8> lpszStructType,
  Pointer<Uint8> pbEncoded,
  int cbEncoded,
  int dwFlags,
  Pointer<CRYPT_DECODE_PARA> pDecodePara,
  Pointer pvStructInfo,
  Pointer<Uint32> pcbStructInfo,
) =>
    _CryptDecodeObjectEx(
      dwCertEncodingType,
      lpszStructType,
      pbEncoded,
      cbEncoded,
      dwFlags,
      pDecodePara,
      pvStructInfo,
      pcbStructInfo,
    );

late final _CryptDecodeObjectEx = _crypt32.lookupFunction<
    Int32 Function(
  Uint32 dwCertEncodingType,
  Pointer<Utf8> lpszStructType,
  Pointer<Uint8> pbEncoded,
  Uint32 cbEncoded,
  Uint32 dwFlags,
  Pointer<CRYPT_DECODE_PARA> pDecodePara,
  Pointer pvStructInfo,
  Pointer<Uint32> pcbStructInfo,
),
    int Function(
  int dwCertEncodingType,
  Pointer<Utf8> lpszStructType,
  Pointer<Uint8> pbEncoded,
  int cbEncoded,
  int dwFlags,
  Pointer<CRYPT_DECODE_PARA> pDecodePara,
  Pointer pvStructInfo,
  Pointer<Uint32> pcbStructInfo,
)>('CryptDecodeObjectEx');

int CryptDecryptAndVerifyMessageSignature(
  Pointer<CRYPT_DECRYPT_MESSAGE_PARA> pDecryptPara,
  Pointer<CRYPT_VERIFY_MESSAGE_PARA> pVerifyPara,
  int dwSignerIndex,
  Pointer<Uint8> pbEncryptedBlob,
  int cbEncryptedBlob,
  Pointer<Uint8> pbDecrypted,
  Pointer<Uint32> pcbDecrypted,
  Pointer<Pointer<CERT_CONTEXT>> ppXchgCert,
  Pointer<Pointer<CERT_CONTEXT>> ppSignerCert,
) =>
    _CryptDecryptAndVerifyMessageSignature(
      pDecryptPara,
      pVerifyPara,
      dwSignerIndex,
      pbEncryptedBlob,
      cbEncryptedBlob,
      pbDecrypted,
      pcbDecrypted,
      ppXchgCert,
      ppSignerCert,
    );

late final _CryptDecryptAndVerifyMessageSignature = _crypt32.lookupFunction<
    Int32 Function(
  Pointer<CRYPT_DECRYPT_MESSAGE_PARA> pDecryptPara,
  Pointer<CRYPT_VERIFY_MESSAGE_PARA> pVerifyPara,
  Uint32 dwSignerIndex,
  Pointer<Uint8> pbEncryptedBlob,
  Uint32 cbEncryptedBlob,
  Pointer<Uint8> pbDecrypted,
  Pointer<Uint32> pcbDecrypted,
  Pointer<Pointer<CERT_CONTEXT>> ppXchgCert,
  Pointer<Pointer<CERT_CONTEXT>> ppSignerCert,
),
    int Function(
  Pointer<CRYPT_DECRYPT_MESSAGE_PARA> pDecryptPara,
  Pointer<CRYPT_VERIFY_MESSAGE_PARA> pVerifyPara,
  int dwSignerIndex,
  Pointer<Uint8> pbEncryptedBlob,
  int cbEncryptedBlob,
  Pointer<Uint8> pbDecrypted,
  Pointer<Uint32> pcbDecrypted,
  Pointer<Pointer<CERT_CONTEXT>> ppXchgCert,
  Pointer<Pointer<CERT_CONTEXT>> ppSignerCert,
)>('CryptDecryptAndVerifyMessageSignature');

int CryptDecryptMessage(
  Pointer<CRYPT_DECRYPT_MESSAGE_PARA> pDecryptPara,
  Pointer<Uint8> pbEncryptedBlob,
  int cbEncryptedBlob,
  Pointer<Uint8> pbDecrypted,
  Pointer<Uint32> pcbDecrypted,
  Pointer<Pointer<CERT_CONTEXT>> ppXchgCert,
) =>
    _CryptDecryptMessage(
      pDecryptPara,
      pbEncryptedBlob,
      cbEncryptedBlob,
      pbDecrypted,
      pcbDecrypted,
      ppXchgCert,
    );

late final _CryptDecryptMessage = _crypt32.lookupFunction<
    Int32 Function(
  Pointer<CRYPT_DECRYPT_MESSAGE_PARA> pDecryptPara,
  Pointer<Uint8> pbEncryptedBlob,
  Uint32 cbEncryptedBlob,
  Pointer<Uint8> pbDecrypted,
  Pointer<Uint32> pcbDecrypted,
  Pointer<Pointer<CERT_CONTEXT>> ppXchgCert,
),
    int Function(
  Pointer<CRYPT_DECRYPT_MESSAGE_PARA> pDecryptPara,
  Pointer<Uint8> pbEncryptedBlob,
  int cbEncryptedBlob,
  Pointer<Uint8> pbDecrypted,
  Pointer<Uint32> pcbDecrypted,
  Pointer<Pointer<CERT_CONTEXT>> ppXchgCert,
)>('CryptDecryptMessage');

int CryptEncodeObject(
  int dwCertEncodingType,
  Pointer<Utf8> lpszStructType,
  Pointer pvStructInfo,
  Pointer<Uint8> pbEncoded,
  Pointer<Uint32> pcbEncoded,
) =>
    _CryptEncodeObject(
      dwCertEncodingType,
      lpszStructType,
      pvStructInfo,
      pbEncoded,
      pcbEncoded,
    );

late final _CryptEncodeObject = _crypt32.lookupFunction<
    Int32 Function(
  Uint32 dwCertEncodingType,
  Pointer<Utf8> lpszStructType,
  Pointer pvStructInfo,
  Pointer<Uint8> pbEncoded,
  Pointer<Uint32> pcbEncoded,
),
    int Function(
  int dwCertEncodingType,
  Pointer<Utf8> lpszStructType,
  Pointer pvStructInfo,
  Pointer<Uint8> pbEncoded,
  Pointer<Uint32> pcbEncoded,
)>('CryptEncodeObject');

int CryptEncodeObjectEx(
  int dwCertEncodingType,
  Pointer<Utf8> lpszStructType,
  Pointer pvStructInfo,
  int dwFlags,
  Pointer<CRYPT_ENCODE_PARA> pEncodePara,
  Pointer pvEncoded,
  Pointer<Uint32> pcbEncoded,
) =>
    _CryptEncodeObjectEx(
      dwCertEncodingType,
      lpszStructType,
      pvStructInfo,
      dwFlags,
      pEncodePara,
      pvEncoded,
      pcbEncoded,
    );

late final _CryptEncodeObjectEx = _crypt32.lookupFunction<
    Int32 Function(
  Uint32 dwCertEncodingType,
  Pointer<Utf8> lpszStructType,
  Pointer pvStructInfo,
  Uint32 dwFlags,
  Pointer<CRYPT_ENCODE_PARA> pEncodePara,
  Pointer pvEncoded,
  Pointer<Uint32> pcbEncoded,
),
    int Function(
  int dwCertEncodingType,
  Pointer<Utf8> lpszStructType,
  Pointer pvStructInfo,
  int dwFlags,
  Pointer<CRYPT_ENCODE_PARA> pEncodePara,
  Pointer pvEncoded,
  Pointer<Uint32> pcbEncoded,
)>('CryptEncodeObjectEx');

int CryptEncryptMessage(
  Pointer<CRYPT_ENCRYPT_MESSAGE_PARA> pEncryptPara,
  int cRecipientCert,
  Pointer<Pointer<CERT_CONTEXT>> rgpRecipientCert,
  Pointer<Uint8> pbToBeEncrypted,
  int cbToBeEncrypted,
  Pointer<Uint8> pbEncryptedBlob,
  Pointer<Uint32> pcbEncryptedBlob,
) =>
    _CryptEncryptMessage(
      pEncryptPara,
      cRecipientCert,
      rgpRecipientCert,
      pbToBeEncrypted,
      cbToBeEncrypted,
      pbEncryptedBlob,
      pcbEncryptedBlob,
    );

late final _CryptEncryptMessage = _crypt32.lookupFunction<
    Int32 Function(
  Pointer<CRYPT_ENCRYPT_MESSAGE_PARA> pEncryptPara,
  Uint32 cRecipientCert,
  Pointer<Pointer<CERT_CONTEXT>> rgpRecipientCert,
  Pointer<Uint8> pbToBeEncrypted,
  Uint32 cbToBeEncrypted,
  Pointer<Uint8> pbEncryptedBlob,
  Pointer<Uint32> pcbEncryptedBlob,
),
    int Function(
  Pointer<CRYPT_ENCRYPT_MESSAGE_PARA> pEncryptPara,
  int cRecipientCert,
  Pointer<Pointer<CERT_CONTEXT>> rgpRecipientCert,
  Pointer<Uint8> pbToBeEncrypted,
  int cbToBeEncrypted,
  Pointer<Uint8> pbEncryptedBlob,
  Pointer<Uint32> pcbEncryptedBlob,
)>('CryptEncryptMessage');

int CryptEnumKeyIdentifierProperties(
  Pointer<CRYPTOAPI_BLOB> pKeyIdentifier,
  int dwPropId,
  int dwFlags,
  Pointer<Utf16> pwszComputerName,
  Pointer pvReserved,
  Pointer pvArg,
  Pointer<NativeFunction<PFN_CRYPT_ENUM_KEYID_PROP>> pfnEnum,
) =>
    _CryptEnumKeyIdentifierProperties(
      pKeyIdentifier,
      dwPropId,
      dwFlags,
      pwszComputerName,
      pvReserved,
      pvArg,
      pfnEnum,
    );

late final _CryptEnumKeyIdentifierProperties = _crypt32.lookupFunction<
    Int32 Function(
  Pointer<CRYPTOAPI_BLOB> pKeyIdentifier,
  Uint32 dwPropId,
  Uint32 dwFlags,
  Pointer<Utf16> pwszComputerName,
  Pointer pvReserved,
  Pointer pvArg,
  Pointer<NativeFunction<PFN_CRYPT_ENUM_KEYID_PROP>> pfnEnum,
),
    int Function(
  Pointer<CRYPTOAPI_BLOB> pKeyIdentifier,
  int dwPropId,
  int dwFlags,
  Pointer<Utf16> pwszComputerName,
  Pointer pvReserved,
  Pointer pvArg,
  Pointer<NativeFunction<PFN_CRYPT_ENUM_KEYID_PROP>> pfnEnum,
)>('CryptEnumKeyIdentifierProperties');

int CryptEnumOIDFunction(
  int dwEncodingType,
  Pointer<Utf8> pszFuncName,
  Pointer<Utf8> pszOID,
  int dwFlags,
  Pointer pvArg,
  Pointer<NativeFunction<PFN_CRYPT_ENUM_OID_FUNC>> pfnEnumOIDFunc,
) =>
    _CryptEnumOIDFunction(
      dwEncodingType,
      pszFuncName,
      pszOID,
      dwFlags,
      pvArg,
      pfnEnumOIDFunc,
    );

late final _CryptEnumOIDFunction = _crypt32.lookupFunction<
    Int32 Function(
  Uint32 dwEncodingType,
  Pointer<Utf8> pszFuncName,
  Pointer<Utf8> pszOID,
  Uint32 dwFlags,
  Pointer pvArg,
  Pointer<NativeFunction<PFN_CRYPT_ENUM_OID_FUNC>> pfnEnumOIDFunc,
),
    int Function(
  int dwEncodingType,
  Pointer<Utf8> pszFuncName,
  Pointer<Utf8> pszOID,
  int dwFlags,
  Pointer pvArg,
  Pointer<NativeFunction<PFN_CRYPT_ENUM_OID_FUNC>> pfnEnumOIDFunc,
)>('CryptEnumOIDFunction');

int CryptEnumOIDInfo(
  int dwGroupId,
  int dwFlags,
  Pointer pvArg,
  Pointer<NativeFunction<PFN_CRYPT_ENUM_OID_INFO>> pfnEnumOIDInfo,
) =>
    _CryptEnumOIDInfo(
      dwGroupId,
      dwFlags,
      pvArg,
      pfnEnumOIDInfo,
    );

late final _CryptEnumOIDInfo = _crypt32.lookupFunction<
    Int32 Function(
  Uint32 dwGroupId,
  Uint32 dwFlags,
  Pointer pvArg,
  Pointer<NativeFunction<PFN_CRYPT_ENUM_OID_INFO>> pfnEnumOIDInfo,
),
    int Function(
  int dwGroupId,
  int dwFlags,
  Pointer pvArg,
  Pointer<NativeFunction<PFN_CRYPT_ENUM_OID_INFO>> pfnEnumOIDInfo,
)>('CryptEnumOIDInfo');

int CryptExportPKCS8(
  int hCryptProv,
  int dwKeySpec,
  Pointer<Utf8> pszPrivateKeyObjId,
  int dwFlags,
  Pointer pvAuxInfo,
  Pointer<Uint8> pbPrivateKeyBlob,
  Pointer<Uint32> pcbPrivateKeyBlob,
) =>
    _CryptExportPKCS8(
      hCryptProv,
      dwKeySpec,
      pszPrivateKeyObjId,
      dwFlags,
      pvAuxInfo,
      pbPrivateKeyBlob,
      pcbPrivateKeyBlob,
    );

late final _CryptExportPKCS8 = _crypt32.lookupFunction<
    Int32 Function(
  IntPtr hCryptProv,
  Uint32 dwKeySpec,
  Pointer<Utf8> pszPrivateKeyObjId,
  Uint32 dwFlags,
  Pointer pvAuxInfo,
  Pointer<Uint8> pbPrivateKeyBlob,
  Pointer<Uint32> pcbPrivateKeyBlob,
),
    int Function(
  int hCryptProv,
  int dwKeySpec,
  Pointer<Utf8> pszPrivateKeyObjId,
  int dwFlags,
  Pointer pvAuxInfo,
  Pointer<Uint8> pbPrivateKeyBlob,
  Pointer<Uint32> pcbPrivateKeyBlob,
)>('CryptExportPKCS8');

int CryptExportPublicKeyInfo(
  int hCryptProvOrNCryptKey,
  int dwKeySpec,
  int dwCertEncodingType,
  Pointer<CERT_PUBLIC_KEY_INFO> pInfo,
  Pointer<Uint32> pcbInfo,
) =>
    _CryptExportPublicKeyInfo(
      hCryptProvOrNCryptKey,
      dwKeySpec,
      dwCertEncodingType,
      pInfo,
      pcbInfo,
    );

late final _CryptExportPublicKeyInfo = _crypt32.lookupFunction<
    Int32 Function(
  IntPtr hCryptProvOrNCryptKey,
  Uint32 dwKeySpec,
  Uint32 dwCertEncodingType,
  Pointer<CERT_PUBLIC_KEY_INFO> pInfo,
  Pointer<Uint32> pcbInfo,
),
    int Function(
  int hCryptProvOrNCryptKey,
  int dwKeySpec,
  int dwCertEncodingType,
  Pointer<CERT_PUBLIC_KEY_INFO> pInfo,
  Pointer<Uint32> pcbInfo,
)>('CryptExportPublicKeyInfo');

int CryptExportPublicKeyInfoEx(
  int hCryptProvOrNCryptKey,
  int dwKeySpec,
  int dwCertEncodingType,
  Pointer<Utf8> pszPublicKeyObjId,
  int dwFlags,
  Pointer pvAuxInfo,
  Pointer<CERT_PUBLIC_KEY_INFO> pInfo,
  Pointer<Uint32> pcbInfo,
) =>
    _CryptExportPublicKeyInfoEx(
      hCryptProvOrNCryptKey,
      dwKeySpec,
      dwCertEncodingType,
      pszPublicKeyObjId,
      dwFlags,
      pvAuxInfo,
      pInfo,
      pcbInfo,
    );

late final _CryptExportPublicKeyInfoEx = _crypt32.lookupFunction<
    Int32 Function(
  IntPtr hCryptProvOrNCryptKey,
  Uint32 dwKeySpec,
  Uint32 dwCertEncodingType,
  Pointer<Utf8> pszPublicKeyObjId,
  Uint32 dwFlags,
  Pointer pvAuxInfo,
  Pointer<CERT_PUBLIC_KEY_INFO> pInfo,
  Pointer<Uint32> pcbInfo,
),
    int Function(
  int hCryptProvOrNCryptKey,
  int dwKeySpec,
  int dwCertEncodingType,
  Pointer<Utf8> pszPublicKeyObjId,
  int dwFlags,
  Pointer pvAuxInfo,
  Pointer<CERT_PUBLIC_KEY_INFO> pInfo,
  Pointer<Uint32> pcbInfo,
)>('CryptExportPublicKeyInfoEx');

int CryptExportPublicKeyInfoFromBCryptKeyHandle(
  int hBCryptKey,
  int dwCertEncodingType,
  Pointer<Utf8> pszPublicKeyObjId,
  int dwFlags,
  Pointer pvAuxInfo,
  Pointer<CERT_PUBLIC_KEY_INFO> pInfo,
  Pointer<Uint32> pcbInfo,
) =>
    _CryptExportPublicKeyInfoFromBCryptKeyHandle(
      hBCryptKey,
      dwCertEncodingType,
      pszPublicKeyObjId,
      dwFlags,
      pvAuxInfo,
      pInfo,
      pcbInfo,
    );

late final _CryptExportPublicKeyInfoFromBCryptKeyHandle =
    _crypt32.lookupFunction<
        Int32 Function(
  IntPtr hBCryptKey,
  Uint32 dwCertEncodingType,
  Pointer<Utf8> pszPublicKeyObjId,
  Uint32 dwFlags,
  Pointer pvAuxInfo,
  Pointer<CERT_PUBLIC_KEY_INFO> pInfo,
  Pointer<Uint32> pcbInfo,
),
        int Function(
  int hBCryptKey,
  int dwCertEncodingType,
  Pointer<Utf8> pszPublicKeyObjId,
  int dwFlags,
  Pointer pvAuxInfo,
  Pointer<CERT_PUBLIC_KEY_INFO> pInfo,
  Pointer<Uint32> pcbInfo,
)>('CryptExportPublicKeyInfoFromBCryptKeyHandle');

int CryptFindCertificateKeyProvInfo(
  Pointer<CERT_CONTEXT> pCert,
  int dwFlags,
  Pointer pvReserved,
) =>
    _CryptFindCertificateKeyProvInfo(
      pCert,
      dwFlags,
      pvReserved,
    );

late final _CryptFindCertificateKeyProvInfo = _crypt32.lookupFunction<
    Int32 Function(
  Pointer<CERT_CONTEXT> pCert,
  Uint32 dwFlags,
  Pointer pvReserved,
),
    int Function(
  Pointer<CERT_CONTEXT> pCert,
  int dwFlags,
  Pointer pvReserved,
)>('CryptFindCertificateKeyProvInfo');

Pointer<Utf16> CryptFindLocalizedName(
  Pointer<Utf16> pwszCryptName,
) =>
    _CryptFindLocalizedName(
      pwszCryptName,
    );

late final _CryptFindLocalizedName = _crypt32.lookupFunction<
    Pointer<Utf16> Function(
  Pointer<Utf16> pwszCryptName,
),
    Pointer<Utf16> Function(
  Pointer<Utf16> pwszCryptName,
)>('CryptFindLocalizedName');

Pointer<CRYPT_OID_INFO> CryptFindOIDInfo(
  int dwKeyType,
  Pointer pvKey,
  int dwGroupId,
) =>
    _CryptFindOIDInfo(
      dwKeyType,
      pvKey,
      dwGroupId,
    );

late final _CryptFindOIDInfo = _crypt32.lookupFunction<
    Pointer<CRYPT_OID_INFO> Function(
  Uint32 dwKeyType,
  Pointer pvKey,
  Uint32 dwGroupId,
),
    Pointer<CRYPT_OID_INFO> Function(
  int dwKeyType,
  Pointer pvKey,
  int dwGroupId,
)>('CryptFindOIDInfo');

int CryptFormatObject(
  int dwCertEncodingType,
  int dwFormatType,
  int dwFormatStrType,
  Pointer pFormatStruct,
  Pointer<Utf8> lpszStructType,
  Pointer<Uint8> pbEncoded,
  int cbEncoded,
  Pointer pbFormat,
  Pointer<Uint32> pcbFormat,
) =>
    _CryptFormatObject(
      dwCertEncodingType,
      dwFormatType,
      dwFormatStrType,
      pFormatStruct,
      lpszStructType,
      pbEncoded,
      cbEncoded,
      pbFormat,
      pcbFormat,
    );

late final _CryptFormatObject = _crypt32.lookupFunction<
    Int32 Function(
  Uint32 dwCertEncodingType,
  Uint32 dwFormatType,
  Uint32 dwFormatStrType,
  Pointer pFormatStruct,
  Pointer<Utf8> lpszStructType,
  Pointer<Uint8> pbEncoded,
  Uint32 cbEncoded,
  Pointer pbFormat,
  Pointer<Uint32> pcbFormat,
),
    int Function(
  int dwCertEncodingType,
  int dwFormatType,
  int dwFormatStrType,
  Pointer pFormatStruct,
  Pointer<Utf8> lpszStructType,
  Pointer<Uint8> pbEncoded,
  int cbEncoded,
  Pointer pbFormat,
  Pointer<Uint32> pcbFormat,
)>('CryptFormatObject');

int CryptFreeOIDFunctionAddress(
  Pointer hFuncAddr,
  int dwFlags,
) =>
    _CryptFreeOIDFunctionAddress(
      hFuncAddr,
      dwFlags,
    );

late final _CryptFreeOIDFunctionAddress = _crypt32.lookupFunction<
    Int32 Function(
  Pointer hFuncAddr,
  Uint32 dwFlags,
),
    int Function(
  Pointer hFuncAddr,
  int dwFlags,
)>('CryptFreeOIDFunctionAddress');

int CryptGetAsyncParam(
  int hAsync,
  Pointer<Utf8> pszParamOid,
  Pointer<Pointer> ppvParam,
  Pointer<Pointer<NativeFunction<PFN_CRYPT_ASYNC_PARAM_FREE_FUNC>>> ppfnFree,
) =>
    _CryptGetAsyncParam(
      hAsync,
      pszParamOid,
      ppvParam,
      ppfnFree,
    );

late final _CryptGetAsyncParam = _crypt32.lookupFunction<
    Int32 Function(
  IntPtr hAsync,
  Pointer<Utf8> pszParamOid,
  Pointer<Pointer> ppvParam,
  Pointer<Pointer<NativeFunction<PFN_CRYPT_ASYNC_PARAM_FREE_FUNC>>> ppfnFree,
),
    int Function(
  int hAsync,
  Pointer<Utf8> pszParamOid,
  Pointer<Pointer> ppvParam,
  Pointer<Pointer<NativeFunction<PFN_CRYPT_ASYNC_PARAM_FREE_FUNC>>> ppfnFree,
)>('CryptGetAsyncParam');

int CryptGetDefaultOIDDllList(
  Pointer hFuncSet,
  int dwEncodingType,
  Pointer<Utf16> pwszDllList,
  Pointer<Uint32> pcchDllList,
) =>
    _CryptGetDefaultOIDDllList(
      hFuncSet,
      dwEncodingType,
      pwszDllList,
      pcchDllList,
    );

late final _CryptGetDefaultOIDDllList = _crypt32.lookupFunction<
    Int32 Function(
  Pointer hFuncSet,
  Uint32 dwEncodingType,
  Pointer<Utf16> pwszDllList,
  Pointer<Uint32> pcchDllList,
),
    int Function(
  Pointer hFuncSet,
  int dwEncodingType,
  Pointer<Utf16> pwszDllList,
  Pointer<Uint32> pcchDllList,
)>('CryptGetDefaultOIDDllList');

int CryptGetDefaultOIDFunctionAddress(
  Pointer hFuncSet,
  int dwEncodingType,
  Pointer<Utf16> pwszDll,
  int dwFlags,
  Pointer<Pointer> ppvFuncAddr,
  Pointer<Pointer> phFuncAddr,
) =>
    _CryptGetDefaultOIDFunctionAddress(
      hFuncSet,
      dwEncodingType,
      pwszDll,
      dwFlags,
      ppvFuncAddr,
      phFuncAddr,
    );

late final _CryptGetDefaultOIDFunctionAddress = _crypt32.lookupFunction<
    Int32 Function(
  Pointer hFuncSet,
  Uint32 dwEncodingType,
  Pointer<Utf16> pwszDll,
  Uint32 dwFlags,
  Pointer<Pointer> ppvFuncAddr,
  Pointer<Pointer> phFuncAddr,
),
    int Function(
  Pointer hFuncSet,
  int dwEncodingType,
  Pointer<Utf16> pwszDll,
  int dwFlags,
  Pointer<Pointer> ppvFuncAddr,
  Pointer<Pointer> phFuncAddr,
)>('CryptGetDefaultOIDFunctionAddress');

int CryptGetKeyIdentifierProperty(
  Pointer<CRYPTOAPI_BLOB> pKeyIdentifier,
  int dwPropId,
  int dwFlags,
  Pointer<Utf16> pwszComputerName,
  Pointer pvReserved,
  Pointer pvData,
  Pointer<Uint32> pcbData,
) =>
    _CryptGetKeyIdentifierProperty(
      pKeyIdentifier,
      dwPropId,
      dwFlags,
      pwszComputerName,
      pvReserved,
      pvData,
      pcbData,
    );

late final _CryptGetKeyIdentifierProperty = _crypt32.lookupFunction<
    Int32 Function(
  Pointer<CRYPTOAPI_BLOB> pKeyIdentifier,
  Uint32 dwPropId,
  Uint32 dwFlags,
  Pointer<Utf16> pwszComputerName,
  Pointer pvReserved,
  Pointer pvData,
  Pointer<Uint32> pcbData,
),
    int Function(
  Pointer<CRYPTOAPI_BLOB> pKeyIdentifier,
  int dwPropId,
  int dwFlags,
  Pointer<Utf16> pwszComputerName,
  Pointer pvReserved,
  Pointer pvData,
  Pointer<Uint32> pcbData,
)>('CryptGetKeyIdentifierProperty');

Pointer CryptGetMessageCertificates(
  int dwMsgAndCertEncodingType,
  int hCryptProv,
  int dwFlags,
  Pointer<Uint8> pbSignedBlob,
  int cbSignedBlob,
) =>
    _CryptGetMessageCertificates(
      dwMsgAndCertEncodingType,
      hCryptProv,
      dwFlags,
      pbSignedBlob,
      cbSignedBlob,
    );

late final _CryptGetMessageCertificates = _crypt32.lookupFunction<
    Pointer Function(
  Uint32 dwMsgAndCertEncodingType,
  IntPtr hCryptProv,
  Uint32 dwFlags,
  Pointer<Uint8> pbSignedBlob,
  Uint32 cbSignedBlob,
),
    Pointer Function(
  int dwMsgAndCertEncodingType,
  int hCryptProv,
  int dwFlags,
  Pointer<Uint8> pbSignedBlob,
  int cbSignedBlob,
)>('CryptGetMessageCertificates');

int CryptGetMessageSignerCount(
  int dwMsgEncodingType,
  Pointer<Uint8> pbSignedBlob,
  int cbSignedBlob,
) =>
    _CryptGetMessageSignerCount(
      dwMsgEncodingType,
      pbSignedBlob,
      cbSignedBlob,
    );

late final _CryptGetMessageSignerCount = _crypt32.lookupFunction<
    Int32 Function(
  Uint32 dwMsgEncodingType,
  Pointer<Uint8> pbSignedBlob,
  Uint32 cbSignedBlob,
),
    int Function(
  int dwMsgEncodingType,
  Pointer<Uint8> pbSignedBlob,
  int cbSignedBlob,
)>('CryptGetMessageSignerCount');

int CryptGetOIDFunctionAddress(
  Pointer hFuncSet,
  int dwEncodingType,
  Pointer<Utf8> pszOID,
  int dwFlags,
  Pointer<Pointer> ppvFuncAddr,
  Pointer<Pointer> phFuncAddr,
) =>
    _CryptGetOIDFunctionAddress(
      hFuncSet,
      dwEncodingType,
      pszOID,
      dwFlags,
      ppvFuncAddr,
      phFuncAddr,
    );

late final _CryptGetOIDFunctionAddress = _crypt32.lookupFunction<
    Int32 Function(
  Pointer hFuncSet,
  Uint32 dwEncodingType,
  Pointer<Utf8> pszOID,
  Uint32 dwFlags,
  Pointer<Pointer> ppvFuncAddr,
  Pointer<Pointer> phFuncAddr,
),
    int Function(
  Pointer hFuncSet,
  int dwEncodingType,
  Pointer<Utf8> pszOID,
  int dwFlags,
  Pointer<Pointer> ppvFuncAddr,
  Pointer<Pointer> phFuncAddr,
)>('CryptGetOIDFunctionAddress');

int CryptGetOIDFunctionValue(
  int dwEncodingType,
  Pointer<Utf8> pszFuncName,
  Pointer<Utf8> pszOID,
  Pointer<Utf16> pwszValueName,
  Pointer<Uint32> pdwValueType,
  Pointer<Uint8> pbValueData,
  Pointer<Uint32> pcbValueData,
) =>
    _CryptGetOIDFunctionValue(
      dwEncodingType,
      pszFuncName,
      pszOID,
      pwszValueName,
      pdwValueType,
      pbValueData,
      pcbValueData,
    );

late final _CryptGetOIDFunctionValue = _crypt32.lookupFunction<
    Int32 Function(
  Uint32 dwEncodingType,
  Pointer<Utf8> pszFuncName,
  Pointer<Utf8> pszOID,
  Pointer<Utf16> pwszValueName,
  Pointer<Uint32> pdwValueType,
  Pointer<Uint8> pbValueData,
  Pointer<Uint32> pcbValueData,
),
    int Function(
  int dwEncodingType,
  Pointer<Utf8> pszFuncName,
  Pointer<Utf8> pszOID,
  Pointer<Utf16> pwszValueName,
  Pointer<Uint32> pdwValueType,
  Pointer<Uint8> pbValueData,
  Pointer<Uint32> pcbValueData,
)>('CryptGetOIDFunctionValue');

int CryptHashCertificate(
  int hCryptProv,
  int Algid,
  int dwFlags,
  Pointer<Uint8> pbEncoded,
  int cbEncoded,
  Pointer<Uint8> pbComputedHash,
  Pointer<Uint32> pcbComputedHash,
) =>
    _CryptHashCertificate(
      hCryptProv,
      Algid,
      dwFlags,
      pbEncoded,
      cbEncoded,
      pbComputedHash,
      pcbComputedHash,
    );

late final _CryptHashCertificate = _crypt32.lookupFunction<
    Int32 Function(
  IntPtr hCryptProv,
  Uint32 Algid,
  Uint32 dwFlags,
  Pointer<Uint8> pbEncoded,
  Uint32 cbEncoded,
  Pointer<Uint8> pbComputedHash,
  Pointer<Uint32> pcbComputedHash,
),
    int Function(
  int hCryptProv,
  int Algid,
  int dwFlags,
  Pointer<Uint8> pbEncoded,
  int cbEncoded,
  Pointer<Uint8> pbComputedHash,
  Pointer<Uint32> pcbComputedHash,
)>('CryptHashCertificate');

int CryptHashCertificate2(
  Pointer<Utf16> pwszCNGHashAlgid,
  int dwFlags,
  Pointer pvReserved,
  Pointer<Uint8> pbEncoded,
  int cbEncoded,
  Pointer<Uint8> pbComputedHash,
  Pointer<Uint32> pcbComputedHash,
) =>
    _CryptHashCertificate2(
      pwszCNGHashAlgid,
      dwFlags,
      pvReserved,
      pbEncoded,
      cbEncoded,
      pbComputedHash,
      pcbComputedHash,
    );

late final _CryptHashCertificate2 = _crypt32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwszCNGHashAlgid,
  Uint32 dwFlags,
  Pointer pvReserved,
  Pointer<Uint8> pbEncoded,
  Uint32 cbEncoded,
  Pointer<Uint8> pbComputedHash,
  Pointer<Uint32> pcbComputedHash,
),
    int Function(
  Pointer<Utf16> pwszCNGHashAlgid,
  int dwFlags,
  Pointer pvReserved,
  Pointer<Uint8> pbEncoded,
  int cbEncoded,
  Pointer<Uint8> pbComputedHash,
  Pointer<Uint32> pcbComputedHash,
)>('CryptHashCertificate2');

int CryptHashMessage(
  Pointer<CRYPT_HASH_MESSAGE_PARA> pHashPara,
  int fDetachedHash,
  int cToBeHashed,
  Pointer<Pointer<Uint8>> rgpbToBeHashed,
  Pointer<Uint32> rgcbToBeHashed,
  Pointer<Uint8> pbHashedBlob,
  Pointer<Uint32> pcbHashedBlob,
  Pointer<Uint8> pbComputedHash,
  Pointer<Uint32> pcbComputedHash,
) =>
    _CryptHashMessage(
      pHashPara,
      fDetachedHash,
      cToBeHashed,
      rgpbToBeHashed,
      rgcbToBeHashed,
      pbHashedBlob,
      pcbHashedBlob,
      pbComputedHash,
      pcbComputedHash,
    );

late final _CryptHashMessage = _crypt32.lookupFunction<
    Int32 Function(
  Pointer<CRYPT_HASH_MESSAGE_PARA> pHashPara,
  Int32 fDetachedHash,
  Uint32 cToBeHashed,
  Pointer<Pointer<Uint8>> rgpbToBeHashed,
  Pointer<Uint32> rgcbToBeHashed,
  Pointer<Uint8> pbHashedBlob,
  Pointer<Uint32> pcbHashedBlob,
  Pointer<Uint8> pbComputedHash,
  Pointer<Uint32> pcbComputedHash,
),
    int Function(
  Pointer<CRYPT_HASH_MESSAGE_PARA> pHashPara,
  int fDetachedHash,
  int cToBeHashed,
  Pointer<Pointer<Uint8>> rgpbToBeHashed,
  Pointer<Uint32> rgcbToBeHashed,
  Pointer<Uint8> pbHashedBlob,
  Pointer<Uint32> pcbHashedBlob,
  Pointer<Uint8> pbComputedHash,
  Pointer<Uint32> pcbComputedHash,
)>('CryptHashMessage');

int CryptHashPublicKeyInfo(
  int hCryptProv,
  int Algid,
  int dwFlags,
  int dwCertEncodingType,
  Pointer<CERT_PUBLIC_KEY_INFO> pInfo,
  Pointer<Uint8> pbComputedHash,
  Pointer<Uint32> pcbComputedHash,
) =>
    _CryptHashPublicKeyInfo(
      hCryptProv,
      Algid,
      dwFlags,
      dwCertEncodingType,
      pInfo,
      pbComputedHash,
      pcbComputedHash,
    );

late final _CryptHashPublicKeyInfo = _crypt32.lookupFunction<
    Int32 Function(
  IntPtr hCryptProv,
  Uint32 Algid,
  Uint32 dwFlags,
  Uint32 dwCertEncodingType,
  Pointer<CERT_PUBLIC_KEY_INFO> pInfo,
  Pointer<Uint8> pbComputedHash,
  Pointer<Uint32> pcbComputedHash,
),
    int Function(
  int hCryptProv,
  int Algid,
  int dwFlags,
  int dwCertEncodingType,
  Pointer<CERT_PUBLIC_KEY_INFO> pInfo,
  Pointer<Uint8> pbComputedHash,
  Pointer<Uint32> pcbComputedHash,
)>('CryptHashPublicKeyInfo');

int CryptHashToBeSigned(
  int hCryptProv,
  int dwCertEncodingType,
  Pointer<Uint8> pbEncoded,
  int cbEncoded,
  Pointer<Uint8> pbComputedHash,
  Pointer<Uint32> pcbComputedHash,
) =>
    _CryptHashToBeSigned(
      hCryptProv,
      dwCertEncodingType,
      pbEncoded,
      cbEncoded,
      pbComputedHash,
      pcbComputedHash,
    );

late final _CryptHashToBeSigned = _crypt32.lookupFunction<
    Int32 Function(
  IntPtr hCryptProv,
  Uint32 dwCertEncodingType,
  Pointer<Uint8> pbEncoded,
  Uint32 cbEncoded,
  Pointer<Uint8> pbComputedHash,
  Pointer<Uint32> pcbComputedHash,
),
    int Function(
  int hCryptProv,
  int dwCertEncodingType,
  Pointer<Uint8> pbEncoded,
  int cbEncoded,
  Pointer<Uint8> pbComputedHash,
  Pointer<Uint32> pcbComputedHash,
)>('CryptHashToBeSigned');

int CryptImportPKCS8(
  CRYPT_PKCS8_IMPORT_PARAMS sPrivateKeyAndParams,
  int dwFlags,
  Pointer<IntPtr> phCryptProv,
  Pointer pvAuxInfo,
) =>
    _CryptImportPKCS8(
      sPrivateKeyAndParams,
      dwFlags,
      phCryptProv,
      pvAuxInfo,
    );

late final _CryptImportPKCS8 = _crypt32.lookupFunction<
    Int32 Function(
  CRYPT_PKCS8_IMPORT_PARAMS sPrivateKeyAndParams,
  Uint32 dwFlags,
  Pointer<IntPtr> phCryptProv,
  Pointer pvAuxInfo,
),
    int Function(
  CRYPT_PKCS8_IMPORT_PARAMS sPrivateKeyAndParams,
  int dwFlags,
  Pointer<IntPtr> phCryptProv,
  Pointer pvAuxInfo,
)>('CryptImportPKCS8');

int CryptImportPublicKeyInfo(
  int hCryptProv,
  int dwCertEncodingType,
  Pointer<CERT_PUBLIC_KEY_INFO> pInfo,
  Pointer<IntPtr> phKey,
) =>
    _CryptImportPublicKeyInfo(
      hCryptProv,
      dwCertEncodingType,
      pInfo,
      phKey,
    );

late final _CryptImportPublicKeyInfo = _crypt32.lookupFunction<
    Int32 Function(
  IntPtr hCryptProv,
  Uint32 dwCertEncodingType,
  Pointer<CERT_PUBLIC_KEY_INFO> pInfo,
  Pointer<IntPtr> phKey,
),
    int Function(
  int hCryptProv,
  int dwCertEncodingType,
  Pointer<CERT_PUBLIC_KEY_INFO> pInfo,
  Pointer<IntPtr> phKey,
)>('CryptImportPublicKeyInfo');

int CryptImportPublicKeyInfoEx(
  int hCryptProv,
  int dwCertEncodingType,
  Pointer<CERT_PUBLIC_KEY_INFO> pInfo,
  int aiKeyAlg,
  int dwFlags,
  Pointer pvAuxInfo,
  Pointer<IntPtr> phKey,
) =>
    _CryptImportPublicKeyInfoEx(
      hCryptProv,
      dwCertEncodingType,
      pInfo,
      aiKeyAlg,
      dwFlags,
      pvAuxInfo,
      phKey,
    );

late final _CryptImportPublicKeyInfoEx = _crypt32.lookupFunction<
    Int32 Function(
  IntPtr hCryptProv,
  Uint32 dwCertEncodingType,
  Pointer<CERT_PUBLIC_KEY_INFO> pInfo,
  Uint32 aiKeyAlg,
  Uint32 dwFlags,
  Pointer pvAuxInfo,
  Pointer<IntPtr> phKey,
),
    int Function(
  int hCryptProv,
  int dwCertEncodingType,
  Pointer<CERT_PUBLIC_KEY_INFO> pInfo,
  int aiKeyAlg,
  int dwFlags,
  Pointer pvAuxInfo,
  Pointer<IntPtr> phKey,
)>('CryptImportPublicKeyInfoEx');

int CryptImportPublicKeyInfoEx2(
  int dwCertEncodingType,
  Pointer<CERT_PUBLIC_KEY_INFO> pInfo,
  int dwFlags,
  Pointer pvAuxInfo,
  Pointer<IntPtr> phKey,
) =>
    _CryptImportPublicKeyInfoEx2(
      dwCertEncodingType,
      pInfo,
      dwFlags,
      pvAuxInfo,
      phKey,
    );

late final _CryptImportPublicKeyInfoEx2 = _crypt32.lookupFunction<
    Int32 Function(
  Uint32 dwCertEncodingType,
  Pointer<CERT_PUBLIC_KEY_INFO> pInfo,
  Uint32 dwFlags,
  Pointer pvAuxInfo,
  Pointer<IntPtr> phKey,
),
    int Function(
  int dwCertEncodingType,
  Pointer<CERT_PUBLIC_KEY_INFO> pInfo,
  int dwFlags,
  Pointer pvAuxInfo,
  Pointer<IntPtr> phKey,
)>('CryptImportPublicKeyInfoEx2');

Pointer CryptInitOIDFunctionSet(
  Pointer<Utf8> pszFuncName,
  int dwFlags,
) =>
    _CryptInitOIDFunctionSet(
      pszFuncName,
      dwFlags,
    );

late final _CryptInitOIDFunctionSet = _crypt32.lookupFunction<
    Pointer Function(
  Pointer<Utf8> pszFuncName,
  Uint32 dwFlags,
),
    Pointer Function(
  Pointer<Utf8> pszFuncName,
  int dwFlags,
)>('CryptInitOIDFunctionSet');

int CryptInstallDefaultContext(
  int hCryptProv,
  int dwDefaultType,
  Pointer pvDefaultPara,
  int dwFlags,
  Pointer pvReserved,
  Pointer<Pointer> phDefaultContext,
) =>
    _CryptInstallDefaultContext(
      hCryptProv,
      dwDefaultType,
      pvDefaultPara,
      dwFlags,
      pvReserved,
      phDefaultContext,
    );

late final _CryptInstallDefaultContext = _crypt32.lookupFunction<
    Int32 Function(
  IntPtr hCryptProv,
  Uint32 dwDefaultType,
  Pointer pvDefaultPara,
  Uint32 dwFlags,
  Pointer pvReserved,
  Pointer<Pointer> phDefaultContext,
),
    int Function(
  int hCryptProv,
  int dwDefaultType,
  Pointer pvDefaultPara,
  int dwFlags,
  Pointer pvReserved,
  Pointer<Pointer> phDefaultContext,
)>('CryptInstallDefaultContext');

int CryptInstallOIDFunctionAddress(
  int hModule,
  int dwEncodingType,
  Pointer<Utf8> pszFuncName,
  int cFuncEntry,
  Pointer<CRYPT_OID_FUNC_ENTRY> rgFuncEntry,
  int dwFlags,
) =>
    _CryptInstallOIDFunctionAddress(
      hModule,
      dwEncodingType,
      pszFuncName,
      cFuncEntry,
      rgFuncEntry,
      dwFlags,
    );

late final _CryptInstallOIDFunctionAddress = _crypt32.lookupFunction<
    Int32 Function(
  IntPtr hModule,
  Uint32 dwEncodingType,
  Pointer<Utf8> pszFuncName,
  Uint32 cFuncEntry,
  Pointer<CRYPT_OID_FUNC_ENTRY> rgFuncEntry,
  Uint32 dwFlags,
),
    int Function(
  int hModule,
  int dwEncodingType,
  Pointer<Utf8> pszFuncName,
  int cFuncEntry,
  Pointer<CRYPT_OID_FUNC_ENTRY> rgFuncEntry,
  int dwFlags,
)>('CryptInstallOIDFunctionAddress');

Pointer CryptMemAlloc(
  int cbSize,
) =>
    _CryptMemAlloc(
      cbSize,
    );

late final _CryptMemAlloc = _crypt32.lookupFunction<
    Pointer Function(
  Uint32 cbSize,
),
    Pointer Function(
  int cbSize,
)>('CryptMemAlloc');

void CryptMemFree(
  Pointer pv,
) =>
    _CryptMemFree(
      pv,
    );

late final _CryptMemFree = _crypt32.lookupFunction<
    Void Function(
  Pointer pv,
),
    void Function(
  Pointer pv,
)>('CryptMemFree');

Pointer CryptMemRealloc(
  Pointer pv,
  int cbSize,
) =>
    _CryptMemRealloc(
      pv,
      cbSize,
    );

late final _CryptMemRealloc = _crypt32.lookupFunction<
    Pointer Function(
  Pointer pv,
  Uint32 cbSize,
),
    Pointer Function(
  Pointer pv,
  int cbSize,
)>('CryptMemRealloc');

int CryptMsgCalculateEncodedLength(
  int dwMsgEncodingType,
  int dwFlags,
  int dwMsgType,
  Pointer pvMsgEncodeInfo,
  Pointer<Utf8> pszInnerContentObjID,
  int cbData,
) =>
    _CryptMsgCalculateEncodedLength(
      dwMsgEncodingType,
      dwFlags,
      dwMsgType,
      pvMsgEncodeInfo,
      pszInnerContentObjID,
      cbData,
    );

late final _CryptMsgCalculateEncodedLength = _crypt32.lookupFunction<
    Uint32 Function(
  Uint32 dwMsgEncodingType,
  Uint32 dwFlags,
  Uint32 dwMsgType,
  Pointer pvMsgEncodeInfo,
  Pointer<Utf8> pszInnerContentObjID,
  Uint32 cbData,
),
    int Function(
  int dwMsgEncodingType,
  int dwFlags,
  int dwMsgType,
  Pointer pvMsgEncodeInfo,
  Pointer<Utf8> pszInnerContentObjID,
  int cbData,
)>('CryptMsgCalculateEncodedLength');

int CryptMsgClose(
  Pointer hCryptMsg,
) =>
    _CryptMsgClose(
      hCryptMsg,
    );

late final _CryptMsgClose = _crypt32.lookupFunction<
    Int32 Function(
  Pointer hCryptMsg,
),
    int Function(
  Pointer hCryptMsg,
)>('CryptMsgClose');

int CryptMsgControl(
  Pointer hCryptMsg,
  int dwFlags,
  int dwCtrlType,
  Pointer pvCtrlPara,
) =>
    _CryptMsgControl(
      hCryptMsg,
      dwFlags,
      dwCtrlType,
      pvCtrlPara,
    );

late final _CryptMsgControl = _crypt32.lookupFunction<
    Int32 Function(
  Pointer hCryptMsg,
  Uint32 dwFlags,
  Uint32 dwCtrlType,
  Pointer pvCtrlPara,
),
    int Function(
  Pointer hCryptMsg,
  int dwFlags,
  int dwCtrlType,
  Pointer pvCtrlPara,
)>('CryptMsgControl');

int CryptMsgCountersign(
  Pointer hCryptMsg,
  int dwIndex,
  int cCountersigners,
  Pointer<CMSG_SIGNER_ENCODE_INFO> rgCountersigners,
) =>
    _CryptMsgCountersign(
      hCryptMsg,
      dwIndex,
      cCountersigners,
      rgCountersigners,
    );

late final _CryptMsgCountersign = _crypt32.lookupFunction<
    Int32 Function(
  Pointer hCryptMsg,
  Uint32 dwIndex,
  Uint32 cCountersigners,
  Pointer<CMSG_SIGNER_ENCODE_INFO> rgCountersigners,
),
    int Function(
  Pointer hCryptMsg,
  int dwIndex,
  int cCountersigners,
  Pointer<CMSG_SIGNER_ENCODE_INFO> rgCountersigners,
)>('CryptMsgCountersign');

int CryptMsgCountersignEncoded(
  int dwEncodingType,
  Pointer<Uint8> pbSignerInfo,
  int cbSignerInfo,
  int cCountersigners,
  Pointer<CMSG_SIGNER_ENCODE_INFO> rgCountersigners,
  Pointer<Uint8> pbCountersignature,
  Pointer<Uint32> pcbCountersignature,
) =>
    _CryptMsgCountersignEncoded(
      dwEncodingType,
      pbSignerInfo,
      cbSignerInfo,
      cCountersigners,
      rgCountersigners,
      pbCountersignature,
      pcbCountersignature,
    );

late final _CryptMsgCountersignEncoded = _crypt32.lookupFunction<
    Int32 Function(
  Uint32 dwEncodingType,
  Pointer<Uint8> pbSignerInfo,
  Uint32 cbSignerInfo,
  Uint32 cCountersigners,
  Pointer<CMSG_SIGNER_ENCODE_INFO> rgCountersigners,
  Pointer<Uint8> pbCountersignature,
  Pointer<Uint32> pcbCountersignature,
),
    int Function(
  int dwEncodingType,
  Pointer<Uint8> pbSignerInfo,
  int cbSignerInfo,
  int cCountersigners,
  Pointer<CMSG_SIGNER_ENCODE_INFO> rgCountersigners,
  Pointer<Uint8> pbCountersignature,
  Pointer<Uint32> pcbCountersignature,
)>('CryptMsgCountersignEncoded');

Pointer CryptMsgDuplicate(
  Pointer hCryptMsg,
) =>
    _CryptMsgDuplicate(
      hCryptMsg,
    );

late final _CryptMsgDuplicate = _crypt32.lookupFunction<
    Pointer Function(
  Pointer hCryptMsg,
),
    Pointer Function(
  Pointer hCryptMsg,
)>('CryptMsgDuplicate');

int CryptMsgEncodeAndSignCTL(
  int dwMsgEncodingType,
  Pointer<CTL_INFO> pCtlInfo,
  Pointer<CMSG_SIGNED_ENCODE_INFO> pSignInfo,
  int dwFlags,
  Pointer<Uint8> pbEncoded,
  Pointer<Uint32> pcbEncoded,
) =>
    _CryptMsgEncodeAndSignCTL(
      dwMsgEncodingType,
      pCtlInfo,
      pSignInfo,
      dwFlags,
      pbEncoded,
      pcbEncoded,
    );

late final _CryptMsgEncodeAndSignCTL = _crypt32.lookupFunction<
    Int32 Function(
  Uint32 dwMsgEncodingType,
  Pointer<CTL_INFO> pCtlInfo,
  Pointer<CMSG_SIGNED_ENCODE_INFO> pSignInfo,
  Uint32 dwFlags,
  Pointer<Uint8> pbEncoded,
  Pointer<Uint32> pcbEncoded,
),
    int Function(
  int dwMsgEncodingType,
  Pointer<CTL_INFO> pCtlInfo,
  Pointer<CMSG_SIGNED_ENCODE_INFO> pSignInfo,
  int dwFlags,
  Pointer<Uint8> pbEncoded,
  Pointer<Uint32> pcbEncoded,
)>('CryptMsgEncodeAndSignCTL');

int CryptMsgGetAndVerifySigner(
  Pointer hCryptMsg,
  int cSignerStore,
  Pointer<Pointer> rghSignerStore,
  int dwFlags,
  Pointer<Pointer<CERT_CONTEXT>> ppSigner,
  Pointer<Uint32> pdwSignerIndex,
) =>
    _CryptMsgGetAndVerifySigner(
      hCryptMsg,
      cSignerStore,
      rghSignerStore,
      dwFlags,
      ppSigner,
      pdwSignerIndex,
    );

late final _CryptMsgGetAndVerifySigner = _crypt32.lookupFunction<
    Int32 Function(
  Pointer hCryptMsg,
  Uint32 cSignerStore,
  Pointer<Pointer> rghSignerStore,
  Uint32 dwFlags,
  Pointer<Pointer<CERT_CONTEXT>> ppSigner,
  Pointer<Uint32> pdwSignerIndex,
),
    int Function(
  Pointer hCryptMsg,
  int cSignerStore,
  Pointer<Pointer> rghSignerStore,
  int dwFlags,
  Pointer<Pointer<CERT_CONTEXT>> ppSigner,
  Pointer<Uint32> pdwSignerIndex,
)>('CryptMsgGetAndVerifySigner');

int CryptMsgGetParam(
  Pointer hCryptMsg,
  int dwParamType,
  int dwIndex,
  Pointer pvData,
  Pointer<Uint32> pcbData,
) =>
    _CryptMsgGetParam(
      hCryptMsg,
      dwParamType,
      dwIndex,
      pvData,
      pcbData,
    );

late final _CryptMsgGetParam = _crypt32.lookupFunction<
    Int32 Function(
  Pointer hCryptMsg,
  Uint32 dwParamType,
  Uint32 dwIndex,
  Pointer pvData,
  Pointer<Uint32> pcbData,
),
    int Function(
  Pointer hCryptMsg,
  int dwParamType,
  int dwIndex,
  Pointer pvData,
  Pointer<Uint32> pcbData,
)>('CryptMsgGetParam');

Pointer CryptMsgOpenToDecode(
  int dwMsgEncodingType,
  int dwFlags,
  int dwMsgType,
  int hCryptProv,
  Pointer<CERT_INFO> pRecipientInfo,
  Pointer<CMSG_STREAM_INFO> pStreamInfo,
) =>
    _CryptMsgOpenToDecode(
      dwMsgEncodingType,
      dwFlags,
      dwMsgType,
      hCryptProv,
      pRecipientInfo,
      pStreamInfo,
    );

late final _CryptMsgOpenToDecode = _crypt32.lookupFunction<
    Pointer Function(
  Uint32 dwMsgEncodingType,
  Uint32 dwFlags,
  Uint32 dwMsgType,
  IntPtr hCryptProv,
  Pointer<CERT_INFO> pRecipientInfo,
  Pointer<CMSG_STREAM_INFO> pStreamInfo,
),
    Pointer Function(
  int dwMsgEncodingType,
  int dwFlags,
  int dwMsgType,
  int hCryptProv,
  Pointer<CERT_INFO> pRecipientInfo,
  Pointer<CMSG_STREAM_INFO> pStreamInfo,
)>('CryptMsgOpenToDecode');

Pointer CryptMsgOpenToEncode(
  int dwMsgEncodingType,
  int dwFlags,
  int dwMsgType,
  Pointer pvMsgEncodeInfo,
  Pointer<Utf8> pszInnerContentObjID,
  Pointer<CMSG_STREAM_INFO> pStreamInfo,
) =>
    _CryptMsgOpenToEncode(
      dwMsgEncodingType,
      dwFlags,
      dwMsgType,
      pvMsgEncodeInfo,
      pszInnerContentObjID,
      pStreamInfo,
    );

late final _CryptMsgOpenToEncode = _crypt32.lookupFunction<
    Pointer Function(
  Uint32 dwMsgEncodingType,
  Uint32 dwFlags,
  Uint32 dwMsgType,
  Pointer pvMsgEncodeInfo,
  Pointer<Utf8> pszInnerContentObjID,
  Pointer<CMSG_STREAM_INFO> pStreamInfo,
),
    Pointer Function(
  int dwMsgEncodingType,
  int dwFlags,
  int dwMsgType,
  Pointer pvMsgEncodeInfo,
  Pointer<Utf8> pszInnerContentObjID,
  Pointer<CMSG_STREAM_INFO> pStreamInfo,
)>('CryptMsgOpenToEncode');

int CryptMsgSignCTL(
  int dwMsgEncodingType,
  Pointer<Uint8> pbCtlContent,
  int cbCtlContent,
  Pointer<CMSG_SIGNED_ENCODE_INFO> pSignInfo,
  int dwFlags,
  Pointer<Uint8> pbEncoded,
  Pointer<Uint32> pcbEncoded,
) =>
    _CryptMsgSignCTL(
      dwMsgEncodingType,
      pbCtlContent,
      cbCtlContent,
      pSignInfo,
      dwFlags,
      pbEncoded,
      pcbEncoded,
    );

late final _CryptMsgSignCTL = _crypt32.lookupFunction<
    Int32 Function(
  Uint32 dwMsgEncodingType,
  Pointer<Uint8> pbCtlContent,
  Uint32 cbCtlContent,
  Pointer<CMSG_SIGNED_ENCODE_INFO> pSignInfo,
  Uint32 dwFlags,
  Pointer<Uint8> pbEncoded,
  Pointer<Uint32> pcbEncoded,
),
    int Function(
  int dwMsgEncodingType,
  Pointer<Uint8> pbCtlContent,
  int cbCtlContent,
  Pointer<CMSG_SIGNED_ENCODE_INFO> pSignInfo,
  int dwFlags,
  Pointer<Uint8> pbEncoded,
  Pointer<Uint32> pcbEncoded,
)>('CryptMsgSignCTL');

int CryptMsgUpdate(
  Pointer hCryptMsg,
  Pointer<Uint8> pbData,
  int cbData,
  int fFinal,
) =>
    _CryptMsgUpdate(
      hCryptMsg,
      pbData,
      cbData,
      fFinal,
    );

late final _CryptMsgUpdate = _crypt32.lookupFunction<
    Int32 Function(
  Pointer hCryptMsg,
  Pointer<Uint8> pbData,
  Uint32 cbData,
  Int32 fFinal,
),
    int Function(
  Pointer hCryptMsg,
  Pointer<Uint8> pbData,
  int cbData,
  int fFinal,
)>('CryptMsgUpdate');

int CryptMsgVerifyCountersignatureEncoded(
  int hCryptProv,
  int dwEncodingType,
  Pointer<Uint8> pbSignerInfo,
  int cbSignerInfo,
  Pointer<Uint8> pbSignerInfoCountersignature,
  int cbSignerInfoCountersignature,
  Pointer<CERT_INFO> pciCountersigner,
) =>
    _CryptMsgVerifyCountersignatureEncoded(
      hCryptProv,
      dwEncodingType,
      pbSignerInfo,
      cbSignerInfo,
      pbSignerInfoCountersignature,
      cbSignerInfoCountersignature,
      pciCountersigner,
    );

late final _CryptMsgVerifyCountersignatureEncoded = _crypt32.lookupFunction<
    Int32 Function(
  IntPtr hCryptProv,
  Uint32 dwEncodingType,
  Pointer<Uint8> pbSignerInfo,
  Uint32 cbSignerInfo,
  Pointer<Uint8> pbSignerInfoCountersignature,
  Uint32 cbSignerInfoCountersignature,
  Pointer<CERT_INFO> pciCountersigner,
),
    int Function(
  int hCryptProv,
  int dwEncodingType,
  Pointer<Uint8> pbSignerInfo,
  int cbSignerInfo,
  Pointer<Uint8> pbSignerInfoCountersignature,
  int cbSignerInfoCountersignature,
  Pointer<CERT_INFO> pciCountersigner,
)>('CryptMsgVerifyCountersignatureEncoded');

int CryptMsgVerifyCountersignatureEncodedEx(
  int hCryptProv,
  int dwEncodingType,
  Pointer<Uint8> pbSignerInfo,
  int cbSignerInfo,
  Pointer<Uint8> pbSignerInfoCountersignature,
  int cbSignerInfoCountersignature,
  int dwSignerType,
  Pointer pvSigner,
  int dwFlags,
  Pointer pvExtra,
) =>
    _CryptMsgVerifyCountersignatureEncodedEx(
      hCryptProv,
      dwEncodingType,
      pbSignerInfo,
      cbSignerInfo,
      pbSignerInfoCountersignature,
      cbSignerInfoCountersignature,
      dwSignerType,
      pvSigner,
      dwFlags,
      pvExtra,
    );

late final _CryptMsgVerifyCountersignatureEncodedEx = _crypt32.lookupFunction<
    Int32 Function(
  IntPtr hCryptProv,
  Uint32 dwEncodingType,
  Pointer<Uint8> pbSignerInfo,
  Uint32 cbSignerInfo,
  Pointer<Uint8> pbSignerInfoCountersignature,
  Uint32 cbSignerInfoCountersignature,
  Uint32 dwSignerType,
  Pointer pvSigner,
  Uint32 dwFlags,
  Pointer pvExtra,
),
    int Function(
  int hCryptProv,
  int dwEncodingType,
  Pointer<Uint8> pbSignerInfo,
  int cbSignerInfo,
  Pointer<Uint8> pbSignerInfoCountersignature,
  int cbSignerInfoCountersignature,
  int dwSignerType,
  Pointer pvSigner,
  int dwFlags,
  Pointer pvExtra,
)>('CryptMsgVerifyCountersignatureEncodedEx');

int CryptProtectData(
  Pointer<CRYPTOAPI_BLOB> pDataIn,
  Pointer<Utf16> szDataDescr,
  Pointer<CRYPTOAPI_BLOB> pOptionalEntropy,
  Pointer pvReserved,
  Pointer<CRYPTPROTECT_PROMPTSTRUCT> pPromptStruct,
  int dwFlags,
  Pointer<CRYPTOAPI_BLOB> pDataOut,
) =>
    _CryptProtectData(
      pDataIn,
      szDataDescr,
      pOptionalEntropy,
      pvReserved,
      pPromptStruct,
      dwFlags,
      pDataOut,
    );

late final _CryptProtectData = _crypt32.lookupFunction<
    Int32 Function(
  Pointer<CRYPTOAPI_BLOB> pDataIn,
  Pointer<Utf16> szDataDescr,
  Pointer<CRYPTOAPI_BLOB> pOptionalEntropy,
  Pointer pvReserved,
  Pointer<CRYPTPROTECT_PROMPTSTRUCT> pPromptStruct,
  Uint32 dwFlags,
  Pointer<CRYPTOAPI_BLOB> pDataOut,
),
    int Function(
  Pointer<CRYPTOAPI_BLOB> pDataIn,
  Pointer<Utf16> szDataDescr,
  Pointer<CRYPTOAPI_BLOB> pOptionalEntropy,
  Pointer pvReserved,
  Pointer<CRYPTPROTECT_PROMPTSTRUCT> pPromptStruct,
  int dwFlags,
  Pointer<CRYPTOAPI_BLOB> pDataOut,
)>('CryptProtectData');

int CryptProtectMemory(
  Pointer pDataIn,
  int cbDataIn,
  int dwFlags,
) =>
    _CryptProtectMemory(
      pDataIn,
      cbDataIn,
      dwFlags,
    );

late final _CryptProtectMemory = _crypt32.lookupFunction<
    Int32 Function(
  Pointer pDataIn,
  Uint32 cbDataIn,
  Uint32 dwFlags,
),
    int Function(
  Pointer pDataIn,
  int cbDataIn,
  int dwFlags,
)>('CryptProtectMemory');

int CryptQueryObject(
  int dwObjectType,
  Pointer pvObject,
  int dwExpectedContentTypeFlags,
  int dwExpectedFormatTypeFlags,
  int dwFlags,
  Pointer<Uint32> pdwMsgAndCertEncodingType,
  Pointer<Uint32> pdwContentType,
  Pointer<Uint32> pdwFormatType,
  Pointer<Pointer> phCertStore,
  Pointer<Pointer> phMsg,
  Pointer<Pointer> ppvContext,
) =>
    _CryptQueryObject(
      dwObjectType,
      pvObject,
      dwExpectedContentTypeFlags,
      dwExpectedFormatTypeFlags,
      dwFlags,
      pdwMsgAndCertEncodingType,
      pdwContentType,
      pdwFormatType,
      phCertStore,
      phMsg,
      ppvContext,
    );

late final _CryptQueryObject = _crypt32.lookupFunction<
    Int32 Function(
  Uint32 dwObjectType,
  Pointer pvObject,
  Uint32 dwExpectedContentTypeFlags,
  Uint32 dwExpectedFormatTypeFlags,
  Uint32 dwFlags,
  Pointer<Uint32> pdwMsgAndCertEncodingType,
  Pointer<Uint32> pdwContentType,
  Pointer<Uint32> pdwFormatType,
  Pointer<Pointer> phCertStore,
  Pointer<Pointer> phMsg,
  Pointer<Pointer> ppvContext,
),
    int Function(
  int dwObjectType,
  Pointer pvObject,
  int dwExpectedContentTypeFlags,
  int dwExpectedFormatTypeFlags,
  int dwFlags,
  Pointer<Uint32> pdwMsgAndCertEncodingType,
  Pointer<Uint32> pdwContentType,
  Pointer<Uint32> pdwFormatType,
  Pointer<Pointer> phCertStore,
  Pointer<Pointer> phMsg,
  Pointer<Pointer> ppvContext,
)>('CryptQueryObject');

int CryptRegisterDefaultOIDFunction(
  int dwEncodingType,
  Pointer<Utf8> pszFuncName,
  int dwIndex,
  Pointer<Utf16> pwszDll,
) =>
    _CryptRegisterDefaultOIDFunction(
      dwEncodingType,
      pszFuncName,
      dwIndex,
      pwszDll,
    );

late final _CryptRegisterDefaultOIDFunction = _crypt32.lookupFunction<
    Int32 Function(
  Uint32 dwEncodingType,
  Pointer<Utf8> pszFuncName,
  Uint32 dwIndex,
  Pointer<Utf16> pwszDll,
),
    int Function(
  int dwEncodingType,
  Pointer<Utf8> pszFuncName,
  int dwIndex,
  Pointer<Utf16> pwszDll,
)>('CryptRegisterDefaultOIDFunction');

int CryptRegisterOIDFunction(
  int dwEncodingType,
  Pointer<Utf8> pszFuncName,
  Pointer<Utf8> pszOID,
  Pointer<Utf16> pwszDll,
  Pointer<Utf8> pszOverrideFuncName,
) =>
    _CryptRegisterOIDFunction(
      dwEncodingType,
      pszFuncName,
      pszOID,
      pwszDll,
      pszOverrideFuncName,
    );

late final _CryptRegisterOIDFunction = _crypt32.lookupFunction<
    Int32 Function(
  Uint32 dwEncodingType,
  Pointer<Utf8> pszFuncName,
  Pointer<Utf8> pszOID,
  Pointer<Utf16> pwszDll,
  Pointer<Utf8> pszOverrideFuncName,
),
    int Function(
  int dwEncodingType,
  Pointer<Utf8> pszFuncName,
  Pointer<Utf8> pszOID,
  Pointer<Utf16> pwszDll,
  Pointer<Utf8> pszOverrideFuncName,
)>('CryptRegisterOIDFunction');

int CryptRegisterOIDInfo(
  Pointer<CRYPT_OID_INFO> pInfo,
  int dwFlags,
) =>
    _CryptRegisterOIDInfo(
      pInfo,
      dwFlags,
    );

late final _CryptRegisterOIDInfo = _crypt32.lookupFunction<
    Int32 Function(
  Pointer<CRYPT_OID_INFO> pInfo,
  Uint32 dwFlags,
),
    int Function(
  Pointer<CRYPT_OID_INFO> pInfo,
  int dwFlags,
)>('CryptRegisterOIDInfo');

int CryptRetrieveTimeStamp(
  Pointer<Utf16> wszUrl,
  int dwRetrievalFlags,
  int dwTimeout,
  Pointer<Utf8> pszHashId,
  Pointer<CRYPT_TIMESTAMP_PARA> pPara,
  Pointer<Uint8> pbData,
  int cbData,
  Pointer<Pointer<CRYPT_TIMESTAMP_CONTEXT>> ppTsContext,
  Pointer<Pointer<CERT_CONTEXT>> ppTsSigner,
  Pointer<Pointer> phStore,
) =>
    _CryptRetrieveTimeStamp(
      wszUrl,
      dwRetrievalFlags,
      dwTimeout,
      pszHashId,
      pPara,
      pbData,
      cbData,
      ppTsContext,
      ppTsSigner,
      phStore,
    );

late final _CryptRetrieveTimeStamp = _crypt32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> wszUrl,
  Uint32 dwRetrievalFlags,
  Uint32 dwTimeout,
  Pointer<Utf8> pszHashId,
  Pointer<CRYPT_TIMESTAMP_PARA> pPara,
  Pointer<Uint8> pbData,
  Uint32 cbData,
  Pointer<Pointer<CRYPT_TIMESTAMP_CONTEXT>> ppTsContext,
  Pointer<Pointer<CERT_CONTEXT>> ppTsSigner,
  Pointer<Pointer> phStore,
),
    int Function(
  Pointer<Utf16> wszUrl,
  int dwRetrievalFlags,
  int dwTimeout,
  Pointer<Utf8> pszHashId,
  Pointer<CRYPT_TIMESTAMP_PARA> pPara,
  Pointer<Uint8> pbData,
  int cbData,
  Pointer<Pointer<CRYPT_TIMESTAMP_CONTEXT>> ppTsContext,
  Pointer<Pointer<CERT_CONTEXT>> ppTsSigner,
  Pointer<Pointer> phStore,
)>('CryptRetrieveTimeStamp');

int CryptSetAsyncParam(
  int hAsync,
  Pointer<Utf8> pszParamOid,
  Pointer pvParam,
  Pointer<NativeFunction<PFN_CRYPT_ASYNC_PARAM_FREE_FUNC>> pfnFree,
) =>
    _CryptSetAsyncParam(
      hAsync,
      pszParamOid,
      pvParam,
      pfnFree,
    );

late final _CryptSetAsyncParam = _crypt32.lookupFunction<
    Int32 Function(
  IntPtr hAsync,
  Pointer<Utf8> pszParamOid,
  Pointer pvParam,
  Pointer<NativeFunction<PFN_CRYPT_ASYNC_PARAM_FREE_FUNC>> pfnFree,
),
    int Function(
  int hAsync,
  Pointer<Utf8> pszParamOid,
  Pointer pvParam,
  Pointer<NativeFunction<PFN_CRYPT_ASYNC_PARAM_FREE_FUNC>> pfnFree,
)>('CryptSetAsyncParam');

int CryptSetKeyIdentifierProperty(
  Pointer<CRYPTOAPI_BLOB> pKeyIdentifier,
  int dwPropId,
  int dwFlags,
  Pointer<Utf16> pwszComputerName,
  Pointer pvReserved,
  Pointer pvData,
) =>
    _CryptSetKeyIdentifierProperty(
      pKeyIdentifier,
      dwPropId,
      dwFlags,
      pwszComputerName,
      pvReserved,
      pvData,
    );

late final _CryptSetKeyIdentifierProperty = _crypt32.lookupFunction<
    Int32 Function(
  Pointer<CRYPTOAPI_BLOB> pKeyIdentifier,
  Uint32 dwPropId,
  Uint32 dwFlags,
  Pointer<Utf16> pwszComputerName,
  Pointer pvReserved,
  Pointer pvData,
),
    int Function(
  Pointer<CRYPTOAPI_BLOB> pKeyIdentifier,
  int dwPropId,
  int dwFlags,
  Pointer<Utf16> pwszComputerName,
  Pointer pvReserved,
  Pointer pvData,
)>('CryptSetKeyIdentifierProperty');

int CryptSetOIDFunctionValue(
  int dwEncodingType,
  Pointer<Utf8> pszFuncName,
  Pointer<Utf8> pszOID,
  Pointer<Utf16> pwszValueName,
  int dwValueType,
  Pointer<Uint8> pbValueData,
  int cbValueData,
) =>
    _CryptSetOIDFunctionValue(
      dwEncodingType,
      pszFuncName,
      pszOID,
      pwszValueName,
      dwValueType,
      pbValueData,
      cbValueData,
    );

late final _CryptSetOIDFunctionValue = _crypt32.lookupFunction<
    Int32 Function(
  Uint32 dwEncodingType,
  Pointer<Utf8> pszFuncName,
  Pointer<Utf8> pszOID,
  Pointer<Utf16> pwszValueName,
  Uint32 dwValueType,
  Pointer<Uint8> pbValueData,
  Uint32 cbValueData,
),
    int Function(
  int dwEncodingType,
  Pointer<Utf8> pszFuncName,
  Pointer<Utf8> pszOID,
  Pointer<Utf16> pwszValueName,
  int dwValueType,
  Pointer<Uint8> pbValueData,
  int cbValueData,
)>('CryptSetOIDFunctionValue');

int CryptSignAndEncodeCertificate(
  int hCryptProvOrNCryptKey,
  int dwKeySpec,
  int dwCertEncodingType,
  Pointer<Utf8> lpszStructType,
  Pointer pvStructInfo,
  Pointer<CRYPT_ALGORITHM_IDENTIFIER> pSignatureAlgorithm,
  Pointer pvHashAuxInfo,
  Pointer<Uint8> pbEncoded,
  Pointer<Uint32> pcbEncoded,
) =>
    _CryptSignAndEncodeCertificate(
      hCryptProvOrNCryptKey,
      dwKeySpec,
      dwCertEncodingType,
      lpszStructType,
      pvStructInfo,
      pSignatureAlgorithm,
      pvHashAuxInfo,
      pbEncoded,
      pcbEncoded,
    );

late final _CryptSignAndEncodeCertificate = _crypt32.lookupFunction<
    Int32 Function(
  IntPtr hCryptProvOrNCryptKey,
  Uint32 dwKeySpec,
  Uint32 dwCertEncodingType,
  Pointer<Utf8> lpszStructType,
  Pointer pvStructInfo,
  Pointer<CRYPT_ALGORITHM_IDENTIFIER> pSignatureAlgorithm,
  Pointer pvHashAuxInfo,
  Pointer<Uint8> pbEncoded,
  Pointer<Uint32> pcbEncoded,
),
    int Function(
  int hCryptProvOrNCryptKey,
  int dwKeySpec,
  int dwCertEncodingType,
  Pointer<Utf8> lpszStructType,
  Pointer pvStructInfo,
  Pointer<CRYPT_ALGORITHM_IDENTIFIER> pSignatureAlgorithm,
  Pointer pvHashAuxInfo,
  Pointer<Uint8> pbEncoded,
  Pointer<Uint32> pcbEncoded,
)>('CryptSignAndEncodeCertificate');

int CryptSignAndEncryptMessage(
  Pointer<CRYPT_SIGN_MESSAGE_PARA> pSignPara,
  Pointer<CRYPT_ENCRYPT_MESSAGE_PARA> pEncryptPara,
  int cRecipientCert,
  Pointer<Pointer<CERT_CONTEXT>> rgpRecipientCert,
  Pointer<Uint8> pbToBeSignedAndEncrypted,
  int cbToBeSignedAndEncrypted,
  Pointer<Uint8> pbSignedAndEncryptedBlob,
  Pointer<Uint32> pcbSignedAndEncryptedBlob,
) =>
    _CryptSignAndEncryptMessage(
      pSignPara,
      pEncryptPara,
      cRecipientCert,
      rgpRecipientCert,
      pbToBeSignedAndEncrypted,
      cbToBeSignedAndEncrypted,
      pbSignedAndEncryptedBlob,
      pcbSignedAndEncryptedBlob,
    );

late final _CryptSignAndEncryptMessage = _crypt32.lookupFunction<
    Int32 Function(
  Pointer<CRYPT_SIGN_MESSAGE_PARA> pSignPara,
  Pointer<CRYPT_ENCRYPT_MESSAGE_PARA> pEncryptPara,
  Uint32 cRecipientCert,
  Pointer<Pointer<CERT_CONTEXT>> rgpRecipientCert,
  Pointer<Uint8> pbToBeSignedAndEncrypted,
  Uint32 cbToBeSignedAndEncrypted,
  Pointer<Uint8> pbSignedAndEncryptedBlob,
  Pointer<Uint32> pcbSignedAndEncryptedBlob,
),
    int Function(
  Pointer<CRYPT_SIGN_MESSAGE_PARA> pSignPara,
  Pointer<CRYPT_ENCRYPT_MESSAGE_PARA> pEncryptPara,
  int cRecipientCert,
  Pointer<Pointer<CERT_CONTEXT>> rgpRecipientCert,
  Pointer<Uint8> pbToBeSignedAndEncrypted,
  int cbToBeSignedAndEncrypted,
  Pointer<Uint8> pbSignedAndEncryptedBlob,
  Pointer<Uint32> pcbSignedAndEncryptedBlob,
)>('CryptSignAndEncryptMessage');

int CryptSignCertificate(
  int hCryptProvOrNCryptKey,
  int dwKeySpec,
  int dwCertEncodingType,
  Pointer<Uint8> pbEncodedToBeSigned,
  int cbEncodedToBeSigned,
  Pointer<CRYPT_ALGORITHM_IDENTIFIER> pSignatureAlgorithm,
  Pointer pvHashAuxInfo,
  Pointer<Uint8> pbSignature,
  Pointer<Uint32> pcbSignature,
) =>
    _CryptSignCertificate(
      hCryptProvOrNCryptKey,
      dwKeySpec,
      dwCertEncodingType,
      pbEncodedToBeSigned,
      cbEncodedToBeSigned,
      pSignatureAlgorithm,
      pvHashAuxInfo,
      pbSignature,
      pcbSignature,
    );

late final _CryptSignCertificate = _crypt32.lookupFunction<
    Int32 Function(
  IntPtr hCryptProvOrNCryptKey,
  Uint32 dwKeySpec,
  Uint32 dwCertEncodingType,
  Pointer<Uint8> pbEncodedToBeSigned,
  Uint32 cbEncodedToBeSigned,
  Pointer<CRYPT_ALGORITHM_IDENTIFIER> pSignatureAlgorithm,
  Pointer pvHashAuxInfo,
  Pointer<Uint8> pbSignature,
  Pointer<Uint32> pcbSignature,
),
    int Function(
  int hCryptProvOrNCryptKey,
  int dwKeySpec,
  int dwCertEncodingType,
  Pointer<Uint8> pbEncodedToBeSigned,
  int cbEncodedToBeSigned,
  Pointer<CRYPT_ALGORITHM_IDENTIFIER> pSignatureAlgorithm,
  Pointer pvHashAuxInfo,
  Pointer<Uint8> pbSignature,
  Pointer<Uint32> pcbSignature,
)>('CryptSignCertificate');

int CryptSignMessage(
  Pointer<CRYPT_SIGN_MESSAGE_PARA> pSignPara,
  int fDetachedSignature,
  int cToBeSigned,
  Pointer<Pointer<Uint8>> rgpbToBeSigned,
  Pointer<Uint32> rgcbToBeSigned,
  Pointer<Uint8> pbSignedBlob,
  Pointer<Uint32> pcbSignedBlob,
) =>
    _CryptSignMessage(
      pSignPara,
      fDetachedSignature,
      cToBeSigned,
      rgpbToBeSigned,
      rgcbToBeSigned,
      pbSignedBlob,
      pcbSignedBlob,
    );

late final _CryptSignMessage = _crypt32.lookupFunction<
    Int32 Function(
  Pointer<CRYPT_SIGN_MESSAGE_PARA> pSignPara,
  Int32 fDetachedSignature,
  Uint32 cToBeSigned,
  Pointer<Pointer<Uint8>> rgpbToBeSigned,
  Pointer<Uint32> rgcbToBeSigned,
  Pointer<Uint8> pbSignedBlob,
  Pointer<Uint32> pcbSignedBlob,
),
    int Function(
  Pointer<CRYPT_SIGN_MESSAGE_PARA> pSignPara,
  int fDetachedSignature,
  int cToBeSigned,
  Pointer<Pointer<Uint8>> rgpbToBeSigned,
  Pointer<Uint32> rgcbToBeSigned,
  Pointer<Uint8> pbSignedBlob,
  Pointer<Uint32> pcbSignedBlob,
)>('CryptSignMessage');

int CryptSignMessageWithKey(
  Pointer<CRYPT_KEY_SIGN_MESSAGE_PARA> pSignPara,
  Pointer<Uint8> pbToBeSigned,
  int cbToBeSigned,
  Pointer<Uint8> pbSignedBlob,
  Pointer<Uint32> pcbSignedBlob,
) =>
    _CryptSignMessageWithKey(
      pSignPara,
      pbToBeSigned,
      cbToBeSigned,
      pbSignedBlob,
      pcbSignedBlob,
    );

late final _CryptSignMessageWithKey = _crypt32.lookupFunction<
    Int32 Function(
  Pointer<CRYPT_KEY_SIGN_MESSAGE_PARA> pSignPara,
  Pointer<Uint8> pbToBeSigned,
  Uint32 cbToBeSigned,
  Pointer<Uint8> pbSignedBlob,
  Pointer<Uint32> pcbSignedBlob,
),
    int Function(
  Pointer<CRYPT_KEY_SIGN_MESSAGE_PARA> pSignPara,
  Pointer<Uint8> pbToBeSigned,
  int cbToBeSigned,
  Pointer<Uint8> pbSignedBlob,
  Pointer<Uint32> pcbSignedBlob,
)>('CryptSignMessageWithKey');

int CryptStringToBinary(
  Pointer<Utf16> pszString,
  int cchString,
  int dwFlags,
  Pointer<Uint8> pbBinary,
  Pointer<Uint32> pcbBinary,
  Pointer<Uint32> pdwSkip,
  Pointer<Uint32> pdwFlags,
) =>
    _CryptStringToBinary(
      pszString,
      cchString,
      dwFlags,
      pbBinary,
      pcbBinary,
      pdwSkip,
      pdwFlags,
    );

late final _CryptStringToBinary = _crypt32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszString,
  Uint32 cchString,
  Uint32 dwFlags,
  Pointer<Uint8> pbBinary,
  Pointer<Uint32> pcbBinary,
  Pointer<Uint32> pdwSkip,
  Pointer<Uint32> pdwFlags,
),
    int Function(
  Pointer<Utf16> pszString,
  int cchString,
  int dwFlags,
  Pointer<Uint8> pbBinary,
  Pointer<Uint32> pcbBinary,
  Pointer<Uint32> pdwSkip,
  Pointer<Uint32> pdwFlags,
)>('CryptStringToBinaryW');

int CryptUninstallDefaultContext(
  Pointer hDefaultContext,
  int dwFlags,
  Pointer pvReserved,
) =>
    _CryptUninstallDefaultContext(
      hDefaultContext,
      dwFlags,
      pvReserved,
    );

late final _CryptUninstallDefaultContext = _crypt32.lookupFunction<
    Int32 Function(
  Pointer hDefaultContext,
  Uint32 dwFlags,
  Pointer pvReserved,
),
    int Function(
  Pointer hDefaultContext,
  int dwFlags,
  Pointer pvReserved,
)>('CryptUninstallDefaultContext');

int CryptUnprotectData(
  Pointer<CRYPTOAPI_BLOB> pDataIn,
  Pointer<Pointer<Utf16>> ppszDataDescr,
  Pointer<CRYPTOAPI_BLOB> pOptionalEntropy,
  Pointer pvReserved,
  Pointer<CRYPTPROTECT_PROMPTSTRUCT> pPromptStruct,
  int dwFlags,
  Pointer<CRYPTOAPI_BLOB> pDataOut,
) =>
    _CryptUnprotectData(
      pDataIn,
      ppszDataDescr,
      pOptionalEntropy,
      pvReserved,
      pPromptStruct,
      dwFlags,
      pDataOut,
    );

late final _CryptUnprotectData = _crypt32.lookupFunction<
    Int32 Function(
  Pointer<CRYPTOAPI_BLOB> pDataIn,
  Pointer<Pointer<Utf16>> ppszDataDescr,
  Pointer<CRYPTOAPI_BLOB> pOptionalEntropy,
  Pointer pvReserved,
  Pointer<CRYPTPROTECT_PROMPTSTRUCT> pPromptStruct,
  Uint32 dwFlags,
  Pointer<CRYPTOAPI_BLOB> pDataOut,
),
    int Function(
  Pointer<CRYPTOAPI_BLOB> pDataIn,
  Pointer<Pointer<Utf16>> ppszDataDescr,
  Pointer<CRYPTOAPI_BLOB> pOptionalEntropy,
  Pointer pvReserved,
  Pointer<CRYPTPROTECT_PROMPTSTRUCT> pPromptStruct,
  int dwFlags,
  Pointer<CRYPTOAPI_BLOB> pDataOut,
)>('CryptUnprotectData');

int CryptUnprotectMemory(
  Pointer pDataIn,
  int cbDataIn,
  int dwFlags,
) =>
    _CryptUnprotectMemory(
      pDataIn,
      cbDataIn,
      dwFlags,
    );

late final _CryptUnprotectMemory = _crypt32.lookupFunction<
    Int32 Function(
  Pointer pDataIn,
  Uint32 cbDataIn,
  Uint32 dwFlags,
),
    int Function(
  Pointer pDataIn,
  int cbDataIn,
  int dwFlags,
)>('CryptUnprotectMemory');

int CryptUnregisterDefaultOIDFunction(
  int dwEncodingType,
  Pointer<Utf8> pszFuncName,
  Pointer<Utf16> pwszDll,
) =>
    _CryptUnregisterDefaultOIDFunction(
      dwEncodingType,
      pszFuncName,
      pwszDll,
    );

late final _CryptUnregisterDefaultOIDFunction = _crypt32.lookupFunction<
    Int32 Function(
  Uint32 dwEncodingType,
  Pointer<Utf8> pszFuncName,
  Pointer<Utf16> pwszDll,
),
    int Function(
  int dwEncodingType,
  Pointer<Utf8> pszFuncName,
  Pointer<Utf16> pwszDll,
)>('CryptUnregisterDefaultOIDFunction');

int CryptUnregisterOIDFunction(
  int dwEncodingType,
  Pointer<Utf8> pszFuncName,
  Pointer<Utf8> pszOID,
) =>
    _CryptUnregisterOIDFunction(
      dwEncodingType,
      pszFuncName,
      pszOID,
    );

late final _CryptUnregisterOIDFunction = _crypt32.lookupFunction<
    Int32 Function(
  Uint32 dwEncodingType,
  Pointer<Utf8> pszFuncName,
  Pointer<Utf8> pszOID,
),
    int Function(
  int dwEncodingType,
  Pointer<Utf8> pszFuncName,
  Pointer<Utf8> pszOID,
)>('CryptUnregisterOIDFunction');

int CryptUnregisterOIDInfo(
  Pointer<CRYPT_OID_INFO> pInfo,
) =>
    _CryptUnregisterOIDInfo(
      pInfo,
    );

late final _CryptUnregisterOIDInfo = _crypt32.lookupFunction<
    Int32 Function(
  Pointer<CRYPT_OID_INFO> pInfo,
),
    int Function(
  Pointer<CRYPT_OID_INFO> pInfo,
)>('CryptUnregisterOIDInfo');

int CryptUpdateProtectedState(
  int pOldSid,
  Pointer<Utf16> pwszOldPassword,
  int dwFlags,
  Pointer<Uint32> pdwSuccessCount,
  Pointer<Uint32> pdwFailureCount,
) =>
    _CryptUpdateProtectedState(
      pOldSid,
      pwszOldPassword,
      dwFlags,
      pdwSuccessCount,
      pdwFailureCount,
    );

late final _CryptUpdateProtectedState = _crypt32.lookupFunction<
    Int32 Function(
  IntPtr pOldSid,
  Pointer<Utf16> pwszOldPassword,
  Uint32 dwFlags,
  Pointer<Uint32> pdwSuccessCount,
  Pointer<Uint32> pdwFailureCount,
),
    int Function(
  int pOldSid,
  Pointer<Utf16> pwszOldPassword,
  int dwFlags,
  Pointer<Uint32> pdwSuccessCount,
  Pointer<Uint32> pdwFailureCount,
)>('CryptUpdateProtectedState');

int CryptVerifyCertificateSignature(
  int hCryptProv,
  int dwCertEncodingType,
  Pointer<Uint8> pbEncoded,
  int cbEncoded,
  Pointer<CERT_PUBLIC_KEY_INFO> pPublicKey,
) =>
    _CryptVerifyCertificateSignature(
      hCryptProv,
      dwCertEncodingType,
      pbEncoded,
      cbEncoded,
      pPublicKey,
    );

late final _CryptVerifyCertificateSignature = _crypt32.lookupFunction<
    Int32 Function(
  IntPtr hCryptProv,
  Uint32 dwCertEncodingType,
  Pointer<Uint8> pbEncoded,
  Uint32 cbEncoded,
  Pointer<CERT_PUBLIC_KEY_INFO> pPublicKey,
),
    int Function(
  int hCryptProv,
  int dwCertEncodingType,
  Pointer<Uint8> pbEncoded,
  int cbEncoded,
  Pointer<CERT_PUBLIC_KEY_INFO> pPublicKey,
)>('CryptVerifyCertificateSignature');

int CryptVerifyCertificateSignatureEx(
  int hCryptProv,
  int dwCertEncodingType,
  int dwSubjectType,
  Pointer pvSubject,
  int dwIssuerType,
  Pointer pvIssuer,
  int dwFlags,
  Pointer pvExtra,
) =>
    _CryptVerifyCertificateSignatureEx(
      hCryptProv,
      dwCertEncodingType,
      dwSubjectType,
      pvSubject,
      dwIssuerType,
      pvIssuer,
      dwFlags,
      pvExtra,
    );

late final _CryptVerifyCertificateSignatureEx = _crypt32.lookupFunction<
    Int32 Function(
  IntPtr hCryptProv,
  Uint32 dwCertEncodingType,
  Uint32 dwSubjectType,
  Pointer pvSubject,
  Uint32 dwIssuerType,
  Pointer pvIssuer,
  Uint32 dwFlags,
  Pointer pvExtra,
),
    int Function(
  int hCryptProv,
  int dwCertEncodingType,
  int dwSubjectType,
  Pointer pvSubject,
  int dwIssuerType,
  Pointer pvIssuer,
  int dwFlags,
  Pointer pvExtra,
)>('CryptVerifyCertificateSignatureEx');

int CryptVerifyDetachedMessageHash(
  Pointer<CRYPT_HASH_MESSAGE_PARA> pHashPara,
  Pointer<Uint8> pbDetachedHashBlob,
  int cbDetachedHashBlob,
  int cToBeHashed,
  Pointer<Pointer<Uint8>> rgpbToBeHashed,
  Pointer<Uint32> rgcbToBeHashed,
  Pointer<Uint8> pbComputedHash,
  Pointer<Uint32> pcbComputedHash,
) =>
    _CryptVerifyDetachedMessageHash(
      pHashPara,
      pbDetachedHashBlob,
      cbDetachedHashBlob,
      cToBeHashed,
      rgpbToBeHashed,
      rgcbToBeHashed,
      pbComputedHash,
      pcbComputedHash,
    );

late final _CryptVerifyDetachedMessageHash = _crypt32.lookupFunction<
    Int32 Function(
  Pointer<CRYPT_HASH_MESSAGE_PARA> pHashPara,
  Pointer<Uint8> pbDetachedHashBlob,
  Uint32 cbDetachedHashBlob,
  Uint32 cToBeHashed,
  Pointer<Pointer<Uint8>> rgpbToBeHashed,
  Pointer<Uint32> rgcbToBeHashed,
  Pointer<Uint8> pbComputedHash,
  Pointer<Uint32> pcbComputedHash,
),
    int Function(
  Pointer<CRYPT_HASH_MESSAGE_PARA> pHashPara,
  Pointer<Uint8> pbDetachedHashBlob,
  int cbDetachedHashBlob,
  int cToBeHashed,
  Pointer<Pointer<Uint8>> rgpbToBeHashed,
  Pointer<Uint32> rgcbToBeHashed,
  Pointer<Uint8> pbComputedHash,
  Pointer<Uint32> pcbComputedHash,
)>('CryptVerifyDetachedMessageHash');

int CryptVerifyDetachedMessageSignature(
  Pointer<CRYPT_VERIFY_MESSAGE_PARA> pVerifyPara,
  int dwSignerIndex,
  Pointer<Uint8> pbDetachedSignBlob,
  int cbDetachedSignBlob,
  int cToBeSigned,
  Pointer<Pointer<Uint8>> rgpbToBeSigned,
  Pointer<Uint32> rgcbToBeSigned,
  Pointer<Pointer<CERT_CONTEXT>> ppSignerCert,
) =>
    _CryptVerifyDetachedMessageSignature(
      pVerifyPara,
      dwSignerIndex,
      pbDetachedSignBlob,
      cbDetachedSignBlob,
      cToBeSigned,
      rgpbToBeSigned,
      rgcbToBeSigned,
      ppSignerCert,
    );

late final _CryptVerifyDetachedMessageSignature = _crypt32.lookupFunction<
    Int32 Function(
  Pointer<CRYPT_VERIFY_MESSAGE_PARA> pVerifyPara,
  Uint32 dwSignerIndex,
  Pointer<Uint8> pbDetachedSignBlob,
  Uint32 cbDetachedSignBlob,
  Uint32 cToBeSigned,
  Pointer<Pointer<Uint8>> rgpbToBeSigned,
  Pointer<Uint32> rgcbToBeSigned,
  Pointer<Pointer<CERT_CONTEXT>> ppSignerCert,
),
    int Function(
  Pointer<CRYPT_VERIFY_MESSAGE_PARA> pVerifyPara,
  int dwSignerIndex,
  Pointer<Uint8> pbDetachedSignBlob,
  int cbDetachedSignBlob,
  int cToBeSigned,
  Pointer<Pointer<Uint8>> rgpbToBeSigned,
  Pointer<Uint32> rgcbToBeSigned,
  Pointer<Pointer<CERT_CONTEXT>> ppSignerCert,
)>('CryptVerifyDetachedMessageSignature');

int CryptVerifyMessageHash(
  Pointer<CRYPT_HASH_MESSAGE_PARA> pHashPara,
  Pointer<Uint8> pbHashedBlob,
  int cbHashedBlob,
  Pointer<Uint8> pbToBeHashed,
  Pointer<Uint32> pcbToBeHashed,
  Pointer<Uint8> pbComputedHash,
  Pointer<Uint32> pcbComputedHash,
) =>
    _CryptVerifyMessageHash(
      pHashPara,
      pbHashedBlob,
      cbHashedBlob,
      pbToBeHashed,
      pcbToBeHashed,
      pbComputedHash,
      pcbComputedHash,
    );

late final _CryptVerifyMessageHash = _crypt32.lookupFunction<
    Int32 Function(
  Pointer<CRYPT_HASH_MESSAGE_PARA> pHashPara,
  Pointer<Uint8> pbHashedBlob,
  Uint32 cbHashedBlob,
  Pointer<Uint8> pbToBeHashed,
  Pointer<Uint32> pcbToBeHashed,
  Pointer<Uint8> pbComputedHash,
  Pointer<Uint32> pcbComputedHash,
),
    int Function(
  Pointer<CRYPT_HASH_MESSAGE_PARA> pHashPara,
  Pointer<Uint8> pbHashedBlob,
  int cbHashedBlob,
  Pointer<Uint8> pbToBeHashed,
  Pointer<Uint32> pcbToBeHashed,
  Pointer<Uint8> pbComputedHash,
  Pointer<Uint32> pcbComputedHash,
)>('CryptVerifyMessageHash');

int CryptVerifyMessageSignature(
  Pointer<CRYPT_VERIFY_MESSAGE_PARA> pVerifyPara,
  int dwSignerIndex,
  Pointer<Uint8> pbSignedBlob,
  int cbSignedBlob,
  Pointer<Uint8> pbDecoded,
  Pointer<Uint32> pcbDecoded,
  Pointer<Pointer<CERT_CONTEXT>> ppSignerCert,
) =>
    _CryptVerifyMessageSignature(
      pVerifyPara,
      dwSignerIndex,
      pbSignedBlob,
      cbSignedBlob,
      pbDecoded,
      pcbDecoded,
      ppSignerCert,
    );

late final _CryptVerifyMessageSignature = _crypt32.lookupFunction<
    Int32 Function(
  Pointer<CRYPT_VERIFY_MESSAGE_PARA> pVerifyPara,
  Uint32 dwSignerIndex,
  Pointer<Uint8> pbSignedBlob,
  Uint32 cbSignedBlob,
  Pointer<Uint8> pbDecoded,
  Pointer<Uint32> pcbDecoded,
  Pointer<Pointer<CERT_CONTEXT>> ppSignerCert,
),
    int Function(
  Pointer<CRYPT_VERIFY_MESSAGE_PARA> pVerifyPara,
  int dwSignerIndex,
  Pointer<Uint8> pbSignedBlob,
  int cbSignedBlob,
  Pointer<Uint8> pbDecoded,
  Pointer<Uint32> pcbDecoded,
  Pointer<Pointer<CERT_CONTEXT>> ppSignerCert,
)>('CryptVerifyMessageSignature');

int CryptVerifyMessageSignatureWithKey(
  Pointer<CRYPT_KEY_VERIFY_MESSAGE_PARA> pVerifyPara,
  Pointer<CERT_PUBLIC_KEY_INFO> pPublicKeyInfo,
  Pointer<Uint8> pbSignedBlob,
  int cbSignedBlob,
  Pointer<Uint8> pbDecoded,
  Pointer<Uint32> pcbDecoded,
) =>
    _CryptVerifyMessageSignatureWithKey(
      pVerifyPara,
      pPublicKeyInfo,
      pbSignedBlob,
      cbSignedBlob,
      pbDecoded,
      pcbDecoded,
    );

late final _CryptVerifyMessageSignatureWithKey = _crypt32.lookupFunction<
    Int32 Function(
  Pointer<CRYPT_KEY_VERIFY_MESSAGE_PARA> pVerifyPara,
  Pointer<CERT_PUBLIC_KEY_INFO> pPublicKeyInfo,
  Pointer<Uint8> pbSignedBlob,
  Uint32 cbSignedBlob,
  Pointer<Uint8> pbDecoded,
  Pointer<Uint32> pcbDecoded,
),
    int Function(
  Pointer<CRYPT_KEY_VERIFY_MESSAGE_PARA> pVerifyPara,
  Pointer<CERT_PUBLIC_KEY_INFO> pPublicKeyInfo,
  Pointer<Uint8> pbSignedBlob,
  int cbSignedBlob,
  Pointer<Uint8> pbDecoded,
  Pointer<Uint32> pcbDecoded,
)>('CryptVerifyMessageSignatureWithKey');

int CryptVerifyTimeStampSignature(
  Pointer<Uint8> pbTSContentInfo,
  int cbTSContentInfo,
  Pointer<Uint8> pbData,
  int cbData,
  Pointer hAdditionalStore,
  Pointer<Pointer<CRYPT_TIMESTAMP_CONTEXT>> ppTsContext,
  Pointer<Pointer<CERT_CONTEXT>> ppTsSigner,
  Pointer<Pointer> phStore,
) =>
    _CryptVerifyTimeStampSignature(
      pbTSContentInfo,
      cbTSContentInfo,
      pbData,
      cbData,
      hAdditionalStore,
      ppTsContext,
      ppTsSigner,
      phStore,
    );

late final _CryptVerifyTimeStampSignature = _crypt32.lookupFunction<
    Int32 Function(
  Pointer<Uint8> pbTSContentInfo,
  Uint32 cbTSContentInfo,
  Pointer<Uint8> pbData,
  Uint32 cbData,
  Pointer hAdditionalStore,
  Pointer<Pointer<CRYPT_TIMESTAMP_CONTEXT>> ppTsContext,
  Pointer<Pointer<CERT_CONTEXT>> ppTsSigner,
  Pointer<Pointer> phStore,
),
    int Function(
  Pointer<Uint8> pbTSContentInfo,
  int cbTSContentInfo,
  Pointer<Uint8> pbData,
  int cbData,
  Pointer hAdditionalStore,
  Pointer<Pointer<CRYPT_TIMESTAMP_CONTEXT>> ppTsContext,
  Pointer<Pointer<CERT_CONTEXT>> ppTsSigner,
  Pointer<Pointer> phStore,
)>('CryptVerifyTimeStampSignature');

int PFXExportCertStore(
  Pointer hStore,
  Pointer<CRYPTOAPI_BLOB> pPFX,
  Pointer<Utf16> szPassword,
  int dwFlags,
) =>
    _PFXExportCertStore(
      hStore,
      pPFX,
      szPassword,
      dwFlags,
    );

late final _PFXExportCertStore = _crypt32.lookupFunction<
    Int32 Function(
  Pointer hStore,
  Pointer<CRYPTOAPI_BLOB> pPFX,
  Pointer<Utf16> szPassword,
  Uint32 dwFlags,
),
    int Function(
  Pointer hStore,
  Pointer<CRYPTOAPI_BLOB> pPFX,
  Pointer<Utf16> szPassword,
  int dwFlags,
)>('PFXExportCertStore');

int PFXExportCertStoreEx(
  Pointer hStore,
  Pointer<CRYPTOAPI_BLOB> pPFX,
  Pointer<Utf16> szPassword,
  Pointer pvPara,
  int dwFlags,
) =>
    _PFXExportCertStoreEx(
      hStore,
      pPFX,
      szPassword,
      pvPara,
      dwFlags,
    );

late final _PFXExportCertStoreEx = _crypt32.lookupFunction<
    Int32 Function(
  Pointer hStore,
  Pointer<CRYPTOAPI_BLOB> pPFX,
  Pointer<Utf16> szPassword,
  Pointer pvPara,
  Uint32 dwFlags,
),
    int Function(
  Pointer hStore,
  Pointer<CRYPTOAPI_BLOB> pPFX,
  Pointer<Utf16> szPassword,
  Pointer pvPara,
  int dwFlags,
)>('PFXExportCertStoreEx');

Pointer PFXImportCertStore(
  Pointer<CRYPTOAPI_BLOB> pPFX,
  Pointer<Utf16> szPassword,
  int dwFlags,
) =>
    _PFXImportCertStore(
      pPFX,
      szPassword,
      dwFlags,
    );

late final _PFXImportCertStore = _crypt32.lookupFunction<
    Pointer Function(
  Pointer<CRYPTOAPI_BLOB> pPFX,
  Pointer<Utf16> szPassword,
  Uint32 dwFlags,
),
    Pointer Function(
  Pointer<CRYPTOAPI_BLOB> pPFX,
  Pointer<Utf16> szPassword,
  int dwFlags,
)>('PFXImportCertStore');

int PFXIsPFXBlob(
  Pointer<CRYPTOAPI_BLOB> pPFX,
) =>
    _PFXIsPFXBlob(
      pPFX,
    );

late final _PFXIsPFXBlob = _crypt32.lookupFunction<
    Int32 Function(
  Pointer<CRYPTOAPI_BLOB> pPFX,
),
    int Function(
  Pointer<CRYPTOAPI_BLOB> pPFX,
)>('PFXIsPFXBlob');

int PFXVerifyPassword(
  Pointer<CRYPTOAPI_BLOB> pPFX,
  Pointer<Utf16> szPassword,
  int dwFlags,
) =>
    _PFXVerifyPassword(
      pPFX,
      szPassword,
      dwFlags,
    );

late final _PFXVerifyPassword = _crypt32.lookupFunction<
    Int32 Function(
  Pointer<CRYPTOAPI_BLOB> pPFX,
  Pointer<Utf16> szPassword,
  Uint32 dwFlags,
),
    int Function(
  Pointer<CRYPTOAPI_BLOB> pPFX,
  Pointer<Utf16> szPassword,
  int dwFlags,
)>('PFXVerifyPassword');

// -----------------------------------------------------------------------
// wintrust.dll
// -----------------------------------------------------------------------
final _wintrust = DynamicLibrary.open('wintrust.dll');

int FindCertsByIssuer(
  Pointer<CERT_CHAIN> pCertChains,
  Pointer<Uint32> pcbCertChains,
  Pointer<Uint32> pcCertChains,
  Pointer<Uint8> pbEncodedIssuerName,
  int cbEncodedIssuerName,
  Pointer<Utf16> pwszPurpose,
  int dwKeySpec,
) =>
    _FindCertsByIssuer(
      pCertChains,
      pcbCertChains,
      pcCertChains,
      pbEncodedIssuerName,
      cbEncodedIssuerName,
      pwszPurpose,
      dwKeySpec,
    );

late final _FindCertsByIssuer = _wintrust.lookupFunction<
    Int32 Function(
  Pointer<CERT_CHAIN> pCertChains,
  Pointer<Uint32> pcbCertChains,
  Pointer<Uint32> pcCertChains,
  Pointer<Uint8> pbEncodedIssuerName,
  Uint32 cbEncodedIssuerName,
  Pointer<Utf16> pwszPurpose,
  Uint32 dwKeySpec,
),
    int Function(
  Pointer<CERT_CHAIN> pCertChains,
  Pointer<Uint32> pcbCertChains,
  Pointer<Uint32> pcCertChains,
  Pointer<Uint8> pbEncodedIssuerName,
  int cbEncodedIssuerName,
  Pointer<Utf16> pwszPurpose,
  int dwKeySpec,
)>('FindCertsByIssuer');

// -----------------------------------------------------------------------
// cryptnet.dll
// -----------------------------------------------------------------------
final _cryptnet = DynamicLibrary.open('cryptnet.dll');

int CryptGetObjectUrl(
  Pointer<Utf8> pszUrlOid,
  Pointer pvPara,
  int dwFlags,
  Pointer<CRYPT_URL_ARRAY> pUrlArray,
  Pointer<Uint32> pcbUrlArray,
  Pointer<CRYPT_URL_INFO> pUrlInfo,
  Pointer<Uint32> pcbUrlInfo,
  Pointer pvReserved,
) =>
    _CryptGetObjectUrl(
      pszUrlOid,
      pvPara,
      dwFlags,
      pUrlArray,
      pcbUrlArray,
      pUrlInfo,
      pcbUrlInfo,
      pvReserved,
    );

late final _CryptGetObjectUrl = _cryptnet.lookupFunction<
    Int32 Function(
  Pointer<Utf8> pszUrlOid,
  Pointer pvPara,
  Uint32 dwFlags,
  Pointer<CRYPT_URL_ARRAY> pUrlArray,
  Pointer<Uint32> pcbUrlArray,
  Pointer<CRYPT_URL_INFO> pUrlInfo,
  Pointer<Uint32> pcbUrlInfo,
  Pointer pvReserved,
),
    int Function(
  Pointer<Utf8> pszUrlOid,
  Pointer pvPara,
  int dwFlags,
  Pointer<CRYPT_URL_ARRAY> pUrlArray,
  Pointer<Uint32> pcbUrlArray,
  Pointer<CRYPT_URL_INFO> pUrlInfo,
  Pointer<Uint32> pcbUrlInfo,
  Pointer pvReserved,
)>('CryptGetObjectUrl');

int CryptInstallCancelRetrieval(
  Pointer<NativeFunction<PFN_CRYPT_CANCEL_RETRIEVAL>> pfnCancel,
  Pointer pvArg,
  int dwFlags,
  Pointer pvReserved,
) =>
    _CryptInstallCancelRetrieval(
      pfnCancel,
      pvArg,
      dwFlags,
      pvReserved,
    );

late final _CryptInstallCancelRetrieval = _cryptnet.lookupFunction<
    Int32 Function(
  Pointer<NativeFunction<PFN_CRYPT_CANCEL_RETRIEVAL>> pfnCancel,
  Pointer pvArg,
  Uint32 dwFlags,
  Pointer pvReserved,
),
    int Function(
  Pointer<NativeFunction<PFN_CRYPT_CANCEL_RETRIEVAL>> pfnCancel,
  Pointer pvArg,
  int dwFlags,
  Pointer pvReserved,
)>('CryptInstallCancelRetrieval');

int CryptRetrieveObjectByUrl(
  Pointer<Utf16> pszUrl,
  Pointer<Utf8> pszObjectOid,
  int dwRetrievalFlags,
  int dwTimeout,
  Pointer<Pointer> ppvObject,
  int hAsyncRetrieve,
  Pointer<CRYPT_CREDENTIALS> pCredentials,
  Pointer pvVerify,
  Pointer<CRYPT_RETRIEVE_AUX_INFO> pAuxInfo,
) =>
    _CryptRetrieveObjectByUrl(
      pszUrl,
      pszObjectOid,
      dwRetrievalFlags,
      dwTimeout,
      ppvObject,
      hAsyncRetrieve,
      pCredentials,
      pvVerify,
      pAuxInfo,
    );

late final _CryptRetrieveObjectByUrl = _cryptnet.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszUrl,
  Pointer<Utf8> pszObjectOid,
  Uint32 dwRetrievalFlags,
  Uint32 dwTimeout,
  Pointer<Pointer> ppvObject,
  IntPtr hAsyncRetrieve,
  Pointer<CRYPT_CREDENTIALS> pCredentials,
  Pointer pvVerify,
  Pointer<CRYPT_RETRIEVE_AUX_INFO> pAuxInfo,
),
    int Function(
  Pointer<Utf16> pszUrl,
  Pointer<Utf8> pszObjectOid,
  int dwRetrievalFlags,
  int dwTimeout,
  Pointer<Pointer> ppvObject,
  int hAsyncRetrieve,
  Pointer<CRYPT_CREDENTIALS> pCredentials,
  Pointer pvVerify,
  Pointer<CRYPT_RETRIEVE_AUX_INFO> pAuxInfo,
)>('CryptRetrieveObjectByUrlW');

int CryptUninstallCancelRetrieval(
  int dwFlags,
  Pointer pvReserved,
) =>
    _CryptUninstallCancelRetrieval(
      dwFlags,
      pvReserved,
    );

late final _CryptUninstallCancelRetrieval = _cryptnet.lookupFunction<
    Int32 Function(
  Uint32 dwFlags,
  Pointer pvReserved,
),
    int Function(
  int dwFlags,
  Pointer pvReserved,
)>('CryptUninstallCancelRetrieval');

// -----------------------------------------------------------------------
// cryptxml.dll
// -----------------------------------------------------------------------
final _cryptxml = DynamicLibrary.open('cryptxml.dll');

int CryptXmlAddObject(
  Pointer hSignatureOrObject,
  int dwFlags,
  Pointer<CRYPT_XML_PROPERTY> rgProperty,
  int cProperty,
  Pointer<CRYPT_XML_BLOB> pEncoded,
  Pointer<Pointer<CRYPT_XML_OBJECT>> ppObject,
) =>
    _CryptXmlAddObject(
      hSignatureOrObject,
      dwFlags,
      rgProperty,
      cProperty,
      pEncoded,
      ppObject,
    );

late final _CryptXmlAddObject = _cryptxml.lookupFunction<
    Int32 Function(
  Pointer hSignatureOrObject,
  Uint32 dwFlags,
  Pointer<CRYPT_XML_PROPERTY> rgProperty,
  Uint32 cProperty,
  Pointer<CRYPT_XML_BLOB> pEncoded,
  Pointer<Pointer<CRYPT_XML_OBJECT>> ppObject,
),
    int Function(
  Pointer hSignatureOrObject,
  int dwFlags,
  Pointer<CRYPT_XML_PROPERTY> rgProperty,
  int cProperty,
  Pointer<CRYPT_XML_BLOB> pEncoded,
  Pointer<Pointer<CRYPT_XML_OBJECT>> ppObject,
)>('CryptXmlAddObject');

int CryptXmlClose(
  Pointer hCryptXml,
) =>
    _CryptXmlClose(
      hCryptXml,
    );

late final _CryptXmlClose = _cryptxml.lookupFunction<
    Int32 Function(
  Pointer hCryptXml,
),
    int Function(
  Pointer hCryptXml,
)>('CryptXmlClose');

int CryptXmlCreateReference(
  Pointer hCryptXml,
  int dwFlags,
  Pointer<Utf16> wszId,
  Pointer<Utf16> wszURI,
  Pointer<Utf16> wszType,
  Pointer<CRYPT_XML_ALGORITHM> pDigestMethod,
  int cTransform,
  Pointer<CRYPT_XML_ALGORITHM> rgTransform,
  Pointer<Pointer> phReference,
) =>
    _CryptXmlCreateReference(
      hCryptXml,
      dwFlags,
      wszId,
      wszURI,
      wszType,
      pDigestMethod,
      cTransform,
      rgTransform,
      phReference,
    );

late final _CryptXmlCreateReference = _cryptxml.lookupFunction<
    Int32 Function(
  Pointer hCryptXml,
  Uint32 dwFlags,
  Pointer<Utf16> wszId,
  Pointer<Utf16> wszURI,
  Pointer<Utf16> wszType,
  Pointer<CRYPT_XML_ALGORITHM> pDigestMethod,
  Uint32 cTransform,
  Pointer<CRYPT_XML_ALGORITHM> rgTransform,
  Pointer<Pointer> phReference,
),
    int Function(
  Pointer hCryptXml,
  int dwFlags,
  Pointer<Utf16> wszId,
  Pointer<Utf16> wszURI,
  Pointer<Utf16> wszType,
  Pointer<CRYPT_XML_ALGORITHM> pDigestMethod,
  int cTransform,
  Pointer<CRYPT_XML_ALGORITHM> rgTransform,
  Pointer<Pointer> phReference,
)>('CryptXmlCreateReference');

int CryptXmlDigestReference(
  Pointer hReference,
  int dwFlags,
  Pointer<CRYPT_XML_DATA_PROVIDER> pDataProviderIn,
) =>
    _CryptXmlDigestReference(
      hReference,
      dwFlags,
      pDataProviderIn,
    );

late final _CryptXmlDigestReference = _cryptxml.lookupFunction<
    Int32 Function(
  Pointer hReference,
  Uint32 dwFlags,
  Pointer<CRYPT_XML_DATA_PROVIDER> pDataProviderIn,
),
    int Function(
  Pointer hReference,
  int dwFlags,
  Pointer<CRYPT_XML_DATA_PROVIDER> pDataProviderIn,
)>('CryptXmlDigestReference');

int CryptXmlEncode(
  Pointer hCryptXml,
  int dwCharset,
  Pointer<CRYPT_XML_PROPERTY> rgProperty,
  int cProperty,
  Pointer pvCallbackState,
  Pointer<NativeFunction<PFN_CRYPT_XML_WRITE_CALLBACK>> pfnWrite,
) =>
    _CryptXmlEncode(
      hCryptXml,
      dwCharset,
      rgProperty,
      cProperty,
      pvCallbackState,
      pfnWrite,
    );

late final _CryptXmlEncode = _cryptxml.lookupFunction<
    Int32 Function(
  Pointer hCryptXml,
  Int32 dwCharset,
  Pointer<CRYPT_XML_PROPERTY> rgProperty,
  Uint32 cProperty,
  Pointer pvCallbackState,
  Pointer<NativeFunction<PFN_CRYPT_XML_WRITE_CALLBACK>> pfnWrite,
),
    int Function(
  Pointer hCryptXml,
  int dwCharset,
  Pointer<CRYPT_XML_PROPERTY> rgProperty,
  int cProperty,
  Pointer pvCallbackState,
  Pointer<NativeFunction<PFN_CRYPT_XML_WRITE_CALLBACK>> pfnWrite,
)>('CryptXmlEncode');

int CryptXmlEnumAlgorithmInfo(
  int dwGroupId,
  int dwFlags,
  Pointer pvArg,
  Pointer<NativeFunction<PFN_CRYPT_XML_ENUM_ALG_INFO>> pfnEnumAlgInfo,
) =>
    _CryptXmlEnumAlgorithmInfo(
      dwGroupId,
      dwFlags,
      pvArg,
      pfnEnumAlgInfo,
    );

late final _CryptXmlEnumAlgorithmInfo = _cryptxml.lookupFunction<
    Int32 Function(
  Uint32 dwGroupId,
  Uint32 dwFlags,
  Pointer pvArg,
  Pointer<NativeFunction<PFN_CRYPT_XML_ENUM_ALG_INFO>> pfnEnumAlgInfo,
),
    int Function(
  int dwGroupId,
  int dwFlags,
  Pointer pvArg,
  Pointer<NativeFunction<PFN_CRYPT_XML_ENUM_ALG_INFO>> pfnEnumAlgInfo,
)>('CryptXmlEnumAlgorithmInfo');

Pointer<CRYPT_XML_ALGORITHM_INFO> CryptXmlFindAlgorithmInfo(
  int dwFindByType,
  Pointer pvFindBy,
  int dwGroupId,
  int dwFlags,
) =>
    _CryptXmlFindAlgorithmInfo(
      dwFindByType,
      pvFindBy,
      dwGroupId,
      dwFlags,
    );

late final _CryptXmlFindAlgorithmInfo = _cryptxml.lookupFunction<
    Pointer<CRYPT_XML_ALGORITHM_INFO> Function(
  Uint32 dwFindByType,
  Pointer pvFindBy,
  Uint32 dwGroupId,
  Uint32 dwFlags,
),
    Pointer<CRYPT_XML_ALGORITHM_INFO> Function(
  int dwFindByType,
  Pointer pvFindBy,
  int dwGroupId,
  int dwFlags,
)>('CryptXmlFindAlgorithmInfo');

int CryptXmlGetAlgorithmInfo(
  Pointer<CRYPT_XML_ALGORITHM> pXmlAlgorithm,
  int dwFlags,
  Pointer<Pointer<CRYPT_XML_ALGORITHM_INFO>> ppAlgInfo,
) =>
    _CryptXmlGetAlgorithmInfo(
      pXmlAlgorithm,
      dwFlags,
      ppAlgInfo,
    );

late final _CryptXmlGetAlgorithmInfo = _cryptxml.lookupFunction<
    Int32 Function(
  Pointer<CRYPT_XML_ALGORITHM> pXmlAlgorithm,
  Uint32 dwFlags,
  Pointer<Pointer<CRYPT_XML_ALGORITHM_INFO>> ppAlgInfo,
),
    int Function(
  Pointer<CRYPT_XML_ALGORITHM> pXmlAlgorithm,
  int dwFlags,
  Pointer<Pointer<CRYPT_XML_ALGORITHM_INFO>> ppAlgInfo,
)>('CryptXmlGetAlgorithmInfo');

int CryptXmlGetDocContext(
  Pointer hCryptXml,
  Pointer<Pointer<CRYPT_XML_DOC_CTXT>> ppStruct,
) =>
    _CryptXmlGetDocContext(
      hCryptXml,
      ppStruct,
    );

late final _CryptXmlGetDocContext = _cryptxml.lookupFunction<
    Int32 Function(
  Pointer hCryptXml,
  Pointer<Pointer<CRYPT_XML_DOC_CTXT>> ppStruct,
),
    int Function(
  Pointer hCryptXml,
  Pointer<Pointer<CRYPT_XML_DOC_CTXT>> ppStruct,
)>('CryptXmlGetDocContext');

int CryptXmlGetReference(
  Pointer hCryptXml,
  Pointer<Pointer<CRYPT_XML_REFERENCE>> ppStruct,
) =>
    _CryptXmlGetReference(
      hCryptXml,
      ppStruct,
    );

late final _CryptXmlGetReference = _cryptxml.lookupFunction<
    Int32 Function(
  Pointer hCryptXml,
  Pointer<Pointer<CRYPT_XML_REFERENCE>> ppStruct,
),
    int Function(
  Pointer hCryptXml,
  Pointer<Pointer<CRYPT_XML_REFERENCE>> ppStruct,
)>('CryptXmlGetReference');

int CryptXmlGetSignature(
  Pointer hCryptXml,
  Pointer<Pointer<CRYPT_XML_SIGNATURE>> ppStruct,
) =>
    _CryptXmlGetSignature(
      hCryptXml,
      ppStruct,
    );

late final _CryptXmlGetSignature = _cryptxml.lookupFunction<
    Int32 Function(
  Pointer hCryptXml,
  Pointer<Pointer<CRYPT_XML_SIGNATURE>> ppStruct,
),
    int Function(
  Pointer hCryptXml,
  Pointer<Pointer<CRYPT_XML_SIGNATURE>> ppStruct,
)>('CryptXmlGetSignature');

int CryptXmlGetStatus(
  Pointer hCryptXml,
  Pointer<CRYPT_XML_STATUS> pStatus,
) =>
    _CryptXmlGetStatus(
      hCryptXml,
      pStatus,
    );

late final _CryptXmlGetStatus = _cryptxml.lookupFunction<
    Int32 Function(
  Pointer hCryptXml,
  Pointer<CRYPT_XML_STATUS> pStatus,
),
    int Function(
  Pointer hCryptXml,
  Pointer<CRYPT_XML_STATUS> pStatus,
)>('CryptXmlGetStatus');

int CryptXmlGetTransforms(
  Pointer<Pointer<CRYPT_XML_TRANSFORM_CHAIN_CONFIG>> ppConfig,
) =>
    _CryptXmlGetTransforms(
      ppConfig,
    );

late final _CryptXmlGetTransforms = _cryptxml.lookupFunction<
    Int32 Function(
  Pointer<Pointer<CRYPT_XML_TRANSFORM_CHAIN_CONFIG>> ppConfig,
),
    int Function(
  Pointer<Pointer<CRYPT_XML_TRANSFORM_CHAIN_CONFIG>> ppConfig,
)>('CryptXmlGetTransforms');

int CryptXmlImportPublicKey(
  int dwFlags,
  Pointer<CRYPT_XML_KEY_VALUE> pKeyValue,
  Pointer<IntPtr> phKey,
) =>
    _CryptXmlImportPublicKey(
      dwFlags,
      pKeyValue,
      phKey,
    );

late final _CryptXmlImportPublicKey = _cryptxml.lookupFunction<
    Int32 Function(
  Uint32 dwFlags,
  Pointer<CRYPT_XML_KEY_VALUE> pKeyValue,
  Pointer<IntPtr> phKey,
),
    int Function(
  int dwFlags,
  Pointer<CRYPT_XML_KEY_VALUE> pKeyValue,
  Pointer<IntPtr> phKey,
)>('CryptXmlImportPublicKey');

int CryptXmlOpenToDecode(
  Pointer<CRYPT_XML_TRANSFORM_CHAIN_CONFIG> pConfig,
  int dwFlags,
  Pointer<CRYPT_XML_PROPERTY> rgProperty,
  int cProperty,
  Pointer<CRYPT_XML_BLOB> pEncoded,
  Pointer<Pointer> phCryptXml,
) =>
    _CryptXmlOpenToDecode(
      pConfig,
      dwFlags,
      rgProperty,
      cProperty,
      pEncoded,
      phCryptXml,
    );

late final _CryptXmlOpenToDecode = _cryptxml.lookupFunction<
    Int32 Function(
  Pointer<CRYPT_XML_TRANSFORM_CHAIN_CONFIG> pConfig,
  Uint32 dwFlags,
  Pointer<CRYPT_XML_PROPERTY> rgProperty,
  Uint32 cProperty,
  Pointer<CRYPT_XML_BLOB> pEncoded,
  Pointer<Pointer> phCryptXml,
),
    int Function(
  Pointer<CRYPT_XML_TRANSFORM_CHAIN_CONFIG> pConfig,
  int dwFlags,
  Pointer<CRYPT_XML_PROPERTY> rgProperty,
  int cProperty,
  Pointer<CRYPT_XML_BLOB> pEncoded,
  Pointer<Pointer> phCryptXml,
)>('CryptXmlOpenToDecode');

int CryptXmlOpenToEncode(
  Pointer<CRYPT_XML_TRANSFORM_CHAIN_CONFIG> pConfig,
  int dwFlags,
  Pointer<Utf16> wszId,
  Pointer<CRYPT_XML_PROPERTY> rgProperty,
  int cProperty,
  Pointer<CRYPT_XML_BLOB> pEncoded,
  Pointer<Pointer> phSignature,
) =>
    _CryptXmlOpenToEncode(
      pConfig,
      dwFlags,
      wszId,
      rgProperty,
      cProperty,
      pEncoded,
      phSignature,
    );

late final _CryptXmlOpenToEncode = _cryptxml.lookupFunction<
    Int32 Function(
  Pointer<CRYPT_XML_TRANSFORM_CHAIN_CONFIG> pConfig,
  Uint32 dwFlags,
  Pointer<Utf16> wszId,
  Pointer<CRYPT_XML_PROPERTY> rgProperty,
  Uint32 cProperty,
  Pointer<CRYPT_XML_BLOB> pEncoded,
  Pointer<Pointer> phSignature,
),
    int Function(
  Pointer<CRYPT_XML_TRANSFORM_CHAIN_CONFIG> pConfig,
  int dwFlags,
  Pointer<Utf16> wszId,
  Pointer<CRYPT_XML_PROPERTY> rgProperty,
  int cProperty,
  Pointer<CRYPT_XML_BLOB> pEncoded,
  Pointer<Pointer> phSignature,
)>('CryptXmlOpenToEncode');

int CryptXmlSetHMACSecret(
  Pointer hSignature,
  Pointer<Uint8> pbSecret,
  int cbSecret,
) =>
    _CryptXmlSetHMACSecret(
      hSignature,
      pbSecret,
      cbSecret,
    );

late final _CryptXmlSetHMACSecret = _cryptxml.lookupFunction<
    Int32 Function(
  Pointer hSignature,
  Pointer<Uint8> pbSecret,
  Uint32 cbSecret,
),
    int Function(
  Pointer hSignature,
  Pointer<Uint8> pbSecret,
  int cbSecret,
)>('CryptXmlSetHMACSecret');

int CryptXmlSign(
  Pointer hSignature,
  int hKey,
  int dwKeySpec,
  int dwFlags,
  int dwKeyInfoSpec,
  Pointer pvKeyInfoSpec,
  Pointer<CRYPT_XML_ALGORITHM> pSignatureMethod,
  Pointer<CRYPT_XML_ALGORITHM> pCanonicalization,
) =>
    _CryptXmlSign(
      hSignature,
      hKey,
      dwKeySpec,
      dwFlags,
      dwKeyInfoSpec,
      pvKeyInfoSpec,
      pSignatureMethod,
      pCanonicalization,
    );

late final _CryptXmlSign = _cryptxml.lookupFunction<
    Int32 Function(
  Pointer hSignature,
  IntPtr hKey,
  Uint32 dwKeySpec,
  Uint32 dwFlags,
  Int32 dwKeyInfoSpec,
  Pointer pvKeyInfoSpec,
  Pointer<CRYPT_XML_ALGORITHM> pSignatureMethod,
  Pointer<CRYPT_XML_ALGORITHM> pCanonicalization,
),
    int Function(
  Pointer hSignature,
  int hKey,
  int dwKeySpec,
  int dwFlags,
  int dwKeyInfoSpec,
  Pointer pvKeyInfoSpec,
  Pointer<CRYPT_XML_ALGORITHM> pSignatureMethod,
  Pointer<CRYPT_XML_ALGORITHM> pCanonicalization,
)>('CryptXmlSign');

int CryptXmlVerifySignature(
  Pointer hSignature,
  int hKey,
  int dwFlags,
) =>
    _CryptXmlVerifySignature(
      hSignature,
      hKey,
      dwFlags,
    );

late final _CryptXmlVerifySignature = _cryptxml.lookupFunction<
    Int32 Function(
  Pointer hSignature,
  IntPtr hKey,
  Uint32 dwFlags,
),
    int Function(
  Pointer hSignature,
  int hKey,
  int dwFlags,
)>('CryptXmlVerifySignature');

// -----------------------------------------------------------------------
// infocardapi.dll
// -----------------------------------------------------------------------
final _infocardapi = DynamicLibrary.open('infocardapi.dll');

int CloseCryptoHandle(
  Pointer<INFORMATIONCARD_CRYPTO_HANDLE> hCrypto,
) =>
    _CloseCryptoHandle(
      hCrypto,
    );

late final _CloseCryptoHandle = _infocardapi.lookupFunction<
    Int32 Function(
  Pointer<INFORMATIONCARD_CRYPTO_HANDLE> hCrypto,
),
    int Function(
  Pointer<INFORMATIONCARD_CRYPTO_HANDLE> hCrypto,
)>('CloseCryptoHandle');

int Decrypt(
  Pointer<INFORMATIONCARD_CRYPTO_HANDLE> hCrypto,
  int fOAEP,
  int cbInData,
  Pointer<Uint8> pInData,
  Pointer<Uint32> pcbOutData,
  Pointer<Pointer<Uint8>> ppOutData,
) =>
    _Decrypt(
      hCrypto,
      fOAEP,
      cbInData,
      pInData,
      pcbOutData,
      ppOutData,
    );

late final _Decrypt = _infocardapi.lookupFunction<
    Int32 Function(
  Pointer<INFORMATIONCARD_CRYPTO_HANDLE> hCrypto,
  Int32 fOAEP,
  Uint32 cbInData,
  Pointer<Uint8> pInData,
  Pointer<Uint32> pcbOutData,
  Pointer<Pointer<Uint8>> ppOutData,
),
    int Function(
  Pointer<INFORMATIONCARD_CRYPTO_HANDLE> hCrypto,
  int fOAEP,
  int cbInData,
  Pointer<Uint8> pInData,
  Pointer<Uint32> pcbOutData,
  Pointer<Pointer<Uint8>> ppOutData,
)>('Decrypt');

int Encrypt(
  Pointer<INFORMATIONCARD_CRYPTO_HANDLE> hCrypto,
  int fOAEP,
  int cbInData,
  Pointer<Uint8> pInData,
  Pointer<Uint32> pcbOutData,
  Pointer<Pointer<Uint8>> ppOutData,
) =>
    _Encrypt(
      hCrypto,
      fOAEP,
      cbInData,
      pInData,
      pcbOutData,
      ppOutData,
    );

late final _Encrypt = _infocardapi.lookupFunction<
    Int32 Function(
  Pointer<INFORMATIONCARD_CRYPTO_HANDLE> hCrypto,
  Int32 fOAEP,
  Uint32 cbInData,
  Pointer<Uint8> pInData,
  Pointer<Uint32> pcbOutData,
  Pointer<Pointer<Uint8>> ppOutData,
),
    int Function(
  Pointer<INFORMATIONCARD_CRYPTO_HANDLE> hCrypto,
  int fOAEP,
  int cbInData,
  Pointer<Uint8> pInData,
  Pointer<Uint32> pcbOutData,
  Pointer<Pointer<Uint8>> ppOutData,
)>('Encrypt');

int FreeToken(
  Pointer<GENERIC_XML_TOKEN> pAllocMemory,
) =>
    _FreeToken(
      pAllocMemory,
    );

late final _FreeToken = _infocardapi.lookupFunction<
    Int32 Function(
  Pointer<GENERIC_XML_TOKEN> pAllocMemory,
),
    int Function(
  Pointer<GENERIC_XML_TOKEN> pAllocMemory,
)>('FreeToken');

int GenerateDerivedKey(
  Pointer<INFORMATIONCARD_CRYPTO_HANDLE> hCrypto,
  int cbLabel,
  Pointer<Uint8> pLabel,
  int cbNonce,
  Pointer<Uint8> pNonce,
  int derivedKeyLength,
  int offset,
  Pointer<Utf16> algId,
  Pointer<Uint32> pcbKey,
  Pointer<Pointer<Uint8>> ppKey,
) =>
    _GenerateDerivedKey(
      hCrypto,
      cbLabel,
      pLabel,
      cbNonce,
      pNonce,
      derivedKeyLength,
      offset,
      algId,
      pcbKey,
      ppKey,
    );

late final _GenerateDerivedKey = _infocardapi.lookupFunction<
    Int32 Function(
  Pointer<INFORMATIONCARD_CRYPTO_HANDLE> hCrypto,
  Uint32 cbLabel,
  Pointer<Uint8> pLabel,
  Uint32 cbNonce,
  Pointer<Uint8> pNonce,
  Uint32 derivedKeyLength,
  Uint32 offset,
  Pointer<Utf16> algId,
  Pointer<Uint32> pcbKey,
  Pointer<Pointer<Uint8>> ppKey,
),
    int Function(
  Pointer<INFORMATIONCARD_CRYPTO_HANDLE> hCrypto,
  int cbLabel,
  Pointer<Uint8> pLabel,
  int cbNonce,
  Pointer<Uint8> pNonce,
  int derivedKeyLength,
  int offset,
  Pointer<Utf16> algId,
  Pointer<Uint32> pcbKey,
  Pointer<Pointer<Uint8>> ppKey,
)>('GenerateDerivedKey');

int GetBrowserToken(
  int dwParamType,
  Pointer pParam,
  Pointer<Uint32> pcbToken,
  Pointer<Pointer<Uint8>> ppToken,
) =>
    _GetBrowserToken(
      dwParamType,
      pParam,
      pcbToken,
      ppToken,
    );

late final _GetBrowserToken = _infocardapi.lookupFunction<
    Int32 Function(
  Uint32 dwParamType,
  Pointer pParam,
  Pointer<Uint32> pcbToken,
  Pointer<Pointer<Uint8>> ppToken,
),
    int Function(
  int dwParamType,
  Pointer pParam,
  Pointer<Uint32> pcbToken,
  Pointer<Pointer<Uint8>> ppToken,
)>('GetBrowserToken');

int GetCryptoTransform(
  Pointer<INFORMATIONCARD_CRYPTO_HANDLE> hSymmetricCrypto,
  int mode,
  int padding,
  int feedbackSize,
  int direction,
  int cbIV,
  Pointer<Uint8> pIV,
  Pointer<Pointer<INFORMATIONCARD_CRYPTO_HANDLE>> pphTransform,
) =>
    _GetCryptoTransform(
      hSymmetricCrypto,
      mode,
      padding,
      feedbackSize,
      direction,
      cbIV,
      pIV,
      pphTransform,
    );

late final _GetCryptoTransform = _infocardapi.lookupFunction<
    Int32 Function(
  Pointer<INFORMATIONCARD_CRYPTO_HANDLE> hSymmetricCrypto,
  Uint32 mode,
  Int32 padding,
  Uint32 feedbackSize,
  Int32 direction,
  Uint32 cbIV,
  Pointer<Uint8> pIV,
  Pointer<Pointer<INFORMATIONCARD_CRYPTO_HANDLE>> pphTransform,
),
    int Function(
  Pointer<INFORMATIONCARD_CRYPTO_HANDLE> hSymmetricCrypto,
  int mode,
  int padding,
  int feedbackSize,
  int direction,
  int cbIV,
  Pointer<Uint8> pIV,
  Pointer<Pointer<INFORMATIONCARD_CRYPTO_HANDLE>> pphTransform,
)>('GetCryptoTransform');

int GetKeyedHash(
  Pointer<INFORMATIONCARD_CRYPTO_HANDLE> hSymmetricCrypto,
  Pointer<Pointer<INFORMATIONCARD_CRYPTO_HANDLE>> pphHash,
) =>
    _GetKeyedHash(
      hSymmetricCrypto,
      pphHash,
    );

late final _GetKeyedHash = _infocardapi.lookupFunction<
    Int32 Function(
  Pointer<INFORMATIONCARD_CRYPTO_HANDLE> hSymmetricCrypto,
  Pointer<Pointer<INFORMATIONCARD_CRYPTO_HANDLE>> pphHash,
),
    int Function(
  Pointer<INFORMATIONCARD_CRYPTO_HANDLE> hSymmetricCrypto,
  Pointer<Pointer<INFORMATIONCARD_CRYPTO_HANDLE>> pphHash,
)>('GetKeyedHash');

int GetToken(
  int cPolicyChain,
  Pointer<POLICY_ELEMENT> pPolicyChain,
  Pointer<Pointer<GENERIC_XML_TOKEN>> securityToken,
  Pointer<Pointer<INFORMATIONCARD_CRYPTO_HANDLE>> phProofTokenCrypto,
) =>
    _GetToken(
      cPolicyChain,
      pPolicyChain,
      securityToken,
      phProofTokenCrypto,
    );

late final _GetToken = _infocardapi.lookupFunction<
    Int32 Function(
  Uint32 cPolicyChain,
  Pointer<POLICY_ELEMENT> pPolicyChain,
  Pointer<Pointer<GENERIC_XML_TOKEN>> securityToken,
  Pointer<Pointer<INFORMATIONCARD_CRYPTO_HANDLE>> phProofTokenCrypto,
),
    int Function(
  int cPolicyChain,
  Pointer<POLICY_ELEMENT> pPolicyChain,
  Pointer<Pointer<GENERIC_XML_TOKEN>> securityToken,
  Pointer<Pointer<INFORMATIONCARD_CRYPTO_HANDLE>> phProofTokenCrypto,
)>('GetToken');

int HashCore(
  Pointer<INFORMATIONCARD_CRYPTO_HANDLE> hCrypto,
  int cbInData,
  Pointer<Uint8> pInData,
) =>
    _HashCore(
      hCrypto,
      cbInData,
      pInData,
    );

late final _HashCore = _infocardapi.lookupFunction<
    Int32 Function(
  Pointer<INFORMATIONCARD_CRYPTO_HANDLE> hCrypto,
  Uint32 cbInData,
  Pointer<Uint8> pInData,
),
    int Function(
  Pointer<INFORMATIONCARD_CRYPTO_HANDLE> hCrypto,
  int cbInData,
  Pointer<Uint8> pInData,
)>('HashCore');

int HashFinal(
  Pointer<INFORMATIONCARD_CRYPTO_HANDLE> hCrypto,
  int cbInData,
  Pointer<Uint8> pInData,
  Pointer<Uint32> pcbOutData,
  Pointer<Pointer<Uint8>> ppOutData,
) =>
    _HashFinal(
      hCrypto,
      cbInData,
      pInData,
      pcbOutData,
      ppOutData,
    );

late final _HashFinal = _infocardapi.lookupFunction<
    Int32 Function(
  Pointer<INFORMATIONCARD_CRYPTO_HANDLE> hCrypto,
  Uint32 cbInData,
  Pointer<Uint8> pInData,
  Pointer<Uint32> pcbOutData,
  Pointer<Pointer<Uint8>> ppOutData,
),
    int Function(
  Pointer<INFORMATIONCARD_CRYPTO_HANDLE> hCrypto,
  int cbInData,
  Pointer<Uint8> pInData,
  Pointer<Uint32> pcbOutData,
  Pointer<Pointer<Uint8>> ppOutData,
)>('HashFinal');

int ImportInformationCard(
  Pointer<Utf16> fileName,
) =>
    _ImportInformationCard(
      fileName,
    );

late final _ImportInformationCard = _infocardapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> fileName,
),
    int Function(
  Pointer<Utf16> fileName,
)>('ImportInformationCard');

int ManageCardSpace() => _ManageCardSpace();

late final _ManageCardSpace = _infocardapi
    .lookupFunction<Int32 Function(), int Function()>('ManageCardSpace');

int SignHash(
  Pointer<INFORMATIONCARD_CRYPTO_HANDLE> hCrypto,
  int cbHash,
  Pointer<Uint8> pHash,
  Pointer<Utf16> hashAlgOid,
  Pointer<Uint32> pcbSig,
  Pointer<Pointer<Uint8>> ppSig,
) =>
    _SignHash(
      hCrypto,
      cbHash,
      pHash,
      hashAlgOid,
      pcbSig,
      ppSig,
    );

late final _SignHash = _infocardapi.lookupFunction<
    Int32 Function(
  Pointer<INFORMATIONCARD_CRYPTO_HANDLE> hCrypto,
  Uint32 cbHash,
  Pointer<Uint8> pHash,
  Pointer<Utf16> hashAlgOid,
  Pointer<Uint32> pcbSig,
  Pointer<Pointer<Uint8>> ppSig,
),
    int Function(
  Pointer<INFORMATIONCARD_CRYPTO_HANDLE> hCrypto,
  int cbHash,
  Pointer<Uint8> pHash,
  Pointer<Utf16> hashAlgOid,
  Pointer<Uint32> pcbSig,
  Pointer<Pointer<Uint8>> ppSig,
)>('SignHash');

int TransformBlock(
  Pointer<INFORMATIONCARD_CRYPTO_HANDLE> hCrypto,
  int cbInData,
  Pointer<Uint8> pInData,
  Pointer<Uint32> pcbOutData,
  Pointer<Pointer<Uint8>> ppOutData,
) =>
    _TransformBlock(
      hCrypto,
      cbInData,
      pInData,
      pcbOutData,
      ppOutData,
    );

late final _TransformBlock = _infocardapi.lookupFunction<
    Int32 Function(
  Pointer<INFORMATIONCARD_CRYPTO_HANDLE> hCrypto,
  Uint32 cbInData,
  Pointer<Uint8> pInData,
  Pointer<Uint32> pcbOutData,
  Pointer<Pointer<Uint8>> ppOutData,
),
    int Function(
  Pointer<INFORMATIONCARD_CRYPTO_HANDLE> hCrypto,
  int cbInData,
  Pointer<Uint8> pInData,
  Pointer<Uint32> pcbOutData,
  Pointer<Pointer<Uint8>> ppOutData,
)>('TransformBlock');

int TransformFinalBlock(
  Pointer<INFORMATIONCARD_CRYPTO_HANDLE> hCrypto,
  int cbInData,
  Pointer<Uint8> pInData,
  Pointer<Uint32> pcbOutData,
  Pointer<Pointer<Uint8>> ppOutData,
) =>
    _TransformFinalBlock(
      hCrypto,
      cbInData,
      pInData,
      pcbOutData,
      ppOutData,
    );

late final _TransformFinalBlock = _infocardapi.lookupFunction<
    Int32 Function(
  Pointer<INFORMATIONCARD_CRYPTO_HANDLE> hCrypto,
  Uint32 cbInData,
  Pointer<Uint8> pInData,
  Pointer<Uint32> pcbOutData,
  Pointer<Pointer<Uint8>> ppOutData,
),
    int Function(
  Pointer<INFORMATIONCARD_CRYPTO_HANDLE> hCrypto,
  int cbInData,
  Pointer<Uint8> pInData,
  Pointer<Uint32> pcbOutData,
  Pointer<Pointer<Uint8>> ppOutData,
)>('TransformFinalBlock');

int VerifyHash(
  Pointer<INFORMATIONCARD_CRYPTO_HANDLE> hCrypto,
  int cbHash,
  Pointer<Uint8> pHash,
  Pointer<Utf16> hashAlgOid,
  int cbSig,
  Pointer<Uint8> pSig,
  Pointer<Int32> pfVerified,
) =>
    _VerifyHash(
      hCrypto,
      cbHash,
      pHash,
      hashAlgOid,
      cbSig,
      pSig,
      pfVerified,
    );

late final _VerifyHash = _infocardapi.lookupFunction<
    Int32 Function(
  Pointer<INFORMATIONCARD_CRYPTO_HANDLE> hCrypto,
  Uint32 cbHash,
  Pointer<Uint8> pHash,
  Pointer<Utf16> hashAlgOid,
  Uint32 cbSig,
  Pointer<Uint8> pSig,
  Pointer<Int32> pfVerified,
),
    int Function(
  Pointer<INFORMATIONCARD_CRYPTO_HANDLE> hCrypto,
  int cbHash,
  Pointer<Uint8> pHash,
  Pointer<Utf16> hashAlgOid,
  int cbSig,
  Pointer<Uint8> pSig,
  Pointer<Int32> pfVerified,
)>('VerifyHash');
