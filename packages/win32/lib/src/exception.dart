import 'extensions/int.dart';
import 'hresult.dart';

/// A generalized Windows exception that can be thrown by this package.
///
/// This class wraps an [HRESULT] error code and an optional error message,
/// making it easier to understand and handle errors returned by Windows APIs.
/// It provides a clear and consistent way to surface these errors in your
/// application.
///
/// Typically, this exception is thrown when a Windows API call returns a failed
/// [HRESULT]. The exception includes the error code (formatted as a hexadecimal
/// string) and, if available, a detailed message for additional context.
class WindowsException implements Exception {
  /// Creates a new instance of [WindowsException] with the specified [HRESULT]
  /// and an optional error [message].
  const WindowsException(this.hr, {String? message}) : _message = message;

  /// The [HRESULT] error code associated with this exception.
  final HRESULT hr;

  /// The error message provided during the creation of the exception.
  final String? _message;

  /// A human-readable description of the error.
  ///
  /// Returns the custom error message if one was provided during the creation
  /// of the exception. Otherwise, it falls back to the default error message
  /// from [HRESULT.message].
  ///
  /// If no message is available, it returns an empty string.
  String get message => _message ?? hr.message;

  /// Converts the exception to a human-readable string.
  ///
  /// The resulting string includes the error code (in hexadecimal format) and
  /// the error message, if available.
  ///
  /// For example:
  /// ```text
  /// WindowsException HRESULT(0x80070005): Access is denied.
  /// ```
  ///
  /// If no message is available:
  /// ```text
  /// WindowsException HRESULT(0x80070005)
  /// ```
  @override
  String toString() {
    final code = hr.toHexString();
    final message = this.message;
    return message.isNotEmpty
        ? 'WindowsException HRESULT($code): $message'
        : 'WindowsException HRESULT($code)';
  }
}
