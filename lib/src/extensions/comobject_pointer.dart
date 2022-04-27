// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:ffi';

import '../combase.dart';

extension COMObjectPointer on Pointer<COMObject> {
  Pointer<COMObject> operator [](int index) => this.elementAt(index);

  void operator []=(int index, Pointer<Pointer<IntPtr>> value) =>
      this[index].ref.setLpVtbl(value);

  /// Creates a `List<T>` from the `Pointer<COMObject>`.
  ///
  /// `T` must be a `WinRT` type. e.g. `IHostName`, `IStorageFile` ...
  ///
  /// `creator` must be specified for the given `T`. e.g. `IHostName.new`,
  /// `IStorageFile.new`
  ///
  /// `length` must be equal to the number of elements stored inside the
  /// `Pointer<COMObject>`.
  ///
  /// ```dart
  /// ...
  /// final list = pComObject.toListOf<IHostName>(IHostName.new, length: 4);
  /// ```
  ///
  /// {@category winrt}
  List<T> toListOf<T>(T Function(Pointer<COMObject>) creator,
      {int length = 1}) {
    final list = <T>[];
    for (var i = 0; i < length; i++) {
      final element = this[i];
      if (element.ref.lpVtbl.address == 0) {
        break;
      }
      list.add(creator(element));
    }

    return list;
  }
}
