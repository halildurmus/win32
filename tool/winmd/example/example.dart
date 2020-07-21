// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Parse the Windows Metadata for a type and interpret its metadata

import 'package:win32/win32.dart';

import '../mdMethod.dart';
import '../mdReader.dart';

void printHeading(String heading) {
  print('');
  print('-' * heading.length);
  print(heading);
  print('-' * heading.length);
}

void listTokens([String type = 'Windows.Devices.Bluetooth.BluetoothAdapter']) {
  printHeading('Typedefs in the metadata file containing $type');

  final mdScope = WinmdReader.getScopeForType(type);

  for (var type in mdScope.typeDefs) {
    print('[${type.token.toHexString(32)}] ${type.typeName} '
        '(baseType: ${type.baseTypeToken.toHexString(32)})');
  }
}

void listMethods(
    [String type = 'Windows.Networking.Connectivity.NetworkInformation']) {
  printHeading('Methods of $type');

  final mdScope = WinmdReader.getScopeForType(type);
  final winTypeDef = mdScope.findTypeDef(type);
  final methods = winTypeDef.methods;

  print(methods.map(methodSignature).join('\n'));
}

void listParameters(
    [String type = 'Windows.Globalization.Calendar',
    String methodName = 'CompareDateTime']) {
  printHeading('Parameters of $methodName in $type');

  final mdScope = WinmdReader.getScopeForType(type);

  final winTypeDef = mdScope.findTypeDef(type);
  final method = winTypeDef.findMethod(methodName);

  print('${method.methodName} has '
      '${method.parameters.length} parameter(s).');

  // the zeroth parameter is the return type
  for (var i = 0; i < method.parameters.length; i++) {
    print('[${method.parameters[i].sequence}] '
        '${method.parameters[i].typeFlag.typeName} '
        '${method.parameters[i].name}');
  }

  final returnType = method.returnType;
  print('\nreturns: ${returnType.typeFlag.typeName}');
}

void listInterfaces([String type = 'Windows.Storage.Pickers.FolderPicker']) {
  printHeading('Interfaces implemented by $type');

  final mdScope = WinmdReader.getScopeForType(type);

  final winTypeDef = mdScope.findTypeDef(type);

  final interfaces = winTypeDef.interfaces;

  print('$type implements:');
  for (var interface in interfaces) {
    print('  ${interface.typeName}');
  }
}

// [uuid(CA30221D-86D9-40FB-A26B-D44EB7CF08EA)]
void listGUID([String type = 'Windows.UI.Shell.IAdaptiveCard']) {
  printHeading('GUID for $type');

  final mdScope = WinmdReader.getScopeForType(type);
  final winTypeDef = mdScope.findTypeDef(type);

  print(winTypeDef.guid);
}

String methodSignature(WinmdMethod method) {
  final buffer = StringBuffer();
  buffer.write('   ${method.isStatic ? 'static ' : ''}'
      '${method.isFinal ? 'final ' : ''}'
      '${method.isGetProperty ? '[propget] ' : ''}'
      '${method.isSetProperty ? '[propset] ' : ''}'
      '${method.isRTSpecialName ? 'rt_special ' : ''}'
      '${method.returnType.typeFlag.typeName} '
      '${method.isProperty ? method.methodName.substring(4) : method.methodName}');

  if (!method.isGetProperty) {
    buffer.write('(${typeParams(method)})');
  }

  buffer.write(';');
  return buffer.toString();
}

String typeParams(WinmdMethod method) => method.parameters
    .map((param) => '${param.typeFlag.typeName} ${param.name}')
    .join(', ');

String convertTypeToProjection(
    [String type = 'Windows.Foundation.IAsyncInfo']) {
  printHeading('A pseudo-code representation of the $type type');

  final idlProjection = StringBuffer();

  final mdScope = WinmdReader.getScopeForType(type);
  final winTypeDef = mdScope.findTypeDef(type);

  if (winTypeDef.parent.typeName == 'IInspectable') {
    idlProjection.writeln('// vtable_start 6');
  } else {
    idlProjection.writeln('// vtable_start UNKNOWN');
  }

  idlProjection.writeln('[uuid(${winTypeDef.guid}]');
  idlProjection.writeln(
      'interface ${winTypeDef.typeName} : ${winTypeDef.parent.typeName}');
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

  print(convertTypeToProjection());
}
