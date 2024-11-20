import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'allocator.dart';
import 'constants.dart';
import 'constants.g.dart';
import 'enums.g.dart';
import 'exception.dart';
import 'extensions/pointer.dart';
import 'ntstatus.dart';
import 'pcwstr.dart';
import 'structs.g.dart';
import 'utils.dart';
import 'win32/kernel32.g.dart';
import 'win32_error.dart';
import 'win32_result.dart';

/// [HRESULT] is a 32-bit signed integer, most commonly used in COM programming,
/// to indicate the outcome of a function call, representing either _success_
/// or _failure_.
///
/// This extension type provides utility methods to interpret the status code,
/// such as checking whether it represents _success_ or _failure_, mapping the
/// code to custom operations, and converting the error code into a
/// human-readable message.
///
/// Example:
/// ```dart
/// const hr = E_INVALIDARG; // An HRESULT representing an error.
/// if (hr.isError) {
///   print(hr.message); // Output the human-readable error message.
/// }
/// ```
///
/// {@category com}
extension type const HRESULT._(int code) implements int {
  /// Creates an [HRESULT] from a 32-bit signed integer.
  const HRESULT(this.code)
    : assert(
        code >= -0x80000000 && code <= 0x7FFFFFFF,
        'Invalid HRESULT value: $code. It must be a valid 32-bit signed integer.',
      );

  /// Maps an NT error code to an [HRESULT] value.
  @pragma('vm:prefer-inline')
  factory HRESULT.fromNt(NTSTATUS error) => error.toHRESULT();

  /// Maps a system error code to an [HRESULT] value.
  ///
  /// This is useful when converting Win32 error codes (e.g., [GetLastError])
  /// to HRESULT.
  @pragma('vm:prefer-inline')
  factory HRESULT.fromWin32(WIN32_ERROR error) => error.toHRESULT();

  // ignore: constant_identifier_names
  static const _NTSTATUS_BASE = 0x1000_0000;

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
  /// HRESULT errorCode = someFunction();
  /// String result = errorCode.onSuccess(() => 'Operation succeeded!');
  /// ```
  @pragma('vm:prefer-inline')
  T onSuccess<T>(T Function() op) {
    if (isOk) return op();
    throw WindowsException(this);
  }

  /// Converts the [HRESULT] error code into a human-readable error message
  /// using the [FormatMessage] function.
  ///
  /// For example, for HRESULT code `0x80070057` ([E_INVALIDARG]), it will
  /// return `The parameter is incorrect.`
  String get message {
    final lpBuffer = loggingCalloc<PWSTR>();
    var module = NULL;

    var code = this.code;
    var flags =
        FORMAT_MESSAGE_ALLOCATE_BUFFER |
        FORMAT_MESSAGE_FROM_SYSTEM |
        FORMAT_MESSAGE_IGNORE_INSERTS;

    if (code & _NTSTATUS_BASE == _NTSTATUS_BASE) {
      code ^= _NTSTATUS_BASE;
      flags |= FORMAT_MESSAGE_FROM_HMODULE;
      final libraryName = w('ntdll.dll');
      module = LoadLibraryEx(
        libraryName.ptr,
        LOAD_LIBRARY_SEARCH_DEFAULT_DIRS,
      ).value;
      libraryName.free();
    }

    final size = FormatMessage(
      flags,
      Pointer.fromAddress(module),
      code,
      0,
      lpBuffer.cast(),
      0,
      nullptr,
    ).value;
    if (module != NULL) {
      final Win32Result(:value, :error) = FreeLibrary(module);
      assert(value, 'FreeLibrary failed with ${error.toHRESULT()}');
    }

    if (!lpBuffer.value.isNull && size > 0) {
      var errorMessage = lpBuffer.value.toDartString(length: size);
      if (errorMessage.endsWith('\r\n')) {
        // Strip off trailing CRLF in the returned error message.
        errorMessage = errorMessage.substring(0, errorMessage.length - 2);
      }
      final Win32Result(:value, :error) = LocalFree(lpBuffer.value.address);
      assert(value == NULL, 'LocalFree failed with ${error.toHRESULT()}');

      free(lpBuffer);
      return errorMessage;
    }

    return '';
  }
}
