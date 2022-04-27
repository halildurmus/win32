// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../com/IInspectable.dart';
import '../combase.dart';
import '../exceptions.dart';
import '../macros.dart';

extension QueryInterfaceHelper on IInspectable {
  /// Queries `IInspectable` with the given `iid` for the relevant interface.
  ///
  /// Throws a `WindowsException` if the interface is not found.
  ///
  /// It is the caller's responsibility to deallocate the returned pointer when
  /// they are finished with it. A FFI `Arena` may be passed as a
  /// custom allocator for ease of memory management.
  ///
  /// {@category winrt}
  Pointer<COMObject> query(String iid, {Allocator allocator = calloc}) {
    final classPtr = allocator<Pointer>();
    // Create an IID for the interface required
    final riid = convertToIID(iid, allocator: allocator);
    // Use IInspectable to navigate to the relevant interface
    final hr = this.QueryInterface(riid, classPtr);
    if (FAILED(hr)) throw WindowsException(hr);

    // Return a pointer to the relevant class
    return classPtr.cast();
  }
}
