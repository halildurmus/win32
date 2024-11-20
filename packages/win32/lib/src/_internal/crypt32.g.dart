// Wrappers for Win32 API functions.
//
// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// ignore_for_file: non_constant_identifier_names, unused_import

@DefaultAsset('package:win32/win32.dart')
library;

import 'dart:ffi';

import 'package:meta/meta.dart';

import '../callbacks.g.dart';
import '../functions.dart';
import '../guid.dart';
import '../pcstr.dart';
import '../pcwstr.dart';
import '../structs.g.dart';
import '../types.dart';

@internal
@Native<
  BOOL Function(
    Pointer<CRYPT_INTEGER_BLOB>,
    PCWSTR,
    Pointer<CRYPT_INTEGER_BLOB>,
    Pointer,
    Pointer<CRYPTPROTECT_PROMPTSTRUCT>,
    Uint32,
    Pointer<CRYPT_INTEGER_BLOB>,
  )
>()
external int CryptProtectData_Wrapper(
  Pointer<CRYPT_INTEGER_BLOB> pDataIn,
  PCWSTR szDataDescr,
  Pointer<CRYPT_INTEGER_BLOB> pOptionalEntropy,
  Pointer pvReserved,
  Pointer<CRYPTPROTECT_PROMPTSTRUCT> pPromptStruct,
  int dwFlags,
  Pointer<CRYPT_INTEGER_BLOB> pDataOut,
);

@internal
@Native<BOOL Function(Pointer, Uint32, Uint32)>()
external int CryptProtectMemory_Wrapper(
  Pointer pDataIn,
  int cbDataIn,
  int dwFlags,
);

@internal
@Native<
  BOOL Function(
    Pointer<CRYPT_INTEGER_BLOB>,
    Pointer<PWSTR>,
    Pointer<CRYPT_INTEGER_BLOB>,
    Pointer,
    Pointer<CRYPTPROTECT_PROMPTSTRUCT>,
    Uint32,
    Pointer<CRYPT_INTEGER_BLOB>,
  )
>()
external int CryptUnprotectData_Wrapper(
  Pointer<CRYPT_INTEGER_BLOB> pDataIn,
  Pointer<PWSTR> ppszDataDescr,
  Pointer<CRYPT_INTEGER_BLOB> pOptionalEntropy,
  Pointer pvReserved,
  Pointer<CRYPTPROTECT_PROMPTSTRUCT> pPromptStruct,
  int dwFlags,
  Pointer<CRYPT_INTEGER_BLOB> pDataOut,
);

@internal
@Native<BOOL Function(Pointer, Uint32, Uint32)>()
external int CryptUnprotectMemory_Wrapper(
  Pointer pDataIn,
  int cbDataIn,
  int dwFlags,
);

@internal
@Native<BOOL Function(PSID, PCWSTR, Uint32, Pointer<Uint32>, Pointer<Uint32>)>()
external int CryptUpdateProtectedState_Wrapper(
  int pOldSid,
  PCWSTR pwszOldPassword,
  int dwFlags,
  Pointer<Uint32> pdwSuccessCount,
  Pointer<Uint32> pdwFailureCount,
);
