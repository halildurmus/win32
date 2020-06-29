// winmd.dart

// Parse the WinMD file and interpret its metadata

// Sources of inspiration:
// https://stackoverflow.com/questions/54375771/how-to-read-a-winmd-winrt-metadata-file
// https://docs.microsoft.com/en-us/windows/win32/api/rometadataresolution/nf-rometadataresolution-rogetmetadatafile

import 'mdFile.dart';
import 'utils.dart';

void listTokens() {
  final file = metadataFileContainingType('Windows.Globalization.Calendar');
  final winmdFile = WindowsMetadataFile(file);

  for (var type in winmdFile.typeDefs) {
    print(
        '[${toHex(type.token)}] ${type.typeName} (baseType: ${toHex(type.baseTypeToken)})');
  }
}

void listMethods([String typeDef = 'Windows.Globalization.Calendar']) {
  final file = metadataFileContainingType(typeDef);
  final winmdFile = WindowsMetadataFile(file);

  final winTypeDef = winmdFile.findTypeDef(typeDef);
  final methods = winTypeDef.methods;

  int i = 0;
  for (var method in methods) {
    print('$i ${method.isPublic ? 'public ' : ''}'
        '${method.isPrivate ? 'private ' : ''}'
        '${method.isStatic ? 'static ' : ''}'
        '${method.isFinal ? 'final ' : ''}'
        '${method.isVirtual ? 'virtual ' : ''}'
        '${method.isSpecialName ? 'special ' : ''}'
        '${method.isRTSpecialName ? 'rt_special ' : ''}'
        '${method.methodName} ');
    i++;
  }
}

void listParameters() {
  final file = metadataFileContainingType('Windows.Globalization.Calendar');
  final winmdFile = WindowsMetadataFile(file);

  final winTypeDef = winmdFile.findTypeDef('Windows.Globalization.Calendar');
  final method = winTypeDef.findMethod('HourAsPaddedString2');

  final parameters = method.parameters;
  print('${method.methodName} has '
      '${parameters.length - 1} parameter(s).');

  // the zeroth parameter is the return type
  for (int i = 1; i < parameters.length; i++) {
    print('[${parameters[i].sequence}] ${parameters[i].name}');
  }

  final returnType = method.returnType;
  print('\nreturns: ${returnType.name}');
}

void listInterfaces() {
  final type = 'Windows.Globalization.Calendar';
  final file = metadataFileContainingType(type);
  final winmdFile = WindowsMetadataFile(file);

  final winTypeDef = winmdFile.findTypeDef(type);

  final interfaces = winTypeDef.interfaces;

  print('$type implements:');
  for (var interface in interfaces) {
    print('  ${interface.typeName}');
    listMethods(interface.typeName);
  }
}

// [uuid(CA30221D-86D9-40FB-A26B-D44EB7CF08EA)]
void listGUID() {
  final type = 'Windows.Globalization.ICalendar';
  final file = metadataFileContainingType(type);
  final winmdFile = WindowsMetadataFile(file);

  final winTypeDef = winmdFile.findTypeDef(type);
  print(winTypeDef.guid);
}

void main() {
  listGUID();
}
