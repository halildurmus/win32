// Maps FFI prototypes onto the corresponding Win32 API function calls.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../_internal/crypt32.g.dart';
import '../allocator.dart';
import '../bstr.dart';
import '../com/interface.g.dart';
import '../com/iunknown.g.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../exception.dart';
import '../extensions/pointer.dart';
import '../hresult.dart';
import '../hstring.dart';
import '../macros.dart';
import '../ntstatus.dart';
import '../pcstr.dart';
import '../pcwstr.dart';
import '../pstr.dart';
import '../pwstr.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';

/// Performs encryption on the data in a DATA_BLOB structure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dpapi/nf-dpapi-cryptprotectdata>.
///
/// {@category crypt32}
@pragma('vm:prefer-inline')
bool CryptProtectData(
  Pointer<CRYPT_INTEGER_BLOB> pDataIn,
  PCWSTR? szDataDescr,
  Pointer<CRYPT_INTEGER_BLOB>? pOptionalEntropy,
  Pointer<CRYPTPROTECT_PROMPTSTRUCT>? pPromptStruct,
  int dwFlags,
  Pointer<CRYPT_INTEGER_BLOB> pDataOut,
) =>
    CryptProtectData_Wrapper(
      pDataIn,
      szDataDescr ?? nullptr,
      pOptionalEntropy ?? nullptr,
      nullptr,
      pPromptStruct ?? nullptr,
      dwFlags,
      pDataOut,
    ) !=
    FALSE;

/// Encrypts memory to prevent others from viewing sensitive information in your
/// process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dpapi/nf-dpapi-cryptprotectmemory>.
///
/// {@category crypt32}
@pragma('vm:prefer-inline')
bool CryptProtectMemory(Pointer pDataIn, int cbDataIn, int dwFlags) =>
    CryptProtectMemory_Wrapper(pDataIn, cbDataIn, dwFlags) != FALSE;

/// Decrypts and does an integrity check of the data in a DATA_BLOB structure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dpapi/nf-dpapi-cryptunprotectdata>.
///
/// {@category crypt32}
@pragma('vm:prefer-inline')
bool CryptUnprotectData(
  Pointer<CRYPT_INTEGER_BLOB> pDataIn,
  Pointer<PWSTR>? ppszDataDescr,
  Pointer<CRYPT_INTEGER_BLOB>? pOptionalEntropy,
  Pointer<CRYPTPROTECT_PROMPTSTRUCT>? pPromptStruct,
  int dwFlags,
  Pointer<CRYPT_INTEGER_BLOB> pDataOut,
) =>
    CryptUnprotectData_Wrapper(
      pDataIn,
      ppszDataDescr ?? nullptr,
      pOptionalEntropy ?? nullptr,
      nullptr,
      pPromptStruct ?? nullptr,
      dwFlags,
      pDataOut,
    ) !=
    FALSE;

/// Decrypts memory that was encrypted using the CryptProtectMemory function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dpapi/nf-dpapi-cryptunprotectmemory>.
///
/// {@category crypt32}
@pragma('vm:prefer-inline')
bool CryptUnprotectMemory(Pointer pDataIn, int cbDataIn, int dwFlags) =>
    CryptUnprotectMemory_Wrapper(pDataIn, cbDataIn, dwFlags) != FALSE;

/// Migrates the current user's master keys after the user's security identifier
/// (SID) has changed.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dpapi/nf-dpapi-cryptupdateprotectedstate>.
///
/// {@category crypt32}
@pragma('vm:prefer-inline')
bool CryptUpdateProtectedState(
  int? pOldSid,
  PCWSTR? pwszOldPassword,
  int dwFlags,
  Pointer<Uint32>? pdwSuccessCount,
  Pointer<Uint32>? pdwFailureCount,
) =>
    CryptUpdateProtectedState_Wrapper(
      pOldSid ?? NULL,
      pwszOldPassword ?? nullptr,
      dwFlags,
      pdwSuccessCount ?? nullptr,
      pdwFailureCount ?? nullptr,
    ) !=
    FALSE;
