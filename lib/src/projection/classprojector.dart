// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import '../constants.dart';
import '../typedef.dart';
import '../utils.dart';
import 'types.dart';
import 'typeprojector.dart';

class ClassProjector {
  final TypeDef typeDef;

  const ClassProjector(this.typeDef);

  /// Take a TypeDef and create a Dart projection of it.
  ClassProjection get projection {
    final interface = ClassProjection()
      ..sourceType = SourceType.winrt // for now
      ..iid = typeDef.guid
      ..name = typeDef.typeName
      ..inherits = typeDef.parent!.typeName
      ..vtableStart = 6; // For now, hardcode to IInspectable subclass

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

        // Win32 COM properties are not marked as such in the metadata
        // (https://github.com/microsoft/win32metadata/issues/270), so we have
        // to manually deal with them.
        if (mdMethod.methodName.startsWith('get_')) {
          methodProjection.isGetProperty = true;

          // This is a Pointer<T>, which will be wrapped later, so strip the
          // Pointer<> off.
          final typeBuilder = TypeProjector(
              mdMethod.parameters.first.typeIdentifier.typeArgs.first);
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
                dartType: 'Pointer<${typeBuilder.dartType}>'));
          }
        }
      }

      interface.methods.add(methodProjection);
    }

    return interface;
  }
}
