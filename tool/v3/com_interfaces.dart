import 'dart:io';

import 'package:winmd/winmd.dart';

import '../metadata/utils.dart';
import '../projection/class.dart';
import '../projection/interface.dart';

void generateInterfaceFiles(
    Directory directory, List<TypeDef> interfaces, Scope scope) {
  for (final interface in interfaces) {
    final typeDef = scope.findTypeDef(interface.name);
    if (typeDef == null) throw Exception("Can't find $interface");

    InterfaceProjection interfaceProjection;
    interfaceProjection = InterfaceProjection(typeDef);

    // In v2, we put classes and interfaces in the same file.
    final className = ClassProjection.generateClassName(typeDef);
    if (scope.findTypeDef(className) != null) {
      interfaceProjection = ClassProjection.fromInterface(typeDef);
    }

    final dartClass = interfaceProjection.toString();

    final classOutputFilename =
        nameWithoutEncoding(interface.name.split('.').last);
    final outputFile =
        File('${directory.uri.toFilePath()}$classOutputFilename.dart');
    outputFile.writeAsStringSync(dartClass);
  }
}
