// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Foundational COM classes

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'exceptions.dart';
import 'macros.dart';
import 'ole32.dart';
import 'structs.dart';
import 'utils.dart';

/// A representation of a generic COM object. All Dart COM objects inherit from
/// this class.
///
/// {@category com}
class COMObject extends Struct {
  external Pointer<IntPtr> lpVtbl;

  Pointer<IntPtr> get vtable => Pointer.fromAddress(lpVtbl.value);
}

/// Converts a Dart string into an IID using the [IIDFromString] call.
///
/// Returns a Pointer to the allocated IID. It is the caller's responsibility to
/// deallocate the pointer when they are finished with it.
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
/// Returns a Pointer to the allocated CLSID. It is the caller's responsibility
/// to deallocate the pointer when they are finished with it.
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
