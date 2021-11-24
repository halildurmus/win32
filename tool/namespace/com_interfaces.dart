import 'dart:io';

import 'package:winmd/winmd.dart';

import '../metadata/utils.dart';
import '../projection/class.dart';
import '../projection/interface.dart';
import 'exclusions.dart';

// TODO: Remove some of these imports when system/com is projected
String comFileHeader(TypeDef interface, String pathToLibSrc) {
  final buffer = StringBuffer();

  final interfaceName = interface.name.split('.').last;

  buffer.write('''
// $interfaceName.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '${pathToLibSrc}com/IUnknown.dart';
import '${pathToLibSrc}combase.dart';
import '${pathToLibSrc}constants.dart';
import '${pathToLibSrc}exceptions.dart';
import '${pathToLibSrc}guid.dart';
import '${pathToLibSrc}macros.dart';
import '${pathToLibSrc}ole32.dart';
import '${pathToLibSrc}structs.dart';
import '${pathToLibSrc}utils.dart';
''');

  if (interface.interfaces.isNotEmpty) {
    final parent = interface.interfaces.first.name;
    if (!excludedComInterfaces.contains(parent)) {
      buffer.writeln("\nimport '$pathToLibSrc${folderFromNamespace(parent)}/"
          "${parent.split('.').last}.dart';");
    }
  }

  return buffer.toString();
}

String? getImportForTypeIdentifier(TypeIdentifier typeIdentifier) {
  if (specialTypes.contains(typeIdentifier.name)) {
    return 'specialTypes.dart';
  }

  if (typeIdentifier.name.startsWith('Windows.Win32')) {
    final paramType = typeIdentifier.type;

    if (paramType != null && paramType.isDelegate) {
      return '${folderFromNamespace(typeIdentifier.name)}/callbacks.g.dart';
    } else {
      return '${folderFromNamespace(typeIdentifier.name)}/structs.g.dart';
    }
  }
}

Set<String> importsForClass(TypeDef typedef) {
  final importList = <String>{};

  for (final method in typedef.methods) {
    final paramsAndReturnType = [...method.parameters, method.returnType];
    for (final param in paramsAndReturnType) {
      // Add imports for a parameter itself (e.g. VARIANT)
      final import = getImportForTypeIdentifier(param.typeIdentifier);
      if (import != null) importList.add(import);

      // Add imports for a type within a pointer (e.g. Pointer<VARIANT>)
      if (param.typeIdentifier.typeArg != null) {
        final import =
            getImportForTypeIdentifier(param.typeIdentifier.typeArg!);
        if (import != null) importList.add(import);

        // Add imports for a type within a double pointer (e.g.
        // Pointer<Pointer<VARIANT>>)
        if (param.typeIdentifier.typeArg!.typeArg != null) {
          final import = getImportForTypeIdentifier(
              param.typeIdentifier.typeArg!.typeArg!);
          if (import != null) importList.add(import);
        }
      }
    }
  }
  return importList;
}

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
