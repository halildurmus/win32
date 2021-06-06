// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Foundational COM classes

import 'dart:ffi';

import 'package:ffi/ffi.dart';

// import 'com/IUnknown.dart';
import 'constants.dart';
import 'exceptions.dart';
import 'macros.dart';
import 'ole32.dart';
import 'structs.dart';
import 'utils.dart';

/// @nodoc
const IID_IUnknown = '{00000000-0000-0000-C000-000000000046}';

typedef _QueryInterface_Native = Int32 Function(
    Pointer obj, Pointer<GUID> riid, Pointer<Pointer> ppvObject);
typedef _QueryInterface_Dart = int Function(
    Pointer obj, Pointer<GUID> riid, Pointer<Pointer> ppvObject);

typedef _AddRef_Native = Uint32 Function(Pointer obj);
typedef _AddRef_Dart = int Function(Pointer obj);

typedef _Release_Native = Uint32 Function(Pointer obj);
typedef _Release_Dart = int Function(Pointer obj);

/// A representation of a generic COM object. All Dart COM objects inherit from
/// this class.
///
/// {@category Interface}
/// {@category com}
class COMObject extends Struct {
  // vtable begins at 0, ends at 2

  external Pointer<Pointer<IntPtr>> lpVtbl;

  Pointer<IntPtr> get vtable => lpVtbl.value;

  /// Create an instance of a COM object using its class identifier, cast to the
  /// specified interface.
  ///
  /// The caller is responsible for disposing of the memory of this object when
  /// it's finished with.
  static Pointer<COMObject> createFromID(String clsid, String iid) {
    final pClsid = convertToCLSID(clsid);
    final pIid = convertToIID(iid);
    final pObj = calloc<COMObject>();

    try {
      final hr =
          CoCreateInstance(pClsid, nullptr, CLSCTX_ALL, pIid, pObj.cast());
      if (FAILED(hr)) throw WindowsException(hr);

      return pObj;
    } finally {
      free(pClsid);
      free(pIid);
    }
  }
}

class IUnknown {
  Pointer<COMObject> ptr;

  IUnknown(this.ptr);

  int QueryInterface(Pointer<GUID> riid, Pointer<Pointer> ppvObject) =>
      Pointer<NativeFunction<_QueryInterface_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(0).value)
          .asFunction<_QueryInterface_Dart>()(ptr.ref.lpVtbl, riid, ppvObject);

  int AddRef() => Pointer<NativeFunction<_AddRef_Native>>.fromAddress(
          ptr.ref.vtable.elementAt(1).value)
      .asFunction<_AddRef_Dart>()(ptr.ref.lpVtbl);

  int Release() => Pointer<NativeFunction<_Release_Native>>.fromAddress(
          ptr.ref.vtable.elementAt(2).value)
      .asFunction<_Release_Dart>()(ptr.ref.lpVtbl);

  /// Cast an existing COM object to a specified interface.
  ///
  /// Takes a string (typically a constant such as `IID_IModalWindow`) and does
  /// a COM QueryInterface to return a reference to that interface. This method
  /// reduces the boilerplate associated with calling QueryInterface manually.
  Pointer<COMObject> toInterface(String iid) {
    final pIID = convertToIID(iid);
    final pObject = calloc<COMObject>();
    try {
      final hr = QueryInterface(pIID, pObject.cast());
      if (FAILED(hr)) throw WindowsException(hr);
      return pObject;
    } finally {
      free(pIID);
    }
  }
}

/// Converts a Dart string into an IID using the [IIDFromString] call.
///
/// You can pass this method a brace-enclosed string, such as
/// '{00000000-0000-0000-C000-000000000046}', and it will return a pointer to a
/// GUID struct that matches the string.
///
/// It is the caller's responsibility to deallocate the pointer when they are
/// finished with it.
///
/// {@category com}
Pointer<GUID> convertToIID(String strIID) {
  final lpszIID = strIID.toNativeUtf16();
  final iid = calloc<GUID>();

  try {
    final hr = IIDFromString(lpszIID, iid);
    if (FAILED(hr)) {
      throw WindowsException(hr);
    }
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
/// It is the caller's responsibility to deallocate the pointer when they are
/// finished with it.
///
/// {@category com}
Pointer<GUID> convertToCLSID(String strCLSID) {
  final lpszCLSID = strCLSID.toNativeUtf16();
  final clsid = calloc<GUID>();

  try {
    final hr = CLSIDFromString(lpszCLSID, clsid);
    if (FAILED(hr)) {
      throw WindowsException(hr);
    }
    return clsid;
  } finally {
    free(lpszCLSID);
  }
}
