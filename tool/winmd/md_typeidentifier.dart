// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'enums.dart';
import 'md_type.dart';
import 'utils.dart';

class WinmdTypeIdentifier {
  CorElementType corType;
  String? name;
  WinmdType? type;
  final typeArgs = <WinmdTypeIdentifier>[];

  WinmdTypeIdentifier(this.corType);

  factory WinmdTypeIdentifier.fromValue(int corElementTypeValue) {
    switch (corElementTypeValue) {
      case 0x0:
        return WinmdTypeIdentifier(CorElementType.ELEMENT_TYPE_END);
      case 0x1:
        return WinmdTypeIdentifier(CorElementType.ELEMENT_TYPE_VOID);
      case 0x2:
        return WinmdTypeIdentifier(CorElementType.ELEMENT_TYPE_BOOLEAN);
      case 0x3:
        return WinmdTypeIdentifier(CorElementType.ELEMENT_TYPE_CHAR);
      case 0x4:
        return WinmdTypeIdentifier(CorElementType.ELEMENT_TYPE_I1);
      case 0x5:
        return WinmdTypeIdentifier(CorElementType.ELEMENT_TYPE_U1);
      case 0x6:
        return WinmdTypeIdentifier(CorElementType.ELEMENT_TYPE_I2);
      case 0x7:
        return WinmdTypeIdentifier(CorElementType.ELEMENT_TYPE_U2);
      case 0x8:
        return WinmdTypeIdentifier(CorElementType.ELEMENT_TYPE_I4);
      case 0x9:
        return WinmdTypeIdentifier(CorElementType.ELEMENT_TYPE_U4);
      case 0xa:
        return WinmdTypeIdentifier(CorElementType.ELEMENT_TYPE_I8);
      case 0xb:
        return WinmdTypeIdentifier(CorElementType.ELEMENT_TYPE_U8);
      case 0xc:
        return WinmdTypeIdentifier(CorElementType.ELEMENT_TYPE_R4);
      case 0xd:
        return WinmdTypeIdentifier(CorElementType.ELEMENT_TYPE_R8);
      case 0xe:
        return WinmdTypeIdentifier(CorElementType.ELEMENT_TYPE_STRING);
      case 0xf:
        return WinmdTypeIdentifier(CorElementType.ELEMENT_TYPE_PTR);
      case 0x10:
        return WinmdTypeIdentifier(CorElementType.ELEMENT_TYPE_BYREF);
      case 0x11:
        return WinmdTypeIdentifier(CorElementType.ELEMENT_TYPE_VALUETYPE);
      case 0x12:
        return WinmdTypeIdentifier(CorElementType.ELEMENT_TYPE_CLASS);
      case 0x13:
        return WinmdTypeIdentifier(CorElementType.ELEMENT_TYPE_VAR);
      case 0x14:
        return WinmdTypeIdentifier(CorElementType.ELEMENT_TYPE_ARRAY);
      case 0x15:
        return WinmdTypeIdentifier(CorElementType.ELEMENT_TYPE_GENERICINST);
      case 0x16:
        return WinmdTypeIdentifier(CorElementType.ELEMENT_TYPE_TYPEDBYREF);
      case 0x18:
        return WinmdTypeIdentifier(CorElementType.ELEMENT_TYPE_I);
      case 0x19:
        return WinmdTypeIdentifier(CorElementType.ELEMENT_TYPE_U);
      case 0x1B:
        return WinmdTypeIdentifier(CorElementType.ELEMENT_TYPE_FNPTR);
      case 0x1C:
        return WinmdTypeIdentifier(CorElementType.ELEMENT_TYPE_OBJECT);
      case 0x1D:
        return WinmdTypeIdentifier(CorElementType.ELEMENT_TYPE_SZARRAY);
      case 0x1E:
        return WinmdTypeIdentifier(CorElementType.ELEMENT_TYPE_MVAR);
      case 0x1F:
        return WinmdTypeIdentifier(CorElementType.ELEMENT_TYPE_CMOD_REQD);
      case 0x20:
        return WinmdTypeIdentifier(CorElementType.ELEMENT_TYPE_CMOD_OPT);
      case 0x21:
        return WinmdTypeIdentifier(CorElementType.ELEMENT_TYPE_INTERNAL);
      case 0x22:
        return WinmdTypeIdentifier(CorElementType.ELEMENT_TYPE_MAX);
      case 0x40:
        return WinmdTypeIdentifier(CorElementType.ELEMENT_TYPE_MODIFIER);
      case 0x41:
        return WinmdTypeIdentifier(CorElementType.ELEMENT_TYPE_SENTINEL);
      case 0x45:
        return WinmdTypeIdentifier(CorElementType.ELEMENT_TYPE_PINNED);
      default:
        throw WinmdException('Unrecognized type $corElementTypeValue');
    }
  }

  String? get dartType {
    switch (corType) {
      case CorElementType.ELEMENT_TYPE_VOID:
        return 'void';
      case CorElementType.ELEMENT_TYPE_BOOLEAN:
        return 'bool';
      case CorElementType.ELEMENT_TYPE_STRING:
        return 'IntPtr';
      case CorElementType.ELEMENT_TYPE_CHAR:
      case CorElementType.ELEMENT_TYPE_I1:
      case CorElementType.ELEMENT_TYPE_U1:
      case CorElementType.ELEMENT_TYPE_I2:
      case CorElementType.ELEMENT_TYPE_U2:
      case CorElementType.ELEMENT_TYPE_I4:
      case CorElementType.ELEMENT_TYPE_U4:
      case CorElementType.ELEMENT_TYPE_I8:
      case CorElementType.ELEMENT_TYPE_U8:
      case CorElementType.ELEMENT_TYPE_I:
      case CorElementType.ELEMENT_TYPE_U:
        return 'int';
      case CorElementType.ELEMENT_TYPE_R4:
        return 'float';
      case CorElementType.ELEMENT_TYPE_R8:
        return 'double';
      case CorElementType.ELEMENT_TYPE_PTR:
      case CorElementType.ELEMENT_TYPE_FNPTR:
        return 'Pointer';
      default:
        return null;
    }
  }

  String? get nativeType {
    switch (corType) {
      case CorElementType.ELEMENT_TYPE_VOID:
        return 'Void';
      case CorElementType.ELEMENT_TYPE_BOOLEAN:
      case CorElementType.ELEMENT_TYPE_CHAR:
      case CorElementType.ELEMENT_TYPE_U1:
        return 'Uint8';
      case CorElementType.ELEMENT_TYPE_I1:
        return 'Int8';
      case CorElementType.ELEMENT_TYPE_I2:
        return 'Int16';
      case CorElementType.ELEMENT_TYPE_U2:
        return 'Uint16';
      case CorElementType.ELEMENT_TYPE_I4:
        return 'Int32';
      case CorElementType.ELEMENT_TYPE_U4:
        return 'Uint32';
      case CorElementType.ELEMENT_TYPE_I8:
        return 'Int64';
      case CorElementType.ELEMENT_TYPE_U8:
        return 'Uint64';
      case CorElementType.ELEMENT_TYPE_R4:
        return 'Float';
      case CorElementType.ELEMENT_TYPE_R8:
        return 'Double';
      case CorElementType.ELEMENT_TYPE_STRING:
        return 'IntPtr';
      case CorElementType.ELEMENT_TYPE_PTR:
      case CorElementType.ELEMENT_TYPE_FNPTR:
        return 'Pointer';
      case CorElementType.ELEMENT_TYPE_I:
      case CorElementType.ELEMENT_TYPE_U:
        return 'IntPtr';
      default:
        return null;
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
}
