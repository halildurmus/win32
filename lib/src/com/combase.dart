// combase.dart

// Foundational COM classes

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../exceptions.dart';
import '../macros.dart';
import '../ole32.dart';
import '../string.dart';
import '../structs.dart';

/// A representation of a generic COM object. All Dart COM objects inherit from
/// this class.
///
/// {@category com}
class COMObject extends Struct {
  Pointer<IntPtr> lpVtbl;

  Pointer<IntPtr> get vtable => Pointer.fromAddress(lpVtbl.value);

  factory COMObject.allocate() =>
      allocate<COMObject>().ref..lpVtbl = allocate<IntPtr>();
}

/// Converts a Dart string into an IID using the [IIDFromString] call.
///
/// Returns a Pointer to the allocated IID. It is the caller's responsibility to
/// deallocate the pointer when they are finished with it.
///
/// {@category com}
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

/// Converts a Dart string into an CLSID using the [CLSIDFromString] call.
///
/// Returns a Pointer to the allocated CLSID. It is the caller's responsibility
/// to deallocate the pointer when they are finished with it
///
/// {@category com}
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
