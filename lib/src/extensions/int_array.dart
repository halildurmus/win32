// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Extension methods to convert integer arrays to List<int>

import 'dart:ffi';

extension Uint8Helper on Pointer<Uint8> {
  /// Creates a [List] from `Pointer<Uint8>`.
  ///
  /// [length] must be equal to the number of elements stored inside the
  /// `Pointer<Uint8>`.
  ///
  /// {@category winrt}
  List<int> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) this[i]];
}

extension Int16Helper on Pointer<Int16> {
  /// Creates a [List] from `Pointer<Int16>`.
  ///
  /// [length] must be equal to the number of elements stored inside the
  /// `Pointer<Int16>`.
  ///
  /// {@category winrt}
  List<int> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) this[i]];
}

extension UInt16Helper on Pointer<Uint16> {
  /// Creates a [List] from `Pointer<Uint16>`.
  ///
  /// [length] must be equal to the number of elements stored inside the
  /// `Pointer<Uint16>`.
  ///
  /// {@category winrt}
  List<int> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) this[i]];
}

extension Int32Helper on Pointer<Int32> {
  /// Creates a [List] from `Pointer<Int32>`.
  ///
  /// [length] must be equal to the number of elements stored inside the
  /// `Pointer<Int32>`.
  ///
  /// {@category winrt}
  List<int> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) this[i]];
}

extension UInt32Helper on Pointer<Uint32> {
  /// Creates a [List] from `Pointer<Uint32>`.
  ///
  /// [length] must be equal to the number of elements stored inside the
  /// `Pointer<Uint32>`.
  ///
  /// {@category winrt}
  List<int> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) this[i]];
}

extension Int64Helper on Pointer<Int64> {
  /// Creates a [List] from `Pointer<Int64>`.
  ///
  /// [length] must be equal to the number of elements stored inside the
  /// `Pointer<Int64>`.
  ///
  /// {@category winrt}
  List<int> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) this[i]];
}

extension UInt64Helper on Pointer<Uint64> {
  /// Creates a [List] from `Pointer<Uint64>`.
  ///
  /// [length] must be equal to the number of elements stored inside the
  /// `Pointer<Uint64>`.
  ///
  /// {@category winrt}
  List<int> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) this[i]];
}
