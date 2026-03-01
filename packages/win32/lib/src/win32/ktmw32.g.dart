// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Maps FFI prototypes onto the corresponding Win32 API function calls.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';

import '../_internal/ktmw32.g.dart';
import '../_internal/win32.dart';
import '../bstr.dart';
import '../com/interface.g.dart';
import '../com/iunknown.g.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../exception.dart';
import '../extensions/pointer.dart';
import '../guid.dart';
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

/// Requests that the specified transaction be committed.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/ktmw32/nf-ktmw32-committransaction>.
///
/// {@category ktmw32}
Win32Result<bool> CommitTransaction(HANDLE transactionHandle) {
  final result_ = CommitTransaction_Wrapper(transactionHandle);
  return .new(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Creates a new transaction object.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/ktmw32/nf-ktmw32-createtransaction>.
///
/// {@category ktmw32}
Win32Result<HANDLE> CreateTransaction(
  Pointer<SECURITY_ATTRIBUTES>? lpTransactionAttributes,
  Pointer<GUID>? uOW,
  int? createOptions,
  int? isolationLevel,
  int? isolationFlags,
  int? timeout,
  PCWSTR? description,
) {
  final result_ = CreateTransaction_Wrapper(
    lpTransactionAttributes ?? nullptr,
    uOW ?? nullptr,
    createOptions ?? NULL,
    isolationLevel ?? NULL,
    isolationFlags ?? NULL,
    timeout ?? NULL,
    description ?? nullptr,
  );
  return .new(value: .new(result_.value.ptr), error: result_.error);
}

/// Requests that the specified transaction be rolled back.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/ktmw32/nf-ktmw32-rollbacktransaction>.
///
/// {@category ktmw32}
Win32Result<bool> RollbackTransaction(HANDLE transactionHandle) {
  final result_ = RollbackTransaction_Wrapper(transactionHandle);
  return .new(value: result_.value.i32 != FALSE, error: result_.error);
}
