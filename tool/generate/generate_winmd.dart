// generate_winmd.dart

import 'dart:io';
import 'package:winmd/winmd.dart';

const typesToGenerate = [
  'Windows.Win32.NetworkListManager.INetwork',
];

void main(List<String> args) {
  final outputDirectory = (args.length == 1)
      ? Directory(args.first)
      : Directory('lib/src/generated');

  for (final type in typesToGenerate) {
    final mdTypeDef = MetadataStore.getMetadataForType(type);
    if (mdTypeDef == null) {
      throw Exception("Can't find type $type.");
    }

    final projection = TypeBuilder.projectWindowsType(mdTypeDef);
    final dartClass = TypePrinter.printType(projection);

    final outputFilename = type.split('.').last;
    final outputFile =
        File('${outputDirectory.uri.toFilePath()}$outputFilename.dart');

    print('Writing:    ${outputFile.path}');
    outputFile.writeAsStringSync(dartClass);
  }
}
