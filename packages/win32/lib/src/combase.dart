// Foundational COM classes

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';
import 'exceptions.dart';
import 'guid.dart';
import 'macros.dart';
import 'utils.dart';
import 'win32/ole32.g.dart';

/// Type alias that represents a Pointer to the COM v-table.
typedef VTablePointer = Pointer<Pointer<IntPtr>>;

/// A representation of a generic COM object. All Dart COM objects inherit from
/// this class.
///
/// {@category com}
base class COMObject extends Struct {
  external VTablePointer lpVtbl;

  /// Whether the [lpVtbl] is a null pointer.
  bool get isNull => lpVtbl.address == 0;

  Pointer<IntPtr> get vtable => lpVtbl.value;

  /// Create an instance of a COM object using its class identifier, cast to the
  /// specified interface.
  ///
  /// The caller is responsible for disposing of the memory of the returned
  /// object when it is no longer required. A FFI `Arena` may be passed as a
  /// custom allocator for ease of memory management.
  static Pointer<COMObject> createFromID(
    String clsid,
    String iid, {
    Allocator allocator = calloc,
  }) {
    final pClsid = convertToCLSID(clsid);
    final pIid = convertToIID(iid);
    final pObj = allocator<COMObject>();

    try {
      final hr = CoCreateInstance(
        pClsid,
        nullptr,
        CLSCTX.CLSCTX_ALL,
        pIid,
        pObj.cast(),
      );
      if (FAILED(hr)) throw WindowsException(hr);
      return pObj;
    } finally {
      free(pClsid);
      free(pIid);
    }
  }
}

/// Converts a Dart string into an IID using the [IIDFromString] call.
///
/// You can pass this method a brace-enclosed string, such as
/// '{00000000-0000-0000-C000-000000000046}', and it will return a pointer to a
/// GUID struct that matches the string.
///
/// It is the caller's responsibility to deallocate the returned pointer when
/// they are finished with it. A FFI `Arena` may be passed as a
/// custom allocator for ease of memory management.
///
/// {@category com}
Pointer<GUID> convertToIID(String strIID, {Allocator allocator = calloc}) {
  final lpszIID = strIID.toNativeUtf16();
  final iid = allocator<GUID>();

  try {
    final hr = IIDFromString(lpszIID, iid);
    if (FAILED(hr)) throw WindowsException(hr);
    return iid;
  } finally {
    free(lpszIID);
  }
}

/// Converts a Dart string into an CLSID using the [CLSIDFromString] call.
///
/// You can pass this method one of two things: a brace-enclosed string, such as
/// '{00000000-0000-0000-C000-000000000046}', or a ProgID, such as
/// 'Excel.Application'. If you pass a ProgID, it will look up the CLSID
/// associated with it. In either case, it will return a pointer to a GUID
/// struct that matches the string.
///
/// It is the caller's responsibility to deallocate the returned pointer when
/// they are finished with it. A FFI `Arena` may be passed as a custom allocator
/// for ease of memory management.
///
/// {@category com}
Pointer<GUID> convertToCLSID(String strCLSID, {Allocator allocator = calloc}) {
  final lpszCLSID = strCLSID.toNativeUtf16();
  final clsid = allocator<GUID>();

  try {
    final hr = CLSIDFromString(lpszCLSID, clsid);
    if (FAILED(hr)) throw WindowsException(hr);
    return clsid;
  } finally {
    free(lpszCLSID);
  }
}
