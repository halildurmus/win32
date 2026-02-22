// ignore_for_file: camel_case_types

import 'exception.dart';
import 'hresult.dart';
import 'ntstatus.dart';
import 'win32_error.dart';

/// A strongly-typed representation of an RPC [RPC_STATUS].
///
/// [RPC_STATUS] values are returned by Windows Remote Procedure Call (RPC)
/// APIs to indicate the outcome of an operation. Unlike [HRESULT] and
/// [NTSTATUS], RPC status codes use **zero exclusively** to indicate success;
/// any non-zero value represents failure.
///
/// This distinction is important: negative and positive values are both
/// treated as errors, and success checking must therefore use equality
/// rather than sign.
///
/// This extension type provides:
/// - Canonical success / failure semantics for RPC APIs
/// - Structured success-path execution
/// - Conversion to [HRESULT] for interoperability with COM and Win32 APIs
///
/// Example:
/// ```dart
/// const status = RPC_S_ACCESS_DENIED;
/// if (status.isError) {
///   final hr = status.toHRESULT();
///   print(hr.message);
/// }
/// ```
extension type const RPC_STATUS._(int code) implements int {
  /// Creates an [RPC_STATUS] from a 32-bit signed integer.
  ///
  /// The provided [code] must fit within the signed 32-bit range.
  const RPC_STATUS(this.code)
    : assert(
        code >= -0x80000000 && code <= 0x7FFFFFFF,
        'Invalid RPC_STATUS value: $code',
      );

  /// Whether this status represents success.
  ///
  /// For RPC APIs, **only zero** indicates success.
  @pragma('vm:prefer-inline')
  bool get isOk => code == 0;

  /// Whether this status represents failure.
  ///
  /// Any non-zero value indicates failure.
  @pragma('vm:prefer-inline')
  bool get isError => !isOk;

  /// Executes [op] if this status represents success.
  ///
  /// If the status represents failure, a [WindowsException] is thrown using
  /// the equivalent [HRESULT] value.
  ///
  /// This allows RPC APIs to participate naturally in exception-based error
  /// handling alongside COM and Win32 calls.
  @pragma('vm:prefer-inline')
  T onSuccess<T>(T Function() op) {
    if (isOk) return op();
    throw WindowsException(toHRESULT());
  }

  /// Converts this [RPC_STATUS] to its corresponding [HRESULT].
  ///
  /// The conversion is performed via [WIN32_ERROR], preserving the original
  /// RPC error semantics while allowing the value to cross API boundaries
  /// cleanly.
  @pragma('vm:prefer-inline')
  HRESULT toHRESULT() => WIN32_ERROR(code).toHRESULT();
}
