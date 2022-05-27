// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'com/enums.dart';
import 'enums.dart';
import 'typedef.dart';

/// Represents a type, as for example used in a parameter. Return
/// types use the same class, although they have no name.
class TypeIdentifier {
  /// The dimensions of the contained array, if there is one.
  List<int>? arrayDimensions;

  /// Underlying base type represented by this class.
  BaseType baseType;

  // The value identifying the generic parameter sequence, if there is one.
  //
  // For example, in class Foo<T, U>, a property that returns T will have a
  // returnType with a [TypeIdentifier] that has a genericParameterSequence of
  // 0.
  int? genericParameterSequence;

  /// The name of the type (for example, `Windows.Storage.IStorageFile` or
  /// `LPWSTR`), if it is not a primitive type.
  ///
  /// For a type like [BaseType.int8Type], this is empty.
  String name;

  /// The class or interface, if the type is (for example)
  /// [BaseType.classTypeModifier].
  TypeDef? type;

  /// Any arguments (for example, the `Uint16` in a `Pointer<Uint16>`).
  ///
  /// These may be nested (for example, a `Pointer<Pointer<MYSTRUCT>>` is a
  /// `Pointer` with a [typeArg] of `Pointer`, which in turn has a [typeArg] of
  /// `MYSTRUCT`).
  TypeIdentifier? typeArg;

  TypeIdentifier(this.baseType, [this.name = '', this.type]);

  /// Creates a type identifier object matching a specific element type value.
  factory TypeIdentifier.fromValue(int corElementTypeValue) =>
      TypeIdentifier(parseCorElementType(corElementTypeValue));

  @override
  String toString() => baseType.toString().split('.').last;
}
