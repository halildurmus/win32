// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:ffi';

import '../combase.dart';

extension COMObjectPointer on Pointer<COMObject> {
  /// Creates a `List<T>` from the `Pointer<COMObject>`.
  ///
  /// `T` must be a `WinRT` type. e.g. `IHostName`, `IStorageFile` ...
  ///
  /// `creator` must be specified for the given `T`. e.g. `IHostName.from`,
  /// `IStorageFile.from`
  ///
  /// `length` must be equal to the number of elements stored inside the
  /// `Pointer<COMObject>`.
  ///
  /// ```dart
  /// ...
  /// final list = pComObject.toList<IHostName>(IHostName.from, length: 4);
  /// ```
  ///
  /// {@category winrt}
  List<T> toList<T>(T Function(Pointer<COMObject>) creator, {int length = 1}) {
    final list = <T>[];
    for (var i = 0; i < length; i++) {
      final element = this.elementAt(i);
      if (element.ref.lpVtbl == nullptr) {
        break;
      }
      list.add(creator(element));
    }

    return list;
  }
}
