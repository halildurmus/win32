import 'dart:io';

import 'package:winmd/winmd.dart';

import '../projection/class.dart';
import '../projection/interface.dart';
import '../projection/safenames.dart';
import 'generate.dart';

void generateInterfaceFiles(
    Directory directory, List<TypeDef> interfaces, Scope scope) {
  for (final interface in interfaces) {
    final typeDef = scope.findTypeDef(interface.name);
    if (typeDef == null) throw Exception("Can't find $interface");

    InterfaceProjection interfaceProjection;
    interfaceProjection = InterfaceProjection(typeDef);

    // We put classes and interfaces in the same file.
    final className = ClassProjection.generateClassName(typeDef);
    if (scope.findTypeDef(className) != null) {
      interfaceProjection = ClassProjection.fromInterface(typeDef);
    }

    final dartClass = interfaceProjection.toString();
    final formattedFile = formatter.format(dartClass);

    final classOutputFilename = safeFilenameForTypeDef(interface);

    File('${directory.uri.toFilePath()}$classOutputFilename.dart')
        .writeAsStringSync(formattedFile);
  }
}
