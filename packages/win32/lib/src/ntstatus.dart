import 'exception.dart';
import 'hresult.dart';
import 'macros.dart';

/// [NTSTATUS] is a 32-bit signed integer, most commonly used within the
/// Windows NT operating system family to indicate the outcome of a function
/// call, representing either _success_ or _failure_.
///
/// This extension type provides utility methods to interpret the status code,
/// such as checking whether it represents _success_ or _failure_, mapping the
/// code to custom operations, and converting it to an [HRESULT].
///
/// Example:
/// ```dart
/// const status = STATUS_NOT_IMPLEMENTED; // An NTSTATUS representing an error.
/// print(status.isError); // true
/// print(status.isOk); // false
/// HRESULT hr = status.toHRESULT(); // Convert to HRESULT.
/// ```
extension type const NTSTATUS._(int code) implements int {
  /// Creates an [NTSTATUS] from a 32-bit signed integer.
  const NTSTATUS(this.code)
    : assert(
        code >= -0x80000000 && code <= 0x7FFFFFFF,
        'Invalid NTSTATUS value: $code. It must be a valid 32-bit signed integer.',
      );

  /// Determines whether this error code represents a _success_.
  ///
  /// A code is considered a success if its value is greater than or equal to
  /// zero.
  @pragma('vm:prefer-inline')
  bool get isOk => code >= 0;

  /// Determines whether this error code represents a _failure_.
  ///
  /// A code is considered a failure if its value is less than zero.
  @pragma('vm:prefer-inline')
  bool get isError => !isOk;

  /// Executes the provided function [op] if this error code is a _success_.
  ///
  /// Throws a [WindowsException] if the code represents a _failure_ with the
  /// current error code.
  ///
  /// This method simplifies error handling by letting you focus on the success
  /// path while automatically throwing an exception in case of failure.
  ///
  /// Example:
  /// ```dart
  /// NTSTATUS errorCode = someFunction();
  /// String result = errorCode.onSuccess(() => 'Operation succeeded!');
  /// ```
  @pragma('vm:prefer-inline')
  T onSuccess<T>(T Function() op) {
    if (isOk) return op();
    throw WindowsException(toHRESULT());
  }

  /// Converts this error code to its equivalent [HRESULT] value.
  ///
  /// This is useful for interoperability with APIs that use HRESULT codes to
  /// represent errors or statuses. The conversion is performed using the
  /// [HRESULT_FROM_NT] macro.
  @pragma('vm:prefer-inline')
  HRESULT toHRESULT() => HRESULT_FROM_NT(this);
}
