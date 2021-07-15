import 'dart:io';

import 'package:winmd/winmd.dart';

import '../metadata/projection/classprojector.dart';
import '../metadata/projection/data_classes.dart';
import '../metadata/projection/typeprinter.dart';
import '../metadata/utils.dart';

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

    // TODO: Pass prefix to lib/src as an optional second parameter (e.g.
    // '../../')
    final dartClass = TypePrinter.printProjection(classProjection);

    final classOutputFilename =
        nameWithoutEncoding(interface.name.split('.').last);
    final outputFile =
        File('${directory.uri.toFilePath()}$classOutputFilename.dart');

    outputFile.writeAsStringSync(dartClass);
  }
}
