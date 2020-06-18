// combase.dart

// Foundational COM classes

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../exceptions.dart';
import '../macros.dart';
import '../structs.dart';
import '..//string.dart';
import '../prototypes.dart';

/// A representation of a generic COM object. All Dart COM objects inherit from
/// this class.
class COMObject extends Struct {
  Pointer<IntPtr> lpVtbl;

  Pointer<IntPtr> get vtable => Pointer.fromAddress(lpVtbl.value);

  factory COMObject.allocate() =>
      allocate<COMObject>().ref..lpVtbl = allocate<IntPtr>();
}

Pointer<GUID> convertToIID(String strIID) {
  final lpszIID = TEXT(strIID);
  final iid = GUID.allocate().addressOf;

  final hr = IIDFromString(lpszIID, iid);
  if (FAILED(hr)) {
    throw WindowsException(hr);
  }
  free(lpszIID);
  return iid;
}

Pointer<GUID> convertToCLSID(String strCLSID) {
  final lpszCLSID = TEXT(strCLSID);
  final clsid = GUID.allocate().addressOf;

  final hr = CLSIDFromString(lpszCLSID, clsid);
  if (FAILED(hr)) {
    throw WindowsException(hr);
  }
  free(lpszCLSID);
  return clsid;
}
