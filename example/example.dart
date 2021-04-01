// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Parse the Windows Metadata for a type and interpret its metadata

import 'dart:io';

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

  final mdScope = MetadataStore.getScopeForType(type);

  for (final type in mdScope.typeDefs.take(10)) {
    print('[${type.token.toHexString(32)}] ${type.typeName} '
        '(baseType: ${type.baseTypeToken.toHexString(32)})');
  }
}

void listEnums([String type = 'Windows.Globalization']) {
  printHeading('Enums implemented by $type');

  final file = metadataFileContainingType('Windows.Globalization.DayOfWeek');
  final mdScope = MetadataStore.getScopeForFile(File(file.path));
  final enums = mdScope.enums;

  for (final enumEntry in enums) {
    print('${enumEntry.typeName} has ${enumEntry.fields.length} entries.');
  }
}

void listMethods(
    [String type = 'Windows.Networking.Connectivity.NetworkInformation']) {
  printHeading('First ten methods of $type');

  final mdScope = MetadataStore.getScopeForType(type);
  final winTypeDef = mdScope[type];
  final methods = winTypeDef!.methods.take(10);

  print(methods.map(methodSignature).join('\n'));
}

void listParameters(
    [String type = 'Windows.Globalization.Calendar',
    String methodName = 'CompareDateTime']) {
  printHeading('Parameters of $methodName in $type');

  final mdScope = MetadataStore.getScopeForType(type);

  final winTypeDef = mdScope[type];
  final method = winTypeDef!.findMethod(methodName)!;

  print('${method.methodName} has '
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

  final mdScope = MetadataStore.getScopeForType(type);

  final winTypeDef = mdScope[type];

  final interfaces = winTypeDef!.interfaces.take(5);

  print('$type implements:');
  for (final interface in interfaces) {
    print('  ${interface.typeName}');
  }
}

// [uuid(CA30221D-86D9-40FB-A26B-D44EB7CF08EA)]
void listGUID([String type = 'Windows.UI.Shell.IAdaptiveCard']) {
  printHeading('GUID for $type');

  final mdScope = MetadataStore.getScopeForType(type);
  final winTypeDef = mdScope[type];

  print(winTypeDef!.guid);
}

String methodSignature(Method method) {
  final buffer = StringBuffer();
  buffer.write('   ${method.isStatic ? 'static ' : ''}'
      '${method.isFinal ? 'final ' : ''}'
      '${method.isGetProperty ? '[propget] ' : ''}'
      '${method.isSetProperty ? '[propset] ' : ''}'
      '${method.returnType.typeIdentifier.name} '
      '${method.isProperty ? method.methodName.substring(4) : method.methodName}');

  if (!method.isGetProperty) {
    buffer.write('(${typeParams(method)})');
  }

  buffer.write(';');
  return buffer.toString();
}

String typeParams(Method method) => method.parameters
    .map((param) => '${param.typeIdentifier.name} ${param.name}')
    .join(', ');

String convertTypeToProjection(
    [String type = 'Windows.Foundation.IAsyncInfo']) {
  printHeading('A pseudo-code representation of the $type type');

  final idlProjection = StringBuffer();

  final mdScope = MetadataStore.getScopeForType(type);
  final winTypeDef = mdScope[type];

  if (winTypeDef?.parent?.typeName == 'IInspectable') {
    idlProjection.writeln('// vtable_start 6');
  } else {
    idlProjection.writeln('// vtable_start UNKNOWN');
  }

  idlProjection.writeln('[uuid(${winTypeDef!.guid}]');
  idlProjection.writeln(
      'interface ${winTypeDef.typeName} : ${winTypeDef.parent!.typeName}');
  idlProjection.writeln('{');

  idlProjection.writeln(winTypeDef.methods.map(methodSignature).join('\n'));
  idlProjection.writeln('}');

  return idlProjection.toString();
}

void main(List<String> args) {
  listTokens();
  listInterfaces();
  listGUID();
  listMethods();
  listParameters();
  listEnums();

  print(convertTypeToProjection());
}
