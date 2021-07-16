import 'dart:io';

import 'package:winmd/winmd.dart';

import '../metadata/projection/classprojector.dart';
import '../metadata/projection/data_classes.dart';
import '../metadata/projection/typeprinter.dart';
import '../metadata/utils.dart';

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

import '${pathToLibSrc}combase.dart';
import '${pathToLibSrc}constants.dart';
import '${pathToLibSrc}exceptions.dart';
import '${pathToLibSrc}macros.dart';
import '${pathToLibSrc}ole32.dart';
import '${pathToLibSrc}structs.dart';
import '${pathToLibSrc}utils.dart';
''');

  if (interface.interfaces.isNotEmpty) {
    final parent = interface.interfaces.first.name;
    buffer.writeln("\nimport '$pathToLibSrc${folderFromNamespace(parent)}/"
        "${parent.split('.').last}.dart';");
  }

  return buffer.toString();
}

// TODO: Build and write list of imports
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

    // Pass relative directory to lib/src as second parameter (e.g. '../../')
    final prefix = '../' * (interface.name.split('.').length - 3);
    final dartClass =
        TypePrinter.printProjection(classProjection, excludeHeader: true);

    final classOutputFilename =
        nameWithoutEncoding(interface.name.split('.').last);
    final outputFile =
        File('${directory.uri.toFilePath()}$classOutputFilename.dart')
            .openSync(mode: FileMode.writeOnly);
    outputFile.writeStringSync(comFileHeader(interface, prefix));
    outputFile.writeStringSync(dartClass);
    outputFile.closeSync();
  }
}
