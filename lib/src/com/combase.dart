import 'dart:ffi';

import 'package:ffi/ffi.dart';
import '../constants.dart';

class COMObject extends Struct {
  Pointer<IntPtr> lpVtbl;

  Pointer<IntPtr> get vtable => Pointer.fromAddress(lpVtbl.value);

  factory COMObject.allocate() =>
      allocate<COMObject>().ref..lpVtbl = allocate<IntPtr>();
}

class COMException implements Exception {
  final int hresult;

  COMException(this.hresult);

  @override
  String toString() {
    final hresult = this.hresult.toUnsigned(32);

    switch (hresult) {
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
      case REGDB_E_CLASSNOTREG:
        return 'REGDB_E_CLASSNOTREG: Class not registered.';
      case REGDB_E_IIDNOTREG:
        return 'REGDB_E_IIDNOTREG: Interface not registered.';
    }
    return 'COM error 0x${hresult.toRadixString(16)}';
  }
}
