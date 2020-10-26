// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'enums.dart';
import 'md_type.dart';
import 'md_typeidentifier.dart';
import 'types.dart';
import 'utils.dart';

const Map<String, String> specialTypes = {'System.Guid': 'GUID'};

/// Takes a WinMD type and builds a Dart representation of it.
class TypeBuilder {
  static bool isTypeAnEnum(WinmdTypeIdentifier typeIdentifier) =>
      typeIdentifier.type.parent?.typeName == 'System.Enum';

  static bool isTypeValueType(WinmdTypeIdentifier typeIdentifier) =>
      typeIdentifier.type.parent?.typeName == 'System.ValueType';

  static String? dartType(WinmdTypeIdentifier typeIdentifier) {
    if (isTypeAnEnum(typeIdentifier)) {
      return 'int';
    } else if (isTypeValueType(typeIdentifier)) {
      return 'int';
    } else if (specialTypes.containsKey(typeIdentifier.name)) {
      return specialTypes[typeIdentifier.name];
    } else {
      return typeIdentifier.name;
    }
  }

  static String nativeType(WinmdTypeIdentifier typeIdentifier) {
    // ECMA-335 II.14.3 does not guarantee that an enum is 32-bit, but
    // per https://docs.microsoft.com/en-us/uwp/winrt-cref/winmd-files#enums,
    // enums are always signed or unsigned 32-bit values.
    if (isTypeAnEnum(typeIdentifier)) {
      return 'Int32';
    } else if (isTypeValueType(typeIdentifier)) {
      // TODO: This needs figuring out -- a struct could have anything in it.
      return 'Uint32';
    } else if (specialTypes.containsKey(typeIdentifier.name)) {
      return specialTypes[typeIdentifier.name]!;
    } else {
      return typeIdentifier.name;
    }
  }

  static Interface projectWinMdType(WinmdType mdTypeDef) {
    final interface = Interface();
    interface.sourceType = SourceType.winrt; // for now
    interface.iid = mdTypeDef.guid;
    interface.name = mdTypeDef.typeName;
    interface.inherits = mdTypeDef.parent!.typeName;
    interface.vtableStart = 6; // For now, hardcode to IInspectable subclass

    for (final mdMethod in mdTypeDef.methods) {
      final method = Method();
      method.name = mdMethod.methodName;
      method.returnTypeNative = 'Int32';
      method.returnTypeDart = 'int';

      // return value is passed as an pointer
      if (mdMethod.returnType.typeIdentifier.corType !=
          CorElementType.ELEMENT_TYPE_VOID) {
        final retParam = Parameter();
        if (mdMethod.isSetProperty) {
          retParam.name = method.name.substring(4).toCamelCase();
        } else if (mdMethod.isGetProperty) {
          retParam.name = 'value';
          retParam.nativeType = nativeType(mdMethod.returnType.typeIdentifier);
          retParam.dartType = dartType(mdMethod.returnType.typeIdentifier)!;
        } else {
          retParam.name = 'value';
          retParam.nativeType =
              'Pointer<${nativeType(mdMethod.returnType.typeIdentifier)}>';
          retParam.dartType =
              'Pointer<${nativeType(mdMethod.returnType.typeIdentifier)}>';
        }
        method.parameters.add(retParam);
      }

      for (final mdParam in mdMethod.parameters) {
        final param = Parameter();

        param.name = mdParam.name!;
        param.nativeType = nativeType(mdParam.typeIdentifier);
        param.dartType = dartType(mdParam.typeIdentifier)!;

        method.parameters.add(param);
      }

      interface.methods.add(method);
    }

    return interface;
  }
}
