// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Wrappers for Win32 API functions that wrap the native APIs and preserve the
// result of GetLastError(), making it easier to debug issues and handle errors
// reliably.
//
// ignore_for_file: non_constant_identifier_names, unused_import

@DefaultAsset('package:win32/win32.dart')
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';

import '../callbacks.g.dart';
import '../functions.dart';
import '../guid.dart';
import '../pcstr.dart';
import '../pcwstr.dart';
import '../structs.g.dart';
import '../types.dart';
import 'win32.dart' show NativeWin32Result;

@internal
@Native<
  NativeWin32Result Function(
    Pointer<CRYPT_INTEGER_BLOB>,
    Pointer<Utf16>,
    Pointer<CRYPT_INTEGER_BLOB>,
    Pointer,
    Pointer<CRYPTPROTECT_PROMPTSTRUCT>,
    Uint32,
    Pointer<CRYPT_INTEGER_BLOB>,
  )
>()
external NativeWin32Result CryptProtectData_Wrapper(
  Pointer<CRYPT_INTEGER_BLOB> pDataIn,
  Pointer<Utf16> szDataDescr,
  Pointer<CRYPT_INTEGER_BLOB> pOptionalEntropy,
  Pointer pvReserved,
  Pointer<CRYPTPROTECT_PROMPTSTRUCT> pPromptStruct,
  int dwFlags,
  Pointer<CRYPT_INTEGER_BLOB> pDataOut,
);

@internal
@Native<NativeWin32Result Function(Pointer, Uint32, Uint32)>()
external NativeWin32Result CryptProtectMemory_Wrapper(
  Pointer pDataIn,
  int cbDataIn,
  int dwFlags,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer<CRYPT_INTEGER_BLOB>,
    Pointer<Pointer<Utf16>>,
    Pointer<CRYPT_INTEGER_BLOB>,
    Pointer,
    Pointer<CRYPTPROTECT_PROMPTSTRUCT>,
    Uint32,
    Pointer<CRYPT_INTEGER_BLOB>,
  )
>()
external NativeWin32Result CryptUnprotectData_Wrapper(
  Pointer<CRYPT_INTEGER_BLOB> pDataIn,
  Pointer<Pointer<Utf16>> ppszDataDescr,
  Pointer<CRYPT_INTEGER_BLOB> pOptionalEntropy,
  Pointer pvReserved,
  Pointer<CRYPTPROTECT_PROMPTSTRUCT> pPromptStruct,
  int dwFlags,
  Pointer<CRYPT_INTEGER_BLOB> pDataOut,
);

@internal
@Native<NativeWin32Result Function(Pointer, Uint32, Uint32)>()
external NativeWin32Result CryptUnprotectMemory_Wrapper(
  Pointer pDataIn,
  int cbDataIn,
  int dwFlags,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer,
    Pointer<Utf16>,
    Uint32,
    Pointer<Uint32>,
    Pointer<Uint32>,
  )
>()
external NativeWin32Result CryptUpdateProtectedState_Wrapper(
  Pointer pOldSid,
  Pointer<Utf16> pwszOldPassword,
  int dwFlags,
  Pointer<Uint32> pdwSuccessCount,
  Pointer<Uint32> pdwFailureCount,
);
