// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'constants.dart';
import 'typedef.dart';
import 'utils.dart';

/// Represents a type, as for example used in a parameter. Return
/// types use the same class, although they have no name.
class TypeIdentifier {
  /// Underlying base type represented here
  CorElementType corType;

  /// The name of the type (for example, `Windows.Storage.IStorageFile` or
  /// `LPWSTR`)
  String name;

  /// The class or interface, if the type is (for example) ELEMENT_TYPE_CLASS
  TypeDef? type;

  /// The dimensions of the contained array, if there is one.
  List<int>? arrayDimensions;

  /// Any arguments (for example, the Uint16 in a Pointer<Uint16>).
  List<TypeIdentifier> typeArgs = [];

  int? genericParameter;

  TypeIdentifier(this.corType, [this.name = '', this.type]);

  TypeIdentifier clone() {
    final clone = TypeIdentifier(corType, name, type);
    clone.typeArgs = List.from(typeArgs);
    return clone;
  }

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
  int get value {
    switch (corType) {
      case CorElementType.ELEMENT_TYPE_END:
        return 0x0;
      case CorElementType.ELEMENT_TYPE_VOID:
        return 0x1;
      case CorElementType.ELEMENT_TYPE_BOOLEAN:
        return 0x2;
      case CorElementType.ELEMENT_TYPE_CHAR:
        return 0x3;
      case CorElementType.ELEMENT_TYPE_I1:
        return 0x4;
      case CorElementType.ELEMENT_TYPE_U1:
        return 0x5;
      case CorElementType.ELEMENT_TYPE_I2:
        return 0x6;
      case CorElementType.ELEMENT_TYPE_U2:
        return 0x7;
      case CorElementType.ELEMENT_TYPE_I4:
        return 0x8;
      case CorElementType.ELEMENT_TYPE_U4:
        return 0x9;
      case CorElementType.ELEMENT_TYPE_I8:
        return 0xa;
      case CorElementType.ELEMENT_TYPE_U8:
        return 0xb;
      case CorElementType.ELEMENT_TYPE_R4:
        return 0xc;
      case CorElementType.ELEMENT_TYPE_R8:
        return 0xd;
      case CorElementType.ELEMENT_TYPE_STRING:
        return 0xe;
      case CorElementType.ELEMENT_TYPE_PTR:
        return 0xf;
      case CorElementType.ELEMENT_TYPE_BYREF:
        return 0x10;
      case CorElementType.ELEMENT_TYPE_VALUETYPE:
        return 0x11;
      case CorElementType.ELEMENT_TYPE_CLASS:
        return 0x12;
      case CorElementType.ELEMENT_TYPE_VAR:
        return 0x13;
      case CorElementType.ELEMENT_TYPE_ARRAY:
        return 0x14;
      case CorElementType.ELEMENT_TYPE_GENERICINST:
        return 0x15;
      case CorElementType.ELEMENT_TYPE_TYPEDBYREF:
        return 0x16;
      case CorElementType.ELEMENT_TYPE_I:
        return 0x18;
      case CorElementType.ELEMENT_TYPE_U:
        return 0x19;
      case CorElementType.ELEMENT_TYPE_FNPTR:
        return 0x1B;
      case CorElementType.ELEMENT_TYPE_OBJECT:
        return 0x1C;
      case CorElementType.ELEMENT_TYPE_SZARRAY:
        return 0x1D;
      case CorElementType.ELEMENT_TYPE_MVAR:
        return 0x1E;
      case CorElementType.ELEMENT_TYPE_CMOD_REQD:
        return 0x1F;
      case CorElementType.ELEMENT_TYPE_CMOD_OPT:
        return 0x20;
      case CorElementType.ELEMENT_TYPE_INTERNAL:
        return 0x21;
      case CorElementType.ELEMENT_TYPE_MAX:
        return 0x22;
      case CorElementType.ELEMENT_TYPE_MODIFIER:
        return 0x40;
      case CorElementType.ELEMENT_TYPE_SENTINEL:
        return 0x41;
      case CorElementType.ELEMENT_TYPE_PINNED:
        return 0x45;
      default:
        throw WinmdException('Unrecognized type ${corType.index}');
    }
  }

  @override
  String toString() {
    switch (corType) {
      case CorElementType.ELEMENT_TYPE_END:
        return '*END*';
      case CorElementType.ELEMENT_TYPE_VOID:
        return 'void';
      case CorElementType.ELEMENT_TYPE_BOOLEAN:
        return 'bool';
      case CorElementType.ELEMENT_TYPE_CHAR:
        return 'char';
      case CorElementType.ELEMENT_TYPE_I1:
        return 'byte';
      case CorElementType.ELEMENT_TYPE_U1:
        return 'ubyte';
      case CorElementType.ELEMENT_TYPE_I2:
        return 'short';
      case CorElementType.ELEMENT_TYPE_U2:
        return 'ushort';
      case CorElementType.ELEMENT_TYPE_I4:
        return 'int';
      case CorElementType.ELEMENT_TYPE_U4:
        return 'uint';
      case CorElementType.ELEMENT_TYPE_I8:
        return 'int64';
      case CorElementType.ELEMENT_TYPE_U8:
        return 'uint64';
      case CorElementType.ELEMENT_TYPE_R4:
        return 'float';
      case CorElementType.ELEMENT_TYPE_R8:
        return 'double';
      case CorElementType.ELEMENT_TYPE_STRING:
        return 'string';
      case CorElementType.ELEMENT_TYPE_PTR:
        return 'pointer';
      case CorElementType.ELEMENT_TYPE_BYREF:
        return 'byref';
      case CorElementType.ELEMENT_TYPE_VALUETYPE:
        return 'valuetype';
      case CorElementType.ELEMENT_TYPE_CLASS:
        return 'class';
      case CorElementType.ELEMENT_TYPE_VAR:
        return 'generic_type_parameter';
      case CorElementType.ELEMENT_TYPE_ARRAY:
        return 'array';
      case CorElementType.ELEMENT_TYPE_GENERICINST:
        return 'generic';
      case CorElementType.ELEMENT_TYPE_TYPEDBYREF:
        return 'typedref';
      case CorElementType.ELEMENT_TYPE_I:
        return 'intptr';
      case CorElementType.ELEMENT_TYPE_U:
        return 'uintptr';
      case CorElementType.ELEMENT_TYPE_FNPTR:
        return 'funcptr';
      case CorElementType.ELEMENT_TYPE_OBJECT:
        return 'object';
      case CorElementType.ELEMENT_TYPE_SZARRAY:
        return 'vector';
      case CorElementType.ELEMENT_TYPE_MVAR:
        return 'generic_method_parameter';
      case CorElementType.ELEMENT_TYPE_CMOD_REQD:
        return 'required';
      case CorElementType.ELEMENT_TYPE_CMOD_OPT:
        return 'optional';
      case CorElementType.ELEMENT_TYPE_INTERNAL:
        return '*internal*';
      case CorElementType.ELEMENT_TYPE_MAX:
        return '*invalid*';
      case CorElementType.ELEMENT_TYPE_MODIFIER:
        return '*modifier*';
      case CorElementType.ELEMENT_TYPE_SENTINEL:
        return 'sentinel';
      case CorElementType.ELEMENT_TYPE_PINNED:
        return '*pinned*';
      default:
        throw WinmdException('Unrecognized type ${corType.index}');
    }
  }
}
