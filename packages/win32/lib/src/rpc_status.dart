// ignore_for_file: camel_case_types

import 'exception.dart';
import 'hresult.dart';
import 'win32_error.dart';

/// [RPC_STATUS] is a 32-bit signed integer used by Remote Procedure Call (RPC)
/// functions to indicate the outcome of a call, representing either _success_
/// or _failure_.
///
/// This extension type provides utility methods to interpret the status code,
/// such as checking whether it represents _success_ or _failure_, mapping the
/// code to custom operations, and converting it to an [HRESULT].
///
/// Example:
/// ```dart
/// const status = RPC_S_ACCESS_DENIED; // A RPC_STATUS representing failure.
/// print(status.isError); // true
/// print(status.isOk); // false
/// HRESULT hr = status.toHRESULT(); // Convert to HRESULT.
/// ```
extension type const RPC_STATUS._(int code) implements int {
  /// Creates an [RPC_STATUS] from a 32-bit signed integer.
  const RPC_STATUS(this.code)
    : assert(
        code >= -0x80000000 && code <= 0x7FFFFFFF,
        'Invalid RPC_STATUS value: $code. It must be a valid 32-bit signed integer.',
      );

  /// Determines whether this error code represents a _success_.
  @pragma('vm:prefer-inline')
  bool get isOk => code == 0;

  /// Determines whether this error code represents a _failure_.
  @pragma('vm:prefer-inline')
  bool get isError => !isOk;

  /// Executes the provided function [op] if this error code is a _success_.
  ///
  /// Throws a [WindowsException] if the code represents a _failure_.
  @pragma('vm:prefer-inline')
  T onSuccess<T>(T Function() op) {
    if (isOk) return op();
    throw WindowsException(toHRESULT());
  }

  /// Converts this error code to its equivalent [HRESULT] value.
  @pragma('vm:prefer-inline')
  HRESULT toHRESULT() => WIN32_ERROR(code).toHRESULT();
}
