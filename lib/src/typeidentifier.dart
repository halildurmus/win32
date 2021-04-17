// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'constants.dart';
import 'typedef.dart';
import 'utils.dart';

/// Represents a type, as for example used in a parameter. Return
/// types use the same class, although they have no name.
class TypeIdentifier {
  /// The dimensions of the contained array, if there is one.
  List<int>? arrayDimensions;

  /// Underlying base type represented by this class.
  CorElementType corType;

  // The value identifying the generic parameter sequence, if there is one.
  //
  // For example, in class Foo<T, U>, a property that returns T will have a
  // returnType with a [TypeIdentifier] that has a genericParameterSequence of
  // 0.
  int? genericParameterSequence;

  /// The name of the type (for example, `Windows.Storage.IStorageFile` or
  /// `LPWSTR`), if it is not a primitive type.
  ///
  /// For a type like [CorElementType.ELEMENT_TYPE_I1], this is empty.
  String name;

  /// The class or interface, if the type is (for example) ELEMENT_TYPE_CLASS
  TypeDef? type;

  /// Any arguments (for example, the `Uint16` in a `Pointer<Uint16>`).
  ///
  /// These may be nested (for example, a `Pointer<Pointer<MYSTRUCT>>` is a
  /// `Pointer` with a [typeArg] of `Pointer`, which in turn has a [typeArg] of
  /// `MYSTRUCT`).
  TypeIdentifier? typeArg;

  TypeIdentifier(this.corType, [this.name = '', this.type]);

  factory TypeIdentifier.fromValue(int corElementTypeValue) {
    switch (corElementTypeValue) {
      case 0x0:
        return TypeIdentifier(CorElementType.ELEMENT_TYPE_END);
      case 0x1:
        return TypeIdentifier(CorElementType.ELEMENT_TYPE_VOID);
      case 0x2:
        return TypeIdentifier(CorElementType.ELEMENT_TYPE_BOOLEAN);
      case 0x3:
        return TypeIdentifier(CorElementType.ELEMENT_TYPE_CHAR);
      case 0x4:
        return TypeIdentifier(CorElementType.ELEMENT_TYPE_I1);
      case 0x5:
        return TypeIdentifier(CorElementType.ELEMENT_TYPE_U1);
      case 0x6:
        return TypeIdentifier(CorElementType.ELEMENT_TYPE_I2);
      case 0x7:
        return TypeIdentifier(CorElementType.ELEMENT_TYPE_U2);
      case 0x8:
        return TypeIdentifier(CorElementType.ELEMENT_TYPE_I4);
      case 0x9:
        return TypeIdentifier(CorElementType.ELEMENT_TYPE_U4);
      case 0xa:
        return TypeIdentifier(CorElementType.ELEMENT_TYPE_I8);
      case 0xb:
        return TypeIdentifier(CorElementType.ELEMENT_TYPE_U8);
      case 0xc:
        return TypeIdentifier(CorElementType.ELEMENT_TYPE_R4);
      case 0xd:
        return TypeIdentifier(CorElementType.ELEMENT_TYPE_R8);
      case 0xe:
        return TypeIdentifier(CorElementType.ELEMENT_TYPE_STRING);
      case 0xf:
        return TypeIdentifier(CorElementType.ELEMENT_TYPE_PTR);
      case 0x10:
        return TypeIdentifier(CorElementType.ELEMENT_TYPE_BYREF);
      case 0x11:
        return TypeIdentifier(CorElementType.ELEMENT_TYPE_VALUETYPE);
      case 0x12:
        return TypeIdentifier(CorElementType.ELEMENT_TYPE_CLASS);
      case 0x13:
        return TypeIdentifier(CorElementType.ELEMENT_TYPE_VAR);
      case 0x14:
        return TypeIdentifier(CorElementType.ELEMENT_TYPE_ARRAY);
      case 0x15:
        return TypeIdentifier(CorElementType.ELEMENT_TYPE_GENERICINST);
      case 0x16:
        return TypeIdentifier(CorElementType.ELEMENT_TYPE_TYPEDBYREF);
      case 0x18:
        return TypeIdentifier(CorElementType.ELEMENT_TYPE_I);
      case 0x19:
        return TypeIdentifier(CorElementType.ELEMENT_TYPE_U);
      case 0x1B:
        return TypeIdentifier(CorElementType.ELEMENT_TYPE_FNPTR);
      case 0x1C:
        return TypeIdentifier(CorElementType.ELEMENT_TYPE_OBJECT);
      case 0x1D:
        return TypeIdentifier(CorElementType.ELEMENT_TYPE_SZARRAY);
      case 0x1E:
        return TypeIdentifier(CorElementType.ELEMENT_TYPE_MVAR);
      case 0x1F:
        return TypeIdentifier(CorElementType.ELEMENT_TYPE_CMOD_REQD);
      case 0x20:
        return TypeIdentifier(CorElementType.ELEMENT_TYPE_CMOD_OPT);
      case 0x21:
        return TypeIdentifier(CorElementType.ELEMENT_TYPE_INTERNAL);
      case 0x22:
        return TypeIdentifier(CorElementType.ELEMENT_TYPE_MAX);
      case 0x40:
        return TypeIdentifier(CorElementType.ELEMENT_TYPE_MODIFIER);
      case 0x41:
        return TypeIdentifier(CorElementType.ELEMENT_TYPE_SENTINEL);
      case 0x45:
        return TypeIdentifier(CorElementType.ELEMENT_TYPE_PINNED);
      default:
        throw WinmdException('Unrecognized type $corElementTypeValue');
    }
  }

  @override
  String toString() => 'TypeIdentifier: ${corType.toString().split('.').last}';
}
