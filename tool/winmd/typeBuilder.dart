// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'enums.dart';
import 'mdType.dart';
import 'mdTypeIdentifier.dart';
import 'types.dart';
import 'utils.dart';

/// Takes a WinMD type and builds a Dart representation of it.
class TypeBuilder {
  static bool isTypeAnEnum(WinmdTypeIdentifier typeIdentifier) =>
      typeIdentifier.type?.parent?.typeName == 'System.Enum';

  static String dartType(WinmdTypeIdentifier typeIdentifier) {
    if (isTypeAnEnum(typeIdentifier)) {
      return 'int';
    } else {
      return typeIdentifier.name;
    }
  }

  static String nativeType(WinmdTypeIdentifier typeIdentifier) {
    // TODO: ECMA-335 II.14.3 does not guarantee that an enum is a Uint32.
    // Need to parse the enum and figure out its real type.
    if (isTypeAnEnum(typeIdentifier)) {
      return 'Uint32';
    } else {
      return typeIdentifier.name;
    }
  }

  static Interface projectWinMdType(WinmdType mdTypeDef) {
    final interface = Interface();
    interface.sourceType = SourceType.winrt; // for now
    interface.iid = mdTypeDef.guid;
    interface.name = mdTypeDef.typeName;
    interface.inherits = mdTypeDef.parent.typeName;
    interface.vtableStart = 6; // For now, hardcode to IInspectable subclass

    for (var mdMethod in mdTypeDef.methods) {
      final method = Method();
      method.name = mdMethod.methodName;
      method.returnTypeNative = 'Int32';
      method.returnTypeDart = 'int';

      // return value is passed as an outparam
      if (mdMethod.returnType.typeIdentifier.corType !=
          CorElementType.ELEMENT_TYPE_VOID) {
        var retParam = Parameter();
        if (mdMethod.isProperty) {
          retParam.name = method.name.substring(4).toCamelCase();
        } else {
          retParam.name = method.name;
        }
        retParam.nativeType = nativeType(mdMethod.returnType.typeIdentifier);
        retParam.dartType = dartType(mdMethod.returnType.typeIdentifier);
        method.parameters.add(retParam);
      }

      for (var mdParam in mdMethod.parameters) {
        var param = Parameter();

        param.name = mdParam.name;
        param.nativeType = nativeType(mdParam.typeIdentifier);
        param.dartType = dartType(mdParam.typeIdentifier);

        method.parameters.add(param);
      }

      interface.methods.add(method);
    }

    return interface;
  }
}
