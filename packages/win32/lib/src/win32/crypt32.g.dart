// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Maps FFI prototypes onto the corresponding Win32 API function calls.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';

import '../_internal/crypt32.g.dart';
import '../_internal/win32.dart';
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
import '../rpc_status.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import '../win32_error.dart';
import '../win32_result.dart';

/// Performs encryption on the data in a DATA_BLOB structure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dpapi/nf-dpapi-cryptprotectdata>.
///
/// {@category crypt32}
Win32Result<bool> CryptProtectData(
  Pointer<CRYPT_INTEGER_BLOB> pDataIn,
  PCWSTR? szDataDescr,
  Pointer<CRYPT_INTEGER_BLOB>? pOptionalEntropy,
  Pointer<CRYPTPROTECT_PROMPTSTRUCT>? pPromptStruct,
  int dwFlags,
  Pointer<CRYPT_INTEGER_BLOB> pDataOut,
) {
  final result_ = CryptProtectData_Wrapper(
    pDataIn,
    szDataDescr ?? nullptr,
    pOptionalEntropy ?? nullptr,
    nullptr,
    pPromptStruct ?? nullptr,
    dwFlags,
    pDataOut,
  );
  return .new(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Encrypts memory to prevent others from viewing sensitive information in your
/// process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dpapi/nf-dpapi-cryptprotectmemory>.
///
/// {@category crypt32}
Win32Result<bool> CryptProtectMemory(
  Pointer pDataIn,
  int cbDataIn,
  int dwFlags,
) {
  final result_ = CryptProtectMemory_Wrapper(pDataIn, cbDataIn, dwFlags);
  return .new(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Decrypts and does an integrity check of the data in a DATA_BLOB structure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dpapi/nf-dpapi-cryptunprotectdata>.
///
/// {@category crypt32}
Win32Result<bool> CryptUnprotectData(
  Pointer<CRYPT_INTEGER_BLOB> pDataIn,
  Pointer<Pointer<Utf16>>? ppszDataDescr,
  Pointer<CRYPT_INTEGER_BLOB>? pOptionalEntropy,
  Pointer<CRYPTPROTECT_PROMPTSTRUCT>? pPromptStruct,
  int dwFlags,
  Pointer<CRYPT_INTEGER_BLOB> pDataOut,
) {
  final result_ = CryptUnprotectData_Wrapper(
    pDataIn,
    ppszDataDescr ?? nullptr,
    pOptionalEntropy ?? nullptr,
    nullptr,
    pPromptStruct ?? nullptr,
    dwFlags,
    pDataOut,
  );
  return .new(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Decrypts memory that was encrypted using the CryptProtectMemory function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dpapi/nf-dpapi-cryptunprotectmemory>.
///
/// {@category crypt32}
Win32Result<bool> CryptUnprotectMemory(
  Pointer pDataIn,
  int cbDataIn,
  int dwFlags,
) {
  final result_ = CryptUnprotectMemory_Wrapper(pDataIn, cbDataIn, dwFlags);
  return .new(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Migrates the current user's master keys after the user's security identifier
/// (SID) has changed.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dpapi/nf-dpapi-cryptupdateprotectedstate>.
///
/// {@category crypt32}
Win32Result<bool> CryptUpdateProtectedState(
  PSID? pOldSid,
  PCWSTR? pwszOldPassword,
  int dwFlags,
  Pointer<Uint32>? pdwSuccessCount,
  Pointer<Uint32>? pdwFailureCount,
) {
  final result_ = CryptUpdateProtectedState_Wrapper(
    pOldSid ?? nullptr,
    pwszOldPassword ?? nullptr,
    dwFlags,
    pdwSuccessCount ?? nullptr,
    pdwFailureCount ?? nullptr,
  );
  return .new(value: result_.value.i32 != FALSE, error: result_.error);
}
