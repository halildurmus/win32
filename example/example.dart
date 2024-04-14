// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:win32/win32.dart';
import 'package:winmd/winmd.dart';

void printHeading(String heading) {
  print('');
  print('-' * heading.length);
  print(heading);
  print('-' * heading.length);
}

void listTokens([String type = 'Windows.Devices.Bluetooth.BluetoothAdapter']) {
  printHeading('Typedefs in the metadata file containing $type');

  final scope = MetadataStore.getScopeForType(type);
  final typeDefs = scope.typeDefs.take(10);

  for (final type in typeDefs) {
    print('[${type.token.toHexString(32)}] ${type.name} '
        '(baseType: ${type.baseTypeToken.toHexString(32)})');
  }
}

void listEnums([String namespace = 'Windows.Globalization']) {
  printHeading('Enums implemented by $namespace');

  final scope = MetadataStore.getScopeForType(namespace);
  final enums =
      scope.enums.where((typeDef) => typeDef.name.startsWith(namespace));

  for (final enumEntry in enums) {
    print('${enumEntry.name} has ${enumEntry.fields.length} fields.');
  }
}

void listStructs([String namespace = 'Windows.Foundation']) {
  printHeading('Structs implemented by $namespace');

  final scope = MetadataStore.getScopeForType(namespace);
  final structs =
      scope.structs.where((typeDef) => typeDef.name.startsWith(namespace));

  for (final structEntry in structs) {
    print('${structEntry.name} has ${structEntry.fields.length} fields.');
  }
}

void listMethods(
    [String type = 'Windows.Networking.Connectivity.NetworkInformation']) {
  printHeading('First ten methods of $type');

  final typeDef = MetadataStore.getMetadataForType(type)!;
  final methods = typeDef.methods.take(10);

  print(methods.map(methodSignature).join('\n'));
}

void listParameters(
    [String type = 'Windows.Globalization.Calendar',
    String methodName = 'CompareDateTime']) {
  printHeading('Parameters of $methodName in $type');

  final typeDef = MetadataStore.getMetadataForType(type)!;
  final method = typeDef.findMethod(methodName)!;

  print('${method.name} has '
      '${method.parameters.length} parameter(s).');

  // the zeroth parameter is the return type
  for (var i = 0; i < method.parameters.length; i++) {
    print('[${method.parameters[i].sequence}] '
        '${method.parameters[i].typeIdentifier.name} '
        '${method.parameters[i].name}');
  }

  final returnType = method.returnType;
  print('\nreturns: ${returnType.typeIdentifier.name}');
}

void listInterfaces([String type = 'Windows.Storage.Pickers.FolderPicker']) {
  printHeading('First 5 interfaces implemented by $type');

  final typeDef = MetadataStore.getMetadataForType(type)!;
  final interfaces = typeDef.interfaces.take(5);

  print('$type implements:');
  for (final interface in interfaces) {
    print('  ${interface.name}');
  }
}

// [uuid(CA30221D-86D9-40FB-A26B-D44EB7CF08EA)]
void listGUID([String type = 'Windows.UI.Shell.IAdaptiveCard']) {
  printHeading('GUID for $type');

  final typeDef = MetadataStore.getMetadataForType(type)!;
  print(typeDef.guid);
}

String parseType(Method method, TypeIdentifier typeIdentifier) =>
    switch (typeIdentifier.baseType) {
      BaseType.booleanType => 'bool',
      BaseType.cLanguageOptionalModifier ||
      BaseType.cLanguageRequiredModifier =>
        parseType(method, typeIdentifier.typeArg!),
      BaseType.classVariableTypeModifier => method.parent
          .genericParams[typeIdentifier.genericParameterSequence ?? 0].name,
      BaseType.int8Type ||
      BaseType.int16Type ||
      BaseType.int32Type ||
      BaseType.int64Type ||
      BaseType.uint8Type ||
      BaseType.uint16Type ||
      BaseType.uint32Type ||
      BaseType.uint64Type =>
        typeIdentifier.baseType.name.replaceFirst('Type', ''),
      BaseType.referenceTypeModifier =>
        'ref ${parseType(method, typeIdentifier.typeArg!)}',
      BaseType.simpleArrayType =>
        '${parseType(method, typeIdentifier.typeArg!)}[]',
      BaseType.charType || BaseType.stringType => 'String',
      BaseType.voidType => 'void',
      _ => typeIdentifier.name
    };

String methodSignature(Method method) =>
    '   ${method.isStatic ? 'static ' : ''}'
    '${method.isFinal ? 'final ' : ''}'
    '${method.isGetProperty ? '[propget] ' : ''}'
    '${method.isSetProperty ? '[propput] ' : ''}'
    '${parseType(method, method.returnType.typeIdentifier)} '
    '${method.isProperty ? method.name.substring(4) : method.name}'
    '${method.isGetProperty ? ';' : '${typeParams(method)};'}';

String typeParams(Method method) {
  if (method.isGetProperty) return '';

  final parameters = method.parameters;
  if (parameters.isEmpty) return '()';

  final params = parameters.map((param) {
    final Parameter(:isInParam, :isOutParam) = param;
    return '${isInParam ? '[in] ' : ''}'
        '${isOutParam ? '[out] ' : ''}'
        '${parseType(method, param.typeIdentifier)} ${param.name}';
  }).join(', ');

  return '($params)';
}

String convertTypeToProjection(
    [String type = 'Windows.Foundation.IAsyncInfo']) {
  printHeading('A pseudo-code representation of the $type type');

  final idlProjection = StringBuffer();
  final typeDef = MetadataStore.getMetadataForType(type)!;

  final vTableStart = switch (typeDef.parent?.name) {
    'IUnknown' || 'System.MulticastDelegate' => 3,
    'IInspectable' => 6,
    _ => 'UNKNOWN'
  };

  idlProjection
    ..writeln('// vtable_start $vTableStart')
    ..writeln('[uuid(${typeDef.guid}]')
    ..writeln('interface ${typeDef.name} : ${typeDef.parent?.name}')
    ..writeln('{')
    ..writeln(typeDef.methods.map(methodSignature).join('\n'))
    ..writeln('}');

  return idlProjection.toString();
}

void main(List<String> args) async {
  await MetadataStore.loadWdkMetadata();
  await MetadataStore.loadWin32Metadata();
  await MetadataStore.loadWinRTMetadata();

  listTokens();
  listInterfaces();
  listGUID();
  listMethods();
  listParameters();
  listEnums();
  listStructs();

  print(convertTypeToProjection());

  MetadataStore.close();
}
