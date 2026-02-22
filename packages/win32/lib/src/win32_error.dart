// ignore_for_file: camel_case_types

import 'exception.dart';
import 'hresult.dart';
import 'macros.dart';

/// A strongly-typed representation of a Win32 thread-local error code.
///
/// [WIN32_ERROR] values are returned by classic Win32 APIs that follow the
/// `SetLastError` / `GetLastError` convention. These APIs typically indicate
/// success or failure through a separate return value, while detailed error
/// information is retrieved from thread-local storage.
///
/// A [WIN32_ERROR] follows strict semantics:
/// - A value of **zero** indicates success
/// - Any non-zero value represents failure
///
/// This extension type provides:
/// - Canonical success / failure checks
/// - Structured success-path execution
/// - Conversion to [HRESULT] for interoperability with COM and NT-style APIs
///
/// Example:
/// ```dart
/// const error = ERROR_ACCESS_DENIED;
/// if (error.isError) {
///   final hr = error.toHRESULT();
///   print(hr.message);
/// }
/// ```
extension type const WIN32_ERROR._(int code) implements int {
  /// Creates a [WIN32_ERROR] from a 32-bit unsigned integer.
  ///
  /// The value must fall within the valid DWORD range: `0` to `0xFFFFFFFF`.
  const WIN32_ERROR(this.code)
    : assert(
        code >= 0 && code <= 0xFFFFFFFF,
        'Invalid WIN32_ERROR value: $code',
      );

  /// Whether this error code represents success.
  ///
  /// For Win32 APIs, **only zero** indicates success.
  @pragma('vm:prefer-inline')
  bool get isOk => code == 0;

  /// Whether this error code represents failure.
  ///
  /// Any non-zero value indicates failure.
  @pragma('vm:prefer-inline')
  bool get isError => !isOk;

  /// Executes [op] if this error code represents success.
  ///
  /// If the code represents failure, a [WindowsException] is thrown using
  /// the equivalent [HRESULT] value.
  ///
  /// This allows Win32 APIs to participate naturally in exception-based
  /// error handling alongside COM and NT APIs.
  @pragma('vm:prefer-inline')
  T onSuccess<T>(T Function() op) {
    if (isOk) return op();
    throw WindowsException(toHRESULT());
  }

  /// Converts this [WIN32_ERROR] to its corresponding [HRESULT].
  ///
  /// The conversion is performed using the [HRESULT_FROM_WIN32] macro,
  /// preserving the original Win32 error semantics.
  @pragma('vm:prefer-inline')
  HRESULT toHRESULT() => HRESULT_FROM_WIN32(this);
}
