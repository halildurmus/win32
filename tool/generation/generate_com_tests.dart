// import 'dart:io';

// import 'package:dart_style/dart_style.dart';
// import 'package:winmd/winmd.dart';

// import '../inputs/interfaces.dart';
// import '../projection/class.dart';
// import '../projection/interface.dart';
// import '../projection/utils.dart';

void generateComTests() {
  // final scope = MetadataStore.getWin32Scope();

  // for (final interface in interfacesToGenerate) {
  // final typeDef = scope.findTypeDef(interface);
  // if (typeDef == null) throw Exception("Can't find $interface");

  // var interfaceProjection = InterfaceProjection(typeDef);

  // // In v2, we put classes and interfaces in the same file.
  // final className = ClassProjection.generateClassName(typeDef);
  // if (scope.findTypeDef(className) != null) {
  //   interfaceProjection = ClassProjection.fromInterface(typeDef);
  // }

  // final dartClass = interfaceProjection.toString();

  // final classOutputFilename =
  //     stripAnsiUnicodeSuffix(interface.split('.').last);
  // final classOutputPath = 'lib/src/com/$classOutputFilename.dart';

  // File(classOutputPath).writeAsStringSync(DartFormatter().format(dartClass));

  // TODO: Add tests back in
  //   final dartTests = TypePrinter.printTests(classProjection);

  //   final testFile = File(
  //       '${testDirectory.uri.toFilePath()}${classOutputFilename}_test.dart');

  //   print('Writing:    ${testFile.path}');
  //   testFile.writeAsStringSync(dartTests);
  // }
}
