import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';
import 'exception.dart';
import 'extensions/arena.dart';
import 'extensions/pointer.dart';
import 'ntstatus.dart';
import 'structs.g.dart';
import 'win32/kernel32.g.dart';
import 'win32_error.dart';
import 'win32_result.dart';

/// A strongly-typed representation of a Windows [HRESULT].
///
/// An [HRESULT] is a 32-bit signed integer used throughout COM, WinRT, and
/// large portions of the Win32 API surface to report success or failure.
///
/// By convention:
/// - Values **greater than or equal to zero** indicate success
/// - Values **less than zero** indicate failure
///
/// This extension type wraps the raw integer value and provides:
/// - Semantic success / failure checks
/// - Conversions from related error domains ([NTSTATUS], [WIN32_ERROR])
/// - Automatic translation to human-readable error messages
/// - Structured error handling via [WindowsException]
///
/// [HRESULT] should be treated as a *protocol*, not merely a number. Its bit
/// layout and origin determine how error information is interpreted.
///
/// Example:
/// ```dart
/// const hr = E_INVALIDARG;
/// if (hr.isError) {
///   print(hr.message);
/// }
/// ```
///
/// {@category com}
extension type const HRESULT._(int code) implements int {
  /// Creates an [HRESULT] from a 32-bit signed integer.
  ///
  /// The provided [code] must fit within the signed 32-bit range.
  const HRESULT(this.code)
    : assert(
        code >= -0x80000000 && code <= 0x7FFFFFFF,
        'Invalid HRESULT value: $code',
      );

  /// Converts an [NTSTATUS] value into an [HRESULT].
  ///
  /// This follows the standard Windows mapping rules used by native APIs.
  @pragma('vm:prefer-inline')
  factory HRESULT.fromNt(NTSTATUS error) => error.toHRESULT();

  /// Converts a Win32 error code ([WIN32_ERROR]) into an [HRESULT].
  ///
  /// This is commonly used when propagating errors obtained from
  /// `GetLastError()` into COM-style APIs.
  @pragma('vm:prefer-inline')
  factory HRESULT.fromWin32(WIN32_ERROR error) => error.toHRESULT();

  // ignore: constant_identifier_names
  static const _NTSTATUS_BASE = 0x1000_0000;

  /// Whether this result represents success.
  ///
  /// A result is considered successful if its value is greater than or equal
  /// to zero.
  @pragma('vm:prefer-inline')
  bool get isOk => code >= 0;

  /// Whether this result represents failure.
  ///
  /// A result is considered a failure if its value is less than zero.
  @pragma('vm:prefer-inline')
  bool get isError => !isOk;

  /// Executes [op] if this [HRESULT] represents success.
  ///
  /// If the result represents failure, a [WindowsException] is thrown using
  /// this error code.
  ///
  /// This is intended for fluent, success-oriented control flow.
  ///
  /// Example:
  /// ```dart
  /// final value = hr.onSuccess(() => computeValue());
  /// ```
  @pragma('vm:prefer-inline')
  T onSuccess<T>(T Function() op) {
    if (isOk) return op();
    throw WindowsException(this);
  }

  /// Returns a human-readable error message for this [HRESULT].
  ///
  /// The message is resolved using the Windows `FormatMessage` API and follows
  /// standard system behavior:
  ///
  /// - System HRESULTs are resolved via the system message table
  /// - NTSTATUS-derived HRESULTs are resolved via `ntdll.dll`
  /// - Trailing CR/LF sequences are removed for cleanliness
  ///
  /// If no message can be resolved, an empty string is returned.
  ///
  /// This getter performs native allocations and should not be used in
  /// performance-critical loops.
  String get message => using((arena) {
    final lpBuffer = arena<Pointer<Utf16>>();
    var module = HMODULE(nullptr);

    var code = this.code;
    var flags =
        FORMAT_MESSAGE_ALLOCATE_BUFFER |
        FORMAT_MESSAGE_FROM_SYSTEM |
        FORMAT_MESSAGE_IGNORE_INSERTS;

    // NTSTATUS-derived HRESULTs require resolution via ntdll.dll.
    if (code & _NTSTATUS_BASE == _NTSTATUS_BASE) {
      code ^= _NTSTATUS_BASE;
      flags |= FORMAT_MESSAGE_FROM_HMODULE;
      final libraryName = arena.pcwstr('ntdll.dll');
      module = LoadLibraryEx(
        libraryName,
        LOAD_LIBRARY_SEARCH_DEFAULT_DIRS,
      ).value;
    }

    final size = FormatMessage(
      flags,
      module,
      code,
      0,
      .new(lpBuffer.cast()),
      0,
      nullptr,
    ).value;

    if (module.isNotNull) {
      final Win32Result(:value, :error) = module.close();
      assert(value, 'FreeLibrary failed with ${error.toHRESULT()}');
    }

    if (lpBuffer.value.isNotNull && size > 0) {
      var errorMessage = lpBuffer.value.toDartString(length: size);
      if (errorMessage.endsWith('\r\n')) {
        errorMessage = errorMessage.substring(0, errorMessage.length - 2);
      }
      final Win32Result(:value, :error) = HLOCAL(lpBuffer.value).close();
      assert(value.isNull, 'LocalFree failed with ${error.toHRESULT()}');
      return errorMessage;
    }

    return '';
  });
}
