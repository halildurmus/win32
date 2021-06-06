// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Foundational COM classes

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'constants.dart';
import 'exceptions.dart';
import 'macros.dart';
import 'ole32.dart';
import 'structs.dart';
import 'utils.dart';

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
