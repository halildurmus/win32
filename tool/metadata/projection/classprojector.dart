// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import 'data_classes.dart';
import 'typeprojector.dart';

extension CamelCaseConversion on String {
  String toCamelCase() =>
      length >= 2 ? substring(0, 1).toLowerCase() + substring(1) : this;
}

class ClassProjector {
  final TypeDef typeDef;

  int vTableStart(TypeDef? type) {
    if (type == null) {
      return 0;
    }

    if (type.isInterface && type.interfaces.isNotEmpty) {
      var sum = 0;

      for (final interface in type.interfaces) {
        sum += interface.methods.length + vTableStart(interface);
      }

      return sum;
    }

    return 0;
  }

  const ClassProjector(this.typeDef);

  /// Take a TypeDef and create a Dart projection of it.
  ClassProjection get projection {
    final classInheritsFrom = typeDef.interfaces.isNotEmpty
        ? typeDef.interfaces.first.typeName.split('.').last
        : 'IInspectable';
    final vtableStart =
        classInheritsFrom == 'IInspectable' ? 6 : vTableStart(typeDef);

    final interface = ClassProjection(
        sourceType: SourceType.winrt,
        iid: typeDef.guid,
        name: typeDef.typeName,
        inherits: classInheritsFrom,
        vtableStart: vtableStart);

    if (typeDef.genericParams.isNotEmpty) {
      final genericParams =
          typeDef.genericParams.map<String>((p) => p.paramName).join(', ');
      interface.shortNameWithGenericSpecifier =
          '${interface.shortName}<$genericParams>';
    } else {
      interface.shortNameWithGenericSpecifier = interface.shortName;
    }

    for (final mdMethod in typeDef.methods) {
      final methodProjection = MethodProjection();
      final overload = mdMethod
          .attributeAsString('Windows.Foundation.Metadata.OverloadAttribute');
      if (overload.isNotEmpty) {
        methodProjection.name = overload;
      } else {
        methodProjection.name = mdMethod.methodName;
      }
      methodProjection.isGetProperty = mdMethod.isGetProperty;
      methodProjection.isSetProperty = mdMethod.isSetProperty;

      for (final mdParam in mdMethod.parameters) {
        final typeProjection = TypeProjector(mdParam.typeIdentifier);

        methodProjection.parameters.add(ParameterProjection(mdParam.name,
            nativeType: typeProjection.nativeType,
            dartType: typeProjection.dartType));
      }

      if (interface.name.startsWith('Windows.Win32')) {
        // return type is almost certainly an HRESULT, but we'll use the return
        // type just to be sure.
        final typeBuilder = TypeProjector(mdMethod.returnType.typeIdentifier);

        methodProjection.returnTypeNative = typeBuilder.nativeType;
        methodProjection.returnTypeDart = typeBuilder.dartType;

        if (mdMethod.isGetProperty) {
          methodProjection.isGetProperty = true;

          // This is a Pointer<T>, which will be wrapped later, so strip the
          // Pointer<> off.
          final typeBuilder =
              TypeProjector(mdMethod.parameters.first.typeIdentifier.typeArg!);
          methodProjection.parameters = [
            ParameterProjection(mdMethod.parameters.first.name,
                nativeType: typeBuilder.nativeType,
                dartType: typeBuilder.dartType)
          ];
        }
      } else {
        // WinRT methods always return an HRESULT, and provide the actual return
        // value as an pointer
        methodProjection.returnTypeNative = 'Int32';
        methodProjection.returnTypeDart = 'int';
        if (mdMethod.returnType.typeIdentifier.corType !=
            CorElementType.ELEMENT_TYPE_VOID) {
          final typeBuilder = TypeProjector(mdMethod.returnType.typeIdentifier);

          if (mdMethod.isSetProperty) {
            final paramName = methodProjection.name.substring(4).toCamelCase();
            methodProjection.parameters.add(ParameterProjection(paramName,
                nativeType: typeBuilder.nativeType,
                dartType: typeBuilder.dartType));
          } else if (mdMethod.isGetProperty) {
            methodProjection.parameters.add(ParameterProjection('value',
                nativeType: typeBuilder.nativeType,
                dartType: typeBuilder.dartType));
          } else {
            methodProjection.parameters.add(ParameterProjection('result',
                nativeType: 'Pointer<${typeBuilder.nativeType}>',
                dartType: 'Pointer<${typeBuilder.nativeType}>'));
          }
        }
      }

      interface.methods.add(methodProjection);
    }

    return interface;
  }
}
