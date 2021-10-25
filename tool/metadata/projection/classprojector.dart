// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../utils.dart';
import 'data_classes.dart';
import 'typeprojector.dart';

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
    // TODO: Refactor this into smaller pieces
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
        name: nameWithoutEncoding(typeDef.name),
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

    for (final method in typeDef.methods) {
      final methodProjection = MethodProjection();
      final overload = method
          .attributeAsString('Windows.Foundation.Metadata.OverloadAttribute');
      if (overload.isNotEmpty) {
        methodProjection.name = overload;
      } else {
        // Win32 COM interfaces just overload without providing a secondary
        // name. So we have to generate one.
        final overloads = typeDef.methods.where((m) => m.name == method.name);
        if (overloads.length > 1) {
          final overloadIndex = overloads.toList().indexOf(method);
          methodProjection.name = '${method.name}_$overloadIndex';
        } else {
          methodProjection.name = method.name;
        }
      }
      methodProjection.isGetProperty = method.isGetProperty;
      methodProjection.isSetProperty = method.isSetProperty;

      for (final mdParam in method.parameters) {
        final typeProjection = TypeProjector(mdParam.typeIdentifier);

        methodProjection.parameters.add(ParameterProjection(
            safeName(mdParam.name),
            nativeType: typeProjection.nativeType,
            dartType: typeProjection.dartType));
      }

      // TODO: Rationalize these. We shouldn't have to hardcode for the
      // difference between Win32 and WinRT metadata...
      if (interface.name.startsWith('Windows.Win32')) {
        // return type is almost certainly an HRESULT, but we'll use the return
        // type just to be sure.
        final typeBuilder = TypeProjector(method.returnType.typeIdentifier);

        methodProjection.returnTypeNative = typeBuilder.nativeType;
        methodProjection.returnTypeDart = typeBuilder.dartType;

        if (method.isGetProperty) {
          methodProjection.isGetProperty = true;

          // TODO: Deal with methods like IUPnPServices.get_Item([In], [Out]).
          // Right now we ignore the [In] parameter :-O

          // TODO: Next line should throw an exception when
          // https://github.com/microsoft/win32metadata/issues/707 is fixed and
          // we can reliably detect Win32 properties.

          // This is a Pointer<T>, which will be wrapped later, so strip the
          // Pointer<> off.
          final outParam = method.parameters
              .lastWhere((param) => param.isOutParam)
              .typeIdentifier;
          final arg = outParam.typeArg;
          if (arg == null) {
            throw Exception(
                '$method (${method.token.toRadixString(16)}) missing '
                'typearg for $outParam in ${method.parent}');
          } else {
            final outParamType = TypeProjector(arg);
            methodProjection.parameters = [
              ParameterProjection(outParam.name,
                  nativeType: outParamType.nativeType,
                  dartType: outParamType.dartType)
            ];
          }
        }
      } else {
        // WinRT methods always return an HRESULT, and provide the actual return
        // value as an pointer
        methodProjection.returnTypeNative = 'Int32';
        methodProjection.returnTypeDart = 'int';
        if (method.returnType.typeIdentifier.baseType != BaseType.Void) {
          final typeBuilder = TypeProjector(method.returnType.typeIdentifier);

          if (method.isSetProperty) {
            final paramName = methodProjection.name.substring(4).toCamelCase();
            methodProjection.parameters.add(ParameterProjection(paramName,
                nativeType: typeBuilder.nativeType,
                dartType: typeBuilder.dartType));
          } else if (method.isGetProperty) {
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
