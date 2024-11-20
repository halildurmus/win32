// ignore_for_file: camel_case_types

import 'exception.dart';
import 'hresult.dart';
import 'macros.dart';
import 'win32/kernel32.g.dart';

/// [WIN32_ERROR] is a 32-bit unsigned integer used across the classic Win32 API
/// surface to indicate the outcome of a function call, representing either
/// _success_ or _failure_.
///
/// This extension type provides utility methods to interpret the status code,
/// such as checking whether it represents _success_ or _failure_, mapping the
/// code to custom operations, and converting it to an [HRESULT].
///
/// Example:
/// ```dart
/// const error = ERROR_ACCESS_DENIED; // A WIN32_ERROR representing failure.
/// print(error.isError); // true
/// print(error.isOk); // false
/// HRESULT hr = error.toHRESULT(); // Convert to HRESULT.
/// ```
extension type const WIN32_ERROR._(int code) implements int {
  /// Creates a [WIN32_ERROR] from a 32-bit unsigned integer.
  ///
  /// The value must fall within the valid DWORD range: `0` to `0xFFFFFFFF`.
  const WIN32_ERROR(this.code)
    : assert(
        code >= 0 && code <= 0xFFFFFFFF,
        'Invalid WIN32_ERROR value: $code. It must be a valid 32-bit unsigned integer.',
      );

  /// Creates a `WIN32_ERROR` from the Win32 error code returned by
  /// `GetLastError()`.
  factory WIN32_ERROR.fromThread() => GetLastError();

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
  HRESULT toHRESULT() => HRESULT_FROM_WIN32(this);
}
