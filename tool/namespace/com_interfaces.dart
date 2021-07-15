import 'dart:io';

import 'package:winmd/winmd.dart';

import '../metadata/projection/classprojector.dart';
import '../metadata/projection/data_classes.dart';
import '../metadata/projection/typeprinter.dart';
import '../metadata/utils.dart';

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
      // ..vtableStart = vTableStart(mdTypeDef)
      ..sourceType = SourceType.com
      ..generateClass = clsid.isNotEmpty
      ..clsid = clsid
      ..className =
          nameWithoutEncoding(interface.name.split('.').last.substring(1));

    final dartClass = TypePrinter.printProjection(classProjection);

    final classOutputFilename =
        nameWithoutEncoding(interface.name.split('.').last);
    final outputFile =
        File('${directory.uri.toFilePath()}$classOutputFilename.dart');

    outputFile.writeAsStringSync(dartClass);
  }
}
