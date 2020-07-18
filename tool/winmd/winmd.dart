// winmd.dart

// Parse the Windows Metadata for a type and interpret its metadata

// Sources of inspiration:
// https://stackoverflow.com/questions/54375771/how-to-read-a-winmd-winrt-metadata-file
// https://docs.microsoft.com/en-us/windows/win32/api/rometadataresolution/nf-rometadataresolution-rogetmetadatafile
// https://www.ecma-international.org/publications/files/ECMA-ST/ECMA-335.pdf

import 'dart:io';

import 'dartProjection.dart';
import 'enums.dart';
import 'mdFile.dart';
import 'mdMethod.dart';
import 'utils.dart';

void listTokens() {
  final file = metadataFileContainingType('Windows.Globalization.Calendar');
  final winmdFile = WinmdFile(file);

  for (var type in winmdFile.typeDefs) {
    print(
        '[${toHex(type.token)}] ${type.typeName} (baseType: ${toHex(type.baseTypeToken)})');
  }
}

void listMethods([String type = 'Windows.Globalization.Calendar']) {
  final file = metadataFileContainingType(type);
  final winmdFile = WinmdFile(file);

  final winTypeDef = winmdFile.findTypeDef(type);
  final methods = winTypeDef.methods;

  print(methods.map(methodSignature));
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

/// Convert enums to ints
Parameter tidyParam(String type, Parameter param) {
  // TODO: This shouldn't be done by inspecting the type; we should be checking
  // whether the type is an enum, and if so, what it corresponds to. This is a
  // quick and dirty hack to get us up and running.

  if (['Windows.Foundation.AsyncStatus'].contains(type)) {
    param.dartType = 'int';
    param.nativeType = 'Int32';
  }

  if (['Windows.Foundation.HResult'].contains(type)) {
    param.dartType = 'int';
    param.nativeType = 'Uint32';
  }

  return param;
}

Interface projectWinMdType(String type) {
  final mdFile = metadataFileContainingType(type);
  final mdTypeDef = WinmdFile(mdFile).findTypeDef(type);

  final interface = Interface();
  interface.sourceType = SourceType.idl; // for now
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
    if (mdMethod.returnType.typeFlag.corType !=
        CorElementType.ELEMENT_TYPE_VOID) {
      var retParam = Parameter();
      if (mdMethod.isProperty) {
        retParam.name = method.name.substring(4).toCamelCase();
      } else {
        retParam.name = method.name;
      }
      retParam.nativeType = mdMethod.returnType.typeFlag.nativeType;
      retParam = tidyParam(mdMethod.returnType.typeFlag.nativeType, retParam);
      retParam.nativeType = retParam.nativeType;
      retParam.dartType = retParam.nativeType;
      method.parameters.add(retParam);
    }

    for (var mdParam in mdMethod.parameters) {
      var param = Parameter();
      param.name = mdParam.name;

      param.dartType = mdParam.typeFlag.dartType;
      param.nativeType = mdParam.typeFlag.nativeType;
      param = tidyParam(mdParam.typeFlag.dartType, param);

      method.parameters.add(param);
    }

    interface.methods.add(method);
  }

  return interface;
}

void main(List<String> args) {
  final outputDirectory = Directory(args.first);
  final types = ['Windows.Foundation.IAsyncInfo'];
  for (var type in types) {
    final dartProjection = projectWinMdType(type);
    final outputFilename = type.split('.').last;

    final outputFile =
        File('${outputDirectory.uri.toFilePath()}$outputFilename.dart');
    print('Writing:    ${outputFile.path}');
    outputFile.writeAsStringSync(dartProjection.toString());
  }
}
