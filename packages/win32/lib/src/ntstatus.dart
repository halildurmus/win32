import 'exception.dart';
import 'hresult.dart';
import 'macros.dart';

/// A strongly-typed representation of a Windows [NTSTATUS].
///
/// [NTSTATUS] values originate from the Windows NT kernel and are commonly
/// returned by low-level system services, drivers, and native runtime
/// components.
///
/// Like [HRESULT], an [NTSTATUS] is a 32-bit signed integer where:
/// - Values **greater than or equal to zero** indicate success
/// - Values **less than zero** indicate failure
///
/// Unlike [HRESULT], [NTSTATUS] values are *not* intended to be surfaced
/// directly to user-mode or COM consumers. They are typically translated into
/// [HRESULT] values when crossing API or abstraction boundaries.
///
/// This extension type provides:
/// - Semantic success / failure checks
/// - Structured success-path execution
/// - Lossless conversion to [HRESULT] using standard Windows macros
///
/// Example:
/// ```dart
/// const status = STATUS_NOT_IMPLEMENTED;
/// if (status.isError) {
///   final hr = status.toHRESULT();
///   print(hr.message);
/// }
/// ```
extension type const NTSTATUS._(int code) implements int {
  /// Creates an [NTSTATUS] from a 32-bit signed integer.
  ///
  /// The provided [code] must fit within the signed 32-bit range.
  const NTSTATUS(this.code)
    : assert(
        code >= -0x80000000 && code <= 0x7FFFFFFF,
        'Invalid NTSTATUS value: $code',
      );

  /// Whether this status represents success.
  ///
  /// A status is considered successful if its value is greater than or equal
  /// to zero.
  @pragma('vm:prefer-inline')
  bool get isOk => code >= 0;

  /// Whether this status represents failure.
  ///
  /// A status is considered a failure if its value is less than zero.
  @pragma('vm:prefer-inline')
  bool get isError => !isOk;

  /// Executes [op] if this status represents success.
  ///
  /// If the status represents failure, a [WindowsException] is thrown using
  /// the equivalent [HRESULT] value.
  ///
  /// This allows NTSTATUS-producing APIs to integrate cleanly with
  /// exception-based error handling at higher layers.
  ///
  /// Example:
  /// ```dart
  /// final value = status.onSuccess(() => computeValue());
  /// ```
  @pragma('vm:prefer-inline')
  T onSuccess<T>(T Function() op) {
    if (isOk) return op();
    throw WindowsException(toHRESULT());
  }

  /// Converts this [NTSTATUS] to its corresponding [HRESULT].
  ///
  /// The conversion follows standard Windows rules via the [HRESULT_FROM_NT]
  /// macro and preserves the original error semantics.
  ///
  /// This should be used whenever an NTSTATUS value is exposed beyond low-level
  /// or kernel-adjacent APIs.
  @pragma('vm:prefer-inline')
  HRESULT toHRESULT() => HRESULT_FROM_NT(this);
}
