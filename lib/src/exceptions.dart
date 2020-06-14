// exceptions.dart

// Exceptions that may be caught or thrown by the win32 library.

import 'package:win32/src/constants.dart';
import 'package:win32/src/int.dart';
import 'package:win32/src/winrt/winrt_constants.dart';

/// General exception thrown when Windows returns an error.
class WindowsException implements Exception {
  final String message;

  WindowsException([this.message]);

  @override
  String toString() {
    if (message == null) return 'WindowsException';
    return 'Windows error: $message';
  }
}

/// COM exception
class COMException implements Exception {
  final int hr;

  COMException(this.hr);

  @override
  String toString() {
    switch (HRESULT(hr)) {
      case S_OK:
        return null;
      case E_OUTOFMEMORY:
        return 'E_OUTOFMEMORY: There is insufficient memory to complete the operation.';
      case E_INVALIDARG:
        return 'E_INVALIDARG: One or more arguments are not valid.';
      case E_FAIL:
        return 'E_FAIL: The operation failed.';
      case E_NOINTERFACE:
        return 'E_NOINTERFACE: No such interface supported.';
      case E_POINTER:
        return 'E_POINTER: Invalid pointer.';
      case E_HANDLE:
        return 'E_HANDLE: Invalid handle.';
      case RPC_E_TOO_LATE:
        return 'RPC_E_TOO_LATE: Security must be initialized before any interfaces are marshalled or unmarshalled. It cannot be changed once initialized.';
      case REGDB_E_CLASSNOTREG:
        return 'REGDB_E_CLASSNOTREG: Class not registered.';
      case REGDB_E_IIDNOTREG:
        return 'REGDB_E_IIDNOTREG: Interface not registered.';
      case RO_E_METADATA_NAME_NOT_FOUND:
        return 'RO_E_METADATA_NAME_NOT_FOUND: Typename or Namespace was not found in metadata file.';
      case APPMODEL_ERROR_NO_PACKAGE:
        return 'APPMODEL_ERROR_NO_PACKAGE: The process has no package identity.';
      case CLASS_E_CLASSNOTAVAILABLE:
        return 'CLASS_E_CLASSNOTAVAILABLE: ClassFactory cannot supply requested class';
    }
    return 'COM error ${HRESULT(hr).toHex(32)}';
  }
}

int HRESULT(int hr) => hr.toUnsigned(32);
