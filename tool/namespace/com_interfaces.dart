import 'dart:io';

import 'package:winmd/winmd.dart';

import '../metadata/projection/classprojector.dart';
import '../metadata/projection/data_classes.dart';
import '../metadata/projection/typeprinter.dart';
import '../metadata/utils.dart';
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

List<String> importsForClass(TypeDef typedef) {
  final importList = <String>[];

  for (final method in typedef.methods) {
    for (final param in method.parameters) {
      if (param.typeIdentifier.name.startsWith('Windows.Win32')) {
        final paramType = param.typeIdentifier.type;

        if (paramType != null && paramType.isDelegate) {
          importList.add(
              '${folderFromNamespace(param.typeIdentifier.name)}/callbacks.g.dart');
        } else {
          importList.add(
              '${folderFromNamespace(param.typeIdentifier.name)}/structs.g.dart');
        }
      }

      if (param.typeIdentifier.typeArg != null) {
        final paramTypeArg = param.typeIdentifier.typeArg!;
        if (paramTypeArg.name.startsWith('Windows.Win32')) {
          if (paramTypeArg.type!.isDelegate) {
            importList.add(
                '${folderFromNamespace(paramTypeArg.name)}/callbacks.g.dart');
          } else {
            importList.add(
                '${folderFromNamespace(paramTypeArg.name)}/structs.g.dart');
          }
        }
      }
    }
  }
  return importList;
}

void generateInterfaceFiles(
    Directory directory, List<TypeDef> interfaces, Scope scope) {
  for (final interface in interfaces) {
    final clsid =
        scope.findTypeDef(classNameForInterfaceName(interface.name))?.guid ??
            '';

    final parentInterface = interface.interfaces.isNotEmpty
        ? interface.interfaces.first.name.split('.').last
        : '';

    final classProjection = ClassProjector(interface).projection
      ..inherits = parentInterface
      ..namespace = interface.name
      // ..vtableStart = vTableStart(mdTypeDef)
      ..sourceType = SourceType.com
      ..generateClass = clsid.isNotEmpty
      ..clsid = clsid
      ..className =
          nameWithoutEncoding(interface.name.split('.').last.substring(1));

    final imports = importsForClass(interface).toSet();

    // Pass relative directory to lib/src as second parameter (e.g. '../../')
    final prefix = '../' * (interface.name.split('.').length - 3);
    final dartClass =
        TypePrinter.printProjection(classProjection, excludeHeader: true);

    final classOutputFilename =
        nameWithoutEncoding(interface.name.split('.').last);
    final writer =
        File('${directory.uri.toFilePath()}$classOutputFilename.dart')
            .openSync(mode: FileMode.writeOnly);
    writer.writeStringSync(comFileHeader(interface, prefix));
    for (final import in imports) {
      if (!excludedImports.contains(import)) {
        writer.writeStringSync("import '$prefix$import';\n");
      }
    }
    writer.writeStringSync(dartClass);
  }
}
