// winmd.dart

// Parse the Windows Metadata for a type and interpret its metadata

// Sources of inspiration:
// https://stackoverflow.com/questions/54375771/how-to-read-a-winmd-winrt-metadata-file
// https://docs.microsoft.com/en-us/windows/win32/api/rometadataresolution/nf-rometadataresolution-rogetmetadatafile
// https://www.ecma-international.org/publications/files/ECMA-ST/ECMA-335.pdf

import 'package:win32/src/extensions/intToHexString.dart';

import 'mdFile.dart';
import 'mdMethod.dart';
import 'utils.dart';

void listTokens() {
  final file = metadataFileContainingType('Windows.Globalization.Calendar');
  final winmdFile = WinmdFile(file);

  for (var type in winmdFile.typeDefs) {
    print('[${type.token.toHexString(32)}] ${type.typeName} '
        '(baseType: ${type.baseTypeToken.toHexString(32)})');
  }
}

void listMethods([String type = 'Windows.Globalization.Calendar']) {
  final file = metadataFileContainingType(type);
  final winmdFile = WinmdFile(file);

  final winTypeDef = winmdFile.findTypeDef(type);
  final methods = winTypeDef.methods;

  print(methods.map(methodSignature).join('\n'));
}

void listParameters([String type = 'Windows.Globalization.Calendar']) {
  final file = metadataFileContainingType(type);
  final winmdFile = WinmdFile(file);

  final winTypeDef = winmdFile.findTypeDef(type);
  final method = winTypeDef.findMethod('HourAsPaddedString');

  print('${method.methodName} has '
      '${method.parameters.length - 1} parameter(s).');

  // the zeroth parameter is the return type
  for (var i = 1; i < method.parameters.length; i++) {
    print('[${method.parameters[i].sequence}] ${method.parameters[i].name}');
  }

  final returnType = method.returnType;
  print('\nreturns: ${returnType.name}');
}

void listInterfaces([String type = 'Windows.Globalization.Calendar']) {
  final file = metadataFileContainingType(type);
  final winmdFile = WinmdFile(file);

  final winTypeDef = winmdFile.findTypeDef(type);

  final interfaces = winTypeDef.interfaces;

  print('$type implements:');
  for (var interface in interfaces) {
    print('  ${interface.typeName}');
    listMethods(interface.typeName);
  }
}

// [uuid(CA30221D-86D9-40FB-A26B-D44EB7CF08EA)]
void listGUID([String type = 'Windows.Globalization.ICalendar']) {
  final file = metadataFileContainingType(type);
  final winmdFile = WinmdFile(file);

  final winTypeDef = winmdFile.findTypeDef(type);
  print(winTypeDef.guid);
}

String methodSignature(WinmdMethod method) {
  final buffer = StringBuffer();
  buffer.write('   ${method.isStatic ? 'static ' : ''}'
      '${method.isFinal ? 'final ' : ''}'
      '${method.isGetProperty ? '[propget] ' : ''}'
      '${method.isSetProperty ? '[propset] ' : ''}'
      '${method.isRTSpecialName ? 'rt_special ' : ''}'
      '${method.returnType.typeFlag.nativeType} '
      '${method.isProperty ? method.methodName.substring(4) : method.methodName}');

  if (!method.isGetProperty) {
    buffer.write('(${typeParams(method)})');
  }

  buffer.write(';');
  return buffer.toString();
}

String typeParams(WinmdMethod method) => method.parameters
    .map((param) => '${param.typeFlag.nativeType} ${param.name}')
    .join(', ');

String convertTypeToProjection(
    [String type = 'Windows.Foundation.IAsyncInfo']) {
  final idlProjection = StringBuffer();

  final file = metadataFileContainingType(type);
  final winTypeDef = WinmdFile(file).findTypeDef(type);

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
  listMethods();
  // final projection = convertTypeToProjection('Windows.Globalization.ICalendar');
  // print(projection);
}
