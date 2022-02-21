import 'dart:io';

import 'package:dart_style/dart_style.dart';
import 'package:winmd/winmd.dart';

import '../inputs/interfaces.dart';
import '../projection/class.dart';
import '../projection/interface.dart';
import '../projection/test_interface.dart';
import '../projection/utils.dart';

void generateComApis() {
  final scope = MetadataStore.getWin32Scope();

  for (final interface in comInterfacesToGenerate) {
    final typeDef = scope.findTypeDef(interface);
    if (typeDef == null) throw Exception("Can't find $interface");
    final interfaceProjection = InterfaceProjection(typeDef);

    // In v2, we put classes and interfaces in the same file.
    final className = ClassProjection.generateClassName(typeDef);
    final classNameExists = scope.findTypeDef(className) != null;
    final comObject = classNameExists
        ? ClassProjection.fromInterface(typeDef)
        : interfaceProjection;

    // Generate class
    final dartClass = comObject.toString();
    final classOutputFilename =
        stripAnsiUnicodeSuffix(interface.split('.').last);
    final classOutputPath = 'lib/src/com/$classOutputFilename.dart';

    File(classOutputPath).writeAsStringSync(DartFormatter().format(dartClass));

    // Generate test
    final dartTest = TestInterfaceProjection(typeDef, interfaceProjection);
    final testOutputPath = 'test/com/${classOutputFilename}_test.dart';

    File(testOutputPath)
        .writeAsStringSync(DartFormatter().format(dartTest.toString()));
  }
}
