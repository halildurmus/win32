// winmd.dart

// Parse the WinMD file and interpret its metadata

// Sources of inspiration:
// https://stackoverflow.com/questions/54375771/how-to-read-a-winmd-winrt-metadata-file
// https://docs.microsoft.com/en-us/windows/win32/api/rometadataresolution/nf-rometadataresolution-rogetmetadatafile

import 'mdFile.dart';
import 'utils.dart';

String toHex(int value32) =>
    '0x${value32.toUnsigned(32).toRadixString(16).padLeft(8, '0')}';

void listTokens() {
  final file = metadataFileContainingType('Windows.Globalization.Calendar');
  final winmdFile = WindowsMetadataFile(file);

  for (var type in winmdFile.typeDefs) {
    print(
        '[${toHex(type.token)}] ${type.typeName} (baseType: ${toHex(type.baseTypeToken)})');
  }
}

void listMethods() {
  final file = metadataFileContainingType('Windows.Globalization.Calendar');
  final winmdFile = WindowsMetadataFile(file);

  final winTypeDef = winmdFile.findTypeDef('Windows.Globalization.Calendar');
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
  final methods = winTypeDef.methods;

  final hourAsPaddedStringOrdinal = 75;
  final parameters = methods[hourAsPaddedStringOrdinal].parameters;
  print(
      '${methods[hourAsPaddedStringOrdinal].methodName} has ${parameters.length - 1} parameter(s).');
  for (int i = 1; i < parameters.length; i++) {
    print(
        '[${parameters[i].sequence}] ${parameters[i].name} (${toHex(parameters[i].token)})');
  }
  final returnType = methods[hourAsPaddedStringOrdinal].returnType;
  print('\nreturns: ${returnType.name} (${toHex(returnType.token)})');
}

void main() {
  listParameters();
}
