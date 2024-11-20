import 'extensions/int.dart';
import 'hresult.dart';

/// The canonical exception type used by `package:win32`.
///
/// [WindowsException] represents a failure reported by a Windows API and
/// encapsulates an [HRESULT] error code along with an optional, human-readable
/// message.
///
/// This exception is thrown whenever a Windows API call reports failure via
/// an [HRESULT], either directly or indirectly (e.g., through COM, WinRT, or
/// automation APIs). It provides a consistent, Dart-friendly error surface
/// across the entire package.
///
/// Error message resolution:
///
/// - If a custom [message] is supplied, it is used verbatim.
/// - Otherwise, the exception falls back to [HRESULT.message], which typically
///   resolves to the system-provided error description.
/// - If neither is available, the exception carries only the error code.
class WindowsException implements Exception {
  /// Creates a new [WindowsException] for the given [HRESULT].
  ///
  /// The optional [message] can be used to override or augment the default
  /// system-provided error description associated with the HRESULT.
  const WindowsException(this.hr, {String? message}) : _message = message;

  /// The [HRESULT] error code associated with this exception.
  ///
  /// This value represents the authoritative error returned by the Windows API.
  final HRESULT hr;

  /// An optional, explicitly supplied error message.
  final String? _message;

  /// A human-readable description of the error.
  ///
  /// Returns the explicitly provided message if one was supplied at
  /// construction time. Otherwise, returns the system-resolved message
  /// associated with [hr], if available.
  ///
  /// If neither source yields a message, an empty string is returned.
  String get message => _message ?? hr.message;

  /// Converts this exception to a human-readable string.
  ///
  /// The resulting string always includes the HRESULT value in hexadecimal
  /// form. If a message is available, it is appended for additional context.
  ///
  /// Examples:
  /// ```text
  /// WindowsException HRESULT(0x80070005): Access is denied.
  /// ```
  ///
  /// ```text
  /// WindowsException HRESULT(0x80004005)
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
