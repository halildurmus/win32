import 'enums.g.dart';
import 'win32_error.dart';

/// Represents the result of a Win32 API call that follows the
/// `SetLastError` / `GetLastError` convention.
///
/// Many Win32 APIs do **not** return rich error information directly. Instead,
/// they:
/// - Return a sentinel value (e.g., `BOOL`, `HANDLE`, `NULL`)
/// - Store extended error details in thread-local state retrievable via
///   `GetLastError()`
///
/// When such APIs are called through Dart FFI, invoking `GetLastError()`
/// *after* the native call is fundamentally unreliable:
/// - Dart ↔ native transitions may overwrite the last-error state
/// - The Dart VM and FFI glue can invoke additional Win32 APIs internally
/// - See: https://github.com/dart-lang/sdk/issues/38832
///
/// [Win32Result] establishes a correctness boundary by capturing:
/// - The primary return value ([value])
/// - The corresponding Win32 error code ([error])
/// **on the native side**, immediately after the API call
///
/// This guarantees deterministic and race-free error handling in Dart code.
///
/// Example:
/// ```dart
/// final Win32Result(value: hFile, :error) = CreateFile(...);
/// if (error.isError) throw WindowsException(error.toHRESULT());
/// // Use the valid handle
/// ```
final class Win32Result<T extends Object> {
  /// Creates a Win32 result containing the API return [value] and the captured
  /// Win32 [error] code.
  const Win32Result({required this.value, required this.error});

  /// The primary value returned by the Win32 API call.
  ///
  /// This may be a handle, pointer, boolean, integer, or any other value
  /// depending on the wrapped function.
  final T value;

  /// The Win32 error code captured immediately after the API call.
  ///
  /// A value of zero ([ERROR_SUCCESS]) indicates success.
  final WIN32_ERROR error;
}
