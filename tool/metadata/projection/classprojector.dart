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

String removeUnicodeSuffix(String typeName) => typeName.endsWith('W')
    ? typeName.substring(0, typeName.length - 1)
    : typeName;

class ClassProjector {
  final TypeDef typeDef;

  int _vtableStart(TypeDef? type) {
    if (type == null) {
      return 0;
    }

    // WinRT types inherit from IInspectable
    if (!type.name.startsWith('Windows.Win32') && type.interfaces.isEmpty) {
      return 6;
    }

    if (type.isInterface && type.interfaces.isNotEmpty) {
      var sum = 0;

      for (final interface in type.interfaces) {
        sum += interface.methods.length + _vtableStart(interface);
      }

      return sum;
    }

    return 0;
  }

  int get vtableStart => _vtableStart(typeDef);

  const ClassProjector(this.typeDef);

  /// Take a TypeDef and create a Dart projection of it.
  ClassProjection get projection {
    var parent = '';

    // WinRT interfaces don't inherit in metadata (e.g. IAsyncInfo has no
    // parent), but all WinRT interfaces have a base type of IInspectable as far
    // as the COM vtable is concerned. They contain the functions of
    // IInspectable (as well as IUnknown, from which IInspectable itself
    // inherits).
    if (typeDef.interfaces.isNotEmpty) {
      parent = typeDef.interfaces.first.name.split('.').last;
    } else if (!typeDef.name.endsWith('IUnknown')) {
      parent = 'IInspectable';
    }

    final classInheritsFrom = parent;

    final interface = ClassProjection(
        sourceType: typeDef.name.startsWith('Windows.Win32')
            ? SourceType.com
            : SourceType.winrt,
        iid: typeDef.guid,
        name: removeUnicodeSuffix(typeDef.name),
        inherits: classInheritsFrom,
        vtableStart: _vtableStart(typeDef));

    if (typeDef.genericParams.isNotEmpty) {
      final genericParams =
          typeDef.genericParams.map<String>((p) => p.name).join(', ');
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
        methodProjection.name = mdMethod.name;
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
        if (mdMethod.returnType.typeIdentifier.baseType != BaseType.Void) {
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
