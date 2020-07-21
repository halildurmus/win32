// generate.dart

// The main entrypoint for the generate tool.

// This utility takes two parameters -- an input and an output directory. It
// reads IDL or H files from the input directory, parses them into an internal
// representation and then emits them as Dart files in the output directory,
// overwriting existing files as necessary.

import 'dart:io';

import 'parse.dart';

void main(List<String> args) {
  if (args.length != 2) {
    args = <String>['input', 'output'];
  }
  final inputDirectory = Directory(args[0]);
  final outputDirectory = Directory(args[1]);

  for (var inputFile in inputDirectory.listSync()) {
    if (inputFile is File) {
      print('Parsing:    ${inputFile.path}');
      final parsedFile = loadSource(inputFile);

      final outputFile =
          File('${outputDirectory.uri.toFilePath()}${parsedFile.name}.dart');
      print('Writing:    ${outputFile.path}');
      outputFile.writeAsStringSync(parsedFile.toString());

      print('');
    }
  }
}
