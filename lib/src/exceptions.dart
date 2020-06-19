// exceptions.dart

// Exceptions that may be caught or thrown by the win32 library.

import 'dart:ffi';
import 'package:ffi/ffi.dart';

import 'constants.dart';
import 'int.dart';
import 'string.dart';
import 'kernel32.dart';

/// Converts a Windows error into a friendly string.
///
/// Takes one numeric paramenter, which may be a general Windows error or an
/// HRESULT, and converts it into a String representation using the Win32
/// `FormatMessage()` function. For example, `E_INVALIDARG` (0x80070057)
/// converts to `The parameter is incorrect.`
String convertWindowsErrorToString(int windowsError) {
  String errorMessage;
  final buffer = allocate<Uint16>(count: 256).cast<Utf16>();

  // If FormatMessage fails, it returns 0; otherwise it returns the number of
  // characters in the buffer.
  int result = FormatMessage(
      FORMAT_MESSAGE_FROM_SYSTEM | FORMAT_MESSAGE_IGNORE_INSERTS,
      nullptr,
      windowsError,
      0, // default language
      buffer,
      256,
      nullptr);

  if (result == 0) {
    // Failed to get error string
    errorMessage = '';
  } else {
    errorMessage = buffer.unpackString(result);
  }

  free(buffer);

  // Strip off CRLF in the returned error message, if it exists
  if (errorMessage.substring(errorMessage.length - 2) == '\r\n') {
    errorMessage = errorMessage.substring(0, errorMessage.length - 2);
  }

  return errorMessage;
}

/// Generalized Windows exception
class WindowsException implements Exception {
  int hr;

  WindowsException(int hr) {
    this.hr = HRESULT(hr);
  }

  @override
  String toString() {
    return 'Error ${hr.toHex(32)}: ${convertWindowsErrorToString(hr)}';
  }
}

int HRESULT(int hr) => hr.toUnsigned(32);
